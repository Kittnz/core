#include <string.h>
#include <map>

#include "Common.h"
#include "Database/DatabaseEnv.h"
#include "WorldPacket.h"
#include "WorldSession.h"
#include "World.h"
#include "ObjectMgr.h"
#include "SpellMgr.h"
#include "Player.h"
#include "Chat.h"
#include "Log.h"
#include "Guild.h"
#include "ObjectAccessor.h"
#include "MapManager.h"
#include "Language.h"
#include "Weather.h"
#include "PointMovementGenerator.h"
#include "TargetedMovementGenerator.h"
#include "SystemConfig.h"
#include "Config/Config.h"
#include "Util.h"
#include "InstanceData.h"
#include "DBCStores.h"
#include "DBCStructure.h"
#include "CreatureGroups.h"
#include "Mail.h"
#include "AccountMgr.h"
#include "AutoBroadCastMgr.h"
#include "Pet.h"
#include "CharacterDatabaseCache.h"
#include "LootMgr.h"
#include "AuraRemovalMgr.h"
#include "GuildMgr.h"

#include "Formulas.h"
#include "Nostalrius.h"
#include "Anticheat.h"
#include "BattleGround.h"
#include "BattleGroundMgr.h"
#include "SpellModMgr.h"

// MMAPS
#include "MoveMap.h"                                        // for mmap manager
#include "PathFinder.h"                                     // for mmap commands
#include "GridNotifiers.h"
#include "GridNotifiersImpl.h"
#include "CellImpl.h"
#include "MoveSplineInit.h"
#include "MoveSpline.h"

// VMAPS
#include "VMapFactory.h"
#include "ModelInstance.h"

#define MAX_SPELL_EFFECTS 3

bool ChatHandler::HandleReloadSpellDisabledCommand(char *args)
{
	sObjectMgr.LoadSpellDisabledEntrys();
	SendSysMessage("DB table `spell_disabed` reloaded.");
	return true;
}
bool ChatHandler::HandleReloadAutoBroadcastCommand(char *args)
{
	sAutoBroadCastMgr.load();
	SendSysMessage("DB table `autobroadcast` reloaded.");
	return true;
}


bool ChatHandler::HandleReloadItemTemplate(char*)
{
    sObjectMgr.LoadItemPrototypes();
    SendSysMessage(">> Table `item_template` reloaded.");
    return true;
}

bool ChatHandler::HandleGameObjectTempAddCommand(char *args)
{
	uint32 id;
	if (!ExtractUint32KeyFromLink(&args, "Hgameobject_entry", id))
		return false;

	if (!id)
		return false;

	Player *chr = m_session->GetPlayer();

	char* spawntime = strtok(NULL, " ");
	uint32 spawntm = 300;

	if (spawntime)
		spawntm = atoi((char*)spawntime);

	float x = chr->GetPositionX();
	float y = chr->GetPositionY();
	float z = chr->GetPositionZ();
	float ang = chr->GetOrientation();

	float rot2 = sin(ang / 2);
	float rot3 = cos(ang / 2);

	if (!chr->SummonGameObject(id, x, y, z, ang, 0, 0, rot2, rot3, spawntm))
		return false;
	return true;
}

bool ChatHandler::HandleUpdateWorldStateCommand(char *args)
{
	uint32 value = 0;
	uint32 index = 0;
	sscanf(args, "%u %u", &index, &value);
	if (index == 0)
	{
		SendSysMessage("Usage :");
		SendSysMessage(".ws update index [value=0]");
		SetSentErrorMessage(true);
		return false;
	}
	m_session->GetPlayer()->SendUpdateWorldState(index, value);
	PSendSysMessage("WorldState %u is %u for player.", index, value);
	return true;
}

bool ChatHandler::HandleVariableCommand(char *args)
{
	uint32 index = 0;
	uint32 value = 0;
	sscanf(args, "%u %u", &index, &value);
	if (!index)
		return false;

	if (value)
	{
		uint32 oldValue = sObjectMgr.GetSavedVariable(index, 666);
		sObjectMgr.SetSavedVariable(index, value, true);
		if (oldValue == 666) // La valeur par default
			PSendSysMessage("New variable %u set to %u", index, value);
		else
			PSendSysMessage("Variable %u changed from %u to %u", index, oldValue, value);
	}
	else
	{
		value = sObjectMgr.GetSavedVariable(index, 666);
		if (value == 666)
			PSendSysMessage("Not found variable %u", index);
		else
			PSendSysMessage("Variable %u value is %u", index, value);
	}
	return true;
}

bool ChatHandler::HandleReloadVariablesCommand(char*)
{
	sObjectMgr.LoadSavedVariable();
	SendSysMessage("Table `variables` has been reloaded.");
	return true;
}


bool ChatHandler::HandleGoForwardCommand(char* args)
{
	float x, y, z;
	float add = 10.0f;
	sscanf(args, "%f", &add);
	if (Player* pPlayer = m_session->GetPlayer())
	{
		pPlayer->GetRelativePositions(add, 0.0f, 0.0f, x, y, z);
		pPlayer->NearLandTo(x, y, z, pPlayer->GetOrientation());
	}
	return true;
}

