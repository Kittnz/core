
#include "hateforge_quarry.h"

class boss_hargesh_doomcallerAI : public ScriptedAI
{
public:
    explicit boss_hargesh_doomcallerAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        boss_hargesh_doomcallerAI::Reset();
    }

private:
    uint8 m_uiDeadCounter{};

    uint32 m_uiImmolate_Timer{};
    uint32 m_uiShadowBoltVolley_Timer{};
    uint32 m_uiShadowBolt_Timer{};
    uint32 m_uiCheckIfAddsAreDead_Timer{};

    bool m_bPhaseTwo{};
    bool m_bAddsAreDead{};

    std::vector<ObjectGuid> m_vFacelessTerror;

public:
    void Reset() override
    {
        m_uiDeadCounter = 0;

        m_uiImmolate_Timer = 30000;
        m_uiShadowBoltVolley_Timer = 90000;
        m_uiShadowBolt_Timer = 10000;
        m_uiCheckIfAddsAreDead_Timer = 500;

        m_bPhaseTwo = false;
        m_bAddsAreDead = false;

        m_creature->RemoveAurasDueToSpell(SPELL_IMMUNE_ALL);

        DespawnFacelessTerror();
    }

    void JustDied(Unit* /*pKiller*/) override
    {
        DespawnFacelessTerror();
    }

    void CastImmolate(const uint32& uiDiff)
    {
        if (m_uiImmolate_Timer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_IMMOLATE) == CanCastResult::CAST_OK)
                m_uiImmolate_Timer = 30000;
        }
        else
            m_uiImmolate_Timer -= uiDiff;
    }

    void CastShadowBoltVolley(const uint32& uiDiff)
    {
        if (m_uiShadowBoltVolley_Timer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_SHADOW_BOLT_VOLLEY) == CanCastResult::CAST_OK)
                m_uiShadowBoltVolley_Timer = 90000;
        }
        else
            m_uiShadowBoltVolley_Timer -= uiDiff;
    }

    void CastShadowBolt(const uint32& uiDiff)
    {
        if (m_uiShadowBolt_Timer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_SHADOW_BOLT) == CanCastResult::CAST_OK)
                m_uiShadowBolt_Timer = 10000;
        }
        else
            m_uiShadowBolt_Timer -= uiDiff;
    }

    void PhaseTwo()
    {
        m_creature->CastSpell(m_creature, SPELL_IMMUNE_ALL, true);

        Map::PlayerList const& PlayerList{ m_creature->GetMap()->GetPlayers() };
        for (const auto& itr : PlayerList)
        {
            if (Player* pPlayer{ itr.getSource() })
            {
                if (pPlayer && pPlayer->IsAlive() && !pPlayer->IsGameMaster())
                {
                    if (Creature* pFacelessTerror0{ m_creature->SummonCreature(NPC_FACELESS_TERROR,
                        vfSpawnPoint[0].m_fX,
                        vfSpawnPoint[0].m_fY,
                        vfSpawnPoint[0].m_fZ,
                        vfSpawnPoint[0].m_fO,
                        TEMPSUMMON_MANUAL_DESPAWN) }) // Despawn adds manually on failed boss attempt
                    {
                        pFacelessTerror0->AI()->AttackStart(pPlayer);

                        m_vFacelessTerror.push_back(pFacelessTerror0->GetObjectGuid()); // Store add's GUID to remove them manually on failed boss attempt
                    }

                    if (Creature* pFacelessTerror1{ m_creature->SummonCreature(NPC_FACELESS_TERROR,
                        vfSpawnPoint[1].m_fX,
                        vfSpawnPoint[1].m_fY,
                        vfSpawnPoint[1].m_fZ,
                        vfSpawnPoint[1].m_fO,
                        TEMPSUMMON_MANUAL_DESPAWN) }) // Despawn adds manually on failed boss attempt
                    {
                        pFacelessTerror1->AI()->AttackStart(pPlayer);

                        m_vFacelessTerror.push_back(pFacelessTerror1->GetObjectGuid()); // Store add's GUID to remove them manually on failed boss attempt
                    }

                    m_creature->MonsterSay("The Void hungers for more souls, let it consume you.", LANG_UNIVERSAL);
                }
            }
        }

        m_bPhaseTwo = true;
    }

    void CheckIfAddsAreDead(const uint32& uiDiff)
    {
        if (m_uiCheckIfAddsAreDead_Timer < uiDiff)
        {
            if (const auto map{ m_creature->GetMap() })
            {
                for (const auto& guid : m_vFacelessTerror)
                {
                    if (Creature* pCreature{ map->GetCreature(guid) })
                    {
                        if (!pCreature->IsAlive())
                        {
                            ++m_uiDeadCounter;

                            if (m_uiDeadCounter == 2) // Both adds are dead
                            {
                                m_creature->RemoveAurasDueToSpell(SPELL_IMMUNE_ALL);
                                m_bAddsAreDead = true;
                            }
                        }
                        else // At least one of them is still alive, reset counter and check again
                        {
                            m_uiDeadCounter = 0;
                        }
                    }
                }
            }

            m_uiCheckIfAddsAreDead_Timer = 500;
        }
        else
            m_uiCheckIfAddsAreDead_Timer -= uiDiff;
    }

    void DespawnFacelessTerror()
    {
        if (!m_vFacelessTerror.empty())
        {
            if (const auto map{ m_creature->GetMap() })
            {
                for (const auto& guid : m_vFacelessTerror)
                {
                    if (Creature* pCreature{ map->GetCreature(guid) })
                    {
                        if (TemporarySummon* tmpSumm{ static_cast<TemporarySummon*>(pCreature) })
                        {
                            tmpSumm->UnSummon();
                        }
                    }
                }

                m_vFacelessTerror.clear();
            }
        }
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        CastImmolate(uiDiff);
        CastShadowBoltVolley(uiDiff);
        CastShadowBolt(uiDiff);

        if (m_creature->HealthBelowPct(60) && !m_bPhaseTwo) // Boss' health is below 60% and phase two didn't start yet
        {
            PhaseTwo();
        }

        if (!m_bAddsAreDead)
            CheckIfAddsAreDead(uiDiff);

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_boss_hargesh_doomcaller(Creature* pCreature)
{
    return new boss_hargesh_doomcallerAI(pCreature);
}

void AddSC_boss_hargesh_doomcaller()
{
    Script* pNewscript;

    pNewscript = new Script;
    pNewscript->Name = "boss_hargesh_doomcaller";
    pNewscript->GetAI = &GetAI_boss_hargesh_doomcaller;
    pNewscript->RegisterSelf();
}
