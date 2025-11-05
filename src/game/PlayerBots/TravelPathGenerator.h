#ifndef _TRAVEL_PATH_GENERATOR_H
#define _TRAVEL_PATH_GENERATOR_H

#include "TravelNodeGenerator.h"
#include <vector>
#include <fstream>

class Map;

class TravelPathGenerator
{
public:
    explicit TravelPathGenerator(TravelNodeGenerator* nodeGen);
    ~TravelPathGenerator();
    
    // Generate detailed paths between linked nodes
    void GenerateDetailedPaths();
    
    // Generate path for a specific link
    bool GeneratePathForLink(uint32 fromNodeId, uint32 toNodeId, TravelNodePathType linkType);
    
    // Export paths to database
    void ExportPathsToSQL(std::ofstream& file);
    
    // Get generated paths for distance calculation
    const std::vector<TravelPath>& GetGeneratedPaths() const { return m_generatedPaths; }
    std::vector<TravelPath> GetPathsBetweenNodes(uint32 fromNodeId, uint32 toNodeId) const;
    
private:
    TravelNodeGenerator* m_nodeGenerator;
    std::vector<TravelPath> m_generatedPaths;
    
    // Main path calculation method - tries PathFinder first, falls back to terrain sampling
    bool CalculateWalkingPath(const NodeCandidate* from, const NodeCandidate* to, 
                             std::vector<TravelPath>& outPath);
    
    // Use actual PathFinder with temporary unit for accurate navigation
    bool UsePathFinderForPath(const NodeCandidate* from, const NodeCandidate* to,
                             Map* map, std::vector<TravelPath>& outPath);
    
    // Fallback terrain sampling method (less accurate but always works)
    bool UseTerrainSamplingPath(const NodeCandidate* from, const NodeCandidate* to,
                               Map* map, float straightDist, std::vector<TravelPath>& outPath);
    
    // Generate paths longer than PathFinder's practical limit (~200 yards)
    bool GenerateLongDistancePath(const NodeCandidate* from, const NodeCandidate* to,
                                  float totalDistance, std::vector<TravelPath>& outPath);
    
    // Simplify paths using Ramer-Douglas-Peucker algorithm
    void SimplifyPath(std::vector<TravelPath>& path, float tolerance = 2.0f);
    
    // Recursive helper for path simplification
    void SimplifyPathRecursive(const std::vector<TravelPath>& path, 
                               size_t startIdx, size_t endIdx,
                               float toleranceSq, std::vector<bool>& keepPoint);
    
    // Calculate actual distances
    float CalculateTotalDistance(const std::vector<TravelPath>& path) const;
    float CalculateSwimDistance(const std::vector<TravelPath>& path, uint32 mapId) const;
};

#endif // _TRAVEL_PATH_GENERATOR_H