bool ChatHandler::HandleGoUpCommand(char* args)
{
	float x, y, z;
	float add_z = 10.0f;
	sscanf(args, "%f", &add_z);
	if (Player* pPlayer = m_session->GetPlayer())
	{
		pPlayer->GetRelativePositions(0.0f, 0.0f, add_z, x, y, z);
		pPlayer->NearLandTo(x, y, z, pPlayer->GetOrientation());
	}
	return true;
}


/*
CREATE TABLE `characters_guid_delete` (
  `guid` int(11) default NULL,
  UNIQUE KEY `guid` (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `characters_item_delete` (
  `entry` int(11) default NULL,
  UNIQUE KEY `entry` (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
*/
bool ChatHandler::HandleCleanCharactersToDeleteCommand(char* args)
{
	QueryResult* toDeleteCharsResult = CharacterDatabase.Query("SELECT guid FROM characters_guid_delete;");
	if (!toDeleteCharsResult)
	{
		SendSysMessage("Table 'characters_guid_delete' is empty or does not exist.");
		SetSentErrorMessage(true);
		return false;
	}
	else
	{
		uint32 deleteCount = 0;
		Field *fields;
		do
		{
			fields = toDeleteCharsResult->Fetch();
			uint32 guid = fields[0].GetUInt32();

			Player::DeleteFromDB(guid,
				0, // AccountID
				false, // Update realm characters count
				true // Delete finally
			);

			++deleteCount;
		} while (toDeleteCharsResult->NextRow());
		PSendSysMessage("%u characters have been deleted.", deleteCount);
		delete toDeleteCharsResult;
	}
	return true;
}


bool ChatHandler::HandleCleanCharactersItemsCommand(char* args)
{
	bool Real = false;
	if (m_session->GetSecurity() == SEC_CONSOLE)
		Real = true;

	QueryResult* listDeleteItems = CharacterDatabase.Query("SELECT entry FROM characters_item_delete;");
	if (!listDeleteItems)
	{
		SendSysMessage("Cannot find items to delete. Table 'characters_item_delete' is empty ?");
		SetSentErrorMessage(true);
		return false;
	}
	std::vector<uint32> lDeleteEntries;

	uint32 deleteCount = 0;
	Field *fields;
	do
	{
		fields = listDeleteItems->Fetch();
		uint32 entry = fields[0].GetUInt32();

		lDeleteEntries.push_back(entry);

		++deleteCount;
	} while (listDeleteItems->NextRow());
	PSendSysMessage("%u items to delete.", lDeleteEntries.size());
	delete listDeleteItems;

	QueryResult* allPlayersItems = CharacterDatabase.Query("SELECT guid, itemEntry, owner_guid FROM item_instance;");
	if (!allPlayersItems)
	{
		SendSysMessage("Unable to retrieve player items list.");
		SetSentErrorMessage(true);
		return false;
	}
	deleteCount = 0;
	uint32 totalItems = 0;
	std::vector<uint32>::iterator itr;
	CharacterDatabase.BeginTransaction();
	do
	{
		++totalItems;
		fields = allPlayersItems->Fetch();
		uint32 item_guid = fields[0].GetUInt32();
		uint32 item_entry = fields[1].GetUInt32();
		uint32 owner_guid = fields[2].GetUInt32();

		for (itr = lDeleteEntries.begin(); itr != lDeleteEntries.end(); ++itr)
		{
			if ((*itr) == item_entry)
			{
				if (Real)
				{
					// InGame ?
					if (Player * pPlayer = sObjectMgr.GetPlayer(owner_guid))
						pPlayer->DestroyItemCount(item_entry, 255, true);
					else
						Item::DeleteAllFromDB(item_guid);
				}
				++deleteCount;
				break;
			}
		}

	} while (allPlayersItems->NextRow());
	CharacterDatabase.CommitTransaction();

	SendSysMessage("==== Statistiques ====");
	PSendSysMessage("- %u items entries", totalItems);
	PSendSysMessage("- %u items deleted", deleteCount);
	if (!Real)
		SendSysMessage("-> Not executed. (for security purposes).");
	delete allPlayersItems;
	return true;
}

bool ChatHandler::HandleCharacterFillFlysCommand(char* args)
{
	if (Player* player = GetSelectedPlayer())
	{
		if (player->GetTeam() == ALLIANCE)
			player->GetTaxi().LoadTaxiMask("3456411898 2148078928 49991 0 0 0 0 0 ");
		else
			player->GetTaxi().LoadTaxiMask("561714688 282102432 52408 0 0 0 0 0 ");
		PSendSysMessage("Fly paths unlocked for %s.", player->GetName());
		return true;
	}
	return false;
}

