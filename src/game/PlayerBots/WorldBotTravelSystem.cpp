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

bool WorldBotTravelSystem::AreNodesConnected(uint32 startNodeId, uint32 endNodeId) const
{
    std::unordered_set<uint32> visitedNodes;
    std::queue<uint32> nodesToVisit;
    nodesToVisit.push(startNodeId);

    while (!nodesToVisit.empty())
    {
        uint32 currentNodeId = nodesToVisit.front();
        nodesToVisit.pop();

        if (currentNodeId == endNodeId)
            return true;

        if (visitedNodes.find(currentNodeId) != visitedNodes.end())
            continue;

        visitedNodes.insert(currentNodeId);

        auto linkRange = GetNodeLinks(currentNodeId);
        for (auto it = linkRange.first; it != linkRange.second; ++it)
        {
            nodesToVisit.push(it->second.toNodeId);
        }
    }

    return false;
}

std::vector<TravelPath> WorldBotTravelSystem::FindPath(uint32 startNodeId, uint32 endNodeId, bool isCorpseRun, bool allowFlightPaths) const
{
    sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "WorldBotTravelSystem: Finding path from node %u to node %u (Allow flight paths: %s)",
        startNodeId, endNodeId, allowFlightPaths ? "Yes" : "No");

    const TravelNode* startNode = GetNode(startNodeId);
    const TravelNode* endNode = GetNode(endNodeId);

    if (!startNode || !endNode)
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotTravelSystem: Start node %u or end node %u does not exist", startNodeId, endNodeId);
        return std::vector<TravelPath>();
    }

    std::vector<std::pair<float, uint32>> openSet;
    openSet.reserve(m_travelNodes.size());
    openSet.emplace_back(0.0f, startNodeId);

    std::unordered_map<uint32, uint32> cameFrom;
    std::unordered_map<uint32, float> gScore;
    std::unordered_map<uint32, float> fScore;

    gScore[startNodeId] = 0.0f;
    fScore[startNodeId] = HeuristicCostEstimate(startNodeId, endNodeId);

    sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "Initial state - Start node: %u, End node: %u, Initial f-score: %f",
        startNodeId, endNodeId, fScore[startNodeId]);

    const uint32 MAX_ITERATIONS = 100;

    for (uint32 iterationCount = 0; iterationCount < MAX_ITERATIONS && !openSet.empty(); ++iterationCount)
    {
        std::pop_heap(openSet.begin(), openSet.end(), std::greater<>());
        uint32 current = openSet.back().second;
        openSet.pop_back();

        sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "Iteration %u: Processing node %u, g-score: %f, f-score: %f",
            iterationCount, current, gScore[current], fScore[current]);

        if (current == endNodeId)
        {
            sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "Path found from %u to %u in %u iterations", startNodeId, endNodeId, iterationCount);
            return ReconstructPath(cameFrom, current);
        }

        auto linkRange = GetNodeLinks(current);
        for (auto it = linkRange.first; it != linkRange.second; ++it)
        {
            const TravelNodeLink& link = it->second;
            uint32 neighbor = link.toNodeId;
            TravelNodePathType linkType = static_cast<TravelNodePathType>(link.type);

            sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "Considering link from %u to %u of type %u", current, neighbor, static_cast<uint32>(linkType));

            if (linkType != TravelNodePathType::Transport && GetNode(neighbor)->mapId != startNode->mapId)
            {
                sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "Skipping link due to different map ID");
                continue;
            }

            if (linkType == TravelNodePathType::FlightPath && (!allowFlightPaths || isCorpseRun))
            {
                sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "Skipping flight path link");
                continue;
            }

            float tentativeGScore = gScore[current] + GetPathCost(current, neighbor, isCorpseRun, allowFlightPaths);

            if (!gScore.count(neighbor) || tentativeGScore < gScore[neighbor])
            {
                cameFrom[neighbor] = current;
                gScore[neighbor] = tentativeGScore;
                fScore[neighbor] = gScore[neighbor] + HeuristicCostEstimate(neighbor, endNodeId);

                auto it = std::find_if(openSet.begin(), openSet.end(),
                    [neighbor](const auto& pair) { return pair.second == neighbor; });

                if (it == openSet.end())
                {
                    openSet.emplace_back(fScore[neighbor], neighbor);
                    std::push_heap(openSet.begin(), openSet.end(), std::greater<>());
                }
                else
                {
                    it->first = fScore[neighbor];
                    std::make_heap(openSet.begin(), openSet.end(), std::greater<>());
                }
            }
        }

        if (iterationCount % 100 == 0)
        {
            sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "Iteration %u, open set size: %u", iterationCount, openSet.size());
        }
    }

    sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "No path found from %u to %u after %u iterations", startNodeId, endNodeId, MAX_ITERATIONS);
    return std::vector<TravelPath>();
}

