#include "WorldBotAI.h"
#include "WorldBotTravelSystem.h"
#include "Player.h"
#include "MotionMaster.h"
#include "Database/DatabaseEnv.h"
#include "Log.h"
#include <algorithm>
#include <random>
#include <limits>
#include <queue>

WorldBotTravelSystem::WorldBotTravelSystem()
    : m_randomGenerator(std::random_device{}())
{
    // Other initialization...
}

WorldBotTravelSystem::~WorldBotTravelSystem() { }

void WorldBotTravelSystem::LoadTravelNodes()
{
    std::unique_ptr<QueryResult> result = WorldDatabase.Query("SELECT id, name, map_id, x, y, z, linked FROM ai_playerbot_travelnode");
    if (!result)
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotTravelSystem: Unable to load travel nodes.");
        return;
    }

    do
    {
        Field* fields = result->Fetch();
        TravelNode node;
        node.id = fields[0].GetUInt32();
        node.name = fields[1].GetString();
        node.mapId = fields[2].GetUInt32();
        node.x = fields[3].GetFloat();
        node.y = fields[4].GetFloat();
        node.z = fields[5].GetFloat();
        node.linked = fields[6].GetBool();

        m_travelNodes[node.id] = node;
    } while (result->NextRow());

    for (const auto& pair : m_travelNodes)
    {
        m_mapNodeIds[pair.second.mapId].push_back(pair.first);
    }

    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, ">> Loaded %u travel nodes", (uint32)m_travelNodes.size());
}

void WorldBotTravelSystem::LoadTravelNodeLinks()
{
    std::unique_ptr<QueryResult> result = WorldDatabase.Query("SELECT node_id, to_node_id, type, object, distance, swim_distance, extra_cost, calculated, max_creature_0, max_creature_1, max_creature_2 FROM ai_playerbot_travelnode_link");
    if (!result)
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotTravelSystem: Unable to load travel node links.");
        return;
    }

    do
    {
        Field* fields = result->Fetch();
        TravelNodeLink link;
        link.nodeId = fields[0].GetUInt32();
        link.toNodeId = fields[1].GetUInt32();
        link.type = fields[2].GetUInt32();
        link.object = fields[3].GetUInt32();
        link.distance = fields[4].GetFloat();
        link.swimDistance = fields[5].GetFloat();
        link.extraCost = fields[6].GetUInt32();
        link.calculated = fields[7].GetBool();
        link.maxCreature[0] = fields[8].GetUInt32();
        link.maxCreature[1] = fields[9].GetUInt32();
        link.maxCreature[2] = fields[10].GetUInt32();

        m_travelNodeLinks.insert(std::make_pair(link.nodeId, link));
    } while (result->NextRow());

    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, ">> Loaded %u travel node links", (uint32)m_travelNodeLinks.size());
}

void WorldBotTravelSystem::LoadTravelPaths()
{
    std::unique_ptr<QueryResult> result = WorldDatabase.Query("SELECT node_id, to_node_id, nr, map_id, x, y, z FROM ai_playerbot_travelnode_path");
    if (!result)
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotTravelSystem: Unable to load travel paths.");
        return;
    }

    do
    {
        Field* fields = result->Fetch();
        TravelPath path;
        path.nodeId = fields[0].GetUInt32();
        path.toNodeId = fields[1].GetUInt32();
        path.nr = fields[2].GetUInt32();
        path.mapId = fields[3].GetUInt32();
        path.x = fields[4].GetFloat();
        path.y = fields[5].GetFloat();
        path.z = fields[6].GetFloat();

        m_travelPaths.insert(std::make_pair(std::make_pair(path.nodeId, path.toNodeId), path));

        // Populate m_nodeConnections
        m_nodeConnections[path.nodeId].push_back(path.toNodeId);
    } while (result->NextRow());

    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, ">> Loaded %u travel path points", (uint32)m_travelPaths.size());
}

