/*
 * Copyright (C) 2005-2011 MaNGOS <http://getmangos.com/>
 * Copyright (C) 2009-2011 MaNGOSZero <https://github.com/mangos/zero>
 * Copyright (C) 2011-2016 Nostalrius <https://nostalrius.org>
 * Copyright (C) 2016-2017 Elysium Project <https://github.com/elysium-project>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

#include "Common.h"
#include "Database/DatabaseEnv.h"
#include "Database/DatabaseImpl.h"
#include "DBCStores.h"
#include "WorldPacket.h"
#include "WorldSession.h"
#include "World.h"
#include "ObjectMgr.h"
#include "Player.h"
#include "Guild.h"
#include "GuildMgr.h"
#include "Opcodes.h"
#include "Chat.h"
#include "Log.h"
#include "MapManager.h"
#include "ObjectAccessor.h"
#include "Language.h"
#include "CellImpl.h"
#include "MapPersistentStateMgr.h"
#include "Mail.h"
#include "Util.h"
#include "Anticheat.h"
#include "SQLStorages.h"
#include "AsyncCommandHandlers.h"
#include "WaypointMovementGenerator.h"
#ifdef _DEBUG_VMAPS
#include "VMapFactory.h"
#endif
#include <regex>

//-----------------------Npc Commands-----------------------
bool ChatHandler::HandleNpcSayCommand(char* args)
{
    if (!*args)
        return false;

    Creature* pCreature = GetSelectedCreature();
    if (!pCreature)
    {
        SendSysMessage(LANG_SELECT_CREATURE);
        SetSentErrorMessage(true);
        return false;
    }

    pCreature->MonsterSay(args, LANG_UNIVERSAL);

    return true;
}

bool ChatHandler::HandleNpcYellCommand(char* args)
{
    if (!*args)
        return false;

    Creature* pCreature = GetSelectedCreature();
    if (!pCreature)
    {
        SendSysMessage(LANG_SELECT_CREATURE);
        SetSentErrorMessage(true);
        return false;
    }

    pCreature->MonsterYell(args, LANG_UNIVERSAL);

    return true;
}

//show text emote by creature in chat
bool ChatHandler::HandleNpcTextEmoteCommand(char* args)
{
    if (!*args)
        return false;

    Creature* pCreature = GetSelectedCreature();

    if (!pCreature)
    {
        SendSysMessage(LANG_SELECT_CREATURE);
        SetSentErrorMessage(true);
        return false;
    }

    pCreature->MonsterTextEmote(args, 0, false);

    return true;
}
//----------------------------------------------------------

// global announce
bool ChatHandler::HandleAnnounceCommand(char* args)
{
    if (!*args)
        return false;

    sWorld.SendWorldText(LANG_SYSTEMMESSAGE, args);
    return true;
}

//notification player at the screen
bool ChatHandler::HandleNotifyCommand(char* args)
{
    if (!*args)
        return false;

    std::string str = GetMangosString(LANG_GLOBAL_NOTIFY);
    str += args;

    WorldPacket data(SMSG_NOTIFICATION, (str.size() + 1));
    data << str;
    sWorld.SendGlobalMessage(&data);

    return true;
}

//Enable\Dissable GM Mode
bool ChatHandler::HandleGMCommand(char* args)
{
    if (!*args)
    {
        if (m_session->GetPlayer()->IsGameMaster())
            m_session->SendNotification(LANG_GM_ON);
        else
            m_session->SendNotification(LANG_GM_OFF);
        return true;
    }

    bool value;
    if (!ExtractOnOff(&args, value))
    {
        SendSysMessage(LANG_USE_BOL);
        SetSentErrorMessage(true);
        return false;
    }

    if (value)
    {
        m_session->GetPlayer()->SetGameMaster(true);
        m_session->SendNotification(LANG_GM_ON);
    }
    else
    {
        m_session->GetPlayer()->SetGameMaster(false);
        m_session->SendNotification(LANG_GM_OFF);
    }

    return true;
}
//Enable\Disable Invisible mode
bool ChatHandler::HandleGMVisibleCommand(char* args)
{
    if (!*args)
    {
        bool visible = GetSession()->GetPlayer()->IsGMVisible();
        uint32 visibilityLevel = visible ? 0 : GetSession()->GetPlayer()->GetGMInvisibilityLevel();
        PSendSysMessage(LANG_YOU_ARE, visible ? GetMangosString(LANG_VISIBLE) : GetMangosString(LANG_INVISIBLE), visibilityLevel);
        return true;
    }

    bool value;
    uint8 accessLevel = GetAccessLevel();
    uint32 visibilityLevel = accessLevel + 1;

    if (ExtractUInt32(&args, visibilityLevel))
        value = (visibilityLevel == 0); // Make visible if level = 0 only
    else if (ExtractOnOff(&args, value))
        visibilityLevel = accessLevel;

    if (visibilityLevel > accessLevel)
    {
        SendSysMessage(LANG_USE_BOL);
        SetSentErrorMessage(true);
        return false;
    }

    if (value)
    {
        m_session->GetPlayer()->SetGMVisible(true);
        m_session->SendNotification(LANG_INVISIBLE_VISIBLE);
    }
    else
    {
        m_session->GetPlayer()->SetGMInvisibilityLevel(visibilityLevel);
        m_session->SendNotification(LANG_INVISIBLE_INVISIBLE, visibilityLevel);
        m_session->GetPlayer()->SetGMVisible(false);
    }

    return true;
}

bool ChatHandler::HandleGPSCommand(char* args)
{
    WorldObject *obj = NULL;
    if (*args)
    {
        if (ObjectGuid guid = ExtractGuidFromLink(&args))
            obj = (WorldObject*)m_session->GetPlayer()->GetObjectByTypeMask(guid, TYPEMASK_CREATURE_OR_GAMEOBJECT);

        if (!obj)
        {
            SendSysMessage(LANG_PLAYER_NOT_FOUND);
            SetSentErrorMessage(true);
            return false;
        }
    }
    else
    {
        obj = GetSelectedUnit();

        if (!obj)
        {
            SendSysMessage(LANG_SELECT_CHAR_OR_CREATURE);
            SetSentErrorMessage(true);
            return false;
        }
    }
    CellPair cell_val = MaNGOS::ComputeCellPair(obj->GetPositionX(), obj->GetPositionY());
    Cell cell(cell_val);

    uint32 zone_id, area_id;
    obj->GetZoneAndAreaId(zone_id, area_id);

    MapEntry const* mapEntry = sMapStorage.LookupEntry<MapEntry>(obj->GetMapId());
    const auto *zoneEntry = AreaEntry::GetById(zone_id);
    const auto *areaEntry = AreaEntry::GetById(area_id);

    float zone_x = obj->GetPositionX();
    float zone_y = obj->GetPositionY();

    if (!Map2ZoneCoordinates(zone_x, zone_y, zone_id))
    {
        zone_x = 0;
        zone_y = 0;
    }

    Map const *map = obj->GetMap();
    float ground_z = map->GetHeight(obj->GetPositionX(), obj->GetPositionY(), MAX_HEIGHT);
    float floor_z = map->GetHeight(obj->GetPositionX(), obj->GetPositionY(), obj->GetPositionZ());

    GridPair p = MaNGOS::ComputeGridPair(obj->GetPositionX(), obj->GetPositionY());

    int gx = 63 - p.x_coord;
    int gy = 63 - p.y_coord;

    uint32 have_map = GridMap::ExistMap(obj->GetMapId(), gx, gy) ? 1 : 0;
    uint32 have_vmap = GridMap::ExistVMap(obj->GetMapId(), gx, gy) ? 1 : 0;

    TerrainInfo const* terrain = obj->GetTerrain();
    if (have_vmap)
    {
        if (terrain->IsOutdoors(obj->GetPositionX(), obj->GetPositionY(), obj->GetPositionZ()))
            PSendSysMessage("You are OUTdoor");
        else
            PSendSysMessage("You are INdoor");
    }
    else PSendSysMessage("no VMAP available for area info");

    std::string zoneName = "<unknown>";
    std::string areaName = "<unknown>";

    if (zoneEntry)
    {
        zoneName = zoneEntry->Name;
        sObjectMgr.GetAreaLocaleString(zoneEntry->Id, GetSessionDbLocaleIndex(), &zoneName);
    }

    if (areaEntry)
    {
        areaName = areaEntry->Name;
        sObjectMgr.GetAreaLocaleString(areaEntry->Id, GetSessionDbLocaleIndex(), &areaName);
    }

    PSendSysMessage(LANG_MAP_POSITION,
                    obj->GetMapId(), (mapEntry ? mapEntry->name : "<unknown>"),
                    zone_id, zoneName.c_str(), area_id, areaName.c_str(),
                    obj->GetPositionX(), obj->GetPositionY(), obj->GetPositionZ(), obj->GetOrientation(),
                    cell.GridX(), cell.GridY(), cell.CellX(), cell.CellY(), obj->GetInstanceId(),
                    zone_x, zone_y, ground_z, floor_z, have_map, have_vmap);

    DEBUG_LOG("Player %s GPS call for %s '%s' (%s: %u):",
              m_session ? GetNameLink().c_str() : GetMangosString(LANG_CONSOLE_COMMAND),
              (obj->GetTypeId() == TYPEID_PLAYER ? "player" : "creature"), obj->GetName(),
              (obj->GetTypeId() == TYPEID_PLAYER ? "GUID" : "Entry"), (obj->GetTypeId() == TYPEID_PLAYER ? obj->GetGUIDLow() : obj->GetEntry()));

    if (zoneEntry)
        sObjectMgr.GetAreaLocaleString(zoneEntry->Id, sWorld.GetDefaultDbcLocale(), &zoneName);

    if (areaEntry)
        sObjectMgr.GetAreaLocaleString(areaEntry->Id, sWorld.GetDefaultDbcLocale(), &areaName);

    DEBUG_LOG(GetMangosString(LANG_MAP_POSITION),
              obj->GetMapId(), (mapEntry ? mapEntry->name : "<unknown>"),
              zone_id, zoneName.c_str(), area_id, areaName.c_str(),
              obj->GetPositionX(), obj->GetPositionY(), obj->GetPositionZ(), obj->GetOrientation(),
              cell.GridX(), cell.GridY(), cell.CellX(), cell.CellY(), obj->GetInstanceId(),
              zone_x, zone_y, ground_z, floor_z, have_map, have_vmap);

    GridMapLiquidData liquid_status;
    GridMapLiquidStatus res = terrain->getLiquidStatus(obj->GetPositionX(), obj->GetPositionY(), obj->GetPositionZ(), MAP_ALL_LIQUIDS, &liquid_status);
    if (res)
        PSendSysMessage(LANG_LIQUID_STATUS, liquid_status.level, liquid_status.depth_level, liquid_status.type_flags, res);
    return true;
}

//Summon Player
bool ChatHandler::HandleNamegoCommand(char* args)
{
    Player* target;
    ObjectGuid target_guid;
    std::string target_name;
    if (!ExtractPlayerTarget(&args, &target, &target_guid, &target_name))
        return false;

    Player* _player = m_session->GetPlayer();
    if (target == _player || target_guid == _player->GetObjectGuid())
    {
        PSendSysMessage(LANG_CANT_TELEPORT_SELF);
        SetSentErrorMessage(true);
        return false;
    }

    if (target)
    {
        std::string nameLink = playerLink(target_name);
        // check online security
        if (HasLowerSecurity(target))
            return false;

        if (target->IsBeingTeleported())
        {
            PSendSysMessage(LANG_IS_TELEPORTED, nameLink.c_str());
            SetSentErrorMessage(true);
            return false;
        }

        Map* pMap = m_session->GetPlayer()->GetMap();

        if (pMap->IsBattleGround())
        {
            target->SetBattleGroundId(m_session->GetPlayer()->GetBattleGroundId(), m_session->GetPlayer()->GetBattleGroundTypeId());
            // remember current position as entry point for return at bg end teleportation
            if (!target->GetMap()->IsBattleGround())
                target->SetBattleGroundEntryPoint();
        }
        PSendSysMessage(LANG_SUMMONING, nameLink.c_str(), "");
        if (needReportToTarget(target))
            ChatHandler(target).PSendSysMessage(LANG_SUMMONED_BY, playerLink(_player->GetName()).c_str());

        // stop flight if need
        if (target->IsTaxiFlying())
        {
            target->GetMotionMaster()->MovementExpired();
            target->GetTaxi().ClearTaxiDestinations();
        }
        // save only in non-flight case
        else
            target->SaveRecallPosition();

        // before GM
        float x, y, z;
        m_session->GetPlayer()->GetClosePoint(x, y, z, target->GetObjectBoundingRadius());
        target->TeleportTo(m_session->GetPlayer()->GetMapId(), x, y, z, target->GetOrientation(), TELE_TO_NOT_LEAVE_COMBAT);
    }
    else
    {
        // check offline security
        if (HasLowerSecurity(NULL, target_guid))
            return false;

        std::string nameLink = playerLink(target_name);

        PSendSysMessage(LANG_SUMMONING, nameLink.c_str(), GetMangosString(LANG_OFFLINE));

        // in point where GM stay
        Player::SavePositionInDB(target_guid, m_session->GetPlayer()->GetMapId(),
                                 m_session->GetPlayer()->GetPositionX(),
                                 m_session->GetPlayer()->GetPositionY(),
                                 m_session->GetPlayer()->GetPositionZ(),
                                 m_session->GetPlayer()->GetOrientation(),
                                 m_session->GetPlayer()->GetZoneId());
    }

    return true;
}

//Teleport to Player
bool ChatHandler::HandleGonameCommand(char* args)
{
    Player* target;
    ObjectGuid target_guid;
    std::string target_name;
    if (!ExtractPlayerTarget(&args, &target, &target_guid, &target_name))
        return false;

    Player* _player = m_session->GetPlayer();
    if (target == _player || target_guid == _player->GetObjectGuid())
    {
        SendSysMessage(LANG_CANT_TELEPORT_SELF);
        SetSentErrorMessage(true);
        return false;
    }

    if (target)
    {
        std::string chrNameLink = playerLink(target_name);
        Map* cMap = target->GetMap();
        uint32 instanceId = 0;
        uint32 teleFlags = TELE_TO_GM_MODE;
        InstancePlayerBind *bind = _player->GetBoundInstance(target->GetMapId());

        if (bind)
        {
            instanceId = bind->state->GetInstanceId();
            _player->UnbindInstance(target->GetMapId());
        }

        if (cMap->IsBattleGround())
        {
            if (_player->GetBattleGroundId() && _player->GetBattleGroundId() != target->GetBattleGroundId())
            {
                PSendSysMessage(LANG_CANNOT_GO_TO_BG_FROM_BG, chrNameLink.c_str());
                SetSentErrorMessage(true);
                return false;
            }
            // all's well, set bg id
            // when porting out from the bg, it will be reset to 0
            if(_player->GetBattleGroundId() != target->GetBattleGroundId())
            {
                _player->SetBattleGroundId(target->GetBattleGroundId(), target->GetBattleGroundTypeId());
                teleFlags |= TELE_TO_FORCE_MAP_CHANGE;
            }

            // remember current position as entry point for return at bg end teleportation
            if (!_player->GetMap()->IsBattleGround())
                _player->SetBattleGroundEntryPoint();
        }
        else if (cMap->IsDungeon())
        {
            // we have to go to instance, and can go to player only if:
            //   1) we are in his group (either as leader or as member)
            //   2) we are not bound to any group and have GM mode on
            if (_player->GetGroup())
            {
                // we are in group, we can go only if we are in the player group
                if (_player->GetGroup() != target->GetGroup())
                {
                    PSendSysMessage(LANG_CANNOT_GO_TO_INST_PARTY, chrNameLink.c_str());
                    SetSentErrorMessage(true);
                    return false;
                }
            }

            // if the player or the player's group is bound to another instance
            // the player will not be bound to another one
            InstancePlayerBind *pBind = _player->GetBoundInstance(target->GetMapId());

            if (!pBind)
            {
                Group *group = _player->GetGroup();
                // if no bind exists, create a solo bind
                InstanceGroupBind *gBind = group ? group->GetBoundInstance(target->GetMapId()) : NULL;
                // if no bind exists, create a solo bind
                if (!gBind)
                {
                    DungeonPersistentState *save = ((DungeonMap*)target->GetMap())->GetPersistanceState();

                    // if player is group leader then we need add group bind
                    if (group && group->IsLeader(_player->GetObjectGuid()))
                        group->BindToInstance(save, !save->CanReset());
                    else
                        _player->BindToInstance(save, !save->CanReset());

                    if (instanceId && instanceId != save->GetInstanceId()) {
                        teleFlags |= TELE_TO_FORCE_MAP_CHANGE;
                    }
                }
            }
        }

        PSendSysMessage(LANG_APPEARING_AT_ONLINE, chrNameLink.c_str());
        if (needReportToTarget(target))
            ChatHandler(target).PSendSysMessage(LANG_APPEARING_TO, GetNameLink().c_str());

        // stop flight if need
        if (_player->IsTaxiFlying())
        {
            _player->GetMotionMaster()->MovementExpired();
            _player->GetTaxi().ClearTaxiDestinations();
        }
        // save only in non-flight case
        else
            _player->SaveRecallPosition();

        // to point to see at target with same orientation
        float x, y, z;
        target->GetPosition(x, y, z);

        _player->TeleportTo(target->GetMapId(), x, y, z + 5.0f, _player->GetAngle(target), teleFlags);
    }
    else
    {
        std::string nameLink = playerLink(target_name);

        PSendSysMessage(LANG_APPEARING_AT_OFFLINE, nameLink.c_str());

        // to point where player stay (if loaded)
        float x, y, z, o;
        uint32 map;
        bool in_flight;
        if (!Player::LoadPositionFromDB(target_guid, map, x, y, z, o, in_flight))
            return false;

        return HandleGoHelper(_player, map, x, y, &z);
    }

    return true;
}

// Teleport to player corpse
// NOTE: If the corpse is in a dungeon / BG you will teleport to the right place
// but you will not be able to see the corpse if you are not in the player's group
bool ChatHandler::HandleGocorpseCommand(char* args)
{
    ObjectGuid target_guid;
    if (!ExtractPlayerTarget(&args, NULL, &target_guid, NULL))
        return false;

    Corpse* corpse = sObjectAccessor.GetCorpseForPlayerGUID(target_guid);
    if (!corpse)
    {
        PSendSysMessage(LANG_COMMAND_TELE_NOTFOUND);
        SetSentErrorMessage(true);
        return false;
    }

    float x = corpse->GetPositionX();
    float y = corpse->GetPositionY();
    float z = corpse->GetPositionZ();

    return HandleGoHelper(m_session->GetPlayer(), corpse->GetMapId(), x, y, &z, NULL);
}

// Teleport player to last position
bool ChatHandler::HandleRecallCommand(char* args)
{
    Player* target;
    if (!ExtractPlayerTarget(&args, &target))
        return false;

    // check online security
    if (HasLowerSecurity(target))
        return false;

    if (target->IsBeingTeleported())
    {
        PSendSysMessage(LANG_IS_TELEPORTED, GetNameLink(target).c_str());
        SetSentErrorMessage(true);
        return false;
    }

    uint32 mapId;
    float x, y, z, o;
    target->GetRecallPosition(mapId, x, y, z, o);
    return HandleGoHelper(target, mapId, x, y, &z, &o);
}

bool ChatHandler::HandleReplenishCommand(char* args)
{
    Unit *pUnit = GetSelectedUnit();
    if (!pUnit || !pUnit->isAlive())
    {
        SendSysMessage(LANG_SELECT_CHAR_OR_CREATURE);
        SetSentErrorMessage(true);
        return false;
    }

    pUnit->SetHealth(pUnit->GetMaxHealth());

    if (pUnit->getPowerType() == POWER_MANA)
        pUnit->SetPower(POWER_MANA, pUnit->GetMaxPower(POWER_MANA));

    return true;
}

//Edit Player Faction
bool ChatHandler::HandleModifyFactionCommand(char* args)
{
    Creature* chr = GetSelectedCreature();
    if (!chr)
    {
        SendSysMessage(LANG_SELECT_CREATURE);
        SetSentErrorMessage(true);
        return false;
    }

    if (!*args)
    {
        if (chr)
        {
            uint32 factionid = chr->getFaction();
            uint32 flag      = chr->GetUInt32Value(UNIT_FIELD_FLAGS);
            uint32 npcflag   = chr->GetUInt32Value(UNIT_NPC_FLAGS);
            uint32 dyflag    = chr->GetUInt32Value(UNIT_DYNAMIC_FLAGS);
            PSendSysMessage(LANG_CURRENT_FACTION, chr->GetGUIDLow(), factionid, flag, npcflag, dyflag);
        }
        return true;
    }

    if (!chr)
    {
        SendSysMessage(LANG_NO_CHAR_SELECTED);
        SetSentErrorMessage(true);
        return false;
    }

    uint32 factionid;
    if (!ExtractUint32KeyFromLink(&args, "Hfaction", factionid))
        return false;

    if (!sObjectMgr.GetFactionTemplateEntry(factionid))
    {
        PSendSysMessage(LANG_WRONG_FACTION, factionid);
        SetSentErrorMessage(true);
        return false;
    }

    uint32 flag;
    if (!ExtractOptUInt32(&args, flag, chr->GetUInt32Value(UNIT_FIELD_FLAGS)))
        return false;

    uint32 npcflag;
    if (!ExtractOptUInt32(&args, npcflag, chr->GetUInt32Value(UNIT_NPC_FLAGS)))
        return false;

    uint32  dyflag;
    if (!ExtractOptUInt32(&args, dyflag, chr->GetUInt32Value(UNIT_DYNAMIC_FLAGS)))
        return false;

    PSendSysMessage(LANG_YOU_CHANGE_FACTION, chr->GetGUIDLow(), factionid, flag, npcflag, dyflag);

    chr->setFaction(factionid);
    chr->SetUInt32Value(UNIT_FIELD_FLAGS, flag);
    chr->SetUInt32Value(UNIT_NPC_FLAGS, npcflag);
    chr->SetUInt32Value(UNIT_DYNAMIC_FLAGS, dyflag);

    return true;
}

//Enable On\OFF all taxi paths
bool ChatHandler::HandleTaxiCheatCommand(char* args)
{
    bool value;
    if (!ExtractOnOff(&args, value))
    {
        SendSysMessage(LANG_USE_BOL);
        SetSentErrorMessage(true);
        return false;
    }

    Player *chr = GetSelectedPlayer();
    if (!chr)
        chr = m_session->GetPlayer();
    // check online security
    else if (HasLowerSecurity(chr))
        return false;

    if (value)
    {
        chr->SetTaxiCheater(true);
        PSendSysMessage(LANG_YOU_GIVE_TAXIS, GetNameLink(chr).c_str());
        if (needReportToTarget(chr))
            ChatHandler(chr).PSendSysMessage(LANG_YOURS_TAXIS_ADDED, GetNameLink().c_str());
    }
    else
    {
        chr->SetTaxiCheater(false);
        PSendSysMessage(LANG_YOU_REMOVE_TAXIS, GetNameLink(chr).c_str());
        if (needReportToTarget(chr))
            ChatHandler(chr).PSendSysMessage(LANG_YOURS_TAXIS_REMOVED, GetNameLink().c_str());
    }

    return true;
}

//Edit Player Aspeed
bool ChatHandler::HandleModifyASpeedCommand(char* args)
{
    if (!*args)
        return false;

    float modSpeed = (float)atof(args);
    
    if (modSpeed > 4.0f && GetAccessLevel() < SEC_BASIC_ADMIN)
        modSpeed = 4.0f;

    if (modSpeed > 100 || modSpeed < 0)
    {
        SendSysMessage(LANG_BAD_VALUE);
        SetSentErrorMessage(true);
        return false;
    }

    Unit *chr = GetSelectedUnit();
    if (chr == NULL)
    {
        SendSysMessage(LANG_NO_CHAR_SELECTED);
        SetSentErrorMessage(true);
        return false;
    }

    // check online security
    /*  if (HasLowerSecurity(chr))
            return false;

        std::string chrNameLink = GetNameLink(chr);*/
    std::string chrNameLink = (chr->GetTypeId() == TYPEID_PLAYER) ? ((Player*)chr)->GetName() : "<creature>";

    if (chr->IsTaxiFlying())
    {
        PSendSysMessage(LANG_CHAR_IN_FLIGHT, chrNameLink.c_str());
        SetSentErrorMessage(true);
        return false;
    }
    PSendSysMessage(LANG_YOU_CHANGE_ASPEED, modSpeed, chrNameLink.c_str());
    /*if (needReportToTarget(chr))
        ChatHandler(chr).PSendSysMessage(LANG_YOURS_ASPEED_CHANGED, GetNameLink().c_str(), modSpeed);
    */
    chr->UpdateSpeed(MOVE_WALK,   true, modSpeed);
    chr->UpdateSpeed(MOVE_RUN,    true, modSpeed);
    chr->UpdateSpeed(MOVE_SWIM,   true, modSpeed);
    //chr->UpdateSpeed(MOVE_TURN,   true, modSpeed);
    return true;
}

