#include "scriptPCH.h"
#include "HardcodedEvents.h"
#include <array>

enum
{
    // Quests:
    QUEST_GOBLIN_TEST_RACE = 50310,
    QUEST_GNOME_TEST_RACE = 50312,
    QUEST_GOBLIN_REAL_RACE = 50311,
    QUEST_GNOME_REAL_QUEST = 50313,
    QUEST_RACE_AGAINST_TIME = 50316,

    // Spells:
    SPELL_SALT_FLATS_RACE_SLOW = 6601,
    SPELL_SALT_FLATS_RACE_SPEED = 6600,
    SPELL_DAMAGE_CAR = 7084,
    SPELL_EXPLOSIVE_SHEEP_PASSIVE = 4051,
    SPELL_EXPLOSIVE_SHEEP = 4050,
    SPELL_BOMB = 5134,
    SPELL_GNOME_CAR = 50061,
    SPELL_GOBLIN_CAR = 50062,
    SPELL_ROOT_SELF = 20548,
    SPELL_SELF_EXPLOSION = 5162,

    // GameObjects:
    GO_CHECKPOINT = 1000039,

    // Races
    RACE_REAL = 1,
    RACE_TEST = 2,

    // Misc:
    ALREADY_REGISTERED_TXTID = 50212,
    MUSIC_RACE = 30215,
};

constexpr float SheepAcceptanceRadius = 4.4f;
constexpr float SheepAcceptanceRadiusSqr = SheepAcceptanceRadius * SheepAcceptanceRadius;

struct RaceCheckpoint
{
    uint32 Id;
    Position pos;
    Position camPos;
};

struct RaceCreature
{
    uint32 entry;
    Position pos;
    uint8 chance;
};

struct RaceGameobject
{
    uint32 entry;
    Position pos;
    uint8 chance;
};

static std::set<uint32 /*raceId*/> raceIds;

static std::map<uint32 /*raceId*/, std::vector<RaceCheckpoint>> racesCheckpoints;
static std::map<uint32 /*raceId*/, std::vector< RaceCreature>> racesCreatures;
static std::map<uint32 /*raceId*/, std::vector< RaceGameobject>> racesGameobjects;

static std::map<uint32 /*raceId*/, ObjectGuid /*player*/> gnomeRacerGuid;
static std::map<uint32 /*raceId*/, ObjectGuid /*player*/> goblinRacerGuid;

static std::vector<bool> gnomeRacerCheckpoints;
static std::vector<bool> goblinRacerCheckpoints;

static uint32 g_startedRace = 0;

bool IsPlayerQueuedForRace(Player* pPlayer)
{
    for (auto const& itr : gnomeRacerGuid)
        if (itr.second == pPlayer->GetObjectGuid())
            return true;

    for (auto const& itr : goblinRacerGuid)
        if (itr.second == pPlayer->GetObjectGuid())
            return true;

    return false;
}

struct go_race_checkpoint : public GameObjectAI
{
    explicit go_race_checkpoint(GameObject* pGo) : GameObjectAI(pGo)
    {
    }

    uint32 m_point = 0;

    void UpdateAI(uint32 const uiDiff) override
    {
        if (!g_startedRace)
        {
            printf("Remove point %u\n", m_point);
            me->AddObjectToRemoveList();
            return;
        }

        if (Player* pGnomePlayer = me->GetMap()->GetPlayer(gnomeRacerGuid[g_startedRace]))
        {
            if (pGnomePlayer->IsWithinDist(me, 15.0f) &&
                gnomeRacerCheckpoints[m_point] == false)
            {
                printf("Gnome reaches point %u\n", m_point);
                me->DestroyForPlayer(pGnomePlayer);
                gnomeRacerCheckpoints[m_point] = true;
            }
        }

        if (Player* pGoblinPlayer = me->GetMap()->GetPlayer(goblinRacerGuid[g_startedRace]))
        {
            if (pGoblinPlayer->IsWithinDist(me, 15.0f) &&
                goblinRacerCheckpoints[m_point] == false)
            {
                printf("Goblin reaches point %u\n", m_point);
                me->DestroyForPlayer(pGoblinPlayer);
                goblinRacerCheckpoints[m_point] = true;
            }
        }

        GameObjectAI::UpdateAI(uiDiff);
    }
};

