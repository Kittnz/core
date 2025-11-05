#include "TravelPathGenerator.h"
#include "TravelNodeGenerator.h"
#include "Map.h"
#include "MapManager.h"
#include "PathFinder.h"
#include "GridDefines.h"
#include "GridMap.h"
#include "Log.h"
#include "Creature.h"
#include "ObjectMgr.h"
#include <cmath>

// Note: PathFinder has MAX_PATH_LENGTH of 256 points, each ~6 yards apart
// This gives us approximately 1536 yards max path distance
// We keep our segments shorter for better performance
static constexpr float MAX_PATHFINDER_SEGMENT = 200.0f;

TravelPathGenerator::TravelPathGenerator(TravelNodeGenerator* nodeGen)
    : m_nodeGenerator(nodeGen)
{
}

TravelPathGenerator::~TravelPathGenerator()
{
}

void TravelPathGenerator::GenerateDetailedPaths()
{
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "TravelPathGenerator: Generating detailed paths...");
    
    const auto& links = m_nodeGenerator->GetLinks();
    uint32 processedLinks = 0;
    uint32 failedLinks = 0;
    
    for (const auto& link : links)
    {
        if (GeneratePathForLink(link.nodeId, link.toNodeId, 
            static_cast<TravelNodePathType>(link.type)))
        {
            processedLinks++;
        }
        else
        {
            failedLinks++;
        }
        
        if ((processedLinks + failedLinks) % 100 == 0)
        {
            sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, 
                "TravelPathGenerator: Processed %u/%u links (%u failed)", 
                processedLinks + failedLinks, static_cast<uint32>(links.size()), failedLinks);
        }
    }
    
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, 
        "TravelPathGenerator: Generated %u detailed path points from %u links (%u failed)", 
        static_cast<uint32>(m_generatedPaths.size()), processedLinks, failedLinks);
}

bool TravelPathGenerator::GeneratePathForLink(uint32 fromNodeId, uint32 toNodeId, 
                                              TravelNodePathType linkType)
{
    const NodeCandidate* fromNode = m_nodeGenerator->GetNodeById(fromNodeId);
    const NodeCandidate* toNode = m_nodeGenerator->GetNodeById(toNodeId);
    
    if (!fromNode || !toNode)
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, 
            "TravelPathGenerator: Invalid nodes %u or %u", fromNodeId, toNodeId);
        return false;
    }
    
    std::vector<TravelPath> pathPoints;
    
    switch (linkType)
    {
    case TravelNodePathType::Walk:
        if (!CalculateWalkingPath(fromNode, toNode, pathPoints))
        {
            sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, 
                "TravelPathGenerator: Failed to generate walking path from %u to %u", 
                fromNodeId, toNodeId);
            return false;
        }
        // Simplify the path to reduce database size
        SimplifyPath(pathPoints, 3.0f);
        break;
        
    case TravelNodePathType::Transport:
    case TravelNodePathType::FlightPath:
    case TravelNodePathType::AreaTrigger:
    case TravelNodePathType::TeleportSpell:
    case TravelNodePathType::StaticPortal:
        // For instant travel types, just add start and end points
        {
            TravelPath start, end;
            start.nodeId = fromNodeId;
            start.toNodeId = toNodeId;
            start.nr = 0;
            start.mapId = fromNode->mapId;
            start.x = fromNode->x;
            start.y = fromNode->y;
            start.z = fromNode->z;
            
            end.nodeId = fromNodeId;
            end.toNodeId = toNodeId;
            end.nr = 1;
            end.mapId = toNode->mapId;
            end.x = toNode->x;
            end.y = toNode->y;
            end.z = toNode->z;
            
            pathPoints.push_back(start);
            pathPoints.push_back(end);
        }
        break;
        
    default:
        sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, 
            "TravelPathGenerator: Unsupported link type %u", static_cast<uint32>(linkType));
        return false;
    }
    
    // Add to our collection
    m_generatedPaths.insert(m_generatedPaths.end(), 
                           pathPoints.begin(), pathPoints.end());
    
    return true;
}

