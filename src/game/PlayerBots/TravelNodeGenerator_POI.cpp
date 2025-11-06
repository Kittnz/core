// Helper functions for CMaNGOS-style node generation
#include "TravelNodeGenerator.h"
#include "TravelPathGenerator.h"
#include "ObjectMgr.h"
#include "MapManager.h"
#include "Map.h"
#include "Database/DatabaseEnv.h"
#include "Log.h"
#include "DBCStores.h"
#include <cmath>

// Generate nodes at quest giver locations
void TravelNodeGenerator::GenerateNodesFromQuests()
{
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "TravelNodeGenerator: Generating nodes from quests...");
    
    uint32 startCount = m_nodesGenerated;
    
    // Query quest starter locations (creatures)
    std::unique_ptr<QueryResult> result(WorldDatabase.Query(
        "SELECT c.position_x, c.position_y, c.position_z, c.map, "
        "ct.name, qr.quest, qt.MinLevel, qt.QuestLevel "
        "FROM creature_questrelation qr "
        "JOIN creature c ON qr.id = c.id "
        "JOIN creature_template ct ON c.id = ct.entry "
        "JOIN quest_template qt ON qr.quest = qt.entry "
        "WHERE qt.QuestLevel > 0"));
    
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
            uint32 questId = fields[5].GetUInt32();
            uint32 minLevel = fields[6].GetUInt32();
            uint32 questLevel = fields[7].GetUInt32();
            
            // Determine priority based on quest level
            NodePriority priority = PRIORITY_MEDIUM;
            if (questLevel <= 10)
                priority = PRIORITY_HIGH; // Starter quests
            else if (questLevel >= 50)
                priority = PRIORITY_LOW;  // End-game quests
            
            uint32 nodeId = FindOrCreateNodeAt(x, y, z, mapId);
            if (nodeId == 0)
            {
                AddNodeCandidate(x, y, z, mapId, "Quest: " + name, priority);
                nodeId = m_nodes.back().id;
                m_nodes.back().objectId = questId;
                m_nodes.back().areaLevel = questLevel;
                
                // Get area info for this position
                Map* map = sMapMgr.FindMap(mapId);
                if (map)
                {
                    TerrainInfo const* terrain = map->GetTerrain();
                    if (terrain)
                    {
                        uint32 areaId = terrain->GetAreaId(x, y, z);
                        m_nodes.back().areaId = areaId;
                        
                        // Try to get zone ID from area table
                        AreaEntry const* areaEntry = AreaEntry::GetById(areaId);
                        if (areaEntry)
                        {
                            m_nodes.back().zoneId = areaEntry->ZoneId ? areaEntry->ZoneId : areaId;
                            m_nodes.back().areaFlags = areaEntry->Flags;
                        }
                    }
                }
            }
            
        } while (result->NextRow());
    }
    
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "TravelNodeGenerator: Generated %u nodes from quests", 
             m_nodesGenerated - startCount);
}

// Generate nodes at creature spawn density hotspots (grinding spots)
void TravelNodeGenerator::GenerateNodesFromGrindSpots()
{
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "TravelNodeGenerator: Generating nodes from grind spots...");
    
    uint32 startCount = m_nodesGenerated;
    
    // Find areas with high creature density grouped by level
    std::unique_ptr<QueryResult> result(WorldDatabase.Query(
        "SELECT AVG(c.position_x), AVG(c.position_y), AVG(c.position_z), c.map, "
        "ct.level_min, ct.level_max, COUNT(*) as creature_count, "
        "ct.faction "
        "FROM creature c "
        "JOIN creature_template ct ON c.id = ct.entry "
        "WHERE ct.level_min > 0 AND ct.faction != 35 " // Exclude friendly NPCs
        "GROUP BY c.map, FLOOR(ct.level_min / 5) " // Group by map and level range
        "HAVING creature_count >= 10 " // At least 10 creatures
        "ORDER BY c.map, ct.level_min"));
    
    if (result)
    {
        do
        {
            Field* fields = result->Fetch();
            float x = fields[0].GetFloat();
            float y = fields[1].GetFloat();
            float z = fields[2].GetFloat();
            uint32 mapId = fields[3].GetUInt32();
            uint32 minLevel = fields[4].GetUInt32();
            uint32 maxLevel = fields[5].GetUInt32();
            uint32 count = fields[6].GetUInt32();
            uint32 faction = fields[7].GetUInt32();
            
            std::string name = "Grind Spot (Lvl " + std::to_string(minLevel) + "-" + 
                              std::to_string(maxLevel) + ")";
            
            AddNodeCandidate(x, y, z, mapId, name, PRIORITY_LOW);
            if (!m_nodes.empty())
            {
                m_nodes.back().areaLevel = (minLevel + maxLevel) / 2;
                
                // Store faction information for pathfinding
                // We'll use this to determine if the area is hostile
                Map* map = sMapMgr.FindMap(mapId);
                if (map)
                {
                    TerrainInfo const* terrain = map->GetTerrain();
                    if (terrain)
                    {
                        uint32 areaId = terrain->GetAreaId(x, y, z);
                        m_nodes.back().areaId = areaId;
                        
                        AreaEntry const* areaEntry = AreaEntry::GetById(areaId);
                        if (areaEntry)
                        {
                            m_nodes.back().zoneId = areaEntry->ZoneId ? areaEntry->ZoneId : areaId;
                            m_nodes.back().areaFlags = areaEntry->Flags;
                        }
                    }
                }
            }
            
        } while (result->NextRow());
    }
    
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "TravelNodeGenerator: Generated %u grind spot nodes", 
             m_nodesGenerated - startCount);
}

