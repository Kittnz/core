#include "scriptPCH.h"

enum
{

};

struct drogonAI : public ScriptedAI
{
    drogonAI(Creature *c) : ScriptedAI(c)
    {
        // unused
    }


    void Aggro(Unit *who)
    {
        Creature* daenerys = GetClosestCreatureWithEntry(m_creature, 50071, 150);
        if (daenerys)
            daenerys->PMonsterSay("Dracarys.");

        std::list<Player*> players;
        GetPlayersWithinRange(players, 150);
        m_creature->InterruptNonMeleeSpells(false);
        DoCast(m_creature, 29388); // Breath of Fire

        for (auto &player : players) {
            if (player && player->isAlive())
                m_creature->DealDamage(player, player->GetHealth() * 2, NULL, DIRECT_DAMAGE, SPELL_SCHOOL_MASK_NORMAL, NULL, false);
        }
    }

    void Reset()
    {
       // unused
    }

    void JustRespawned()
    {
        // unused
    }

    void KilledUnit(Unit* victim)
    {
        // unused
    }

    void JustDied(Unit* /*pKiller*/)
    {
        // unused
    }

    void UpdateAI(const uint32 diff)
    {
        //Return since we have no target
        if (!m_creature->SelectHostileTarget() || !m_creature->getVictim())
            return;

        if (m_creature->GetHealthPercent() < 100.0f)
            m_creature->SetFullHealth();

        DoMeleeAttackIfReady();
    }

};

CreatureAI* GetAI_drogon(Creature *_Creature)
{
    return new drogonAI(_Creature);
}

void AddSC_drogon()
{
    Script *newscript;
    newscript = new Script;
    newscript->Name = "drogon";
    newscript->GetAI = &GetAI_drogon;
    newscript->RegisterSelf();
}