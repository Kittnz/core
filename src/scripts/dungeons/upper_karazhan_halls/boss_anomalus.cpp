#include "scriptPCH.h"

enum
{
    SPELL_UNSTABLE_ZONE = 51103, // aoe visual on ground
    SPELL_UNSTABLE_MAGIC = 51104, // deals damage to target
};

struct npc_unstable_magic_zoneAI : public ScriptedAI
{
    npc_unstable_magic_zoneAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        Reset();
        m_creature->CastSpell(m_creature, SPELL_UNSTABLE_ZONE, true);
        m_creature->m_Events.AddLambdaEventAtOffset([npc = m_creature]() { npc->DoKillUnit(); }, 8000);
    }

    void Reset() override
    {
        SetCombatMovement(false);
        SetMeleeAttack(false);
    }

    void DamageTaken(Unit* pAttacker, uint32& damage) override
    {
        if (pAttacker == m_creature)
            return;

        damage = 0;
    }

    void JustDied(Unit*) override
    {
        if (Player* pPlayer = m_creature->FindNearestPlayer(8.0f))
        {
            m_creature->CastSpell(pPlayer, SPELL_UNSTABLE_MAGIC, true);
            return;
        }

        std::list<Player*> players;
        m_creature->GetAlivePlayerListInRange(m_creature, players, 200.0f);
        for (Player* pPlayer : players)
            m_creature->CastSpell(pPlayer, SPELL_UNSTABLE_MAGIC, true);
    }
};

CreatureAI* GetAI_npc_unstable_magic_zone(Creature* pCreature)
{
    return new npc_unstable_magic_zoneAI(pCreature);
}

void AddSC_boss_anomalus()
{
    Script* newscript;

    newscript = new Script;
    newscript->Name = "npc_unstable_magic_zone";
    newscript->GetAI = &GetAI_npc_unstable_magic_zone;
    newscript->RegisterSelf();
}