bool ChatHandler::HandleNpcGroupAddCommand(char* args)
{
	if (!*args)
		return false;

	Creature* target = GetSelectedCreature();
	SetSentErrorMessage(true);

	if (!target)
	{
		SendSysMessage(LANG_SELECT_CREATURE);
		return false;
	}

	uint32 leaderGuidCounter = 0;
	uint32 options = OPTION_FORMATION_MOVE | OPTION_AGGRO_TOGETHER | OPTION_EVADE_TOGETHER | OPTION_RESPAWN_TOGETHER;
	if (!ExtractUInt32(&args, leaderGuidCounter))
		return false;
	ExtractUInt32(&args, options);
	Creature* leader = target->GetMap()->GetCreature(CreatureGroupsManager::ConvertDBGuid(leaderGuidCounter));
	if (!leader)
	{
		PSendSysMessage("Leader not found");
		return false;
	}
	if (target->GetCreatureGroup())
	{
		SendSysMessage("Selected creature is already member of a group.");
		return false;
	}

	bool dbsave = target->HasStaticDBSpawnData();
	Player *chr = m_session->GetPlayer();
	float angle = (chr->GetAngle(target) - target->GetOrientation()) + 2 * M_PI_F;
	float dist = sqrtf(pow(chr->GetPositionX() - target->GetPositionX(), int(2)) + pow(chr->GetPositionY() - target->GetPositionY(), int(2)));

	CreatureGroup* group = leader->GetCreatureGroup();
	if (!group)
		group = new CreatureGroup(leader->GetObjectGuid());
	group->AddMember(target->GetObjectGuid(), dist, angle, options);
	target->SetCreatureGroup(group);
	leader->SetCreatureGroup(group);
	target->GetMotionMaster()->Initialize();
	if (dbsave)
		group->SaveToDb();
	PSendSysMessage("Group added for creature %u. Leader %u, Angle %f, Dist %f", target->GetGUIDLow(), leader->GetGUIDLow(), angle, dist);
	return true;
}

bool ChatHandler::HandleNpcGroupAddRelCommand(char* args)
{
	if (!*args)
		return false;

	Creature* target = GetSelectedCreature();
	SetSentErrorMessage(true);

	if (!target)
	{
		SendSysMessage(LANG_SELECT_CREATURE);
		return false;
	}

	uint32 leaderGuidCounter = 0;
	uint32 options = OPTION_FORMATION_MOVE | OPTION_AGGRO_TOGETHER | OPTION_EVADE_TOGETHER | OPTION_RESPAWN_TOGETHER;
	if (!ExtractUInt32(&args, leaderGuidCounter))
		return false;
	ExtractUInt32(&args, options);
	Creature* leader = target->GetMap()->GetCreature(CreatureGroupsManager::ConvertDBGuid(leaderGuidCounter));
	if (!leader)
	{
		PSendSysMessage("Leader not found");
		return false;
	}
	if (target->GetCreatureGroup())
	{
		SendSysMessage("Selected creature is already member of a group.");
		return false;
	}

	bool dbsave = target->HasStaticDBSpawnData();
	//Player *chr = m_session->GetPlayer();
	float angle = target->GetAngle(leader);//(chr->GetAngle(target) - target->GetOrientation()) + 2 * M_PI_F;
	float dist = sqrtf(pow(leader->GetPositionX() - target->GetPositionX(), int(2)) + pow(leader->GetPositionY() - target->GetPositionY(), int(2)));

	CreatureGroup* group = leader->GetCreatureGroup();
	if (!group)
		group = new CreatureGroup(leader->GetObjectGuid());
	group->AddMember(target->GetObjectGuid(), dist, angle, options);
	target->SetCreatureGroup(group);
	leader->SetCreatureGroup(group);
	target->GetMotionMaster()->Initialize();
	if (dbsave)
		group->SaveToDb();
	PSendSysMessage("Group added for creature %u. Leader %u, Angle %f, Dist %f", target->GetGUIDLow(), leader->GetGUIDLow(), angle, dist);
	return true;
}

bool ChatHandler::HandleNpcGroupDelCommand(char *args)
{
	Creature *target = GetSelectedCreature();
	SetSentErrorMessage(true);

	if (!target || !target->HasStaticDBSpawnData())
	{
		SendSysMessage(LANG_SELECT_CREATURE);
		return false;
	}

	CreatureGroup* g = target->GetCreatureGroup();
	if (!g)
	{
		PSendSysMessage("%s [GUID=%u] is not in a group.", target->GetName(), target->GetGUIDLow());
		return false;
	}

	g->RemoveMember(target->GetObjectGuid());
	g->SaveToDb();
	target->SetCreatureGroup(NULL);
	target->GetMotionMaster()->Initialize();
	return true;
}

bool ChatHandler::HandleNpcGroupLinkCommand(char * args)
{
	if (!*args)
		return false;

	Creature* target = GetSelectedCreature();
	SetSentErrorMessage(true);

	if (!target)
	{
		SendSysMessage(LANG_SELECT_CREATURE);
		return false;
	}

	uint32 options;
	uint32 leaderGuidCounter = 0;
	if (!ExtractUInt32(&args, leaderGuidCounter))
		return false;

	ExtractUInt32(&args, options);

	Creature* leader = target->GetMap()->GetCreature(CreatureGroupsManager::ConvertDBGuid(leaderGuidCounter));
	if (!leader)
	{
		PSendSysMessage("Leader not found");
		return false;
	}

	WorldDatabase.PExecute("DELETE FROM `creature_linking` WHERE `guid`=%u", target->GetGUIDLow());
	WorldDatabase.PExecute("INSERT INTO `creature_linking` SET `guid`=%u, `master_guid`=%u, `flag`='%u'",
		target->GetGUIDLow(), leaderGuidCounter, options);

	PSendSysMessage("creature_link for creature %u. Leader %u", target->GetGUIDLow(), leader->GetGUIDLow());
	return true;
}

bool ChatHandler::HandleReloadCreatureGroupsCommand(char *args)
{
	sCreatureGroupsManager->Load();
	SendSysMessage("DB table `creature_groups` reloaded.");
	return true;
}

