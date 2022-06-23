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
    std::uint32_t m_uiPhase{};
    std::uint32_t m_uiFivePercent{};

    std::uint32_t m_uiCallMonks_Timer{};
    std::uint32_t m_uiCheckAndConsumeMonks_Timer{};

    std::vector<ObjectGuid> m_vSpawnedAdds;

    instance_scarlet_citadel* m_pInstance{};

    bool m_bWasInFight{};

public:
    void Reset() override
    {
        m_uiPhase = 1;

        m_uiCallMonks_Timer = 5000;
        m_uiCheckAndConsumeMonks_Timer = m_uiCallMonks_Timer;

        if (m_pInstance && m_bWasInFight)
        {
            DespawnAdds();

            m_pInstance->SetData(ScarletCitadelEncounter::TYPE_DAELUS, FAIL);

            m_bWasInFight = false;
        }

        m_creature->SetFactionTemplateId(189);

        // Misc
        m_creature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_STUNNED);
        m_creature->SetFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);
        m_creature->AddUnitState(UNIT_STAT_ROOT);
    }

    void Aggro(Unit* /*pWho*/) override
    {
        if (!m_pInstance)
            return;

        m_bWasInFight = true;

        m_creature->CastSpell(m_creature, 26156, true);

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
                if (Creature* pMonk{ m_creature->SummonCreature(nsDaelus::NPC_CITADEL_MONK,
                    nsDaelus::vfSpawnPoints[i].m_fX,
                    nsDaelus::vfSpawnPoints[i].m_fY,
                    nsDaelus::vfSpawnPoints[i].m_fZ,
                    nsDaelus::vfSpawnPoints[i].m_fO,TEMPSUMMON_MANUAL_DESPAWN) })
                {
                    // Don't react to face-aggro, neither to damage
                    pMonk->AI()->SetMeleeAttack(false);
                    pMonk->AI()->SetCombatMovement(false);
                    //pSummoned->SetTargetGuid(0);
                    
                    // Now move to the boss
                    pMonk->MonsterMoveWithSpeed(m_creature->GetPositionX(), m_creature->GetPositionY(), m_creature->GetPositionZ(), m_creature->GetOrientation(), 1.f, MOVE_PATHFINDING);

                    if (i == uiChosenOne)
                    {
                        pMonk->AddAura(nsDaelus::SPELL_VULNERABLE);
                        pMonk->SetHealth(5);
                    }

                    m_vSpawnedAdds.push_back(pMonk->GetObjectGuid());
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
            SummonAdds();

            m_uiCallMonks_Timer = 15000;
        }
        else
        {
            m_uiCallMonks_Timer -= uiDiff;
        }
    }

    void CheckConsumedMonks(const uint32& uiDiff)
    {
        if (m_uiCheckAndConsumeMonks_Timer < uiDiff)
        {
            for (const auto& monk : m_vSpawnedAdds)
            {
                if (const auto map{ m_creature->GetMap() })
                {
                    if (Creature* pMonk{ map->GetCreature(monk) })
                    {
                        if (pMonk->GetDistance2d(m_creature) < 7.f)
                        {
                            if (pMonk->HasAura(nsDaelus::SPELL_VULNERABLE) && m_uiPhase == 1)
                            {
                                MakeBossVulnerable();
                            }

                            pMonk->DealDamage(pMonk, pMonk->GetHealth(), nullptr, DIRECT_DAMAGE, SPELL_SCHOOL_MASK_NORMAL, nullptr, false);

                            // SetHealth truncates to maxhealth internally
                            m_creature->SetHealth(m_creature->GetHealth() + m_uiFivePercent);
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
    }

    void MakeBossVulnerable()
    {
        m_creature->AddAura(nsDaelus::SPELL_VULNERABLE);
        m_creature->RemoveAurasDueToSpell(26156);
        m_creature->MonsterSay("PHASE_2");

        m_uiPhase = 2;
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (m_uiPhase == 1) // Unvulnerable
        {
            CallMonks(uiDiff);
            DoMeleeAttackIfReady();
        }
        else if (m_uiPhase == 2) // Vulnerable
        {
            // ?
        }
        else if (m_uiPhase == 3) // Soft enrage?
        {
            DoMeleeAttackIfReady();
        }

        CheckConsumedMonks(uiDiff);
    }
};

CreatureAI* GetAI_boss_daelus(Creature* pCreature)
{
    return new boss_daelusAI(pCreature);
}

bool GossipHello_boss_daelus(Player* pPlayer, Creature* pCreature)
{
    instance_scarlet_citadel const* m_pInstance{ static_cast<instance_scarlet_citadel*>(pCreature->GetInstanceData()) };

    if (m_pInstance)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "START_FIGHT", GOSSIP_SENDER_MAIN, (GOSSIP_ACTION_INFO_DEF + 1));
    }
    else
    {
        sLog.outError("[SC] Boss Daelus: Boss spawned outside of dungeon.");
    }

    pPlayer->SEND_GOSSIP_MENU(0001, pCreature->GetObjectGuid());

    return true;
}

bool GossipSelect_boss_daelus(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, const uint32 uiAction)
{
    if (!pPlayer || !pCreature)
        return false;

    switch (uiAction)
    {
        case (GOSSIP_ACTION_INFO_DEF + 1):
        {
            pPlayer->CLOSE_GOSSIP_MENU();
            pCreature->RemoveFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);
            pCreature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
            pCreature->SetFactionTemplateId(67);
            pCreature->SetInCombatWithZone();

            break;
        }
    }

    return true;
}

void AddSC_boss_daelus()
{
    Script* pNewscript;

    pNewscript = new Script;
    pNewscript->Name = "boss_daelus";
    pNewscript->pGossipHello = &GossipHello_boss_daelus;
    pNewscript->pGossipSelect = &GossipSelect_boss_daelus;
    pNewscript->GetAI = &GetAI_boss_daelus;
    pNewscript->RegisterSelf();
}
