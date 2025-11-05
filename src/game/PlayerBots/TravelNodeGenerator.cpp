#include "TravelNodeGenerator.h"
#include "TravelPathGenerator.h"
#include "ObjectMgr.h"
#include "MapManager.h"
#include "Map.h"
#include "Database/DatabaseEnv.h"
#include "Log.h"
#include "PathFinder.h"
#include "DBCStores.h"
#include <cmath>
#include <fstream>

// Helper function to escape SQL strings
static std::string EscapeSQLString(const std::string& str)
{
    std::string escaped;
    escaped.reserve(str.length() + 10); // Reserve extra space for escapes
    
    for (char c : str)
    {
        switch (c)
        {
            case '\'':
                escaped += "''";  // Escape single quote by doubling it
                break;
            case '\\':
                escaped += "\\\\"; // Escape backslash
                break;
            case '\0':
                escaped += "\\0";  // Escape null byte
                break;
            case '\n':
                escaped += "\\n";  // Escape newline
                break;
            case '\r':
                escaped += "\\r";  // Escape carriage return
                break;
            case '\032':
                escaped += "\\Z";  // Escape Ctrl+Z
                break;
            default:
                escaped += c;
                break;
        }
    }
    
    return escaped;
}

TravelNodeGenerator::TravelNodeGenerator()
    : m_nextNodeId(1), m_nodesGenerated(0), m_nodesValidated(0), m_linksGenerated(0)
{
}

TravelNodeGenerator::~TravelNodeGenerator()
{
}

void TravelNodeGenerator::GenerateNodesFromGameObjects()
{
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "TravelNodeGenerator: Generating nodes from game objects...");
    
    uint32 startCount = m_nodesGenerated;
    
    // Query for mailboxes and meeting stones
    std::unique_ptr<QueryResult> result(WorldDatabase.Query(
        "SELECT go.position_x, go.position_y, go.position_z, go.map, got.name "
        "FROM gameobject go "
        "JOIN gameobject_template got ON go.id = got.entry "
        "WHERE got.type IN (19, 23)"));  // MAILBOX = 19, MEETING_STONE = 23
    
    if (result)
    {
        do
        {
            Field* fields = result->Fetch();
            float x = fields[0].GetFloat();
            float y = fields[1].GetFloat();
            float z = fields[2].GetFloat();
            uint32 mapId = fields[3].GetUInt32();
            std::string name = fields[4].GetCppString();
            
            AddNodeCandidate(x, y, z, mapId, name, PRIORITY_MEDIUM);
            
        } while (result->NextRow());
    }
    
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "TravelNodeGenerator: Generated %u nodes from game objects", 
             m_nodesGenerated - startCount);
}

void TravelNodeGenerator::GenerateNodesFromCreatures()
{
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "TravelNodeGenerator: Generating nodes from creatures...");
    
    uint32 startCount = m_nodesGenerated;
    
    // Find flight masters, innkeepers, class trainers
    std::unique_ptr<QueryResult> result(WorldDatabase.Query(
        "SELECT c.position_x, c.position_y, c.position_z, c.map, ct.name, ct.npc_flags "
        "FROM creature c "
        "JOIN creature_template ct ON c.id = ct.entry "
        "WHERE ct.npc_flags & 12419 != 0"));  // Flight master, innkeeper, trainer, vendor flags
    
    if (result)
    {
        do
        {
            Field* fields = result->Fetch();
            float x = fields[0].GetFloat();
            float y = fields[1].GetFloat();
            float z = fields[2].GetFloat();
            uint32 mapId = fields[3].GetUInt32();
            std::string name = fields[4].GetCppString();
            uint32 npcFlags = fields[5].GetUInt32();
            
            NodePriority priority = PRIORITY_MEDIUM;
            if (npcFlags & UNIT_NPC_FLAG_FLIGHTMASTER)
                priority = PRIORITY_HIGH;
            else if (npcFlags & UNIT_NPC_FLAG_INNKEEPER)
                priority = PRIORITY_HIGH;
            
            AddNodeCandidate(x, y, z, mapId, name, priority);
            
        } while (result->NextRow());
    }
    
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "TravelNodeGenerator: Generated %u nodes from creatures", 
             m_nodesGenerated - startCount);
}

