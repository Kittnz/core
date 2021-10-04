#include "scriptPCH.h"

template <typename Functor>
void DoAfterTime(Creature* creature, uint32 p_time, Functor&& function)
{
    creature->m_Events.AddEvent(new LambdaBasicEvent<Functor>(std::move(function)), creature->m_Events.CalculateTime(p_time));
}

struct SpawnLocation
{
    float m_fX, m_fY, m_fZ;
};

ObjectGuid spawn1guid;
ObjectGuid spawn2guid;
ObjectGuid spawn3guid;

Creature* dragonSpawn1;
Creature* dragonSpawn2;
Creature* dragonSpawn3;

int dragonGuidCount = 0;

static const SpawnLocation rotMawSpawns[4] =
{
    {-2083.904053f, 6853.967773f, 24.009354f },
    {-2116.244629f, 7346.801270f, 24.093992f },
    {-1669.338501f, 7410.056152f, 24.888636f },
    {-1649.062500f, 6863.167969f, 22.198698f }
};

struct instance_caverns_of_time : public ScriptedInstance
{
    instance_caverns_of_time(Map* pMap) : ScriptedInstance(pMap)
    {
        Initialize();
    };

    int deadDragonCount = 0;

    Creature* bronzeDefender1;
    Creature* bronzeDefender2;
    Creature* bronzeDefender3;
    Creature* bronzeDefender4;
    Creature* bronzeDefender5;

    std::list<Creature*> deadDragonsList;

    bool doOnce = false;

    void Initialize() override
    {
        bronzeDefender1 = instance->SummonCreature(50110, -1880.02, 6635.72, -155.02, 0);
        bronzeDefender2 = instance->SummonCreature(50110, -1884.82, 6637.66, -155.80, 0);
        bronzeDefender3 = instance->SummonCreature(50110, -1889.18, 6640.18, -156.75, 0);
        bronzeDefender4 = instance->SummonCreature(50110, -1893.81, 6643.04, -156.24, 0);
        bronzeDefender5 = instance->SummonCreature(50110, -1897.60, 6646.52, -155.83, 0);
    }

    void OnCreatureCreate(Creature* pCreature) override
    {
    }

    void OnCreatureDeath(Creature* who) override
    {
    }

    void OnObjectCreate(GameObject* pGo) override
    {
    }

    void OnPlayerEnter(Player* pPlayer) override
    {
        if (!pPlayer)
            return;
    }

    void OnPlayerLeave(Player* pPlayer, bool bJustDestroy) override
    {
        if (!pPlayer)
            return;
    }

    //void SetData(uint32 uiType, uint32 uiData)
    //{

    //}

    //uint32 GetData(uint32 uiType)
    //{

    //}

    //uint64 GetData64(uint32 uiData)
    //{

    //}

    void Update(uint32 uiDiff)
    {
        if (deadDragonsList.size() < 3)
        {
            if (dragonSpawn1 && dragonSpawn2 && dragonSpawn3)
            {
                if (!dragonSpawn1->IsAlive())
                {
                    auto itr = std::find(deadDragonsList.begin(), deadDragonsList.end(), dragonSpawn1);
                    if (itr == deadDragonsList.end())
                        deadDragonsList.push_back(dragonSpawn1);
                }

                if (!dragonSpawn2->IsAlive())
                {
                    auto itr = std::find(deadDragonsList.begin(), deadDragonsList.end(), dragonSpawn2);
                    if (itr == deadDragonsList.end())
                        deadDragonsList.push_back(dragonSpawn2);
                }

                if (!dragonSpawn3->IsAlive())
                {
                    auto itr = std::find(deadDragonsList.begin(), deadDragonsList.end(), dragonSpawn3);
                    if (itr == deadDragonsList.end())
                        deadDragonsList.push_back(dragonSpawn3);
                }
            }
        }

        if (deadDragonsList.size() == 3 && !doOnce)
        {
            doOnce = true;

            if (bronzeDefender1 && bronzeDefender2 && bronzeDefender3 && bronzeDefender4 && bronzeDefender5)
            {
                bronzeDefender1->PMonsterYell("Squad! Move up and secure the landing!");

                bronzeDefender1->MonsterMove(-1822.03f, 6689.86f, -186.14f);
                bronzeDefender2->MonsterMove(-1820.43f, 6692.90f, -186.81f);
                bronzeDefender3->MonsterMove(-1817.59f, 6696.38f, -187.69f);
                bronzeDefender4->MonsterMove(-1815.76f, 6701.76f, -187.63f);
                bronzeDefender5->MonsterMove(-1810.97f, 6706.42f, -187.79f);
            }
        }
    }
};

InstanceData* GetInstanceData_instance_caverns_of_time(Map* pMap)
{
    return new instance_caverns_of_time(pMap);
}

struct frostbitten_bronze_soldierAI : public ScriptedAI
{
    frostbitten_bronze_soldierAI(Creature* c) : ScriptedAI(c)
    {
        Reset();
    }

    bool hasBegged;

    void Reset() override
    {
        hasBegged = false;
        m_creature->SetHealth(1);
        m_creature->AddUnitState(UNIT_STAT_CAN_NOT_MOVE);
        m_creature->SetStandState(UNIT_STAND_STATE_DEAD);
    }

    void Aggro(Unit* pWho) override
    {
        DoPlaySoundToSet(m_creature, 7);
        pWho->DealDamage(m_creature, m_creature->GetHealth(), nullptr, DIRECT_DAMAGE, SPELL_SCHOOL_MASK_NORMAL, nullptr, false);
        m_creature->MonsterTextEmote("The body of the bronze soldier shatters as soon as you try to touch it.");
    }

    void MoveInLineOfSight(Unit* pWho) override
    {
        if (pWho && pWho->IsPlayer())
        {
            if (Player* player = pWho->ToPlayer())
            {
                if (!hasBegged && m_creature->IsWithinDistInMap(pWho, 12.0f))
                {
                    switch (urand(0, 4))
                    {
                    case 0:
                        m_creature->MonsterSay("Please, I can't handle this, end with my life...");
                        break;
                    case 1:
                        m_creature->MonsterSay("AT LAST! Finally I can rest.");
                        break;
                    case 2:
                        m_creature->MonsterSay("Careful... Careful with the drake. I just want to... sleep.");
                        break;
                    case 3:
                        m_creature->MonsterSay("This is suicide! End with my suffering, please, strangers...");
                        break;
                    case 4:
                        m_creature->MonsterSay("I can't handle this suffering anymore...");
                        break;
                    }

                    DoPlaySoundToSet(m_creature, 6931);
                    hasBegged = true;
                }
            }
        }
    }
};

enum
{
    //Spell entries for all COT NPCs
    SPELL_CLEAVE = 19642,
    SPELL_REND = 16509,
    SPELL_ECHOING_ROAR = 10967,
    SPELL_RUSHING_CHARGE = 22911,
    SPELL_PUMMEL = 19639,
    SPELL_TIME_STOP = 23171,
    SPELL_SHADOW_SHOCK = 20603,
    SPELL_DARKEN_VISION = 5514,
    SPELL_MANA_BURN = 8129,
    SPELL_ARCANE_EXPLOSION = 26643,
    SPELL_TIME_LAPSE = 23310,
    SPELL_WHIRLWIND = 24236,
    SPELL_DEMO_SHOUT = 19778,
    SPELL_THUNDERCLAP = 8732,

    AURA_SHADOWGUARD = 19312,
    AURA_SHADOWFORM = 15473

};

// Dragonspawn

struct infinite_dragonspawnAI : public ScriptedAI
{
    infinite_dragonspawnAI(Creature* c) : ScriptedAI(c)
    {
        Reset();
    }

    uint32 m_Timer = 1000;

    void Reset() override
    {
        m_Timer = 1000;
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (Unit* currentTarget = m_creature->GetVictim())
        {
            if (m_Timer <= uiDiff && m_creature->CanReachWithMeleeAutoAttack(currentTarget))
            {
                if (!currentTarget->HasAura(SPELL_REND))
                    m_creature->CastSpell(currentTarget, SPELL_REND, false);
                else
                    m_creature->CastSpell(currentTarget, SPELL_CLEAVE, false);

                m_Timer = 10000;
            }
            else
                m_Timer -= uiDiff;
        }

        DoMeleeAttackIfReady();
    }
    void EnterCombat(Unit*) override
    {
        uint32 randChance = urand(1, 50);

        if (randChance > 50)
        {
            uint32 rand = urand(1, 2);

            switch (rand)
            {
            case 1:
                m_creature->PMonsterSay("Our numbers are endless!");
                break;
            case 2:
                m_creature->PMonsterSay("Our mission cannot be compromised!");
                break;
            }
        }
    }

    void JustDied(Unit*) override
    {
        m_creature->PMonsterYell("You're too late, we are infinite...");
    }
};




