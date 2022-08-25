/*
 * Copyright (C) 2021-2022 Nolin (nolin.nolin.nolin.nolin@gmail.org)
 *
 * This is private software and may not be shared under any circumstances,
 * absent permission of Nolin.
 */

#include "scriptPCH.h"
#include "black_morass.h"
#include "boss_chronormu.hpp"


class boss_chronormuAI : public ScriptedAI
{
public:
    explicit boss_chronormuAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        m_pInstance = static_cast<instance_black_morass*>(pCreature->GetInstanceData());
        boss_chronormuAI::Reset();
    }

private:

    instance_black_morass* m_pInstance{};

public:
    void Reset() override
    {

    }

    void Aggro(Unit* /*pWho*/) override
    {
        if (!m_pInstance)
            return;

        m_pInstance->SetData(BlackMorassEncounter::TYPE_CHRONORMU, IN_PROGRESS);
        m_creature->SetInCombatWithZone();
    }

    void JustReachedHome() override
    {
        if (!m_pInstance)
            return;

        m_pInstance->SetData(BlackMorassEncounter::TYPE_CHRONORMU, FAIL);
    }

    void JustDied(Unit* /*pKiller*/) override
    {
        if (!m_pInstance)
            return;

        m_pInstance->SetData(BlackMorassEncounter::TYPE_CHRONORMU, DONE);
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_boss_chronormu(Creature* pCreature)
{
    return new boss_chronormuAI(pCreature);
}

void AddSC_boss_chronormu()
{
    Script* pNewscript{};
    pNewscript = new Script;
    pNewscript->Name = "boss_chronormu";
    pNewscript->GetAI = &GetAI_boss_chronormu;
    pNewscript->RegisterSelf();
}
