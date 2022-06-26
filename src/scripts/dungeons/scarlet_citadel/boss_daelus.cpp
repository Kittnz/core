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
    std::uint8_t m_uiPhase{};
    std::uint8_t m_uiChosenOne{};

    std::uint32_t m_uiCallMonks_Timer{};
    std::uint32_t m_uiSpawnChosenOne_Timer{};
    std::uint32_t m_uiCheckAndConsumeMonks_Timer{};
    std::uint32_t m_uiVulnerability_Timer{};

    std::vector<ObjectGuid> m_vSpawnedAdds;

    instance_scarlet_citadel* m_pInstance{};

    bool m_bWasInFight{};

public:
    void Reset() override
    {
        m_uiPhase = 1;
        m_uiChosenOne = nsDaelus::NUMBER_OF_ADDS;

        m_uiCallMonks_Timer = nsDaelus::CALL_MONKS_FIRST_TIMER;
        m_uiSpawnChosenOne_Timer = nsDaelus::SPAWN_CHOSEN_ONE_TIMER;
        m_uiCheckAndConsumeMonks_Timer = m_uiCallMonks_Timer; // A delayed timer could be added, but is it rly worth the effort?

        if (m_pInstance && m_bWasInFight)
        {
            DespawnAdds();

            m_creature->MonsterSay(nsDaelus::CombatNotification(nsDaelus::CombatNotifications::RAIDWIPE), LANG_UNIVERSAL);

            m_pInstance->SetData(ScarletCitadelEncounter::TYPE_DAELUS, FAIL);

            m_bWasInFight = false;
        }

        m_creature->SetStandState(UNIT_STAND_STATE_KNEEL);

        m_creature->SetFactionTemplateId(nsDaelus::FACTION_NEUTRAL);

        m_creature->SetHealthPercent(75.0f);

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

        m_creature->CastSpell(m_creature, nsDaelus::SPELL_VULNERABILITY, true);

        m_creature->SetInCombatWithZone();

        m_pInstance->SetData(ScarletCitadelEncounter::TYPE_DAELUS, IN_PROGRESS);
    }

    void JustDied(Unit* /*pKiller*/) override
    {
        if (!m_pInstance)
            return;

        m_creature->MonsterSay(nsDaelus::CombatNotification(nsDaelus::CombatNotifications::BOSSDIED), LANG_UNIVERSAL);

        m_creature->SetRespawnDelay(604800);

        m_pInstance->SetData(ScarletCitadelEncounter::TYPE_DAELUS, DONE);
    }

    void CheckChosenOneTiming(const uint32& uiDiff)
    {
        if (m_uiSpawnChosenOne_Timer < uiDiff)
        {
            m_uiChosenOne = urand(0, (nsDaelus::NUMBER_OF_ADDS - 1));

            m_uiSpawnChosenOne_Timer = nsDaelus::SPAWN_CHOSEN_ONE_TIMER;
        }
        else
        {
            m_uiSpawnChosenOne_Timer -= uiDiff;
        }
    }

    void SummonAdds()
    {
        if (Creature* pDaelus{ m_pInstance->GetSingleCreatureFromStorage(NPC_DAELUS) })
        {
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
                    
                    // Now move to the boss
                    pMonk->MonsterMoveWithSpeed(m_creature->GetPositionX(), m_creature->GetPositionY(), m_creature->GetPositionZ(), m_creature->GetOrientation(), 1.f, MOVE_PATHFINDING);

                    if (i == m_uiChosenOne)
                    {
                        pMonk->AddAura(nsDaelus::SPELL_RED_COLOR);
                        pMonk->SetHealthPercent(1.f);
                        pMonk->SetObjectScale(1.2f);
                        pMonk->UpdateModelData();
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

            m_uiCallMonks_Timer = nsDaelus::CALL_MONKS_REPEAT_TIMER;
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
                        if (pMonk->GetDistance2d(m_creature) < 5.f)
                        {
                            if (pMonk->HasAura(nsDaelus::SPELL_RED_COLOR) && m_uiPhase == 1)
                            {
                                MakeBossVulnerable();
                            }

                            pMonk->DealDamage(pMonk, pMonk->GetHealth(), nullptr, DIRECT_DAMAGE, SPELL_SCHOOL_MASK_NORMAL, nullptr, false);

                            if (m_creature->GetHealthPercent() < 100.f)
                            {
                                m_creature->SetHealthPercent((m_creature->GetHealthPercent() + nsDaelus::REGENERATE_HEALTH_PERCENTAGE));
                            }
                        }
                    }
                }
            }

            m_uiCheckAndConsumeMonks_Timer = nsDaelus::CHECK_MONKS_REPEAT_TIMER;
        }
        else
        {
            m_uiCheckAndConsumeMonks_Timer -= uiDiff;
        }
    }

    void MakeBossVulnerable()
    {
        m_creature->AddAura(nsDaelus::SPELL_RED_COLOR);
        m_creature->RemoveAurasDueToSpell(nsDaelus::SPELL_VULNERABILITY);
        m_creature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_STUNNED);
        m_creature->MonsterSay(nsDaelus::CombatNotification(nsDaelus::CombatNotifications::PHASE_TWO), LANG_UNIVERSAL);

        m_uiVulnerability_Timer = 30000;
        m_uiPhase = 2;
    }

    void CheckVulnerability(const uint32& uiDiff)
    {
        if (m_uiVulnerability_Timer < uiDiff)
        {
            m_creature->RemoveAurasDueToSpell(nsDaelus::SPELL_RED_COLOR);
            m_creature->CastSpell(m_creature, nsDaelus::SPELL_VULNERABILITY, true);
            m_creature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_STUNNED);
            m_creature->MonsterSay(nsDaelus::CombatNotification(nsDaelus::CombatNotifications::PHASE_ONE), LANG_UNIVERSAL);

            m_uiPhase = 1;
        }
        else
        {
            m_uiVulnerability_Timer -= uiDiff;
        }
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (m_uiPhase == 1) // Unvulnerable
        {
            CallMonks(uiDiff);
            CheckChosenOneTiming(uiDiff);

            DoMeleeAttackIfReady();
        }
        else if (m_uiPhase == 2) // Vulnerable
        {
            CheckVulnerability(uiDiff);
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
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, nsDaelus::START_BUTTON, GOSSIP_SENDER_MAIN, (GOSSIP_ACTION_INFO_DEF + 1));
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

            try
            {
                DoAfterTime(pCreature, (2 * IN_MILLISECONDS), [creature = pCreature]()
                    {
                        creature->MonsterSay(nsDaelus::CombatNotification(nsDaelus::CombatNotifications::ABOUT_TO_START), LANG_UNIVERSAL);
                    });

                DoAfterTime(pCreature, (4 * IN_MILLISECONDS), [creature = pCreature]()
                    {
                        creature->SetStandState(UNIT_STAND_STATE_STAND);
                        creature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_STUNNED);
                        creature->MonsterYell(nsDaelus::CombatNotification(nsDaelus::CombatNotifications::START), LANG_UNIVERSAL);
                    });

                DoAfterTime(pCreature, (8 * IN_MILLISECONDS), [creature = pCreature]()
                    {
                        creature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
                        creature->SetFactionTemplateId(nsDaelus::FACTION_SCARLET);
                        creature->SetInCombatWithZone();
                    });
            }
            catch (const std::runtime_error& e)
            {
                sLog.outError("[SC] Boss Daelus: DoAfterTime() failed: %s", e.what());
            }

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
