#include "scriptPCH.h"
#include "scarlet_citadel.h"


// Trash INSIDE
struct Location
{
    float m_fX, m_fY, m_fZ, m_fO;
};

static const Location vf_SpawnPoint[] =
{
    { 151.75450f, -62.649109f, 18.007f, 1.59041f }
};

static const Location vf_LastWaypoint[] =
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
    npc_areatriggerAI(Creature* p_Creature) : ScriptedAI(p_Creature)
    {
        //m_pInstance = static_cast<ScriptedInstance*>(p_Creature->GetInstanceData());
        Reset();
    }

    //ScriptedInstance* m_pInstance;

    bool b_IsTrashSpawned{ false };

    uint16 ui_CheckPulse{ 500 };
    uint8 ui_TrashMob{(38 + 1)};
    uint8 ui_ITR{};

    void Reset() override
    {
        b_IsTrashSpawned = false;
        ui_CheckPulse = 500;
    }

    void SummonAdds()
    {
        b_IsTrashSpawned = true;

        for ( ; ui_ITR < ui_TrashMob; ++ui_ITR)
        {
            m_creature->SummonCreature(ScarletCitadelUnit::NPC_FIRST_WING_TRASH, vf_SpawnPoint[0].m_fX, vf_SpawnPoint[0].m_fY, vf_SpawnPoint[0].m_fZ, vf_SpawnPoint[0].m_fO, TEMPSUMMON_DEAD_DESPAWN, 30000);
        }
    }

    void JustSummoned(Creature* p_Summoned) override
    {
        if (p_Summoned->GetEntry() == ScarletCitadelUnit::NPC_FIRST_WING_TRASH)
        {
            p_Summoned->MonsterMoveWithSpeed(vf_LastWaypoint[ui_ITR].m_fX, vf_LastWaypoint[ui_ITR].m_fY, vf_LastWaypoint[ui_ITR].m_fZ, vf_LastWaypoint[ui_ITR].m_fO, 5, uint32(MOVE_PATHFINDING | MOVE_FORCE_DESTINATION));
        }
    }

    void UpdateAI(const uint32 ui_Diff) override
    {
        if (ui_CheckPulse < ui_Diff && !b_IsTrashSpawned)
        {
            Map::PlayerList const& list{ m_creature->GetMap()->GetPlayers() };
            for (const auto& i : list)
            {
                if (i.getSource()->IsInRange3d(151.724518f, 2.139748f, 18.007f, 0.0f, 7.0f))
                {
                    SummonAdds();
                }
            }

            ui_CheckPulse = 500;
        }
        else
        {
            ui_CheckPulse -= ui_Diff;
        }
    }
};

CreatureAI* GetAI_npc_areatrigger(Creature* p_Creature)
{
    return new npc_areatriggerAI(p_Creature);
}

// Trash OUTSIDE
struct npc_citadel_inquisitor_AI : public ScriptedAI
{
    npc_citadel_inquisitor_AI(Creature* p_Creature) : ScriptedAI(p_Creature)
    {
        Reset();
    }

    void Reset() override
    {

    }

    void UpdateAI(uint32 const ui_Diff) override
    {
        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_npc_citadel_inquisitor(Creature* p_Creature)
{
    return new npc_citadel_inquisitor_AI(p_Creature);
}

struct npc_citadel_valiant_AI : public ScriptedAI
{
    npc_citadel_valiant_AI(Creature* p_Creature) : ScriptedAI(p_Creature)
    {
        Reset();
    }

    void Reset() override
    {

    }

    void UpdateAI(uint32 const ui_Diff) override
    {
        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_npc_citadel_valiant(Creature* p_Creature)
{
    return new npc_citadel_valiant_AI(p_Creature);
}

void AddSC_trash_mobs_scarlet_citadel()
{
    Script* p_Newscript;

    // Trash INSIDE
    p_Newscript = new Script;
    p_Newscript->Name = "npc_areatrigger";
    p_Newscript->GetAI = &GetAI_npc_areatrigger;
    p_Newscript->RegisterSelf();

    // Trash OUTSIDE
    p_Newscript = new Script;
    p_Newscript->Name = "npc_citadel_inquisitor";
    p_Newscript->GetAI = &GetAI_npc_citadel_inquisitor;
    p_Newscript->RegisterSelf();

    p_Newscript = new Script;
    p_Newscript->Name = "npc_citadel_valiant";
    p_Newscript->GetAI = &GetAI_npc_citadel_valiant;
    p_Newscript->RegisterSelf();
}