GameObjectAI* GetAI_go_race_checkpoint(GameObject* gameobject)
{
    return new go_race_checkpoint(gameobject);
}

struct npc_daisy : public ScriptedAI
{
    npc_daisy(Creature* InCreature) : ScriptedAI(InCreature)
    {
        LoadRacesFromDb();
    }

    void LoadRacesFromDb()
    {
        racesCheckpoints.clear();
        racesCreatures.clear();
        racesGameobjects.clear();

        // load waypoints
        QueryResult* raceData = WorldDatabase.PQuery("SELECT `raceid`, `id`, `positionx`, `positiony`, `positionz`, `cameraposx`, `cameraposy`, `cameraposz`"
            "FROM `miraclerace_checkpoint` ORDER BY `id` ASC");

        if (raceData == nullptr)
        {
            sLog.outError("Can't initialize race data");
            return;
        }

        Field* fields = raceData->Fetch();
        do
        {
            uint32 raceId = fields[0].GetUInt32();
            raceIds.insert(raceId);

            uint32 id = fields[1].GetUInt32();
            float PosX = fields[2].GetFloat();
            float PosY = fields[3].GetFloat();
            float PosZ = fields[4].GetFloat();
            float CameraPosX = fields[5].GetFloat();
            float CameraPosY = fields[6].GetFloat();
            float CameraPosZ = fields[7].GetFloat();
            Position Pos(PosX, PosY, PosZ, 0.0f);
            Position CameraPos(CameraPosX, CameraPosY, CameraPosZ, 0.0f);

            racesCheckpoints[raceId].emplace_back(RaceCheckpoint{ id , Pos, CameraPos });
        } while (raceData->NextRow());

        delete raceData; raceData = nullptr;

        // load creatures
        raceData = WorldDatabase.PQuery("SELECT `raceid`, `entry`, `chance`, `positionx`, `positiony`, `positionz`"
            "FROM `miraclerace_creaturespool`");

        if (raceData != nullptr)
        {
            fields = raceData->Fetch();

            do
            {
                uint32 raceId = fields[0].GetUInt32();
                uint32 entry = fields[1].GetUInt32();
                uint32 chance = fields[2].GetUInt32();
                chance = std::min(chance, 100u);
                float PosX = fields[3].GetFloat();
                float PosY = fields[4].GetFloat();
                float PosZ = fields[5].GetFloat();
                Position pos(PosX, PosY, PosZ, 0.0f);

                racesCreatures[raceId].emplace_back(RaceCreature{ entry, pos, uint8(chance) });
            } while (raceData->NextRow());
        }

        delete raceData; raceData = nullptr;

        // load gameobjects
        raceData = WorldDatabase.PQuery("SELECT `raceid`, `entry`, `chance`, `positionx`, `positiony`, `positionz`"
            "FROM miraclerace_gameobject ");

        if (raceData != nullptr)
        {
            fields = raceData->Fetch();

            do
            {
                uint32 raceId = fields[0].GetUInt32();
                uint32 entry = fields[1].GetUInt32();
                uint32 chance = fields[2].GetUInt32();
                chance = std::min(chance, 100u);
                float PosX = fields[3].GetFloat();
                float PosY = fields[4].GetFloat();
                float PosZ = fields[5].GetFloat();
                Position pos(PosX, PosY, PosZ, 0.0f);

                racesGameobjects[raceId].emplace_back(RaceGameobject{ entry, pos, uint8(chance) });
            } while (raceData->NextRow());
        }

        delete raceData; raceData = nullptr;
    }

    uint32 m_countdownTimer = 0;
    uint32 m_countdownCount = 0;

    void Reset() override
    {
    }

