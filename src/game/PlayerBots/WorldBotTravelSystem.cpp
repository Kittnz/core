#include "WorldBotAI.h"
#include "WorldBotTravelSystem.h"
#include "Player.h"
#include "MotionMaster.h"
#include "Database/DatabaseEnv.h"
#include "Log.h"
#include <algorithm>
#include <random>

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
    } while (result->NextRow());

    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, ">> Loaded %u travel path points", (uint32)m_travelPaths.size());
}

TravelNode const* WorldBotTravelSystem::GetNearestNode(float x, float y, float z, uint32 mapId) const
{
    TravelNode const* nearestNode = nullptr;
    float nearestDistance = std::numeric_limits<float>::max();

    struct Position
    {
        float x, y, z;
    };

    Position pos = { x, y, z };

    for (const auto& pair : m_travelNodes)
    {
        const TravelNode& node = pair.second;
        if (node.mapId != mapId)
            continue;

        float distance = GetDistance3D(pos, node);
        if (distance < nearestDistance)
        {
            nearestDistance = distance;
            nearestNode = &node;
        }
    }

    return nearestNode;
}

std::vector<TravelPath> WorldBotTravelSystem::GetPathBetweenNodes(uint32 startNodeId, uint32 endNodeId) const
{
    std::vector<TravelPath> path;
    auto range = m_travelPaths.equal_range(std::make_pair(startNodeId, endNodeId));
    for (auto it = range.first; it != range.second; ++it)
    {
        path.push_back(it->second);
    }
    std::sort(path.begin(), path.end(), [](const TravelPath& a, const TravelPath& b) { return a.nr < b.nr; });
    return path;
}

std::vector<uint32> WorldBotTravelSystem::GetPathToPosition(float x, float y, float z, uint32 mapId) const
{
    uint32 startNodeId = GetNearestNodeId(x, y, z, mapId);
    uint32 endNodeId = GetNearestNode(x, y, z, mapId)->id;
    return FindPath(startNodeId, endNodeId);
}

uint32 WorldBotTravelSystem::GetNearestNodeId(float x, float y, float z, uint32 mapId) const
{
    TravelNode const* nearestNode = GetNearestNode(x, y, z, mapId);
    return nearestNode ? nearestNode->id : 0;
}

bool WorldBotTravelSystem::CanReachByWalking(uint32 startNodeId, uint32 endNodeId) const
{
    std::vector<uint32> path = FindPath(startNodeId, endNodeId);
    for (uint32 nodeId : path)
    {
        if (m_travelNodes.at(nodeId).pathType != TravelNodePathType::Walk) // only paths which we can walk / run on for now until we implement actions
            return false;
    }
    return true;
}

std::pair<std::multimap<std::pair<uint32, uint32>, TravelPath>::const_iterator, std::multimap<std::pair<uint32, uint32>, TravelPath>::const_iterator> WorldBotTravelSystem::GetAllPathsFromNode(uint32 nodeId) const
{
    return m_travelPaths.equal_range(std::make_pair(nodeId, 0));
}

std::vector<uint32> WorldBotTravelSystem::FindPath(uint32 startNodeId, uint32 endNodeId) const
{
    std::unordered_map<uint32, float> distances;
    std::unordered_map<uint32, uint32> previousNodes;
    std::priority_queue<NodeDistance, std::vector<NodeDistance>, std::greater<NodeDistance>> pq;

    // Initialize distances
    for (const auto& pair : m_travelNodes)
    {
        distances[pair.first] = std::numeric_limits<float>::max();
    }
    distances[startNodeId] = 0;

    pq.push(NodeDistance(startNodeId, 0));

    while (!pq.empty())
    {
        uint32 currentNodeId = pq.top().nodeId;
        pq.pop();

        if (currentNodeId == endNodeId)
            break;

        auto linkRange = m_travelNodeLinks.equal_range(currentNodeId);
        for (auto it = linkRange.first; it != linkRange.second; ++it)
        {
            const TravelNodeLink& link = it->second;
            float newDistance = distances[currentNodeId] + link.distance;

            if (newDistance < distances[link.toNodeId])
            {
                distances[link.toNodeId] = newDistance;
                previousNodes[link.toNodeId] = currentNodeId;
                pq.push(NodeDistance(link.toNodeId, newDistance));
            }
        }
    }

    // Reconstruct path
    std::vector<uint32> path;
    uint32 currentNodeId = endNodeId;
    while (currentNodeId != startNodeId)
    {
        path.push_back(currentNodeId);
        currentNodeId = previousNodes[currentNodeId];
    }
    path.push_back(startNodeId);

    std::reverse(path.begin(), path.end());
    return path;
}

