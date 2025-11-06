#include "TravelNodeGenerator.h"
#include "TravelPathGenerator.h"
#include "ObjectMgr.h"
#include "MapManager.h"
#include "Map.h"
#include "Maps/GridDefines.h"
#include "Database/DatabaseEnv.h"
#include "Database/SQLStorages.h"
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
    
    // Track map distribution for debugging
    std::map<uint32, uint32> nodesPerMap;
    
    // Find flight masters, innkeepers, class trainers, quest givers
    // UNIT_NPC_FLAG_QUESTGIVER = 2
    // UNIT_NPC_FLAG_VENDOR = 4
    // UNIT_NPC_FLAG_FLIGHTMASTER = 8
    // UNIT_NPC_FLAG_TRAINER = 16
    // UNIT_NPC_FLAG_INNKEEPER = 128
    // UNIT_NPC_FLAG_REPAIR = 16384
    // UNIT_NPC_FLAG_BANKER = 256
    // UNIT_NPC_FLAG_BATTLEMASTER = 2048
    // UNIT_NPC_FLAG_AUCTIONEER = 4096
    // UNIT_NPC_FLAG_SPIRITHEALER = 32
    
    // Query all creature spawns with important NPC flags (no map restriction)
    std::unique_ptr<QueryResult> result(WorldDatabase.Query(
        "SELECT c.position_x, c.position_y, c.position_z, c.map, ct.name, ct.npc_flags "
        "FROM creature c "
        "JOIN creature_template ct ON c.id = ct.entry "
        "WHERE (ct.npc_flags & 2) != 0 OR "         // Quest giver
              "(ct.npc_flags & 16) != 0 OR "        // Trainer
              "(ct.npc_flags & 4) != 0 OR "         // Vendor
              "(ct.npc_flags & 8) != 0 OR "         // Flight master
              "(ct.npc_flags & 16384) != 0 OR "     // Repair
              "(ct.npc_flags & 256) != 0 OR "       // Banker
              "(ct.npc_flags & 2048) != 0 OR "      // Battlemaster
              "(ct.npc_flags & 4096) != 0 OR "      // Auctioneer
              "(ct.npc_flags & 32) != 0 OR "        // Spirit healer
              "(ct.npc_flags & 128) != 0"));        // Innkeeper
    
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
            
            // Track which maps we're generating nodes for
            nodesPerMap[mapId]++;
            
            // Determine priority based on NPC type
            NodePriority priority = PRIORITY_MEDIUM;
            std::string nodeType = "";
            
            if (npcFlags & 0x00000008)  // UNIT_NPC_FLAG_FLIGHTMASTER
            {
                priority = PRIORITY_CRITICAL;
                nodeType = "Flight Master: ";
            }
            else if (npcFlags & 0x00000080)  // UNIT_NPC_FLAG_INNKEEPER
            {
                priority = PRIORITY_HIGH;
                nodeType = "Inn: ";
            }
            else if (npcFlags & 0x00001000)  // UNIT_NPC_FLAG_AUCTIONEER
            {
                priority = PRIORITY_HIGH;
                nodeType = "Auctioneer: ";
            }
            else if (npcFlags & 0x00000100)  // UNIT_NPC_FLAG_BANKER
            {
                priority = PRIORITY_HIGH;
                nodeType = "Banker: ";
            }
            else if (npcFlags & 0x00000800)  // UNIT_NPC_FLAG_BATTLEMASTER
            {
                priority = PRIORITY_HIGH;
                nodeType = "Battlemaster: ";
            }
            else if (npcFlags & 0x00000020)  // UNIT_NPC_FLAG_SPIRITHEALER
            {
                priority = PRIORITY_MEDIUM;
                nodeType = "Spirit Healer: ";
            }
            else if (npcFlags & 0x00000002)  // UNIT_NPC_FLAG_QUESTGIVER
            {
                priority = PRIORITY_HIGH;
                nodeType = "Quest: ";
            }
            else if (npcFlags & 0x00000010)  // UNIT_NPC_FLAG_TRAINER
            {
                priority = PRIORITY_MEDIUM;
                nodeType = "Trainer: ";
            }
            else if (npcFlags & 0x00004000)  // UNIT_NPC_FLAG_REPAIR
            {
                priority = PRIORITY_MEDIUM;
                nodeType = "Repair: ";
            }
            else if (npcFlags & 0x00000004)  // UNIT_NPC_FLAG_VENDOR
            {
                priority = PRIORITY_LOW;
                nodeType = "Vendor: ";
            }
            
            AddNodeCandidate(x, y, z, mapId, nodeType + name, priority);
            
        } while (result->NextRow());
    }
    
    // Log map distribution
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "TravelNodeGenerator: Generated %u nodes from creatures across %u maps", 
             m_nodesGenerated - startCount, static_cast<uint32>(nodesPerMap.size()));
    
    for (const auto& mapPair : nodesPerMap)
    {
        sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "  Map %u: %u creature nodes", mapPair.first, mapPair.second);
    }
}

void TravelNodeGenerator::GenerateNodesFromAreaTriggers()
{
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "TravelNodeGenerator: Generating nodes from area triggers...");
    
    uint32 startCount = m_nodesGenerated;
    uint32 linksCreated = 0;
    
    // Query for teleport area triggers - destination only (source positions not in DB)
    // In VMaNGOS, areatrigger table doesn't exist, only areatrigger_teleport
    // We'll create destination nodes and let the walking path generator connect them
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
            
            // Create destination node (exit)
            // Source node (entrance) will be found by walking path generator
            uint32 destNodeId = FindOrCreateNodeAt(targetX, targetY, targetZ, targetMap);
            if (destNodeId == 0)
            {
                AddNodeCandidate(targetX, targetY, targetZ, targetMap, 
                               "Portal Exit: " + name, PRIORITY_HIGH);
                destNodeId = m_nodes.back().id;
                m_nodes.back().objectId = triggerId;
                
                sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, 
                    "TravelNodeGenerator: Created portal exit node %u on map %u for trigger %u (%s)",
                    destNodeId, targetMap, triggerId, name.c_str());
            }
            
            // Note: We don't create links here because we don't have source positions
            // The walking path generator will connect nearby nodes
            // For actual portal teleportation, bots will need to use AreaTrigger handlers
            
        } while (result->NextRow());
    }
    
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, 
        "TravelNodeGenerator: Generated %u nodes from area trigger destinations", 
        m_nodesGenerated - startCount);
}

