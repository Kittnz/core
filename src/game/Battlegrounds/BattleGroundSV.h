#ifndef __BATTLEGROUNDSV_H
#define __BATTLEGROUNDSV_H

#include "BattleGround.h"

enum BG_SV_BattlegroundNodes
{
    BG_SV_HUMAN_TOWER = 0,
    BG_SV_ORC_TOWER = 1,
    BG_SV_HERALD_POINT = 2,

    BG_SV_DYNAMIC_NODES_COUNT = 3,                    // dynamic nodes that can be captured
};

enum BG_SV_ObjectTypes
{
    BG_SV_OBJECTID_BANNER_0 = 180087,       // Neutral Banner
    BG_SV_OBJECTID_BANNER_A = 180058,
    BG_SV_OBJECTID_BANNER_CONT_A = 180059,
    BG_SV_OBJECTID_BANNER_H = 180060,
    BG_SV_OBJECTID_BANNER_CONT_H = 180061,
};

enum BG_SV_BuffObjects
{
    BG_SV_OBJECTID_SPEEDBUFF = 179871,
    BG_SV_OBJECTID_REGENBUFF = 179904,
    BG_SV_OBJECTID_BERSERKERBUFF = 179905,
    BG_SV_OBJECTID_CHEST = 179311,
};

enum BG_SV_ObjectType
{
    // banners[5] * 3
    BG_SV_OBJECT_BANNER_NEUTRAL = 0,
    BG_SV_OBJECT_BANNER_CONT_A  = 1,
    BG_SV_OBJECT_BANNER_CONT_H  = 2,
    BG_SV_OBJECT_BANNER_ALLY    = 3,
    BG_SV_OBJECT_BANNER_HORDE   = 4,
    // buffs[3] * 6
    BG_SV_OBJECT_SPEEDBUFF      = 15,
    BG_SV_OBJECT_REGENBUFF      = 16,
    BG_SV_OBJECT_BERSERKBUFF    = 17,
    // chest * 6
    BG_SV_OBJECT_CHEST          = 33,
    // 2 gates possible
    BG_SV_OBJECT_MAX            = 39
};

enum BG_SV_CreatureType
{
    BG_SV_CREATURE_SPIRITGUIDE_A   = 0,
    BG_SV_CREATURE_SPIRITGUIDE_H   = 1,
    BG_SV_CREATURE_HERALD          = 2,
    BG_SV_CREATURE_DRAGON          = 3,
    BG_SV_CREATURE_HUMAN_LEADER    = 4,
    BG_SV_CREATURE_ORC_LEADER      = 5,
    BG_SV_CREATURE_TOWER_GUARDS_A  = 6,
    BG_SV_CREATURE_TOWER_GUARDS_H  = 11,
    BG_SV_CREATURE_LEADER_GUARDS_A = 16,
    BG_SV_CREATURE_LEADER_GUARDS_H = 22,
    BG_SV_CREATURE_HUMAN_ARMY      = 28,
    BG_SV_CREATURE_ORC_ARMY        = 32,
    BG_SV_CREATURE_MAX             = 36
};

enum BG_SV_Timers
{
    BG_SV_FLAG_CAPTURING_TIME = 60000
};

enum BG_SV_NodeStatus
{
    BG_SV_NODE_TYPE_NEUTRAL = 0,
    BG_SV_NODE_TYPE_CONTESTED = 1,
    BG_SV_NODE_STATUS_ALLY_CONTESTED = 1,
    BG_SV_NODE_STATUS_HORDE_CONTESTED = 2,
    BG_SV_NODE_TYPE_OCCUPIED = 3,
    BG_SV_NODE_STATUS_ALLY_OCCUPIED = 3,
    BG_SV_NODE_STATUS_HORDE_OCCUPIED = 4
};

enum BG_SV_NPC
{
    NPC_HERALD = 13760,

    NPC_MARSHAL_GREYWALL = 93000,
    NPC_HUMAN_FOOTMAN = 93001,
    NPC_HUMAN_ARCHER = 93002,
    NPC_HUMAN_CONJURER = 93003,
    NPC_HUMAN_CLERIC = 93004,