// Generate nodes at resource gathering locations
void TravelNodeGenerator::GenerateNodesFromResources()
{
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "TravelNodeGenerator: Generating nodes from resources...");
    
    uint32 startCount = m_nodesGenerated;
    
    // Mining nodes
    std::unique_ptr<QueryResult> result(WorldDatabase.Query(
        "SELECT AVG(position_x), AVG(position_y), AVG(position_z), map, id, COUNT(*) "
        "FROM gameobject "
        "WHERE id IN (SELECT entry FROM gameobject_template WHERE type = 3) " // Mining nodes
        "GROUP BY map, FLOOR(position_x/100), FLOOR(position_y/100) "
        "HAVING COUNT(*) >= 3"));
    
    if (result)
    {
        do
        {
            Field* fields = result->Fetch();
            float x = fields[0].GetFloat();
            float y = fields[1].GetFloat();
            float z = fields[2].GetFloat();
            uint32 mapId = fields[3].GetUInt32();
            
            AddNodeCandidate(x, y, z, mapId, "Resource Gathering", PRIORITY_LOW);
            
            // Get area information
            if (!m_nodes.empty())
            {
                Map* map = sMapMgr.FindMap(mapId);
                if (map)
                {
                    TerrainInfo const* terrain = map->GetTerrain();
                    if (terrain)
                    {
                        uint32 areaId = terrain->GetAreaId(x, y, z);
                        m_nodes.back().areaId = areaId;
                        
                        AreaEntry const* areaEntry = AreaEntry::GetById(areaId);
                        if (areaEntry)
                        {
                            m_nodes.back().zoneId = areaEntry->ZoneId ? areaEntry->ZoneId : areaId;
                            m_nodes.back().areaFlags = areaEntry->Flags;
                        }
                    }
                }
            }
            
        } while (result->NextRow());
    }
    
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "TravelNodeGenerator: Generated %u resource nodes", 
             m_nodesGenerated - startCount);
}

// Generate nodes at dungeon/instance entrances
void TravelNodeGenerator::GenerateNodesFromDungeonEntrances()
{
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "TravelNodeGenerator: Generating nodes from dungeon entrances...");
    
    uint32 startCount = m_nodesGenerated;
    
    // Query instance entrance portals (meeting stones, etc.)
    std::unique_ptr<QueryResult> result(WorldDatabase.Query(
        "SELECT go.position_x, go.position_y, go.position_z, go.map, got.name, at.target_map "
        "FROM gameobject go "
        "JOIN gameobject_template got ON go.id = got.entry "
        "LEFT JOIN areatrigger_teleport at ON got.type = 10 " // GAMEOBJECT_TYPE_PORTAL
        "WHERE got.type IN (10, 23) " // Portals and meeting stones
        "OR got.name LIKE '%Meeting Stone%'"));
    
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
            
            AddNodeCandidate(x, y, z, mapId, "Dungeon: " + name, PRIORITY_MEDIUM);
            
            // Get area information
            if (!m_nodes.empty())
            {
                Map* map = sMapMgr.FindMap(mapId);
                if (map)
                {
                    TerrainInfo const* terrain = map->GetTerrain();
                    if (terrain)
                    {
                        uint32 areaId = terrain->GetAreaId(x, y, z);
                        m_nodes.back().areaId = areaId;
                        
                        AreaEntry const* areaEntry = AreaEntry::GetById(areaId);
                        if (areaEntry)
                        {
                            m_nodes.back().zoneId = areaEntry->ZoneId ? areaEntry->ZoneId : areaId;
                            m_nodes.back().areaFlags = areaEntry->Flags;
                        }
                    }
                }
            }
            
        } while (result->NextRow());
    }
    
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "TravelNodeGenerator: Generated %u dungeon entrance nodes", 
             m_nodesGenerated - startCount);
}