void TravelNodeGenerator::GenerateFlightPaths()
{
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "TravelNodeGenerator: Generating flight path nodes...");
    
    uint32 startCount = m_nodesGenerated;
    uint32 linksCreated = 0;
    
    // First, create nodes at all taxi node locations
    std::map<uint32, uint32> taxiNodeToGeneratedNode; // TaxiNodes ID -> our node ID
    
    for (uint32 i = 1; i < sObjectMgr.GetMaxTaxiNodeId(); ++i)
    {
        TaxiNodesEntry const* taxiNode = sObjectMgr.GetTaxiNodeEntry(i);
        if (!taxiNode)
            continue;
        
        // Find or create a node at this taxi node location
        uint32 nodeId = FindOrCreateNodeAt(taxiNode->x, taxiNode->y, taxiNode->z, taxiNode->map_id);
        if (nodeId == 0)
        {
            std::string nodeName = "Flight Master";
            // Try to get the name from the mount creature name if available
            AddNodeCandidate(taxiNode->x, taxiNode->y, taxiNode->z, taxiNode->map_id, 
                           nodeName, PRIORITY_CRITICAL);
            nodeId = m_nodes.back().id;
        }
        else
        {
            // Update existing node to critical priority if it's a flight master
            for (auto& node : m_nodes)
            {
                if (node.id == nodeId && node.priority > PRIORITY_CRITICAL)
                {
                    node.priority = PRIORITY_CRITICAL;
                    node.name = "Flight Master: " + node.name;
                    break;
                }
            }
        }
        
        // Store the taxi node ID on the generated node for later use
        // This tells the bot which flight master NPC to interact with at this location
        for (auto& node : m_nodes)
        {
            if (node.id == nodeId)
            {
                node.objectId = i; // Store the TaxiNodes entry ID (for ActivateTaxiPathTo)
                break;
            }
        }
        
        taxiNodeToGeneratedNode[i] = nodeId;
    }
    
    // Now create flight path links using sTaxiPathStore
    for (uint32 i = 1; i < sTaxiPathStore.GetNumRows(); ++i)
    {
        TaxiPathEntry const* path = sTaxiPathStore.LookupEntry(i);
        if (!path)
            continue;
        
        // Find our generated nodes for source and destination
        auto fromIt = taxiNodeToGeneratedNode.find(path->from);
        auto toIt = taxiNodeToGeneratedNode.find(path->to);
        
        if (fromIt == taxiNodeToGeneratedNode.end() || toIt == taxiNodeToGeneratedNode.end())
        {
            sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, 
                "TravelNodeGenerator: Taxi path %u references unknown nodes (from: %u, to: %u)", 
                path->ID, path->from, path->to);
            continue;
        }
        
        uint32 fromNodeId = fromIt->second;
        uint32 toNodeId = toIt->second;
        
        // Create flight path link from source to destination
        // Store the destination taxi node ID in the link's object field
        // This tells the bot where this flight path leads to (the destination taxi node)
        // The bot will:
        // 1. Use fromNode->objectId to know which taxi node it's at (path->from)
        // 2. Use link->object to know which taxi node it wants to go to (path->to)
        // 3. Call ActivateTaxiPathTo with {fromNode->objectId, link->object}
        AddLinkBetweenNodes(fromNodeId, toNodeId, TravelNodePathType::FlightPath, path->to);
        linksCreated++;
        
        sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, 
            "TravelNodeGenerator: Created flight path link %u -> %u (from taxi: %u, to taxi: %u, cost: %u)", 
            fromNodeId, toNodeId, path->from, path->to, path->price);
    }
    
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
        
        sLog.Out(LOG_BASIC, LOG_LVL_DEBUG,
            "TravelNodeGenerator: Processing transport %u ('%s') with %u stops",
            pair.first, stops[0].name.c_str(), static_cast<uint32>(stops.size()));
        
        // For transports (boats, zeppelins), create links between ALL stops
        // This handles multi-stop routes properly
        for (size_t i = 0; i < stops.size(); ++i)
        {
            for (size_t j = 0; j < stops.size(); ++j)
            {
                if (i == j)
                    continue; // Skip self-links
                
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
                
                // Create unidirectional transport link (transports have specific routes)
                AddLinkBetweenNodes(node1, node2, TravelNodePathType::Transport, pair.first);
                
                sLog.Out(LOG_BASIC, LOG_LVL_DEBUG,
                    "TravelNodeGenerator: Created transport link %u (map %u) -> %u (map %u)",
                    node1, stops[i].mapId, node2, stops[j].mapId);
            }
        }
    }
    
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "TravelNodeGenerator: Generated %u transport links from %u transports", 
             m_linksGenerated - startCount, static_cast<uint32>(transportsByEntry.size()));
}