// Riftguard

struct infinite_riftguardAI : public ScriptedAI
{
    infinite_riftguardAI(Creature* c) : ScriptedAI(c)
    {
        Reset();
    }

    uint32 m_Timer;
    uint32 _phase;
    uint32 m_RoarTimer;
    uint32 m_pummelTimer;
    uint32 m_checkForCasterTimer;
    bool reachedCaster;
    bool doOnce = false;

    void Reset() override
    {
        m_Timer = 5000;
        m_RoarTimer = 30000;
        m_pummelTimer = 500;
        m_checkForCasterTimer = 5000;
        _phase = 0;
        reachedCaster = false;
        doOnce = false;
    }

    void EnterCombat(Unit*) override
    {
        uint32 randChance = urand(1, 50);

        if (randChance > 50)
        {
            uint32 rand = urand(1, 2);

            switch (rand)
            {
            case 1:
                m_creature->PMonsterSay("The sands flow in our favor, we cannot be stopped!");
                break;
            case 2:
                m_creature->PMonsterSay("Our mission cannot be compromised! Stop them!");
                break;
            }
        }
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (reachedCaster)
        {
            reachedCaster = false;
        }

        if (m_checkForCasterTimer <= uiDiff) // check for caster to charge at
        {
            Unit* chargeTarget = m_creature->GetHostileCasterInRange(0, 50.0f);

            if (chargeTarget && chargeTarget->IsNonMeleeSpellCasted(false, false, true))
            {
                if (DoCastSpellIfCan(chargeTarget, SPELL_RUSHING_CHARGE) == CAST_OK)
                    m_creature->PMonsterSay("Your pathetic magic means nothing!");

                m_checkForCasterTimer = 15000;
            }
        }
        else
            m_checkForCasterTimer -= uiDiff;


        if (!doOnce) // one time cast at 5s into fight
        {
            DoAfterTime(m_creature, 5 * IN_MILLISECONDS, [m_creature = m_creature, this]() {
                DoCastSpellIfCan(m_creature, SPELL_ECHOING_ROAR); });
            doOnce = true;
        }

        if (m_RoarTimer < uiDiff) // Every 30 seconds
        {
            if (DoCastSpellIfCan(m_creature, SPELL_ECHOING_ROAR) == CAST_OK)
                m_RoarTimer = 30000;
            else
                m_RoarTimer = 1000; // if not successful then try again in 1s
        }
        else
            m_RoarTimer -= uiDiff;

        DoMeleeAttackIfReady();
    }

    void JustDied(Unit*) override
    {
        m_creature->PMonsterYell("You're only delaying the inevitable... ");
    }
};


// Riftweaver

struct infinite_riftweaverAI : public ScriptedAI
{
    infinite_riftweaverAI(Creature* c) : ScriptedAI(c)
    {
        Reset();
    }

    uint32 m_timeStopTimer;
    uint32 m_shadowShockTimer;
    uint32 m_darkenVisionTimer;
    bool doOnce;

    void Reset() override
    {
        m_timeStopTimer = 20000;
        m_shadowShockTimer = 12000;
        m_darkenVisionTimer = 24000;
        doOnce = false;
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (!doOnce)
        {
            DoAfterTime(m_creature, 10 * IN_MILLISECONDS, [m_creature = m_creature, this]() {
                if (Unit* target = m_creature->GetVictimInRange(0, 10))
                    DoCastSpellIfCan(target, SPELL_DARKEN_VISION); });

            doOnce = true;
        }

        if (m_timeStopTimer <= uiDiff)
        {
            m_creature->GetVictim()->AddAura(SPELL_TIME_STOP);
            m_creature->PMonsterSay("The timeways are ours to command!");
            m_timeStopTimer = 20000;
        }
        else
            m_timeStopTimer -= uiDiff;

        if (m_shadowShockTimer <= uiDiff)
        {
            DoCastSpellIfCan(m_creature->GetVictim(), SPELL_SHADOW_SHOCK);
            m_shadowShockTimer = 12000;
        }
        m_shadowShockTimer -= uiDiff;

        if (m_darkenVisionTimer <= uiDiff)
        {
            if (Unit* target = m_creature->GetVictimInRange(0, 10))
                DoCastSpellIfCan(target, SPELL_DARKEN_VISION);

            m_darkenVisionTimer = 24000;
        }
        m_darkenVisionTimer -= uiDiff;

        DoMeleeAttackIfReady();
    }

    void EnterCombat(Unit*) override
    {
        uint32 randChance = urand(1, 50);

        if (randChance > 50)
        {

            uint32 rand = urand(1, 2);

            switch (rand)
            {
            case 1:
                m_creature->PMonsterSay("Our rifts must be preserved!");
                break;
            case 2:
                m_creature->PMonsterSay("Our time has come!");
                break;
            }
        }
    }

    void JustDied(Unit*) override
    {
        m_creature->PMonsterYell("You've merely removed a grain from the hourglass... ");
    }
};

// Whelp 
struct infinite_whelpAI : public ScriptedAI
{
    infinite_whelpAI(Creature* c) : ScriptedAI(c)
    {
        Reset();
    }

    uint32 m_manaBurnTimer;
    uint8 stage;

    void Reset() override
    {
        m_manaBurnTimer = 3000;
        stage = 0;
        m_creature->SetPowerPercent(POWER_MANA, 1); // start with 1% mana
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (m_creature->GetPowerPercent(POWER_MANA) >= 75 && stage == 0)
        {
            stage = 1;
            m_creature->MonsterTextEmote("begins vibrating with the energy it's absorbed!");
        }

        if (m_creature->GetPowerPercent(POWER_MANA) == 100)
        {
            DoCastSpellIfCan(m_creature->GetVictim(), SPELL_ARCANE_EXPLOSION);

            DoAfterTime(m_creature, 1 * IN_MILLISECONDS, [m_creature = m_creature, this]() {
                m_creature->SetPowerPercent(POWER_MANA, 0);
                stage = 0;
                });
        }

        if (m_manaBurnTimer <= uiDiff)
        {
            m_creature->ModifyPower(POWER_MANA, 150);

            if (Player* player = m_creature->FindNearestHostilePlayer(10))
            {
                if (Group* group = player->GetGroup())
                {
                    for (GroupReference* itr = group->GetFirstMember(); itr != nullptr; itr = itr->next())
                    {
                        Player* playerGroup = itr->getSource();
                        if (!playerGroup)
                            continue;

                        if (playerGroup->FindNearestCreature(m_creature->GetEntry(), 50, true) && playerGroup->GetPowerPercent(POWER_MANA) >= 1)
                            playerGroup->ModifyPower(POWER_MANA, (playerGroup->GetMaxPower(POWER_MANA) / 10) * -1);
                    }
                }

                else
                {
                    player->ModifyPower(POWER_MANA, (player->GetMaxPower(POWER_MANA) / 10) * -1);
                }
            }

            m_manaBurnTimer = 3000;
        }
        else
            m_manaBurnTimer -= uiDiff;

        DoMeleeAttackIfReady();
    }
};


// Time-Ripper
struct infinite_timeripperAI : public ScriptedAI
{
    infinite_timeripperAI(Creature* c) : ScriptedAI(c)
    {
        Reset();
    }

    uint32 m_manaBurnTimer;
    uint32 phasetimer;
    std::list <Creature*> dragonSpawns;
    int phase;
    ObjectGuid dragonSpawn1;
    ObjectGuid dragonSpawn2;
    bool doOnce;
    bool startSummonEvent;

    enum CreatureEntries
    {
        NPC_TIME_RIFT = 81267,
        NPC_DRAGONSPAWN = 65123,
        NPC_HARBINGER = 65114
    };

    void DespawnGuid(ObjectGuid& g)
    {
        if (Creature* c = me->GetMap()->GetCreature(g))
            c->ForcedDespawn();
        g.Clear();
    }

    void Reset() override
    {
        m_manaBurnTimer = 3000;
        phasetimer = 1000;
        startSummonEvent = false;
        phase = 1;
        doOnce = false;
        DespawnGuid(dragonSpawn1);
        DespawnGuid(dragonSpawn2);
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->HasAura(AURA_SHADOWGUARD))
            m_creature->AddAura(AURA_SHADOWGUARD);

