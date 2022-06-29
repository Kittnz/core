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
    // Phase 1
    std::uint8_t m_uiChosenOne{};

    std::uint32_t m_uiCallSpirits_Timer{};
    std::uint32_t m_uiSpawnChosenOne_Timer{};
    std::uint32_t m_uiCheckAndConsumeSpirits{};
    std::uint32_t m_uiCheckForTank_Timer{};
    std::uint32_t m_uiArcaneExplosion_Timer{};

    std::vector<ObjectGuid> m_vSpawnedAdds;

    // Phase 2
    std::uint32_t m_uiVulnerability_Timer{};

    // Misc
    bool m_bWasInFight{};

    std::uint8_t m_uiPhase{};

    instance_scarlet_citadel* m_pInstance{};

public:
    void Reset() override
    {
        m_uiPhase = 1;
        m_uiChosenOne = nsDaelus::NUMBER_OF_ADDS; // Set m_uiChosenOne out of range until CheckChosenOneTiming() assigns a value within range (0-5)

        m_uiCallSpirits_Timer = nsDaelus::CALL_SPIRITS_FIRST_TIMER;
        m_uiSpawnChosenOne_Timer = nsDaelus::INITIAL_SPAWN_CHOSEN_ONE_TIMER;
        m_uiCheckAndConsumeSpirits = m_uiCallSpirits_Timer; // A delayed timer could be added, but is it rly worth the effort?
        m_uiCheckForTank_Timer = nsDaelus::CHECK_FOR_TANK_TIMER;
        m_uiArcaneExplosion_Timer = nsDaelus::ARCANE_EXPLOSION_TIMER;

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

            m_uiSpawnChosenOne_Timer = urand(120000, 180000); // Betwwen 2-3 minutes
        }
        else
        {
            m_uiSpawnChosenOne_Timer -= uiDiff;
        }
    }

    void SummonAdds()
    {
        for (std::uint8_t i{ 0 }; i < nsDaelus::NUMBER_OF_ADDS; ++i)
        {
            if (Creature* pMonk{ m_creature->SummonCreature(nsDaelus::NPC_FALLEN_SPIRIT,
                nsDaelus::vfSpawnPoints[i].m_fX,
                nsDaelus::vfSpawnPoints[i].m_fY,
                nsDaelus::vfSpawnPoints[i].m_fZ,
                nsDaelus::vfSpawnPoints[i].m_fO,TEMPSUMMON_MANUAL_DESPAWN) })
            {
                if (i == m_uiChosenOne)
                {
                    pMonk->AddAura(nsDaelus::SPELL_RED_COLOR);

                    m_uiChosenOne = nsDaelus::NUMBER_OF_ADDS; // Set m_uiChosenOne out of range until CheckChosenOneTiming() assigns a value within range (0-5)
                }

                m_vSpawnedAdds.push_back(pMonk->GetObjectGuid());
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

    void CallSpirits(const uint32& uiDiff)
    {
        if (m_uiCallSpirits_Timer < uiDiff)
        {
            SummonAdds();

            m_uiCallSpirits_Timer = nsDaelus::CALL_SPIRITS_REPEAT_TIMER;
        }
        else
        {
            m_uiCallSpirits_Timer -= uiDiff;
        }
    }

    void CheckConsumedSpirits(const uint32& uiDiff)
    {
        if (m_uiCheckAndConsumeSpirits < uiDiff)
        {
            for (const auto& monk : m_vSpawnedAdds)
            {
                if (const auto map{ m_creature->GetMap() })
                {
                    if (Creature* pMonk{ map->GetCreature(monk) })
                    {
                        if (pMonk->GetDistance2d(m_creature) < 1.f)
                        {
                            if (pMonk->HasAura(nsDaelus::SPELL_RED_COLOR) && m_uiPhase == 1)
                            {
                                MakeBossVulnerable();
                            }

                            pMonk->DoKillUnit(pMonk);

                            if (m_creature->GetHealthPercent() < 100.f)
                            {
                                m_creature->SetHealthPercent((m_creature->GetHealthPercent() + nsDaelus::REGENERATE_HEALTH_PERCENTAGE));
                            }
                        }
                    }
                }
            }

            m_uiCheckAndConsumeSpirits = nsDaelus::CHECK_SPIRITS_REPEAT_TIMER;
        }
        else
        {
            m_uiCheckAndConsumeSpirits -= uiDiff;
        }
    }

    void MakeBossVulnerable()
    {
        if (m_creature->IsNonMeleeSpellCasted()) // Check if Daeulus is still channeling his casting animation...
        {
            m_creature->RemoveAurasDueToSpell(nsDaelus::SPELL_LIFE_DRAIN_VISIAL); // ... if this is the case, STOP IT
        }

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

    void LookingForTank(const uint32& uiDiff)
    {
        if (m_uiCheckForTank_Timer < uiDiff)
        {
            if (m_creature->GetDistance2d(m_creature->GetVictim()) > 1.5f) // If Daelus' current target isn't close to him
            {
                Map::PlayerList const& PlayerList{ m_creature->GetMap()->GetPlayers() }; // Get all players in dungeon
                if (PlayerList.isEmpty())
                    return;

                m_creature->CastSpell(m_creature, nsDaelus::SPELL_LIFE_DRAIN_VISIAL, true); // Start casting animation

                std::uint32_t uiHealthPoints{}; // Create variable for life drain which contains 10% hp of all players

                for (const auto& itr : PlayerList) // Now check every player
                {
                    if (Player* pPlayer{ itr.getSource() })
                    {
                        if (pPlayer->IsAlive() && !pPlayer->IsGameMaster()) // Skip dead players and GMs
                        {
                            const std::uint32_t uiTenPercentLife{ static_cast<std::uint32_t>(pPlayer->GetMaxHealth() / 0.1f) }; // Get int value of 10% HP of player's maxlife
                            uiHealthPoints += uiTenPercentLife; // Now add player's 10% hp to the life drain variable
                            std::cout << "uiTenPercentLife: " << uiTenPercentLife << std::endl;

                            const std::int32_t iNewHealthPoints{ static_cast<std::int32_t>(pPlayer->GetHealth() - uiTenPercentLife) }; // Calculate player's new HP after life drain
                            if (iNewHealthPoints <= 1) // If player's life pool is 1 HP or less (Yes, 1HP could also be dead in some cases)...
                            {
                                m_creature->DoKillUnit(pPlayer); // ... kill him/her (Is this sentence even LGBTQIA+ friendly???)
                            }
                            else
                            {
                                pPlayer->SetHealth(static_cast<std::uint32_t>(iNewHealthPoints)); // Assign player's new HPs
                                std::cout << "iNewHealthPoints: " << iNewHealthPoints << std::endl;
                            }
                        }
                    }
                }

                m_creature->SetHealth(m_creature->GetHealth() + uiHealthPoints); // After iteration of all player's are done, add all drained HPs to Daelus
                std::cout << uiHealthPoints << std::endl;
            }
            else
            {
                if (m_creature->IsNonMeleeSpellCasted()) // Check if Daeulus is still channeling his casting animation...
                {
                    m_creature->RemoveAurasDueToSpell(nsDaelus::SPELL_LIFE_DRAIN_VISIAL); // ... if this is the case, STOP IT
                }

                DoMeleeAttackIfReady(); // Do melee hits
            }

            m_uiCheckForTank_Timer = nsDaelus::CHECK_FOR_TANK_TIMER;
        }
        else
        {
            m_uiCheckForTank_Timer -= uiDiff;
        }
    }

    Player* SelectRandomPlayerExceptTank()
    {
        ThreatList const& tList{ m_creature->GetThreatManager().getThreatList() };
        if (tList.empty())
            return nullptr;

        std::list<Player*> candidates;
        ThreatList::const_iterator i{ tList.begin() };

        if (tList.size() > 1)
        {
            ++i; // Skipping top-aggro if there is more then 1 player in list
        }

        for (; i != tList.end(); ++i)
        {
            if (Player* pPlayer{ m_creature->GetMap()->GetPlayer((*i)->getUnitGuid()) })
            {
                if (m_creature->IsInRange(pPlayer, 0.f, 40.f)) // Last value of parameter to prevent player standing on the edge of the room to avoid too much dmg to raid
                {
                    candidates.push_back(pPlayer);
                }
            }
            else
            {
                continue;
            }
        }

        if (candidates.empty())
            return nullptr;

        auto candIt{ candidates.begin() };
        std::advance(candIt, urand(0, candidates.size() - 1));
        return *candIt;
    }

    void ForcePlayerToCastArcaneExplosion(const uint32& uiDiff)
    {
        if (m_uiArcaneExplosion_Timer < uiDiff)
        {
            if (Player* pPlayer{ SelectRandomPlayerExceptTank() })
            {
                pPlayer->CastCustomSpell(pPlayer, nsDaelus::SPELL_ARCANE_EXPLOSION, &nsDaelus::ARCANE_EXPLOSION_DMG, nullptr, nullptr, true, nullptr, nullptr, m_creature->GetObjectGuid());
            }

            m_uiArcaneExplosion_Timer = nsDaelus::ARCANE_EXPLOSION_TIMER;
        }
        else
        {
            m_uiArcaneExplosion_Timer -= uiDiff;
        }
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (m_uiPhase == 1) // Unvulnerable
        {
            LookingForTank(uiDiff);
            ForcePlayerToCastArcaneExplosion(uiDiff);
            CallSpirits(uiDiff);
            CheckChosenOneTiming(uiDiff);
        }
        else if (m_uiPhase == 2) // Vulnerable
        {
            CheckVulnerability(uiDiff);
        }
        else if (m_uiPhase == 3) // Soft enrage?
        {
            // LookingForTank(uiDiff);
        }

        CheckConsumedSpirits(uiDiff);
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

                DoAfterTime(pCreature, (5 * IN_MILLISECONDS), [creature = pCreature]()
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

class npc_fallen_spiritAI : public ScriptedAI
{
public:
    explicit npc_fallen_spiritAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        m_pInstance = static_cast<instance_scarlet_citadel*>(pCreature->GetInstanceData());
        npc_fallen_spiritAI::Reset();
    }

private:
    instance_scarlet_citadel* m_pInstance{};

public:
    void Reset() override
    {
        if (IsChosenOne())
        {
            m_creature->SetHealthPercent(1.f);

            m_creature->SetObjectScale(1.8f);
            m_creature->UpdateModelData();

            m_creature->SetSpeedRate(MOVE_WALK, .6f);
        }

        // Don't react to face-aggro, neither to damage
        SetMeleeAttack(false);
        SetCombatMovement(false);
    }

    bool IsChosenOne()
    {
        return m_creature->HasAura(nsDaelus::SPELL_RED_COLOR);
    }

    void JustDied(Unit* /*pKiller*/) override
    {
        m_creature->CastSpell(m_creature, nsDaelus::SPELL_SONICBURST, true);

        m_creature->DeleteLater(); // Keep the floor clean!
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        // Move to the boss
        if (Creature* pDaelus{ m_pInstance->GetSingleCreatureFromStorage(NPC_DAELUS) })
        {
            m_creature->MonsterMoveWithSpeed(pDaelus->GetPositionX(), pDaelus->GetPositionY(), pDaelus->GetPositionZ(), pDaelus->GetOrientation(), 1.2f, MOVE_PATHFINDING);
        }
    }
};

CreatureAI* GetAI_npc_fallen_spirit(Creature* pCreature)
{
    return new npc_fallen_spiritAI(pCreature);
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

    pNewscript = new Script;
    pNewscript->Name = "npc_fallen_spirit";
    pNewscript->GetAI = &GetAI_npc_fallen_spirit;
    pNewscript->RegisterSelf();
}