//Edit Player Scale
bool ChatHandler::HandleModifyScaleCommand(char* args)
{
    if (!*args)
        return false;

    float Scale = (float)atof(args);
    if (Scale > 100.0f || Scale <= 0.0f)
    {
        SendSysMessage(LANG_BAD_VALUE);
        SetSentErrorMessage(true);
        return false;
    }

    Unit *target = GetSelectedUnit();
    if (target == NULL)
    {
        SendSysMessage(LANG_SELECT_CHAR_OR_CREATURE);
        SetSentErrorMessage(true);
        return false;
    }

    if (target->GetTypeId() == TYPEID_PLAYER)
    {
        // check online security
        if (HasLowerSecurity((Player*)target))
            return false;

        PSendSysMessage(LANG_YOU_CHANGE_SIZE, Scale, GetNameLink((Player*)target).c_str());
        if (needReportToTarget((Player*)target))
            ChatHandler((Player*)target).PSendSysMessage(LANG_YOURS_SIZE_CHANGED, GetNameLink().c_str(), Scale);
    }

    target->SetObjectScale(Scale);
    target->UpdateModelData();

    return true;
}

//Edit Player money
bool ChatHandler::HandleModifyMoneyCommand(char* args)
{
    if (!*args)
        return false;

    Player *chr = GetSelectedPlayer();
    if (chr == NULL)
    {
        SendSysMessage(LANG_NO_CHAR_SELECTED);
        SetSentErrorMessage(true);
        return false;
    }

    // check online security
    if (HasLowerSecurity(chr))
        return false;

    int32 addmoney = atoi(args);

    uint32 moneyuser = chr->GetMoney();

    if (addmoney < 0)
    {
        int32 newmoney = int32(moneyuser) + addmoney;

        DETAIL_LOG(GetMangosString(LANG_CURRENT_MONEY), moneyuser, addmoney, newmoney);
        if (newmoney <= 0)
        {
            PSendSysMessage(LANG_YOU_TAKE_ALL_MONEY, GetNameLink(chr).c_str());
            if (needReportToTarget(chr))
                ChatHandler(chr).PSendSysMessage(LANG_YOURS_ALL_MONEY_GONE, GetNameLink().c_str());

            chr->SetMoney(0);
        }
        else
        {
            if (newmoney > MAX_MONEY_AMOUNT)
                newmoney = MAX_MONEY_AMOUNT;

            PSendSysMessage(LANG_YOU_TAKE_MONEY, abs(addmoney), GetNameLink(chr).c_str());
            if (needReportToTarget(chr))
                ChatHandler(chr).PSendSysMessage(LANG_YOURS_MONEY_TAKEN, GetNameLink().c_str(), abs(addmoney));
            chr->SetMoney(newmoney);
        }
    }
    else
    {
        PSendSysMessage(LANG_YOU_GIVE_MONEY, addmoney, GetNameLink(chr).c_str());
        if (needReportToTarget(chr))
            ChatHandler(chr).PSendSysMessage(LANG_YOURS_MONEY_GIVEN, GetNameLink().c_str(), addmoney);

        if (addmoney >= MAX_MONEY_AMOUNT)
            chr->SetMoney(MAX_MONEY_AMOUNT);
        else
            chr->LogModifyMoney(addmoney, "GM", m_session->GetPlayer()->GetObjectGuid());
    }

    DETAIL_LOG(GetMangosString(LANG_NEW_MONEY), moneyuser, addmoney, chr->GetMoney());

    return true;
}

