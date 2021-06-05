#include "scriptPCH.h"

enum
{
    SPELL_RAIN_OF_FIRE = 19717,
    SPELL_BLOOD_FUNNEL = 24617,
    SPELL_CLEAVE = 20691,
    SPELL_TWIN_TELEPORT_VISUAL = 26638,
    SPELL_FIRE_NOVA = 18432
};

enum
{
    CREATURE_ECHO_OF_GERASTRASZ = 50088
};

struct boss_gerastraszAI : public ScriptedAI
{
    boss_gerastraszAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        Reset();
    }

    uint32 m_uiRainOfFireTimer;
    uint32 m_uiCleaveTimer;
    uint32 m_uiBloodFunnelTimer;

    bool first_echo_summoned;
    bool second_echo_summoned;
    bool third_echo_summoned;

    Creature* currentEcho;

    void Reset() override
    {
        m_uiRainOfFireTimer = urand(10000, 12000);
        m_uiCleaveTimer = urand(3000, 6000);
        m_uiBloodFunnelTimer = 20000;

        first_echo_summoned = false;
        second_echo_summoned = false;
        third_echo_summoned = false;

        currentEcho = nullptr;
    }

    void Aggro(Unit* pWho) override
    {
        m_creature->PMonsterYell("Who dares disrupt our majestic plan? The master won't like this.");
        m_creature->SetInCombatWithZone();
    }

    void JustDied(Unit* pKiller) override
    {
        if (currentEcho)
        {
            currentEcho->DisappearAndDie();
            currentEcho = nullptr;
        }

        m_creature->PMonsterSay("Already? So soon...");
    }

    void IgniteEcho()
    {
        m_creature->PMonsterYell("BAH! USELESS MINION!");
        m_creature->CastSpell(m_creature, SPELL_FIRE_NOVA, false);
        m_creature->MonsterTextEmote("Commander Gerastrasz ignites his own echo.");
        m_creature->DealDamage(currentEcho, currentEcho->GetHealth(), nullptr, DIRECT_DAMAGE, SPELL_SCHOOL_MASK_NORMAL, nullptr, false);
    }

    void SummonEcho()
    {
        m_creature->PMonsterYell("I am eternal!");
        Unit* spawnUnit = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0);
        m_creature->SummonCreature(CREATURE_ECHO_OF_GERASTRASZ, spawnUnit->GetPositionX(), spawnUnit->GetPositionY(), spawnUnit->GetPositionZ(), spawnUnit->GetOrientation(), TEMPSUMMON_CORPSE_DESPAWN);
    }

    void JustSummoned(Creature *summoned) override
    {
        summoned->CastSpell(summoned, SPELL_TWIN_TELEPORT_VISUAL, false);
        summoned->MonsterTextEmote("Echo of Gerastrasz prepares to sacrifice himself and heal the Commander.");
        summoned->Attack(summoned->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0), true);
        m_uiBloodFunnelTimer = 20000;
        currentEcho = summoned;
    }

    void SummonedCreatureDespawn(Creature*)
    {
        currentEcho = nullptr;
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (m_creature->GetHealthPercent() <= 75 && !first_echo_summoned)
        {
            if (currentEcho)
                IgniteEcho();
            else
            {
                SummonEcho();
                first_echo_summoned = true;
            }
        }

        if (m_creature->GetHealthPercent() <= 50 && !second_echo_summoned)
        {
            if (currentEcho)
                IgniteEcho();
            else
            {
                SummonEcho();
                second_echo_summoned = true;
            }
        }

        if (m_creature->GetHealthPercent() <= 25 && !third_echo_summoned)
        {
            if (currentEcho)
                IgniteEcho();
            else
            {
                SummonEcho();
                third_echo_summoned = true;
            }
        }

        if (currentEcho)
        {
            if (m_uiBloodFunnelTimer < uiDiff)
            {
                currentEcho->AddUnitState(UNIT_STAT_ROOT);
                currentEcho->MonsterTextEmote("Echo of Gerastrasz begins to heal the Commander.");
                currentEcho->CastSpell(m_creature, SPELL_BLOOD_FUNNEL, false);
                m_uiBloodFunnelTimer = 10350;
            }
            else
                m_uiBloodFunnelTimer -= uiDiff;
        }

        // Rain of Fire
        if (m_uiRainOfFireTimer < uiDiff)
        {
            m_creature->InterruptNonMeleeSpells(false);
            if (DoCastSpellIfCan(m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0), SPELL_RAIN_OF_FIRE) == CAST_OK)
            {
                m_creature->PMonsterYell("The sky will fall upon you, mortals!");
                m_uiRainOfFireTimer = urand(16000, 24000);
            }
        }
        else
            m_uiRainOfFireTimer -= uiDiff;

        // Cleave
        if (m_uiCleaveTimer < uiDiff)
        {
            DoCastSpellIfCan(m_creature->GetVictim(), SPELL_CLEAVE);
            m_uiCleaveTimer = urand(6000, 8000);
        }
        else
            m_uiCleaveTimer -= uiDiff;

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_boss_gerastrasz(Creature* pCreature)
{
    return new boss_gerastraszAI(pCreature);
}

void AddSC_boss_gerastrasz()
{
    Script *newscript;
    newscript = new Script;
    newscript->Name = "boss_gerastrasz";
    newscript->GetAI = &GetAI_boss_gerastrasz;
    newscript->RegisterSelf();
}
