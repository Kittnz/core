/*
 * Copyright (C) 2021-2022 Nolin (nolin.nolin.nolin.nolin@gmail.org)
 *
 * This is private software and may not be shared under any circumstances,
 * absent permission of Nolin.
 */

#include "scriptPCH.h"

struct boss_sc_attunementAI : public ScriptedAI
{
    boss_sc_attunementAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        boss_sc_attunementAI::Reset();
    }

    void Reset() override
    {

    }

    void Aggro(Unit* /*pWho*/) override
    {
        m_creature->MonsterYell("The Scarlet Crusade stands tall. Come minions of the Scourge and face the Light’s might!");
    }

    void JustDied(Unit* /*pWho*/) override
    {

    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_boss_sc_attunement(Creature* pCreature)
{
    return new boss_sc_attunementAI(pCreature);
}

void AddSC_boss_sc_attunement()
{
    Script* newscript;
    newscript = new Script;
    newscript->Name = "duplicate_dathrohan_balnazzar";
    newscript->GetAI = &GetAI_boss_sc_attunement;
    newscript->RegisterSelf();
}