uint32 WorldBotTravelSystem::GetRandomNodeId(uint32 mapId, uint32 startNodeId) const
{
    std::vector<uint32> allNodeIds;
    for (const auto& pair : m_travelNodes)
    {
        if (pair.second.mapId == mapId && pair.first != startNodeId)
        {
            allNodeIds.push_back(pair.first);
        }
    }

    if (allNodeIds.empty())
        return 0;

    // Shuffle the node IDs to ensure randomness
    std::random_shuffle(allNodeIds.begin(), allNodeIds.end());

    for (uint32 nodeId : allNodeIds)
    {
        if (CanReachByWalking(startNodeId, nodeId))
        {
            return nodeId;
        }
    }

    // If no reachable node is found, return 0 or startNodeId
    return startNodeId; // or return 0 if you prefer
}

void WorldBotAI::StartNewPathToNode()
{
    // Clear any existing path
    m_currentPath.clear();
    m_currentPathIndex = 0;

    // Find the closest point on any path
    TravelPath closestPoint;
    float shortestDistance = std::numeric_limits<float>::max();
    uint32 closestNodeId = 0;

    for (const auto& pair : sWorldBotTravelSystem.GetAllNodes())
    {
        const TravelNode& node = pair.second;
        auto pathRange = sWorldBotTravelSystem.GetAllPathsFromNode(node.id);
        
        for (auto it = pathRange.first; it != pathRange.second; ++it)
        {
            const TravelPath& path = it->second;
            float distance = me->GetDistance(path.x, path.y, path.z);
            if (distance < shortestDistance)
            {
                shortestDistance = distance;
                closestPoint = path;
                closestNodeId = path.nodeId;
            }
        }
    }

    if (closestNodeId == 0)
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotAI: Unable to find closest point for bot %s", me->GetName());
        return;
    }

    // Get a random destination node
    uint32 destNodeId = sWorldBotTravelSystem.GetRandomNodeId(me->GetMapId(), closestNodeId);

    if (destNodeId == 0)
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotAI: Unable to find destination node for bot %s", me->GetName());
        return;
    }

    // First, create a path from the bot's current position to the closest point
    TravelPath startPath;
    startPath.x = me->GetPositionX();
    startPath.y = me->GetPositionY();
    startPath.z = me->GetPositionZ();
    startPath.mapId = me->GetMapId();
    m_currentPath.push_back(startPath);
    m_currentPath.push_back(closestPoint);

    // Then, find a path from the closest node to the destination node
    std::vector<uint32> nodePath = sWorldBotTravelSystem.FindPath(closestNodeId, destNodeId);

    if (nodePath.empty())
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotAI: Unable to find path for bot %s", me->GetName());
        return;
    }

    // Get detailed path between each pair of nodes
    for (size_t i = 0; i < nodePath.size() - 1; ++i)
    {
        uint32 fromNodeId = nodePath[i];
        uint32 toNodeId = nodePath[i + 1];

        std::vector<TravelPath> detailedPath = sWorldBotTravelSystem.GetPathBetweenNodes(fromNodeId, toNodeId);
        m_currentPath.insert(m_currentPath.end(), detailedPath.begin(), detailedPath.end());
    }

    // Start moving to the first point in the path
    MoveToNextPoint();

    // Show the new path
    ShowCurrentPath();
}

bool WorldBotTravelSystem::ResumePath(Player* player, std::vector<TravelPath>& currentPath, size_t& currentPathIndex)
{
    if (currentPath.empty() || currentPathIndex >= currentPath.size())
    {
        return false; // No path to resume
    }

    // Find the nearest point on the path
    float shortestDistance = std::numeric_limits<float>::max();
    size_t nearestIndex = currentPathIndex;

    for (size_t i = currentPathIndex; i < currentPath.size(); ++i)
    {
        float distance = player->GetDistance(currentPath[i].x, currentPath[i].y, currentPath[i].z);
        if (distance < shortestDistance)
        {
            shortestDistance = distance;
            nearestIndex = i;
        }
    }

    // If we're too far from the path, return false to allow for a new path to be created
    if (shortestDistance > 200.0f) // You can adjust this threshold as needed
    {
        return false;
    }

    // Set the current index to the nearest point
    currentPathIndex = nearestIndex;

    return true;
}

void WorldBotAI::MoveToNextPoint()
{
    if (m_currentPathIndex >= m_currentPath.size())
    {
        // We've reached the end of the path
        sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "WorldBotAI: Bot %s has reached the end of its path", me->GetName());
        return;
    }

    const TravelPath& pathPoint = m_currentPath[m_currentPathIndex];

    me->GetMotionMaster()->MovePoint(pathPoint.nr, pathPoint.x + frand(-2, 2), pathPoint.y + frand(-2, 2), pathPoint.z, MOVE_PATHFINDING);
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
