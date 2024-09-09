#include "WorldBotAI.h"
#include "WorldBotTravelSystem.h"
#include "WorldBotTaskManager.h"
#include "Map.h"
#include "GridSearchers.h"
#include "Creature.h"

bool WorldBotAI::CanPerformGrind() const
{
    // Can grind if not in combat and not already at a destination
    return !me->IsInCombat() && m_grindHotSpots.empty();
}

void WorldBotAI::StartGrinding()
{
    // Reset previous grinding state
    m_grindHotSpots.clear();
    m_grindEntryTarget = 0;
    m_grindMaxLevel = 0;
    m_currentHotSpotIndex = 0;

    if (!SetGrindDestination())
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotAI: %s failed to set grind destination", me->GetName());
        m_taskManager.CompleteCurrentTask();
        return;
    }

    // Move to the first hot spot
    if (StartNewPathToSpecificDestination(m_grindHotSpots[0].x, m_grindHotSpots[0].y, m_grindHotSpots[0].z, me->GetMapId(), false))
    {
        sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "WorldBotAI: %s started grinding to first hot spot (%.2f, %.2f, %.2f)",
            me->GetName(), m_grindHotSpots[0].x, m_grindHotSpots[0].y, m_grindHotSpots[0].z);
    }
    else
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotAI: %s failed to start path to grind destination", me->GetName());
        m_taskManager.CompleteCurrentTask();
    }
}

bool WorldBotAI::IsGrindingComplete() const
{
    // Grinding is complete when we've visited all hot spots
    return m_currentHotSpotIndex >= m_grindHotSpots.size();
}

bool WorldBotAI::SetGrindDestination()
{
    // Query the database for grind information
    std::ostringstream query;
    query << "SELECT Guid, HotSpots, EntryTarget, MaxLevel FROM worldbot_easy_quest_profiles WHERE "
        << "QuestType != 'KillAndLoot' AND Faction = '" << (me->GetTeam() == ALLIANCE ? "alliance" : "horde") << "' "
        << "AND Race = '" << (me->GetTeam() == ALLIANCE ? "human" : "orc") << "' "
        << "AND MapId = " << me->GetMapId() << " "
        << "ORDER BY RAND() LIMIT 1";

    std::unique_ptr<QueryResult> result(WorldDatabase.Query(query.str().c_str()));
    if (!result)
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotAI: No valid grind profiles found for bot %s", me->GetName());
        return false;
    }

    Field* fields = result->Fetch();
    std::string hotSpots = fields[1].GetString();
    m_grindEntryTarget = fields[2].GetUInt32();
    m_grindMaxLevel = fields[3].GetUInt32();

    // Parse hot spots
    std::vector<std::string> coordinates = SplitString(hotSpots, ',');
    for (const auto& coord : coordinates)
    {
        std::vector<std::string> xyz = SplitString(coord, ' ');
        if (xyz.size() == 3)
        {
            Position pos;
            pos.x = std::stof(xyz[0]);
            pos.y = std::stof(xyz[1]);
            pos.z = std::stof(xyz[2]);
            m_grindHotSpots.push_back(pos);
        }
    }

    if (m_grindHotSpots.empty())
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotAI: No valid hot spots found for bot %s", me->GetName());
        return false;
    }

    return true;
}

bool WorldBotAI::HasReachedGrindDestination() const
{
    if (m_currentHotSpotIndex >= m_grindHotSpots.size())
        return false;

    const Position& currentHotSpot = m_grindHotSpots[m_currentHotSpotIndex];
    float distanceToHotSpot = me->GetDistance(currentHotSpot.x, currentHotSpot.y, currentHotSpot.z);
    return distanceToHotSpot < 5.0f; // Consider it reached if within 5 yards
}

void WorldBotAI::CreatePathFromHotSpots()
{
    m_currentPath.clear();
    m_currentPathIndex = 0;

    for (size_t i = m_currentHotSpotIndex; i < m_grindHotSpots.size(); ++i)
    {
        const Position& hotSpot = m_grindHotSpots[i];
        TravelPath pathPoint;
        pathPoint.x = hotSpot.x;
        pathPoint.y = hotSpot.y;
        pathPoint.z = hotSpot.z;
        pathPoint.mapId = me->GetMapId();
        pathPoint.nr = i - m_currentHotSpotIndex;
        m_currentPath.push_back(pathPoint);
    }

    sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "WorldBotAI: Created path from hot spots for bot %s with %zu points", me->GetName(), m_currentPath.size());

    // Start moving to the first point in the path
    MoveToNextPoint();
}

void WorldBotAI::UpdateGrindingBehavior()
{
    if (m_taskManager.GetCurrentTaskId() != TASK_GRIND)
        return;

    if (me->IsInCombat())
        return;

    if (m_grindUpdateTimer.Passed())
    {
        m_grindUpdateTimer.Reset(1000); // Update every second

        // Check if we're at a grind spot
        if (HasReachedGrindDestination())
        {
            // Look for EntryTarget to attack
            if (Unit* target = FindEntryTargetToAttack())
            {
                AttackStart(target);
                return;
            }
        }

        // If no target found or not at grind spot, move to next hot spot
        if (m_currentHotSpotIndex < m_grindHotSpots.size())
        {
            const Position& nextSpot = m_grindHotSpots[m_currentHotSpotIndex];
            me->GetMotionMaster()->MovePoint(0, nextSpot.x, nextSpot.y, nextSpot.z, MOVE_PATHFINDING);
            m_currentHotSpotIndex++;
        }
        else
        {
            // All hot spots visited, reset to first one
            m_currentHotSpotIndex = 0;
            const Position& firstSpot = m_grindHotSpots[0];
            me->GetMotionMaster()->MovePoint(0, firstSpot.x, firstSpot.y, firstSpot.z, MOVE_PATHFINDING);
        }
    }
}

Unit* WorldBotAI::FindEntryTargetToAttack()
{
    float searchRange = 50.0f; // Adjust this value as needed
    bool alive = true;

    Creature* target = GetClosestCreatureWithEntry(me, m_grindEntryTarget, 50.0f);

    if (target && target->IsAlive() && me->IsValidAttackTarget(target) && target->GetLevel() <= m_grindMaxLevel)
    {
        float distance = me->GetDistance(target);
        if (distance <= searchRange)
        {
            return target;
        }
    }

    return nullptr;
}

// Helper function to split strings
std::vector<std::string> WorldBotAI::SplitString(const std::string& str, char delim)
{
    std::vector<std::string> result;
    std::istringstream iss(str);
    std::string token;
    while (std::getline(iss, token, delim))
    {
        result.push_back(token);
    }
    return result;
}

void WorldBotAI::RegisterGrindTask()
{
    m_taskManager.RegisterTask({
        TASK_GRIND,
        "Grind",
        PRIORITY_MEDIUM,
        [this](WorldBotAI* bot) { return this->CanPerformGrind(); },
        [this](WorldBotAI* bot) { this->StartGrinding(); },
        [this](WorldBotAI* bot) { return this->IsGrindingComplete(); },
        true // implemented
        });
}