bool ChatHandler::HandleTeleCommand(char* args)
{
    if (!*args)
        return false;

    Player* _player = m_session->GetPlayer();

    // id, or string, or [name] Shift-click form |color|Htele:id|h[name]|h|r
    GameTele const* tele = ExtractGameTeleFromLink(&args);

    if (!tele)
    {
        SendSysMessage(LANG_COMMAND_TELE_NOTFOUND);
        SetSentErrorMessage(true);
        return false;
    }

    return HandleGoHelper(_player, tele->mapId, tele->position_x, tele->position_y, &tele->position_z, &tele->orientation);
}

//Enable\Disable accept whispers (for GM)
bool ChatHandler::HandleWhispersCommand(char* args)
{
    if (!*args)
    {
        PSendSysMessage(LANG_COMMAND_WHISPERACCEPTING, GetOnOffStr(m_session->GetMasterPlayer()->IsAcceptWhispers()));
        return true;
    }

    bool value;
    if (!ExtractOnOff(&args, value))
    {
        SendSysMessage(LANG_USE_BOL);
        SetSentErrorMessage(true);
        return false;
    }

    // whisper on
    if (value)
    {
        GetSession()->GetMasterPlayer()->SetAcceptWhispers(true);
        SendSysMessage(LANG_COMMAND_WHISPERON);
    }
    // whisper off
    else
    {
        GetSession()->GetMasterPlayer()->SetAcceptWhispers(false);
        GetSession()->GetMasterPlayer()->ClearAllowedWhisperers();
        SendSysMessage(LANG_COMMAND_WHISPEROFF);
    }

    return true;
}