    NPC_WARLORD_BLACKSKULL = 93005,
    NPC_ORC_GRUNT = 93006,
    NPC_ORC_SPEARMAN = 93007,
    NPC_ORC_NECROLYTE = 93008,
    NPC_ORC_WARLOCK = 93009
};

enum BG_SV_Sounds
{
    BG_SV_SOUND_NODE_CLAIMED = 8192,
    BG_SV_SOUND_NODE_CAPTURED_ALLIANCE = 8173,
    BG_SV_SOUND_NODE_CAPTURED_HORDE = 8213,
    BG_SV_SOUND_NODE_ASSAULTED_ALLIANCE = 8212,
    BG_SV_SOUND_NODE_ASSAULTED_HORDE = 8174,
};

enum BG_SV_Locations
{
    SV_BASE_HUMAN = 700,
    SV_BASE_ORC = 701,
    SV_GRAVEYARD_HUMAN = 702,
    SV_GRAVEYARD_ORC = 703,
};

Position const BG_SV_NodePositions[BG_SV_DYNAMIC_NODES_COUNT] =
{
    {1661.94f, 307.334f, 143.662f, 1.798f},         // human tower
    {1013.34f, 249.37f, 117.43f, 4.76f},            // orc tower
    {1315.50f, 266.75f, 75.96f, 4.8f},              // herald point
};

const uint8 BG_SV_CaptureNodesSparkTicks[3] = { 0, 1, 2 };

Position const BG_SV_BuffPositions[6] =
{
    {1632.22f, 143.54f, 103.7f, 0.79f},  // tree
    {1356.95f, -117.16f, 102.5f, 1.19f}, // mine
    {1240.48f, 178.16f, 66.6f, 3.98f},   // stables
    {1077.14f, 412.6f, 92.7f, 5.38f},    // well
    {1324.09f, 578.5f, 104.2f, 3.95f},   // mine 2
    {1444.28f, 306.99f, 70.9f, 0.23f},   // wind
};

Position const BG_SV_HeraldPos = { 1318.8f, 255.87f, 75.6f, 1.68f };

Position const BG_SV_SpiritGuidePos[2] =
{
    {1697.1f, 504.9f, 122.9f, 0.7f},                 // human graveyard
    {926.7f, 77.4f, 129.7f, 0.5f}                    // orc graveyard
};

Position const BG_SV_TowerGuardsPos[2][5] =
{
    {
        {1683.88f, 310.95f, 108.7f, 0.02f},
        {1683.14f, 321.88f, 108.7f, 0.07f},
        {1658.05f, 322.5f, 143.9f, 1.77f},
        {1652.53f, 312.7f, 143.9f, 3.4f},
        {1667.07f, 316.8f, 143.9f, 0.18f}
    },
    {
        {1003.6f, 250.1f, 96.0f, 1.7f},
        {1011.9f, 251.16f, 96.0f, 1.7f},
        {1015.3f, 241.0f, 111.0f, 4.8f},
        {1012.47f, 257.9f, 117.5f, 1.6f},
        {1014.05f, 240.2f, 117.5f, 4.8f}
    }
};

Position const BG_SV_LeaderPos[2]
{
    {1673.8f, 423.3f, 114.9f, 4.66f},
    {968.35f, 175.64f, 100.5f, 0.55f},
};

struct NPCData
{
    uint32 entry = 0;
    float x = 0.0f;
    float y = 0.0f;
    float z = 0.0f;
    float o = 0.0f;
};

NPCData const BG_SV_LeaderGuardsPos[2][6] =
{
    // footman, conjurer, cleric
    {
        {93001, 1678.05f, 422.08f, 115.0f, 4.66f},
        {93001, 1669.69f, 422.52f, 115.0f, 4.66f},
        {93003, 1679.98f, 424.64f, 115.0f, 4.66f},
        {93003, 1668.3f, 425.0f, 115.0f, 4.66f},
        {93004, 1676.1f, 424.46f, 115.0f, 4.66f},
        {93004, 1671.1f, 424.5f, 115.0f, 4.66f}
    },
    // grunt, warlock, necrolyte
    {
        {93006, 967.55f, 178.71f, 100.5f, 0.55f},
        {93006, 970.25f, 172.6f, 100.5f, 0.55f},
        {93009, 970.45f, 169.9f, 100.5f, 0.55f},
        {93009, 964.44f, 179.4f, 100.5f, 0.55f},
        {93008, 965.9f, 177.0f, 100.5f, 0.55f},
        {93008, 967.8f, 173.0f, 100.5f, 0.55f}
    }
};