// NEW: CMaNGOS-style hub node detection and linking
// Hub nodes are major cities and quest hubs that should be well-connected
void TravelNodeGenerator::MarkHubNodes()
{
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "TravelNodeGenerator: Marking hub nodes...");
    
    uint32 hubCount = 0;
    
    for (auto& node : m_nodes)
    {
        // Cities are hubs
        if (node.areaFlags & (AREA_FLAG_CAPITAL | AREA_FLAG_CITY))
        {
            node.priority = PRIORITY_CRITICAL;
            hubCount++;
            
            sLog.Out(LOG_BASIC, LOG_LVL_DEBUG,
                "TravelNodeGenerator: Marked hub node %u: %s (city)", 
                node.id, node.name.c_str());
        }
        // Flight masters are hubs
        else if (node.name.find("Flight Master") != std::string::npos)
        {
            if (node.priority > PRIORITY_CRITICAL)
                node.priority = PRIORITY_CRITICAL;
            hubCount++;
            
            sLog.Out(LOG_BASIC, LOG_LVL_DEBUG,
                "TravelNodeGenerator: Marked hub node %u: %s (flight master)", 
                node.id, node.name.c_str());
        }
        // Innkeepers in major areas
        else if (node.name.find("Inn:") != std::string::npos && node.priority <= PRIORITY_HIGH)
        {
            hubCount++;
            
            sLog.Out(LOG_BASIC, LOG_LVL_DEBUG,
                "TravelNodeGenerator: Marked hub node %u: %s (inn)", 
                node.id, node.name.c_str());
        }
    }
    
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, 
        "TravelNodeGenerator: Marked %u hub nodes", hubCount);
}

// NEW: Connect hub nodes with long-distance walking paths
// This ensures major cities and quest hubs are always connected
void TravelNodeGenerator::ConnectHubNodes()
{
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "TravelNodeGenerator: Connecting hub nodes...");
    
    uint32 startCount = m_linksGenerated;
    float const MAX_HUB_DISTANCE = 500.0f; // Hubs can be connected over longer distances
    
    std::vector<const NodeCandidate*> hubNodes;
    for (const auto& node : m_nodes)
    {
        if (node.priority <= PRIORITY_HIGH)
        {
            hubNodes.push_back(&node);
        }
    }
    
    sLog.Out(LOG_BASIC, LOG_LVL_DEBUG,
        "TravelNodeGenerator: Found %u potential hub nodes to connect",
        static_cast<uint32>(hubNodes.size()));
    
    // Connect each hub to nearby hubs on the same map
    for (size_t i = 0; i < hubNodes.size(); ++i)
    {
        const NodeCandidate* hubA = hubNodes[i];
        
        for (size_t j = i + 1; j < hubNodes.size(); ++j)
        {
            const NodeCandidate* hubB = hubNodes[j];
            
            if (hubA->mapId != hubB->mapId)
                continue;
            
            float dx = hubB->x - hubA->x;
            float dy = hubB->y - hubA->y;
            float dz = hubB->z - hubA->z;
            float distance = std::sqrt(dx * dx + dy * dy + dz * dz);
            
            if (distance <= MAX_HUB_DISTANCE)
            {
                // Check if link already exists
                bool linkExists = false;
                for (const auto& link : m_links)
                {
                    if ((link.nodeId == hubA->id && link.toNodeId == hubB->id) ||
                        (link.nodeId == hubB->id && link.toNodeId == hubA->id))
                    {
                        linkExists = true;
                        break;
                    }
                }
                
                if (!linkExists && CanPathBetween(hubA->mapId, hubA->x, hubA->y, hubA->z,
                                                  hubB->x, hubB->y, hubB->z))
                {
                    AddLinkBetweenNodes(hubA->id, hubB->id, TravelNodePathType::Walk);
                    AddLinkBetweenNodes(hubB->id, hubA->id, TravelNodePathType::Walk);
                    
                    sLog.Out(LOG_BASIC, LOG_LVL_DEBUG,
                        "TravelNodeGenerator: Connected hub %u to hub %u (%.1f yards)",
                        hubA->id, hubB->id, distance);
                }
            }
        }
    }
    
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, 
        "TravelNodeGenerator: Created %u hub connection links", 
        m_linksGenerated - startCount);
}

// NEW: Ensure all nodes have at least one outgoing and one incoming link
void TravelNodeGenerator::EnsureNodeConnectivity()
{
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "TravelNodeGenerator: Ensuring node connectivity...");
    
    // Build connectivity map
    std::map<uint32, std::vector<uint32>> outgoingLinks;
    std::map<uint32, std::vector<uint32>> incomingLinks;
    
    for (const auto& link : m_links)
    {
        outgoingLinks[link.nodeId].push_back(link.toNodeId);
        incomingLinks[link.toNodeId].push_back(link.nodeId);
    }
    
    uint32 fixedNodes = 0;
    float const MAX_CONNECTION_DISTANCE = 200.0f;
    
    for (const auto& node : m_nodes)
    {
        bool hasOutgoing = outgoingLinks.find(node.id) != outgoingLinks.end() && !outgoingLinks[node.id].empty();
        bool hasIncoming = incomingLinks.find(node.id) != incomingLinks.end() && !incomingLinks[node.id].empty();
        
        if (hasOutgoing && hasIncoming)
            continue; // Node is properly connected
        
        // Find nearest connected node on the same map
        const NodeCandidate* nearestConnected = nullptr;
        float nearestDist = std::numeric_limits<float>::max();
        
        for (const auto& otherNode : m_nodes)
        {
            if (otherNode.id == node.id || otherNode.mapId != node.mapId)
                continue;
            
            // Check if other node is connected
            bool otherHasLinks = (outgoingLinks.find(otherNode.id) != outgoingLinks.end() && !outgoingLinks[otherNode.id].empty()) ||
                                 (incomingLinks.find(otherNode.id) != incomingLinks.end() && !incomingLinks[otherNode.id].empty());
            
            if (!otherHasLinks)
                continue;
            
            float dx = otherNode.x - node.x;
            float dy = otherNode.y - node.y;
            float dz = otherNode.z - node.z;
            float dist = std::sqrt(dx * dx + dy * dy + dz * dz);
            
            if (dist < nearestDist && dist <= MAX_CONNECTION_DISTANCE)
            {
                nearestDist = dist;
                nearestConnected = &otherNode;
            }
        }
        
        // Connect to nearest connected node
        if (nearestConnected != nullptr)
        {
            if (!hasOutgoing)
            {
                AddLinkBetweenNodes(node.id, nearestConnected->id, TravelNodePathType::Walk);
            }
            if (!hasIncoming)
            {
                AddLinkBetweenNodes(nearestConnected->id, node.id, TravelNodePathType::Walk);
            }
            
            fixedNodes++;
            
            sLog.Out(LOG_BASIC, LOG_LVL_DEBUG,
                "TravelNodeGenerator: Connected isolated node %u (%s) to %u (%.1f yards)",
                node.id, node.name.c_str(), nearestConnected->id, nearestDist);
        }
        else
        {
            sLog.Out(LOG_BASIC, LOG_LVL_DEBUG,
                "TravelNodeGenerator: Warning: Could not connect isolated node %u (%s) on map %u",
                node.id, node.name.c_str(), node.mapId);
        }
    }
    
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, 
        "TravelNodeGenerator: Fixed connectivity for %u nodes", fixedNodes);
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

