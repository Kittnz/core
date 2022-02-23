/*
 * Copyright (C) 2021-2022 Nolin (nolin.nolin.nolin.nolin@gmail.org)
 *
 * This is private software and may not be shared under any circumstances,
 * absent permission of Nolin.
 */

#include "scriptPCH.h"
#include "scarlet_citadel.h"


// Trash INSIDE
struct Location
{
    float m_fX, m_fY, m_fZ, m_fO;
};

static const Location vfSpawnPoint[] =
{
    { 151.75450f, -62.649109f, 18.007f, 1.59041f }
};

static const Location vfLastWaypoint[] =
{
    { 148.78366f, -18.592115f, 18.007f, 1.59041f }, // 0
    { 151.75268f, -18.500916f, 18.007f, 1.59041f }, // 1
    { 154.81858f, -18.524998f, 18.007f, 1.59041f }, // 2
    { 154.67590f, -21.368568f, 18.007f, 1.59041f }, // 3
    { 151.72247f, -21.426525f, 18.007f, 1.59041f }, // 4
    { 148.88095f, -21.477419f, 18.007f, 1.59041f }, // 5
    { 148.83274f, -24.543039f, 18.007f, 1.59041f }, // 6
    { 151.78595f, -24.474773f, 18.007f, 1.59041f }, // 7
    { 154.73963f, -24.433607f, 18.007f, 1.59041f }, // 8
    { 154.69479f, -27.267065f, 18.007f, 1.59041f }, // 9
    { 151.73402f, -27.244328f, 18.007f, 1.59041f }, // 10
    { 148.78012f, -27.267494f, 18.007f, 1.59041f }, // 11
    { 148.85170f, -30.331608f, 18.007f, 1.59041f }, // 12
    { 151.79849f, -30.296930f, 18.007f, 1.59041f }, // 13
    { 154.75230f, -30.262171f, 18.007f, 1.59041f }, // 14
    { 154.73669f, -33.214294f, 18.007f, 1.59041f }, // 15
    { 151.79025f, -33.271278f, 18.007f, 1.59041f }, // 16
    { 148.95544f, -33.304626f, 18.007f, 1.59041f }, // 17
    { 148.87420f, -36.257507f, 18.007f, 1.59041f }, // 18
    { 151.82739f, -36.187962f, 18.007f, 1.59041f }, // 19
    { 154.66903f, -36.142517f, 18.007f, 1.59041f }, // 20
    { 154.70416f, -39.089146f, 18.007f, 1.59041f }, // 21
    { 151.85516f, -39.089092f, 18.007f, 1.59041f }, // 22
    { 148.78916f, -39.089035f, 18.007f, 1.59041f }, // 23
    { 148.80809f, -42.136555f, 18.007f, 1.59041f }, // 24
    { 151.86688f, -42.100590f, 18.007f, 1.59041f }, // 25
    { 154.82078f, -42.077461f, 18.007f, 1.59041f }, // 26
    { 154.77267f, -45.024055f, 18.007f, 1.59041f }, // 27
    { 151.72085f, -44.997993f, 18.007f, 1.59041f }, // 28
    { 148.88606f, -44.964539f, 18.007f, 1.59041f }, // 29
    { 148.89892f, -47.924526f, 18.007f, 1.59041f }, // 30
    { 151.74072f, -47.891113f, 18.007f, 1.59041f }, // 31
    { 154.70851f, -47.859352f, 18.007f, 1.59041f }, // 32
    { 154.68435f, -50.925259f, 18.007f, 1.59041f }, // 33
    { 151.73756f, -50.959892f, 18.007f, 1.59041f }, // 34
    { 148.89576f, -50.993290f, 18.007f, 1.59041f }, // 35
    { 148.76803f, -53.945572f, 18.007f, 1.59041f }, // 36
    { 151.82702f, -53.945675f, 18.007f, 1.59041f }, // 37
    { 154.78801f, -53.945774f, 18.007f, 1.59041f }  // 38
};