const TravelNode* WorldBotTravelSystem::GetNearestNode(float x, float y, float z, uint32 mapId) const
{
    const TravelNode* nearestNode = nullptr;
    float nearestDistanceSq = std::numeric_limits<float>::max();

    const auto& nodeIds = m_mapNodeIds.find(mapId);
    if (nodeIds != m_mapNodeIds.end())
    {
        for (uint32 nodeId : nodeIds->second)
        {
            const TravelNode& node = m_travelNodes.at(nodeId);
            float distanceSq = (node.x - x) * (node.x - x) + (node.y - y) * (node.y - y) + (node.z - z) * (node.z - z);
            if (distanceSq < nearestDistanceSq)
            {
                nearestDistanceSq = distanceSq;
                nearestNode = &node;
            }
        }
    }

    return nearestNode;
}

const TravelPath* WorldBotTravelSystem::GetPathBetweenNodes(uint32 fromNodeId, uint32 toNodeId) const
{
    auto it = std::find_if(m_travelPaths.begin(), m_travelPaths.end(),
        [fromNodeId, toNodeId](const auto& pair) {
            return pair.second.nodeId == fromNodeId && pair.second.toNodeId == toNodeId;
        });

    return it != m_travelPaths.end() ? &(it->second) : nullptr;
}

std::vector<uint32> WorldBotTravelSystem::GetPathToPosition(float x, float y, float z, uint32 mapId) const
{
    uint32 startNodeId = GetNearestNodeId(x, y, z, mapId);
    uint32 endNodeId = GetNearestNode(x, y, z, mapId)->id;

    // Call FindPath to get the vector of TravelPath
    std::vector<TravelPath> fullPath = FindPath(startNodeId, endNodeId);

    // Convert the vector of TravelPath to a vector of uint32 (node IDs)
    std::vector<uint32> nodePath;
    for (const auto& pathSegment : fullPath)
    {
        nodePath.push_back(pathSegment.nodeId);
    }

    // Add the final node ID if it's not already included
    if (!nodePath.empty() && nodePath.back() != endNodeId)
    {
        nodePath.push_back(endNodeId);
    }

    return nodePath;
}

uint32 WorldBotTravelSystem::GetNearestNodeId(float x, float y, float z, uint32 mapId) const
{
    TravelNode const* nearestNode = GetNearestNode(x, y, z, mapId);
    return nearestNode ? nearestNode->id : 0;
}

bool WorldBotTravelSystem::CanReachByWalking(uint32 startNodeId, uint32 endNodeId) const
{
    std::vector<uint32> nodesToCheck;
    std::unordered_set<uint32> visitedNodes;
    nodesToCheck.push_back(startNodeId);
    visitedNodes.insert(startNodeId);

    while (!nodesToCheck.empty())
    {
        uint32 currentNodeId = nodesToCheck.back();
        nodesToCheck.pop_back();

        if (currentNodeId == endNodeId)
        {
            return true;
        }

        auto linkRange = m_travelNodeLinks.equal_range(currentNodeId);
        for (auto it = linkRange.first; it != linkRange.second; ++it)
        {
            const TravelNodeLink& link = it->second;
            if (link.type == static_cast<uint32>(TravelNodePathType::Walk))
            {
                if (visitedNodes.find(link.toNodeId) == visitedNodes.end())
                {
                    nodesToCheck.push_back(link.toNodeId);
                    visitedNodes.insert(link.toNodeId);
                }
            }
        }
    }

    return false;
}

std::pair<std::multimap<std::pair<uint32, uint32>, TravelPath>::const_iterator, std::multimap<std::pair<uint32, uint32>, TravelPath>::const_iterator> WorldBotTravelSystem::GetAllPathsFromNode(uint32 nodeId) const
{
    return m_travelPaths.equal_range(std::make_pair(nodeId, 0));
}

