/*
 * Copyright (C) 2021-2022 Nolin (nolin.nolin.nolin.nolin@gmail.org)
 *
 * This is private software and may not be shared under any circumstances,
 * absent permission of Nolin.
 */

#include "scriptPCH.h"
#include "scarlet_citadel.h"

static const float vfTeleportDestinations[][4] =
{
    { 231.569946f, 48.830078f, (32.822887f + 0.1f), 3.130378f } // Boss Mariella
};

struct npc_citadel_anti_exploit_AI : public ScriptedAI
{
    explicit npc_citadel_anti_exploit_AI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        npc_citadel_anti_exploit_AI::Reset();
    }

    uint16 m_uiCheckPulse{};

    static constexpr uint32 PULSE_TIMER{ 500 };
    static constexpr uint32 SPELL_STUN{ 27880 };
    static constexpr float PERMITTED_AREA{ 20.f };
    static constexpr auto WARNING_MESSAGE{ "You are not allowed to leave this area." };

    void Reset() override
    {
        m_uiCheckPulse = PULSE_TIMER;

        m_creature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_IMMUNE_TO_PLAYER | UNIT_FLAG_IMMUNE_TO_NPC);
        m_creature->SetVisibility(VISIBILITY_OFF);
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (m_uiCheckPulse < uiDiff)
        {
            Map::PlayerList const& list{ m_creature->GetMap()->GetPlayers() };
            for (const auto& player : list)
            {
                if (Player* pPlayer{ player.getSource() })
                {
                    if (!pPlayer->IsGameMaster() && pPlayer->IsInRange3d(
                        m_creature->GetPositionX(),
                        m_creature->GetPositionY(),
                        m_creature->GetPositionZ(),
                        0.0f, PERMITTED_AREA))
                    {
                        pPlayer->AddAura(SPELL_STUN);

                        DoAfterTime(pPlayer, (3 * IN_MILLISECONDS), [player = pPlayer]()
                            {
                                if (player)
                                {
                                    static_cast<Unit*>(player)->NearTeleportTo(
                                        vfTeleportDestinations[0][0],
                                        vfTeleportDestinations[0][1],
                                        vfTeleportDestinations[0][2],
                                        vfTeleportDestinations[0][3]
                                    );
                                }
                            });

                        DoAfterTime(pPlayer, (5 * IN_MILLISECONDS), [player = pPlayer]()
                            {
                                if (player)
                                {
                                    ChatHandler(player).SendSysMessage(WARNING_MESSAGE);
                                }
                            });
                    }
                }
            }

            m_uiCheckPulse = PULSE_TIMER;
        }
        else
        {
            m_uiCheckPulse -= uiDiff;
        }
    }
};

CreatureAI* GetAI_npc_citadel_anti_exploit(Creature* pCreature)
{
    return new npc_citadel_anti_exploit_AI(pCreature);
}

//////////////////////////////////////////
// FIRST WING (Caster's Nightmare)
//////////////////////////////////////////