// Get recommended level for an area (based on creatures)
uint32 TravelNodeGenerator::GetAreaLevel(uint32 areaId) const
{
    // Query average creature level in this area
    std::unique_ptr<QueryResult> result(WorldDatabase.PQuery(
        "SELECT AVG((ct.level_min + ct.level_max) / 2) as avg_level "
        "FROM creature c "
        "JOIN creature_template ct ON c.id = ct.entry "
        "WHERE c.zone = %u AND ct.level_min > 0",
        areaId));
    
    if (result)
    {
        Field* fields = result->Fetch();
        return static_cast<uint32>(fields[0].GetFloat());
    }
    
    return 0; // Unknown
}

// Check if an area is hostile to a specific faction
bool TravelNodeGenerator::IsAreaHostile(uint32 areaId, Team faction) const
{
    AreaEntry const* areaEntry = AreaEntry::GetById(areaId);
    if (!areaEntry)
        return false;
    
    // Check area faction
    if (areaEntry->Team == AREATEAM_ALLY && faction == HORDE)
        return true;
    if (areaEntry->Team == AREATEAM_HORDE && faction == ALLIANCE)
        return true;
    
    // Contested or neutral areas
    return false;
}

// Calculate link cost considering player context
float TravelNodeGenerator::GetLinkCost(const TravelNodeLink& link, Player* bot) const
{
    const NodeCandidate* fromNode = GetNodeById(link.nodeId);
    const NodeCandidate* toNode = GetNodeById(link.toNodeId);
    
    if (!fromNode || !toNode)
        return -1.0f; // Invalid path - return -1 instead of max float
    
    float baseCost = link.distance;
    float multiplier = 1.0f;
    
    // Base costs by path type
    TravelNodePathType pathType = static_cast<TravelNodePathType>(link.type);
    switch (pathType)
    {
        case TravelNodePathType::Walk:
            multiplier = 1.0f;
            break;
        case TravelNodePathType::FlightPath:
            multiplier = 0.3f; // Flying is much faster
            baseCost += link.extraCost; // Flight cost
            break;
        case TravelNodePathType::Transport:
            multiplier = 0.5f; // Boats/zeppelins
            baseCost += 50.0f; // Wait time
            break;
        case TravelNodePathType::AreaTrigger:
        case TravelNodePathType::TeleportSpell:
        case TravelNodePathType::StaticPortal:
            multiplier = 0.1f; // Instant travel
            baseCost = 10.0f; // Minimal cost
            break;
        default:
            break;
    }
    
    // If bot context is provided, apply player-specific modifiers
    if (bot)
    {
        // Expansion level requirements (CMaNGOS-style)
        //if (toNode->mapId == 530 && bot->GetLevel() < 58) // Outland/Burning Crusade
        //    return -1.0f;
        // Note: Vanilla doesn't have Northrend, but keeping structure for future
        // if (toNode->mapId == 571 && bot->GetLevel() < 68) // Northrend
        //     return -1.0f;
        
        // Flight path validation
        if (pathType == TravelNodePathType::FlightPath)
        {
            if (!bot->IsAlive())
                return -1.0f; // Dead players cannot use flight paths
            
            // TODO: Add taxi node knowledge check when available
            //if (!bot->IsTaxiNodeKnown(taxiNodeId))
            //     return -1.0f;
            
            // TODO: Add gold cost check
            // if (flightCost > bot->GetMoney())
            //     return -1.0f;
        }
        
        // level-based danger assessment
        if (toNode->areaLevel > 0)
        {
            int32 levelDiff = static_cast<int32>(toNode->areaLevel) - static_cast<int32>(bot->GetLevel());
            
            // Mob annoyance: 10% cost increase per level above player (starting at +10 levels)
            // modifier += 0.1 * mobAnnoyance where mobAnnoyance = (mobLevel - playerLevel) - 10
            int32 mobAnnoyance = levelDiff - 10;
            if (mobAnnoyance > 0)
            {
                multiplier += 0.1f * mobAnnoyance; // 10% per level
            }
            
            // Faction annoyance: 30% cost increase per level for hostile faction areas
            // This is 3x more dangerous than regular mobs (CMaNGOS uses 0.3 factor)
            if (IsAreaHostile(toNode->areaId, bot->GetTeam()))
            {
                int32 factionAnnoyance = levelDiff - 10;
                if (factionAnnoyance > 0)
                {
                    multiplier += 0.3f * factionAnnoyance; // 30% per level for hostile territory
                }
            }
        }
        
        // Mount availability check (improved from TODO)
        if (pathType == TravelNodePathType::Walk)
        {
            // Check if bot has mount capability
            // In vanilla, mounts are available at level 40 (60% speed) and 60 (100% speed)
            if (bot->GetLevel() >= 40)
            {
                // Assume bot has mount - reduces walking time by ~60%
                multiplier *= 0.625f; // 60% mount speed = 1/(1+0.6) = ~0.625
            }
            if (bot->GetLevel() >= 60)
            {
                // Epic mount - reduces walking time further
                multiplier *= 0.5f; // 100% mount speed = 1/2 = 0.5
            }
        }
        
        // Swim speed detection
        if (link.swimDistance > 0.0f)
        {
            float swimSpeedMultiplier = 1.0f;
            
            // Check for water breathing / swim speed buffs
            // Spell 1066 = Aquatic Form (Druid) - 50% swim speed increase
            if (bot->HasAura(1066))
            {
                swimSpeedMultiplier = 0.667f; // 1/(1+0.5) = ~0.667
            }
            
            // Apply swim penalty if no water breathing
            // Swimming is ~2x slower than running without bonuses
            if (!bot->HasAura(1066))
            {
                float swimRatio = link.swimDistance / (link.distance + 0.01f);
                multiplier += swimRatio * 1.0f; // Swimming doubles the effective time
            }
            else
            {
                multiplier *= swimSpeedMultiplier;
            }
        }
    }
    
    // Terrain difficulty (unchanged from original)
    if (link.swimDistance > 0.0f)
    {
        multiplier *= 1.5f; // Swimming is slower
    }
    
    if (link.extraCost > 100)
    {
        multiplier *= 1.3f; // Difficult terrain
    }
    
    return baseCost * multiplier;
}