std::vector<TravelPath> WorldBotTravelSystem::FindPath(uint32 startNodeId, uint32 endNodeId) const
{
    sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "WorldBotTravelSystem: Finding path from node %u to node %u", startNodeId, endNodeId);

    std::queue<uint32> queue;
    std::unordered_map<uint32, uint32> cameFrom;
    queue.push(startNodeId);
    cameFrom[startNodeId] = startNodeId;

    while (!queue.empty())
    {
        uint32 current = queue.front();
        queue.pop();

        sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "WorldBotTravelSystem: Examining node %u", current);

        if (current == endNodeId)
        {
            sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "WorldBotTravelSystem: Reached end node %u", endNodeId);
            break;
        }

        const auto& connections = m_nodeConnections.find(current);
        if (connections != m_nodeConnections.end())
        {
            sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "WorldBotTravelSystem: Node %u has %zu connections", current, connections->second.size());
            for (uint32 next : connections->second)
            {
                if (cameFrom.find(next) == cameFrom.end())
                {
                    queue.push(next);
                    cameFrom[next] = current;
                    sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "WorldBotTravelSystem: Added node %u to queue", next);
                }
            }
        }
        else
        {
            sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "WorldBotTravelSystem: Node %u has no connections", current);
        }
    }

    std::vector<TravelPath> fullPath;
    if (cameFrom.find(endNodeId) != cameFrom.end())
    {
        std::vector<uint32> nodePath;
        uint32 current = endNodeId;
        while (current != startNodeId)
        {
            nodePath.push_back(current);
            current = cameFrom[current];
        }
        nodePath.push_back(startNodeId);
        std::reverse(nodePath.begin(), nodePath.end());

        sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "WorldBotTravelSystem: FindPath from %u to %u found path with %zu nodes", startNodeId, endNodeId, nodePath.size());

        // Convert node path to full TravelPath
        for (size_t i = 0; i < nodePath.size() - 1; ++i)
        {
            uint32 fromNodeId = nodePath[i];
            uint32 toNodeId = nodePath[i + 1];
            auto pathRange = m_travelPaths.equal_range(std::make_pair(fromNodeId, toNodeId));
            for (auto it = pathRange.first; it != pathRange.second; ++it)
            {
                fullPath.push_back(it->second);
            }
        }
    }

    sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "WorldBotTravelSystem: FindPath from %u to %u found path with %zu points", startNodeId, endNodeId, fullPath.size());

    // Log details of each point in the path
    for (size_t i = 0; i < fullPath.size(); ++i)
    {
        const TravelPath& point = fullPath[i];
        sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "WorldBotTravelSystem: Path point %zu: Node %u to %u, Map %u, Coords (%.2f, %.2f, %.2f)", i, point.nodeId, point.toNodeId, point.mapId, point.x, point.y, point.z);
    }

    return fullPath;
}

uint32 WorldBotTravelSystem::GetRandomNodeId(uint32 mapId, uint32 startNodeId)
{
    const auto& connections = m_nodeConnections.find(startNodeId);
    if (connections != m_nodeConnections.end() && !connections->second.empty())
    {
        std::uniform_int_distribution<> dis(0, connections->second.size() - 1);
        return connections->second[dis(m_randomGenerator)];
    }

    // Fallback to random node on the map if no connections
    const auto& nodeIds = m_mapNodeIds.find(mapId);
    if (nodeIds != m_mapNodeIds.end() && !nodeIds->second.empty())
    {
        std::uniform_int_distribution<> dis(0, nodeIds->second.size() - 1);
        return nodeIds->second[dis(m_randomGenerator)];
    }

    return 0;
}

void WorldBotAI::StartNewPathToNode()
{
    m_isSpecificDestinationPath = false;
    m_currentPath.clear();
    m_currentPathIndex = 0;

    sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "WorldBotAI: %s starting new path", me->GetName());

    const TravelNode* nearestNode = sWorldBotTravelSystem.GetNearestNode(me->GetPositionX(), me->GetPositionY(), me->GetPositionZ(), me->GetMapId());

    if (!nearestNode)
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotAI: Unable to find nearest node for bot %s", me->GetName());
        return;
    }

    sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "WorldBotAI: Nearest node for bot %s is %u at (%.2f, %.2f, %.2f)", me->GetName(), nearestNode->id, nearestNode->x, nearestNode->y, nearestNode->z);

    uint32 destNodeId = sWorldBotTravelSystem.GetRandomNodeId(me->GetMapId(), nearestNode->id);

    if (destNodeId == 0)
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotAI: Unable to find destination node for bot %s", me->GetName());
        return;
    }

    sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "WorldBotAI: Destination node for bot %s is %u", me->GetName(), destNodeId);

    m_currentPath = sWorldBotTravelSystem.FindPath(nearestNode->id, destNodeId);

    sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "WorldBotAI: FindPath returned %zu points for bot %s", m_currentPath.size(), me->GetName());

    if (m_currentPath.empty())
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotAI: Unable to find path for bot %s", me->GetName());
        return;
    }

    sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "WorldBotAI: New path created for bot %s with %zu points", me->GetName(), m_currentPath.size());

    // Start moving to the first point in the path
    MoveToNextPoint();

    // Show the new path
    ShowCurrentPath();
}