bool TravelPathGenerator::CalculateWalkingPath(const NodeCandidate* from, 
                                               const NodeCandidate* to, 
                                               std::vector<TravelPath>& outPath)
{
    if (!from || !to)
        return false;
    
    if (from->mapId != to->mapId)
        return false;
    
    Map* map = sMapMgr.FindMap(from->mapId);
    if (!map)
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, 
            "TravelPathGenerator: Map %u not found", from->mapId);
        return false;
    }
    
    // Calculate straight-line distance first
    float dx = to->x - from->x;
    float dy = to->y - from->y;
    float dz = to->z - from->z;
    float straightDist = std::sqrt(dx * dx + dy * dy + dz * dz);
    
    // If nodes are very close, just create a simple two-point path
    if (straightDist < 5.0f)
    {
        TravelPath start, end;
        start.nodeId = from->id;
        start.toNodeId = to->id;
        start.nr = 0;
        start.mapId = from->mapId;
        start.x = from->x;
        start.y = from->y;
        start.z = from->z;
        
        end.nodeId = from->id;
        end.toNodeId = to->id;
        end.nr = 1;
        end.mapId = to->mapId;
        end.x = to->x;
        end.y = to->y;
        end.z = to->z;
        
        outPath.push_back(start);
        outPath.push_back(end);
        return true;
    }
    
    // If distance exceeds PathFinder capability, break into segments
    if (straightDist > MAX_PATHFINDER_SEGMENT)
    {
        return GenerateLongDistancePath(from, to, straightDist, outPath);
    }
    
    // Use PathFinder with a temporary unit for accurate pathfinding
    if (UsePathFinderForPath(from, to, map, outPath))
    {
        return true;
    }
    
    // Fallback to terrain sampling if PathFinder fails
    sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, 
        "TravelPathGenerator: PathFinder failed for nodes %u to %u, using terrain sampling fallback", 
        from->id, to->id);
    
    return UseTerrainSamplingPath(from, to, map, straightDist, outPath);
}

bool TravelPathGenerator::GenerateLongDistancePath(const NodeCandidate* from,
                                                    const NodeCandidate* to,
                                                    float totalDistance,
                                                    std::vector<TravelPath>& outPath)
{
    // Break the path into segments small enough for PathFinder
    uint32 numSegments = static_cast<uint32>(std::ceil(totalDistance / MAX_PATHFINDER_SEGMENT));
    
    if (numSegments < 2)
        numSegments = 2;
    
    sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, 
        "TravelPathGenerator: Breaking long path (%.1f yards) into %u segments", 
        totalDistance, numSegments);
    
    Map* map = sMapMgr.FindMap(from->mapId);
    if (!map)
        return false;
    
    std::vector<TravelPath> fullPath;
    
    // Generate intermediate waypoints along the straight line
    for (uint32 seg = 0; seg < numSegments; ++seg)
    {
        float t1 = static_cast<float>(seg) / static_cast<float>(numSegments);
        float t2 = static_cast<float>(seg + 1) / static_cast<float>(numSegments);
        
        // Calculate segment start and end points
        float x1 = from->x + t1 * (to->x - from->x);
        float y1 = from->y + t1 * (to->y - from->y);
        float z1 = from->z + t1 * (to->z - from->z);
        
        float x2 = from->x + t2 * (to->x - from->x);
        float y2 = from->y + t2 * (to->y - from->y);
        float z2 = from->z + t2 * (to->z - from->z);
        
        // Get proper ground heights
        float groundZ1 = map->GetHeight(x1, y1, z1 + 2.0f);
        if (groundZ1 != INVALID_HEIGHT)
            z1 = groundZ1;
        
        float groundZ2 = map->GetHeight(x2, y2, z2 + 2.0f);
        if (groundZ2 != INVALID_HEIGHT)
            z2 = groundZ2;
        
        // Create temporary nodes for this segment
        NodeCandidate segmentFrom, segmentTo;
        segmentFrom.id = from->id;
        segmentFrom.mapId = from->mapId;
        segmentFrom.x = x1;
        segmentFrom.y = y1;
        segmentFrom.z = z1;
        
        segmentTo.id = to->id;
        segmentTo.mapId = to->mapId;
        segmentTo.x = x2;
        segmentTo.y = y2;
        segmentTo.z = z2;
        
        // Try to generate path for this segment
        std::vector<TravelPath> segmentPath;
        bool segmentSuccess = false;
        
        // First try PathFinder
        if (UsePathFinderForPath(&segmentFrom, &segmentTo, map, segmentPath))
        {
            segmentSuccess = true;
        }
        // Fall back to terrain sampling
        else
        {
            float dx = x2 - x1;
            float dy = y2 - y1;
            float dz = z2 - z1;
            float segDist = std::sqrt(dx * dx + dy * dy + dz * dz);
            
            if (UseTerrainSamplingPath(&segmentFrom, &segmentTo, map, segDist, segmentPath))
            {
                segmentSuccess = true;
            }
        }
        
        if (!segmentSuccess)
        {
            sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, 
                "TravelPathGenerator: Failed to generate segment %u/%u", 
                seg + 1, numSegments);
            return false;
        }
        
        // Merge segment into full path
        if (fullPath.empty())
        {
            // First segment - add all points
            fullPath.insert(fullPath.end(), segmentPath.begin(), segmentPath.end());
        }
        else
        {
            // Skip first point of segment (it's the same as last point of previous segment)
            if (!segmentPath.empty())
            {
                fullPath.insert(fullPath.end(), segmentPath.begin() + 1, segmentPath.end());
            }
        }
    }
    
    if (fullPath.empty())
        return false;
    
    // Renumber all points
    for (size_t i = 0; i < fullPath.size(); ++i)
    {
        fullPath[i].nr = static_cast<uint32>(i);
        fullPath[i].nodeId = from->id;
        fullPath[i].toNodeId = to->id;
    }
    
    outPath = std::move(fullPath);
    
    sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, 
        "TravelPathGenerator: Generated long distance path with %u total points", 
        static_cast<uint32>(outPath.size()));
    
    return true;
}

