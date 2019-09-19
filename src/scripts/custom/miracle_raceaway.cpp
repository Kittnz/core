#include "scriptPCH.h"
#include "HardcodedEvents.h"
#include <array>

// Items:

#define GOBLIN_CAR_KEY  50525
#define GNOME_CAR_KEY  50524

// Quests:

#define GOBLIN_TEST_QUEST 50310
#define GNOME_TEST_QUEST 50312

#define ALREADY_REGISTERED_TXTID 50212

// Spells:

#define SALT_FLATS_RACE_SLOW      6601
#define SALT_FLATS_RACE_NORMAL    6602  // Decreases run speed, value -16%
#define SALT_FLATS_RACE_SPEED     6600  // Increases run speed, value +14%
#define DAMAGE_CAR                7084
#define I_CANT_DRIVE_55           31565 // What the actual fuck...
#define EXPLOSIVE_SHEEP_PASSIVE   4051
#define EXPLOSIVE_SHEEP           4050
#define SPELL_BOMB				  5134

constexpr float SheepAcceptanceRadius = 4.4f;
constexpr float SheepAcceptanceRadiusSqr = SheepAcceptanceRadius * SheepAcceptanceRadius;

bool GossipHello_npc_daisy(Player* p_Player, Creature* p_Creature)
{
    if (p_Player->GetQuestRewardStatus(GOBLIN_TEST_QUEST))
    p_Player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "I'll join Goblin's Team.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    if (p_Player->GetQuestRewardStatus(GNOME_TEST_QUEST))
    p_Player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "I'll join Gnome's Team.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
    if ((p_Player->GetQuestRewardStatus(GOBLIN_TEST_QUEST)) || (p_Player->GetQuestRewardStatus(GNOME_TEST_QUEST)))
    p_Player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "I want to leave from race queue.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);

    p_Player->SEND_GOSSIP_MENU(90250, p_Creature->GetGUID());    
    return true;
}

bool GossipSelect_npc_daisy(Player* p_Player, Creature* p_Creature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
		// register new goblin player
		MiracleRaceEvent* miracleEvent = sGameEventMgr.GetHardcodedEvent<MiracleRaceEvent>();
		if (miracleEvent != nullptr)
		{
			if (!miracleEvent->queueSystem().isPlayerQueuedAlready(p_Player))
			{
				miracleEvent->queueSystem().QueuePlayer(p_Player, MiracleRaceSide::Goblin);
				p_Creature->MonsterWhisper("Get ready! Shimmering Flats race event is about to start! Make haste if you wish to attend!", p_Player);
			}
			else
			{
				p_Creature->MonsterWhisper("You are already registered to participate on Mirage Race.", p_Player);
			}
		}
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
    {
		// register new gnome player
		MiracleRaceEvent* miracleEvent = sGameEventMgr.GetHardcodedEvent<MiracleRaceEvent>();
		if (miracleEvent != nullptr)
		{
			if (!miracleEvent->queueSystem().isPlayerQueuedAlready(p_Player))
			{
				miracleEvent->queueSystem().QueuePlayer(p_Player, MiracleRaceSide::Gnome);
				p_Creature->MonsterWhisper("Get ready! Shimmering Flats race event is about to start! Make haste if you wish to attend!", p_Player);
			}
			else
			{
				p_Creature->MonsterWhisper("You are already registered to participate on Mirage Race.", p_Player);
			}
		}

    }

	if (uiAction == GOSSIP_ACTION_INFO_DEF + 3)
	{
		MiracleRaceEvent* miracleEvent = sGameEventMgr.GetHardcodedEvent<MiracleRaceEvent>();
		if (miracleEvent != nullptr)
		{
			if (miracleEvent->queueSystem().isPlayerQueuedAlready(p_Player))
			{
				miracleEvent->queueSystem().RemoveFromQueue(p_Player);
				p_Creature->MonsterWhisper("Done. You are no longer queued!", p_Player);
			}
			else
			{
				p_Creature->MonsterWhisper("You are not queued.", p_Player);
			}
		}
	}

    p_Player->CLOSE_GOSSIP_MENU();
    return true;
}

bool GossipHello_npc_dolores(Player* p_Player, Creature* p_Creature)
{
    if (!p_Player->GetQuestRewardStatus(GOBLIN_TEST_QUEST))
    p_Player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "I want a test drive of Goblin's Car!", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    if (!p_Player->GetQuestRewardStatus(GNOME_TEST_QUEST))
    p_Player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "I want a test drive of Gnome's Car!", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
    p_Player->SEND_GOSSIP_MENU(90251, p_Creature->GetGUID());
    return true;
}