// NEW: Use creature spawn locations to bridge long-distance gaps between nodes
void TravelNodeGenerator::GenerateCreatureBasedWaypoints()
{
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "TravelNodeGenerator: Generating creature-based waypoints for long-distance connections...");
    
    uint32 startCount = m_nodesGenerated;
    float const MIN_GAP_DISTANCE = 200.0f; // Only bridge gaps larger than 200 yards
    float const MAX_GAP_DISTANCE = 1000.0f; // Don't try to bridge gaps over 1000 yards
    
    // Build list of unconnected node pairs that are within bridgeable range
    struct NodeGap
    {
        const NodeCandidate* from;
        const NodeCandidate* to;
        float distance;
    };
    
    std::vector<NodeGap> gaps;
    
    // Find all node pairs that need bridging
    for (size_t i = 0; i < m_nodes.size(); ++i)
    {
        const NodeCandidate& nodeA = m_nodes[i];
        
        // Only try to bridge high-priority nodes (cities, flight masters, quest hubs)
        if (nodeA.priority > PRIORITY_HIGH)
            continue;
        
        for (size_t j = i + 1; j < m_nodes.size(); ++j)
        {
            const NodeCandidate& nodeB = m_nodes[j];
            
            if (nodeB.priority > PRIORITY_HIGH)
                continue;
            
            if (nodeA.mapId != nodeB.mapId)
                continue;
            
            float dx = nodeB.x - nodeA.x;
            float dy = nodeB.y - nodeA.y;
            float dz = nodeB.z - nodeA.z;
            float distance = std::sqrt(dx * dx + dy * dy + dz * dz);
            
            if (distance >= MIN_GAP_DISTANCE && distance <= MAX_GAP_DISTANCE)
            {
                // Check if they're already connected
                bool alreadyConnected = false;
                for (const auto& link : m_links)
                {
                    if ((link.nodeId == nodeA.id && link.toNodeId == nodeB.id) ||
                        (link.nodeId == nodeB.id && link.toNodeId == nodeA.id))
                    {
                        alreadyConnected = true;
                        break;
                    }
                }
                
                if (!alreadyConnected)
                {
                    NodeGap gap;
                    gap.from = &nodeA;
                    gap.to = &nodeB;
                    gap.distance = distance;
                    gaps.push_back(gap);
                }
            }
        }
    }
    
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, 
        "TravelNodeGenerator: Found %u unconnected node pairs to bridge", 
        static_cast<uint32>(gaps.size()));
    
    if (gaps.empty())
    {
        sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "TravelNodeGenerator: No gaps to bridge");
        return;
    }
    
    // Now for each gap, find creature spawns that can serve as waypoints
    uint32 gapsBridged = 0;
    
    for (const auto& gap : gaps)
    {
        std::vector<uint32> waypoints = FindCreatureWaypointsBetween(
            gap.from->mapId, 
            gap.from->x, gap.from->y, gap.from->z,
            gap.to->x, gap.to->y, gap.to->z,
            gap.distance);
        
        if (!waypoints.empty())
        {
            // Create links through waypoints
            uint32 currentNode = gap.from->id;
            bool chainComplete = true;
            
            for (uint32 waypointNodeId : waypoints)
            {
                AddLinkBetweenNodes(currentNode, waypointNodeId, TravelNodePathType::Walk);
                AddLinkBetweenNodes(waypointNodeId, currentNode, TravelNodePathType::Walk);
                currentNode = waypointNodeId;
            }
            
            // Final link to destination
            AddLinkBetweenNodes(currentNode, gap.to->id, TravelNodePathType::Walk);
            AddLinkBetweenNodes(gap.to->id, currentNode, TravelNodePathType::Walk);
            
            gapsBridged++;
            
            sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, 
                "TravelNodeGenerator: Bridged gap between nodes %u and %u using %u creature waypoints",
                gap.from->id, gap.to->id, static_cast<uint32>(waypoints.size()));
        }
    }
    
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, 
        "TravelNodeGenerator: Bridged %u gaps using creature-based waypoints, created %u new nodes",
        gapsBridged, m_nodesGenerated - startCount);
}

