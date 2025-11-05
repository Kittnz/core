#ifndef _TRAVEL_NODE_GENERATOR_H
#define _TRAVEL_NODE_GENERATOR_H

#include "Common.h"
#include "WorldBotTravelSystem.h"
#include <vector>
#include <unordered_set>
#include <unordered_map>
#include <fstream>

// Forward declare NodePriority BEFORE using it
enum NodePriority
{
    PRIORITY_CRITICAL = 0,  // Cities, capitals
    PRIORITY_HIGH = 1,      // Quest hubs, flight masters
    PRIORITY_MEDIUM = 2,    // Villages, graveyards
    PRIORITY_LOW = 3        // Random exploration points
};

struct NodeCandidate
{
    uint32 id;
    uint32 mapId;
    float x, y, z;
    std::string name;
    NodePriority priority;
    bool validated;
    uint32 objectId;  // For storing associated object IDs (trigger, transport, etc.)
    
    NodeCandidate() : id(0), mapId(0), x(0), y(0), z(0), priority(PRIORITY_MEDIUM), 
                     validated(false), objectId(0) {}
};

class TravelPathGenerator;

class TravelNodeGenerator
{
public:
    TravelNodeGenerator();
    ~TravelNodeGenerator();

    // Phase 1: Generate candidate nodes
    void GenerateNodesFromGameObjects();
    void GenerateNodesFromCreatures();
    void GenerateNodesFromAreaTriggers();
    void GenerateFlightPaths();
    void GenerateTransportLinks();
    void GenerateNodesFromGridSampling(uint32 mapId, float gridSize = 50.0f);
    
    // Phase 2: Validate and filter nodes
    void ValidateNodeTerrain();
    void FilterDuplicateNodes(float minDistance = 15.0f);
    void PrioritizeNodes();
    
    // Phase 3: Generate connections
    void GenerateWalkingPaths();
    
    // Phase 4: Optimize and export
    void OptimizeNodeNetwork();
    void ExportToSQL(std::ofstream& file);
    void CalculateLinkDistances(TravelPathGenerator* pathGen);
    
    // Utilities
    bool IsPositionWalkable(uint32 mapId, float x, float y, float z);
    bool CanPathBetween(uint32 mapId, float x1, float y1, float z1, float x2, float y2, float z2);
    float CalculatePathDistance(uint32 mapId, float x1, float y1, float z1, float x2, float y2, float z2);
    
    // Statistics
    void PrintGenerationStats();
    uint32 GetNodeCount() const { return static_cast<uint32>(m_nodes.size()); }
    uint32 GetLinkCount() const { return static_cast<uint32>(m_links.size()); }

    // Accessors
    const std::vector<NodeCandidate>& GetNodes() const { return m_nodes; }
    const std::vector<TravelNodeLink>& GetLinks() const { return m_links; }
    const NodeCandidate* GetNodeById(uint32 nodeId) const;

private:
    std::vector<NodeCandidate> m_nodes;
    std::vector<TravelNodeLink> m_links;
    std::unordered_set<uint64> m_processedPositions;
    
    uint32 m_nextNodeId;
    uint32 m_nodesGenerated;
    uint32 m_nodesValidated;
    uint32 m_linksGenerated;
    
    // Helper methods
    void AddNodeCandidate(float x, float y, float z, uint32 mapId, const std::string& name, NodePriority priority);
    bool IsNodeTooClose(float x, float y, float z, uint32 mapId, float minDistance) const;
    uint64 MakePositionHash(float x, float y, uint32 mapId) const;
    uint32 FindOrCreateNodeAt(float x, float y, float z, uint32 mapId);
    
    // Link creation
    void AddLinkBetweenNodes(uint32 fromNode, uint32 toNode, TravelNodePathType type, uint32 object = 0);
};

#endif // _TRAVEL_NODE_GENERATOR_H