        m_creature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_NPC);

        if (!doOnce)
        {
            if (Creature* spawn1 = m_creature->SummonCreature(NPC_DRAGONSPAWN, -1412.98f, 6914.89f, -138.01f, 0.41f, TEMPSUMMON_MANUAL_DESPAWN))
            {
                dragonSpawns.push_back(spawn1);
                dragonSpawn1 = spawn1->GetGUIDLow();
                spawn1->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_NPC);
            }
            if (Creature* spawn2 = m_creature->SummonCreature(NPC_DRAGONSPAWN, -1401.54f, 6905.29f, -138.01f, 0.46f, TEMPSUMMON_MANUAL_DESPAWN))
            {
                dragonSpawns.push_back(spawn2);
                dragonSpawn2 = spawn2->GetGUIDLow();
                spawn2->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_NPC);
            }
            doOnce = true;
        }

        if (Player* player = m_creature->FindNearestHostilePlayer(30.0f))
        {
            if (!startSummonEvent)
            {
                if (Group* group = player->GetGroup())
                {
                    for (GroupReference* itr = group->GetFirstMember(); itr != nullptr; itr = itr->next())
                    {
                        Player* playerGroup = itr->getSource();
                        if (!playerGroup)
                            continue;

                        playerGroup->AddAura(SPELL_TIME_LAPSE);
                    }
                }
                else
                {
                    player->AddAura(SPELL_TIME_LAPSE);
                }
                m_creature->PMonsterYell("It seems the Bronze Dragonflight sent their pawns to fix what they could not, You�ve come far to stop us, but your advance stops here!");

                startSummonEvent = true;
            }
        }

        if (startSummonEvent)
        {
            if (phasetimer <= uiDiff)
            {

                switch (phase)
                {
                case 1:
                {
                    if (Creature* portal = m_creature->SummonCreature(NPC_TIME_RIFT, -1424.58f, 6895.75f, -131.0f, 0, TEMPSUMMON_TIMED_DESPAWN, 10000))
                    {
                        portal->PMonsterEmote("The Infinite Timeripper opens a rift in time!", nullptr, true);

                        DoAfterTime(m_creature, 9 * IN_MILLISECONDS, [m_creature = m_creature, portal = portal]() {
                            portal->SummonCreature(NPC_HARBINGER, portal->GetPositionX(), portal->GetPositionY(), -138.0146f, 0, TEMPSUMMON_DEAD_DESPAWN);
                            });
                    }

                    phasetimer = 2000;
                    phase++;
                    break;
                }
                case 2:
                {
                    if (Creature* portal = m_creature->FindNearestCreature(NPC_TIME_RIFT, 100, true))
                    {
                        if (Player* player = m_creature->FindNearestPlayer(50))
                            portal->PMonsterEmote("Something big is coming!", player, true);
                    }
                    phasetimer = 2000;
                    phase++;
                    break;
                }
                case 3:
                {
                    m_creature->PMonsterYell("Your time has come, what we have summoned is but a hollow reflection of what we have seen in the future. Savor these moments, mortals. They will be your last. Retreat!");
                    phase++;
                    phasetimer = 4000;
                    break;
                }
                case 4:
                {
                    m_creature->MonsterMove(-1441.65f, 6936.788f, -136.89f);
                    m_creature->ForcedDespawn(4000);

                    if (dragonSpawns.size() > 0)
                    {
                        for (auto const& i : dragonSpawns)
                        {
                            i->MonsterMove(-1441.65f, 6936.788f, -136.89f);
                            i->DespawnOrUnsummon(4000);
                        }
                    }

                    phase++;
                }
                }
            }
            else
                phasetimer -= uiDiff;
        }
    }

    void EnterCombat(Unit*) override
    {
        if (Player* player = m_creature->FindNearestHostilePlayer(20))
        {
            if (Group* group = player->GetGroup())
            {
                for (GroupReference* itr = group->GetFirstMember(); itr != nullptr; itr = itr->next())
                {
                    Player* playerGroup = itr->getSource();
                    if (!playerGroup)
                        continue;

                    playerGroup->AddAura(SPELL_TIME_LAPSE);
                }
            }
            else
            {
                player->AddAura(SPELL_TIME_LAPSE);
            }

            m_creature->PMonsterYell("It seems the Bronze Dragonflight sent their pawns to fix what they could not, you�ve come far to stop us, but your advance stops here!");
        }
    }
};

// Riftlord

struct infinite_riftlordAI : public ScriptedAI
{
    infinite_riftlordAI(Creature* c) : ScriptedAI(c)
    {
        Reset();
    }

    uint32 m_whirlwindTimer;
    uint32 m_demoShoutTimer;
    uint32 m_thunderTimer;

    void Reset() override
    {
        m_whirlwindTimer = 6000;
        m_demoShoutTimer = 16500;
        m_thunderTimer = 15000;
    }

    void UpdateAI(const uint32 uiDiff) override
    {

        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (m_whirlwindTimer <= uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_WHIRLWIND) == CAST_OK)
                m_whirlwindTimer = 6000;
            else
                m_whirlwindTimer = 1000; // if failed try again
        }
        else
            m_whirlwindTimer -= uiDiff;

        if (m_demoShoutTimer <= uiDiff)
        {
            if (DoCastSpellIfCan(m_creature, SPELL_DEMO_SHOUT) == CAST_OK)
            {
                m_creature->PMonsterYell("Your courage fails!");
                m_demoShoutTimer = 16500;
            }
            else
                m_demoShoutTimer = 1000; // if failed try again
        }
        else
            m_demoShoutTimer -= uiDiff;

        if (m_thunderTimer <= uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_THUNDERCLAP) == CAST_OK)
                m_thunderTimer = 15000;
            else
                m_thunderTimer = 1000; // if failed try again
        }
        else
            m_thunderTimer -= uiDiff;

        DoMeleeAttackIfReady();
    }

    void EnterCombat(Unit*) override
    {
        uint32 randChance = urand(1, 50);

        if (randChance > 50)
            m_creature->PMonsterSay("The sands of time shall be scattered to the winds!");

        DoCastSpellIfCan(m_creature, SPELL_DEMO_SHOUT);
    }

    void JustDied(Unit*) override
    {
        m_creature->PMonsterSay("Impossible... ");
    }
};

// Aqir-Adds
struct aqir_addAI : public ScriptedAI
{
    aqir_addAI(Creature* c) : ScriptedAI(c)
    {
        Reset();
    }

    enum NPCentries
    {
        NPC_CLERIC = 65107,
        NPC_WARRIOR = 65108,
        NPC_DRONE = 65109
    };

    enum Spells
    {
        SPELL_MIND_BLAST = 26048,
        SPELL_HEAL = 11642,
        SPELL_SHADOW_STRIKE = 22574,
        SPELL_PIERCING_SHADOW = 16429,
        SPELL_POISON_BOLT_VOLLEY = 24099,
        SPELL_PLAGUE_CLOUD = 23861,
        SPELL_SHIELD = 10901
    };

    uint32 mindBlastTimer;
    uint32 shieldTimer;
    uint32 healTimer;
    uint32 shadowStrikeTimer;
    uint32 piercingShadowTimer;
    uint32 poisonVolleyTimer;
    uint32 plagueCloudtimer;


    void Reset() override
    {
        mindBlastTimer = 1000;
        shieldTimer = 1000;
        healTimer = 15000;
        shadowStrikeTimer = 1000;
        piercingShadowTimer = 5000;
        poisonVolleyTimer = 5000;
        plagueCloudtimer = 2000;
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        switch (m_creature->GetEntry())
        {
        case NPC_CLERIC:
        {
            if (!m_creature->HasAura(AURA_SHADOWFORM))
                m_creature->AddAura(AURA_SHADOWFORM);

            if (mindBlastTimer <= uiDiff)
            {
                if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_MIND_BLAST) == CAST_OK)
                    mindBlastTimer = 8000;
                else
                    mindBlastTimer = 1000; // try again
            }
            else
                mindBlastTimer -= uiDiff;

            if (healTimer <= uiDiff)
            {
                Unit* friendlyTarget = m_creature->SelectRandomFriendlyTarget(nullptr, 15.0f);

                if (friendlyTarget->GetHealthPercent() <= 75.0f)
                {
                    if (DoCastSpellIfCan(friendlyTarget, SPELL_HEAL) == CAST_OK)
                        healTimer = 15000;
                    else
                        healTimer = 1000; // try again
                }
                else
                {
                    healTimer = 5000; // try again
                    mindBlastTimer = 2000;
                }
            }
            else
                healTimer -= uiDiff;

            if (shieldTimer <= uiDiff)
            {
                if (Unit* shieldTarget = m_creature->FindLowestHpFriendlyUnit(15.0f))
                {
                    if (DoCastSpellIfCan(shieldTarget, SPELL_SHIELD) == CAST_OK)
                        shieldTimer = 7500;
                    else
                        shieldTimer = 1000; // try again
                }
            }
            else
                shieldTimer -= uiDiff;
            break;
        }
        case NPC_WARRIOR:
        {
            if (shadowStrikeTimer <= uiDiff)
            {
                if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_SHADOW_STRIKE) == CAST_OK)
                    shadowStrikeTimer = 10000;
            }
            else
                shadowStrikeTimer -= uiDiff;

            if (piercingShadowTimer <= uiDiff)
            {
                for (int i = 0; i < 5; i++)
                {
                    if (DoCastSpellIfCan(m_creature->SelectRandomUnfriendlyTarget(), SPELL_PIERCING_SHADOW) == CAST_OK);
                }
                piercingShadowTimer = 15000;
            }
            else
                piercingShadowTimer -= uiDiff;

            DoMeleeAttackIfReady();

            break;
        }
        case NPC_DRONE:
        {
            if (poisonVolleyTimer <= uiDiff)
            {
                if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_POISON_BOLT_VOLLEY) == CAST_OK)
                    poisonVolleyTimer = 12000;
            }
            else
                poisonVolleyTimer -= uiDiff;

            if (plagueCloudtimer <= uiDiff)
            {
                if (Creature* cloudTarget = m_creature->SummonCreature(65120, m_creature->GetVictim()->GetPositionX(), m_creature->GetVictim()->GetPositionY(), m_creature->GetVictim()->GetPositionZ(), 0, TEMPSUMMON_TIMED_DESPAWN, 5000))
                    cloudTarget->CastSpell(cloudTarget, SPELL_PLAGUE_CLOUD, false);

                plagueCloudtimer = 10000;
            }
            else
                plagueCloudtimer -= uiDiff;
            break;

            DoMeleeAttackIfReady();
        }
        }

    }
};


