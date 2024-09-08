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
    if (!SetExploreDestination())
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotAI: %s failed to set explore destination", me->GetName());
        return;
    }

    if (StartNewPathToSpecificDestination(DestCoordinatesX, DestCoordinatesY, DestCoordinatesZ, me->GetMapId(), false))
    {
        sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "WorldBotAI: %s started exploring to %s (%.2f, %.2f, %.2f)",
            me->GetName(), DestName.c_str(), DestCoordinatesX, DestCoordinatesY, DestCoordinatesZ);
        hasPoiDestination = true;
    }
    else
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotAI: %s failed to start path to explore destination", me->GetName());
        hasPoiDestination = false;
    }
}

bool WorldBotAI::IsExploringComplete() const
{
    // Exploring is complete if we've reached the destination or got interrupted
    if (!hasPoiDestination)
        return true;

    float distanceToDestination = me->GetDistance(DestCoordinatesX, DestCoordinatesY, DestCoordinatesZ);
    return distanceToDestination < 5.0f; // Consider it complete if within 5 yards
}

void WorldBotAI::RegisterExploreTask()
{
    m_taskManager.RegisterTask({
        TASK_EXPLORE,
        "Explore",
        PRIORITY_MEDIUM,
        [this](WorldBotAI* bot) { return this->CanPerformExplore(); },
        [this](WorldBotAI* bot) { this->StartExploring(); },
        [this](WorldBotAI* bot) { return this->IsExploringComplete(); }
        });
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
