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

WorldBotTravelSystem::~WorldBotTravelSystem()
{
    // Cleanup if needed...
}

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

    // Debug output
    /*for (const auto& pair : m_nodeConnections)
    {
        sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "WorldBotTravelSystem: Node %u has %zu connections",
            pair.first, pair.second.size());
    }*/
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
    sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "WorldBotTravelSystem: Finding path from node %u to node %u", startNodeId, endNodeId);

    std::queue<uint32> queue;
    std::unordered_map<uint32, uint32> cameFrom;
    queue.push(startNodeId);
    cameFrom[startNodeId] = startNodeId;

    while (!queue.empty())
    {
        uint32 current = queue.front();
        queue.pop();

        //sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "WorldBotTravelSystem: Examining node %u", current);

        if (current == endNodeId)
        {
            sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "WorldBotTravelSystem: Reached end node %u", endNodeId);
            break;
        }

        const auto& connections = m_nodeConnections.find(current);
        if (connections != m_nodeConnections.end())
        {
            //sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "WorldBotTravelSystem: Node %u has %zu connections", current, connections->second.size());
            for (uint32 next : connections->second)
            {
                if (cameFrom.find(next) == cameFrom.end())
                {
                    queue.push(next);
                    cameFrom[next] = current;
                    sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "WorldBotTravelSystem: Added node %u to queue", next);
                }
            }
        }
        else
        {
            sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "WorldBotTravelSystem: Node %u has no connections", current);
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

        sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "WorldBotTravelSystem: FindPath from %u to %u found path with %zu nodes",
            startNodeId, endNodeId, nodePath.size());

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

    sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "WorldBotTravelSystem: FindPath from %u to %u found path with %zu points",
        startNodeId, endNodeId, fullPath.size());

    // Log details of each point in the path
    for (size_t i = 0; i < fullPath.size(); ++i)
    {
        const TravelPath& point = fullPath[i];
        sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "WorldBotTravelSystem: Path point %zu: Node %u to %u, Map %u, Coords (%.2f, %.2f, %.2f)",
            i, point.nodeId, point.toNodeId, point.mapId, point.x, point.y, point.z);
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
    m_currentPath.clear();
    m_currentPathIndex = 0;

    sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "WorldBotAI: %s starting new path", me->GetName());

    const TravelNode* nearestNode = sWorldBotTravelSystem.GetNearestNode(me->GetPositionX(), me->GetPositionY(), me->GetPositionZ(), me->GetMapId());

    if (!nearestNode)
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotAI: Unable to find nearest node for bot %s", me->GetName());
        return;
    }

    sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "WorldBotAI: Nearest node for bot %s is %u at (%.2f, %.2f, %.2f)", me->GetName(), nearestNode->id, nearestNode->x, nearestNode->y, nearestNode->z);

    uint32 destNodeId = sWorldBotTravelSystem.GetRandomNodeId(me->GetMapId(), nearestNode->id);

    if (destNodeId == 0)
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotAI: Unable to find destination node for bot %s", me->GetName());
        return;
    }

    sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "WorldBotAI: Destination node for bot %s is %u", me->GetName(), destNodeId);

    m_currentPath = sWorldBotTravelSystem.FindPath(nearestNode->id, destNodeId);

    sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "WorldBotAI: FindPath returned %zu points for bot %s", m_currentPath.size(), me->GetName());

    if (m_currentPath.empty())
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotAI: Unable to find path for bot %s", me->GetName());
        return;
    }

    sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "WorldBotAI: New path created for bot %s with %zu points", me->GetName(), m_currentPath.size());

    // Start moving to the first point in the path
    MoveToNextPoint();

    // Show the new path
    ShowCurrentPath();
}

bool WorldBotTravelSystem::ResumePath(Player* player, std::vector<TravelPath>& currentPath, size_t& currentPathIndex)
{
    if (currentPath.empty())
    {
        return false; // No path to resume
    }

    // Find the nearest point on the path
    float shortestDistance = std::numeric_limits<float>::max();
    size_t nearestIndex = 0;

    for (size_t i = 0; i < currentPath.size(); ++i)
    {
        float distance = player->GetDistance(currentPath[i].x, currentPath[i].y, currentPath[i].z);
        if (distance < shortestDistance)
        {
            shortestDistance = distance;
            nearestIndex = i;
        }
    }

    // If we're too far from the path, return false to allow for a new path to be created
    float maxResumeDistance = 200.0f; // Adjust this value as needed
    if (shortestDistance > maxResumeDistance)
    {
        sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "WorldBotTravelSystem: %s too far from path (%.2f > %.2f), cannot resume",
            player->GetName(), shortestDistance, maxResumeDistance);
        return false;
    }

    // Set the current index to the nearest point
    currentPathIndex = nearestIndex;

    sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "WorldBotTravelSystem: %s resuming path at index %zu, distance %.2f",
        player->GetName(), currentPathIndex, shortestDistance);

    return true;
}

