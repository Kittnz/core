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

// Area type classification for smart bot behavior
enum TravelNodeAreaType
{
    AREA_TYPE_UNKNOWN = 0,
    AREA_TYPE_WILDERNESS = 1,     // Open world, dangerous
    AREA_TYPE_CITY = 2,           // Major city (safe, vendors, banks)
    AREA_TYPE_INN = 3,            // Inn/tavern (rest area)
    AREA_TYPE_SANCTUARY = 4,      // PvP-free sanctuary
    AREA_TYPE_DUNGEON = 5,        // Instance/dungeon
    AREA_TYPE_ARENA = 6           // Arena/battleground
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
    
    // Area-based information (NEW)
    uint32 areaId;           // AreaTable ID from DBC
    uint32 zoneId;           // Zone ID
    uint32 areaLevel;        // Recommended level for this area (0 if unknown)
    uint32 areaFlags;        // Area flags (city, sanctuary, contested, etc.)
    TravelNodeAreaType areaType; // Area type for classification
    
    NodeCandidate() : id(0), mapId(0), x(0), y(0), z(0), priority(PRIORITY_MEDIUM), 
                     validated(false), objectId(0), areaId(0), zoneId(0), 
                     areaLevel(0), areaFlags(0), areaType(AREA_TYPE_UNKNOWN) {}
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
    
    // NEW: Quest-based generation
    void GenerateNodesFromQuests();           // Quest giver and objective locations
    void GenerateNodesFromGrindSpots();       // Creature spawn density areas
    void GenerateNodesFromResources();        // Mining/herb/skinning spots
    void GenerateNodesFromDungeonEntrances(); // Instance portals
    
    // Map-specific generation helpers
    void GenerateNodesForAllMaps(float gridSize = 50.0f);
    void GenerateNodesForMap(uint32 mapId, float gridSize = 50.0f);
    
    // Phase 2: Validate and filter nodes
    void ValidateNodeTerrain();
    void FilterDuplicateNodes(float minDistance = 15.0f);
    void PrioritizeNodes();
    
    // Phase 3: Generate connections
    void GenerateWalkingPaths();
    
    // NEW: Use creature spawns as waypoints to bridge long-distance gaps
    void GenerateCreatureBasedWaypoints();
    std::vector<uint32> FindCreatureWaypointsBetween(uint32 mapId, 
                                                      float x1, float y1, float z1,
                                                      float x2, float y2, float z2,
                                                      float distance);
    
    // Phase 4: Optimize and export
    void OptimizeNodeNetwork();
    void ExportToSQL(std::ofstream& file);
    void CalculateLinkDistances(TravelPathGenerator* pathGen);
    
    // CMaNGOS-style link optimization (NEW)
    bool IsUselessLink(uint32 fromNodeId, uint32 toNodeId) const;
    void RemoveUselessLinks();
    
    // CMaNGOS-style connectivity improvements (NEW)
    void MarkHubNodes();           // Identify major cities and quest hubs as critical nodes
    void ConnectHubNodes();        // Ensure major hubs are well-connected with long-distance paths
    void EnsureNodeConnectivity(); // Fix isolated nodes by connecting to nearest connected node
    
    // Utilities
    bool IsPositionWalkable(uint32 mapId, float x, float y, float z);
    bool CanPathBetween(uint32 mapId, float x1, float y1, float z1, float x2, float y2, float z2);
    float CalculatePathDistance(uint32 mapId, float x1, float y1, float z1, float x2, float y2, float z2);
    
    // Area and level information
    uint32 GetAreaLevel(uint32 areaId) const;
    bool IsAreaHostile(uint32 areaId, Team faction) const;
    
    // Advanced cost calculation (for player-aware pathfinding)
    float GetLinkCost(const TravelNodeLink& link, Player* bot = nullptr) const;
    bool IsLinkSafeForLevel(const TravelNodeLink& link, uint32 level) const;
    float GetTerrainDifficultyMultiplier(const TravelNodeLink& link) const;
    
    // City and rest area detection (POINT 10 - IMPLEMENTED)
    bool IsInCity(uint32 mapId, float x, float y, float z) const;
    bool IsRestArea(uint32 mapId, float x, float y, float z) const;
    bool IsInSanctuary(uint32 mapId, float x, float y, float z) const;
    TravelNodeAreaType GetAreaType(uint32 mapId, float x, float y, float z) const;
    bool IsSafeLogoutLocation(const NodeCandidate& node) const;
    void MarkSafeLogoutNodes();
    uint32 GetNearestSafeLogoutNode(uint32 mapId, float x, float y, float z) const;
    bool CanRestInArea(uint32 areaId) const;
    std::string GetAreaName(uint32 mapId, float x, float y, float z) const;
    
    // Path smoothing/waypoint reduction for optimization (POINT 9 - IMPLEMENTED)
    void SmoothPath(std::vector<TravelPath>& path, float maxDistance = 50.0f);
    
    // TODO [POINT 9]: Node discovery system for progressive unlocking
    // void MarkNodeAsDiscovered(uint32 nodeId, Player* bot);
    // bool IsNodeDiscovered(uint32 nodeId, Player* bot) const;
    // Allows nodes to be "unlocked" as bots explore the world.
    
    // Statistics
    void PrintGenerationStats();
    uint32 GetNodeCount() const { return static_cast<uint32>(m_nodes.size()); }
    uint32 GetLinkCount() const { return static_cast<uint32>(m_links.size()); }

    // Accessors
    const std::vector<NodeCandidate>& GetNodes() const { return m_nodes; }
    const std::vector<TravelNodeLink>& GetLinks() const { return m_links; }
    const NodeCandidate* GetNodeById(uint32 nodeId) const;
    
    // Node creation helper (made public for intermediate waypoint generation)
    uint32 FindOrCreateNodeAt(float x, float y, float z, uint32 mapId);
    void AddLinkBetweenNodes(uint32 fromNode, uint32 toNode, TravelNodePathType type, uint32 object = 0);

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
    
    // Terrain validation helpers
    bool IsInWater(uint32 mapId, float x, float y, float z) const;
    bool IsTerrainValid(uint32 mapId, float x, float y, float z) const;
    
    // Creature danger assessment
    void CalculateMaxCreaturesAlongPath(Map* map, const std::vector<TravelPath>& pathPoints, uint32 maxCreatureLevels[3]);
    
    // Map configuration
    void GetMapBounds(uint32 mapId, float& minX, float& maxX, float& minY, float& maxY);
};

#endif // _TRAVEL_NODE_GENERATOR_H