#define SPELL_UNDYING_SOUL 20939
bool WorldBotAI::StartNewPathToSpecificDestination(float x, float y, float z, uint32 mapId, bool isCorpseRun)
{
    m_currentPath.clear();
    m_currentPathIndex = 0;
    sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "WorldBotAI: %s starting new path to specific destination (%.2f, %.2f, %.2f)%s",
        me->GetName(), x, y, z, isCorpseRun ? " (Corpse Run)" : "");

    const TravelNode* startNode = sWorldBotTravelSystem.GetNearestNode(me->GetPositionX(), me->GetPositionY(), me->GetPositionZ(), me->GetMapId());
    const TravelNode* endNode = sWorldBotTravelSystem.GetNearestNode(x, y, z, mapId);

    if (!startNode || !endNode)
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotAI: Unable to find start or end node for bot %s", me->GetName());
        return false;
    }

    if (startNode->id == endNode->id)
    {
        // Start and end nodes are the same, create a single-point path
        TravelPath singlePoint;
        singlePoint.nodeId = startNode->id;
        singlePoint.toNodeId = endNode->id;
        singlePoint.nr = 0;
        singlePoint.mapId = mapId;
        singlePoint.x = x;
        singlePoint.y = y;
        singlePoint.z = z;
        m_currentPath.push_back(singlePoint);
    }
    else
    {
        m_currentPath = sWorldBotTravelSystem.FindPath(startNode->id, endNode->id);
    }

    if (m_currentPath.empty())
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotAI: Unable to find path for bot %s", me->GetName());
        return false;
    }

    // Find the closest point on the path to the specific destination
    float shortestDistance = std::numeric_limits<float>::max();
    size_t closestIndex = 0;
    for (size_t i = 0; i < m_currentPath.size(); ++i)
    {
        float distance = sWorldBotTravelSystem.GetDistance3D(x, y, z, m_currentPath[i]);
        if (distance < shortestDistance)
        {
            shortestDistance = distance;
            closestIndex = i;
        }
    }

    // Truncate the path at the closest point
    m_currentPath.resize(closestIndex + 1);

    // Add the final destination point
    TravelPath finalPoint;
    finalPoint.nodeId = m_currentPath.back().toNodeId;
    finalPoint.toNodeId = 0;
    finalPoint.nr = m_currentPath.back().nr + 1;
    finalPoint.mapId = mapId;
    finalPoint.x = x;
    finalPoint.y = y;
    finalPoint.z = z;
    m_currentPath.push_back(finalPoint);

    sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "WorldBotAI: New optimized path created for bot %s with %zu points", me->GetName(), m_currentPath.size());

    m_isSpecificDestinationPath = true;

    // Corpse running
    m_isRunningToCorpse = isCorpseRun;
    if (isCorpseRun)
        m_corpseRunTimer.Reset(CORPSE_RUN_TIMEOUT);

    // Start moving to the first point in the path
    MoveToNextPoint();

    // Show the new path
    ShowCurrentPath();

    return true;
}