struct npc_citadel_inquisitor_AI : public ScriptedAI
{
    explicit npc_citadel_inquisitor_AI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        npc_citadel_inquisitor_AI::Reset();
    }

    static constexpr uint32 SPELL_HOLY_NOVA{ 23858 };
    static constexpr uint32 SPELL_COUNTERSPELL{ 20537 };
    static constexpr uint32 SPELL_DIVINE_SHIELD{ 1020 };
    static constexpr uint32 SPELL_GREATER_HEAL{ 24208 };

    uint32 m_uiCounterSpell_Timer{};
    uint32 m_uiHolyNova_Timer{};
    uint32 m_uiGreaterHeal_Timer{};

    bool m_bCastedDivineShieldOnce{};

    void Reset() override
    {
        m_uiCounterSpell_Timer = 2000;
        m_uiHolyNova_Timer = 1000;
        m_uiGreaterHeal_Timer = 5000;

        m_bCastedDivineShieldOnce = false;

        m_creature->SetNoCallAssistance(true); // Link groups manually
    }

    void CastCounterSpell(const uint32& uiDiff)
    {
        if (m_uiCounterSpell_Timer < uiDiff)
        {
            if (Unit* pTarget{ m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0, nullptr, SELECT_FLAG_PLAYER | SELECT_FLAG_POWER_MANA) })
            {
                if (pTarget->IsNonMeleeSpellCasted(true))
                {
                    if (DoCastSpellIfCan(pTarget, SPELL_COUNTERSPELL) == CAST_OK)
                    {
                        m_uiCounterSpell_Timer = urand(5000, 8000);
                    }
                }
            }
        }
        else
        {
            m_uiCounterSpell_Timer -= uiDiff;
        }
    }

    void CastHolyNova(const uint32& uiDiff)
    {
        if (m_uiHolyNova_Timer < uiDiff)
        {
            if (Unit* pFriendlyTarget{ m_creature->SelectRandomFriendlyTarget(nullptr, 12.f) })
            {
                if (pFriendlyTarget->GetHealthPercent() < 90.f)
                {
                    if (DoCastSpellIfCan(m_creature, SPELL_HOLY_NOVA) == CanCastResult::CAST_OK)
                    {
                        m_uiHolyNova_Timer = 1000;
                    }
                }
            }
        }
        else
        {
            m_uiHolyNova_Timer -= uiDiff;
        }
    }

    void CastDivineShield(const uint32& uiDiff)
    {
        if (m_creature->GetHealthPercent() < 10.f && !m_bCastedDivineShieldOnce)
        {
            if (DoCastSpellIfCan(m_creature, SPELL_DIVINE_SHIELD) == CanCastResult::CAST_OK)
            {
                m_bCastedDivineShieldOnce = true;
            }
        }
    }

    void CastGreaterHeal(const uint32& uiDiff)
    {
        if (m_uiGreaterHeal_Timer < uiDiff)
        {
            if (Unit* pFriendlyTarget{ m_creature->FindLowestHpFriendlyUnit(40.f) })
            {
                if (m_creature->IsWithinLOSInMap(pFriendlyTarget))
                {
                    if (pFriendlyTarget->GetHealthPercent() < 40.f)
                    {
                        if (DoCastSpellIfCan(pFriendlyTarget, SPELL_GREATER_HEAL) == CanCastResult::CAST_OK)
                        {
                            m_uiGreaterHeal_Timer = 5000;
                        }
                    }
                }
            }
        }
        else
            m_uiGreaterHeal_Timer -= uiDiff;
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        CastCounterSpell(uiDiff);
        CastHolyNova(uiDiff);
        CastDivineShield(uiDiff);
        CastGreaterHeal(uiDiff);

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_npc_citadel_inquisitor(Creature* pCreature)
{
    return new npc_citadel_inquisitor_AI(pCreature);
}


struct npc_citadel_valiant_AI : public ScriptedAI
{
    explicit npc_citadel_valiant_AI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        npc_citadel_valiant_AI::Reset();
    }

    static constexpr uint32 SPELL_CHARGE{ 26561 };
    static constexpr uint32 SPELL_CLEAVE{ 26350 };
    static constexpr uint32 SPELL_SONICBURST{ 23918 };

    uint32 m_uiCharge_Timer{};
    uint32 m_uiCleave_Timer{};

    void Reset() override
    {
        m_uiCharge_Timer = 10000;
        m_uiCleave_Timer = 5000;

        m_creature->SetNoCallAssistance(true); // Link groups manually
    }

    void DoCharge(const uint32& uiDiff)
    {
        if (m_uiCharge_Timer < uiDiff)
        {
            if (Unit* chargeTarget{ m_creature->GetHostileCasterInRange(0, 50.f) })
            {
                if (m_creature->IsWithinLOSInMap(chargeTarget))
                {
                    if (chargeTarget->IsNonMeleeSpellCasted(false, false, true))
                    {
                        if (DoCastSpellIfCan(chargeTarget, SPELL_CHARGE) == CanCastResult::CAST_OK)
                        {
                            if (m_creature->IsInRange3d(chargeTarget->GetPositionX(), chargeTarget->GetPositionY(), chargeTarget->GetPositionZ(), 0.0f, 2.f))
                            {
                                DoCast(m_creature, SPELL_SONICBURST);
                            }

                            m_uiCharge_Timer = 10000;
                        }
                    }
                }
            }
        }
        else
        {
            m_uiCharge_Timer -= uiDiff;
        }
    }

    void DoCleave(const uint32& uiDiff)
    {
        if (m_uiCleave_Timer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature, SPELL_CLEAVE) == CanCastResult::CAST_OK)
            {
                m_uiCleave_Timer = 5000;
            }
        }
        else
        {
            m_uiCleave_Timer -= uiDiff;
        }
    }

    void UpdateAI(uint32 const uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        DoCharge(uiDiff);
        DoCleave(uiDiff);

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_npc_citadel_valiant(Creature* pCreature)
{
    return new npc_citadel_valiant_AI(pCreature);
}


struct npc_citadel_footman_AI : public ScriptedAI
{
    explicit npc_citadel_footman_AI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        npc_citadel_footman_AI::Reset();
    }

    static constexpr uint32 SPELL_DISARM{ 6713 };
    static constexpr uint32 SPELL_FRENZY{ 8269 };
    static constexpr uint32 SPELL_HAMSTRING{ 26141 };
    
    uint32 m_uiDisarm_Timer{};
    uint32 m_uiFrenzy_Timer{};

    void Reset() override
    {
        m_uiDisarm_Timer = 1000;
        m_uiFrenzy_Timer = 15000;

        m_creature->SetNoCallAssistance(true); // Link groups manually
    }

    void DoDisarm(const uint32& uiDiff)
    {
        if (m_uiDisarm_Timer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature, SPELL_DISARM) == CanCastResult::CAST_OK)
            {
                DoCast(m_creature->GetVictim(), SPELL_HAMSTRING);

                m_uiDisarm_Timer = 7000;
            }
        }
        else
        {
            m_uiDisarm_Timer -= uiDiff;
        }
    }

    void GoFrenzy(const uint32& uiDiff)
    {
        if (m_uiFrenzy_Timer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature, SPELL_FRENZY) == CanCastResult::CAST_OK)
            {
                m_uiFrenzy_Timer = 120000; // Just renew spell if enemy isn't dead already
            }
        }
        else
        {
            m_uiFrenzy_Timer -= uiDiff;
        }
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        DoDisarm(uiDiff);
        GoFrenzy(uiDiff);

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_npc_citadel_footman(Creature* pCreature)
{
    return new npc_citadel_footman_AI(pCreature);
}