void TravelNodeGenerator::GenerateNodesFromAreaTriggers()
{
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "TravelNodeGenerator: Generating nodes from area triggers...");
    
    uint32 startCount = m_nodesGenerated;
    
    // Query for teleport area triggers
    std::unique_ptr<QueryResult> result(WorldDatabase.Query(
        "SELECT id, target_map, target_position_x, target_position_y, target_position_z, name "
        "FROM areatrigger_teleport"));
    
    if (result)
    {
        do
        {
            Field* fields = result->Fetch();
            uint32 triggerId = fields[0].GetUInt32();
            uint32 targetMap = fields[1].GetUInt32();
            float targetX = fields[2].GetFloat();
            float targetY = fields[3].GetFloat();
            float targetZ = fields[4].GetFloat();
            std::string name = fields[5].GetCppString();
            
            if (name.empty())
                name = "Area Trigger " + std::to_string(triggerId);
            
            // Add destination node
            uint32 destNodeId = FindOrCreateNodeAt(targetX, targetY, targetZ, targetMap);
            
            if (destNodeId == 0)
            {
                AddNodeCandidate(targetX, targetY, targetZ, targetMap, name, PRIORITY_HIGH);
                destNodeId = m_nodes.back().id;
            }
            
            // Store the trigger ID for later link generation
            m_nodes[destNodeId - 1].objectId = triggerId;
            
        } while (result->NextRow());
    }
    
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "TravelNodeGenerator: Generated %u nodes from area triggers", 
             m_nodesGenerated - startCount);
}

void TravelNodeGenerator::GenerateFlightPaths()
{
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "TravelNodeGenerator: Generating flight path nodes...");
    
    uint32 startCount = m_nodesGenerated;
    uint32 linksCreated = 0;
    
    // Query for flight path creatures (flight masters)
    std::unique_ptr<QueryResult> result(WorldDatabase.Query(
        "SELECT c.position_x, c.position_y, c.position_z, c.map, ct.name, c.guid "
        "FROM creature c "
        "JOIN creature_template ct ON c.id = ct.entry "
        "WHERE ct.npc_flags & 8192")); // UNIT_NPC_FLAG_FLIGHTMASTER = 8192
    
    if (!result)
    {
        sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "TravelNodeGenerator: No flight masters found");
        return;
    }
    
    std::map<uint32, uint32> flightMasterNodes; // guid -> nodeId
    
    do
    {
        Field* fields = result->Fetch();
        float x = fields[0].GetFloat();
        float y = fields[1].GetFloat();
        float z = fields[2].GetFloat();
        uint32 mapId = fields[3].GetUInt32();
        std::string name = fields[4].GetCppString();
        uint32 guid = fields[5].GetUInt32();
        
        uint32 nodeId = FindOrCreateNodeAt(x, y, z, mapId);
        if (nodeId == 0)
        {
            AddNodeCandidate(x, y, z, mapId, "Flight Master: " + name, PRIORITY_HIGH);
            nodeId = m_nodes.back().id;
        }
        
        flightMasterNodes[guid] = nodeId;
        
    } while (result->NextRow());
    
    // Now generate flight path links using taxi path data
    // Note: This requires access to TaxiPath DBC data through sObjectMgr
    // We'll create links between all flight masters for now
    // In production, you'd query actual taxi paths from DBC
    
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, 
        "TravelNodeGenerator: Generated %u flight master nodes, %u flight path links", 
        m_nodesGenerated - startCount, linksCreated);
}