bool ChatHandler::HandleSendSpellVisualCommand(char *args)
{
	Unit *pTarget = GetSelectedUnit();
	if (!pTarget)
	{
		SendSysMessage(LANG_SELECT_CHAR_OR_CREATURE);
		SetSentErrorMessage(true);
		return false;
	}

	uint32 uiPlayId = 0;
	char* playIdStr = strtok(args, " ");
	if (playIdStr)
		uiPlayId = uint32(atoi(playIdStr));
	SpellEntry const* proto = sSpellMgr.GetSpellEntry(uiPlayId);
	if (!proto)
	{
		SendSysMessage(LANG_COMMAND_NOSPELLFOUND);
		SetSentErrorMessage(true);
		return false;
	}
	PSendSysMessage("Spell %u visual on target '%s'.", uiPlayId, pTarget->GetName());

	WorldPacket data(SMSG_PLAY_SPELL_VISUAL, 8 + 4);
	data << uint64(m_session->GetPlayer()->GetGUID());
	data << uint32(uiPlayId);                                // spell visual id?
	pTarget->SendMessageToSet(&data, true);
	m_session->GetPlayer()->SendSpellGo(pTarget, uiPlayId);

	// Channeled case
	if (IsChanneledSpell(proto))
	{
		m_session->GetPlayer()->SetUInt32Value(UNIT_CHANNEL_SPELL, uiPlayId);
		m_session->GetPlayer()->SetChannelObjectGuid(pTarget->GetObjectGuid());
	}
	return true;
}

bool ChatHandler::HandleSendSpellImpactCommand(char *args)
{
	Unit *pTarget = GetSelectedUnit();
	if (!pTarget)
	{
		SendSysMessage(LANG_SELECT_CHAR_OR_CREATURE);
		SetSentErrorMessage(true);
		return false;
	}

	uint32 uiPlayId = 0;
	char* playIdStr = strtok(args, " ");
	if (playIdStr)
		uiPlayId = uint32(atoi(playIdStr));
	PSendSysMessage("Spell %u impact on target '%s'.", uiPlayId, pTarget->GetName());

	WorldPacket data(SMSG_PLAY_SPELL_IMPACT, 8 + 4);
	data << uint64(pTarget->GetGUID());
	data << uint32(uiPlayId);                                // spell visual id?
	pTarget->SendMessageToSet(&data, true);
	return true;
}

// BG

#define COLOR_HORDE      "FF3300"
#define COLOR_ALLIANCE   "0066B3"
#define COLOR_BG         "D580FE"
#define COLOR_INFO       "FF9900"
#define COLOR_STATUS     "FECCBF"

//#define DO_LINK(b,a)     "|Hnostalrius:0|h"a"|h"
#define DO_COLOR(a, b)   "|cff" a "" b "|r"

typedef std::map<ObjectGuid, BattleGroundPlayer> BattleGroundPlayerMap;
bool ChatHandler::HandleBGStatusCommand(char *args)
{
	Player *chr = m_session->GetPlayer();
	ASSERT(chr);
	SendSysMessage(DO_COLOR(COLOR_INFO, "-- Currently running BGs"));
	uint8 i = 0;
	uint8 uiAllianceCount, uiHordeCount;
	for (int8 bgTypeId = BATTLEGROUND_AB; bgTypeId >= BATTLEGROUND_AV; --bgTypeId)
	{
		for (BattleGroundSet::const_iterator it = sBattleGroundMgr.GetBattleGroundsBegin(BattleGroundTypeId(bgTypeId)); it != sBattleGroundMgr.GetBattleGroundsEnd(BattleGroundTypeId(bgTypeId)); ++it)
		{
			// Pas un "vrai" BG, mais un "modele" de BG.
			if (!it->first)
				continue;

			++i;
			uiAllianceCount = 0;
			uiHordeCount = 0;
			BattleGroundPlayerMap const& pPlayers = it->second->GetPlayers();
			std::string playerName = "";

			for (BattleGroundPlayerMap::const_iterator itr = pPlayers.begin(); itr != pPlayers.end(); ++itr)
			{
				if (itr->second.PlayerTeam == HORDE)
					uiHordeCount++;
				else
					uiAllianceCount++;
				if (playerName == "")
					if (sObjectMgr.GetPlayerNameByGUID(itr->first, playerName))
						playerName = playerLink(playerName);
			}

			std::string statusName;
			bool bFull = it->second->HasFreeSlots();
			BattleGroundStatus status = it->second->GetStatus();
			switch (status)
			{
			case STATUS_WAIT_JOIN:
				statusName = "WaitJoin";
				break;
			case STATUS_IN_PROGRESS:
				statusName = "InProgress";
				break;
			case STATUS_WAIT_LEAVE:
				statusName = "WaitLeave";
				break;
			}

			PSendSysMessage(DO_COLOR(COLOR_BG, "[%s %2u]") " [%2u-%2u] "
				DO_COLOR(COLOR_STATUS, "[%s]")
				DO_COLOR(COLOR_ALLIANCE, "%2u") "vs" DO_COLOR(COLOR_HORDE, "%2u")
				" Player:%s %s",
				it->second->GetName(), it->first, it->second->GetMinLevel(), it->second->GetMaxLevel(), statusName.c_str(),
				uiAllianceCount, uiHordeCount,
				playerName.c_str(), secsToTimeString(it->second->GetStartTime() / 1000, true).c_str());
		}
	}
	if (!i)
		PSendSysMessage(DO_COLOR(COLOR_INFO, "(No battleground started)"));

	PSendSysMessage(DO_COLOR(COLOR_INFO, "-- Queues for your bracket"));
	i = 0;

    for (uint8 bgTypeId = BATTLEGROUND_AV; bgTypeId < ARENA_SV; ++bgTypeId)
	{
        // Skip disabled arenas.
        switch (bgTypeId)
        {
        case ARENA_SV:
            continue;
        }

		++i;
		uiAllianceCount = 0;
		uiHordeCount = 0;

		BattleGroundQueueTypeId bgQueueTypeId = BattleGroundMgr::BGQueueTypeId(BattleGroundTypeId(bgTypeId));
		// Doit etre une référence (&), sinon crash par la suite ...
		BattleGroundQueue& queue = sBattleGroundMgr.m_BattleGroundQueues[bgQueueTypeId];
		for (BattleGroundQueue::QueuedPlayersMap::const_iterator it = queue.m_QueuedPlayers.begin(); it != queue.m_QueuedPlayers.end(); ++it)
		{
			if (it->second.GroupInfo->GroupTeam == HORDE)
				uiHordeCount++;
			else
				uiAllianceCount++;
		}

		BattleGround *bg_template = sBattleGroundMgr.GetBattleGroundTemplate(BattleGroundTypeId(bgTypeId));
		ASSERT(bg_template);

		PSendSysMessage(DO_COLOR(COLOR_BG, "[%s]" "   " DO_COLOR(COLOR_ALLIANCE, "[Alliance] : %2u") " - " DO_COLOR(COLOR_HORDE, "[Horde] : %2u")),
			bg_template->GetName(), uiAllianceCount, uiHordeCount);
	}
	if (!i)
		PSendSysMessage(DO_COLOR(COLOR_INFO, "(No player queued)"));
	return true;
}

