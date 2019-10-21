#include "scriptPCH.h"
#include "HardcodedEvents.h"
#include <array>

// Quests:

#define GOBLIN_TEST_QUEST 50310
#define GNOME_TEST_QUEST 50312

#define GOBLIN_REAL_QUEST 50311
#define GNOME_REAL_QUEST 50313

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

#define RACE_AGAINST_TIME_QUESTID 50316

constexpr float SheepAcceptanceRadius = 4.4f;
constexpr float SheepAcceptanceRadiusSqr = SheepAcceptanceRadius * SheepAcceptanceRadius;

bool GossipHello_npc_daisy(Player* p_Player, Creature* p_Creature)
{
    if (p_Player->GetQuestRewardStatus(GOBLIN_TEST_QUEST))
        if (p_Player->GetQuestStatus(GOBLIN_REAL_QUEST) == QUEST_STATUS_INCOMPLETE)
        p_Player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "I'll join Goblin's Team.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    if (p_Player->GetQuestRewardStatus(GNOME_TEST_QUEST))
        if (p_Player->GetQuestStatus(GNOME_REAL_QUEST) == QUEST_STATUS_INCOMPLETE)
        p_Player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "I'll join Gnome's Team.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
    if ((p_Player->GetQuestRewardStatus(GOBLIN_TEST_QUEST)) || (p_Player->GetQuestRewardStatus(GNOME_TEST_QUEST)))
        p_Player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "I want to leave from race queue.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);

    if (p_Player->GetQuestRewardStatus(GOBLIN_TEST_QUEST))
        p_Player->PrepareQuestMenu(p_Creature->GetGUID());
    if (p_Player->GetQuestRewardStatus(GNOME_TEST_QUEST))
        p_Player->PrepareQuestMenu(p_Creature->GetGUID());
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
    if (p_Player->GetQuestStatus(GOBLIN_TEST_QUEST) == QUEST_STATUS_INCOMPLETE)
    if (!p_Player->GetQuestRewardStatus(GOBLIN_TEST_QUEST))
        p_Player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "I want a test drive of Goblin's Car!", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    if (p_Player->GetQuestStatus(GNOME_TEST_QUEST) == QUEST_STATUS_INCOMPLETE)
    if (!p_Player->GetQuestRewardStatus(GNOME_TEST_QUEST))
        p_Player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "I want a test drive of Gnome's Car!", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
    p_Player->SEND_GOSSIP_MENU(90251, p_Creature->GetGUID());
    return true;
}