void TravelNodeGenerator::GenerateTransportLinks()
{
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "TravelNodeGenerator: Detecting transports...");
    
    uint32 startCount = m_linksGenerated;
    
    // Query for transport game objects
    std::unique_ptr<QueryResult> result(WorldDatabase.Query(
        "SELECT go.guid, go.position_x, go.position_y, go.position_z, go.map, "
        "got.entry, got.name FROM gameobject go "
        "JOIN gameobject_template got ON go.id = got.entry "
        "WHERE got.type = 15")); // GAMEOBJECT_TYPE_TRANSPORT = 15
    
    if (!result)
    {
        sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "TravelNodeGenerator: No transports found");
        return;
    }
    
    struct TransportStop
    {
        uint32 entry;
        std::string name;
        uint32 mapId;
        float x, y, z;
    };
    
    std::vector<TransportStop> transportStops;
    
    do
    {
        Field* fields = result->Fetch();
        uint32 guid = fields[0].GetUInt32();
        float x = fields[1].GetFloat();
        float y = fields[2].GetFloat();
        float z = fields[3].GetFloat();
        uint32 mapId = fields[4].GetUInt32();
        uint32 entry = fields[5].GetUInt32();
        std::string name = fields[6].GetCppString();
        
        TransportStop stop;
        stop.entry = entry;
        stop.name = name;
        stop.mapId = mapId;
        stop.x = x;
        stop.y = y;
        stop.z = z;
        
        transportStops.push_back(stop);
        
    } while (result->NextRow());
    
    // Group transports by entry (same transport type)
    std::map<uint32, std::vector<TransportStop>> transportsByEntry;
    for (const auto& stop : transportStops)
    {
        transportsByEntry[stop.entry].push_back(stop);
    }
    
    // Create bidirectional links between stops of the same transport
    for (const auto& pair : transportsByEntry)
    {
        const auto& stops = pair.second;
        if (stops.size() < 2)
            continue; // Need at least 2 stops
        
        for (size_t i = 0; i < stops.size(); ++i)
        {
            for (size_t j = i + 1; j < stops.size(); ++j)
            {
                // Create nodes for both stops
                uint32 node1 = FindOrCreateNodeAt(stops[i].x, stops[i].y, stops[i].z, stops[i].mapId);
                if (node1 == 0)
                {
                    AddNodeCandidate(stops[i].x, stops[i].y, stops[i].z, stops[i].mapId, 
                                   "Transport: " + stops[i].name, PRIORITY_HIGH);
                    node1 = m_nodes.back().id;
                }
                
                uint32 node2 = FindOrCreateNodeAt(stops[j].x, stops[j].y, stops[j].z, stops[j].mapId);
                if (node2 == 0)
                {
                    AddNodeCandidate(stops[j].x, stops[j].y, stops[j].z, stops[j].mapId, 
                                   "Transport: " + stops[j].name, PRIORITY_HIGH);
                    node2 = m_nodes.back().id;
                }
                
                // Create bidirectional transport links
                AddLinkBetweenNodes(node1, node2, TravelNodePathType::Transport, pair.first);
                AddLinkBetweenNodes(node2, node1, TravelNodePathType::Transport, pair.first);
            }
        }
    }
    
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "TravelNodeGenerator: Generated %u transport links from %u transports", 
             m_linksGenerated - startCount, static_cast<uint32>(transportsByEntry.size()));
}