// swamp creatures
struct swamp_npcs_cotAI : public ScriptedAI
{
    swamp_npcs_cotAI(Creature* c) : ScriptedAI(c)
    {
        Reset();
    }

    uint32 poisonTimer;
    uint32 woundTimer;
    uint32 paralyzeTimer;

    enum NPCentries
    {
        NPC_PYTHON = 65110,
        NPC_CROC = 65111,
        NPC_TARANTULA = 65112
    };

    enum Spells
    {
        SPELL_POISON = 24097,
        SPELL_WOUND = 16549,
        SPELL_PARALYZING_POISON = 3609
    };

    void Reset() override
    {
        poisonTimer = 21000;
        woundTimer = 10000;
        paralyzeTimer = 35000;
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        switch (m_creature->GetEntry())
        {
        case NPC_PYTHON:
        {
            if (poisonTimer <= uiDiff)
            {
                if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_POISON) == CAST_OK)
                    poisonTimer = 21000;
            }
            else poisonTimer -= uiDiff;

            break;
        }
        case NPC_CROC:
        {
            if (woundTimer <= uiDiff)
            {
                if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_WOUND) == CAST_OK)
                    woundTimer = 10000;
            }
            else woundTimer -= uiDiff;
            break;
        }
        case NPC_TARANTULA:
        {
            bool doOnce = false;

            if (!doOnce)
            {
                if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_PARALYZING_POISON) == CAST_OK)
                    paralyzeTimer = 35000;
                doOnce = true;
            }

            if (paralyzeTimer <= uiDiff)
            {
                if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_PARALYZING_POISON) == CAST_OK)
                    paralyzeTimer = 35000;
            }
            else paralyzeTimer -= uiDiff;
            break;
        }

        }

        DoMeleeAttackIfReady();
    }
};

struct chronar_boss_cotAI : public ScriptedAI
{
    chronar_boss_cotAI(Creature* c) : ScriptedAI(c)
    {
        Reset();
    }

    uint32 shoutTimer;
    uint32 mortalStriketimer;
    uint32 sweepingSlamTimer;
    uint32 healthPhase;
    bool enrageActive;

    enum Spells
    {
        SPELL_SHOUT = 18328,
        SPELL_MORTAL_STRIKE = 13737,
        SPELL_SWEEPING_SLAM = 12887,
        SPELL_REFLECTION = 22067,
        SPELL_ENRAGE = 28131
    };

    void Reset() override
    {
        shoutTimer = 5000;
        mortalStriketimer = 18000;
        sweepingSlamTimer = 25000;
        healthPhase = 0;
        enrageActive = false;
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (shoutTimer <= uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_SHOUT) == CAST_OK)
                shoutTimer = 60000;
        }
        else shoutTimer -= uiDiff;

        if (mortalStriketimer <= uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_MORTAL_STRIKE) == CAST_OK)
                mortalStriketimer = 18000;
        }
        else mortalStriketimer -= uiDiff;

        if (sweepingSlamTimer <= uiDiff)
        {
            m_creature->PMonsterYell("You're nothing compared to my might!");

            if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_SWEEPING_SLAM) == CAST_OK)
                sweepingSlamTimer = 25000;
        }
        else sweepingSlamTimer -= uiDiff;


        switch (healthPhase)
        {
        case 0:
            if (m_creature->GetHealthPercent() <= 75.0)
            {
                DoCastSpellIfCan(m_creature->GetVictim(), SPELL_REFLECTION);
                healthPhase++;
                m_creature->PMonsterYell("Your magic turns against you!");
                break;
            }
        case 1:
            if (m_creature->GetHealthPercent() <= 50.0)
            {
                DoCastSpellIfCan(m_creature->GetVictim(), SPELL_REFLECTION);
                healthPhase++;
                m_creature->PMonsterYell("Your magic turns against you!");
                break;
            }
        case 2:
            if (m_creature->GetHealthPercent() <= 25.0)
            {
                DoCastSpellIfCan(m_creature->GetVictim(), SPELL_REFLECTION);
                healthPhase++;
                m_creature->PMonsterYell("Your magic turns against you!");
                break;
            }
        }


        if (!enrageActive && m_creature->GetHealthPercent() <= 35.0f) // enrage
        {
            m_creature->PMonsterYell("Enough playing around, this ends now!");
            enrageActive = true;
            m_creature->AddAura(SPELL_ENRAGE);
        }

        DoMeleeAttackIfReady();
    }


    void EnterCombat(Unit*) override
    {
        m_creature->PMonsterYell("It seems we have visitors. You should not have come here mortals, now I will ensure that you will not leave.");
    }

    void JustDied(Unit*) override
    {
        m_creature->PMonsterSay("Too soon...");
    }
};

struct harbinger_boss_cotAI : public ScriptedAI
{
    harbinger_boss_cotAI(Creature* c) : ScriptedAI(c)
    {
        Reset();
    }

    uint32 veilTimer;
    uint32 instanityTimer;
    bool addsSpawned;
    bool burstDone;
    float oldHP;

    enum AddEntries
    {
        NPC_LARVAE = 65115
    };

    enum Spells
    {
        SPELL_VEIL_OF_SHADOW = 28440,
        SPELL_SHADOWBOLT_VOLLEY = 25586,
        SPELL_SHADOWFORM = 16592,
        SPELL_SHADOW_BURST = 28447,
        SPELL_CAUSE_INSANITY = 26079
    };

    void Reset() override
    {
        veilTimer = 5000;
        instanityTimer = 15000;
        addsSpawned = false;
        burstDone = false;
        oldHP = 100.0f;
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (veilTimer <= uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_VEIL_OF_SHADOW) == CAST_OK)
                veilTimer = 15000;
        }
        else veilTimer -= uiDiff;

        if (instanityTimer <= uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_CAUSE_INSANITY) == CAST_OK)
                instanityTimer = 25000;
        }
        else instanityTimer -= uiDiff;

        float currentHP = m_creature->GetHealthPercent();

        if (currentHP <= (oldHP - 20.0f)) // shadowbolt volley every 20% hp loss
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_SHADOWBOLT_VOLLEY) == CAST_OK)
                oldHP = currentHP;
        }

        if (!addsSpawned && currentHP <= 50.0f) // spawn adds at 50% hp
        {
            addsSpawned = true;

            for (int i = 0; i < 5; i++)
            {
                if (Creature* larvae = m_creature->SummonCreature(NPC_LARVAE, m_creature->GetVictim()->GetPositionX() + frand(-8.0f, 8.0f), m_creature->GetVictim()->GetPositionY() + frand(-8.0f, 8.0f), m_creature->GetMap()->GetHeight(m_creature->GetPositionX(), m_creature->GetPositionY(), m_creature->GetPositionZ()), 0, TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, 1000))
                {
                    larvae->AI()->AttackStart(m_creature->GetVictim());
                    larvae->AddThreat(m_creature->GetVictim(), 100.0f);
                }
            }

            m_creature->PMonsterYell("W'oq uhn'agth ez qam Sk'arr!");
            m_creature->MonsterWhisper("Come, servants of rot. Consume!", m_creature->GetVictim(), true);

        }

        if (!burstDone && m_creature->GetHealthPercent() <= 35.0f)
        {
            burstDone = true;

            m_creature->AddAura(SPELL_SHADOWFORM);
            DoCastSpellIfCan(m_creature->GetVictim(), SPELL_SHADOW_BURST);

            m_creature->PMonsterYell("Ak'agthshi ma uhnish, ak'uq shg'cul vwahuhn! H'iwn iggksh Phquathi gag OOU KAAXTH SHUUL!");
            m_creature->MonsterWhisper("Our numbers are endless, our power beyond reckoning! All who oppose the Destroyer will DIE A THOUSAND DEATHS!", m_creature->GetVictim(), true);
        }
        DoMeleeAttackIfReady();
    }


    void EnterCombat(Unit*) override
    {
        m_creature->PMonsterYell("Shuul og i agthu yrr sk'uuyat uulwi ma oou sshoq'met ez nuq far'al I zz nuq al'tha Ssaggh ni za an'zig yrr puul ywaq gul'kafh");
        m_creature->MonsterWhisper("There is a great and terrible truth at the beginning of all things. I am its herald. Listen to my sermon, and know your infinite inconsequence.", m_creature->GetVictim(), true);
    }

    void JustDied(Unit*) override
    {
        m_creature->PMonsterSay("Hul bala miz rilakich...");

        if (Player* player = m_creature->FindNearestPlayer(100))
            m_creature->MonsterWhisper("How is this possible...", player, true);
    }
};



