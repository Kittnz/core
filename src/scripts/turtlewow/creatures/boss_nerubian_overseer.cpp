#include "scriptPCH.h"

enum
{
    SPELL_WEB_SPRAY          = 29484
};

struct boss_nerubian_overseerAI : public ScriptedAI
{
    boss_nerubian_overseerAI(Creature *c) : ScriptedAI(c)
    {
        Reset();
    }

    uint32 WebSpray_Timer;
    uint32 WebExplode_Timer;

    Unit* webTarget;

    void SetDefaults() {
        WebSpray_Timer = 20000;
        WebExplode_Timer = 10000;

        webTarget = nullptr;
    }

    void Aggro(Unit *who)
    {
    }

    void Reset()
    {
        SetDefaults();
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
        uint32 m_respawn_delay_Timer = urand(64*HOUR, 72*HOUR);

        /** DRRS */
        if (m_creature->GetSpawnFlags() & SPAWN_FLAG_DYNAMIC_RESPAWN_TIME &&
            sWorld.GetActiveSessionCount() > BLIZZLIKE_REALM_POPULATION)

            m_respawn_delay_Timer *= float(BLIZZLIKE_REALM_POPULATION) / float(sWorld.GetActiveSessionCount());

        m_creature->SetRespawnDelay(m_respawn_delay_Timer);
        m_creature->SetRespawnTime(m_respawn_delay_Timer);
        m_creature->SaveRespawnTime();
    }

    void UpdateAI(const uint32 diff)
    {

        //Return since we have no target
        if (!m_creature->SelectHostileTarget() || !m_creature->getVictim())
            return;

        if (WebSpray_Timer < diff)
        {
            webTarget = m_creature->GetNearestVictimInRange(10, 60);
            DoCast(webTarget, SPELL_WEB_SPRAY);
            WebSpray_Timer = 30000;
        }
        else
        {
            WebSpray_Timer -= diff;
            if (webTarget)
            {
                if (WebExplode_Timer < diff)
                {
                    WebExplode_Timer = 10000;
                    m_creature->DoKillUnit(webTarget);
                    webTarget = nullptr;
                }
                else
                {
                    WebExplode_Timer -= diff;
                }
            }
        }

        DoMeleeAttackIfReady();
    }

};

CreatureAI* GetAI_boss_nerubian_overseer(Creature *_Creature)
{
    return new boss_nerubian_overseerAI(_Creature);
}

void AddSC_boss_nerubian_overseer()
{
    Script *newscript;
    newscript = new Script;
    newscript->Name = "boss_nerubian_overseer";
    newscript->GetAI = &GetAI_boss_nerubian_overseer;
    newscript->RegisterSelf();
}