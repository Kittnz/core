/*
 * Copyright (C) 2021-2022 Nolin (nolin.nolin.nolin.nolin@gmail.org)
 *
 * This is private software and may not be shared under any circumstances,
 * absent permission of Nolin.
 */

#include "scriptPCH.h"
#include "scarlet_citadel.h"


struct Location
{
    float m_fX, m_fY, m_fZ, m_fO;
};

static const Location vfSpawnPoint[] =
{
    { 128.852097f, -73.639236f, (15.988636f + 0.1f), 1.583155f }
};

static constexpr uint8 TOTAL_WAYPOINTS{ 18 };
static const Location vfLastWaypoint[TOTAL_WAYPOINTS] =
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

struct npc_areatriggerAI : public ScriptedAI
{
    explicit npc_areatriggerAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        npc_areatriggerAI::Reset();
    }

    uint8 m_uiITR{};
    uint16 m_uiCheckPulse{};

    bool m_bIsTrashSpawned{};

    void Reset() override
    {
        m_bIsTrashSpawned = false;
        m_uiCheckPulse = 500;
    }

    void SummonAdds()
    {
        m_bIsTrashSpawned = true;

        for ( ; m_uiITR < TOTAL_WAYPOINTS; ++m_uiITR)
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