struct larvae_cotAI : public ScriptedAI
{
    larvae_cotAI(Creature* c) : ScriptedAI(c)
    {
        Reset();
    }

    bool doOnce;
    uint32 spellTimer;

    enum
    {
        SPELL_DRAIN_LIFE = 26693,

        NPC_HARBINGER = 65114
    };

    void Reset() override
    {
        doOnce = false;
        spellTimer = 5000;

    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (Creature* harbinger = m_creature->FindNearestCreature(NPC_HARBINGER, 100.0f, true))
            m_creature->AddThreat(harbinger->GetVictim(), 100.0f);

        if (spellTimer <= uiDiff)
        {
            DoCastSpellIfCan(m_creature->GetVictim(), SPELL_DRAIN_LIFE);

            spellTimer = urand(5000, 7000);
        }
        else spellTimer -= uiDiff;

        DoMeleeAttackIfReady();
    }

    void OnCombatStop() override
    {
        //m_creature->DespawnOrUnsummon(); // handled in Epochronos script when summoned
    }
};

struct epochronos_boss_cotAI : public ScriptedAI
{
    epochronos_boss_cotAI(Creature* c) : ScriptedAI(c)
    {
        Reset();
    }

    uint32 sandBreathTimer;
    uint32 swoopTimer;
    uint32 arcaneBlastTimer;
    bool shadeSummoned = false;
    bool enrageActive = false;
    uint32 summonEntry;

    enum Spells
    {
        SPELL_SAND_BREATH = 20717,
        SPELL_SWOOP = 23919,
        SPELL_ARCANE_BLAST = 24857,
        SPELL_BANISH = 18647
    };

    enum ShadeEntries
    {
        NPC_LICH_KING = 65117,
        NPC_KAELTHAS = 65118,
        NPC_VASHJ = 65119
    };

    void Reset() override
    {
        sandBreathTimer = 3000;
        swoopTimer = 12000;
        arcaneBlastTimer = 10000;
        shadeSummoned = false;
        enrageActive = false;
        summonEntry = 0;
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (sandBreathTimer <= uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_SAND_BREATH) == CAST_OK)
                sandBreathTimer = 15000;
        }
        else sandBreathTimer -= uiDiff;

        if (swoopTimer <= uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_SWOOP) == CAST_OK)
                swoopTimer = 12000;
        }
        else swoopTimer -= uiDiff;

        if (arcaneBlastTimer <= uiDiff)
        {
            if (Unit* currentTarget = m_creature->SelectRandomUnfriendlyTarget(nullptr, 50.0f))
            {
                if (currentTarget == m_creature->GetVictim())
                    return;

                if (DoCastSpellIfCan(currentTarget, SPELL_ARCANE_BLAST) == CAST_OK)
                    arcaneBlastTimer = 10000;
            }
        }
        else arcaneBlastTimer -= uiDiff;


        if (!shadeSummoned && m_creature->GetHealthPercent() <= 50.0f)
        {
            m_creature->PMonsterYell("Face the consequences of your actions!");
            m_creature->AddAura(SPELL_BANISH);

            shadeSummoned = true;

            int random = irand(1, 3);

            switch (random)
            {
            case 1:
                summonEntry = NPC_LICH_KING;
                break;
            case 2:
                summonEntry = NPC_KAELTHAS;
                break;
            case 3:
                summonEntry = NPC_VASHJ;
                break;
            }

            if (summonEntry > 0)
                Creature* summon = m_creature->SummonCreature(summonEntry, m_creature->GetPositionX(), m_creature->GetPositionY(), m_creature->GetPositionZ(), 0, TEMPSUMMON_TIMED_COMBAT_OR_CORPSE_DESPAWN, 1000);

        }

        if (m_creature->FindNearestCreature(summonEntry, 100, true))
        {
            if (!m_creature->HasAura(SPELL_BANISH))
                m_creature->AddAura(SPELL_BANISH);
        }

        if (!enrageActive && m_creature->GetHealthPercent() <= 25.0f)
        {
            enrageActive = true;
            m_creature->ApplyCastTimePercentMod(25.0f, true);
            m_creature->PMonsterYell("Time for a change of pace!");
        }

        DoMeleeAttackIfReady();
    }


    void EnterCombat(Unit*) override
    {
        m_creature->PMonsterYell("Time moves in our favor, your intrusion ends here!");
    }

    void JustDied(Unit*) override
    {
        m_creature->PMonsterYell("We are infinite...");
    }

};

struct shade_cotAI : public ScriptedAI
{
    shade_cotAI(Creature* c) : ScriptedAI(c)
    {
        Reset();
    }

    uint32 screamTimer;
    uint32 deathCoilTimer;
    uint32 deathnDecayTimer;
    uint32 plagueTimer;
    uint32 coneOfFireTimer;
    uint32 amplifyFireTimer;
    uint32 pyroTimer;
    uint32 chainLightningTimer;
    uint32 lightningCloudTimer;
    uint32 lightningBolttimer;
    uint32 darkStrikeTimer;

    int plagueCount;

    enum Spells
    {
        SPELL_SCREAMS = 7074,
        SPELL_DEATHCOIL = 28412,
        SPELL_DEATHNDECAY = 11433,
        SPELL_CONE_OF_FIRE = 19630,
        SPELL_AMPLIFY_FLAMES = 9482,
        SPELL_PYROBLAST = 20228,
        SPELL_CHAIN_LIGHTNING = 23106,
        SPELL_LIGHTNING_BOLT = 15234,
        SPELL_LIGHTNING_CLOUD = 26550,
        SPELL_PLAGUE = 19280,
        SPELL_DARKSTRIKE = 19777,

        AURA_LIGHTNING_SHIELD = 20545,
    };

    enum NPCEntries
    {
        NPC_LICH_KING = 65117,
        NPC_KAELTHAS = 65118,
        NPC_VASHJ = 65119
    };

