#include "scriptPCH.h"

enum
{
    SPELL_ICE_LOCK          = 22856,
};

struct boss_xmas_wolfAI : public ScriptedAI
{
    boss_xmas_wolfAI(Creature *c) : ScriptedAI(c)
    {
        Reset();
    }

    uint32 IceBlock_Timer;
    uint32 Heal_Timer;

    int requiredFireHits;
    int currentFireHits;
    int isFrozen;

    void SetDefaults() {
        IceBlock_Timer = 12000;
        Heal_Timer = 1000;
        requiredFireHits = 3;
        currentFireHits = 0;
        isFrozen = false;
    }

    void Aggro(Unit *who)
    {
        m_creature->PMonsterYell("Leave me alone! I want to eat more snow!");
    }

    void Reset()
    {
        SetDefaults();
        m_creature->RemoveAura(SPELL_ICE_LOCK, EFFECT_INDEX_0);
        m_creature->RemoveAura(SPELL_ICE_LOCK, EFFECT_INDEX_1);
        m_creature->RemoveAura(SPELL_ICE_LOCK, EFFECT_INDEX_2);
    }

    void JustRespawned()
    {
        SetDefaults();
    }

    void KilledUnit(Unit* victim)
    {

    }

    void JustDied(Unit* /*pKiller*/)
    {
        m_creature->PMonsterSay("Fa... Father? Why?");

        uint32 m_respawn_delay_Timer = urand(12, 32*HOUR);

        /** DRRS */
        if (m_creature->GetSpawnFlags() & SPAWN_FLAG_DYNAMIC_RESPAWN_TIME &&
            sWorld.GetActiveSessionCount() > BLIZZLIKE_REALM_POPULATION)

            m_respawn_delay_Timer *= float(BLIZZLIKE_REALM_POPULATION) / float(sWorld.GetActiveSessionCount());

        m_creature->SetRespawnDelay(m_respawn_delay_Timer);
        m_creature->SetRespawnTime(m_respawn_delay_Timer);
        m_creature->SaveRespawnTime();
    }

    void SpellHit(Unit* pCaster, const SpellEntry* pSpell)
    {
        if (isFrozen && pSpell->School == SPELL_SCHOOL_FIRE)
        {
            currentFireHits++;
            if (currentFireHits >= requiredFireHits)
            {
                m_creature->PMonsterYell("NO! I WASN'T READY YET!");

                m_creature->RemoveAura(SPELL_ICE_LOCK, EFFECT_INDEX_0);
                m_creature->RemoveAura(SPELL_ICE_LOCK, EFFECT_INDEX_1);
                m_creature->RemoveAura(SPELL_ICE_LOCK, EFFECT_INDEX_2);

                requiredFireHits = urand(3, 5);
                isFrozen = false;
            }
        }
    }

    void UpdateAI(const uint32 diff)
    {
        if (isFrozen) {
            if (Heal_Timer < diff)
            {
                if (m_creature->GetHealthPercent() <= 99.0f)
                    m_creature->SetHealthPercent(m_creature->GetHealthPercent() + 1.0f);
                Heal_Timer = 1000;
            } else {
                Heal_Timer -= diff;
            }
        }

        //Return since we have no target
        if (!m_creature->SelectHostileTarget() || !m_creature->getVictim())
            return;

        // IceBlock_Timer
        if (!isFrozen) {
            if (IceBlock_Timer < diff) {
                m_creature->PMonsterYell("Cold!");
                currentFireHits = 0;
                DoCast(m_creature, SPELL_ICE_LOCK);
                IceBlock_Timer = urand(12000, 16000);
                isFrozen = true;
            } else {
                IceBlock_Timer -= diff;
            }
        }

        DoMeleeAttackIfReady();
    }

};

CreatureAI* GetAI_boss_xmas_wolf(Creature *_Creature)
{
    return new boss_xmas_wolfAI(_Creature);
}

void AddSC_boss_xmas_wolf()
{
    Script *newscript;
    newscript = new Script;
    newscript->Name = "boss_xmas_wolf";
    newscript->GetAI = &GetAI_boss_xmas_wolf;
    newscript->RegisterSelf();
}