bool WorldBotTravelSystem::ResumePath(Player* me, std::vector<TravelPath>& currentPath, size_t& currentPathIndex, bool isSpecificDestinationPath, bool isCorpseRun)
{
    if (currentPath.empty())
    {
        return false; // No path to resume
    }

    // Find the nearest point on the path that is ahead of the current index
    float shortestDistance = std::numeric_limits<float>::max();
    size_t nearestIndex = currentPathIndex;
    bool foundNearerPoint = false;

    for (size_t i = currentPathIndex; i < currentPath.size(); ++i)
    {
        const TravelPath& pathPoint = currentPath[i];
        float distance = GetDistance3D(*me, pathPoint);
        if (distance < shortestDistance)
        {
            shortestDistance = distance;
            nearestIndex = i;
            foundNearerPoint = true;
        }
    }

    // Determine the maximum resume distance based on the path type
    float maxResumeDistance;
    if (isCorpseRun)
    {
        maxResumeDistance = 200.0f;  // Allow a larger distance for corpse runs
    }
    else if (isSpecificDestinationPath)
    {
        maxResumeDistance = 100.0f;
    }
    else
    {
        maxResumeDistance = 50.0f;
    }

    if (shortestDistance > maxResumeDistance)
    {
        sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "WorldBotTravelSystem: %s too far from path (%.2f > %.2f), cannot resume %s", me->GetName(), shortestDistance, maxResumeDistance,
            isCorpseRun ? "corpse run" : (isSpecificDestinationPath ? "specific path" : "regular path"));
        return false;
    }

    // Only update the current index if we found a nearer point ahead on the path
    if (foundNearerPoint)
    {
        currentPathIndex = nearestIndex;
        sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "WorldBotTravelSystem: %s resuming %s at index %zu, distance %.2f", me->GetName(), isCorpseRun ? "corpse run" : (isSpecificDestinationPath ? "specific path" : "regular path"), currentPathIndex, shortestDistance);
    }
    else
    {
        sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "WorldBotTravelSystem: %s continuing on current %s at index %zu", me->GetName(), isCorpseRun ? "corpse run" : (isSpecificDestinationPath ? "specific path" : "regular path"), currentPathIndex);
    }

    return true;
}

void WorldBotAI::MoveToNextPoint()
{
    if (m_currentPathIndex >= m_currentPath.size())
    {
        // End of path reached
        if(!me->IsTaxiFlying())
            OnPathComplete();
        return;
    }

    const TravelPath& pathPoint = m_currentPath[m_currentPathIndex];

    sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "WorldBotAI: Bot %s moving to point %u/%zu: %.2f, %.2f, %.2f", me->GetName(), m_currentPathIndex + 1, m_currentPath.size(), pathPoint.x, pathPoint.y, pathPoint.z);

    me->GetMotionMaster()->MovePoint(pathPoint.nr, pathPoint.x, pathPoint.y, pathPoint.z, MOVE_PATHFINDING);

    m_currentPathIndex++;

    //ShowCurrentPath();
}

void WorldBotAI::MovementInform(uint32 movementType, uint32 data)
{
    if (movementType == POINT_MOTION_TYPE)
    {
        //sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "WorldBotAI: Bot %s reached point with data %u", me->GetName(), data);

        if (!m_currentPath.empty())
        {
            if (data == m_currentPath[m_currentPathIndex - 1].nr)
            {
                uint32 currentNodeId = m_currentPath[m_currentPathIndex - 1].nodeId;
                if (ExecuteNodeAction(currentNodeId))
                {
                    MoveToNextPoint();
                }
                else
                {
                    // Handle the case where the node action couldn't be executed
                    sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "WorldBotAI: Failed to execute action for node %u", currentNodeId);
                    // You might want to implement some fallback behavior here
                }
            }
            else
            {
                sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotAI: Unexpected movement point reached for bot %s", me->GetName());
            }
        }
    }
}

void WorldBotAI::OnPathComplete()
{
    sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "WorldBotAI: Bot %s has completed its path", me->GetName());

    m_currentPath.clear();
    m_currentPathIndex = 0;

    if (m_isRunningToCorpse)
    {
        m_isRunningToCorpse = false;
        if (me->GetDeathState() == DEAD)
        {
            if (me->GetCorpse() && me->IsWithinDistInMap(me->GetCorpse(), INTERACTION_DISTANCE))
            {
                me->ResurrectPlayer(0.5f);
                me->SpawnCorpseBones();
                me->CastSpell(me, WB_SPELL_HONORLESS_TARGET, true);
            }
            else
            {
                sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "WorldBotAI: %s reached end of corpse run path but corpse not found, teleporting to resurrect", me->GetName());
                TeleportResurrect();
            }
        }
    }
    else if (m_isSpecificDestinationPath)
    {
        sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "WorldBotAI: Bot %s reached its specific destination", me->GetName());
        // Perform any actions specific to reaching a designated destination
    }
    else
    {
        StartNewPathToNode();
    }

    m_isSpecificDestinationPath = false;
}