bool ChatHandler::HandleBGStartCommand(char *args)
{
	Player *chr = m_session->GetPlayer();
	ASSERT(chr);
	BattleGround* pBg = chr->GetBattleGround();
	if (!pBg)
	{
        SendSysMessage("You must be in a battleground to use this command.");
		SetSentErrorMessage(true);
		return false;
	}
	pBg->SetStartDelayTime(0);
	PSendSysMessage("BG commence [%s][%u]", pBg->GetName(), pBg->GetInstanceID());
	return true;
}

bool ChatHandler::HandleBGStopCommand(char *args)
{
	Player *chr = m_session->GetPlayer();
	ASSERT(chr);
	BattleGround* pBg = chr->GetBattleGround();
	if (!pBg)
	{
		SendSysMessage("You are not in a battleground");
		SetSentErrorMessage(true);
		return false;
	}
	pBg->StopBattleGround();
	PSendSysMessage("Battleground stopped [%s][%u]", pBg->GetName(), pBg->GetInstanceID());
	return true;
}

bool ChatHandler::HandleGodCommand(char* args)
{
	Player *pPlayer = GetSelectedPlayer();
	if (!pPlayer)
		pPlayer = m_session->GetPlayer();

	if (*args)
	{
		bool value;
		if (!ExtractOnOff(&args, value))
		{
			SendSysMessage(LANG_USE_BOL);
			SetSentErrorMessage(true);
			return false;
		}
		pPlayer->SetGodMode(value);
	}
	if (pPlayer->IsGod())
		SendSysMessage("Mode GOD : [ON]");
	else
		SendSysMessage("Mode GOD : [OFF]");
	return true;
}

bool ChatHandler::HandleGMOptionsCommand(char* args)
{
	if (!args)
		return false;

	std::string sArgs(args);
	bool enable = true;
	uint32 flags = 0;
	if (sArgs.find("off") != std::string::npos)
		enable = false;
	if (sArgs.find("OFF") != std::string::npos)
		enable = false;
	if (sArgs.find("GOD") != std::string::npos || sArgs.find("god") != std::string::npos)
		flags |= PLAYER_CHEAT_GOD;
	if (sArgs.find("CD") != std::string::npos || sArgs.find("cd") != std::string::npos || sArgs.find("cooldown") != std::string::npos || sArgs.find("COOLDOWN") != std::string::npos)
		flags |= PLAYER_CHEAT_NO_COOLDOWN;
	if (sArgs.find("CAST") != std::string::npos || sArgs.find("cast") != std::string::npos)
		flags |= PLAYER_CHEAT_NO_CAST_TIME;
	if (sArgs.find("SPEED") != std::string::npos || sArgs.find("speed") != std::string::npos)
		flags |= PLAYER_CHEAT_NO_MOD_SPEED;
	if (sArgs.find("power") != std::string::npos || sArgs.find("POWER") != std::string::npos || sArgs.find("mana") != std::string::npos || sArgs.find("MANA") != std::string::npos)
		flags |= PLAYER_CHEAT_NO_POWER;
	if (sArgs.find("crit") != std::string::npos || sArgs.find("CRIT") != std::string::npos)
		flags |= PLAYER_CHEAT_ALWAYS_CRIT;
	if (sArgs.find("checkcast") != std::string::npos || sArgs.find("CHECKCAST") != std::string::npos || sArgs.find("check") != std::string::npos || sArgs.find("CHECK") != std::string::npos)
		flags |= PLAYER_CHEAT_NO_CHECK_CAST;
	if (sArgs.find("proc") != std::string::npos || sArgs.find("PROC") != std::string::npos)
		flags |= PLAYER_CHEAT_ALWAYS_PROC;
	if (sArgs.find("video") != std::string::npos || sArgs.find("VIDEO") != std::string::npos)
		flags |= PLAYER_VIDEO_MODE;

	Player* pTarget = GetSelectedPlayer();
	if (!pTarget)
		pTarget = m_session->GetPlayer();
	PSendSysMessage("%s flags 0x%x for `%s`.", enable ? "Adding" : "Removing", flags, pTarget->GetName());
	if (enable)
		pTarget->EnableOption(flags);
	else
		pTarget->RemoveOption(flags);

	if (flags & PLAYER_VIDEO_MODE)
	{
		UpdateMask m;
		m.SetCount(UNIT_END);
		m.SetBit(UNIT_FIELD_FLAGS);
		pTarget->RefreshBitsForVisibleUnits(&m, TYPEMASK_UNIT);
		m.SetCount(PLAYER_END);
		m.SetBit(UNIT_FIELD_FLAGS);
		pTarget->RefreshBitsForVisibleUnits(&m, TYPEMASK_PLAYER);
	}
	return true;
}

