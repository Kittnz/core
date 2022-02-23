/*
 * Copyright (C) 2021-2022 Nolin (nolin.nolin.nolin.nolin@gmail.org)
 *
 * This is private software and may not be shared under any circumstances,
 * absent permission of Nolin.
 */

#include "scriptPCH.h"
#include "scarlet_citadel.h"

struct boss_daelusAI : public ScriptedAI
{
    explicit boss_daelusAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        m_pInstance = static_cast<instance_scarlet_citadel*>(pCreature->GetInstanceData());
        boss_daelusAI::Reset();
    }

    instance_scarlet_citadel* m_pInstance;

    void Reset() override
    {

    }

    void Aggro(Unit* /*pWho*/) override
    {
        if (!m_pInstance)
            return;

        m_pInstance->SetData(ScarletCitadelEncounter::TYPE_DAELUS, IN_PROGRESS);
        m_creature->SetInCombatWithZone();
    }

    void JustReachedHome() override
    {
        if (!m_pInstance)
            return;
        
        m_pInstance->SetData(ScarletCitadelEncounter::TYPE_DAELUS, FAIL);
    }

    void JustDied(Unit* /*pKiller*/) override
    {
        if (!m_pInstance)
            return;
    
        m_pInstance->SetData(ScarletCitadelEncounter::TYPE_DAELUS, DONE);
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_boss_daelus(Creature* pCreature)
{
    return new boss_daelusAI(pCreature);
}

void AddSC_boss_daelus()
{
    Script *pNewscript;
    pNewscript = new Script;
    pNewscript->Name = "boss_daelus";
    pNewscript->GetAI = &GetAI_boss_daelus;
    pNewscript->RegisterSelf();
}