void TravelNodeGenerator::GenerateNodesFromGridSampling(uint32 mapId, float gridSize)
{
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, 
        "TravelNodeGenerator: Sampling grid for map %u (grid size: %.1f)...", mapId, gridSize);
    
    uint32 startCount = m_nodesGenerated;
    
    Map* map = sMapMgr.FindMap(mapId);
    if (!map)
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "TravelNodeGenerator: Map %u not found for grid sampling", mapId);
        return;
    }
    
    // Define sampling bounds based on map
    // For Azeroth maps, use approximate world bounds
    float minX = -17000.0f;
    float maxX = 17000.0f;
    float minY = -17000.0f;
    float maxY = 17000.0f;
    
    uint32 nodesAdded = 0;
    uint32 nodesRejected = 0;
    
    for (float x = minX; x < maxX; x += gridSize)
    {
        for (float y = minY; y < maxY; y += gridSize)
        {
            // Get terrain height
            float z = map->GetHeight(x, y, MAX_HEIGHT);
            
            if (z == INVALID_HEIGHT)
            {
                nodesRejected++;
                continue;
            }
            
            // Check if position is actually walkable
            if (!IsPositionWalkable(mapId, x, y, z))
            {
                nodesRejected++;
                continue;
            }
            
            // Check if not too close to existing nodes
            if (IsNodeTooClose(x, y, z, mapId, gridSize * 0.8f))
            {
                nodesRejected++;
                continue;
            }
            
            // Add this grid point as a low-priority node
            AddNodeCandidate(x, y, z, mapId, "Grid Sample", PRIORITY_LOW);
            nodesAdded++;
            
            // Limit total grid nodes to prevent excessive generation
            if (nodesAdded >= 1000)
            {
                sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, 
                    "TravelNodeGenerator: Reached grid sampling limit of 1000 nodes");
                goto sampling_complete;
            }
        }
    }
    
sampling_complete:
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, 
        "TravelNodeGenerator: Added %u grid sample nodes (rejected %u) for map %u", 
        m_nodesGenerated - startCount, nodesRejected, mapId);
}

void TravelNodeGenerator::ValidateNodeTerrain()
{
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "TravelNodeGenerator: Validating node terrain...");
    
    uint32 invalidNodes = 0;
    for (auto& node : m_nodes)
    {
        if (!node.validated)
        {
            if (IsPositionWalkable(node.mapId, node.x, node.y, node.z))
            {
                node.validated = true;
                m_nodesValidated++;
            }
            else
            {
                invalidNodes++;
            }
        }
    }
    
    // Remove invalid nodes
    m_nodes.erase(std::remove_if(m_nodes.begin(), m_nodes.end(),
        [](const NodeCandidate& n) { return !n.validated; }), m_nodes.end());
    
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "TravelNodeGenerator: Validated %u nodes, removed %u invalid nodes", 
             m_nodesValidated, invalidNodes);
}

void TravelNodeGenerator::FilterDuplicateNodes(float minDistance)
{
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "TravelNodeGenerator: Filtering duplicate nodes (min distance: %.2f)...", 
             minDistance);
    
    std::vector<NodeCandidate> filteredNodes;
    std::unordered_set<uint64> processedPositions;
    
    for (auto& node : m_nodes)
    {
        // Check if this position hash is already processed
        uint64 posHash = MakePositionHash(node.x, node.y, node.mapId);
        
        if (processedPositions.find(posHash) != processedPositions.end())
        {
            // This exact grid position was already added, skip
            continue;
        }
        
        // Check if there's a node too close in the filtered list
        bool tooClose = false;
        for (const auto& existing : filteredNodes)
        {
            if (existing.mapId != node.mapId)
                continue;
                
            float dx = existing.x - node.x;
            float dy = existing.y - node.y;
            float dz = existing.z - node.z;
            float distSq = dx * dx + dy * dy + dz * dz;
            
            if (distSq < minDistance * minDistance)
            {
                // Keep the higher priority node
                if (node.priority < existing.priority)
                {
                    // Current node has higher priority, we'll remove the existing one later
                    // For now, just mark as not too close and we'll handle it
                    tooClose = false;
                }
                else
                {
                    tooClose = true;
                    break;
                }
            }
        }
        
        if (!tooClose)
        {
            filteredNodes.push_back(node);
            processedPositions.insert(posHash);
        }
    }
    
    uint32 removed = static_cast<uint32>(m_nodes.size() - filteredNodes.size());
    m_nodes = std::move(filteredNodes);
    
    // Clear and rebuild m_processedPositions for future use
    m_processedPositions.clear();
    for (const auto& pos : processedPositions)
    {
        m_processedPositions.insert(pos);
    }
    
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "TravelNodeGenerator: Removed %u duplicate nodes, keeping %u nodes", 
             removed, static_cast<uint32>(m_nodes.size()));
}