uint32 GetRandomTaxiNode(uint32 mapid, Team team)
{
    std::vector<uint32> nodeIds;
    for (uint32 i = 1; i < sObjectMgr.GetMaxTaxiNodeId(); ++i)
    {
        TaxiNodesEntry const* node = sObjectMgr.GetTaxiNodeEntry(i);
        if (node)
        {
            if (node->map_id == mapid)
            {
                if (node->MountCreatureID[team == ALLIANCE ? 1 : 0])
                    nodeIds.push_back(node->ID);
            }
        }
    }

    uint32 id = 0;
    id = SelectRandomContainerElement(nodeIds);
    return id;
}

bool WorldBotAI::ExecuteNodeAction(uint32 nodeId)
{
    auto linkRange = sWorldBotTravelSystem.GetNodeLinks(nodeId);
    for (auto it = linkRange.first; it != linkRange.second; ++it)
    {
        const TravelNodeLink& link = it->second;
        TravelNodePathType linkType = static_cast<TravelNodePathType>(link.type);
        uint32 linkObject = link.object;

        switch (linkType)
        {
        case TravelNodePathType::Walk:
            // No special action needed for walking
            return true;

        case TravelNodePathType::AreaTrigger:
            //ActivateNearbyAreaTrigger();
            sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "WorldBotAI: AreaTrigger action triggered for node %u", nodeId);
            return true;

        case TravelNodePathType::Transport:
            // Placeholder for Transport action
            sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "WorldBotAI: Transport action not implemented for node %u", nodeId);
            return false;

        case TravelNodePathType::FlightPath:
        {
            StopMoving();
            ClearPath();

            // Make sure we have enough money
            if (me->GetMoney() < 10000000)
                me->SetMoney(10000000);

            TaxiPathEntry const* tEntry = sTaxiPathStore.LookupEntry(linkObject);
            if (tEntry)
            {
                if(me->ActivateTaxiPathTo({ tEntry->from, tEntry->to }, nullptr, true))
                {
                    sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "WorldBotAI: Bot %s activated flight path from node %u to node %u", me->GetName(), tEntry->from, tEntry->to);
                    return true;
                }
                else
                {
                    sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotAI: Bot %s failed to activate flight path from node %u to node %u", me->GetName(), tEntry->from, tEntry->to);
                    return false;
                }
            }
            else
                return false;
        }
        case TravelNodePathType::TeleportSpell:
            // Placeholder for TeleportSpell action
            sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "WorldBotAI: TeleportSpell action not implemented for node %u", nodeId);
            return false;

        case TravelNodePathType::StaticPortal:
            // Placeholder for StaticPortal action
            sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "WorldBotAI: StaticPortal action not implemented for node %u", nodeId);
            return false;

        case TravelNodePathType::None:
        default:
            sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotAI: Unknown or None type for node %u", nodeId);
            return false;
        }
    }

    sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotAI: No valid links found for node %u", nodeId);
    return false;
}

#define SPELL_RED_GLOW 20370
#define SPELL_GREEN_GLOW 20371
#define SPELL_ARROW 20374
#define SPELL_PURPLE_BALL 20369
#define SPELL_SLEEP 20373
#define SPELL_RED_SKULLS 20368
#define NPC_SPAWN_POINT 2