bool TravelPathGenerator::UsePathFinderForPath(const NodeCandidate* from,
                                                const NodeCandidate* to,
                                                Map* map,
                                                std::vector<TravelPath>& outPath)
{
    // Create a temporary creature to use for pathfinding
    // We use a basic creature template that exists in all databases
    const uint32 TEMP_CREATURE_ENTRY = 1; // Basic creature entry
    
    // Try to find a valid creature template
    CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(TEMP_CREATURE_ENTRY);
    if (!cInfo)
    {
        sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, 
            "TravelPathGenerator: Could not find creature template for pathfinding");
        return false;
    }
    
    // Create a temporary creature (not added to world)
    Creature* pathUnit = new Creature();
    
    // Create creature position object
    CreatureCreatePos pos(map, from->x, from->y, from->z, 0.0f);
    
    // Create creature with proper initialization
    if (!pathUnit->Create(map->GenerateLocalLowGuid(HIGHGUID_UNIT), pos, cInfo, TEMP_CREATURE_ENTRY))
    {
        delete pathUnit;
        sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, 
            "TravelPathGenerator: Failed to create temporary pathfinding unit");
        return false;
    }
    
    // Use PathFinder to calculate the path
    PathFinder pathFinder(pathUnit);
    pathFinder.calculate(to->x, to->y, to->z);
    
    PathType pathType = pathFinder.getPathType();
    
    // Check if path is valid
    if (pathType == PATHFIND_NOPATH || pathType == PATHFIND_INCOMPLETE)
    {
        delete pathUnit;
        sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, 
            "TravelPathGenerator: PathFinder returned invalid path type %u", 
            static_cast<uint32>(pathType));
        return false;
    }
    
    // Extract path points
    const PointsArray& pathPoints = pathFinder.getPath();
    
    if (pathPoints.size() < 2)
    {
        delete pathUnit;
        sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, 
            "TravelPathGenerator: PathFinder returned too few points");
        return false;
    }
    
    // Convert PathFinder points to TravelPath format
    uint32 pointNr = 0;
    for (const auto& point : pathPoints)
    {
        TravelPath pathPoint;
        pathPoint.nodeId = from->id;
        pathPoint.toNodeId = to->id;
        pathPoint.nr = pointNr++;
        pathPoint.mapId = from->mapId;
        pathPoint.x = point.x;
        pathPoint.y = point.y;
        pathPoint.z = point.z;
        
        outPath.push_back(pathPoint);
    }
    
    // Clean up temporary unit
    delete pathUnit;
    
    sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, 
        "TravelPathGenerator: PathFinder generated %u points from node %u to %u", 
        static_cast<uint32>(outPath.size()), from->id, to->id);
    
    return true;
}