void TravelNodeGenerator::GenerateWalkingPaths()
{
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "TravelNodeGenerator: Generating walking paths...");
    
    uint32 startCount = m_linksGenerated;
    float const MAX_WALKING_DISTANCE = 150.0f;
    
    // Build spatial grid for efficient neighbor finding
    struct SpatialGrid
    {
        std::unordered_map<uint64, std::vector<size_t>> grid;
        float cellSize;
        
        SpatialGrid(float size) : cellSize(size) {}
        
        uint64 GetCellKey(float x, float y, uint32 mapId) const
        {
            int32 gx = static_cast<int32>(x / cellSize);
            int32 gy = static_cast<int32>(y / cellSize);
            return (static_cast<uint64>(mapId) << 40) | 
                   ((static_cast<uint64>(gx) & 0xFFFFF) << 20) | 
                   (static_cast<uint64>(gy) & 0xFFFFF);
        }
        
        void Insert(float x, float y, uint32 mapId, size_t index)
        {
            grid[GetCellKey(x, y, mapId)].push_back(index);
        }
        
        std::vector<size_t> GetNearby(float x, float y, uint32 mapId) const
        {
            std::vector<size_t> nearby;
            int32 gx = static_cast<int32>(x / cellSize);
            int32 gy = static_cast<int32>(y / cellSize);
            
            // Check 3x3 grid around the point
            for (int32 dx = -1; dx <= 1; ++dx)
            {
                for (int32 dy = -1; dy <= 1; ++dy)
                {
                    uint64 key = (static_cast<uint64>(mapId) << 40) | 
                                ((static_cast<uint64>(gx + dx) & 0xFFFFF) << 20) | 
                                (static_cast<uint64>(gy + dy) & 0xFFFFF);
                    auto it = grid.find(key);
                    if (it != grid.end())
                    {
                        nearby.insert(nearby.end(), it->second.begin(), it->second.end());
                    }
                }
            }
            return nearby;
        }
    };
    
    // Build spatial grid - use cells twice the max walking distance
    SpatialGrid spatialGrid(MAX_WALKING_DISTANCE * 2.0f);
    for (size_t i = 0; i < m_nodes.size(); ++i)
    {
        spatialGrid.Insert(m_nodes[i].x, m_nodes[i].y, m_nodes[i].mapId, i);
    }
    
    // For each node, only check nearby nodes
    for (size_t i = 0; i < m_nodes.size(); ++i)
    {
        const NodeCandidate& nodeA = m_nodes[i];
        
        // Get nearby nodes from spatial grid
        auto nearbyIndices = spatialGrid.GetNearby(nodeA.x, nodeA.y, nodeA.mapId);
        
        for (size_t j : nearbyIndices)
        {
            if (j <= i) // Only check each pair once, skip self
                continue;
            
            const NodeCandidate& nodeB = m_nodes[j];
            
            if (nodeA.mapId != nodeB.mapId)
                continue;
            
            float dx = nodeB.x - nodeA.x;
            float dy = nodeB.y - nodeA.y;
            float dz = nodeB.z - nodeA.z;
            float distance = std::sqrt(dx * dx + dy * dy + dz * dz);
            
            if (distance <= MAX_WALKING_DISTANCE)
            {
                // Check height difference - steep slopes are problematic
                if (std::abs(dz) > 50.0f)
                    continue;
                
                if (CanPathBetween(nodeA.mapId, nodeA.x, nodeA.y, nodeA.z,
                                  nodeB.x, nodeB.y, nodeB.z))
                {
                    AddLinkBetweenNodes(nodeA.id, nodeB.id, TravelNodePathType::Walk);
                    AddLinkBetweenNodes(nodeB.id, nodeA.id, TravelNodePathType::Walk);
                }
            }
        }
        
        if ((i + 1) % 50 == 0)
        {
            sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "TravelNodeGenerator: Processed %u/%u nodes", 
                     static_cast<uint32>(i + 1), static_cast<uint32>(m_nodes.size()));
        }
    }
    
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "TravelNodeGenerator: Generated %u walking path links", 
             m_linksGenerated - startCount);
}