bool ChatHandler::HandleFreezeCommand(char* args)
{
	Unit* pTarget = GetSelectedUnit();
	if (!pTarget)
		return false;
	pTarget->CastSpell(pTarget, 29826, true);
	return true;
}

bool ChatHandler::HandleUnfreezeCommand(char* args)
{
	Unit* pTarget = GetSelectedUnit();
	if (!pTarget)
		return false;
	pTarget->RemoveAurasDueToSpell(29826);
	return true;
}


bool ChatHandler::HandleUnitStatCommand(char *args)
{
	Unit* pTarget = GetSelectedUnit();
	if (!pTarget)
		return false;
	uint32 unitStat = 0x0;
	for (int i = 1; i < UNIT_STAT_IGNORE_PATHFINDING; i *= 2)
		if (pTarget->hasUnitState(i))
			unitStat |= i;
	PSendSysMessage("UnitState = 0x%x (%u)", unitStat, unitStat);
	if (ExtractUInt32(&args, unitStat))
	{
		pTarget->clearUnitState(UNIT_STAT_ALL_STATE);
		pTarget->addUnitState(unitStat);
		PSendSysMessage("UnitState changed to 0x%x (%u)", unitStat, unitStat);
	}
	return true;
}

bool ChatHandler::HandleAnticheatCommand(char* args)
{
	Player* player = NULL;
	if (!ExtractPlayerTarget(&args, &player) && m_session)
		player = m_session->GetPlayer();
	if (!player)
		return false;

	PSendSysMessage("Cheat report on player '%s' (GUID %u)", player->GetName(), player->GetGUIDLow());
	if (player->GetCheatData())
		player->GetCheatData()->HandleCommand(this);

	return true;
}

bool ChatHandler::HandleWardenCommand(char* args)
{
	/*Player* player = NULL;
	if (!ExtractPlayerTarget(&args, &player) && m_session)
		player = m_session->GetPlayer();
	if (!player)
		return false;

	WardenInterface* warden = player->GetSession()->GetWarden();
	if (!warden)
	{
		PSendSysMessage("No Warden loaded for account %s", player->GetSession()->GetUsername().c_str());
		return true;
	}
	warden->HandleInfoCommand(this);*/
	return true;
}

/*class WardenCommandReadQuery: public WardenMemoryQuery
{
public:
	WardenCommandReadQuery(uint32 addr, uint32 length, uint32 accountId) : WardenMemoryQuery(addr, length), _accountId(accountId)
	{
	}
	void DataRead(uint8 const* data, WardenInterface* warden)
	{
		WorldSession* sess = sWorld.FindSession(_accountId);
		if (!sess)
			return;
		ChatHandler handler(sess);
		handler.PSendSysMessage("Warden read at 0x%x", GetAddress());
		if (!data)
		{
			handler.SendSysMessage("Read failed!");
			return;
		}
		if (GetLength() == 4)
		{
			handler.PSendSysMessage("Read (uint32): 0x%8x", *((uint32*)data));
			return;
		}
		std::stringstream readUint8;
		for (uint32 i = 0; i < GetLength(); ++i)
			readUint8 << uint32(data[i]) << " ";
		handler.PSendSysMessage("Read (uint8*): %s", readUint8.str().c_str());
		handler.PSendSysMessage("Read (string): %s", std::string((const char*)data, 0, GetLength()).c_str());
	}
protected:
	uint32 _accountId;
};*/

bool ChatHandler::HandleWardenReadCommand(char* args)
{
	/*Player* player = GetSelectedPlayer();
	if (!player)
		return false;

	uint32 addr, len = 4;
	if (!ExtractUInt32Base(&args, addr, 0x10))
		return false;
	ExtractUInt32(&args, len);
	WardenInterface* warden = player->GetSession()->GetWarden();
	if (!warden)
	{
		PSendSysMessage("No Warden loaded for account %s", player->GetSession()->GetUsername().c_str());
		return true;
	}
	warden->AddMemoryQuery(new WardenCommandReadQuery(addr, len, GetAccountId()));*/
	return true;
}

