#ifndef MANGOS_MapBotWaypoints_H
#define MANGOS_MapBotWaypoints_H

#include "SharedDefines.h"
#include "BattleBotWaypoints.h"
#include "ObjectMgr.h"

class MapBotAI;
typedef void(*MapBotWaypointFunc) (MapBotAI* pAI);

struct MapBotWaypoint
{
    MapBotWaypoint(float x_, float y_, float z_, uint32 map, uint32 reverse, MapBotWaypointFunc func) :
        x(x_), y(y_), z(z_), pFunc(func) {};
    float x = 0.0f;
    float y = 0.0f;
    float z = 0.0f;
    uint32 map = 0;
    uint32 reverse = 0;
    MapBotWaypointFunc pFunc = nullptr;
};

extern std::vector<RecordedMovementPacket> vAllianceGraveyardJumpPath_;
extern std::vector<RecordedMovementPacket> vHordeGraveyardJumpPath_;

typedef std::vector<MapBotWaypoint> MapBotPath;

extern std::vector<MapBotPath*> vPaths_Map_Eastern_Kingdoms;
extern std::vector<MapBotPath*> vPaths_Map_Kalimdor;
extern std::vector<MapBotPath*> vPaths_Map_Warsong_Gulch;
extern std::vector<MapBotPath*> vPaths_Map_Arathi_Basin;
extern std::vector<MapBotPath*> vPaths_Map_Alterac_Valley;
extern std::vector<MapBotPath*> vPaths_NoReverseAllowed;

struct DBPathXYZ {
    DBPathXYZ(uint32 count, float x, float y, float z, MapBotWaypointFunc func)
        : x(x), y(y), z(z) {}
    uint32 count = 0;
    float x, y, z = 0.f;
    MapBotWaypointFunc pFunc = nullptr;
};

struct DBWaypoint {
    DBWaypoint(float x, float y, float z, float o)
        : x(x), y(y), z(z), o(o) {}
    float x, y, z, o;
    std::vector<DBPathXYZ> shards;

    ObjectGuid relayGuid;
};

class Waypoints
{
public:
    float x, y, z;
    uint32 guid, id, area, zone, map, reverse;
    std::string func, comments = "";
};

#endif