// NEW: Find creature spawn locations that form a path between two points
std::vector<uint32> TravelNodeGenerator::FindCreatureWaypointsBetween(
    uint32 mapId, float x1, float y1, float z1, float x2, float y2, float z2, float distance)
{
    std::vector<uint32> waypointNodeIds;
    
    // Calculate corridor parameters
    float corridorWidth = 100.0f; // Look for creatures within 100 yards of the direct path
    
    // Query for creature spawns along the path corridor
    // We use a bounding box query first, then filter to corridor
    float minX = std::min(x1, x2) - corridorWidth;
    float maxX = std::max(x1, x2) + corridorWidth;
    float minY = std::min(y1, y2) - corridorWidth;
    float maxY = std::max(y1, y2) + corridorWidth;
    
    std::stringstream query;
    query << "SELECT position_x, position_y, position_z FROM creature WHERE map = " << mapId
          << " AND position_x BETWEEN " << minX << " AND " << maxX
          << " AND position_y BETWEEN " << minY << " AND " << maxY
          << " ORDER BY RAND() LIMIT 100"; // Random sample to avoid always using same creatures
    
    std::unique_ptr<QueryResult> result(WorldDatabase.Query(query.str().c_str()));
    
    if (!result)
        return waypointNodeIds;
    
    // Collect creatures that are close to the path line
    struct CreatureWaypoint
    {
        float x, y, z;
        float distanceFromStart;
        float distanceFromLine;
    };
    
    std::vector<CreatureWaypoint> candidates;
    
    float pathDX = x2 - x1;
    float pathDY = y2 - y1;
    float pathDZ = z2 - z1;
    float pathLengthSq = pathDX * pathDX + pathDY * pathDY + pathDZ * pathDZ;
    
    do
    {
        Field* fields = result->Fetch();
        float cx = fields[0].GetFloat();
        float cy = fields[1].GetFloat();
        float cz = fields[2].GetFloat();
        
        // Calculate perpendicular distance to path line
        float toCX = cx - x1;
        float toCY = cy - y1;
        float toCZ = cz - z1;
        
        // Project onto path vector
        float t = (toCX * pathDX + toCY * pathDY + toCZ * pathDZ) / pathLengthSq;
        
        // Skip if creature is before start or after end
        if (t < 0.05f || t > 0.95f)
            continue;
        
        // Calculate closest point on line
        float closestX = x1 + t * pathDX;
        float closestY = y1 + t * pathDY;
        float closestZ = z1 + t * pathDZ;
        
        // Calculate distance from line
        float distX = cx - closestX;
        float distY = cy - closestY;
        float distZ = cz - closestZ;
        float distFromLine = std::sqrt(distX * distX + distY * distY + distZ * distZ);
        
        // Only accept creatures close to the path
        if (distFromLine <= corridorWidth)
        {
            // Calculate distance from start for sorting
            float dx = cx - x1;
            float dy = cy - y1;
            float dz = cz - z1;
            float distFromStart = std::sqrt(dx * dx + dy * dy + dz * dz);
            
            CreatureWaypoint wp;
            wp.x = cx;
            wp.y = cy;
            wp.z = cz;
            wp.distanceFromStart = distFromStart;
            wp.distanceFromLine = distFromLine;
            candidates.push_back(wp);
        }
        
    } while (result->NextRow());
    
    if (candidates.empty())
    {
        sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, 
            "TravelNodeGenerator: No suitable creature waypoints found in corridor");
        return waypointNodeIds;
    }
    
    // Sort candidates by distance from start
    std::sort(candidates.begin(), candidates.end(),
        [](const CreatureWaypoint& a, const CreatureWaypoint& b) {
            return a.distanceFromStart < b.distanceFromStart;
        });
    
    // Select evenly distributed waypoints (aim for ~150 yard spacing)
    float idealSpacing = 150.0f;
    uint32 maxWaypoints = static_cast<uint32>(distance / idealSpacing) + 1;
    
    float lastDistance = 0.0f;
    for (const auto& candidate : candidates)
    {
        // Ensure minimum spacing between selected waypoints
        if (candidate.distanceFromStart - lastDistance >= idealSpacing * 0.8f)
        {
            // Find or create node at this creature spawn location
            uint32 nodeId = FindOrCreateNodeAt(candidate.x, candidate.y, candidate.z, mapId);
            
            if (nodeId != 0)
            {
                waypointNodeIds.push_back(nodeId);
                lastDistance = candidate.distanceFromStart;
                
                if (waypointNodeIds.size() >= maxWaypoints)
                    break;
            }
        }
    }
    
    sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, 
        "TravelNodeGenerator: Selected %u creature waypoints from %u candidates",
        static_cast<uint32>(waypointNodeIds.size()), static_cast<uint32>(candidates.size()));
    
    return waypointNodeIds;
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
        file << "REPLACE INTO ai_playerbot_travelnode (id, name, map_id, x, y, z, linked) VALUES ("
             << node.id << ", '" << escapedName << "', " << node.mapId << ", "
             << node.x << ", " << node.y << ", " << node.z << ", " 
             << (node.validated ? 1 : 0) << ");\n";
    }
    
    // Export links
    file << "\n-- Travel Node Links\n";
    file << "TRUNCATE TABLE ai_playerbot_travelnode_link;\n";
    for (const auto& link : m_links)
    {
        file << "REPLACE INTO ai_playerbot_travelnode_link "
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

void TravelNodeGenerator::AddLinkBetweenNodes(uint32 fromNode, uint32 toNode, TravelNodePathType type, uint32 object)
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
    
    float dx = x2 - x1;
    float dy = y2 - y1;
    float dz = z2 - z1;
    float dist = std::sqrt(dx * dx + dy * dy + dz * dz);
    
    // Quick reject if too far
    if (dist > 150.0f)
        return false;
    
    // Validate both endpoints
    float z1Ground = map->GetHeight(x1, y1, z1 + 2.0f);
    float z2Ground = map->GetHeight(x2, y2, z2 + 2.0f);
    
    if (z1Ground == INVALID_HEIGHT || z2Ground == INVALID_HEIGHT)
        return false;
    
    if (std::abs(z1Ground - z1) > 5.0f || std::abs(z2Ground - z2) > 5.0f)
        return false;
    
    // Sample intermediate points along the path
    uint32 numSamples = static_cast<uint32>(dist / 10.0f); // Sample every 10 yards
    if (numSamples < 2)
        numSamples = 2;
    if (numSamples > 15)
        numSamples = 15; // Cap to avoid performance issues
    
    for (uint32 i = 1; i < numSamples; ++i)
    {
        float t = static_cast<float>(i) / static_cast<float>(numSamples);
        float sampleX = x1 + dx * t;
        float sampleY = y1 + dy * t;
        float sampleZ = z1 + dz * t;
        
        float groundZ = map->GetHeight(sampleX, sampleY, sampleZ + 2.0f);
        if (groundZ == INVALID_HEIGHT)
            return false; // Impassable terrain (water, void, etc.)
        
        // Check if sample point is too far from ground (falling through world or flying too high)
        if (std::abs(groundZ - sampleZ) > 10.0f)
            return false;
        
        // Check for excessive height changes (cliffs, steep slopes)
        if (i > 0)
        {
            float prevT = static_cast<float>(i - 1) / static_cast<float>(numSamples);
            float prevZ = z1 + dz * prevT;
            float prevGroundZ = map->GetHeight(x1 + dx * prevT, y1 + dy * prevT, prevZ + 2.0f);
            
            if (prevGroundZ != INVALID_HEIGHT)
            {
                float heightDiff = std::abs(groundZ - prevGroundZ);
                float segmentDist = dist / static_cast<float>(numSamples);
                
                // Reject if slope is too steep (more than 45 degrees)
                if (heightDiff / segmentDist > 1.0f)
                    return false;
            }
        }
    }
    
    return true;
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
    std::map<std::pair<uint32, uint32>, std::vector<TravelPath>> pathsByLink;
    
    // Group paths by link (nodeId, toNodeId)
    for (const auto& path : generatedPaths)
    {
        std::pair<uint32, uint32> linkKey = {path.nodeId, path.toNodeId};
        pathsByLink[linkKey].push_back(path);
    }
    
    // Process each link and calculate distances
    uint32 updatedLinks = 0;
    for (auto& link : m_links)
    {
        std::pair<uint32, uint32> linkKey = {link.nodeId, link.toNodeId};
        
        auto pathIt = pathsByLink.find(linkKey);
        if (pathIt != pathsByLink.end() && pathIt->second.size() >= 2)
        {
            const auto& pathPoints = pathIt->second;
            
            // Calculate total walking distance
            float totalDist = 0.0f;
            float swimDist = 0.0f;
            uint32 extraCost = 0;
            uint32 maxCreatureLevels[3] = {0, 0, 0}; // For 3 factions
            
            // Get the map for terrain checks
            Map* map = sMapMgr.FindMap(pathPoints[0].mapId);
            const TerrainInfo* terrain = map ? map->GetTerrain() : nullptr;
            
            // Calculate distances and costs for each segment
            for (size_t i = 1; i < pathPoints.size(); ++i)
            {
                const TravelPath& from = pathPoints[i-1];
                const TravelPath& to = pathPoints[i];
                
                float dx = to.x - from.x;
                float dy = to.y - from.y;
                float dz = to.z - from.z;
                float segmentDist = std::sqrt(dx*dx + dy*dy + dz*dz);
                
                totalDist += segmentDist;
                
                // Check if segment is underwater
                if (terrain)
                {
                    float waterLevelFrom = terrain->GetWaterLevel(from.x, from.y, from.z);
                    float waterLevelTo = terrain->GetWaterLevel(to.x, to.y, to.z);
                    
                    // If either point is underwater, count as swim distance
                    if ((waterLevelFrom != INVALID_HEIGHT_VALUE && from.z < waterLevelFrom) ||
                        (waterLevelTo != INVALID_HEIGHT_VALUE && to.z < waterLevelTo))
                    {
                        swimDist += segmentDist;
                    }
                }
                
                // Calculate extra cost based on terrain difficulty
                float heightDiff = std::abs(dz);
                if (heightDiff > 10.0f)
                {
                    // Steep terrain adds cost
                    extraCost += static_cast<uint32>(heightDiff * 2.0f);
                }
            }
            
            // Add swim penalty to extra cost
            if (swimDist > 10.0f)
            {
                // Swimming is slower and more dangerous
                extraCost += static_cast<uint32>(swimDist * 3.0f);
            }
            
            // Scan for dangerous creatures along the path
            if (map)
            {
                CalculateMaxCreaturesAlongPath(map, pathPoints, maxCreatureLevels);
            }
            
            // Update the link with calculated values
            link.distance = totalDist;
            link.swimDistance = swimDist;
            link.extraCost = extraCost;
            link.maxCreature[0] = maxCreatureLevels[0];
            link.maxCreature[1] = maxCreatureLevels[1];
            link.maxCreature[2] = maxCreatureLevels[2];
            link.calculated = true;
            
            updatedLinks++;
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
                link.swimDistance = 0.0f;
                link.extraCost = 0;
                link.calculated = true;
                
                // For transport and instant travel, set appropriate costs
                TravelNodePathType linkType = static_cast<TravelNodePathType>(link.type);
                if (linkType == TravelNodePathType::Transport)
                {
                    link.extraCost = 50; // Fixed transport wait time cost
                }
                else if (linkType == TravelNodePathType::FlightPath)
                {
                    link.extraCost = 100; // Fixed flight path cost
                }
                else if (linkType == TravelNodePathType::AreaTrigger || 
                         linkType == TravelNodePathType::TeleportSpell ||
                         linkType == TravelNodePathType::StaticPortal)
                {
                    link.extraCost = 10; // Minimal cost for instant travel
                }
            }
        }
    }
    
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, 
        "TravelNodeGenerator: Updated %u/%u links with actual path distances", 
        updatedLinks, static_cast<uint32>(m_links.size()));
}