bool ChatHandler::HandleListAddonsCommand(char* args)
{
	Player* player = GetSelectedPlayer();
	if (!player)
		return false;

	std::set<std::string> const& addons = player->GetSession()->GetAddons();
	PSendSysMessage("%u addons on target.", addons.size());
	for (std::set<std::string>::const_iterator it = addons.begin(); it != addons.end(); ++it)
		PSendSysMessage(">> %s", it->c_str());
	return true;
}

bool ChatHandler::HandleClientInfosCommand(char* args)
{
	Player* player = NULL;
	if (!ExtractPlayerTarget(&args, &player) && m_session)
		player = m_session->GetPlayer();
	if (!player)
		return false;

	PSendSysMessage("Account %s has %u client identifiers.", player->GetSession()->GetUsername().c_str(), player->GetSession()->GetClientIdentifiers().size());
	for (ClientIdentifiersMap::const_iterator it = player->GetSession()->GetClientIdentifiers().begin(); it != player->GetSession()->GetClientIdentifiers().end(); ++it)
		PSendSysMessage("%u: %s", it->first, it->second.c_str());
	player->GetSession()->ComputeClientHash();
	PSendSysMessage("Hash is %s", playerLink(player->GetSession()->GetClientHash()).c_str());
	return true;
}

bool ChatHandler::HandleClientSearchCommand(char* args)
{
	ASSERT(args);
	std::string searchedHash = args;
	uint32 i = 0;
	World::SessionMap const& sessMap = sWorld.GetAllSessions();
	for (World::SessionMap::const_iterator itr = sessMap.begin(); itr != sessMap.end(); ++itr)
	{
		if (!itr->second)
			continue;

		std::string currentHash = itr->second->GetClientHash();
		if (currentHash.find(searchedHash) != std::string::npos)
		{
			PSendSysMessage("%s on account %s, %s",
				playerLink(itr->second->GetPlayerName()).c_str(),
				playerLink(itr->second->GetUsername()).c_str(),
				playerLink(itr->second->GetRemoteAddress()).c_str());
			++i;
		}
	}
	if (i == 0)
		PSendSysMessage("Not result for hash %s", playerLink(searchedHash).c_str());
	else
		PSendSysMessage("%u result(s) for %s", i, playerLink(searchedHash).c_str());
	return true;
}

bool IsSimilarItem(ItemPrototype const* proto1, ItemPrototype const* proto2)
{
	for (int i = 0; i < MAX_ITEM_PROTO_STATS; ++i)
		if (proto1->ItemStat[i].ItemStatType != proto2->ItemStat[i].ItemStatType ||
			proto1->ItemStat[i].ItemStatValue != proto2->ItemStat[i].ItemStatValue)
			return false;
	if (proto1->Quality != proto2->Quality)
		return false;
	if (proto1->Class != proto2->Class)
		return false;
	if (proto1->SubClass != proto2->SubClass)
		return false;
	if (proto1->InventoryType != proto2->InventoryType)
		return false;
	if (proto1->Armor != proto2->Armor)
		return false;
	if (proto1->AllowableClass != proto2->AllowableClass)
		return false;
	return true;
}

bool ChatHandler::HandleFactionChangeItemsCommand(char* c)
{
	for (uint32 id = 0; id < sItemStorage.GetMaxEntry(); id++)
	{
		ItemPrototype const * proto1 = sItemStorage.LookupEntry<ItemPrototype>(id);
		if (!proto1)
			continue;
		Races currMountRace;
		uint8 currRaceNum = 0;
		if (sObjectMgr.GetMountDataByEntry(id, currMountRace, currRaceNum))
			continue;
		if (proto1->Quality <= 1)
			continue;
		bool inDb = false;
		for (std::map<uint32, uint32>::const_iterator it2 = sObjectMgr.factionchange_items.begin(); it2 != sObjectMgr.factionchange_items.end(); ++it2)
		{
			if ((it2->first == id) || (it2->second == id))
			{
				inDb = true;
				break;
			}
		}
		if (inDb)
			continue;

		bool canEquip = true;
		if ((proto1->AllowableRace & RACEMASK_ALLIANCE) == 0 || (proto1->AllowableRace & RACEMASK_HORDE) == 0)
			canEquip = false;
		if (proto1->RequiredHonorRank != 0 &&
			(proto1->Class == ITEM_CLASS_WEAPON || proto1->Class == ITEM_CLASS_ARMOR))
			canEquip = false;

		if (!canEquip)
		{
			ItemPrototype const* similar = NULL;
			for (uint32 id2 = 0; id2 < sItemStorage.GetMaxEntry(); id2++)
				if (ItemPrototype const * proto2 = sItemStorage.LookupEntry<ItemPrototype>(id2))
					if (proto1 != proto2 && IsSimilarItem(proto1, proto2))
					{
						if (similar)
						{
							// Ambiguity. Other similar items.
							similar = nullptr;
							break;
						}
						similar = proto2;
					}


			PSendSysMessage("Item %u not handled ! Similar item : %u", proto1->ItemId, similar ? similar->ItemId : 0);
		}
	}
	return true;
}


