#ifndef MANGOS_WorldBotWaypoints_H
#define MANGOS_WorldBotWaypoints_H

#include "SharedDefines.h"
#include "BattleBotWaypoints.h"
#include "ObjectMgr.h"

class WorldBotAI;
typedef void(*WorldBotWaypointFunc) (WorldBotAI* pAI);

struct WorldBotWaypoint
{
    WorldBotWaypoint(float x_, float y_, float z_, uint32 map_, WorldBotWaypointFunc func_, uint32 reverse_, uint32 chance_, uint32 faction_, uint32 minlevel_, std::string comment_) :
        x(x_), y(y_), z(z_), pFunc(func_), reverse(reverse_), chance(chance_), faction(faction_), minlevel(minlevel_), comment(comment_) {};
    float x = 0.0f;
    float y = 0.0f;
    float z = 0.0f;
    uint32 map = 0;
    uint32 reverse = 0;
    uint32 chance = 100;
    uint32 faction = 0;
    uint32 minlevel = 1;
    std::string comment = "";

    WorldBotWaypointFunc pFunc = nullptr;
};

extern std::vector<RecordedMovementPacket> vAllianceGraveyardJumpPath_;
extern std::vector<RecordedMovementPacket> vHordeGraveyardJumpPath_;

typedef std::vector<WorldBotWaypoint> WorldBotPath;

extern std::vector<WorldBotPath*> vPaths_Map_Eastern_Kingdoms;
extern std::vector<WorldBotPath*> vPaths_Map_Kalimdor;
extern std::vector<WorldBotPath*> vPaths_Map_Warsong_Gulch;
extern std::vector<WorldBotPath*> vPaths_Map_Arathi_Basin;
extern std::vector<WorldBotPath*> vPaths_Map_Alterac_Valley;
extern std::vector<WorldBotPath*> vPaths_NoReverseAllowed;

/*
struct DBPathXYZ {
    DBPathXYZ(uint32 count, float x, float y, float z, WorldBotWaypointFunc func)
        : x(x), y(y), z(z) {}
    uint32 count = 0;
    float x, y, z = 0.f;
    WorldBotWaypointFunc pFunc = nullptr;
};

struct DBWaypoint {
    DBWaypoint(float x, float y, float z, float o)
        : x(x), y(y), z(z), o(o) {}
    float x, y, z, o;
    std::vector<DBPathXYZ> shards;

    ObjectGuid relayGuid;
};*/

class Waypoints
{
public:
    float x, y, z;
    uint32 guid, id, area, zone, map, reverse, chance, faction, minlevel;
    std::string func, comment = "";
};

#endif