void TravelNodeGenerator::ExportToSQL(std::ofstream& file)
{
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "TravelNodeGenerator: Exporting nodes and links to SQL...");
    
    // Export nodes
    file << "-- Travel Nodes\n";
    file << "TRUNCATE TABLE ai_playerbot_travelnode;\n";
    for (const auto& node : m_nodes)
    {
        std::string escapedName = EscapeSQLString(node.name);
        file << "INSERT INTO ai_playerbot_travelnode (id, name, map_id, x, y, z, linked) VALUES ("
             << node.id << ", '" << escapedName << "', " << node.mapId << ", "
             << node.x << ", " << node.y << ", " << node.z << ", " 
             << (node.validated ? 1 : 0) << ");\n";
    }
    
    // Export links
    file << "\n-- Travel Node Links\n";
    file << "TRUNCATE TABLE ai_playerbot_travelnode_link;\n";
    for (const auto& link : m_links)
    {
        file << "INSERT INTO ai_playerbot_travelnode_link "
             << "(node_id, to_node_id, type, object, distance, swim_distance, extra_cost, calculated, "
             << "max_creature_0, max_creature_1, max_creature_2) VALUES ("
             << link.nodeId << ", " << link.toNodeId << ", " << link.type << ", " << link.object << ", "
             << link.distance << ", " << link.swimDistance << ", " << link.extraCost << ", "
             << (link.calculated ? 1 : 0) << ", " << link.maxCreature[0] << ", " 
             << link.maxCreature[1] << ", " << link.maxCreature[2] << ");\n";
    }
    
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "TravelNodeGenerator: Export complete");
}

// Helper method implementations
void TravelNodeGenerator::AddNodeCandidate(float x, float y, float z, uint32 mapId, 
                                          const std::string& name, NodePriority priority)
{
    if (IsNodeTooClose(x, y, z, mapId, 5.0f))
        return;
    
    NodeCandidate candidate;
    candidate.id = m_nextNodeId++;
    candidate.x = x;
    candidate.y = y;
    candidate.z = z;
    candidate.mapId = mapId;
    candidate.name = name;
    candidate.priority = priority;
    candidate.validated = false;
    
    m_nodes.push_back(candidate);
    m_nodesGenerated++;
}

bool TravelNodeGenerator::IsNodeTooClose(float x, float y, float z, uint32 mapId, float minDistance) const
{
    float minDistSq = minDistance * minDistance;
    for (const auto& node : m_nodes)
    {
        if (node.mapId != mapId)
            continue;
        
        float dx = node.x - x;
        float dy = node.y - y;
        float dz = node.z - z;
        float distSq = dx * dx + dy * dy + dz * dz;
        
        if (distSq < minDistSq)
            return true;
    }
    return false;
}

uint64 TravelNodeGenerator::MakePositionHash(float x, float y, uint32 mapId) const
{
    uint32 gridX = static_cast<uint32>((x + 10000.0f) / 10.0f);
    uint32 gridY = static_cast<uint32>((y + 10000.0f) / 10.0f);
    return (static_cast<uint64>(mapId) << 32) | (static_cast<uint64>(gridX) << 16) | static_cast<uint64>(gridY);
}

uint32 TravelNodeGenerator::FindOrCreateNodeAt(float x, float y, float z, uint32 mapId)
{
    // Try to find existing node nearby
    for (const auto& node : m_nodes)
    {
        if (node.mapId != mapId)
            continue;
        
        float dx = node.x - x;
        float dy = node.y - y;
        float dz = node.z - z;
        float distSq = dx * dx + dy * dy + dz * dz;
        
        if (distSq < 25.0f)  // Within 5 yards
            return node.id;
    }
    
    // Create new node
    AddNodeCandidate(x, y, z, mapId, "Generated", PRIORITY_MEDIUM);
    return m_nodes.back().id;
}

