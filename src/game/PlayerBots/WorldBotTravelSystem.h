#ifndef MANGOS_WorldBotTravelSystem_H
#define MANGOS_WorldBotTravelSystem_H

#include <vector>
#include <map>
#include <cmath>
#include <unordered_map>
#include <vector>
#include <random>
#include <algorithm>
#include <type_traits>
#include "SharedDefines.h"
#include "Platform/Define.h"
#include "Player.h"

enum class TravelNodePathType : uint8
{
    None = 0,
    Walk = 1,
    AreaTrigger = 2,
    Transport = 3,
    FlightPath = 4,
    TeleportSpell = 5,
    StaticPortal = 6
};

struct TravelNode
{
    uint32 id;
    std::string name;
    uint32 mapId;
    float x, y, z;
    bool linked;
    uint32 objectId = 0; // For storing portal/area trigger IDs
};

struct TravelNodeLink
{
    uint32 nodeId;
    uint32 toNodeId;
    uint32 type;
    uint32 object;
    float distance;
    float swimDistance;
    uint32 extraCost;
    bool calculated;
    uint32 maxCreature[3];
};

struct TravelPath
{
    uint32 nodeId;
    uint32 toNodeId;
    uint32 nr;
    uint32 mapId;
    float x, y, z;
};

class WorldBotTravelSystem
{
public:
    static WorldBotTravelSystem* instance()
    {
        static WorldBotTravelSystem instance;
        return &instance;
    }

    // Loaders
    void LoadTravelNodes();
    void LoadTravelNodeLinks();
    void LoadTravelPaths();

    // Functions
    TravelNode const* GetNearestNode(float x, float y, float z, uint32 mapId) const;
    const TravelPath* GetPathBetweenNodes(uint32 fromNodeId, uint32 toNodeId) const;
    std::vector<uint32> GetPathToPosition(float x, float y, float z, uint32 mapId) const;
    uint32 GetNearestNodeId(float x, float y, float z, uint32 mapId) const;
    bool CanReachByWalking(uint32 startNodeId, uint32 endNodeId) const;
    std::vector<TravelPath> FindPath(uint32 startNodeId, uint32 endNodeId) const;
    uint32 GetRandomNodeId(uint32 mapId, uint32 startNodeId);

    const TravelNode* GetNode(uint32 nodeId) const
    {
        auto it = m_travelNodes.find(nodeId);
        return it != m_travelNodes.end() ? &it->second : nullptr;
    }

    std::pair<std::multimap<uint32, TravelNodeLink>::const_iterator, std::multimap<uint32, TravelNodeLink>::const_iterator>
    GetNodeLinks(uint32 nodeId) const
    {
        return m_travelNodeLinks.equal_range(nodeId);
    }

    bool ResumePath(Player* player, std::vector<TravelPath>& currentPath, size_t& currentPathIndex, bool isSpecificDestinationPath, bool isCorpseRun);
    const std::map<uint32, TravelNode>& GetAllNodes() const
    {
        return m_travelNodes;
    }
    std::pair<std::multimap<std::pair<uint32, uint32>, TravelPath>::const_iterator, std::multimap<std::pair<uint32, uint32>, TravelPath>::const_iterator> GetAllPathsFromNode(uint32 nodeId) const;

    // Path and Node visuals
    void ShowCurrentPath(Player* me, const std::vector<TravelPath>& currentPath, size_t currentPathIndex, uint32 currentNodeId);
    void ShowAllPathsAndNodes(Player* me);
    void ClearPathVisuals(Player* me);

    // Primary template for GetDistance3D
    template<class A, class B>
    static float GetDistance3D(A const& from, B const& to)
    {
        float dx = from.x - to.x;
        float dy = from.y - to.y;
        float dz = from.z - to.z;
        float dist = sqrt((dx * dx) + (dy * dy) + (dz * dz));
        return (dist > 0 ? dist : 0);
    }

    // Specialization for Player
    template<class B>
    static float GetDistance3D(Player const& from, B const& to)
    {
        float dx = from.GetPositionX() - to.x;
        float dy = from.GetPositionY() - to.y;
        float dz = from.GetPositionZ() - to.z;
        float dist = sqrt((dx * dx) + (dy * dy) + (dz * dz));
        return (dist > 0 ? dist : 0);
    }

    // Specialization for when both are Players
    static float GetDistance3D(Player const& from, Player const& to)
    {
        float dx = from.GetPositionX() - to.GetPositionX();
        float dy = from.GetPositionY() - to.GetPositionY();
        float dz = from.GetPositionZ() - to.GetPositionZ();
        float dist = sqrt((dx * dx) + (dy * dy) + (dz * dz));
        return (dist > 0 ? dist : 0);
    }

private:
    WorldBotTravelSystem(); // Declaration only
    ~WorldBotTravelSystem();

    // Prevent copying
    WorldBotTravelSystem(const WorldBotTravelSystem&) = delete;
    WorldBotTravelSystem& operator=(const WorldBotTravelSystem&) = delete;

    std::map<uint32, TravelNode> m_travelNodes;
    std::multimap<uint32, TravelNodeLink> m_travelNodeLinks;
    std::multimap<std::pair<uint32, uint32>, TravelPath> m_travelPaths;

    std::unordered_map<uint32, std::vector<uint32>> m_mapNodeIds;
    std::unordered_map<uint32, std::vector<uint32>> m_nodeConnections;
    mutable std::mt19937 m_randomGenerator;

    struct NodeDistance
    {
        uint32 nodeId;
        float distance;

        NodeDistance(uint32 id, float dist) : nodeId(id), distance(dist) {}

        bool operator>(const NodeDistance& other) const
        {
            return distance > other.distance;
        }
    };

    // Path and Node visuals
    std::map<ObjectGuid, std::vector<ObjectGuid>> m_pathVisuals;
};

// Define a convenient macro
#define sWorldBotTravelSystem (*WorldBotTravelSystem::instance())

#endif