//Save all players in the world
bool ChatHandler::HandleSaveAllCommand(char* /*args*/)
{
    sObjectAccessor.SaveAllPlayers();
    SendSysMessage(LANG_PLAYERS_SAVED);
    return true;
}

//Send mail by command
bool ChatHandler::HandleSendMailCommand(char* args)
{
    // format: name "subject text" "mail text"
    Player* target;
    ObjectGuid target_guid;
    std::string target_name;
    if (!ExtractPlayerTarget(&args, &target, &target_guid, &target_name))
        return false;

    MailDraft draft;

    // fill draft
    if (!HandleSendMailHelper(draft, args))
        return false;

    // from console show nonexistent sender
    MailSender sender(MAIL_NORMAL, m_session ? m_session->GetPlayer()->GetObjectGuid().GetCounter() : 0, MAIL_STATIONERY_GM);

    draft.SendMailTo(MailReceiver(target, target_guid), sender);

    std::string nameLink = playerLink(target_name);
    PSendSysMessage(LANG_MAIL_SENT, nameLink.c_str());
    return true;
}

// teleport player to given game_tele.entry
bool ChatHandler::HandleTeleNameCommand(char* args)
{
    char* nameStr = ExtractOptNotLastArg(&args);

    Player* target;
    ObjectGuid target_guid;
    std::string target_name;
    if (!ExtractPlayerTarget(&nameStr, &target, &target_guid, &target_name))
        return false;

    // id, or string, or [name] Shift-click form |color|Htele:id|h[name]|h|r
    GameTele const* tele = ExtractGameTeleFromLink(&args);
    if (!tele)
    {
        SendSysMessage(LANG_COMMAND_TELE_NOTFOUND);
        SetSentErrorMessage(true);
        return false;
    }

    if (target)
    {
        // check online security
        if (HasLowerSecurity(target))
            return false;

        std::string chrNameLink = playerLink(target_name);

        if (target->IsBeingTeleported() == true)
        {
            PSendSysMessage(LANG_IS_TELEPORTED, chrNameLink.c_str());
            SetSentErrorMessage(true);
            return false;
        }

        PSendSysMessage(LANG_TELEPORTING_TO, chrNameLink.c_str(), "", tele->name.c_str());
        if (needReportToTarget(target))
            ChatHandler(target).PSendSysMessage(LANG_TELEPORTED_TO_BY, GetNameLink().c_str());

        return HandleGoHelper(target, tele->mapId, tele->position_x, tele->position_y, &tele->position_z, &tele->orientation);
    }
    else
    {
        // check offline security
        if (HasLowerSecurity(NULL, target_guid))
            return false;

        std::string nameLink = playerLink(target_name);

        PSendSysMessage(LANG_TELEPORTING_TO, nameLink.c_str(), GetMangosString(LANG_OFFLINE), tele->name.c_str());
        Player::SavePositionInDB(target_guid, tele->mapId, tele->position_x, tele->position_y, tele->position_z, tele->orientation,
                                 sTerrainMgr.GetZoneId(tele->mapId, tele->position_x, tele->position_y, tele->position_z));
    }

    return true;
}

