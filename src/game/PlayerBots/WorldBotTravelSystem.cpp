#include "WorldBotAI.h"
#include "WorldBotTravelSystem.h"
#include "Player.h"
#include "MotionMaster.h"
#include "Database/DatabaseEnv.h"
#include "Log.h"

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
        if (m_travelNodes.at(nodeId).pathType != TravelNodePathType::Walk)
            return false;
    }
    return true;
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

uint32 WorldBotTravelSystem::GetRandomNodeId(uint32 mapId) const
{
    std::vector<uint32> nodeIds;
    for (const auto& pair : m_travelNodes)
    {
        if (pair.second.mapId == mapId)
            nodeIds.push_back(pair.first);
    }
    if (nodeIds.empty())
        return 0;
    return nodeIds[urand(0, nodeIds.size() - 1)];
}

void WorldBotAI::StartNewPathToNode()
{
    // Clear any existing path
    m_currentPath.clear();
    m_currentPathIndex = 0;

    // Find the nearest node
    TravelNode const* nearestNode = sWorldBotTravelSystem->GetNearestNode(me->GetPositionX(), me->GetPositionY(), me->GetPositionZ(), me->GetMapId());

    if (!nearestNode)
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotAI: Unable to find nearest node for bot %s", me->GetName());
        return;
    }

    // Get a random destination node
    uint32 destNodeId = sWorldBotTravelSystem->GetRandomNodeId(me->GetMapId());

    if (destNodeId == 0)
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotAI: Unable to find destination node for bot %s", me->GetName());
        return;
    }

    // Find a path between the nearest node and the destination node
    m_currentPath = sWorldBotTravelSystem->FindPath(nearestNode->id, destNodeId);

    if (m_currentPath.empty())
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotAI: Unable to find path for bot %s", me->GetName());
        return;
    }

    // Start moving to the first node in the path
    MoveToNextPoint();
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

void WorldBotAI::MoveToNextPoint()
{
    if (m_currentPathIndex >= m_currentPath.size())
    {
        // We've reached the end of the path
        sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "WorldBotAI: Bot %s has reached the end of its path", me->GetName());
        return;
    }

    uint32 nodeId = m_currentPath[m_currentPathIndex];
    TravelNode const& node = sWorldBotTravelSystem->GetNode(nodeId);

    me->GetMotionMaster()->MovePoint(nodeId, node.x + frand(-2, 2), node.y + frand(-2, 2), node.z, MOVE_PATHFINDING);
    m_currentPathIndex++;
}