    void SpawnRaceObjects(uint32 raceId)
    {
        for (uint32 i = 1; i < racesCheckpoints[raceId].size(); i++)
        {
            RaceCheckpoint const& point = racesCheckpoints[raceId][i];
            if (GameObject* pGo = m_creature->SummonGameObject(GO_CHECKPOINT, point.pos.x, point.pos.y, point.pos.z, point.pos.o))
                if (go_race_checkpoint* pAI = dynamic_cast<go_race_checkpoint*>(pGo->AI()))
                    pAI->m_point = i;
        }

        for (auto const& itr : racesCreatures[raceId])
        {
            if (roll_chance_u(itr.chance))
            {
                m_creature->SummonCreature(itr.entry, itr.pos.x, itr.pos.y, itr.pos.z, itr.pos.o, TEMPSUMMON_TIMED_COMBAT_OR_CORPSE_DESPAWN, 300000, true);
            }
        }

        for (auto const& itr : racesGameobjects[raceId])
        {
            if (roll_chance_u(itr.chance))
            {
                m_creature->SummonGameObject(itr.entry, itr.pos.x, itr.pos.y, itr.pos.z, itr.pos.o);
            }
        }
    }

    void StartRace(uint32 raceId)
    {
        g_startedRace = raceId;
        gnomeRacerCheckpoints.clear();
        gnomeRacerCheckpoints.resize(racesCheckpoints[raceId].size());
        gnomeRacerCheckpoints[0] = true; // skip start point
        goblinRacerCheckpoints.clear();
        goblinRacerCheckpoints.resize(racesCheckpoints[raceId].size());
        goblinRacerCheckpoints[0] = true; // skip start point

        RaceCheckpoint const& startPoint = racesCheckpoints[raceId][0];

        {
            Player* pGnomePlayer = m_creature->GetMap()->GetPlayer(gnomeRacerGuid[raceId]);
            pGnomePlayer->CombatStop(true);
            pGnomePlayer->RemoveSpellsCausingAura(SPELL_AURA_MOUNTED);
            pGnomePlayer->CastSpell(pGnomePlayer, SPELL_GNOME_CAR, true);
            pGnomePlayer->NearLandTo(startPoint.pos.x, startPoint.pos.y + 2, startPoint.pos.z, M_PI_F * raceId);
            pGnomePlayer->AddAura(SPELL_ROOT_SELF);
            pGnomePlayer->GetSession()->SendAreaTriggerMessage("THREE");
            pGnomePlayer->PlayDirectMusic(MUSIC_RACE);
        }
        
        {
            Player* pGoblinPlayer = m_creature->GetMap()->GetPlayer(goblinRacerGuid[raceId]);
            pGoblinPlayer->CombatStop(true);
            pGoblinPlayer->RemoveSpellsCausingAura(SPELL_AURA_MOUNTED);
            pGoblinPlayer->CastSpell(pGoblinPlayer, SPELL_GOBLIN_CAR, true);
            pGoblinPlayer->NearLandTo(startPoint.pos.x, startPoint.pos.y - 2, startPoint.pos.z, M_PI_F * raceId);
            pGoblinPlayer->AddAura(SPELL_ROOT_SELF);
            pGoblinPlayer->GetSession()->SendAreaTriggerMessage("THREE");
            pGoblinPlayer->PlayDirectMusic(MUSIC_RACE);
        }

        SpawnRaceObjects(raceId);
        m_countdownTimer = 3000;
    }

    void EndRace(uint32 raceId)
    {
        m_creature->MonsterYell("The race has ended!");

        MANGOS_ASSERT(g_startedRace == raceId);
        g_startedRace = 0;

        if (Player* pGnomePlayer = m_creature->GetMap()->GetPlayer(gnomeRacerGuid[raceId]))
        {
            pGnomePlayer->RemoveAurasDueToSpell(SPELL_GNOME_CAR);
            pGnomePlayer->RemoveAurasDueToSpell(SPELL_GOBLIN_CAR);
            pGnomePlayer->RemoveAurasDueToSpell(SPELL_ROOT_SELF);
            if (raceId == RACE_REAL)
                pGnomePlayer->AreaExploredOrEventHappens(QUEST_GNOME_REAL_QUEST);
            else if (raceId == RACE_TEST)
                pGnomePlayer->AreaExploredOrEventHappens(QUEST_GNOME_TEST_RACE);
        }
        gnomeRacerGuid[raceId].Clear();
        gnomeRacerCheckpoints.clear();

        if (Player * pGoblinPlayer = m_creature->GetMap()->GetPlayer(goblinRacerGuid[raceId]))
        {
            pGoblinPlayer->RemoveAurasDueToSpell(SPELL_GNOME_CAR);
            pGoblinPlayer->RemoveAurasDueToSpell(SPELL_GOBLIN_CAR);
            pGoblinPlayer->RemoveAurasDueToSpell(SPELL_ROOT_SELF);
            if (raceId == RACE_REAL)
                pGoblinPlayer->AreaExploredOrEventHappens(QUEST_GOBLIN_REAL_RACE);
            else if (raceId == RACE_TEST)
                pGoblinPlayer->AreaExploredOrEventHappens(QUEST_GOBLIN_TEST_RACE);
        }
        goblinRacerGuid[raceId].Clear();
        goblinRacerCheckpoints.clear();
    }