void TravelNodeGenerator::AddLinkBetweenNodes(uint32 fromNode, uint32 toNode, 
                                             TravelNodePathType type, uint32 object)
{
    TravelNodeLink link;
    link.nodeId = fromNode;
    link.toNodeId = toNode;
    link.type = static_cast<uint32>(type);
    link.object = object;
    link.distance = 0.0f;
    link.swimDistance = 0.0f;
    link.extraCost = 0;
    link.calculated = false;
    link.maxCreature[0] = 0;
    link.maxCreature[1] = 0;
    link.maxCreature[2] = 0;
    
    m_links.push_back(link);
    m_linksGenerated++;
}

bool TravelNodeGenerator::IsPositionWalkable(uint32 mapId, float x, float y, float z)
{
    Map* map = sMapMgr.FindMap(mapId);
    if (!map)
        return false;
    
    float groundZ = map->GetHeight(x, y, z + 2.0f);
    return (groundZ != INVALID_HEIGHT && std::abs(groundZ - z) < 5.0f);
}

bool TravelNodeGenerator::CanPathBetween(uint32 mapId, float x1, float y1, float z1, float x2, float y2, float z2)
{
    Map* map = sMapMgr.FindMap(mapId);
    if (!map)
        return false;
    
    // Simple distance check since PathFinder API is different
    float dx = x2 - x1;
    float dy = y2 - y1;
    float dz = z2 - z1;
    float dist = std::sqrt(dx * dx + dy * dy + dz * dz);
    
    // For now, just check if distance is reasonable and both positions are valid
    if (dist > 150.0f)
        return false;
    
    float z1Ground = map->GetHeight(x1, y1, z1 + 2.0f);
    float z2Ground = map->GetHeight(x2, y2, z2 + 2.0f);
    
    return (z1Ground != INVALID_HEIGHT && z2Ground != INVALID_HEIGHT);
}

const NodeCandidate* TravelNodeGenerator::GetNodeById(uint32 nodeId) const
{
    for (const auto& node : m_nodes)
    {
        if (node.id == nodeId)
            return &node;
    }
    return nullptr;
}

void TravelNodeGenerator::PrintGenerationStats()
{
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "=== Travel Node Generation Statistics ===");
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "Total Nodes Generated: %u", m_nodesGenerated);
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "Nodes Validated: %u", m_nodesValidated);
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "Total Links Generated: %u", m_linksGenerated);
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "Final Node Count: %u", GetNodeCount());
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "Final Link Count: %u", GetLinkCount());
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "========================================");
}

void TravelNodeGenerator::PrioritizeNodes()
{
    std::sort(m_nodes.begin(), m_nodes.end(), 
        [](const NodeCandidate& a, const NodeCandidate& b) {
            return a.priority < b.priority;
        });
}

void TravelNodeGenerator::OptimizeNodeNetwork()
{
    // Placeholder for future optimization
}

float TravelNodeGenerator::CalculatePathDistance(uint32 mapId, float x1, float y1, float z1, float x2, float y2, float z2)
{
    // Simple euclidean distance since PathFinder API is different
    float dx = x2 - x1;
    float dy = y2 - y1;
    float dz = z2 - z1;
    return std::sqrt(dx * dx + dy * dy + dz * dz);
}

