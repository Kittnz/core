#ifndef WORLD_BOT_TRAVEL_EDITOR_H
#define WORLD_BOT_TRAVEL_EDITOR_H

#include "WorldBotTravelSystem.h"
#include "Player.h"
#include <fstream>
#include <sstream>
#include <ctime>

class WorldBotTravelEditor
{
public:
    static WorldBotTravelEditor* instance();

    bool AddNode(Player* player, float x, float y, float z, uint32 mapId, const std::string& name, uint32 type);
    bool EditNode(uint32 nodeId, const std::string& property, const std::string& value);
    bool DeleteNode(uint32 nodeId);
    bool AddLink(uint32 fromNodeId, uint32 toNodeId, uint32 type, float distance, float swimDistance, uint32 extraCost);
    bool EditLink(uint32 fromNodeId, uint32 toNodeId, const std::string& property, const std::string& value);
    bool DeleteLink(uint32 fromNodeId, uint32 toNodeId);
    std::vector<TravelPath> GeneratePath(Player* player, uint32 startNodeId, uint32 endNodeId);
    bool SaveGeneratedPath(uint32 startNodeId, uint32 endNodeId, const std::vector<TravelPath>& path);
    void CheckPath(Player* player);
    void CheckAllTravelPaths();
    
    // New generator functions
    bool GenerateTravelNodes(Player* player, const std::string& args);
    bool ReloadTravelSystem(Player* player);

private:
    WorldBotTravelEditor() {}
    ~WorldBotTravelEditor() {}
    WorldBotTravelEditor(const WorldBotTravelEditor&) = delete;
    WorldBotTravelEditor& operator=(const WorldBotTravelEditor&) = delete;
};

#define sWorldBotTravelEditor WorldBotTravelEditor::instance()

#endif // WORLD_BOT_TRAVEL_EDITOR_H