bool TravelPathGenerator::UseTerrainSamplingPath(const NodeCandidate* from,
                                                  const NodeCandidate* to,
                                                  Map* map,
                                                  float straightDist,
                                                  std::vector<TravelPath>& outPath)
{
    // Original terrain sampling implementation as fallback
    const uint32 NUM_SAMPLES = static_cast<uint32>(std::min(straightDist / 5.0f, 40.0f));
    
    if (NUM_SAMPLES < 2)
    {
        // Very short path, just use start and end
        TravelPath start, end;
        start.nodeId = from->id;
        start.toNodeId = to->id;
        start.nr = 0;
        start.mapId = from->mapId;
        start.x = from->x;
        start.y = from->y;
        start.z = from->z;
        
        end.nodeId = from->id;
        end.toNodeId = to->id;
        end.nr = 1;
        end.mapId = to->mapId;
        end.x = to->x;
        end.y = to->y;
        end.z = to->z;
        
        outPath.push_back(start);
        outPath.push_back(end);
        return true;
    }
    
    float dx = to->x - from->x;
    float dy = to->y - from->y;
    float dz = to->z - from->z;
    
    // Sample points along the path and validate terrain
    uint32 pointNr = 0;
    for (uint32 i = 0; i <= NUM_SAMPLES; ++i)
    {
        float t = static_cast<float>(i) / static_cast<float>(NUM_SAMPLES);
        float x = from->x + t * dx;
        float y = from->y + t * dy;
        float z = from->z + t * dz;
        
        // Get actual ground height
        float groundZ = map->GetHeight(x, y, z + 2.0f);
        if (groundZ != INVALID_HEIGHT)
        {
            z = groundZ;
        }
        
        TravelPath pathPoint;
        pathPoint.nodeId = from->id;
        pathPoint.toNodeId = to->id;
        pathPoint.nr = pointNr++;
        pathPoint.mapId = from->mapId;
        pathPoint.x = x;
        pathPoint.y = y;
        pathPoint.z = z;
        
        outPath.push_back(pathPoint);
    }
    
    // Validate we have at least 2 points
    if (outPath.size() < 2)
    {
        sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, 
            "TravelPathGenerator: Failed to generate valid terrain sampling path from node %u to %u", 
            from->id, to->id);
        return false;
    }
    
    return true;
}

void TravelPathGenerator::SimplifyPath(std::vector<TravelPath>& path, float tolerance)
{
    if (path.size() <= 2)
        return;
    
    // Ramer-Douglas-Peucker algorithm (proper implementation)
    std::vector<bool> keepPoint(path.size(), false);
    keepPoint[0] = true;
    keepPoint[path.size() - 1] = true;
    
    SimplifyPathRecursive(path, 0, path.size() - 1, tolerance * tolerance, keepPoint);
    
    // Build simplified path
    std::vector<TravelPath> simplified;
    for (size_t i = 0; i < path.size(); ++i)
    {
        if (keepPoint[i])
        {
            path[i].nr = static_cast<uint32>(simplified.size());
            simplified.push_back(path[i]);
        }
    }
    
    if (simplified.size() >= 2)
    {
        sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, 
            "TravelPathGenerator: Simplified path from %u to %u points", 
            static_cast<uint32>(path.size()), static_cast<uint32>(simplified.size()));
        
        path = std::move(simplified);
    }
}