//Teleport group to given game_tele.entry
bool ChatHandler::HandleTeleGroupCommand(char * args)
{
    if (!*args)
        return false;

    Player *player = GetSelectedPlayer();
    if (!player)
    {
        SendSysMessage(LANG_NO_CHAR_SELECTED);
        SetSentErrorMessage(true);
        return false;
    }

    // check online security
    if (HasLowerSecurity(player))
        return false;

    // id, or string, or [name] Shift-click form |color|Htele:id|h[name]|h|r
    GameTele const* tele = ExtractGameTeleFromLink(&args);
    if (!tele)
    {
        SendSysMessage(LANG_COMMAND_TELE_NOTFOUND);
        SetSentErrorMessage(true);
        return false;
    }

    std::string nameLink = GetNameLink(player);

    Group *grp = player->GetGroup();
    if (!grp)
    {
        PSendSysMessage(LANG_NOT_IN_GROUP, nameLink.c_str());
        SetSentErrorMessage(true);
        return false;
    }

    for (GroupReference *itr = grp->GetFirstMember(); itr != NULL; itr = itr->next())
    {
        Player *pl = itr->getSource();

        if (!pl || !pl->GetSession())
            continue;

        // check online security
        if (HasLowerSecurity(pl))
            return false;

        std::string plNameLink = GetNameLink(pl);

        if (pl->IsBeingTeleported())
        {
            PSendSysMessage(LANG_IS_TELEPORTED, plNameLink.c_str());
            continue;
        }

        PSendSysMessage(LANG_TELEPORTING_TO, plNameLink.c_str(), "", tele->name.c_str());
        if (needReportToTarget(pl))
            ChatHandler(pl).PSendSysMessage(LANG_TELEPORTED_TO_BY, nameLink.c_str());

        // stop flight if need
        if (pl->IsTaxiFlying())
        {
            pl->GetMotionMaster()->MovementExpired();
            pl->GetTaxi().ClearTaxiDestinations();
        }
        // save only in non-flight case
        else
            pl->SaveRecallPosition();

        pl->TeleportTo(tele->mapId, tele->position_x, tele->position_y, tele->position_z, tele->orientation);
    }

    return true;
}

