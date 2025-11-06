#ifndef _TRAVEL_DESTINATION_H
#define _TRAVEL_DESTINATION_H

#include "Common.h"
#include "WorldBotTravelSystem.h"

class Player;

enum TravelDestinationType
{
    TRAVEL_DESTINATION_NONE = 0,
    TRAVEL_DESTINATION_EXPLORE_LOCATION = 1,
    TRAVEL_DESTINATION_QUEST_OBJECTIVE = 2,
    TRAVEL_DESTINATION_QUEST_GIVER = 3,
    TRAVEL_DESTINATION_GRIND_SPOT = 4,
    TRAVEL_DESTINATION_VENDOR = 5,
    TRAVEL_DESTINATION_REPAIR = 6,
    TRAVEL_DESTINATION_TRAINER = 7,
    TRAVEL_DESTINATION_FLIGHT_MASTER = 8,
    TRAVEL_DESTINATION_INN = 9,
    TRAVEL_DESTINATION_CITY = 10,
    TRAVEL_DESTINATION_DUNGEON_ENTRANCE = 11,
    TRAVEL_DESTINATION_CORPSE = 12,
    TRAVEL_DESTINATION_RANDOM_ROAM = 13
};

// Simple position wrapper
struct WorldPosition
{
    uint32 mapId;
    float x, y, z;
    
    WorldPosition() : mapId(0), x(0.0f), y(0.0f), z(0.0f) {}
    WorldPosition(uint32 map, float px, float py, float pz)
        : mapId(map), x(px), y(py), z(pz) {}
    
    float distance(const WorldPosition& other) const
    {
        if (mapId != other.mapId)
            return std::numeric_limits<float>::max();
        
        float dx = x - other.x;
        float dy = y - other.y;
        float dz = z - other.z;
        return std::sqrt(dx*dx + dy*dy + dz*dz);
    }
    
    bool isValid() const { return mapId > 0; }
};

class TravelDestination : public WorldPosition
{
public:
    TravelDestination(float x, float y, float z, uint32 mapId, TravelDestinationType type = TRAVEL_DESTINATION_NONE)
        : WorldPosition(mapId, x, y, z), m_type(type), m_minLevel(1), m_maxLevel(60),
          m_expire(0), m_questId(0), m_creatureEntry(0) {}
    
    virtual ~TravelDestination() {}
    
    // Core functions
    virtual float GetPriority(Player* bot) const;
    virtual bool IsValid(Player* bot) const;
    virtual std::string GetTitle() const;
    
    // Getters
    TravelDestinationType GetDestinationType() const { return m_type; }
    uint32 GetMinLevel() const { return m_minLevel; }
    uint32 GetMaxLevel() const { return m_maxLevel; }
    uint32 GetQuestId() const { return m_questId; }
    
    // Setters
    void SetLevelRange(uint32 minLvl, uint32 maxLvl) { m_minLevel = minLvl; m_maxLevel = maxLvl; }
    void SetExpiration(time_t expire) { m_expire = expire; }
    void SetQuestId(uint32 questId) { m_questId = questId; }
    void SetCreatureEntry(uint32 entry) { m_creatureEntry = entry; }
    
protected:
    TravelDestinationType m_type;
    uint32 m_minLevel;
    uint32 m_maxLevel;
    time_t m_expire;  // When this destination becomes invalid
    uint32 m_questId; // Associated quest (if any)
    uint32 m_creatureEntry; // Associated creature (if any)
};

// Specific destination types
class QuestDestination : public TravelDestination
{
public:
    QuestDestination(uint32 questId, float x, float y, float z, uint32 mapId, bool isObjective)
        : TravelDestination(x, y, z, mapId, isObjective ? TRAVEL_DESTINATION_QUEST_OBJECTIVE : TRAVEL_DESTINATION_QUEST_GIVER)
    {
        m_questId = questId;
    }
    
    virtual float GetPriority(Player* bot) const override;
    virtual bool IsValid(Player* bot) const override;
    virtual std::string GetTitle() const override;
};

class GrindSpotDestination : public TravelDestination
{
public:
    GrindSpotDestination(float x, float y, float z, uint32 mapId, uint32 minLvl, uint32 maxLvl)
        : TravelDestination(x, y, z, mapId, TRAVEL_DESTINATION_GRIND_SPOT)
    {
        SetLevelRange(minLvl, maxLvl);
    }
    
    virtual float GetPriority(Player* bot) const override;
    virtual bool IsValid(Player* bot) const override;
};

class ExploreDestination : public TravelDestination
{
public:
    ExploreDestination(float x, float y, float z, uint32 mapId, uint32 areaId)
        : TravelDestination(x, y, z, mapId, TRAVEL_DESTINATION_EXPLORE_LOCATION),
          m_areaId(areaId) {}
    
    virtual float GetPriority(Player* bot) const override;
    virtual bool IsValid(Player* bot) const override;
    
private:
    uint32 m_areaId;
};

#endif // _TRAVEL_DESTINATION_H
