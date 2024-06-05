#include "npc_hivezora_abomination.h"

#include "defines.h"

npc_hivezora_abomination::npc_hivezora_abomination(Creature* pCreature) : ScriptedAI(pCreature),
m_waypoints{
    Silithus::Locations::ABOMINATION_WAYPOINT_1,
    Silithus::Locations::ABOMINATION_WAYPOINT_2,
    Silithus::Locations::ABOMINATION_WAYPOINT_3,
    Silithus::Locations::ABOMINATION_WAYPOINT_4,
    Silithus::Locations::ABOMINATION_WAYPOINT_5,
}
{
    npc_hivezora_abomination::Reset();
}

void npc_hivezora_abomination::MovementInform(uint32_t movementType, uint32_t pointId)
{
    ScriptedAI::MovementInform(movementType, pointId);
    if (pointId >= m_waypoints.size())
    {
        return;
    }

    ++m_currentWaypoint;
    if (m_currentWaypoint < m_waypoints.size())
    {
        m_creature->GetMotionMaster()->MovePoint(m_currentWaypoint, m_waypoints[m_currentWaypoint], MOVE_RUN_MODE, 0.f, m_waypoints[m_currentWaypoint].orientation);
    }
}

void npc_hivezora_abomination::Reset()
{
}

void npc_hivezora_abomination::UpdateAI(const uint32 delta)
{
}

void npc_hivezora_abomination::BecomeAttackable() const
{
    m_creature->RemoveFlag(UNIT_NPC_FLAGS, UNIT_FLAG_IMMUNE);
    m_creature->RemoveFlag(UNIT_NPC_FLAGS, UNIT_FLAG_SPAWNING);
    m_creature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE);
    m_creature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_SPAWNING);
}

void npc_hivezora_abomination::BecomeImmune() const
{
    m_creature->SetFlag(UNIT_NPC_FLAGS, UNIT_FLAG_IMMUNE);
    m_creature->SetFlag(UNIT_NPC_FLAGS, UNIT_FLAG_SPAWNING);
    m_creature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE);
    m_creature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_SPAWNING);
}

void npc_hivezora_abomination::BeginPathing()
{
    m_currentWaypoint = 0;
    m_creature->GetMotionMaster()->MovePoint(m_currentWaypoint, m_waypoints[m_currentWaypoint], MOVE_RUN_MODE, 0.f, m_waypoints[m_currentWaypoint].orientation);
}

CreatureAI* npc_hivezora_abomination::GetAI(Creature* pCreature)
{
    return new npc_hivezora_abomination(pCreature);
}

void npc_hivezora_abomination::RegisterScript()
{
    const auto script = new Script();
    script->Name = "npc_hivezora_abomination";
    script->GetAI = &npc_hivezora_abomination::GetAI;
    script->RegisterSelf();
}
