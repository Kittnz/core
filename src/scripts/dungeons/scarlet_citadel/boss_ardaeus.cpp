/*
 * Copyright (C) 2021-2022 Nolin (nolin.nolin.nolin.nolin@gmail.org)
 *
 * This is private software and may not be shared under any circumstances,
 * absent permission of Nolin.
 */

#include "scriptPCH.h"
#include "scarlet_citadel.h"

struct boss_ardaeusAI : public ScriptedAI
{
    explicit boss_ardaeusAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        m_pInstance = static_cast<ScriptedInstance*>(pCreature->GetInstanceData());
        Reset();
    }

    ScriptedInstance* m_pInstance;

    void Reset() override
    {

    }

    void Aggro(Unit* /*pWho*/) override
    {
        if (!m_pInstance)
            return;

        m_pInstance->SetData(ScarletCitadelEncounter::TYPE_ARDAEUS, IN_PROGRESS);
        m_creature->SetInCombatWithZone();
    }

    void JustReachedHome() override
    {
        if (!m_pInstance)
            return;
        
        m_pInstance->SetData(ScarletCitadelEncounter::TYPE_ARDAEUS, FAIL);
    }

    void JustDied(Unit* /*pKiller*/) override
    {
        if (!m_pInstance)
            return;
    
        m_pInstance->SetData(ScarletCitadelEncounter::TYPE_ARDAEUS, DONE);
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_boss_ardaeus(Creature* pCreature)
{
    return new boss_ardaeusAI(pCreature);
}

void AddSC_boss_ardaeus()
{
    Script *pNewscript;
    pNewscript = new Script;
    pNewscript->Name = "boss_ardaeus";
    pNewscript->GetAI = &GetAI_boss_ardaeus;
    pNewscript->RegisterSelf();
}