// Check if a link is safe for a given level
bool TravelNodeGenerator::IsLinkSafeForLevel(const TravelNodeLink& link, uint32 level) const
{
    // Check creature levels along path
    for (int i = 0; i < 3; ++i)
    {
        if (link.maxCreature[i] > 0)
        {
            // If creatures are more than 5 levels above player, it's dangerous
            if (link.maxCreature[i] > level + 5)
                return false;
        }
    }
    
    // Check destination area level
    const NodeCandidate* toNode = GetNodeById(link.toNodeId);
    if (toNode && toNode->areaLevel > 0)
    {
        // Area is more than 10 levels above player
        if (toNode->areaLevel > level + 10)
            return false;
    }
    
    return true;
}

// Calculate terrain difficulty multiplier for a link
float TravelNodeGenerator::GetTerrainDifficultyMultiplier(const TravelNodeLink& link) const
{
    float multiplier = 1.0f;
    
    // Swimming penalty
    if (link.swimDistance > 0.0f)
    {
        float swimRatio = link.swimDistance / (link.distance + 0.01f);
        multiplier += swimRatio * 0.5f; // Up to 50% penalty for full swim
    }
    
    // Terrain difficulty (from extra_cost)
    if (link.extraCost > 100)
    {
        multiplier += (link.extraCost / 100.0f) * 0.1f; // 10% per 100 extra cost
    }
    
    // Cap multiplier at reasonable value
    if (multiplier > 3.0f)
        multiplier = 3.0f;
    
    return multiplier;
}