float WorldBotTravelSystem::HeuristicCostEstimate(uint32 fromNodeId, uint32 toNodeId) const
{
    const TravelNode* fromNode = GetNode(fromNodeId);
    const TravelNode* toNode = GetNode(toNodeId);
    if (!fromNode || !toNode)
        return std::numeric_limits<float>::max();

    return std::sqrt(std::pow(toNode->x - fromNode->x, 2) +
        std::pow(toNode->y - fromNode->y, 2) +
        std::pow(toNode->z - fromNode->z, 2));
}

float WorldBotTravelSystem::GetPathCost(uint32 fromNodeId, uint32 toNodeId, bool isCorpseRun, bool allowFlightPaths) const
{
    auto linkRange = GetNodeLinks(fromNodeId);
    for (auto it = linkRange.first; it != linkRange.second; ++it)
    {
        if (it->second.toNodeId == toNodeId)
        {
            TravelNodePathType linkType = static_cast<TravelNodePathType>(it->second.type);

            // Handle different link types
            switch (linkType)
            {
            case TravelNodePathType::Walk:
                return it->second.distance + it->second.swimDistance + it->second.extraCost;

            case TravelNodePathType::Transport:
                // Transports might have a fixed cost or be based on distance
                return 50.0f + it->second.extraCost; // Example fixed cost

            case TravelNodePathType::FlightPath:
                if (!allowFlightPaths || isCorpseRun)
                    return std::numeric_limits<float>::max();
                // Flight paths might have a higher cost to prefer walking for shorter distances
                return 100.0f + it->second.distance * 0.5f + it->second.extraCost;

            default:
                // For unknown or unsupported link types, return a very high cost
                return std::numeric_limits<float>::max();
            }
        }
    }

    // If no link is found, return a very high cost
    return std::numeric_limits<float>::max();
}

bool WorldBotTravelSystem::IsFlightPathLink(uint32 fromNodeId, uint32 toNodeId) const
{
    auto linkRange = GetNodeLinks(fromNodeId);
    for (auto it = linkRange.first; it != linkRange.second; ++it)
    {
        const TravelNodeLink& link = it->second;
        if (link.toNodeId == toNodeId && link.type == static_cast<uint32>(TravelNodePathType::FlightPath))
        {
            return true;
        }
    }
    return false;
}

std::vector<TravelPath> WorldBotTravelSystem::ReconstructPath(const std::unordered_map<uint32, uint32>& cameFrom, uint32 current) const
{
    std::vector<uint32> nodePath;
    while (cameFrom.find(current) != cameFrom.end())
    {
        nodePath.push_back(current);
        current = cameFrom.at(current);
    }
    nodePath.push_back(current);
    std::reverse(nodePath.begin(), nodePath.end());

    sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "Reconstructed path (node IDs): ");
    for (size_t i = 0; i < nodePath.size(); ++i)
    {
        sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "  Node %zu: %u", i, nodePath[i]);
    }

    std::vector<TravelPath> fullPath;
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

    sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "Full path constructed with %zu points", fullPath.size());

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

