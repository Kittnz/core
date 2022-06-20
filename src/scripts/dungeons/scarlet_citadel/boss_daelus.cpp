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
        m_uiFivePercent = static_cast<std::uint32_t>(m_creature->GetMaxHealth() * .05f);
        m_bWasInFight = false;
    }

private:
    std::uint32_t m_uiFivePercent{};

    std::uint32_t m_uiCallMonks_Timer{};
    std::uint32_t m_uiCheckAndConsumeMonks_Timer{};

    std::vector<ObjectGuid> m_vSpawnedAdds;

    instance_scarlet_citadel* m_pInstance{};

    bool m_bWasInFight{};

public:
    void Reset() override
    {
        m_uiCallMonks_Timer = 5000;
        m_uiCheckAndConsumeMonks_Timer = m_uiCallMonks_Timer;

        if (m_pInstance && m_bWasInFight)
        {
            DespawnAdds();

            m_pInstance->SetData(ScarletCitadelEncounter::TYPE_DAELUS, FAIL);

            m_bWasInFight = false;
        }

        // Misc
        m_creature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_STUNNED);
        m_creature->AddUnitState(UNIT_STAT_ROOT);
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
            const std::uint32_t uiChosenOne{ urand(0, (nsDaelus::NUMBER_OF_ADDS - 1)) };

            for (std::uint8_t i{ 0 }; i < nsDaelus::NUMBER_OF_ADDS; ++i )
            {
                if (Creature* pSummoned{ m_creature->SummonCreature(nsDaelus::NPC_CITADEL_MONK,
                    nsDaelus::vfSpawnPoints[i].m_fX,
                    nsDaelus::vfSpawnPoints[i].m_fY,
                    nsDaelus::vfSpawnPoints[i].m_fZ,
                    nsDaelus::vfSpawnPoints[i].m_fO,TEMPSUMMON_MANUAL_DESPAWN) })
                {
                    // Don't react to face-aggro, neither to damage
                    pSummoned->AI()->SetMeleeAttack(false);
                    pSummoned->AI()->SetCombatMovement(false);
                    pSummoned->SetTargetGuid(0);
                    
                    // Now move to the boss
                    pSummoned->MonsterMoveWithSpeed(m_creature->GetPositionX(), m_creature->GetPositionY(), m_creature->GetPositionZ(), m_creature->GetOrientation(), 1.f, MOVE_PATHFINDING);

                    if (i == uiChosenOne)
                    {
                        pSummoned->AddAura(nsDaelus::SPELL_VULNERABLE); // TODO: Find aura
                    }

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

            m_uiCallMonks_Timer = 15000;
        }
        else
        {
            m_uiCallMonks_Timer -= uiDiff;
        }
    }

    bool CheckAndConsumeMonks(const uint32& uiDiff)
    {
        if (m_uiCheckAndConsumeMonks_Timer < uiDiff)
        {
            for (const auto& monk : m_vSpawnedAdds)
            {
                if (const auto map{ m_creature->GetMap() })
                {
                    if (Creature* pMonk{ map->GetCreature(monk) })
                    {
                        if (!pMonk->IsAlive())
                        {
                            continue;
                        }

                        if (pMonk->GetDistance2d(m_creature) < 10.f)
                        {
                            m_creature->SetFacingToObject(m_creature);
                            pMonk->DealDamage(pMonk, pMonk->GetHealth(), nullptr, DIRECT_DAMAGE, SPELL_SCHOOL_MASK_NORMAL, nullptr, false);

                            // SetHealth truncates to maxhealth internally
                            m_creature->SetHealth(m_creature->GetHealth() + m_uiFivePercent);

                            if (pMonk->HasAura(nsDaelus::SPELL_VULNERABLE))
                            {
                                return true;
                            }
                        }
                    }
                }
            }

            m_uiCheckAndConsumeMonks_Timer = 500;
        }
        else
        {
            m_uiCheckAndConsumeMonks_Timer -= uiDiff;
        }

        return false;
    }

    void MakeBossVulnerable()
    {
        if (!m_creature->HasAura(nsDaelus::SPELL_VULNERABLE))
        {
            m_creature->AddAura(nsDaelus::SPELL_VULNERABLE);
            m_creature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_STUNNED);
        }
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        CallMonks(uiDiff);
        if (CheckAndConsumeMonks(uiDiff))
        {
            MakeBossVulnerable();
        }

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