// Path smoothing/waypoint reduction for optimization (POINT 9 - IMPLEMENTED)
// Reduces waypoint count by removing intermediate points that can be skipped
// while maintaining path validity. Uses a greedy line-of-sight algorithm.
void TravelNodeGenerator::SmoothPath(std::vector<TravelPath>& path, float maxDistance)
{
    if (path.size() <= 2)
        return; // Nothing to smooth
    
    sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, 
        "TravelNodeGenerator: Smoothing path with %u points (maxDistance=%.1f)", 
        static_cast<uint32>(path.size()), maxDistance);
    
    std::vector<TravelPath> smoothedPath;
    smoothedPath.reserve(path.size() / 2); // Estimate 50% reduction
    
    // Always keep the first point
    smoothedPath.push_back(path[0]);
    
    size_t currentIdx = 0;
    uint32 mapId = path[0].mapId;
    Map* map = sMapMgr.FindMap(mapId);
    
    if (!map)
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, 
            "TravelNodeGenerator: Map %u not found for path smoothing", mapId);
        return; // Can't smooth without map access
    }
    
    // Greedy algorithm: from current point, try to reach the furthest point possible
    while (currentIdx < path.size() - 1)
    {
        size_t furthestReachable = currentIdx + 1;
        
        // Try to skip as many points as possible
        for (size_t testIdx = currentIdx + 2; testIdx < path.size(); ++testIdx)
        {
            const TravelPath& fromPoint = path[currentIdx];
            const TravelPath& toPoint = path[testIdx];
            
            // Calculate distance
            float dx = toPoint.x - fromPoint.x;
            float dy = toPoint.y - fromPoint.y;
            float dz = toPoint.z - fromPoint.z;
            float distance = std::sqrt(dx * dx + dy * dy + dz * dz);
            
            // If distance exceeds maxDistance, stop trying
            if (distance > maxDistance)
                break;
            
            // Check if we can path directly between these points
            if (CanPathBetween(mapId, fromPoint.x, fromPoint.y, fromPoint.z,
                              toPoint.x, toPoint.y, toPoint.z))
            {
                furthestReachable = testIdx;
            }
            else
            {
                // Can't reach this point directly, stop trying further ones
                break;
            }
        }
        
        // Move to the furthest reachable point
        currentIdx = furthestReachable;
        smoothedPath.push_back(path[currentIdx]);
    }
    
    // Renumber the smoothed path
    for (size_t i = 0; i < smoothedPath.size(); ++i)
    {
        smoothedPath[i].nr = static_cast<uint32>(i);
    }
    
    uint32 originalSize = static_cast<uint32>(path.size());
    uint32 smoothedSize = static_cast<uint32>(smoothedPath.size());
    float reduction = 100.0f * (1.0f - static_cast<float>(smoothedSize) / static_cast<float>(originalSize));
    
    sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, 
        "TravelNodeGenerator: Smoothed path from %u to %u points (%.1f%% reduction)", 
        originalSize, smoothedSize, reduction);
    
    // Replace original path with smoothed version
    path = std::move(smoothedPath);
}

// City/rest area detection for bot logout and behavior
bool TravelNodeGenerator::IsInCity(uint32 mapId, float x, float y, float z) const
{
    Map* map = sMapMgr.FindMap(mapId);
    if (!map)
        return false;
    
    TerrainInfo const* terrain = map->GetTerrain();
    if (!terrain)
        return false;
    
    uint32 areaId = terrain->GetAreaId(x, y, z);
    AreaEntry const* area = AreaEntry::GetById(areaId);
    
    // Check for main city flag
    return area && (area->Flags & (AREA_FLAG_CAPITAL | AREA_FLAG_CITY));
}

// Rest area detection for bot logout
bool TravelNodeGenerator::IsRestArea(uint32 mapId, float x, float y, float z) const
{
    Map* map = sMapMgr.FindMap(mapId);
    if (!map)
        return false;
    
    TerrainInfo const* terrain = map->GetTerrain();
    if (!terrain)
        return false;
    
    uint32 areaId = terrain->GetAreaId(x, y, z);
    AreaEntry const* area = AreaEntry::GetById(areaId);
    
    // Check for rest area flag (inns, cities)
    return area && (area->Flags & (AREA_FLAG_SLAVE_CAPITAL2 | AREA_FLAG_CAPITAL | AREA_FLAG_CITY));
}

// Check if a position is in a sanctuary (PvP-free zone)
bool TravelNodeGenerator::IsInSanctuary(uint32 mapId, float x, float y, float z) const
{
    Map* map = sMapMgr.FindMap(mapId);
    if (!map)
        return false;
    
    TerrainInfo const* terrain = map->GetTerrain();
    if (!terrain)
        return false;
    
    uint32 areaId = terrain->GetAreaId(x, y, z);
    AreaEntry const* area = AreaEntry::GetById(areaId);
    
    // In vanilla, sanctuary is typically indicated by capital cities
    // There's no separate AREA_FLAG_SANCTUARY in vanilla
    return area && (area->Flags & (AREA_FLAG_CAPITAL | AREA_FLAG_CITY));
}