struct npc_areatriggerAI : public ScriptedAI
{
    explicit npc_areatriggerAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        npc_areatriggerAI::Reset();
    }

    bool m_bIsTrashSpawned{};

    uint16 m_uiCheckPulse{};
    uint8 m_uiTrashMob{(38 + 1)};
    uint8 m_uiITR{};

    void Reset() override
    {
        m_bIsTrashSpawned = false;
        m_uiCheckPulse = 500;
    }

    void SummonAdds()
    {
        m_bIsTrashSpawned = true;

        for ( ; m_uiITR < m_uiTrashMob; ++m_uiITR)
        {
            m_creature->SummonCreature(ScarletCitadelUnit::NPC_FIRST_WING_TRASH, vfSpawnPoint[0].m_fX, vfSpawnPoint[0].m_fY, vfSpawnPoint[0].m_fZ, vfSpawnPoint[0].m_fO, TEMPSUMMON_DEAD_DESPAWN, 30000);
        }
    }

    void JustSummoned(Creature* pSummoned) override
    {
        if (pSummoned->GetEntry() == ScarletCitadelUnit::NPC_FIRST_WING_TRASH)
        {
            pSummoned->MonsterMoveWithSpeed(vfLastWaypoint[m_uiITR].m_fX, vfLastWaypoint[m_uiITR].m_fY, vfLastWaypoint[m_uiITR].m_fZ, vfLastWaypoint[m_uiITR].m_fO, 5, uint32(MOVE_PATHFINDING | MOVE_FORCE_DESTINATION));
        }
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (m_uiCheckPulse < uiDiff && !m_bIsTrashSpawned)
        {
            Map::PlayerList const& list{ m_creature->GetMap()->GetPlayers() };
            for (const auto& i : list)
            {
                if (i.getSource()->IsInRange3d(m_creature->GetPositionX(), m_creature->GetPositionY(), m_creature->GetPositionZ(), 0.0f, 7.0f))
                {
                    SummonAdds();
                }
            }

            m_uiCheckPulse = 500;
        }
        else
        {
            m_uiCheckPulse -= uiDiff;
        }
    }
};

CreatureAI* GetAI_npc_areatrigger(Creature* pCreature)
{
    return new npc_areatriggerAI(pCreature);
}

// Trash OUTSIDE
struct npc_citadel_inquisitor_AI : public ScriptedAI
{
    explicit npc_citadel_inquisitor_AI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        npc_citadel_inquisitor_AI::Reset();
    }

    void Reset() override
    {

    }

    void UpdateAI(uint32 const uiDiff) override
    {
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

    void Reset() override
    {

    }

    void UpdateAI(uint32 const uiDiff) override
    {
        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_npc_citadel_valiant(Creature* pCreature)
{
    return new npc_citadel_valiant_AI(pCreature);
}

struct npc_citadel_anti_exploit_AI : public ScriptedAI
{
    explicit npc_citadel_anti_exploit_AI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        npc_citadel_anti_exploit_AI::Reset();
    }

    uint16 m_uiCheckPulse{};

    static constexpr uint32 SPELL_STUN{ 27880 };

    void Reset() override
    {
        m_uiCheckPulse = 500;

        m_creature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_IMMUNE_TO_PLAYER | UNIT_FLAG_IMMUNE_TO_NPC);
        m_creature->SetVisibility(VISIBILITY_OFF);
    }

    void UpdateAI(uint32 const uiDiff) override
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
                        m_creature->GetPositionZ(), 0.0f, 20.f))
                    {
                        static_cast<Unit*>(pPlayer)->NearTeleportTo(232.119843f, 25.800516f, 30.823233f, 3.145022f); // Teleport back to Mariella
                        pPlayer->AddAura(SPELL_STUN);
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
};

CreatureAI* GetAI_npc_citadel_anti_exploit(Creature* pCreature)
{
    return new npc_citadel_anti_exploit_AI(pCreature);
}

void AddSC_trash_mobs_scarlet_citadel()
{
    Script* pNewscript;

    // Trash INSIDE
    pNewscript = new Script;
    pNewscript->Name = "npc_areatrigger";
    pNewscript->GetAI = &GetAI_npc_areatrigger;
    pNewscript->RegisterSelf();

    // Trash OUTSIDE
    pNewscript = new Script;
    pNewscript->Name = "npc_citadel_inquisitor";
    pNewscript->GetAI = &GetAI_npc_citadel_inquisitor;
    pNewscript->RegisterSelf();

    pNewscript = new Script;
    pNewscript->Name = "npc_citadel_valiant";
    pNewscript->GetAI = &GetAI_npc_citadel_valiant;
    pNewscript->RegisterSelf();

    pNewscript = new Script;
    pNewscript->Name = "npc_citadel_anti_exploit";
    pNewscript->GetAI = &GetAI_npc_citadel_anti_exploit;
    pNewscript->RegisterSelf();
}