namespace nsERIC_DARK
{
    static const LocationXYZO vfMoveTo[] =
    {
        { 128.883f, -48.6615f, 15.99f, 1.55f },
        { 132.825f, -48.7298f, 15.99f, 1.55f },
        { 125.016f, -48.6871f, 15.99f, 1.55f },
        { 125.081f, -36.9308f, 15.99f, 1.55f },
        { 128.847f, -36.9513f, 15.99f, 1.55f },
        { 132.736f, -36.8489f, 15.99f, 1.55f },
        { 132.777f, -25.3095f, 15.99f, 1.55f },
        { 128.892f, -25.3187f, 15.99f, 1.55f },
        { 125.063f, -25.3278f, 15.99f, 1.55f },
        { 125.035f, -13.6799f, 15.99f, 1.55f },
        { 128.917f, -13.6573f, 15.99f, 1.55f },
        { 132.745f, -13.7459f, 15.99f, 1.55f },
        { 132.766f, -2.05773f, 15.99f, 1.55f },
        { 128.937f, -2.03679f, 15.99f, 1.55f },
        { 125.003f, -2.01526f, 15.99f, 1.55f },
        { 125.066f,  9.52406f, 15.99f, 1.55f },
        { 128.944f,  9.48699f, 15.99f, 1.55f },
        { 132.826f,  9.47718f, 15.99f, 1.55f }
    };
}

