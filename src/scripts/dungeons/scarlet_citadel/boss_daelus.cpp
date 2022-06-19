/*
 * Copyright (C) 2021-2022 Nolin (nolin.nolin.nolin.nolin@gmail.org)
 *
 * This is private software and may not be shared under any circumstances,
 * absent permission of Nolin.
 */

#include "scriptPCH.h"
#include "boss_daelus.hpp"
#include "scarlet_citadel.h"


class boss_daelusAI : public ScriptedAI
{
public:
    explicit boss_daelusAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        m_pInstance = static_cast<instance_scarlet_citadel*>(pCreature->GetInstanceData());
        boss_daelusAI::Reset();
        m_bWasInFight = false;
    }

private:
    std::uint32_t m_uiCallMonks_Timer{};

    std::vector<ObjectGuid> m_vSpawnedAdds;

    instance_scarlet_citadel* m_pInstance{};

    bool m_bWasInFight{};

public:
    void Reset() override
    {
        m_uiCallMonks_Timer = 5000;

        if (m_pInstance && m_bWasInFight)
        {
            DespawnAdds();

            m_pInstance->SetData(ScarletCitadelEncounter::TYPE_DAELUS, FAIL);

            m_bWasInFight = false;
        }
    }

    void Aggro(Unit* /*pWho*/) override
    {
        if (!m_pInstance)
            return;

        m_bWasInFight = true;

        m_creature->SetInCombatWithZone();

        m_pInstance->SetData(ScarletCitadelEncounter::TYPE_DAELUS, IN_PROGRESS);
    }

    void JustDied(Unit* /*pKiller*/) override
    {
        m_creature->SetRespawnDelay(604800);

        if (!m_pInstance)
            return;

        m_pInstance->SetData(ScarletCitadelEncounter::TYPE_DAELUS, DONE);
    }

    void SummonAdds()
    {
        if (Creature* pDaelus{ m_pInstance->GetSingleCreatureFromStorage(NPC_DAELUS) })
        {
            for (std::uint8_t i{ 0 }; i < nsDaelus::NUMBER_OF_ADDS; ++i )
            {
                if (Creature* pSummoned{ m_creature->SummonCreature(nsDaelus::NPC_CITADEL_MONK,
                    nsDaelus::vfSpawnPoints[i].m_fX,
                    nsDaelus::vfSpawnPoints[i].m_fY,
                    nsDaelus::vfSpawnPoints[i].m_fZ,
                    nsDaelus::vfSpawnPoints[i].m_fO,TEMPSUMMON_MANUAL_DESPAWN) })
                {
                    pSummoned->GetMotionMaster()->Clear();
                    pSummoned->GetMotionMaster()->MoveFollow(pDaelus, ATTACK_DISTANCE, 0.f);
                    pSummoned->SetTargetGuid(0);

                    m_vSpawnedAdds.push_back(pSummoned->GetObjectGuid());
                }
            }
        }
    }

    void DespawnAdds()
    {
        if (!m_vSpawnedAdds.empty())
        {
            if (const auto map{ m_creature->GetMap() })
            {
                for (const auto& guid : m_vSpawnedAdds)
                {
                    if (Creature* pCreature{ map->GetCreature(guid) })
                    {
                        if (TemporarySummon* tmpSumm{ static_cast<TemporarySummon*>(pCreature) })
                        {
                            tmpSumm->UnSummon();
                        }
                    }
                }

                m_vSpawnedAdds.clear();
            }
        }
    }

    void CallMonks(const uint32& uiDiff)
    {
        if (m_uiCallMonks_Timer < uiDiff)
        {
            boss_daelusAI::SummonAdds();

            m_uiCallMonks_Timer = 5000;
        }
        else
        {
            m_uiCallMonks_Timer -= uiDiff;
        }
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        CallMonks(uiDiff);

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_boss_daelus(Creature* pCreature)
{
    return new boss_daelusAI(pCreature);
}

void AddSC_boss_daelus()
{
    Script* pNewscript;

    pNewscript = new Script;
    pNewscript->Name = "boss_daelus";
    pNewscript->GetAI = &GetAI_boss_daelus;
    pNewscript->RegisterSelf();
}