    void Reset() override
    {
        screamTimer = 13000;
        deathCoilTimer = 5000;
        deathnDecayTimer = 8000;
        darkStrikeTimer = 6000;
        plagueTimer = 15000;
        coneOfFireTimer = 8000;
        amplifyFireTimer = 500;
        pyroTimer = 10000;
        chainLightningTimer = 8000;
        lightningCloudTimer = 18000;
        lightningBolttimer = 1000;
        plagueCount = 0;
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (screamTimer <= uiDiff)
        {
            if (Player* player = m_creature->FindNearestHostilePlayer(50.0f))
            {
                if (Group* group = player->GetGroup())
                {
                    for (GroupReference* itr = group->GetFirstMember(); itr != nullptr; itr = itr->next())
                    {
                        Player* playerGroup = itr->getSource();
                        if (!playerGroup)
                            continue;

                        playerGroup->AddAura(SPELL_SCREAMS);
                    }
                }
            }
            screamTimer = 13000;
        }
        else screamTimer = 1000;

        switch (m_creature->GetEntry())
        {

        case NPC_LICH_KING:
        {
            if (plagueTimer <= uiDiff)
            {
                if (Player* player = m_creature->FindNearestHostilePlayer(10))
                {
                    if (Group* group = player->GetGroup())
                    {
                        for (GroupReference* itr = group->GetFirstMember(); itr != nullptr; itr = itr->next())
                        {
                            Player* playerGroup = itr->getSource();
                            if (!playerGroup)
                                continue;

                            if (plagueCount >= 2)
                                break;

                            if (!playerGroup->HasAura(SPELL_PLAGUE))
                            {
                                if (DoCastSpellIfCan(playerGroup, SPELL_PLAGUE) == CAST_OK)
                                    plagueCount++;
                            }
                        }
                        plagueCount = 0;
                    }
                }
                plagueTimer = 15000;
            }
            else plagueTimer -= uiDiff;

            if (deathnDecayTimer <= uiDiff)
            {
                if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_DEATHNDECAY) == CAST_OK)
                    deathnDecayTimer = 25000;
            }
            else deathnDecayTimer -= uiDiff;

            if (deathCoilTimer <= uiDiff)
            {
                if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_DEATHCOIL) == CAST_OK)
                    deathCoilTimer = 10000;
            }
            else deathCoilTimer -= uiDiff;

            if (darkStrikeTimer <= uiDiff)
            {
                if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_DARKSTRIKE) == CAST_OK)
                    darkStrikeTimer = 6000;
            }
            else darkStrikeTimer -= uiDiff;

            DoMeleeAttackIfReady();

        }
        break;
        case NPC_KAELTHAS:
        {
            if (coneOfFireTimer <= uiDiff)
            {
                if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_CONE_OF_FIRE) == CAST_OK)
                    coneOfFireTimer = 8000;
            }
            else coneOfFireTimer -= uiDiff;

            if (amplifyFireTimer <= uiDiff)
            {
                if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_AMPLIFY_FLAMES) == CAST_OK)
                {
                    amplifyFireTimer = 30000;

                    if (Player* player = m_creature->FindNearestHostilePlayer(10))
                    {

                        if (Group* group = player->GetGroup())
                        {
                            for (GroupReference* itr = group->GetFirstMember(); itr != nullptr; itr = itr->next())
                            {
                                Player* playerGroup = itr->getSource();
                                if (!playerGroup)
                                    continue;

                                playerGroup->AddAura(SPELL_AMPLIFY_FLAMES);
                            }
                        }
                    }
                }
            }
            else amplifyFireTimer -= uiDiff;

            if (pyroTimer <= uiDiff)
            {
                if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_PYROBLAST) == CAST_OK)
                    pyroTimer = 10000;
            }
            else pyroTimer -= uiDiff;

            DoMeleeAttackIfReady();
        }

        break;
        case NPC_VASHJ:
        {
            if (!m_creature->HasAura(AURA_LIGHTNING_SHIELD))
                m_creature->AddAura(AURA_LIGHTNING_SHIELD);

            if (chainLightningTimer <= uiDiff)
            {
                if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_CHAIN_LIGHTNING) == CAST_OK)
                    chainLightningTimer = 8000;
            }
            else chainLightningTimer -= uiDiff;

            if (lightningCloudTimer <= uiDiff)
            {
                if (DoCastSpellIfCan(m_creature->SelectRandomUnfriendlyTarget(), SPELL_LIGHTNING_CLOUD) == CAST_OK)
                    lightningCloudTimer = 18000;
            }
            else lightningCloudTimer -= uiDiff;

            if (lightningBolttimer <= uiDiff)
            {
                if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_LIGHTNING_BOLT) == CAST_OK)
                    lightningBolttimer = 1000;
            }
            else lightningBolttimer -= uiDiff;

        }
        break;
        }
    }

    //void OnCombatStop() override 
    //{
    //    m_creature->ForcedDespawn();
    //}
};


struct chromie_boss_cotAI : public ScriptedAI
{
    chromie_boss_cotAI(Creature* c) : ScriptedAI(c)
    {
        Reset();
    }

    enum Spells
    {
        SPELL_MANA_BURN = 26046,
        SPELL_FEAR = 26580,
        SPELL_FUMBLE = 5917
    };

    enum CreatureEntries
    {
        NPC_TIME_RIFT = 81051,
        NPC_RIFT_GUARD = 65101,
        NPC_ROTMAW = 65122,
        NPC_MOSSHEART = 65124
    };

    uint32 manaBurnTimer;
    uint32 fearTimer;
    uint32 fumbleTimer;
    uint32 phase;


    void Reset() override
    {
        manaBurnTimer = 18000;
        fearTimer = 45000;
        fumbleTimer = 12000;
        phase = 1;
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (manaBurnTimer <= uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_MANA_BURN) == CAST_OK)
            {
                manaBurnTimer = 20000;
                m_creature->PMonsterYell("Your will, your power, it'll be all reduced down to a husk!");
            }
        }
        else manaBurnTimer -= uiDiff;

        if (fearTimer <= uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->SelectRandomUnfriendlyTarget(), SPELL_FEAR) == CAST_OK)
                fearTimer = 45000;
        }
        else fearTimer -= uiDiff;

        if (fumbleTimer <= uiDiff)
        {
            Unit* target = m_creature->SelectRandomUnfriendlyTarget(nullptr, 10.0f);

            if (target && target->IsPlayer())
            {
                target->AddAura(SPELL_FUMBLE);
                fumbleTimer = 12000;
            }
            else // retry if its not a player
                fumbleTimer = 250;
        }
        else fumbleTimer -= uiDiff;


        if (phase == 1 && m_creature->GetHealthPercent() <= 80.0f)
        {
            phase++;

            if (Creature* portal = m_creature->SummonCreature(NPC_TIME_RIFT, m_creature->GetPositionX() + 5, m_creature->GetPositionY() + 5, m_creature->GetPositionZ(), 0))
                m_creature->SummonCreature(NPC_RIFT_GUARD, portal->GetPositionX(), portal->GetPositionY(), portal->GetPositionZ(), 0, TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 100);

            m_creature->PMonsterYell("We are Infinite! Our numbers are countless!");
        }

        if (phase == 2 && m_creature->GetHealthPercent() <= 50.0f)
        {
            phase++;

            if (Creature* portal = m_creature->SummonCreature(NPC_TIME_RIFT, m_creature->GetPositionX() + 5, m_creature->GetPositionY() + 5, m_creature->GetPositionZ(), 0))
                m_creature->SummonCreature(NPC_RIFT_GUARD, portal->GetPositionX(), portal->GetPositionY(), portal->GetPositionZ(), 0, TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 100);

            m_creature->PMonsterYell("We are Infinite! Our numbers are countless!");
        }

        if (phase == 3 && m_creature->GetHealthPercent() <= 20.0f)
        {
            phase++;

            if (Creature* portal = m_creature->SummonCreature(NPC_TIME_RIFT, m_creature->GetPositionX() + 5, m_creature->GetPositionY() + 5, m_creature->GetPositionZ(), 0))
                m_creature->SummonCreature(NPC_RIFT_GUARD, portal->GetPositionX(), portal->GetPositionY(), portal->GetPositionZ(), 0, TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 100);

            m_creature->PMonsterYell("We are Infinite! Our numbers are countless!");
        }

        DoMeleeAttackIfReady();
    }

    void EnterCombat(Unit*) override
    {
        m_creature->PMonsterYell("Well well, surprised are we? I am the superior Chromie! It's a shame you came this far just to die.");
    }

    void JustDied(Unit*) override
    {
        m_creature->PMonsterYell("But I... we cannot fail! We are so close!");



        // Deprecated and put into DB
        //uint32 spawnChance = urand(1, 100); // spawn rotmaw or mossheart or not

        //if (spawnChance <= 35)
        //{
        //    int randomSpawnLocation = irand(0, 3);
        //    m_creature->SummonCreature(NPC_ROTMAW, rotMawSpawns[randomSpawnLocation].m_fX, rotMawSpawns[randomSpawnLocation].m_fY, rotMawSpawns[randomSpawnLocation].m_fZ, 0, TEMPSUMMON_DEAD_DESPAWN);
        //}
    }
};

struct chromie_portal_cotAI : public ScriptedAI
{
    chromie_portal_cotAI(Creature* c) : ScriptedAI(c)
    {
        Reset();
    }

    uint32 spawnTimer;
    bool beginSpawning;
    bool doOnce;

    enum CreatureEntries
    {
        NPC_WHELP = 65103,
        NPC_RIFT_GUARD = 65101
    };


    void Reset() override
    {
        spawnTimer = 2000;
        beginSpawning = false;
        doOnce = false;
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!doOnce)
        {
            m_creature->PMonsterSay("The time rift will stabilise in 20 seconds!");

            DoAfterTime(m_creature, 10 * IN_MILLISECONDS, [m_creature = m_creature, this]() {
                m_creature->PMonsterSay("The time rift will stabilise in 10 seconds!"); });

            DoAfterTime(m_creature, 20 * IN_MILLISECONDS, [m_creature = m_creature, this]() {
                m_creature->PMonsterSay("The time rift is stable!");
                beginSpawning = true;
                });

            doOnce = true;
        }

        if (beginSpawning)
        {
            if (spawnTimer <= uiDiff && m_creature->FindNearestCreature(NPC_RIFT_GUARD, 50.0f, true))
            {
                m_creature->SummonCreature(NPC_WHELP, m_creature->GetPositionX(), m_creature->GetPositionY(), m_creature->GetPositionZ(), 0, TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 100);
                spawnTimer = 8000;
            }
            else spawnTimer -= uiDiff;
        }