    void UpdateAI(uint32 const uiDiff) override
    {
        // Check if we can start a race
        if (!g_startedRace)
        {
            // Remove players not on map from queue
            for (auto raceId : raceIds)
            {
                if (!gnomeRacerGuid[raceId].IsEmpty())
                {
                    if (!m_creature->GetMap()->GetPlayer(gnomeRacerGuid[raceId]))
                        gnomeRacerGuid[raceId].Clear();
                }

                if (!goblinRacerGuid[raceId].IsEmpty())
                {
                    if (!m_creature->GetMap()->GetPlayer(goblinRacerGuid[raceId]))
                        goblinRacerGuid[raceId].Clear();
                }

                if (!gnomeRacerGuid[raceId].IsEmpty() && !goblinRacerGuid[raceId].IsEmpty())
                    StartRace(raceId);
            }
        }
        else
        {
            Player* pGnomePlayer = m_creature->GetMap()->GetPlayer(gnomeRacerGuid[g_startedRace]);
            Player* pGoblinPlayer = m_creature->GetMap()->GetPlayer(goblinRacerGuid[g_startedRace]);

            if (!pGnomePlayer || !pGnomePlayer->IsAlive() ||
                !pGoblinPlayer || !pGoblinPlayer->IsAlive())
            {
                EndRace(g_startedRace);
                return;
            }

            if (!pGnomePlayer->HasAura(SPELL_GNOME_CAR) &&
                !pGoblinPlayer->HasAura(SPELL_GOBLIN_CAR))
            {
                EndRace(g_startedRace);
                return;
            }

            if (m_countdownTimer)
            {
                if (m_countdownTimer < uiDiff)
                    m_countdownTimer = 0;
                else
                    m_countdownTimer -= uiDiff;

                switch (m_countdownCount)
                {
                    case 0:
                    {
                        if (m_countdownTimer <= 2000)
                        {
                            pGnomePlayer->GetSession()->SendAreaTriggerMessage("TWO");
                            pGoblinPlayer->GetSession()->SendAreaTriggerMessage("TWO");
                            m_countdownCount++;
                        }
                        break;
                    }
                    case 1:
                    {
                        if (m_countdownTimer <= 1000)
                        {
                            pGnomePlayer->GetSession()->SendAreaTriggerMessage("ONE");
                            pGoblinPlayer->GetSession()->SendAreaTriggerMessage("ONE");
                            m_countdownCount++;
                        }
                        break;
                    }
                    case 2:
                    {
                        if (m_countdownTimer <= 0)
                        {
                            pGnomePlayer->GetSession()->SendAreaTriggerMessage("THE RACE HAS BEGUN");
                            pGoblinPlayer->GetSession()->SendAreaTriggerMessage("THE RACE HAS BEGUN");
                            m_countdownCount++;
                        }
                        break;
                    }
                }
            }

            bool gnomeWins = true;
            for (auto const& itr : gnomeRacerCheckpoints)
            {
                if (!itr)
                {
                    gnomeWins = false;
                    break;
                }
            }
            
            bool goblinWins = true;
            for (auto const& itr : goblinRacerCheckpoints)
            {
                if (!itr)
                {
                    goblinWins = false;
                    break;
                }
            }

            if (gnomeWins)
            {
                m_creature->MonsterYell("$n has won the race!", 0, pGnomePlayer);
                pGnomePlayer->AreaExploredOrEventHappens(QUEST_RACE_AGAINST_TIME);
            }
                
            if (goblinWins)
            {
                m_creature->MonsterYell("$n has won the race!", 0, pGoblinPlayer);
                pGoblinPlayer->AreaExploredOrEventHappens(QUEST_RACE_AGAINST_TIME);
            }

            if (gnomeWins || goblinWins)
                EndRace(g_startedRace);
        }

        ScriptedAI::UpdateAI(uiDiff);
    }

};