void TravelNodeGenerator::CalculateMaxCreaturesAlongPath(Map* map, 
                                                          const std::vector<TravelPath>& pathPoints,
                                                          uint32 maxCreatureLevels[3])
{
    if (!map || pathPoints.empty())
        return;
    
    // Initialize max creature levels
    maxCreatureLevels[0] = 0; // Alliance threats
    maxCreatureLevels[1] = 0; // Horde threats
    maxCreatureLevels[2] = 0; // Neutral/Both threats
    
    // For now, use conservative default values
    // TODO: Implement proper creature scanning using grid system when maps are loaded
    // This is a placeholder that assumes moderate danger on all paths
    uint32 mapId = pathPoints[0].mapId;
    
    // Basic difficulty estimation based on map
    if (mapId == 0 || mapId == 1) // Azeroth continents
    {
        // Assume paths might encounter level 60 creatures
        maxCreatureLevels[2] = 60;
    }
    else if (mapId >= 30 && mapId <= 37) // Dungeons (approximate range)
    {
        // Dungeons have higher level creatures
        maxCreatureLevels[2] = 63;
    }
    else if (mapId >= 400) // Raids (approximate range)
    {
        // Raid creatures are very dangerous
        maxCreatureLevels[2] = 63;
    }
    else
    {
        // Other maps - assume moderate threat
        maxCreatureLevels[2] = 60;
    }
    
    // Log the results
    sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, 
        "TravelNodeGenerator: Path danger assessment (conservative) - Alliance: %u, Horde: %u, Neutral: %u",
        maxCreatureLevels[0], maxCreatureLevels[1], maxCreatureLevels[2]);
}