bool WorldBotAI::StartNewPathToSpecificDestination(float x, float y, float z, uint32 mapId, bool isCorpseRun)
{
    m_currentPath.clear();
    m_currentPathIndex = 0;

    std::string taskName = m_taskManager.GetCurrentTaskName();
    std::string actionType = isCorpseRun ? "Corpse Run" : (taskName != "None" ? taskName : "Unknown Action");
    sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "WorldBotAI: %s starting new path for %s to destination (%.2f, %.2f, %.2f) on map %u",
        me->GetName(), actionType.c_str(), x, y, z, mapId);

    const TravelNode* startNode = sWorldBotTravelSystem.GetNearestNode(me->GetPositionX(), me->GetPositionY(), me->GetPositionZ(), me->GetMapId());
    const TravelNode* endNode = sWorldBotTravelSystem.GetNearestNode(x, y, z, mapId);

    if (!startNode || !endNode)
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotAI: Unable to find start or end node for bot %s", me->GetName());
        return false;
    }

    // Check if there's a possible path between nodes
    if (!sWorldBotTravelSystem.AreNodesConnected(startNode->id, endNode->id))
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotAI: No possible path between start node %u and end node %u for bot %s",
            startNode->id, endNode->id, me->GetName());
        return false;
    }

    // Try to find a path without flight paths first
    m_currentPath = sWorldBotTravelSystem.FindPath(startNode->id, endNode->id, isCorpseRun, false);

    // If no path found without flight paths, try again with flight paths allowed
    if (m_currentPath.empty() && !isCorpseRun)
    {
        m_currentPath = sWorldBotTravelSystem.FindPath(startNode->id, endNode->id, isCorpseRun, true);
    }

    if (m_currentPath.empty())
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotAI: Unable to find path for bot %s, teleporting to nearest graveyard.", me->GetName());

        // Get nearest graveyard.
        WorldSafeLocsEntry const* ClosestGrave = sObjectMgr.GetClosestGraveYard(me->GetPositionX(), me->GetPositionY(), me->GetPositionZ(), me->GetMapId(), me->GetTeam());
        if (!ClosestGrave) //No nearby graveyards (stuck in void?). Send ally to Westfall, Horde to Barrens.
            ClosestGrave = me->GetTeamId() ? sWorldSafeLocsStore.LookupEntry(10) : sWorldSafeLocsStore.LookupEntry(4);

        if (ClosestGrave)
            me->TeleportTo(ClosestGrave->map_id, ClosestGrave->x, ClosestGrave->y, ClosestGrave->z, sObjectMgr.GetWorldSafeLocFacing(ClosestGrave->ID), 0);

        if (isCorpseRun)
        {
            sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotAI: Resurrecting bot %s, we can't find a path to corpse.", me->GetName());
            me->ResurrectPlayer(0.5f);
            me->SpawnCorpseBones();
            me->CastSpell(me, WB_SPELL_HONORLESS_TARGET, true);
            m_isRunningToCorpse = false;
        }

        return false;
    }

    // Add the final destination point if it's not exactly at a node
    if (m_currentPath.back().x != x || m_currentPath.back().y != y || m_currentPath.back().z != z)
    {
        TravelPath finalPoint;
        finalPoint.nodeId = endNode->id;
        finalPoint.toNodeId = 0;
        finalPoint.nr = m_currentPath.size();
        finalPoint.mapId = mapId;
        finalPoint.x = x;
        finalPoint.y = y;
        finalPoint.z = z;
        m_currentPath.push_back(finalPoint);
    }

    sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "WorldBotAI: New optimized path created for bot %s with %zu points", me->GetName(), m_currentPath.size());

    m_isSpecificDestinationPath = true;
    m_isRunningToCorpse = isCorpseRun;
    if (isCorpseRun)
        m_corpseRunTimer.Reset(CORPSE_RUN_TIMEOUT);

    MoveToNextPoint();
    ShowCurrentPath();

    return true;
}