#define GOSSIP_ACTION_JOIN_GOBLIN (GOSSIP_ACTION_INFO_DEF + 1)
#define GOSSIP_ACTION_JOIN_GNOME (GOSSIP_ACTION_INFO_DEF + 2)
#define GOSSIP_ACTION_LEAVE_QUEUE (GOSSIP_ACTION_INFO_DEF + 3)

bool GossipHello_npc_daisy(Player* pPlayer, Creature* p_Creature)
{
    if (!g_startedRace)
    {
        if (pPlayer->GetQuestRewardStatus(QUEST_GOBLIN_TEST_RACE) && 
            pPlayer->GetQuestStatus(QUEST_GOBLIN_REAL_RACE) == QUEST_STATUS_INCOMPLETE &&
            !IsPlayerQueuedForRace(pPlayer) && goblinRacerGuid[RACE_REAL].IsEmpty())
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "I'll join the Goblin's Team.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_JOIN_GOBLIN);

        if (pPlayer->GetQuestRewardStatus(QUEST_GNOME_TEST_RACE) &&
            pPlayer->GetQuestStatus(QUEST_GNOME_REAL_QUEST) == QUEST_STATUS_INCOMPLETE &&
            !IsPlayerQueuedForRace(pPlayer) && gnomeRacerGuid[RACE_REAL].IsEmpty())
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "I'll join the Gnome's Team.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_JOIN_GNOME);

        if ((pPlayer->GetQuestRewardStatus(QUEST_GOBLIN_TEST_RACE) || pPlayer->GetQuestRewardStatus(QUEST_GNOME_TEST_RACE)) &&
            (goblinRacerGuid[RACE_REAL] == pPlayer->GetObjectGuid() || gnomeRacerGuid[RACE_REAL] == pPlayer->GetObjectGuid()))
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "I want to leave the race queue.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_LEAVE_QUEUE);
    }

    if (pPlayer->GetQuestRewardStatus(QUEST_GOBLIN_TEST_RACE))
        pPlayer->PrepareQuestMenu(p_Creature->GetGUID());

    if (pPlayer->GetQuestRewardStatus(QUEST_GNOME_TEST_RACE))
        pPlayer->PrepareQuestMenu(p_Creature->GetGUID());

    pPlayer->SEND_GOSSIP_MENU(90250, p_Creature->GetGUID());
  
    return true;
}

bool GossipSelect_npc_daisy(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_JOIN_GOBLIN)
    {
        pCreature->MonsterWhisper("Get ready! Shimmering Flats race event is about to start! Make haste if you wish to attend!", pPlayer);
        goblinRacerGuid[RACE_REAL] = pPlayer->GetObjectGuid();
    }

    if (uiAction == GOSSIP_ACTION_JOIN_GNOME)
    {
        pCreature->MonsterWhisper("Get ready! Shimmering Flats race event is about to start! Make haste if you wish to attend!", pPlayer);
        gnomeRacerGuid[RACE_REAL] = pPlayer->GetObjectGuid();
    }

    if (uiAction == GOSSIP_ACTION_LEAVE_QUEUE)
    {
        if (goblinRacerGuid[RACE_REAL] == pPlayer->GetObjectGuid())
            goblinRacerGuid[RACE_REAL].Clear();
        if (gnomeRacerGuid[RACE_REAL] == pPlayer->GetObjectGuid())
            gnomeRacerGuid[RACE_REAL].Clear();
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool GossipHello_npc_dolores(Player* pPlayer, Creature* p_Creature)
{
    if (!g_startedRace)
    {
        if (!pPlayer->GetQuestRewardStatus(QUEST_GOBLIN_TEST_RACE) &&
            pPlayer->GetQuestStatus(QUEST_GOBLIN_TEST_RACE) == QUEST_STATUS_INCOMPLETE &&
            !IsPlayerQueuedForRace(pPlayer) && goblinRacerGuid[RACE_TEST].IsEmpty())
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "I want to test drive the Goblin team's racecar.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_JOIN_GOBLIN);

        if (!pPlayer->GetQuestRewardStatus(QUEST_GNOME_TEST_RACE) &
            pPlayer->GetQuestStatus(QUEST_GNOME_TEST_RACE) == QUEST_STATUS_INCOMPLETE &&
            !IsPlayerQueuedForRace(pPlayer) && gnomeRacerGuid[RACE_TEST].IsEmpty())
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "I want to test drive the Gnomish team's racecar..", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_JOIN_GNOME);

        if (goblinRacerGuid[RACE_TEST] == pPlayer->GetObjectGuid() || gnomeRacerGuid[RACE_TEST] == pPlayer->GetObjectGuid())
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "I want to leave the race queue.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_LEAVE_QUEUE);
    }

    pPlayer->SEND_GOSSIP_MENU(90251, p_Creature->GetGUID());
    
    return true;
}

