#include "WorldBotAI.h"
#include "WorldBotTaskManager.h"
#include "Map.h"
#include "GridNotifiers.h"
#include "GridNotifiersImpl.h"
#include "CellImpl.h"

extern std::vector<WorldBotsAreaPOI> myAreaPOI;

bool WorldBotAI::CanPerformExplore() const
{
    // Can explore if not in combat and not already at a destination
    return !me->IsInCombat() && !hasPoiDestination;
}

void WorldBotAI::StartExploring()
{
    // Reset previous exploration state
    hasPoiDestination = false;
    DestName.clear();
    DestCoordinatesX = 0.0f;
    DestCoordinatesY = 0.0f;
    DestCoordinatesZ = 0.0f;
    DestMap = 0;
    ClearPath();

    if (!SetExploreDestination())
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotAI: %s failed to set explore destination", me->GetName());
        m_taskManager.CompleteCurrentTask();
        return;
    }

    if (StartNewPathToSpecificDestination(DestCoordinatesX, DestCoordinatesY, DestCoordinatesZ, me->GetMapId(), false))
    {
        sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "WorldBotAI: %s started exploring to %s (%.2f, %.2f, %.2f)",
            me->GetName(), DestName.c_str(), DestCoordinatesX, DestCoordinatesY, DestCoordinatesZ);
        hasPoiDestination = true;
    }
    else
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotAI: %s failed to start path to explore destination", me->GetName());
        m_taskManager.CompleteCurrentTask();
    }
}

bool WorldBotAI::HasReachedExploreDestination() const
{
    if (!hasPoiDestination)
        return false;

    float distanceToDestination = me->GetDistance(DestCoordinatesX, DestCoordinatesY, DestCoordinatesZ);
    return distanceToDestination < 5.0f; // Consider it reached if within 5 yards
}

bool WorldBotAI::IsExploringComplete() const
{
    return !hasPoiDestination;
}

bool WorldBotAI::SetExploreDestination()
{
    int mapId = me->GetMapId();
    std::vector<WorldBotsAreaPOI> validPOIs;

    for (const auto& poi : myAreaPOI)
    {
        if (poi.map == mapId)
        {
            validPOIs.push_back(poi);
        }
    }

    if (validPOIs.empty())
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotAI: No valid POIs found for map %d", mapId);
        return false;
    }

    size_t randomIndex = urand(0, validPOIs.size() - 1);
    const WorldBotsAreaPOI& chosenPOI = validPOIs[randomIndex];

    DestName = chosenPOI.name;
    DestCoordinatesX = chosenPOI.pos_x;
    DestCoordinatesY = chosenPOI.pos_y;
    DestCoordinatesZ = chosenPOI.pos_z;
    DestMap = chosenPOI.map;

    return true;
}

void WorldBotAI::RegisterExploreTask()
{
    m_taskManager.RegisterTask({
        TASK_EXPLORE,
        "Explore",
        PRIORITY_MEDIUM,
        [this](WorldBotAI* bot) { return this->CanPerformExplore(); },
        [this](WorldBotAI* bot) { this->StartExploring(); },
        [this](WorldBotAI* bot) { return this->IsExploringComplete(); },
        true
    });
}