bool WorldBotTravelSystem::ResumePath(WorldBotAI* botAI)
{
    Player* me = botAI->me;

    // Check if the bot is dead
    if (!me->IsAlive())
    {
        // If we're already running to the corpse, continue with that
        if (botAI->m_isRunningToCorpse)
        {
            sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "WorldBotTravelSystem: %s continuing corpse run", me->GetName());
            return true;
        }
        else
        {
            // Start a new corpse run
            sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "WorldBotTravelSystem: %s is dead, initiating corpse run", me->GetName());
            botAI->m_isRunningToCorpse = true;
            botAI->m_currentPath.clear();
            botAI->m_currentPathIndex = 0;

            // Get the corpse position
            Corpse* corpse = me->GetCorpse();
            if (corpse)
            {
                float corpseX, corpseY, corpseZ;
                uint32 corpseMapId;
                corpseMapId = corpse->GetMapId();
                corpse->GetPosition(corpseX, corpseY, corpseZ);

                if (!botAI->StartNewPathToSpecificDestination(corpseX, corpseY, corpseZ, corpseMapId, true))
                {
                    sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotTravelSystem: Failed to start corpse run for %s", me->GetName());
                    return false;
                }
            }
            else
            {
                sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotTravelSystem: No corpse found for %s", me->GetName());
                return false;
            }
            return true;
        }
    }
    else if (botAI->m_isRunningToCorpse)
    {
        // If we were running to the corpse but we're now alive, stop the corpse run
        sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "WorldBotTravelSystem: %s is now alive, ending corpse run", me->GetName());
        botAI->m_isRunningToCorpse = false;
        botAI->m_currentPath.clear();
        botAI->m_currentPathIndex = 0;
        return true;
    }

    // If we're not dead and not running to corpse, proceed with normal path resumption
    if (botAI->m_currentPath.empty() && botAI->m_grindHotSpots.empty() && !botAI->hasPoiDestination)
    {
        sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "WorldBotTravelSystem: No path to resume for bot %s", me->GetName());
        return false; // No path to resume
    }

    float shortestDistance = std::numeric_limits<float>::max();
    size_t nearestIndex = botAI->m_currentPathIndex;
    bool foundNearerPoint = false;
    uint32 nearestMapId = me->GetMapId();
    float nearestX = me->GetPositionX();
    float nearestY = me->GetPositionY();
    float nearestZ = me->GetPositionZ();

    // Check if we're on a grinding task
    if (!botAI->m_grindHotSpots.empty())
    {
        // Find the nearest grind hot spot
        for (size_t i = 0; i < botAI->m_grindHotSpots.size(); ++i)
        {
            const Position& hotSpot = botAI->m_grindHotSpots[i];
            float distance = GetDistance3D(*me, hotSpot);
            if (distance < shortestDistance)
            {
                shortestDistance = distance;
                nearestIndex = i;
                foundNearerPoint = true;
                nearestMapId = me->GetMapId(); // Assuming hotspots are on the same map
                nearestX = hotSpot.x;
                nearestY = hotSpot.y;
                nearestZ = hotSpot.z;
            }
        }

        // If we found a nearer point, update the current hot spot index
        if (foundNearerPoint)
        {
            botAI->m_currentHotSpotIndex = nearestIndex;
            sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "WorldBotTravelSystem: %s resuming grind task at hot spot %zu, distance %.2f",
                me->GetName(), botAI->m_currentHotSpotIndex, shortestDistance);
            return true;
        }
    }
    // Check if we're on an explore task
    else if (botAI->hasPoiDestination)
    {
        shortestDistance = GetDistance3D(me, botAI->DestCoordinatesX, botAI->DestCoordinatesY, botAI->DestCoordinatesZ);
        sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "WorldBotTravelSystem: %s resuming explore task to destination (%.2f, %.2f, %.2f), distance %.2f",
            me->GetName(), botAI->DestCoordinatesX, botAI->DestCoordinatesY, botAI->DestCoordinatesZ, shortestDistance);
        return true;
    }
    else if (!botAI->m_currentPath.empty())
    {
        // Original path resuming logic
        for (size_t i = botAI->m_currentPathIndex; i < botAI->m_currentPath.size(); ++i)
        {
            const TravelPath& pathPoint = botAI->m_currentPath[i];
            float distance = GetDistance3D(*me, pathPoint);
            if (distance < shortestDistance)
            {
                shortestDistance = distance;
                nearestIndex = i;
                foundNearerPoint = true;
            }
        }
    }

    // Only update the current index if we found a nearer point ahead on the path
    if (foundNearerPoint)
    {
        botAI->m_currentPathIndex = nearestIndex;
        sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "WorldBotTravelSystem: %s resuming %s at index %zu, distance %.2f",
            me->GetName(), botAI->m_isRunningToCorpse ? "corpse run" : (botAI->m_isSpecificDestinationPath ? "specific path" : "regular path"),
            botAI->m_currentPathIndex, shortestDistance);
    }
    else
    {
        sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "WorldBotTravelSystem: %s continuing on current %s at index %zu",
            me->GetName(), botAI->m_isRunningToCorpse ? "corpse run" : (botAI->m_isSpecificDestinationPath ? "specific path" : "regular path"),
            botAI->m_currentPathIndex);
    }

    float maxResumeDistance = 750.f;
    if (shortestDistance > maxResumeDistance)
    {
        sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "WorldBotTravelSystem: %s too far from path (%.2f > %.2f), cannot resume %s, teleporting to nearest point", me->GetName(), shortestDistance, maxResumeDistance,
            botAI->m_isRunningToCorpse ? "corpse run" : (botAI->m_isSpecificDestinationPath ? "specific path" : "regular path"));

        me->TeleportTo(nearestMapId, nearestX, nearestY, nearestZ, me->GetOrientation(), TELE_TO_FORCE_MAP_CHANGE);
    }

    return true;
}