bool ChatHandler::HandlePetListCommand(char* args)
{
	std::string charName(args);
	normalizePlayerName(charName);
	ObjectGuid playerGuid = sObjectMgr.GetPlayerGuidByName(charName);
	if (!playerGuid)
	{
		SendSysMessage(LANG_NON_EXIST_CHARACTER);
		SetSentErrorMessage(true);
		return false;
	}
	CharPetMap const& petsMap = sCharacterDatabaseCache.GetCharPetsMap();
	CharPetMap::const_iterator charPets = petsMap.find(playerGuid.GetCounter());
	uint32 count = 0;
	if (charPets != petsMap.end())
		for (CharPetVector::const_iterator it = charPets->second.begin(); it != charPets->second.end(); ++it)
		{
			PSendSysMessage("#%u: \"%s\" (%s)", (*it)->id, (*it)->name.c_str(), (*it)->slot == PET_SAVE_AS_CURRENT ? "Current pet" : "In stable");
			++count;
		}
	PSendSysMessage("Found %u pets for character %s (#%u).", count, charName.c_str(), playerGuid.GetCounter());
	return true;
}

bool ChatHandler::HandlePetRenameCommand(char* args)
{
	uint32 petId;
	std::string newName;
	if (!ExtractUInt32(&args, petId))
		return false;
	newName = args;
	PetNameInvalidReason res = ObjectMgr::CheckPetName(newName);
	if (res != PET_NAME_SUCCESS)
	{
		PSendSysMessage("\"%s\" is not a valid pet name", newName.c_str());
		SetSentErrorMessage(true);
		return false;
	}

	std::unique_ptr<QueryResult> result(CharacterDatabase.PQuery("SELECT owner, name FROM character_pet WHERE id = %u", petId));

	if (!result)
	{
		PSendSysMessage("Pet #%u not found", petId);
		SetSentErrorMessage(true);
		return false;
	}

	auto fields = result->Fetch();
	auto owner_guid = fields[0].GetUInt32();
	auto pet_name = fields[1].GetString();

	PSendSysMessage("Pet #%u (\"%s\", owner #%u) renamed to \"%s\"", petId, pet_name, owner_guid, newName.c_str());
	CharacterDatabase.escape_string(newName);
	CharacterDatabase.PExecute("UPDATE character_pet SET name = \"%s\" WHERE id = %u", newName.c_str(), petId);

	CharacterPetCache* petData = sCharacterDatabaseCache.GetCharacterPetById(petId);

	if (petData)
	{
		petData->name = newName;
	}

	return true;
}

bool ChatHandler::HandlePetDeleteCommand(char* args)
{
	uint32 petId;
	if (!ExtractUInt32(&args, petId))
		return false;
	CharacterPetCache* petData = sCharacterDatabaseCache.GetCharacterPetById(petId);
	if (!petData)
	{
		PSendSysMessage("Pet #%u not found", petId);
		SetSentErrorMessage(true);
		return false;
	}
	PSendSysMessage("Pet #%u (\"%s\", owner #%u) deleted.", petData->id, petData->name.c_str(), petData->owner);
	CharacterDatabase.PExecute("DELETE FROM character_pet WHERE id = %u", petId);
	sCharacterDatabaseCache.DeleteCharacterPetById(petId);
	return true;
}



bool ChatHandler::HandleInstanceContinentsCommand(char*)
{
	if (Player* target = GetSelectedPlayer())
		PSendSysMessage("Target: %s, map %u instance %u", target->GetName(), target->GetMapId(), target->GetInstanceId());

	for (int mapId = 0; mapId < 2; ++mapId)
	{
		PSendSysMessage("MAP %u", mapId);
		for (int i = 0; i < 20; ++i)
			if (Map* m = sMapMgr.FindMap(mapId, i))
			{
				Map::PlayerList const& players = m->GetPlayers();
				if (players.begin() == players.end())
					continue;
				Map::PlayerList::const_iterator it = players.begin();
				int count = 0;
				while (it != players.end())
				{
					++count;
					++it;
				}
				PSendSysMessage("[Instance%2u] %u players, dist visible:%.1f activate:%.1f", i, count, m->GetVisibilityDistance(), m->GetGridActivationDistance());
			}
	}
	return true;
}

bool ChatHandler::HandleInstancePerfInfosCommand(char* args)
{
	Player* player = GetSession()->GetPlayer();
	Map* map = player->FindMap();
	if (!map)
		return false;
	map->PrintInfos(*this);
	uint32 playersInClient = 0, gobjsInClient = 0, unitsInClient = 0, corpsesInClient = 0;
	for (ObjectGuidSet::const_iterator it = player->m_visibleGUIDs.begin(); it != player->m_visibleGUIDs.end(); ++it)
	{
		switch (it->GetHigh())
		{
		case HIGHGUID_PLAYER: ++playersInClient; break;
		case HIGHGUID_GAMEOBJECT: ++gobjsInClient; break;
		case HIGHGUID_UNIT: ++unitsInClient; break;
		case HIGHGUID_CORPSE: ++corpsesInClient; break;
		}
	}
	PSendSysMessage("Units in client: %u pl, %u gobj, %u crea, %u corpses", playersInClient, gobjsInClient, unitsInClient, corpsesInClient);
	return true;
}