void TravelNodeGenerator::OptimizeNodeNetwork()
{
    // CMaNGOS-style optimization steps
    MarkHubNodes();        // Identify critical connection points
    ConnectHubNodes();     // Ensure hubs are well-connected
    EnsureNodeConnectivity(); // Fix isolated nodes
    RemoveUselessLinks();  // Remove redundant paths
}

// CMaNGOS-style useless link detection (NEW)
// A link from A to C is "useless" if there exists nodes B such that:
// distance(A->B) + distance(B->C) < distance(A->C) * 1.1 (10% tolerance)
bool TravelNodeGenerator::IsUselessLink(uint32 fromNodeId, uint32 toNodeId) const
{
    const TravelNodeLink* directLink = nullptr;
    float directDistance = 0.0f;
    
    // Find the direct link from->to
    for (const auto& link : m_links)
    {
        if (link.nodeId == fromNodeId && link.toNodeId == toNodeId)
        {
            directLink = &link;
            directDistance = link.distance;
            break;
        }
    }
    
    if (!directLink)
        return false; // No direct link exists
    
    // Only optimize walking paths (don't remove special paths)
    TravelNodePathType linkType = static_cast<TravelNodePathType>(directLink->type);
    if (linkType != TravelNodePathType::Walk)
        return false; // Keep non-walking links
    
    const NodeCandidate* fromNode = GetNodeById(fromNodeId);
    const NodeCandidate* toNode = GetNodeById(toNodeId);
    
    if (!fromNode || !toNode)
        return false;
    
    // Look for intermediate nodes that provide a shorter path
    // Check all links from the source node
    for (const auto& nearLink : m_links)
    {
        if (nearLink.nodeId != fromNodeId)
            continue; // Not from our source node
            
        uint32 intermediateId = nearLink.toNodeId;
        if (intermediateId == toNodeId)
            continue; // Skip the direct path we're testing
        
        // Find link from intermediate node to target
        for (const auto& farLink : m_links)
        {
            if (farLink.nodeId != intermediateId || farLink.toNodeId != toNodeId)
                continue;
            
            // Calculate total distance through intermediate node
            float totalDistance = nearLink.distance + farLink.distance;
            
            // CMaNGOS uses 10% tolerance - if multi-hop path is within 110% of direct, remove direct
            // This prefers slightly longer paths with intermediate nodes for better connectivity
            if (totalDistance < directDistance * 1.1f)
            {
                sLog.Out(LOG_BASIC, LOG_LVL_DEBUG,
                    "TravelNodeGenerator: Link %u->%u (%.1f) is useless, can go via %u (%.1f + %.1f = %.1f)",
                    fromNodeId, toNodeId, directDistance,
                    intermediateId, nearLink.distance, farLink.distance, totalDistance);
                return true;
            }
        }
    }
    
    return false;
}

void TravelNodeGenerator::RemoveUselessLinks()
{
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "TravelNodeGenerator: Removing useless links...");
    
    uint32 removedCount = 0;
    uint32 initialCount = static_cast<uint32>(m_links.size());
    
    // We need to iterate multiple times because removing one link can make others useless
    bool removedAny = true;
    uint32 iteration = 0;
    const uint32 MAX_ITERATIONS = 10; // Prevent infinite loops
    
    while (removedAny && iteration < MAX_ITERATIONS)
    {
        removedAny = false;
        iteration++;
        
        auto it = m_links.begin();
        while (it != m_links.end())
        {
            if (IsUselessLink(it->nodeId, it->toNodeId))
            {
                sLog.Out(LOG_BASIC, LOG_LVL_DEBUG,
                    "Iteration %u: Removing useless link %u -> %u (distance: %.1f)",
                    iteration, it->nodeId, it->toNodeId, it->distance);
                it = m_links.erase(it);
                removedCount++;
                removedAny = true;
            }
            else
            {
                ++it;
            }
        }
        
        if (removedAny)
        {
            sLog.Out(LOG_BASIC, LOG_LVL_DEBUG,
                "TravelNodeGenerator: Iteration %u complete, removed %u links so far",
                iteration, removedCount);
        }
    }
    
    uint32 finalCount = static_cast<uint32>(m_links.size());
    float reductionPercent = 100.0f * static_cast<float>(removedCount) / static_cast<float>(initialCount);
    
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL,
        "TravelNodeGenerator: Removed %u useless links in %u iterations (%.1f%% reduction, %u links remaining)",
        removedCount, iteration, reductionPercent, finalCount);
}

