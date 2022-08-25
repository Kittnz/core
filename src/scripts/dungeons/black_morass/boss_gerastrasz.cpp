/*
 * Copyright (C) 2021-2022 Nolin (nolin.nolin.nolin.nolin@gmail.org)
 *
 * This is private software and may not be shared under any circumstances,
 * absent permission of Nolin.
 */

#include "scriptPCH.h"
#include "black_morass.h"
#include "boss_gerastrasz.hpp"


class boss_gerastraszAI : public ScriptedAI
{
public:
    explicit boss_gerastraszAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        m_pInstance = static_cast<instance_black_morass*>(pCreature->GetInstanceData());
        boss_gerastraszAI::Reset();
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

        m_pInstance->SetData(BlackMorassEncounter::TYPE_GERASTRASZ, IN_PROGRESS);
        m_creature->SetInCombatWithZone();
    }

    void JustReachedHome() override
    {
        if (!m_pInstance)
            return;
        
        m_pInstance->SetData(BlackMorassEncounter::TYPE_GERASTRASZ, FAIL);
    }

    void JustDied(Unit* /*pKiller*/) override
    {
        if (!m_pInstance)
            return;

        m_pInstance->SetData(BlackMorassEncounter::TYPE_GERASTRASZ, DONE);
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_boss_gerastrasz(Creature* pCreature)
{
    return new boss_gerastraszAI(pCreature);
}

void AddSC_boss_gerastrasz()
{
    Script* pNewscript{};
    pNewscript = new Script;
    pNewscript->Name = "boss_gerastrasz";
    pNewscript->GetAI = &GetAI_boss_gerastrasz;
    pNewscript->RegisterSelf();
}