//Summon group of player
bool ChatHandler::HandleGroupgoCommand(char* args)
{
    Player* target;
    if (!ExtractPlayerTarget(&args, &target))
        return false;

    // check online security
    if (HasLowerSecurity(target))
        return false;

    Group *grp = target->GetGroup();

    std::string nameLink = GetNameLink(target);

    if (!grp)
    {
        PSendSysMessage(LANG_NOT_IN_GROUP, nameLink.c_str());
        SetSentErrorMessage(true);
        return false;
    }

    Map* gmMap = m_session->GetPlayer()->GetMap();
    bool to_instance =  gmMap->Instanceable();

    // we are in instance, and can summon only player in our group with us as lead
    if (to_instance && (
                !m_session->GetPlayer()->GetGroup() || (grp->GetLeaderGuid() != m_session->GetPlayer()->GetObjectGuid()) ||
                (m_session->GetPlayer()->GetGroup()->GetLeaderGuid() != m_session->GetPlayer()->GetObjectGuid())))
        // the last check is a bit excessive, but let it be, just in case
    {
        SendSysMessage(LANG_CANNOT_SUMMON_TO_INST);
        SetSentErrorMessage(true);
        return false;
    }

    for (GroupReference *itr = grp->GetFirstMember(); itr != NULL; itr = itr->next())
    {
        Player *pl = itr->getSource();

        if (!pl || pl == m_session->GetPlayer() || !pl->GetSession())
            continue;

        // check online security
        if (HasLowerSecurity(pl))
            return false;

        std::string plNameLink = GetNameLink(pl);

        if (pl->IsBeingTeleported() == true)
        {
            PSendSysMessage(LANG_IS_TELEPORTED, plNameLink.c_str());
            SetSentErrorMessage(true);
            return false;
        }

        if (to_instance)
        {
            Map* plMap = pl->GetMap();

            if (plMap->Instanceable() && plMap->GetInstanceId() != gmMap->GetInstanceId())
            {
                // cannot summon from instance to instance
                PSendSysMessage(LANG_CANNOT_SUMMON_TO_INST, plNameLink.c_str());
                SetSentErrorMessage(true);
                return false;
            }
        }

        PSendSysMessage(LANG_SUMMONING, plNameLink.c_str(), "");
        if (needReportToTarget(pl))
            ChatHandler(pl).PSendSysMessage(LANG_SUMMONED_BY, nameLink.c_str());

        // stop flight if need
        if (pl->IsTaxiFlying())
        {
            pl->GetMotionMaster()->MovementExpired();
            pl->GetTaxi().ClearTaxiDestinations();
        }
        // save only in non-flight case
        else
            pl->SaveRecallPosition();

        // before GM
        float x, y, z;
        m_session->GetPlayer()->GetClosePoint(x, y, z, pl->GetObjectBoundingRadius());
        pl->TeleportTo(m_session->GetPlayer()->GetMapId(), x, y, z, pl->GetOrientation());
    }

    return true;
}