void TravelNodeGenerator::GenerateNodesFromGridSampling(uint32 mapId, float gridSize)
{
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, 
        "TravelNodeGenerator: Sampling grid for map %u (grid size: %.1f)...", mapId, gridSize);
    
    Map* map = sMapMgr.FindMap(mapId);
    if (!map)
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "TravelNodeGenerator: Map %u not found for grid sampling", mapId);
        return;
    }
    
    // Define sampling bounds based on map
    float minX, maxX, minY, maxY;
    GetMapBounds(mapId, minX, maxX, minY, maxY);
    
    uint32 nodesAdded = 0;
    uint32 nodesRejected = 0;
    
    // Adjust node limit based on map size
    MapEntry const* entry = sMapStorage.LookupEntry<MapEntry>(mapId);
    uint32 maxNodes = 1000;
    if (entry && entry->IsContinent())
    {
        maxNodes = 10000; // Increased from 5000 to 10000 for better continent coverage
    }
    else
    {
        maxNodes = 1000; // Increased from 500 to 1000 for instances
    }
    
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
            
            // Check if not too close to existing nodes - reduced from 0.8 to 0.6 for denser coverage
            if (IsNodeTooClose(x, y, z, mapId, gridSize * 0.6f))
            {
                nodesRejected++;
                continue;
            }
            
            // Check if this position is in water (reject deep water areas)
            TerrainInfo const* terrain = map->GetTerrain();
            if (terrain)
            {
                float waterLevel = terrain->GetWaterLevel(x, y, z);
                if (waterLevel != INVALID_HEIGHT_VALUE && z < (waterLevel - 2.0f))
                {
                    nodesRejected++; // Underwater, skip
                    continue;
                }
            }
            
            // Add this grid point as a low-priority node
            AddNodeCandidate(x, y, z, mapId, "Grid Sample", PRIORITY_LOW);
            nodesAdded++;
            
            // Limit total grid nodes based on map type
            if (nodesAdded >= maxNodes)
            {
                sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, 
                    "TravelNodeGenerator: Reached grid sampling limit of %u nodes for map %u", 
                    maxNodes, mapId);
                goto sampling_complete;
            }
        }
    }
    
sampling_complete:
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, 
        "TravelNodeGenerator: Added %u grid sample nodes (rejected %u) for map %u", 
        nodesAdded, nodesRejected, mapId);
}

void TravelNodeGenerator::GenerateNodesForAllMaps(float gridSize)
{
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "TravelNodeGenerator: Generating nodes for all supported maps...");
    
    // Iterate through all maps from sMapStorage instead of hardcoded list
    uint32 mapCount = 0;
    for (uint32 i = 0; i < sMapStorage.GetMaxEntry(); ++i)
    {
        MapEntry const* mapEntry = sMapStorage.LookupEntry<MapEntry>(i);
        if (!mapEntry)
            continue;
        
        // Generate nodes for this map
        GenerateNodesForMap(i, gridSize);
        mapCount++;
    }
    
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, 
        "TravelNodeGenerator: Completed generation for %u maps", mapCount);
}

void TravelNodeGenerator::GenerateNodesForMap(uint32 mapId, float gridSize)
{
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, 
        "TravelNodeGenerator: Generating nodes for map %u...", mapId);
    
    // Check if map exists
    Map* map = sMapMgr.FindMap(mapId);
    if (!map)
    {
        sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, 
            "TravelNodeGenerator: Map %u not loaded, skipping", mapId);
        return;
    }
    
    // Adjust grid size based on map type
    float adjustedGridSize = gridSize;
    
    // Instance maps (dungeons/raids) use denser node placement
    if (mapId >= 30)
    {
        adjustedGridSize = gridSize * 0.5f; // Smaller grid for instances
        sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, 
            "TravelNodeGenerator: Using adjusted grid size %.1f for instance map %u", 
            adjustedGridSize, mapId);
    }
    
    GenerateNodesFromGridSampling(mapId, adjustedGridSize);
}

void TravelNodeGenerator::GetMapBounds(uint32 mapId, float& minX, float& maxX, float& minY, float& maxY)
{
    MapEntry const* entry = sMapStorage.LookupEntry<MapEntry>(mapId);
    
    // Use standardized map coordinates based on grid system
    // WoW maps use a 64x64 grid system, each grid is 533.33 yards
    // This gives us a total map size of ~34133 yards, centered at 0,0
    
    if (entry && entry->IsContinent())
    {
        // Continents (Eastern Kingdoms, Kalimdor) use full map size
        minX = -MAP_HALFSIZE;
        maxX = MAP_HALFSIZE;
        minY = -MAP_HALFSIZE;
        maxY = MAP_HALFSIZE;
    }
    else
    {
        // Instances (dungeons, raids, battlegrounds) use smaller, more conservative bounds
        // Most instances are much smaller than the full grid
        minX = -5000.0f;
        maxX = 5000.0f;
        minY = -5000.0f;
        maxY = 5000.0f;
    }
}