bool GossipSelect_npc_dolores(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_JOIN_GOBLIN)
    {
        pCreature->MonsterWhisper("You are registered for a test race.", pPlayer);
        goblinRacerGuid[RACE_TEST] = pPlayer->GetObjectGuid();
    }

    if (uiAction == GOSSIP_ACTION_JOIN_GNOME)
    {
        pCreature->MonsterWhisper("You are registered for a test race.", pPlayer);
        gnomeRacerGuid[RACE_TEST] = pPlayer->GetObjectGuid();
    }

    if (uiAction == GOSSIP_ACTION_LEAVE_QUEUE)
    {
        if (goblinRacerGuid[RACE_TEST] == pPlayer->GetObjectGuid())
            goblinRacerGuid[RACE_TEST].Clear();
        if (gnomeRacerGuid[RACE_TEST] == pPlayer->GetObjectGuid())
            gnomeRacerGuid[RACE_TEST].Clear();
    }

    pPlayer->CLOSE_GOSSIP_MENU();
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

    void Reset() override
    {
    }

    void UpdateAI(uint32 const uiDiff) override
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
                        {
                            me->MonsterWhisper("While you race, try and pick up those crystals on the road. They will direct you to victory!", player);
                            InteractionData.step = PlayerInteraction::Step::Two;
                            InteractionData.backTimer = SpeechCooldown;
                            break;
                        }
                        case PlayerInteraction::Step::Two:
                        {
                            me->MonsterWhisper("I've seen some sheeps on the road, they are so cute and harmless, please don't hit them.", player);
                            InteractionData.step = PlayerInteraction::Step::Three;
                            InteractionData.backTimer = SpeechCooldown;
                            break;
                        }
                        case PlayerInteraction::Step::Three:
                        {
                            me->MonsterWhisper("Of course you'll have your chances to win since there are boots… no, boosters on the track!", player);
                            iter = Interactions.erase(iter);
                            bShouldSkip = true;
                            break;
                        }
                        default:
                        {
                            iter = Interactions.erase(iter);
                            bShouldSkip = true;
                            break;
                        }
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
    void InformGuid(const ObjectGuid guid, uint32) override
    {
        std::lock_guard<std::mutex> guard(InteractionsGuard);
        if (Interactions.find(guid) == Interactions.end())
        {
            Interactions.emplace(std::make_pair(guid, PlayerInteraction{ PlayerInteraction::Step::One, 10 }));
        }
    }
};

struct go_speed_up : public GameObjectAI
{
    explicit go_speed_up(GameObject* pGo) : GameObjectAI(pGo)
    {
    }

    void UpdateAI(uint32 const uiDiff) override
    {
        if (!g_startedRace)
        {
            me->AddObjectToRemoveList();
            return;
        }

        if (Player* pGnomePlayer = me->GetMap()->GetPlayer(gnomeRacerGuid[g_startedRace]))
        {
            if (pGnomePlayer->IsWithinDist(me, 5.0f))
            {
                pGnomePlayer->CastSpell(pGnomePlayer, SPELL_SALT_FLATS_RACE_SPEED, true);
                me->DestroyForPlayer(pGnomePlayer);
            }
        }

        if (Player* pGoblinPlayer = me->GetMap()->GetPlayer(goblinRacerGuid[g_startedRace]))
        {
            if (pGoblinPlayer->IsWithinDist(me, 5.0f))
            {
                pGoblinPlayer->CastSpell(pGoblinPlayer, SPELL_SALT_FLATS_RACE_SPEED, true);
                me->DestroyForPlayer(pGoblinPlayer);
            }
        }

        GameObjectAI::UpdateAI(uiDiff);
    }
};