struct npc_eric_dark_AI : public ScriptedAI
{
    explicit npc_eric_dark_AI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        npc_eric_dark_AI::Reset();
    }

    static constexpr uint32 SPELL_LIGHTNING_CLOUD{ 25033 };
    static constexpr uint32 SPELL_LIGHTNING_WAVE{ 24819 };
    static constexpr uint32 SPELL_ENERGIZE{ 25685 };
    static constexpr uint32 SPELL_DRAINMANA{ 25676 };

    static constexpr uint32 FACTION_HOSTILE{ 67 };

    const std::vector<uint32> vTrashEntryList{ NPC_CITADEL_INQUISITOR, NPC_CITADEL_VALIANT, NPC_CITADEL_FOOTMAN };
    const std::vector<std::pair<LocationXYZO, uint32>>pairlol
    {
        std::make_pair(nsERIC_DARK::vfMoveTo[0], vTrashEntryList[0]), std::make_pair(nsERIC_DARK::vfMoveTo[1], vTrashEntryList[1]), std::make_pair(nsERIC_DARK::vfMoveTo[2], vTrashEntryList[2]),
        std::make_pair(nsERIC_DARK::vfMoveTo[3], vTrashEntryList[0]), std::make_pair(nsERIC_DARK::vfMoveTo[4], vTrashEntryList[1]), std::make_pair(nsERIC_DARK::vfMoveTo[5], vTrashEntryList[2]),
        std::make_pair(nsERIC_DARK::vfMoveTo[6], vTrashEntryList[0]), std::make_pair(nsERIC_DARK::vfMoveTo[7], vTrashEntryList[1]), std::make_pair(nsERIC_DARK::vfMoveTo[8], vTrashEntryList[2]),
        std::make_pair(nsERIC_DARK::vfMoveTo[9], vTrashEntryList[0]), std::make_pair(nsERIC_DARK::vfMoveTo[10], vTrashEntryList[1]), std::make_pair(nsERIC_DARK::vfMoveTo[11], vTrashEntryList[2]),
        std::make_pair(nsERIC_DARK::vfMoveTo[12], vTrashEntryList[0]), std::make_pair(nsERIC_DARK::vfMoveTo[13], vTrashEntryList[1]), std::make_pair(nsERIC_DARK::vfMoveTo[14], vTrashEntryList[2]),
        std::make_pair(nsERIC_DARK::vfMoveTo[15], vTrashEntryList[0]), std::make_pair(nsERIC_DARK::vfMoveTo[16], vTrashEntryList[1]), std::make_pair(nsERIC_DARK::vfMoveTo[17], vTrashEntryList[2])
    };

    std::vector<ObjectGuid> m_vSpawnedAdds;

    // Areatrigger
    uint16 m_uiCheckPulse{};
    bool m_bIsTrashAllowedToSpawn{};

    void Reset() override
    {
        DespawnAdds();

        // Areatrigger
        m_uiCheckPulse = 1000;
        m_bIsTrashAllowedToSpawn = true;
    }

    void Aggro(Unit* /*pWho*/) override
    {
        m_creature->SetInCombatWithZone();
        m_creature->SetPower(POWER_MANA, 0);
    }

    void JustDied(Unit* /*pKiller*/) override
    {
        DespawnAdds();

        m_creature->SetRespawnDelay(7200); // Respawn after 2 hours, if Boss Grand Magi Ardaeus has not been defeted in this time
    }

    void AreaTrigger(const uint32& uiDiff)
    {
        if (m_uiCheckPulse < uiDiff)
        {
            Map::PlayerList const& list{ m_creature->GetMap()->GetPlayers() };
            for (const auto& i : list)
            {
                if (!i.getSource()->IsGameMaster())
                {
                    if (i.getSource()->IsInRange3d(128.86f, -9.69f, 15.98f, 0.f, 12.f)) // Middle of the Wing
                    {
                        SummonAdds();
                    }
                }
            }

            m_uiCheckPulse = 500;
        }
        else
        {
            m_uiCheckPulse -= uiDiff;
        }
    }

    void SummonAdds()
    {
        for (const auto& itr : pairlol)
        {
            if (Creature* pSummoned{ m_creature->SummonCreature(itr.second, m_creature->GetPositionX(), (m_creature->GetPositionY() + 5.f), m_creature->GetPositionZ(),
                m_creature->GetOrientation(), TEMPSUMMON_MANUAL_DESPAWN) })
            {
                pSummoned->MonsterMoveWithSpeed(itr.first.m_fX, itr.first.m_fY, itr.first.m_fZ, itr.first.m_fO, 5, MOVE_PATHFINDING);
                pSummoned->SetHomePosition(itr.first.m_fX, itr.first.m_fY, itr.first.m_fZ, itr.first.m_fO);

                m_vSpawnedAdds.push_back(pSummoned->GetObjectGuid());
            }
        }
        
        m_creature->SetFactionTemplateId(FACTION_HOSTILE);
        m_creature->MonsterYell("INTRUDERS!");

        m_bIsTrashAllowedToSpawn = false;
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

    void UpdateAI(uint32 const uiDiff) override
    {
        if (m_bIsTrashAllowedToSpawn)
            AreaTrigger(uiDiff);

        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_npc_eric_dark(Creature* pCreature)
{
    return new npc_eric_dark_AI(pCreature);
}


void AddSC_trash_mobs_scarlet_citadel()
{
    Script* pNewscript;

    pNewscript = new Script;
    pNewscript->Name = "npc_citadel_anti_exploit";
    pNewscript->GetAI = &GetAI_npc_citadel_anti_exploit;
    pNewscript->RegisterSelf();

    // FIRST WING (Caster's Nightmare)
    pNewscript = new Script;
    pNewscript->Name = "npc_citadel_inquisitor";
    pNewscript->GetAI = &GetAI_npc_citadel_inquisitor;
    pNewscript->RegisterSelf();

    pNewscript = new Script;
    pNewscript->Name = "npc_citadel_valiant";
    pNewscript->GetAI = &GetAI_npc_citadel_valiant;
    pNewscript->RegisterSelf();

    pNewscript = new Script;
    pNewscript->Name = "npc_citadel_footman";
    pNewscript->GetAI = &GetAI_npc_citadel_footman;
    pNewscript->RegisterSelf();

    pNewscript = new Script;
    pNewscript->Name = "npc_eric_dark";
    pNewscript->GetAI = &GetAI_npc_eric_dark;
    pNewscript->RegisterSelf();

    // SECOND WING
}