        if (!m_creature->FindNearestCreature(NPC_RIFT_GUARD, 50.0f, true))
            m_creature->DespawnOrUnsummon();
    }

};


struct rotmaw_cotAI : public ScriptedAI
{
    rotmaw_cotAI(Creature* c) : ScriptedAI(c)
    {
        Reset();
    }

    uint32 consumeTimer;
    uint32 mortalWoundTimer;
    uint32 sunderArmorTimer;
    uint32 rotTimer;
    uint32 tailSwipeTimer;
    bool isConsuming;

    void Reset() override
    {
        consumeTimer = 10000;
        mortalWoundTimer = 14000;
        sunderArmorTimer = 5000;
        rotTimer = 1000;
        tailSwipeTimer = 5000;
        isConsuming = false;
    }

    enum SpellEntries
    {
        SPELL_CONSUME = 25371,
        SPELL_MORTAL_WOUND = 28467,
        SPELL_SUNDER = 25051,
        SPELL_KNOCKBACK = 10689,
        SPELL_ROT = 7102,
        SPELL_TAIL_SWEEP = 15847
    };

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (tailSwipeTimer <= uiDiff)
        {
            auto const& attackers = m_creature->GetThreatManager().getThreatList();

            for (const auto attacker : attackers)
            {
                Unit* hostileTarget = m_creature->GetMap()->GetUnit(attacker->getUnitGuid());

                //if (hostileTarget && hostileTarget->IsBehindTarget(m_creature, false))
                if (DoCastSpellIfCan(m_creature, SPELL_TAIL_SWEEP) == CAST_OK)
                {
                    tailSwipeTimer = 5000;
                    break;
                }
            }

        }
        else tailSwipeTimer -= uiDiff;

        if (rotTimer <= uiDiff)
        {
            if (!m_creature->GetVictim()->HasAura(SPELL_ROT))
                if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_ROT) == CAST_OK)
                    rotTimer = 15000;
        }
        else rotTimer -= uiDiff;

        if (consumeTimer <= uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_CONSUME) == CAST_OK)
            {
                isConsuming = true;
                m_creature->UpdateSpeed(MOVE_WALK, true, 0.0f);

                if (Unit* target = m_creature->GetVictim())
                {
                    target->TeleportPositionRelocation(m_creature->GetPosition());

                    float originalscale = target->GetNativeScale();
                    target->SetTransformScale(0.00001f);
                    target->GetThreatManager().modifyThreatPercent(target, -100);

                    if (Player* player = target->GetCharmerOrOwnerPlayerOrPlayerItself())
                    {
                        player->GetSession()->SendNotification("You are being consumed!");

                        DoAfterTime(m_creature, 15.5 * IN_MILLISECONDS, [m_creature = m_creature, player = player, originalscale = originalscale, this]() {
                            DoCastSpellIfCan(player, SPELL_KNOCKBACK);
                            player->SetTransformScale(originalscale);
                            isConsuming = false;
                            m_creature->UpdateSpeed(MOVE_WALK, true, 1.0f);
                            });
                    }

                    m_creature->PMonsterEmote("|cffff8040Rotmaw is consuming %s and cannot move!|r", nullptr, true, target->GetName());
                }
            }
            consumeTimer = 25000;
        }
        else consumeTimer -= uiDiff;

        if (!isConsuming && mortalWoundTimer <= uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_MORTAL_WOUND) == CAST_OK)
                mortalWoundTimer = 14000;
        }
        else mortalWoundTimer -= uiDiff;

        if (sunderArmorTimer <= uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_SUNDER) == CAST_OK)
                sunderArmorTimer = 18000;
        }
        else sunderArmorTimer -= uiDiff;

        DoMeleeAttackIfReady();
    }
};



struct mossheart_cotAI : public ScriptedAI
{
    mossheart_cotAI(Creature* c) : ScriptedAI(c)
    {
        Reset();
    }

    bool engaged;
    uint32 rejuvTimer;
    uint32 tangleTimer;
    uint32 mossTimer;
    int phase;
    void Reset() override
    {
        engaged = false;
        rejuvTimer = 500; // initial quick cast
        tangleTimer = 25000;
        phase = 0;
        mossTimer = 18000;
    }

    enum SpellEntries
    {
        AURA_THORNS = 8148,
        SPELL_REJUV = 20664,
        SPELL_DREDGE_SICKNESS = 14535,
        SPELL_TANGLE_ROOTS = 20699,
        SPELL_MOSS_FEET = 6870,
        SPELL_MOSS_HANDS = 6866,
        SPELL_STEALTH = 1787
    };

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->IsInCombat() && !m_creature->HasAura(SPELL_STEALTH))
            DoCastSpellIfCan(m_creature, SPELL_STEALTH);

        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (engaged && !m_creature->HasAura(AURA_THORNS))
            m_creature->AddAura(AURA_THORNS);

        if (m_creature->GetHealthPercent() <= 75.0f)
        {
            if (rejuvTimer <= uiDiff)
            {
                if (DoCastSpellIfCan(m_creature, SPELL_REJUV) == CAST_OK)
                    rejuvTimer = 20000;
            }
            else rejuvTimer -= uiDiff;
        }

        if (phase == 0 && m_creature->GetHealthPercent() <= 50.0f)
            ApplyDredge();

        if (phase == 1 && m_creature->GetHealthPercent() <= 25.0f)
            ApplyDredge();

        if (tangleTimer <= uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_TANGLE_ROOTS) == CAST_OK)
            {
                tangleTimer = 25000;
                m_creature->PMonsterYell("The very earth rises in defiance...");
            }
        }
        else tangleTimer -= uiDiff;

        if (mossTimer <= uiDiff)
        {
            if (m_creature->GetVictim()->HasAura(SPELL_MOSS_HANDS))
            {
                if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_MOSS_FEET) == CAST_OK)
                    mossTimer = 18000;
                m_creature->PMonsterEmote("|cffff8040Mossheart covers %s with moss!|r", nullptr, true, m_creature->GetVictim()->GetName());
            }
            else
            {
                if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_MOSS_HANDS) == CAST_OK)
                    mossTimer = 18000;
                m_creature->PMonsterEmote("|cffff8040Mossheart covers %s with moss!|r", nullptr, true, m_creature->GetVictim()->GetName());
            }
        }
        else mossTimer -= uiDiff;
        DoMeleeAttackIfReady();
    }


    void ApplyDredge()
    {
        if (Player* player = m_creature->FindNearestHostilePlayer(10))
        {
            if (Group* group = player->GetGroup())
            {
                for (GroupReference* itr = group->GetFirstMember(); itr != nullptr; itr = itr->next())
                {
                    Player* playerGroup = itr->getSource();
                    if (!playerGroup || playerGroup->HasAura(SPELL_DREDGE_SICKNESS))
                        continue;

                    playerGroup->AddAura(SPELL_DREDGE_SICKNESS);

                }
                phase++;
            }
        }
    }

    void EnterCombat(Unit*) override
    {
        engaged = true;

        m_creature->PMonsterYell("Who dares defile the sanctity of the morass...");
    }

    void KilledUnit(Unit*) override
    {
        m_creature->PMonsterSay("You belong to the bog now...");
    }

    void JustDied(Unit*) override
    {
        m_creature->PMonsterSay("I failed...");
    }
};


struct antnormi_cotAI : public ScriptedAI
{
    antnormi_cotAI(Creature* c) : ScriptedAI(c)
    {
        Reset();
    }

    uint32 thrashTimer;
    uint32 coweringRoarTimer;
    uint32 shadowShockTimer;
    uint32 enrageTimer;
    bool enraged;


    enum Spells
    {
        SPELL_THRASH = 21919,
        SPELL_COWERING_ROAR = 16096,
        SPELL_SHADOW_SHOCK = 17234,
        SPELL_ENRAGE = 28131
    };