// Get area type for smart bot behavior
TravelNodeAreaType TravelNodeGenerator::GetAreaType(uint32 mapId, float x, float y, float z) const
{
    Map* map = sMapMgr.FindMap(mapId);
    if (!map)
        return AREA_TYPE_UNKNOWN;
    
    TerrainInfo const* terrain = map->GetTerrain();
    if (!terrain)
        return AREA_TYPE_UNKNOWN;
    
    uint32 areaId = terrain->GetAreaId(x, y, z);
    AreaEntry const* area = AreaEntry::GetById(areaId);
    
    if (!area)
        return AREA_TYPE_UNKNOWN;
    
    // Check flags in priority order
    if (area->Flags & AREA_FLAG_CAPITAL)
        return AREA_TYPE_CITY;
    
    if (area->Flags & AREA_FLAG_CITY)
        return AREA_TYPE_CITY;
    
    if (area->Flags & AREA_FLAG_SLAVE_CAPITAL2)
        return AREA_TYPE_INN;
    
    if (area->Flags & AREA_FLAG_ARENA)
        return AREA_TYPE_ARENA;
    
    // Check if it's a dungeon/raid
    MapEntry const* mapEntry = sMapStorage.LookupEntry<MapEntry>(mapId);
    if (mapEntry && mapEntry->IsDungeon())
        return AREA_TYPE_DUNGEON;
    
    // Default to wilderness
    return AREA_TYPE_WILDERNESS;
}

// Check if a node should be marked as a safe logout location
bool TravelNodeGenerator::IsSafeLogoutLocation(const NodeCandidate& node) const
{
    // Cities and inns are always safe
    if (node.areaFlags & (AREA_FLAG_CAPITAL | AREA_FLAG_CITY | AREA_FLAG_SLAVE_CAPITAL2))
        return true;
    
    // Flight masters are generally safe
    if (node.name.find("Flight Master") != std::string::npos)
        return true;
    
    // Innkeepers are safe
    if (node.name.find("Inn:") != std::string::npos)
        return true;
    
    return false;
}

// Mark nodes with safe logout flag during generation
void TravelNodeGenerator::MarkSafeLogoutNodes()
{
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "TravelNodeGenerator: Marking safe logout locations...");
    
    uint32 safeNodeCount = 0;
    
    for (auto& node : m_nodes)
    {
        if (IsSafeLogoutLocation(node))
        {
            // Set a flag or add to a separate collection
            // For now, we'll update the node's name prefix
            if (node.name.find("[SAFE]") == std::string::npos)
            {
                node.name = "[SAFE] " + node.name;
                safeNodeCount++;
            }
        }
    }
    
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, 
        "TravelNodeGenerator: Marked %u nodes as safe logout locations", safeNodeCount);
}

// Get nearest safe logout location
uint32 TravelNodeGenerator::GetNearestSafeLogoutNode(uint32 mapId, float x, float y, float z) const
{
    uint32 nearestNode = 0;
    float nearestDist = std::numeric_limits<float>::max();
    
    for (const auto& node : m_nodes)
    {
        if (node.mapId != mapId)
            continue;
        
        if (!IsSafeLogoutLocation(node))
            continue;
        
        float dx = node.x - x;
        float dy = node.y - y;
        float dz = node.z - z;
        float dist = std::sqrt(dx*dx + dy*dy + dz*dz);
        
        if (dist < nearestDist)
        {
            nearestDist = dist;
            nearestNode = node.id;
        }
    }
    
    return nearestNode;
}

// Check if area allows resting (XP bonus recovery)
bool TravelNodeGenerator::CanRestInArea(uint32 areaId) const
{
    AreaEntry const* area = AreaEntry::GetById(areaId);
    if (!area)
        return false;
    
    // Can rest in cities, inns, and rest zones
    return (area->Flags & (AREA_FLAG_CAPITAL | AREA_FLAG_CITY | AREA_FLAG_SLAVE_CAPITAL2)) != 0;
}

// Get area name for a position
std::string TravelNodeGenerator::GetAreaName(uint32 mapId, float x, float y, float z) const
{
    Map* map = sMapMgr.FindMap(mapId);
    if (!map)
        return "Unknown Area";
    
    TerrainInfo const* terrain = map->GetTerrain();
    if (!terrain)
        return "Unknown Area";
    
    uint32 areaId = terrain->GetAreaId(x, y, z);
    AreaEntry const* area = AreaEntry::GetById(areaId);
    
    if (!area)
        return "Unknown Area";
    
    // Return area name from DBC (usually index 0 for English)
    return area->Name ? area->Name : "Unknown Area";
}