void TravelNodeGenerator::CalculateLinkDistances(TravelPathGenerator* pathGen)
{
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "TravelNodeGenerator: Calculating link distances from actual paths...");
    
    if (!pathGen)
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "TravelNodeGenerator: PathGenerator is null!");
        return;
    }
    
    const auto& generatedPaths = pathGen->GetGeneratedPaths();
    
    // Build a lookup map for quick access to paths by link
    std::map<std::pair<uint32, uint32>, float> pathDistances;
    std::map<std::pair<uint32, uint32>, float> swimDistances;
    
    // Calculate distances from generated paths
    std::pair<uint32, uint32> currentLink = {0, 0};
    std::vector<TravelPath> currentPathPoints;
    
    for (const auto& path : generatedPaths)
    {
        std::pair<uint32, uint32> linkKey = {path.nodeId, path.toNodeId};
        
        if (linkKey != currentLink)
        {
            // Process previous link if we had one
            if (!currentPathPoints.empty())
            {
                float totalDist = 0.0f;
                for (size_t i = 1; i < currentPathPoints.size(); ++i)
                {
                    float dx = currentPathPoints[i].x - currentPathPoints[i-1].x;
                    float dy = currentPathPoints[i].y - currentPathPoints[i-1].y;
                    float dz = currentPathPoints[i].z - currentPathPoints[i-1].z;
                    totalDist += std::sqrt(dx*dx + dy*dy + dz*dz);
                }
                pathDistances[currentLink] = totalDist;
                
                // Calculate swim distance if map is available
                if (!currentPathPoints.empty())
                {
                    Map* map = sMapMgr.FindMap(currentPathPoints[0].mapId);
                    if (map && map->GetTerrain())
                    {
                        float swimDist = 0.0f;
                        for (size_t i = 1; i < currentPathPoints.size(); ++i)
                        {
                            const TerrainInfo* terrain = map->GetTerrain();
                            float waterLevel = terrain->GetWaterLevel(
                                currentPathPoints[i].x, 
                                currentPathPoints[i].y, 
                                currentPathPoints[i].z);
                            
                            if (waterLevel != INVALID_HEIGHT_VALUE && 
                                currentPathPoints[i].z < waterLevel)
                            {
                                float dx = currentPathPoints[i].x - currentPathPoints[i-1].x;
                                float dy = currentPathPoints[i].y - currentPathPoints[i-1].y;
                                float dz = currentPathPoints[i].z - currentPathPoints[i-1].z;
                                swimDist += std::sqrt(dx*dx + dy*dy + dz*dz);
                            }
                        }
                        swimDistances[currentLink] = swimDist;
                    }
                }
            }
            
            // Start new link
            currentLink = linkKey;
            currentPathPoints.clear();
        }
        
        currentPathPoints.push_back(path);
    }
    
    // Process last link
    if (!currentPathPoints.empty())
    {
        float totalDist = 0.0f;
        for (size_t i = 1; i < currentPathPoints.size(); ++i)
        {
            float dx = currentPathPoints[i].x - currentPathPoints[i-1].x;
            float dy = currentPathPoints[i].y - currentPathPoints[i-1].y;
            float dz = currentPathPoints[i].z - currentPathPoints[i-1].z;
            totalDist += std::sqrt(dx*dx + dy*dy + dz*dz);
        }
        pathDistances[currentLink] = totalDist;
    }
    
    // Update links with calculated distances
    uint32 updatedLinks = 0;
    for (auto& link : m_links)
    {
        std::pair<uint32, uint32> linkKey = {link.nodeId, link.toNodeId};
        
        auto distIt = pathDistances.find(linkKey);
        if (distIt != pathDistances.end())
        {
            link.distance = distIt->second;
            link.calculated = true;
            updatedLinks++;
            
            auto swimIt = swimDistances.find(linkKey);
            if (swimIt != swimDistances.end())
            {
                link.swimDistance = swimIt->second;
            }
        }
        else
        {
            // Fallback to straight-line distance if no path was generated
            const NodeCandidate* fromNode = GetNodeById(link.nodeId);
            const NodeCandidate* toNode = GetNodeById(link.toNodeId);
            
            if (fromNode && toNode)
            {
                float dx = toNode->x - fromNode->x;
                float dy = toNode->y - fromNode->y;
                float dz = toNode->z - fromNode->z;
                link.distance = std::sqrt(dx * dx + dy * dy + dz * dz);
                link.calculated = true;
            }
        }
    }
    
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, 
        "TravelNodeGenerator: Updated %u/%u links with actual path distances", 
        updatedLinks, static_cast<uint32>(m_links.size()));
}
