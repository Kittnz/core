#include "scriptPCH.h"

template <typename Functor>
void DoAfterTime(Creature* creature, uint32 p_time, Functor&& function)
{
    creature->m_Events.AddEvent(new LambdaBasicEvent<Functor>(std::move(function)), creature->m_Events.CalculateTime(p_time));
}


struct instance_caverns_of_time : public ScriptedInstance
{
    instance_caverns_of_time(Map* pMap) : ScriptedInstance(pMap)
    {
        Initialize();
    };

    void Initialize() override
    {
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

        uint32 displayId;
        bool isMale = pPlayer->GetGender() == GENDER_MALE;
        switch (pPlayer->GetClass())
        {
        case CLASS_WARRIOR:
            displayId = isMale ? 4446 : 3591;
            break;
        case CLASS_MAGE:
        case CLASS_PRIEST:
            displayId = isMale ? 3348 : 3347;
            break;
        case CLASS_WARLOCK:
            displayId = isMale ? 4461 : 4462;
            break;
        case CLASS_PALADIN:
            displayId = isMale ? 3372 : 3289;
            break;
        case CLASS_DRUID:
        case CLASS_ROGUE:
            displayId = isMale ? 4276 : 4419;
            break;
        case CLASS_SHAMAN:
        case CLASS_HUNTER:
            displayId = isMale ? 4125 : 4393;
            break;
        default:
            displayId = isMale ? 1541 : 4888;
        }

        pPlayer->SetDisplayId(displayId);
    }

    void OnPlayerLeave(Player* pPlayer, bool bJustDestroy) override
    {
        if (!pPlayer)
            return;

        pPlayer->DeMorph();
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

    //void Update(uint32 uiDiff)
    //{

    //}
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

        Unit* currentTarget = m_creature->GetVictim();

        if (currentTarget)
        {
            if (m_Timer <= uiDiff && m_creature->IsWithinMeleeRange(currentTarget))
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
        m_creature->PMonsterYell("You're too late... We are...Infinite!");
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
                Unit* target = m_creature->GetVictimInRange(0, 10);
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
            Unit* target = m_creature->GetVictimInRange(0, 10);
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

    void Reset() override
    {
        m_manaBurnTimer = 3000;
        m_creature->SetPowerPercent(POWER_MANA, 1); // start with 1% mana
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (m_creature->GetPowerPercent(POWER_MANA) == 75)
        {
            m_creature->MonsterTextEmote("begins vibrating with the energy it's absorbed!");
        }

        if (m_creature->GetPowerPercent(POWER_MANA) == 100)
        {
            DoCastSpellIfCan(m_creature->GetVictim(), SPELL_ARCANE_EXPLOSION);

            DoAfterTime(m_creature, 1 * IN_MILLISECONDS, [m_creature = m_creature, this]() {
                m_creature->SetPowerPercent(POWER_MANA, 0);
                });
        }

        if (m_manaBurnTimer <= uiDiff)
        {
            m_creature->ModifyPower(POWER_MANA, 150);

            Player* player = m_creature->FindNearestHostilePlayer(10);

            if (player)
            {
                Group* group = player->GetGroup();

                if (group)
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

    void Reset() override
    {
        m_manaBurnTimer = 3000;
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->HasAura(AURA_SHADOWGUARD))
            m_creature->AddAura(AURA_SHADOWGUARD);

        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (!m_creature->HasAura(AURA_SHADOWGUARD))
            m_creature->AddAura(AURA_SHADOWGUARD);

        DoMeleeAttackIfReady();
    }

    void EnterCombat(Unit*) override
    {
        Player* player = m_creature->FindNearestHostilePlayer(20);

        if (player)
        {
            Group* group = player->GetGroup();

            if (group)
            {
                for (GroupReference* itr = group->GetFirstMember(); itr != nullptr; itr = itr->next())
                {
                    Player* playerGroup = itr->getSource();
                    if (!playerGroup)
                        continue;

                    playerGroup->AddAura(SPELL_TIME_LAPSE);
                }
            }
        }


        // Run away to boss here. Add later.

        m_creature->PMonsterYell("It seems the Bronze Dragonflight sent their pawns to fix what they could not, you've come far to stop us, but your advance stops here!");
        m_creature->PMonsterEmote("Infinite Timeripper opens a rift in time!");

        DoAfterTime(m_creature, 5 * IN_MILLISECONDS, [m_creature = m_creature, this]() {
            m_creature->PMonsterYell("Your time has come, what we have summoned is but a hollow reflection of what we have seen in the future. Savor these moments, mortals. They will be your last. Retreat!");
            });

        // Harbinger and Aqir emerge from portal.

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
        SPELL_PLAGUE_CLOUD = 23861
    };

    uint32 mindBlastTimer;
    uint32 healTimer;
    uint32 shadowStrikeTimer;
    uint32 piercingShadowTimer;
    uint32 poisonVolleyTimer;
    uint32 plagueCloudtimer;


    void Reset() override
    {
        mindBlastTimer = 1000;
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
                m_creature->CastStop();

                if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_MIND_BLAST) == CAST_OK)
                    mindBlastTimer = 8000;
                else
                    mindBlastTimer = 1000; // try again
            }
            else
                mindBlastTimer -= uiDiff;

            if (healTimer <= uiDiff)
            {
                if (DoCastSpellIfCan(m_creature->SelectRandomFriendlyTarget(nullptr, 15.0f), SPELL_HEAL) == CAST_OK)
                    healTimer = 15000;
                else
                    healTimer = 1000; // try again

            }
            else
                healTimer -= uiDiff;
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
            m_creature->SetRooted(true);

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

                plagueCloudtimer = 20000;
            }
            else
                plagueCloudtimer -= uiDiff;
            break;
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

    uint32 shoutTimer = 5000;
    uint32 mortalStriketimer = 18000;
    uint32 sweepingSlamTimer = 25000;
    uint32 healthPhase = 0;
    bool enrageActive = false;

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
            }
            break;
        case 1:
            if (m_creature->GetHealthPercent() <= 50.0)
            {
                DoCastSpellIfCan(m_creature->GetVictim(), SPELL_REFLECTION);
                healthPhase++;
            }
            break;
        case 2:
            if (m_creature->GetHealthPercent() <= 25.0)
            {
                DoCastSpellIfCan(m_creature->GetVictim(), SPELL_REFLECTION);
                healthPhase++;
            }
            break;