bool ChatHandler::HandleGoHelper(Player* player, uint32 mapid, float x, float y, float const* zPtr, float const* ortPtr)
{
    float z;
    float ort = player->GetOrientation();

    if (zPtr)
    {
        z = *zPtr;

        if (ortPtr)
            ort = *ortPtr;

        // check full provided coordinates
        if (!MapManager::IsValidMapCoord(mapid, x, y, z, ort))
        {
            PSendSysMessage(LANG_INVALID_TARGET_COORD, x, y, mapid);
            SetSentErrorMessage(true);
            return false;
        }
    }
    else
    {
        // we need check x,y before ask Z or can crash at invalide coordinates
        if (!MapManager::IsValidMapCoord(mapid, x, y))
        {
            PSendSysMessage(LANG_INVALID_TARGET_COORD, x, y, mapid);
            SetSentErrorMessage(true);
            return false;
        }

        TerrainInfo const *map = sTerrainMgr.LoadTerrain(mapid);
        z = map->GetWaterOrGroundLevel(x, y, MAX_HEIGHT);
    }

    // stop flight if need
    if (player->IsTaxiFlying())
    {
        player->GetMotionMaster()->MovementExpired();
        player->GetTaxi().ClearTaxiDestinations();
    }
    // save only in non-flight case
    else
        player->SaveRecallPosition();

    player->TeleportTo(mapid, x, y, z, ort);

    return true;
}