void WorldBotAI::MoveToNextPoint()
{
    if (m_currentPathIndex >= m_currentPath.size())
    {
        // End of path reached
        if (!me->IsTaxiFlying())
            OnPathComplete();
        return;
    }

    const TravelPath& pathPoint = m_currentPath[m_currentPathIndex];

    // Check if the next point is too far away
    float distanceToNextPoint = me->GetDistance(pathPoint.x, pathPoint.y, pathPoint.z);
    if (distanceToNextPoint > 750.0f) // Hard distance check
    {
        sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "WorldBotAI: Bot %s next point is too far (%.2f > 750.0), teleporting",
            me->GetName(), distanceToNextPoint);
        me->NearTeleportTo(pathPoint.x, pathPoint.y, pathPoint.z, me->GetOrientation());
    }
    else
    {
        sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "WorldBotAI: Bot %s moving to point %u/%zu: %.2f, %.2f, %.2f",
            me->GetName(), m_currentPathIndex + 1, m_currentPath.size(), pathPoint.x, pathPoint.y, pathPoint.z);
        me->GetMotionMaster()->MovePoint(pathPoint.nr, pathPoint.x, pathPoint.y, pathPoint.z, MOVE_PATHFINDING);
    }

    m_currentPathIndex++;
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
        HandleCorpseRunCompletion();
    }
    else if (m_isSpecificDestinationPath)
    {
        HandleSpecificDestinationCompletion();
    }
    else if (m_taskManager.GetCurrentTaskId() == TASK_GRIND)
    {
        HandleGrindTaskCompletion();
    }
    else if (m_taskManager.GetCurrentTaskId() == TASK_ROAM)
    {
        StartNewPathToNode();
    }

    m_isSpecificDestinationPath = false;
}

void WorldBotAI::HandleCorpseRunCompletion()
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

void WorldBotAI::HandleSpecificDestinationCompletion()
{
    float distanceToDestination = me->GetDistance(DestCoordinatesX, DestCoordinatesY, DestCoordinatesZ);
    if (distanceToDestination <= 5.0f)  // Consider it reached if within 5 yards
    {
        sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "WorldBotAI: Bot %s reached its specific destination", me->GetName());
        if (HasReachedExploreDestination())
        {
            hasPoiDestination = false;
            m_taskManager.CompleteCurrentTask();

            if (m_taskManager.GetCurrentTaskId() == TASK_EXPLORE)
            {
                StartExploring();
            }
        }
    }
    else
    {
        sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "WorldBotAI: Bot %s near destination but not exact. Attempting to get closer.", me->GetName());
        if (StartNewPathToSpecificDestination(DestCoordinatesX, DestCoordinatesY, DestCoordinatesZ, DestMap, false))
        {
            sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "WorldBotAI: %s created new path to get closer to destination", me->GetName());
        }
        else
        {
            sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotAI: %s failed to create new path to destination. Completing task.", me->GetName());
            m_taskManager.CompleteCurrentTask();
        }
    }
}