            m_creature->PMonsterYell("Your magic turns against you!");
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

    uint32 veilTimer = 5000;
    uint32 instanityTimer = 15000;
    bool addsSpawned = false;
    bool burstDone = false;
    float oldHP = 100.0f;

    Unit* mainTarget;

    enum AddEntries
    {
        NPC_LARVAE = 17173
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

        mainTarget = m_creature->GetVictim();

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
                Creature* larvae = m_creature->SummonCreature(NPC_LARVAE, mainTarget->GetPositionX() + frand(-8.0f, 8.0f), mainTarget->GetPositionY() + frand(-8.0f, 8.0f), mainTarget->GetPositionZ(), 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT);

                larvae->AddThreat(mainTarget, 100.0f);
            }

            m_creature->MonsterWhisper("Come, servants of rot. Consume!", mainTarget, true);

        }

        if (!burstDone && m_creature->GetHealthPercent() <= 35.0f)
        {
            burstDone = true;

            m_creature->AddAura(SPELL_SHADOWFORM);
            DoCastSpellIfCan(m_creature->GetVictim(), SPELL_SHADOW_BURST);

            m_creature->PMonsterYell("Ak'agthshi ma uhnish, ak'uq shg'cul vwahuhn! H'iwn iggksh Phquathi gag OOU KAAXTH SHUUL!");
            m_creature->MonsterWhisper("Our numbers are endless, our power beyond reckoning! All who oppose the Destroyer will DIE A THOUSAND DEATHS!", mainTarget, true);
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
        m_creature->MonsterWhisper("How is this possible...", m_creature->GetVictim(), true);
    }
};



struct larvae_cotAI : public ScriptedAI
{
    larvae_cotAI(Creature* c) : ScriptedAI(c)
    {
        Reset();
    }

    enum Spells
    {
        SPELL_DRAIN_LIFE = 17238
    };

    void Reset() override
    {

    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        DoCastSpellIfCan(m_creature->GetVictim(), SPELL_DRAIN_LIFE);
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
    newscript->Name = "larvae_cot";
    newscript->GetAI = &GetAI_larvae_cot;
    newscript->RegisterSelf();
}