bool ChatHandler::HandleGoCommand(char* args)
{
    if (!*args)
        return false;

    Player* _player = m_session->GetPlayer();

    uint32 mapid;
    float x, y, z;

    // raw coordinates case
    if (ExtractFloat(&args, x))
    {
        if (!ExtractFloat(&args, y))
            return false;

        if (!ExtractFloat(&args, z))
            return false;

        if (!ExtractOptUInt32(&args, mapid, _player->GetMapId()))
            return false;
    }
    // link case
    else if (!ExtractLocationFromLink(&args, mapid, x, y, z))
        return false;

    return HandleGoHelper(_player, mapid, x, y, &z);
}

//teleport at coordinates, including Z
bool ChatHandler::HandleGoXYZCommand(char* args)
{
    Player* _player = m_session->GetPlayer();

    float x;
    if (!ExtractFloat(&args, x))
        return false;

    float y;
    if (!ExtractFloat(&args, y))
        return false;

    float z;
    if (!ExtractFloat(&args, z))
        return false;

    uint32 mapid;
    if (!ExtractOptUInt32(&args, mapid, _player->GetMapId()))
        return false;

    return HandleGoHelper(_player, mapid, x, y, &z);
}


bool ChatHandler::HandleModifyDrunkCommand(char* args)
{
    if (!*args)    return false;

    uint32 drunklevel = (uint32)atoi(args);
    if (drunklevel > 100)
        drunklevel = 100;

    uint16 drunkMod = drunklevel * 0xFFFF / 100;

    m_session->GetPlayer()->SetDrunkValue(drunkMod);

    return true;
}

bool ChatHandler::HandleSetViewCommand(char* /*args*/)
{
    if (Unit* unit = GetSelectedUnit())
        m_session->GetPlayer()->GetCamera().SetView(unit);
    else
    {
        PSendSysMessage(LANG_SELECT_CHAR_OR_CREATURE);
        SetSentErrorMessage(true);
        return false;
    }

    return true;
}


bool ChatHandler::HandleViewLogCommand(char* args)
{
    uint32 logId;
    if (!ExtractUInt32(&args, logId))
        return false;
    World::ArchivedLogMessage* msg = sWorld.GetLog(logId, GetAccessLevel());
    if (!msg)
    {
        PSendSysMessage("Log #%u not found.", logId);
        SetSentErrorMessage(true);
        return false;
    }
    SendSysMessage(msg->msg.c_str());
    return true;
}

bool ChatHandler::HandleGoldRemoval(char* args)
{
    std::string error("Illformed gold removal command. Format is: name #g #s #c"); // move?

    std::string input(args);
    // I'm bad at regex - feel free to improve this
    std::regex pattern(R"(([a-zA-Z]{3,}) (\d{1,5})(g|s|c)\s?(\d{1,2})(g|s|c)\s?(\d{1,2})(g|s|c)\s?)");
    std::smatch matches;

    if (!std::regex_match(input, matches, pattern))
    {
        PSendSysMessage(error.c_str());
        SetSentErrorMessage(true);
        return false;
    }

    unsigned long gold = 0;
    unsigned long silver = 0;
    unsigned long copper = 0;

    std::string name = matches[1];

    for (auto i = matches.begin() + 2; i != matches.end(); i += 2)
    {
        try
        {
            auto type = (i + 1)->str();

            if (type == "g" && !gold)
            {
                gold += std::stoul(*i);
            }
            else if (type == "s" && !silver)
            {
                silver += std::stoul(*i);
            }
            else if (type == "c" && !copper)
            {
                copper += std::stoul(*i);
            }
            else
            {
                PSendSysMessage(error.c_str());
                SetSentErrorMessage(true);
                return false;
            }
        }
        catch (std::runtime_error&)
        {
            PSendSysMessage(error.c_str());
            SetSentErrorMessage(true);
            return false;
        }
    }

    uint32_t prevMoney = 0;
    uint32_t newMoney = 0;

    Player* player = sObjectMgr.GetPlayer(name.c_str());

    uint32 removalAmount = (gold * GOLD) + (silver * SILVER) + copper;

    if (player)
    {
        prevMoney = player->GetMoney();
        player->ModifyMoney(-static_cast<int32>(removalAmount));
        newMoney = player->GetMoney();

        PSendSysMessage("Removed %ug %us %uc from %s", gold, silver, copper, name.c_str());
        PSendSysMessage("%s previously had %ug %us %uc", name.c_str(), prevMoney / GOLD, (prevMoney % GOLD) / SILVER, (prevMoney % GOLD) % SILVER);
        PSendSysMessage("%s now has %ug %us %uc", name.c_str(), newMoney / GOLD, (newMoney % GOLD) / SILVER, (newMoney % GOLD) % SILVER);
    }
    else
    {
        CharacterDatabase.escape_string(name);
        CharacterDatabase.AsyncPQueryUnsafe(&PlayerGoldRemovalHandler::HandleGoldLookupResult,
            GetAccountId(), removalAmount,
            "SELECT money, guid, name FROM characters WHERE name = '%s'",
            name.c_str());
    }
    return true;
}