bool GossipSelect_npc_dolores(Player* p_Player, Creature* p_Creature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        if (p_Player->GetQuestStatus(GOBLIN_TEST_QUEST) == QUEST_STATUS_INCOMPLETE)
        {
            if (MiracleRaceEvent* event = sGameEventMgr.GetHardcodedEvent<MiracleRaceEvent>())
            {
                event->StartTestRace(2, p_Player, MiracleRaceSide::Goblin);
				p_Creature->AI()->InformGuid(p_Player->GetObjectGuid());
            }
        }
        else
        {
            p_Creature->MonsterSay("You can't drive the car without keys! Speak to Jizzle Grikbot, silly.");
        }  
    }
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
    {
        if (p_Player->GetQuestStatus(GNOME_TEST_QUEST) == QUEST_STATUS_INCOMPLETE)
        {
            if (MiracleRaceEvent* event = sGameEventMgr.GetHardcodedEvent<MiracleRaceEvent>())
            {
                event->StartTestRace(2, p_Player, MiracleRaceSide::Gnome);
				p_Creature->AI()->InformGuid(p_Player->GetObjectGuid());
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

struct npc_dolores_say : public ScriptedAI
{
    npc_dolores_say(Creature* InCreature) : ScriptedAI(InCreature){}

	struct PlayerInteraction
	{
		enum class Step
		{
			One,
			Two,
			Three
		};

		Step step;
		uint32 backTimer;
	};

	std::map<ObjectGuid, PlayerInteraction> Interactions;
	std::mutex InteractionsGuard;

	static const uint32 SpeechCooldown = 5 * IN_MILLISECONDS; // 5 sec

	virtual void Reset() override
    {
    }

	virtual void UpdateAI(uint32 const uiDiff) override
	{
		std::lock_guard<std::mutex> guard(InteractionsGuard);
		for (auto iter = Interactions.begin(); iter != Interactions.end();)
		{
			ObjectGuid guid = iter->first;
			if (Player* player = sObjectMgr.GetPlayer(guid))
			{
				PlayerInteraction& InteractionData = iter->second;
				if (InteractionData.backTimer < uiDiff)
				{
					bool bShouldSkip = false;
					switch (InteractionData.step)
					{
					case PlayerInteraction::Step::One:
						me->MonsterWhisper("While you race, try and pick up those crystals on the road. They will direct you to victory!", player);
						InteractionData.step = PlayerInteraction::Step::Two;
						InteractionData.backTimer = SpeechCooldown;
						break;
					case PlayerInteraction::Step::Two:
						me->MonsterWhisper("I've seen some sheeps on the road, they are so cute and harmless, please don't hit them.", player);
						InteractionData.step = PlayerInteraction::Step::Three;
						InteractionData.backTimer = SpeechCooldown;
						break;
					case PlayerInteraction::Step::Three:
						me->MonsterWhisper("Of course you'll have your chances to win since there are boots… no, boosters on the track!", player);
						iter = Interactions.erase(iter);
						bShouldSkip = true;
						break;
					default:
						iter = Interactions.erase(iter);
						bShouldSkip = true;
						break;
					}

					if (bShouldSkip)
					{
						continue;
					}
				}
				else
				{
					InteractionData.backTimer -= uiDiff;
				}
			}
			else
			{
				iter = Interactions.erase(iter);
				continue;
			}

			iter++;
		}
	}

	// not sure about time when this function called.
	// can be a time when AI was updating
	virtual void InformGuid(const ObjectGuid guid, uint32) override
	{
		std::lock_guard<std::mutex> guard(InteractionsGuard);
		if (Interactions.find(guid) == Interactions.end())
		{
			Interactions.emplace(std::make_pair(guid, PlayerInteraction{ PlayerInteraction::Step::One, 10 }));
		}
	}

};

// Ignore this for while:

struct go_speed_up : public GameObjectAI
{
    explicit go_speed_up(GameObject* pGo) : GameObjectAI(pGo)
    {
    }

	std::set<ObjectGuid> racers;

    void UpdateAI(uint32 const uiDiff) override
    {
		GameObjectAI::UpdateAI(uiDiff);

		for (auto iter = racers.begin(); iter != racers.end();)
		{
			if (Player* player = sObjectMgr.GetPlayer(*iter))
			{
				float distSqr = me->GetDistanceSqr(player->GetPositionX(), player->GetPositionY(), player->GetPositionZ());
				if (distSqr < SheepAcceptanceRadiusSqr)
				{
					// our client
					player->CastSpell(player, 454, true);
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
						uint32 mountId = player->GetMountID();
						if (mountId == GNOMECAR_DISPLAYID || mountId == GOBLINCAR_DISPLAYID)
						{
							// our client
							// do not hurt a player with invisibility
							if (player->HasAura(4079)) // Cloaking
							{
								iter++;
								continue;
							}

							player->AddAura(SALT_FLATS_RACE_SLOW);

							me->CastSpell(me->GetPositionX(), me->GetPositionY(), me->GetPositionZ(), 5162, true);
							me->DespawnOrUnsummon(1000);
						}
						else
						{
							iter = racers.erase(iter);
							continue;
						}
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

struct npc_car_controller : public ScriptedAI
{
	npc_car_controller(Creature* InCreature)
		: ScriptedAI(InCreature)
	{
		Reset();
	}

	ObjectGuid targetGuid;

	uint32 BackTimer;
	static constexpr uint32 TickInterval = 3 * IN_MILLISECONDS;

	virtual void UpdateAI(const uint32 delta) override
	{
		if (BackTimer < delta)
		{
			BackTimer = TickInterval;

			if (!targetGuid.IsEmpty())
			{
				if (Player* pl = sObjectMgr.GetPlayer(targetGuid))
				{
					me->NearTeleportTo(pl->GetPositionX(), pl->GetPositionY(), pl->GetPositionZ() - 7.0f, 0.0f);
				}
			}
		}
		else
		{
			BackTimer -= delta;
		}
	}


	virtual void Reset() override
	{
		BackTimer = TickInterval;
	}


	virtual void InformGuid(const ObjectGuid playerGuid, uint32 = 0) override
	{
		targetGuid = playerGuid;
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

bool GOHello_go_flying_machine(Player* pPlayer, GameObject* pGo)
{
    if (pPlayer->GetQuestRewardStatus(50315))
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TAXI, "Set a course to Thousand Needles!\nMaximum warp!", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

    pPlayer->SEND_GOSSIP_MENU(90254, pGo->GetGUID());
    return true;
}

bool GOSelect_go_flying_machine(Player* pPlayer, GameObject* pGo, uint32 sender, uint32 action)
{
    if (action == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pPlayer->SetUInt32Value(UNIT_FIELD_MOUNTDISPLAYID, 8011);
        pPlayer->TeleportTo(1, -6103.890000F, -3872.739700F, 145.055800F, 3.567656F);
        pPlayer->CastSpell(pPlayer, 130, true);
    }
    return true;
}

struct npc_landing_siteAI : public ScriptedAI
{
    npc_landing_siteAI(Creature *c) : ScriptedAI(c)
    {
        Reset();
    }

    void Reset()
    {
    }

    void MoveInLineOfSight(Unit* pWho) override
    {
        if (pWho && pWho->IsPlayer()) 
        {
            if (Player* player = pWho->ToPlayer()) 
                if (m_creature->IsWithinDistInMap(pWho, 200.0F) && pWho->GetMountID() == 8011 && !pWho->HasAura(130))
                {
                    player->SetUInt32Value(UNIT_FIELD_MOUNTDISPLAYID, 0);
                    me->MonsterSay("Ugh, another one… Welcome to tha Mirage Raceway, $N!", 0U, pWho);
                    me->MonsterWhisper("Ya go ahead and talk to Jizzle Grikbot or Gregor Fizzwuzz ta git ya on track in all manner of meanings.", pWho);
                    me->HandleEmoteCommand(EMOTE_ONESHOT_SALUTE);
                }
        }
    }
};

CreatureAI* GetAI_npc_landing_site(Creature* pCreature)
{
    return new npc_landing_siteAI(pCreature);
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

CreatureAI* GetAI_npc_dolores_say(Creature* creature)
{
    return new npc_dolores_say(creature);
}

CreatureAI* GetAI_npc_car_controller(Creature* creature)
{
	return new npc_car_controller(creature);
}

bool QuestAccepted_npc_daisy(Player* player, Creature* creature, const Quest* quest)
{
	if (quest->GetQuestId() == RACE_AGAINST_TIME_QUESTID)
	{
		MiracleRaceEvent* miracleEvent = sGameEventMgr.GetHardcodedEvent<MiracleRaceEvent>();
		MiracleRaceSide side = MiracleRaceSide::Gnome;

		if (player->GetQuestRewardStatus(GOBLIN_TEST_QUEST))
		{
			side = MiracleRaceSide::Goblin;
		}

		miracleEvent->StartTestRace(1, player, side);
	}

	return true;
}

void AddSC_miracle_raceaway()
{
    Script *newscript;

    newscript = new Script;
    newscript->Name = "npc_daisy";
    newscript->pGossipHello = &GossipHello_npc_daisy;
    newscript->pGossipSelect = &GossipSelect_npc_daisy;
	newscript->pQuestAcceptNPC = &QuestAccepted_npc_daisy;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_dolores";
    newscript->pGossipHello = &GossipHello_npc_dolores;
    newscript->pGossipSelect = &GossipSelect_npc_dolores;
    newscript->GetAI = &GetAI_npc_dolores_say;
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
	newscript->Name = "npc_race_sheep";
	newscript->GetAI = GetAI_npc_race_sheep;
	newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_landing_site";
    newscript->GetAI = &GetAI_npc_landing_site;
    newscript->RegisterSelf();

	newscript = new Script;
	newscript->Name = "npc_car_controller";
	newscript->GetAI = &GetAI_npc_car_controller;
	newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_flying_machine";
    newscript->pGOHello = &GOHello_go_flying_machine;
    newscript->pGOGossipSelect = &GOSelect_go_flying_machine;
    newscript->RegisterSelf();
}