    void Reset() override
    {
        thrashTimer = 12000;
        coweringRoarTimer = 20000;
        shadowShockTimer = 15000;
        enrageTimer = 300000;
        enraged = false;
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (thrashTimer <= uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_THRASH) == CAST_OK)
                thrashTimer = 12000;
        }
        else thrashTimer -= uiDiff;

        if (coweringRoarTimer <= uiDiff)
        {
            m_creature->PMonsterEmote("|cffff8040Antnormi is preparing for a bellowing roar!|r", nullptr, true);
            coweringRoarTimer = 25000;

            DoAfterTime(m_creature, 5 * IN_MILLISECONDS, [m_creature = m_creature, this]() {
                DoCastSpellIfCan(m_creature->GetVictim(), SPELL_COWERING_ROAR);
                });
        }
        else coweringRoarTimer -= uiDiff;

        if (shadowShockTimer <= uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetHostileCasterInRange(0, 30), SPELL_SHADOW_SHOCK) == CAST_OK)
                shadowShockTimer = 10000;

        }
        else shadowShockTimer -= uiDiff;

        if (!enraged && enrageTimer <= uiDiff)
        {
            DoCastSpellIfCan(m_creature->GetVictim(), SPELL_ENRAGE);
            enraged = true;
            m_creature->PMonsterYell("We have come too far to be stopped, this ends now!");
        }
        else enrageTimer -= uiDiff;

        if (!enraged && m_creature->GetHealthPercent() <= 20.0f)
        {
            enraged = true;
            DoCastSpellIfCan(m_creature, SPELL_ENRAGE);
            m_creature->PMonsterYell("We have come too far to be stopped, this ends now!");
        }

        DoMeleeAttackIfReady();
    }

    void JustDied(Unit*) override
    {
        m_creature->PMonsterSay("My death changes nothing, YOU HEAR ME? NOTHING!");
    }

    void EnterCombat(Unit*) override
    {
        m_creature->PMonsterYell("You again?! So the others have failed to stop the lapdogs of the Bronze, pathetic. Time to take the matter to my own hands.");
    }
};


struct injured_defender_cot : public ScriptedAI
{
    injured_defender_cot(Creature* c) : ScriptedAI(c)
    {
        Reset();
    }

    uint32 m_uiUpdateTimer;
    int phase;


    void Reset()
    {
        m_uiUpdateTimer = 1000;
        phase = 0;

        m_creature->SetHealthPercent(40.0f);
    }


    enum CreatureEntries
    {
        NPC_DEFENDER = 65001,
        NPC_DRAGONSPAWN = 65100
    };

    void UpdateAI(uint32 const uiDiff) override
    {
        if (m_uiUpdateTimer < uiDiff && m_creature->GetMapId() == 269)
        {
            switch (phase)
            {

            case 0:
            {
                std::list<Player*> players;
                MaNGOS::AnyPlayerInObjectRangeCheck check(m_creature, 40.0f, true, false);
                MaNGOS::PlayerListSearcher<MaNGOS::AnyPlayerInObjectRangeCheck> searcher(players, check);

                Cell::VisitWorldObjects(me, searcher, 40.0f);

                if (players.size() != 0)
                {
                    phase++;
                }
                m_uiUpdateTimer = 2000;
                break;
            }
            case 1:
            {
                m_creature->PMonsterYell("They're everywhere! They're attacking the Caverns!");
                m_uiUpdateTimer = 3000;
                phase++;
                break;
            }
            case 2:
            {
                m_creature->MonsterMove(-1906.15f, 6617.59f, -154.88);
                m_creature->PMonsterSay("Heroes! I must report whats happening! Keep them back!");
                m_creature->DespawnOrUnsummon(5000);

                dragonSpawn1 = m_creature->SummonCreature(NPC_DRAGONSPAWN, -1809.58f, 6708.89f, -187.67f, 0, TEMPSUMMON_DEAD_DESPAWN);
                dragonSpawn2 = m_creature->SummonCreature(NPC_DRAGONSPAWN, -1808.60f, 6701.76f, -188.38f, 0, TEMPSUMMON_DEAD_DESPAWN);
                dragonSpawn3 = m_creature->SummonCreature(NPC_DRAGONSPAWN, -1813.18f, 6692.31f, -188.27f, 0, TEMPSUMMON_DEAD_DESPAWN);

                dragonGuidCount = 3;


                if (dragonSpawn1 && dragonSpawn2 && dragonSpawn3)
                {
                    dragonSpawn1->MonsterMove(-1850.10f, 6701.65f, -182.06f);
                    dragonSpawn2->MonsterMove(-1844.97f, 6697.32f, -182.67f);
                    dragonSpawn3->MonsterMove(-1839.84f, 6693.14f, -182.99f);
                }
                m_uiUpdateTimer = 2000;
                phase++;
                break;
            }

            }

            m_uiUpdateTimer = 1000;
        }
        else m_uiUpdateTimer -= uiDiff;

        DoMeleeAttackIfReady();
    }
};



CreatureAI* GetAI_infinite_dragonspawn(Creature* _Creature)
{
    return new infinite_dragonspawnAI(_Creature);
}

CreatureAI* GetAI_frostbitten_bronze_soldier(Creature* _Creature)
{
    return new frostbitten_bronze_soldierAI(_Creature);
}

CreatureAI* GetAI_infinite_riftguard(Creature* _Creature)
{
    return new infinite_riftguardAI(_Creature);
}

CreatureAI* GetAI_infinite_riftweaver(Creature* _Creature)
{
    return new infinite_riftweaverAI(_Creature);
}

CreatureAI* GetAI_infinite_whelp(Creature* _Creature)
{
    return new infinite_whelpAI(_Creature);
}

CreatureAI* GetAI_infinite_timeripper(Creature* _Creature)
{
    return new infinite_timeripperAI(_Creature);
}

CreatureAI* GetAI_infinite_riftlord(Creature* _Creature)
{
    return new infinite_riftlordAI(_Creature);
}

CreatureAI* GetAI_aqir_add(Creature* _Creature)
{
    return new aqir_addAI(_Creature);
}

CreatureAI* GetAI_swamp_npcs_cot(Creature* _Creature)
{
    return new swamp_npcs_cotAI(_Creature);
}

CreatureAI* GetAI_chronar_boss_cot(Creature* _Creature)
{
    return new chronar_boss_cotAI(_Creature);
}

CreatureAI* GetAI_larvae_cot(Creature* _Creature)
{
    return new larvae_cotAI(_Creature);
}

CreatureAI* GetAI_harbinger_boss_cot(Creature* _Creature)
{
    return new harbinger_boss_cotAI(_Creature);
}

CreatureAI* GetAIepochronos_boss_cot(Creature* _Creature)
{
    return new epochronos_boss_cotAI(_Creature);
}

CreatureAI* GetAI_shade_cot(Creature* _Creature)
{
    return new shade_cotAI(_Creature);
}

CreatureAI* GetAI_chromie_boss_cot(Creature* _Creature)
{
    return new chromie_boss_cotAI(_Creature);
}

CreatureAI* GetAI_chromie_portal_cot(Creature* _Creature)
{
    return new chromie_portal_cotAI(_Creature);
}

CreatureAI* GetAI_rotmaw_cot(Creature* _Creature)
{
    return new rotmaw_cotAI(_Creature);
}

CreatureAI* GetAI_mossheart_cot(Creature* _Creature)
{
    return new mossheart_cotAI(_Creature);
}

CreatureAI* GetAI_antnormi_cot(Creature* _Creature)
{
    return new antnormi_cotAI(_Creature);
}

CreatureAI* GetAI_injured_defender_cot(Creature* _Creature)
{
    return new injured_defender_cot(_Creature);
}

void AddSC_instance_caverns_of_time()
{
    Script* newscript;
    newscript = new Script;
    newscript->Name = "instance_caverns_of_time";
    newscript->GetInstanceData = &GetInstanceData_instance_caverns_of_time;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "frostbitten_bronze_soldier";
    newscript->GetAI = &GetAI_frostbitten_bronze_soldier;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "infinite_dragonspawn";
    newscript->GetAI = &GetAI_infinite_dragonspawn;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "infinite_riftguard";
    newscript->GetAI = &GetAI_infinite_riftguard;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "infinite_riftweaver";
    newscript->GetAI = &GetAI_infinite_riftweaver;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "infinite_whelp";
    newscript->GetAI = &GetAI_infinite_whelp;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "infinite_timeripper";
    newscript->GetAI = &GetAI_infinite_timeripper;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "infinite_riftlord";
    newscript->GetAI = &GetAI_infinite_riftlord;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "aqir_add";
    newscript->GetAI = &GetAI_aqir_add;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "swamp_npcs_cot";
    newscript->GetAI = &GetAI_swamp_npcs_cot;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "chronar_boss_cot";
    newscript->GetAI = &GetAI_chronar_boss_cot;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "harbinger_boss_cot";
    newscript->GetAI = &GetAI_harbinger_boss_cot;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "epochronos_boss_cot";
    newscript->GetAI = &GetAIepochronos_boss_cot;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "larvae_cot";
    newscript->GetAI = &GetAI_larvae_cot;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "shade_cot";
    newscript->GetAI = &GetAI_shade_cot;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "chromie_boss_cot";
    newscript->GetAI = &GetAI_chromie_boss_cot;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "chromie_portal_cot";
    newscript->GetAI = &GetAI_chromie_portal_cot;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "antnormi_cot";
    newscript->GetAI = &GetAI_antnormi_cot;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "rotmaw_cot";
    newscript->GetAI = &GetAI_rotmaw_cot;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "mossheart_cot";
    newscript->GetAI = &GetAI_mossheart_cot;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "injured_defender_cot";
    newscript->GetAI = &GetAI_injured_defender_cot;
    newscript->RegisterSelf();

}
