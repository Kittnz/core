#include "scriptPCH.h"

enum {
    EMOTE_FRENZY = -1000001,

    SPELL_CLEAVE = 15284,
    SPELL_TIME_LAPSE = 23310,
    SPELL_ENRAGE = 12686,
    SPELL_SAND_BREATH = 20717,
    SPELL_PARTICLES_GREEN = 18951,
    SPELL_SLEEP_VISUAL = 25148,

    SOUND_CTHUNE_WOUND = 8698
};

struct boss_chronormuAI : public ScriptedAI
{
    boss_chronormuAI(Creature *c) : ScriptedAI(c)
    {
        Reset();
    }

    uint32 Cleave_Timer;
    uint32 SandBreath_Timer;
    uint32 TimeStop_Timer;
    uint32 Frenzy_Timer;

    void Reset()
    {
        Cleave_Timer = 5000;
        SandBreath_Timer = 30000;
        TimeStop_Timer = 40000;
        Frenzy_Timer = 120000;
        m_creature->SetActiveObjectState(true);
    }

    void Aggro(Unit *who)
    {

    }

    void KilledUnit(Unit* victim)
    {

    }

    void JustDied(Unit* /*pKiller*/)
    {
        m_creature->SetRespawnTime(604800000);
    }

    void EnterEvadeMode() {
        if (m_creature->getFaction() != 35)
        {
            m_creature->SetObjectScale(0.75);
            m_creature->AddAura(SPELL_PARTICLES_GREEN);
            m_creature->AddAura(SPELL_SLEEP_VISUAL);
            m_creature->SetStandState(UNIT_STAND_STATE_SLEEP);
        }
    }

    void UpdateAI(const uint32 diff)
    {
        //Return since we have no target
        if (!m_creature->SelectHostileTarget() || !m_creature->getVictim())
            return;

        if (m_creature->HasAura(SPELL_SLEEP_VISUAL))
        {
            m_creature->RemoveAurasDueToSpell(SPELL_SLEEP_VISUAL);
            m_creature->SetStandState(UNIT_STAND_STATE_STAND);
        }

        //Cleave
        if (Cleave_Timer < diff)
        {
            DoCast(m_creature->getVictim(), SPELL_CLEAVE);
            Cleave_Timer = irand(6000, 8000);
        }
        else
            Cleave_Timer -= diff;

        //Sand Breath
        if (SandBreath_Timer < diff)
        {
            DoCast(m_creature->getVictim(), SPELL_SAND_BREATH);
            SandBreath_Timer = 30000;
        }
        else
            SandBreath_Timer -= diff;

        //Time Stop
        if (TimeStop_Timer < diff)
        {
            DoCast(m_creature->getVictim(), SPELL_TIME_LAPSE);
            DoPlaySoundToSet(m_creature, SOUND_CTHUNE_WOUND);
            TimeStop_Timer = 40000;
        }
        else
            TimeStop_Timer -= diff;

        //Frenzy
        if (Frenzy_Timer < diff)
        {
            DoCast(m_creature, SPELL_ENRAGE);
            DoScriptText(EMOTE_FRENZY, m_creature);
            Frenzy_Timer = 120000;
        }
        else
            Frenzy_Timer -= diff;


        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_boss_chronormu(Creature *_Creature)
{
    return new boss_chronormuAI (_Creature);
}

void AddSC_boss_chronormu()
{
    Script *newscript;
    newscript = new Script;
    newscript->Name="boss_chronormu";
    newscript->GetAI = &GetAI_boss_chronormu;
    newscript->RegisterSelf();
}