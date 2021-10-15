#ifndef __BATTLEGROUNDSV_H
#define __BATTLEGROUNDSV_H

#include "BattleGround.h"

enum BG_SV_BattlegroundNodes
{
    BG_SV_HUMAN_TOWER = 0,
    BG_SV_ORC_TOWER = 1,

    BG_SV_DYNAMIC_NODES_COUNT = 2,                    // dynamic nodes that can be captured
};

enum BG_SV_ObjectTypes
{
    BG_SV_OBJECTID_BANNER_0 = 180087,       // Neutral Banner
    BG_SV_OBJECTID_BANNER_A = 180058,
    BG_SV_OBJECTID_BANNER_CONT_A = 180059,
    BG_SV_OBJECTID_BANNER_H = 180060,
    BG_SV_OBJECTID_BANNER_CONT_H = 180061,
};

enum BG_SV_ObjectType
{
    // 5*2
    BG_SV_OBJECT_BANNER_NEUTRAL = 0,
    BG_SV_OBJECT_BANNER_CONT_A  = 1,
    BG_SV_OBJECT_BANNER_CONT_H  = 2,
    BG_SV_OBJECT_BANNER_ALLY    = 3,
    BG_SV_OBJECT_BANNER_HORDE   = 4,
    // 2 gates possible
    BG_SV_OBJECT_MAX            = 10
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
    BG_SV_CREATURE_ORC_ARMY        = 29,
    BG_SV_CREATURE_MAX             = 30
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
    NPC_AEONUS = 13761,

    NPC_MARSHAL_GREYWALL = 250000,
    NPC_HUMAN_FOOTMAN = 250001,
    NPC_HUMAN_ARCHER = 250002,
    NPC_HUMAN_CONJURER = 250003,
    NPC_HUMAN_CLERIC = 250004,

    NPC_WARLORD_BLACKSKULL = 250005,
    NPC_ORC_GRUNT = 250006,
    NPC_ORC_SPEARMAN = 250007,
    NPC_ORC_NECROLYTE = 250008,
    NPC_ORC_WARLOCK = 250009
};

enum BG_SV_Langs
{
    LANG_BG_SV_NODE_TAKEN = 50000,
    LANG_BG_SV_DEFEAT_TEXT = 50001,
    LANG_BG_SV_END_TEXT = 50002,
    LANG_BG_SV_SUMMON_DRAGON = 50003,
    LANG_BG_SV_HUMAN_TOWER = 50004,
    LANG_BG_SV_ORC_TOWER = 50005
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
};

Position const BG_SV_SpiritGuidePos[2] =
{
    {1697.1f, 504.9f, 122.9f, 0.7f},                 // human graveyard
    {926.7f, 77.4f, 129.7f, 0.5f}                    // orc graveyard
};

Position const TowerGuardsPos[2][5] =
{
    {
        {1697.1f, 504.9f, 122.9f, 0.7f},
        {1697.1f, 504.9f, 122.9f, 0.7f},
        {1697.1f, 504.9f, 122.9f, 0.7f},
        {1697.1f, 504.9f, 122.9f, 0.7f},
        {1697.1f, 504.9f, 122.9f, 0.7f}
    },
    {
        {1697.1f, 504.9f, 122.9f, 0.7f},
        {1697.1f, 504.9f, 122.9f, 0.7f},
        {1697.1f, 504.9f, 122.9f, 0.7f},
        {1697.1f, 504.9f, 122.9f, 0.7f},
        {1697.1f, 504.9f, 122.9f, 0.7f}
    }
};

Position const Leader[2]
{
    {1697.1f, 504.9f, 122.9f, 0.7f},
    {1697.1f, 504.9f, 122.9f, 0.7f},
};

struct BG_SV_BannerTimer
{
    uint32      timer;
    uint8       type;
    uint8       teamIndex;
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
        void HandleLootItem(Player* looter);
        void CheckResources();
        void StartFinalEvent(Team summoner);
        virtual bool SetupBattleGround();
        virtual void Reset();
        void EndBattleGround(Team winner);
        virtual WorldSafeLocsEntry const* GetClosestGraveYard(Player* player);

        /* Nodes occupying */
        void EventPlayerClickedOnFlag(Player* source, GameObject* target_obj) override;

        void UpdateTeamScore(Team team);
        void UpdatePlayerScore(Player *Source, uint32 type, uint32 value);
        virtual void FillInitialWorldStates(WorldPacket& data, uint32& count);

        int32 GetTowerNameId(uint8 node);

    private:
        /* Gameobject spawning/despawning */
        void CreateBanner(uint8 node, uint8 type, uint8 teamIndex, bool delay);
        void DelBanner(uint8 node, uint8 type, uint8 teamIndex);

        /* Creature spawning/despawning */
        void NodeOccupied(uint8 node, Team team);
        void NodeDeOccupied(uint8 node);

        uint32 m_HumanResources = 0;
        uint32 m_OrcResources = 0;
        Team summoner = TEAM_NONE;
        int32 m_defeatTimer = 0;
        int32 m_endTimer = 0;
        int32 m_closeTimer = 0;

        uint8 m_Nodes[BG_SV_DYNAMIC_NODES_COUNT];
        uint8 m_prevNodes[BG_SV_DYNAMIC_NODES_COUNT];
        BG_SV_BannerTimer m_BannerTimers[BG_SV_DYNAMIC_NODES_COUNT];
        uint32 m_NodeTimers[BG_SV_DYNAMIC_NODES_COUNT];
};
#endif