#define INVISIBLE_TRIGGER_ID 14495

struct npc_race_sheep : public ScriptedAI 
{
    npc_race_sheep(Creature* InCreature) : ScriptedAI(InCreature) {}

    void Reset() override
    {
        m_creature->EnableMoveInLosEvent();
    }

    void UpdateAI(const uint32 deltaTime) override
    {
        if (!g_startedRace)
        {
            me->DespawnOrUnsummon();
            return;
        }

        if (Player* pGnomePlayer = me->GetMap()->GetPlayer(gnomeRacerGuid[g_startedRace]))
        {
            if (pGnomePlayer->IsWithinDist(me, 3.0f))
            {
                if (!pGnomePlayer->HasAura(4079)) // Cloaking
                {
                    pGnomePlayer->AddAura(SPELL_SALT_FLATS_RACE_SLOW);

                    me->CastSpell(me->GetPositionX(), me->GetPositionY(), me->GetPositionZ(), SPELL_SELF_EXPLOSION, true);
                    me->DespawnOrUnsummon(1000);
                    return;
                }
            }
        }

        if (Player* pGoblinPlayer = me->GetMap()->GetPlayer(goblinRacerGuid[g_startedRace]))
        {
            if (pGoblinPlayer->IsWithinDist(me, 3.0f))
            {
                if (!pGoblinPlayer->HasAura(4079)) // Cloaking
                {
                    pGoblinPlayer->AddAura(SPELL_SALT_FLATS_RACE_SLOW);

                    me->CastSpell(me->GetPositionX(), me->GetPositionY(), me->GetPositionZ(), SPELL_SELF_EXPLOSION, true);
                    me->DespawnOrUnsummon(1000);
                    return;
                }
            }
        }

        ScriptedAI::UpdateAI(deltaTime);
    }
};

struct npc_car_controller : public ScriptedAI
{
    npc_car_controller(Creature* InCreature) : ScriptedAI(InCreature)
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

    void Reset() override
    {
        BackTimer = TickInterval;
    }


    void InformGuid(const ObjectGuid playerGuid, uint32 = 0) override
    {
        targetGuid = playerGuid;
    }

};

struct npc_landing_siteAI : public ScriptedAI
{
    npc_landing_siteAI(Creature *c) : ScriptedAI(c)
    {
        Reset();
    }

    void Reset() override
    {
        m_creature->EnableMoveInLosEvent();
    }

    void MoveInLineOfSight(Unit* pWho) override
    {
        if (pWho && pWho->IsPlayer()) 
        {
            if (Player* player = pWho->ToPlayer())
            {
                if (m_creature->IsWithinDistInMap(pWho, 200.0F) && pWho->GetMountID() == 18510 && !pWho->HasAura(130))
                {
                    me->MonsterSay("Ugh, another one… Welcome to tha Mirage Raceway, $N!", 0U, pWho);
                    me->MonsterWhisper("Ya go ahead and talk to Jizzle Grikbot or Gregor Fizzwuzz ta git ya on track in all manner of meanings.", pWho);
                    me->HandleEmoteCommand(EMOTE_ONESHOT_SALUTE);
                }
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

CreatureAI* GetAI_npc_race_sheep(Creature* creature)
{
    return new npc_race_sheep(creature);
}

CreatureAI* GetAI_npc_daisy(Creature* creature)
{
    return new npc_daisy(creature);
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
    if (quest->GetQuestId() == QUEST_RACE_AGAINST_TIME)
        creature->MonsterSay(66113);
       
    return true;
}

void AddSC_mirage_raceway()
{
    Script *newscript;

    newscript = new Script;
    newscript->Name = "npc_daisy";
    newscript->pGossipHello = &GossipHello_npc_daisy;
    newscript->pGossipSelect = &GossipSelect_npc_daisy;
    newscript->pQuestAcceptNPC = &QuestAccepted_npc_daisy;
    newscript->GetAI = &GetAI_npc_daisy;
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
    newscript->Name = "go_race_checkpoint";
    newscript->GOGetAI = &GetAI_go_race_checkpoint;
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
}