void WorldBotAI::HandleGrindTaskCompletion()
{
    if (HasReachedGrindDestination())
    {
        m_currentHotSpotIndex++;
        if (m_currentHotSpotIndex < m_grindHotSpots.size())
        {
            StartNewPathToSpecificDestination(m_grindHotSpots[m_currentHotSpotIndex].x,
                m_grindHotSpots[m_currentHotSpotIndex].y,
                m_grindHotSpots[m_currentHotSpotIndex].z,
                me->GetMapId(), false);
        }
        else
        {
            m_taskManager.CompleteCurrentTask();
        }
    }
    else
    {
        sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "WorldBotAI: Bot %s near grind destination but not exact. Attempting to get closer.", me->GetName());
        CreatePathFromHotSpots();
    }
}

/*
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
}*/

bool WorldBotAI::ExecuteNodeAction(uint32 nodeId)
{
    // Only execute if the node is an end node
    if (m_currentPathIndex >= m_currentPath.size() || m_currentPath[m_currentPathIndex - 1].toNodeId != nodeId)
    {
        return true;
    }

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
        {
            // Get the destination node
            const TravelNode* destNode = sWorldBotTravelSystem.GetNode(link.toNodeId);
            if (!destNode)
            {
                sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotAI: Destination node %u not found for transport from node %u", link.toNodeId, nodeId);
                return false;
            }

            // Teleport the bot to the destination node
            me->TeleportTo(destNode->mapId, destNode->x, destNode->y, destNode->z, me->GetOrientation());
            sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "WorldBotAI: Bot %s teleported to transport destination node %u at (%.2f, %.2f, %.2f)",
                me->GetName(), link.toNodeId, destNode->x, destNode->y, destNode->z);

            // Update the current path index to skip the transport nodes
            while (m_currentPathIndex < m_currentPath.size() && m_currentPath[m_currentPathIndex].nodeId != link.toNodeId)
            {
                m_currentPathIndex++;
            }

            return true;
        }
        case TravelNodePathType::FlightPath:
        {
            // Check if we're close to the final destination
            float distanceToFinalDestination = me->GetDistance(DestCoordinatesX, DestCoordinatesY, DestCoordinatesZ);
            float flightPathThreshold = 500.0f;

            if (distanceToFinalDestination < flightPathThreshold)
            {
                sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "WorldBotAI: Bot %s skipping flight path as final destination is close (%.2f < %.2f)", me->GetName(), distanceToFinalDestination, flightPathThreshold);
                return true; // Skip the flight path and continue to the next node
            }

            // No flight paths when corpse running or dead
            if (m_isRunningToCorpse || me->IsDead())
                return false;

            StopMoving();
            ClearPath();

            // Make sure we have enough money
            if (me->GetMoney() < 10000000)
                me->SetMoney(10000000);

            TaxiPathEntry const* tEntry = sTaxiPathStore.LookupEntry(linkObject);
            if (tEntry)
            {
                // Check if this flight path brings us significantly closer to our destination
                const TravelNode* destNode = sWorldBotTravelSystem.GetNode(link.toNodeId);
                if (destNode)
                {
                    float distanceAfterFlight = sWorldBotTravelSystem.GetDistance3D(destNode->x, destNode->y, destNode->z, DestCoordinatesX, DestCoordinatesY, DestCoordinatesZ);

                    if (distanceAfterFlight < distanceToFinalDestination * 0.75f) // Flight reduces distance by at least 25%
                    {
                        if (me->ActivateTaxiPathTo({ tEntry->from, tEntry->to }, nullptr, true))
                        {
                            sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "WorldBotAI: Bot %s activated flight path from node %u to node %u", me->GetName(), tEntry->from, tEntry->to);
                            return true;
                        }
                        else
                        {
                            sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotAI: Bot %s failed to activate flight path from node %u to node %u", me->GetName(), tEntry->from, tEntry->to);
                        }
                    }
                    else
                    {
                        sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "WorldBotAI: Bot %s skipping flight path as it doesn't bring us significantly closer to the destination", me->GetName());
                    }
                }
            }

            // If we reach here, we either couldn't find a suitable flight path or activating it failed
            // We'll skip this node and continue to the next one
            sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "WorldBotAI: Bot %s skipping flight path node %u", me->GetName(), nodeId);
            return true;
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

    size_t startIndex = std::min(currentPathIndex, currentPath.size() - 1);
    for (size_t i = startIndex; i < currentPath.size(); ++i)
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
    if (currentNodeId != 0)
    {
        if (const TravelNode* currentNode = GetNode(currentNodeId))
        {
            if (Creature* pStartNode = me->SummonCreature(NPC_SPAWN_POINT, currentNode->x, currentNode->y, currentNode->z, 0.0f, TEMPSUMMON_MANUAL_DESPAWN, 0, true))
            {
                pStartNode->SetObjectScale(5.0f);
                pStartNode->CastSpell(pStartNode, SPELL_RED_GLOW, true);
                visuals.push_back(pStartNode->GetObjectGuid());
            }
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

void WorldBotTravelSystem::VisualizeNode(Player* player, const TravelNode* node)
{
    if (Creature* visual = player->SummonCreature(VISUAL_WAYPOINT, node->x, node->y, node->z, 0.0f, TEMPSUMMON_MANUAL_DESPAWN, 0))
    {
        visual->SetObjectScale(2.0f);
        visual->CastSpell(visual, SPELL_RED_GLOW, true);
        m_pathVisuals[player->GetObjectGuid()].push_back(visual->GetObjectGuid());
    }
}

void WorldBotTravelSystem::VisualizePath(Player* player, const std::vector<TravelPath>& path)
{
    for (const auto& pathPoint : path)
    {
        if (Creature* visual = player->SummonCreature(VISUAL_WAYPOINT, pathPoint.x, pathPoint.y, pathPoint.z, 0.0f, TEMPSUMMON_MANUAL_DESPAWN, 0))
        {
            visual->SetObjectScale(0.5f);
            visual->CastSpell(visual, SPELL_GREEN_GLOW, true);
            m_pathVisuals[player->GetObjectGuid()].push_back(visual->GetObjectGuid());
        }
    }
}

void WorldBotTravelSystem::VisualizeAllNodes(Player* player)
{
    for (const auto& nodePair : m_travelNodes)
    {
        const TravelNode& node = nodePair.second;
        if (node.mapId == player->GetMapId())
        {
            VisualizeNode(player, &node);
        }
    }
}

void WorldBotTravelSystem::VisualizeAllPaths(Player* player, const std::vector<TravelPath>& paths)
{
    for (const auto& path : paths)
    {
        if (path.mapId == player->GetMapId())
        {
            if (Creature* visual = player->SummonCreature(VISUAL_WAYPOINT, path.x, path.y, path.z, 0.0f, TEMPSUMMON_MANUAL_DESPAWN, 0))
            {
                visual->SetObjectScale(0.3f);
                //visual->CastSpell(visual, SPELL_BLUE_GLOW, true);
                m_pathVisuals[player->GetObjectGuid()].push_back(visual->GetObjectGuid());
            }
        }
    }
}

float WorldBotTravelSystem::GetAveragePathFindingTime() const
{
    return m_totalPathsFound > 0 ? static_cast<float>(m_totalPathFindingTime) / m_totalPathsFound : 0.0f;
}

uint32 WorldBotTravelSystem::GetTotalPathsFound() const
{
    return m_totalPathsFound;
}

uint32 WorldBotTravelSystem::GetFailedPathFindings() const
{
    return m_failedPathFindings;
}

float WorldBotTravelSystem::GetAverageNodeActionsPerSecond() const
{
    uint32 timeSinceLastReset = WorldTimer::getMSTimeDiff(m_lastNodeActionReset, WorldTimer::getMSTime());
    return timeSinceLastReset > 0 ? static_cast<float>(m_totalNodeActions) / (timeSinceLastReset / 1000.0f) : 0.0f;
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