void WorldBotTravelSystem::ShowCurrentPath(Player * me, const std::vector<TravelPath>&currentPath, size_t currentPathIndex, uint32 currentNodeId)
{
    ClearPathVisuals(me);

    if (currentPath.empty())
    {
        me->GetSession()->SendNotification("No current path to display.");
        return;
    }

    std::vector<ObjectGuid>& visuals = m_pathVisuals[me->GetObjectGuid()];

    for (size_t i = currentPathIndex; i < currentPath.size(); ++i)
    {
        const TravelPath& pathPoint = currentPath[i];
        if (Creature* pWaypoint = me->SummonCreature(VISUAL_WAYPOINT, pathPoint.x, pathPoint.y, pathPoint.z, 0.0f, TEMPSUMMON_MANUAL_DESPAWN, 0, true))
        {
            pWaypoint->SetObjectScale(0.5f);
            visuals.push_back(pWaypoint->GetObjectGuid());

            // Color the waypoint based on its type
            uint32 glowSpell = SPELL_RED_GLOW;
            auto linkRange = GetNodeLinks(pathPoint.nodeId);
            for (auto it = linkRange.first; it != linkRange.second; ++it)
            {
                const TravelNodeLink& link = it->second;
                TravelNodePathType linkType = static_cast<TravelNodePathType>(link.type);
                switch (linkType)
                {
                case TravelNodePathType::AreaTrigger:
                    glowSpell = SPELL_GREEN_GLOW;
                    break;
                case TravelNodePathType::Transport:
                    glowSpell = SPELL_SLEEP;
                    break;
                case TravelNodePathType::FlightPath:
                    glowSpell = SPELL_PURPLE_BALL;
                    break;
                case TravelNodePathType::TeleportSpell:
                case TravelNodePathType::StaticPortal:
                    glowSpell = SPELL_RED_SKULLS;
                    break;
                default:
                    break;
                }
                if (glowSpell != SPELL_RED_GLOW)
                    break;
            }
            pWaypoint->CastSpell(pWaypoint, glowSpell, true);
        }
    }

    // Show the current node (start node)
    if (const TravelNode* currentNode = GetNode(currentNodeId))
    {
        if (Creature* pStartNode = me->SummonCreature(NPC_SPAWN_POINT, currentNode->x, currentNode->y, currentNode->z, 0.0f, TEMPSUMMON_MANUAL_DESPAWN, 0, true))
        {
            pStartNode->SetObjectScale(5.0f);
            pStartNode->CastSpell(pStartNode, SPELL_RED_GLOW, true);
            visuals.push_back(pStartNode->GetObjectGuid());
        }
    }

    // Show the end node
    if (!currentPath.empty())
    {
        const TravelPath& lastPathPoint = currentPath.back();
        if (const TravelNode* endNode = GetNode(lastPathPoint.toNodeId))
        {
            if (Creature* pEndNode = me->SummonCreature(NPC_SPAWN_POINT, endNode->x, endNode->y, endNode->z, 0.0f, TEMPSUMMON_MANUAL_DESPAWN, 0, true))
            {
                pEndNode->SetObjectScale(5.0f);
                pEndNode->CastSpell(pEndNode, SPELL_ARROW, true);
                visuals.push_back(pEndNode->GetObjectGuid());
            }
        }
    }

    me->GetSession()->SendNotification("Showing current path with colored nodes based on type.");
}

void WorldBotTravelSystem::ShowAllPathsAndNodes(Player* me)
{
    ClearPathVisuals(me);

    std::vector<ObjectGuid>& visuals = m_pathVisuals[me->GetObjectGuid()];

    for (const auto& nodePair : m_travelNodes)
    {
        const TravelNode& node = nodePair.second;
        if (Creature* pNode = me->SummonCreature(VISUAL_WAYPOINT, node.x, node.y, node.z, 0.0f, TEMPSUMMON_MANUAL_DESPAWN, 0, true))
        {
            pNode->SetObjectScale(1.0f);
            pNode->CastSpell(pNode, SPELL_RED_GLOW, true);
            visuals.push_back(pNode->GetObjectGuid());
        }
    }

    for (const auto& pathPair : m_travelPaths)
    {
        const TravelPath& path = pathPair.second;
        if (Creature* pWaypoint = me->SummonCreature(VISUAL_WAYPOINT, path.x, path.y, path.z, 0.0f, TEMPSUMMON_MANUAL_DESPAWN, 0, true))
        {
            pWaypoint->SetObjectScale(0.5f);
            visuals.push_back(pWaypoint->GetObjectGuid());
        }
    }

    me->GetSession()->SendNotification("Showing all paths and nodes.");
}

void WorldBotTravelSystem::ClearPathVisuals(Player* me)
{
    auto it = m_pathVisuals.find(me->GetObjectGuid());
    if (it != m_pathVisuals.end())
    {
        for (const auto& guid : it->second)
        {
            if (Creature* visual = me->GetMap()->GetCreature(guid))
            {
                visual->RemoveFromWorld();
                visual->AddObjectToRemoveList();
            }
        }
        it->second.clear();
    }
}