Position const BG_SV_FightPos[2][4] =
{
    {
        {1697.1f, 504.9f, 122.9f, 0.7f},
        {1697.1f, 504.9f, 122.9f, 0.7f},
        {1697.1f, 504.9f, 122.9f, 0.7f},
        {1697.1f, 504.9f, 122.9f, 0.7f},
    },
    {
        {1697.1f, 504.9f, 122.9f, 0.7f},
        {1697.1f, 504.9f, 122.9f, 0.7f},
        {1697.1f, 504.9f, 122.9f, 0.7f},
        {1697.1f, 504.9f, 122.9f, 0.7f},
    }
};

struct BG_SV_BannerTimer
{
    uint32 timer = 0;
    uint8 type = 0;
    uint8 teamIndex = 0;
};

class BattleGroundSVScore : public BattleGroundScore
{
public:
    BattleGroundSVScore() {};
    virtual ~BattleGroundSVScore() {};
private:
};

class BattleGroundSV : public BattleGround
{
    friend class BattleGroundMgr;

    public:
        /* Construction */
        BattleGroundSV();
        ~BattleGroundSV();
        void Update(uint32 diff);

        /* inherited from BattlegroundClass */
        virtual void AddPlayer(Player *plr);
        virtual void StartingEventCloseDoors();
        virtual void StartingEventOpenDoors();

        /* Battleground Events */
        void RemovePlayer(Player *plr, ObjectGuid guid);
        void HandleAreaTrigger(Player *Source, uint32 Trigger);
        void HandleKillPlayer(Player *player, Player *killer);
        void HandleKillUnit(Creature* creature, Player* killer);
        void HandleLootItem(Player* looter, uint32 count);
        void StartFinalEvent();
        virtual bool SetupBattleGround();
        virtual void Reset();
        void EndBattleGround(Team winner);
        virtual WorldSafeLocsEntry const* GetClosestGraveYard(Player* player);

        /* Nodes occupying */
        void EventPlayerClickedOnFlag(Player* source, GameObject* target_obj) override;

        void UpdateTeamScore(Team team);
        void UpdatePlayerScore(Player *Source, uint32 type, uint32 value);
        virtual void FillInitialWorldStates(WorldPacket& data, uint32& count);

        uint32 GetTowerNameId(uint8 node);
        Team GetHeraldControlledTeam();
        uint32 GetTeamSparks(TeamId team) { return m_resources[team]; }
        void AddTeamSparks(TeamId team, uint32 count) { m_resources[team] += count; }
        void SetGeneralsActive(bool set) { generalsActive = set; }
        bool IsGeneralsActive() { return generalsActive; }

    private:
        /* Gameobject spawning/despawning */
        void CreateBanner(uint8 node, uint8 type, uint8 teamIndex, bool delay);
        void DelBanner(uint8 node, uint8 type, uint8 teamIndex);

        /* Creature spawning/despawning */
        void NodeOccupied(uint8 node, Team team);
        void NodeDeOccupied(uint8 node);

        uint8 m_Nodes[BG_SV_DYNAMIC_NODES_COUNT];
        uint8 m_prevNodes[BG_SV_DYNAMIC_NODES_COUNT];
        BG_SV_BannerTimer m_BannerTimers[BG_SV_DYNAMIC_NODES_COUNT];
        uint32 m_NodeTimers[BG_SV_DYNAMIC_NODES_COUNT];
        uint32 m_resources[BG_TEAMS_COUNT];
        uint32 m_lastTick[BG_TEAMS_COUNT];
        bool generalsActive;
};
#endif