bool GossipSelect_npc_dolores(Player* p_Player, Creature* p_Creature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        if (p_Player->HasItemCount(GOBLIN_CAR_KEY, 0) && p_Player->GetQuestStatus(GOBLIN_TEST_QUEST) == QUEST_STATUS_INCOMPLETE)
        {
            if (MiracleRaceEvent* event = sGameEventMgr.GetHardcodedEvent<MiracleRaceEvent>())
            {
                event->StartTestRace(2, p_Player, MiracleRaceSide::Goblin);
            }
        }
        else
        {
            p_Creature->MonsterSay("You can't drive the car without keys! Speak to Jizzle Grikbot, silly.");
        }  
    }
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
    {
        if (p_Player->HasItemCount(GNOME_CAR_KEY, 0) && p_Player->GetQuestStatus(GNOME_TEST_QUEST) == QUEST_STATUS_INCOMPLETE)
        {
            if (MiracleRaceEvent* event = sGameEventMgr.GetHardcodedEvent<MiracleRaceEvent>())
            {
                event->StartTestRace(2, p_Player, MiracleRaceSide::Gnome);
            }
        }
        else
        {
            p_Creature->MonsterSay("You can't drive the car without keys! Speak to Gregor Fizzwuzz, silly.");
        }
    }

    p_Player->CLOSE_GOSSIP_MENU();
    return true;
}

// Ignore this for while:

struct go_speed_up : public GameObjectAI
{
    explicit go_speed_up(GameObject* pGo) : GameObjectAI(pGo)
    {
    }

	std::set<ObjectGuid> racers;
	uint32 checkTimer = 0;

	static const uint32 CheckForRacersInterval = 10;

    void UpdateAI(uint32 const uiDiff) override
    {
		GameObjectAI::UpdateAI(uiDiff);

		if (checkTimer < uiDiff)
		{
			for (auto iter = racers.begin(); iter != racers.end();)
			{
				if (Player* player = sObjectMgr.GetPlayer(*iter))
				{
					float distSqr = me->GetDistanceSqr(player->GetPositionX(), player->GetPositionY(), player->GetPositionZ());
					if (distSqr < SheepAcceptanceRadiusSqr)
					{
						// our client
						player->CastSpell(player, SALT_FLATS_RACE_SPEED, true);
						me->Despawn();
						me->Delete();
					}
				}
				else
				{
					iter = racers.erase(iter);
					continue;
				}
				iter++;
			}
			checkTimer = CheckForRacersInterval;
		}
		else
		{
			checkTimer -= uiDiff;
		}
    }

	virtual void InformGuid(ObjectGuid guid) override
	{
		racers.insert(guid);
	}

};

#define INVISIBLE_TRIGGER_ID 14495

struct npc_race_sheep : public ScriptedAI 
{
	npc_race_sheep(Creature* InCreature)
		: ScriptedAI(InCreature)
	{}

	std::set<ObjectGuid> racers;
	uint32 checkTimer = 0;

	static const uint32 CheckForRacersInterval = 10;


	virtual void Reset() override
	{
		checkTimer = CheckForRacersInterval;
	}

	virtual void MoveInLineOfSight(Unit* unit) override
	{
		ScriptedAI::MoveInLineOfSight(unit);

		// check if unit is player and have race id mount
		if (unit->IsPlayer())
		{
			Player* player = (Player*)unit;

			uint32 mountId = player->GetMountID();

			if (mountId == GNOMECAR_DISPLAYID || mountId == GOBLINCAR_DISPLAYID)
			{
				racers.insert(unit->GetObjectGuid());
			}
		}
	}


	virtual void UpdateAI(const uint32 deltaTime) override
	{
		ScriptedAI::UpdateAI(deltaTime);

		if (checkTimer < deltaTime)
		{
			for (auto iter = racers.begin(); iter != racers.end();)
			{
				if (Player* player = sObjectMgr.GetPlayer(*iter))
				{
					float distSqr = me->GetDistanceSqr(player->GetPositionX(), player->GetPositionY(), player->GetPositionZ());
					if (distSqr < SheepAcceptanceRadiusSqr)
					{
						// our client
						player->AddAura(SALT_FLATS_RACE_SLOW);

						me->CastSpell(me->GetPositionX(), me->GetPositionY(), me->GetPositionZ(), 5162, true);
						me->DespawnOrUnsummon(1000);
						//player->AddAura(5162);
						player->CastSpell(player, 5162, true);
					}
				}
				else
				{
					iter = racers.erase(iter);
					continue;
				}
				iter++;
			}
			checkTimer = CheckForRacersInterval;
		}
		else
		{
			checkTimer -= deltaTime;
		}
	}

};