void TravelPathGenerator::SimplifyPathRecursive(const std::vector<TravelPath>& path, 
                                                 size_t startIdx, size_t endIdx,
                                                 float toleranceSq, std::vector<bool>& keepPoint)
{
    if (endIdx <= startIdx + 1)
        return;
    
    // Find point with maximum distance from line segment
    float maxDistSq = 0.0f;
    size_t maxIndex = startIdx;
    
    const TravelPath& start = path[startIdx];
    const TravelPath& end = path[endIdx];
    
    float dx = end.x - start.x;
    float dy = end.y - start.y;
    float dz = end.z - start.z;
    float lineLenSq = dx * dx + dy * dy + dz * dz;
    
    for (size_t i = startIdx + 1; i < endIdx; ++i)
    {
        const TravelPath& curr = path[i];
        float distSq;
        
        if (lineLenSq < 0.0001f)
        {
            // Start and end are the same point
            float cdx = curr.x - start.x;
            float cdy = curr.y - start.y;
            float cdz = curr.z - start.z;
            distSq = cdx * cdx + cdy * cdy + cdz * cdz;
        }
        else
        {
            // Calculate perpendicular distance to line segment
            float cx = curr.x - start.x;
            float cy = curr.y - start.y;
            float cz = curr.z - start.z;
            
            float t = (cx * dx + cy * dy + cz * dz) / lineLenSq;
            t = std::max(0.0f, std::min(1.0f, t));
            
            float closestX = start.x + t * dx;
            float closestY = start.y + t * dy;
            float closestZ = start.z + t * dz;
            
            float distX = curr.x - closestX;
            float distY = curr.y - closestY;
            float distZ = curr.z - closestZ;
            distSq = distX * distX + distY * distY + distZ * distZ;
        }
        
        if (distSq > maxDistSq)
        {
            maxDistSq = distSq;
            maxIndex = i;
        }
    }
    
    // If max distance exceeds tolerance, keep this point and recurse
    if (maxDistSq > toleranceSq)
    {
        keepPoint[maxIndex] = true;
        SimplifyPathRecursive(path, startIdx, maxIndex, toleranceSq, keepPoint);
        SimplifyPathRecursive(path, maxIndex, endIdx, toleranceSq, keepPoint);
    }
}

void TravelPathGenerator::ExportPathsToSQL(std::ofstream& file)
{
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "TravelPathGenerator: Exporting paths to SQL...");
    
    file << "\n-- Travel Node Paths (Detailed waypoints)\n";
    file << "TRUNCATE TABLE ai_playerbot_travelnode_path;\n";
    
    for (const auto& path : m_generatedPaths)
    {
        file << "INSERT INTO ai_playerbot_travelnode_path "
             << "(node_id, to_node_id, nr, map_id, x, y, z) VALUES ("
             << path.nodeId << ", " << path.toNodeId << ", " << path.nr << ", "
             << path.mapId << ", " << path.x << ", " << path.y << ", " 
             << path.z << ");\n";
    }
    
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "TravelPathGenerator: Exported %u path points", 
             static_cast<uint32>(m_generatedPaths.size()));
}

float TravelPathGenerator::CalculateTotalDistance(const std::vector<TravelPath>& path) const
{
    if (path.size() < 2)
        return 0.0f;
    
    float totalDist = 0.0f;
    for (size_t i = 1; i < path.size(); ++i)
    {
        float dx = path[i].x - path[i-1].x;
        float dy = path[i].y - path[i-1].y;
        float dz = path[i].z - path[i-1].z;
        totalDist += std::sqrt(dx*dx + dy*dy + dz*dz);
    }
    return totalDist;
}

float TravelPathGenerator::CalculateSwimDistance(const std::vector<TravelPath>& path, uint32 mapId) const
{
    Map* map = sMapMgr.FindMap(mapId);
    if (!map || path.size() < 2)
        return 0.0f;
    
    const TerrainInfo* terrain = map->GetTerrain();
    if (!terrain)
        return 0.0f;
    
    float swimDist = 0.0f;
    for (size_t i = 1; i < path.size(); ++i)
    {
        // Check if this segment is underwater
        float waterLevel = terrain->GetWaterLevel(path[i].x, path[i].y, path[i].z);
        
        if (waterLevel != INVALID_HEIGHT_VALUE && path[i].z < waterLevel)
        {
            float dx = path[i].x - path[i-1].x;
            float dy = path[i].y - path[i-1].y;
            float dz = path[i].z - path[i-1].z;
            swimDist += std::sqrt(dx*dx + dy*dy + dz*dz);
        }
    }
    return swimDist;
}

std::vector<TravelPath> TravelPathGenerator::GetPathsBetweenNodes(uint32 fromNodeId, uint32 toNodeId) const
{
    std::vector<TravelPath> result;
    
    for (const auto& path : m_generatedPaths)
    {
        if (path.nodeId == fromNodeId && path.toNodeId == toNodeId)
        {
            result.push_back(path);
        }
    }
    
    return result;
}