void WorldBotAI::MoveToNextPoint()
{
    if (m_currentPathIndex >= m_currentPath.size())
    {
        // We've reached the end of the path
        StartNewPathToNode();
        return;
    }

    const TravelPath& pathPoint = m_currentPath[m_currentPathIndex];

    sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "WorldBotAI: Bot %s moving to point %u/%zu: %.2f, %.2f, %.2f",
        me->GetName(), m_currentPathIndex + 1, m_currentPath.size(), pathPoint.x, pathPoint.y, pathPoint.z);

    me->GetMotionMaster()->MovePoint(pathPoint.nr, pathPoint.x/* + frand(-2, 2)*/, pathPoint.y/* + frand(-2, 2)*/, pathPoint.z, MOVE_PATHFINDING);
    m_currentPathIndex++;
}

void WorldBotAI::MovementInform(uint32 movementType, uint32 data)
{
    if (movementType == POINT_MOTION_TYPE)
    {
        if (!m_currentPath.empty())
            MoveToNextPoint();

        ActivateNearbyAreaTrigger();
    }
}

#define SPELL_RED_GLOW 20370

void WorldBotTravelSystem::ShowCurrentPath(Player* bot, const std::vector<TravelPath>& currentPath, size_t currentPathIndex, uint32 currentNodeId)
{
    ClearPathVisuals(bot);

    if (currentPath.empty())
    {
        bot->GetSession()->SendNotification("No current path to display.");
        return;
    }

    std::vector<ObjectGuid>& visuals = m_pathVisuals[bot->GetObjectGuid()];

    for (size_t i = currentPathIndex; i < currentPath.size(); ++i)
    {
        const TravelPath& pathPoint = currentPath[i];
        if (Creature* pWaypoint = bot->SummonCreature(VISUAL_WAYPOINT, pathPoint.x, pathPoint.y, pathPoint.z, 0.0f, TEMPSUMMON_MANUAL_DESPAWN, 0, true))
        {
            pWaypoint->SetObjectScale(0.5f);
            visuals.push_back(pWaypoint->GetObjectGuid());

            if (i == currentPathIndex)
            {
                // Highlight the next point in the path
                pWaypoint->CastSpell(pWaypoint, SPELL_RED_GLOW, true);
            }
        }
    }

    // Show the current node and destination node
    if (const TravelNode* currentNode = GetNode(currentNodeId))
    {
        if (Creature* pNode = bot->SummonCreature(VISUAL_WAYPOINT, currentNode->x, currentNode->y, currentNode->z, 0.0f, TEMPSUMMON_MANUAL_DESPAWN, 0, true))
        {
            pNode->SetObjectScale(1.0f);
            pNode->CastSpell(pNode, SPELL_RED_GLOW, true);
            visuals.push_back(pNode->GetObjectGuid());
        }
    }

    bot->GetSession()->SendNotification("Showing current path and nodes.");
}

void WorldBotTravelSystem::ShowAllPathsAndNodes(Player* player)
{
    ClearPathVisuals(player);

    std::vector<ObjectGuid>& visuals = m_pathVisuals[player->GetObjectGuid()];

    for (const auto& nodePair : m_travelNodes)
    {
        const TravelNode& node = nodePair.second;
        if (Creature* pNode = player->SummonCreature(VISUAL_WAYPOINT, node.x, node.y, node.z, 0.0f, TEMPSUMMON_MANUAL_DESPAWN, 0, true))
        {
            pNode->SetObjectScale(1.0f);
            pNode->CastSpell(pNode, SPELL_RED_GLOW, true);
            visuals.push_back(pNode->GetObjectGuid());
        }
    }

    for (const auto& pathPair : m_travelPaths)
    {
        const TravelPath& path = pathPair.second;
        if (Creature* pWaypoint = player->SummonCreature(VISUAL_WAYPOINT, path.x, path.y, path.z, 0.0f, TEMPSUMMON_MANUAL_DESPAWN, 0, true))
        {
            pWaypoint->SetObjectScale(0.5f);
            visuals.push_back(pWaypoint->GetObjectGuid());
        }
    }

    player->GetSession()->SendNotification("Showing all paths and nodes.");
}

void WorldBotTravelSystem::ClearPathVisuals(Player* bot)
{
    auto it = m_pathVisuals.find(bot->GetObjectGuid());
    if (it != m_pathVisuals.end())
    {
        for (const auto& guid : it->second)
        {
            if (Creature* visual = bot->GetMap()->GetCreature(guid))
            {
                visual->RemoveFromWorld();
                visual->AddObjectToRemoveList();
            }
        }
        it->second.clear();
    }
}