struct npc_race_car : public ScriptedAI 
{
	npc_race_car(Creature* InCreature)
		: ScriptedAI(InCreature)
	{}

	virtual void UpdateAI(const uint32 delta) override
	{
		if (Unit* pawn = me->GetMap()->GetUnit(PlayerControllerGuid))
		{
			WorldLocation currentPosition;
			me->GetPosition(currentPosition);
			float x, y, z;

			me->GetNearPoint(me, x, y, z, 0.0f, 3.0f, pawn->GetOrientation());

			me->StopMoving(true);
			me->MonsterMove(x, y, z);
		}
	}


	virtual void Reset() override
	{
	}

	ObjectGuid PlayerControllerGuid;

	virtual void InformGuid(const ObjectGuid guid, uint32 = 0) override
	{
		PlayerControllerGuid = guid;
	}

};

struct MiracleRaceTestRound : public QuestInstance
{
	MiracleRaceTestRound(ObjectGuid player)
		: QuestInstance(player, 9500)
	{}

	virtual void OnQuestStarted() override
	{
		// Check for event
		
		// Move player to specific vis layer

		// Initialize race
	}

	virtual void OnQuestCanceled() override
	{
		// move to global vis layer
		
		// despawn car, return control to main player pawn
	}

	virtual void OnQuestFinished() override
	{
	}

};

bool ItemUse_Miracle_AcceptInvite(Player* player, Item* item, SpellCastTargets const& target)
{
	MiracleRaceEvent* miracleEvent = sGameEventMgr.GetHardcodedEvent<MiracleRaceEvent>();
	if (miracleEvent != nullptr)
	{
		miracleEvent->queueSystem().PlayerAcceptInvite(player);
	}

#if 0
	ItemPrototype const *proto = item->GetProto();
	if (proto != nullptr)
	{
		if (SpellEntry const* spellInfo = sSpellMgr.GetSpellEntry(proto->Spells[0].SpellId))
			Spell::SendCastResult(player, spellInfo, SPELL_FAILED_NOT_READY);
	}
#endif

	return true;
}


GameObjectAI* GetAI_go_speed_up(GameObject* gameobject)
{
    return new go_speed_up(gameobject);
}

CreatureAI* GetAI_npc_race_car(Creature* creature)
{
	return new npc_race_car(creature);
}

CreatureAI* GetAI_npc_race_sheep(Creature* creature)
{
	return new npc_race_sheep(creature);
}

QuestInstance* GetQuest_MiracleRaceTest(ObjectGuid PlayerGuid)
{
	return new MiracleRaceTestRound(PlayerGuid);
}

void AddSC_miracle_raceaway()
{
    Script *newscript;

    newscript = new Script;
    newscript->Name = "npc_daisy";
    newscript->pGossipHello = &GossipHello_npc_daisy;
    newscript->pGossipSelect = &GossipSelect_npc_daisy;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_dolores";
    newscript->pGossipHello = &GossipHello_npc_dolores;
    newscript->pGossipSelect = &GossipSelect_npc_dolores;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_speed_up";
    newscript->GOGetAI = &GetAI_go_speed_up;
    newscript->RegisterSelf();

	newscript = new Script;
	newscript->Name = "npc_race_car";
	newscript->GetAI = GetAI_npc_race_car;
	newscript->RegisterSelf();

	newscript = new Script;
	newscript->Name = "quest_miracle_race_test_round";
	newscript->GetQuestInstance = GetQuest_MiracleRaceTest;
	newscript->RegisterSelf();

	newscript = new Script;
	newscript->Name = "item_miracle_acceptInvite";
	newscript->pItemUse = ItemUse_Miracle_AcceptInvite;
	newscript->RegisterSelf();

	newscript = new Script;
	newscript->Name = "npc_race_sheep";
	newscript->GetAI = GetAI_npc_race_sheep;
	newscript->RegisterSelf();

    //newscript = new Script;
    //newscript->Name = "npc_raceaway_sheep";
    //newscript->pGossipHello = &GossipHello_npc_raceaway_sheep;
    //newscript->pGossipSelect = &GossipSelect_npc_raceaway_sheep;
    //newscript->RegisterSelf();
}