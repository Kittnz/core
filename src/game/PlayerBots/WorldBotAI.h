#ifndef MANGOS_WorldBotAI_H
#define MANGOS_WorldBotAI_H

#include "CombatBotBaseAI.h"
#include "WorldBotTravelSystem.h"
#include "WorldBotTaskManager.h"
#include "BattleBotAI.h"
#include "PartyBotAI.h"
#include "PlayerBotMgr.h"

enum WorldBotSpells
{
    WB_SPELL_FOOD = 1131,
    WB_SPELL_DRINK = 1137,
    WB_SPELL_AUTO_SHOT = 75,
    WB_SPELL_SHOOT_WAND = 5019,
    WB_SPELL_HONORLESS_TARGET = 2479,
    WB_SPELL_TAME_BEAST = 13481,

    WB_SPELL_SUMMON_IMP = 688,
    WB_SPELL_SUMMON_VOIDWALKER = 697,
    WB_SPELL_SUMMON_FELHUNTER = 691,
    WB_SPELL_SUMMON_SUCCUBUS = 712,

    WB_SPELL_MOUNT_40_HUMAN = 470,
    WB_SPELL_MOUNT_40_NELF = 10787,
    WB_SPELL_MOUNT_40_DWARF = 6896,
    WB_SPELL_MOUNT_40_GNOME = 17456,
    WB_SPELL_MOUNT_40_TROLL = 10795,
    WB_SPELL_MOUNT_40_ORC = 581,
    WB_SPELL_MOUNT_40_TAUREN = 18363,
    WB_SPELL_MOUNT_40_UNDEAD = 8980,

    WB_SPELL_MOUNT_60_HUMAN = 22717,
    WB_SPELL_MOUNT_60_NELF = 22723,
    WB_SPELL_MOUNT_60_DWARF = 22720,
    WB_SPELL_MOUNT_60_GNOME = 22719,
    WB_SPELL_MOUNT_60_TROLL = 22721,
    WB_SPELL_MOUNT_60_ORC = 22724,
    WB_SPELL_MOUNT_60_TAUREN = 22718,
    WB_SPELL_MOUNT_60_UNDEAD = 22722,

    WB_SPELL_MOUNT_40_PALADIN = 13819,
    WB_SPELL_MOUNT_60_PALADIN = 23214,

    WB_SPELL_MOUNT_40_WARLOCK = 5784,
    WB_SPELL_MOUNT_60_WARLOCK = 23161,

    WB_PET_WOLF = 565,
    WB_PET_CAT = 681,
    WB_PET_BEAR = 822,
    WB_PET_CRAB = 831,
    WB_PET_GORILLA = 1108,
    WB_PET_BIRD = 1109,
    WB_PET_BOAR = 1190,
    WB_PET_BAT = 1554,
    WB_PET_CROC = 1693,
    WB_PET_SPIDER = 1781,
    WB_PET_OWL = 1997,
    WB_PET_STRIDER = 2322,
    WB_PET_SCORPID = 3127,
    WB_PET_SERPENT = 3247,
    WB_PET_RAPTOR = 3254,
    WB_PET_TURTLE = 3461,
    WB_PET_HYENA = 4127,

    WB_ITEM_ARROW = 2512,
    WB_ITEM_BULLET = 2516,
};

enum WorldBotMapId
{
    MAP_EASTERN_KINGDOMS = 0,
    MAP_KALIMDOR = 1,
    MAP_AV = 30,
    MAP_AB = 529,
    MAP_WS = 489,
};

enum WorldBotWsgWaitSpot
{
    MB_WSG_WAIT_SPOT_SPAWN,
    MB_WSG_WAIT_SPOT_LEFT,
    MB_WSG_WAIT_SPOT_RIGHT
};

enum WorldBotTasks
{
    TASK_NONE, // No task
    TASK_ROAM, // Follow waypoint path
    TASK_EXPLORE, // Go to points of interest
    TASK_GRIND, // Goes grinding
    TASK_DUAL, // Is dualer at the gates of a big city
    TASK_TRADE, // Looking to craft or auction house stuff
    TASK_LFG, // Wants to do dungeons for its level range
    TASK_QUEST, // Goes questing
    TASK_LUCKY_ROLLER, // Lucky Roller - "Missgreen is back in town. Come and try your luck 1-59=lose 60-96=x2 97-99=x3 100=x4 150-3500max good luck and /w me for [inv] :)"
    TASK_BANKER, // Goes to bank
    TASK_PROTECTOR, // Moves to conflicted area's or zones
    TASK_FIRST = TASK_ROAM,     // First task
    TASK_LAST = TASK_PROTECTOR, // Last task
};

struct ChatData {
    uint64 unixtimems;
    uint32 guid;
    std::string senderName;
    std::string text;
    uint32 chatType;
    std::string channelName;
};

class WorldBotAI : public CombatBotBaseAI
{
public:

    WorldBotAI(uint8 race, uint8 class_, uint32 mapId, uint32 instanceId, float x, float y, float z, float o, bool isBattleBot, uint8 bgId)
        : CombatBotBaseAI(),  m_race(race), m_class(class_), m_mapId(mapId), m_instanceId(instanceId), m_x(x), m_y(y), m_z(z), m_o(o),
        m_isBattleBot(isBattleBot), m_battlegroundId(bgId), m_showPath(false), m_currentNodeId(0), m_currentPathIndex(0), m_isRunningToCorpse(false),
        m_taskManager(this)
    {
        m_updateTimer.Reset(2000);
        m_updateMoveTimer.Reset(1000);
        m_updateChatTimer.Reset(2000);
        m_randomTaskTimer.Reset(5 * MINUTE * IN_MILLISECONDS);
        m_isSpecificDestinationPath = false;
    }

    bool OnSessionLoaded(PlayerBotEntry * entry, WorldSession * sess) override
    {
        if (sPlayerBotMgr.m_useWorldBotLoader)
        {
            sess->LoginPlayer(entry->playerGUID);
            return true;
        }
        else
            return SpawnNewPlayer(sess, m_class, m_race, m_mapId, m_instanceId, m_x, m_y, m_z, m_o);
    }

    void OnPlayerLogin() final;
    void UpdateAI(uint32 const diff) final;
    void SendGroupAcceptPacket();
    void OnPacketReceived(WorldPacket const* packet) final;
    void MovementInform(uint32 MovementType, uint32 Data = 0) final;

    bool ShouldIgnoreCombat() const;
    bool DrinkAndEat();
    bool UseMount();
    uint32 GetMountSpellId() const;
    void AddPremadeGearAndSpells();
    bool CheckForUnreachableTarget();
    float GetMaxAggroDistanceForMap() const;
    bool AttackStart(Unit* pVictim);
    Unit* SelectAttackTarget(Unit* pExcept = nullptr) const;
    Unit* SelectFollowTarget() const;
    Player* GetPartyLeader() const;
    bool IsValidDistancingTarget(Unit* pTarget, Unit* pEnemy);
    Unit* GetDistancingTarget(Unit* pEnemy);
    bool RunAwayFromTarget(Unit* pEnemy);

    bool ShouldEnterStealth() const;
    bool EnterStealthIfNeeded(SpellEntry const* pStealthSpell);

    void OnJustRevived();
    void OnJustDied();
    void TeleportResurrect();
    void OnEnterBattleGround();
    void OnLeaveBattleGround();

    void UpdateBattleGroundAI();
    void UpdateInCombatAI() final;
    void UpdateOutOfCombatAI() final;
    void UpdateInCombatAI_Paladin() final;
    void UpdateOutOfCombatAI_Paladin() final;
    void UpdateInCombatAI_Shaman() final;
    void UpdateOutOfCombatAI_Shaman() final;
    void UpdateInCombatAI_Hunter() final;
    void UpdateOutOfCombatAI_Hunter() final;
    void UpdateInCombatAI_Mage() final;
    void UpdateOutOfCombatAI_Mage() final;
    void UpdateInCombatAI_Priest() final;
    void UpdateOutOfCombatAI_Priest() final;
    void UpdateInCombatAI_Warlock() final;
    void UpdateOutOfCombatAI_Warlock() final;
    void UpdateInCombatAI_Warrior() final;
    void UpdateOutOfCombatAI_Warrior() final;
    void UpdateInCombatAI_Rogue() final;
    void UpdateOutOfCombatAI_Rogue() final;
    void UpdateInCombatAI_Druid() final;
    void UpdateOutOfCombatAI_Druid() final;

    uint8 m_battlegroundId = 0;
    ShortTimeTracker m_updateTimer;
    ShortTimeTracker m_updateMoveTimer;
    bool m_allowedToMove = true;
    ObjectGuid m_leaderGuid;
    uint8 m_race = 0;
    uint8 m_class = 0;
    uint32 m_mapId = 0;
    uint32 m_instanceId = 0;
    float m_x = 0.0f;
    float m_y = 0.0f;
    float m_z = 0.0f;
    float m_o = 0.0f;
    bool m_resetSpellData = false;
    bool m_wasDead = false;
    bool m_wasInBG = false;
    bool m_isBattleBot = false;
    bool m_isWorldBot = false;
    bool m_isDualBot = false;
    bool m_isDualBotReady = false;
    bool m_isDualBotGetReady = false;
    bool m_isDualBotInProgress = false;

    // Movement System
    void UpdateWaypointMovement();
    void MoveToNextPoint();
    void ClearPath();
    void StopMoving();
    void StartNewPathToNode();
    bool StartNewPathToSpecificDestination(float x, float y, float z, uint32 mapId, bool isCorpseRun);
    void OnPathComplete();

    // Visual path and nodes
    void ShowCurrentPath();
    bool m_showPath = false;

    uint32 m_currentNodeId;
    std::vector<TravelPath> m_currentPath;
    size_t m_currentPathIndex;
    bool m_isSpecificDestinationPath;

    // Corpse Running
    bool m_isRunningToCorpse;
    ShortTimeTracker m_corpseRunTimer;
    static const int32 CORPSE_RUN_TIMEOUT = 600000; // 10 minutes in milliseconds

    // Node Actions
    bool ExecuteNodeAction(uint32 nodeId);

    //void LoadGrindingDBWaypoints();
    //void StartNewGrindPath();

    // BG Movement
    uint8 m_waitingSpot = MB_WSG_WAIT_SPOT_SPAWN;

    // Task System
    WorldBotTaskManager m_taskManager;
    uint8 currentTaskID = 0;
    void OnTaskComplete(uint8 completedTaskId);
    void SetRandomTask();
    ShortTimeTracker m_randomTaskTimer;
    void InitializeTasks();

    // Roam task methods
    bool CanPerformRoam() const;
    bool IsRoamingComplete() const;
    void RegisterRoamTask();

    // Explore task methods
    bool CanPerformExplore() const;
    void StartExploring();
    bool IsExploringComplete() const;
    void RegisterExploreTask();
    bool SetExploreDestination();
    bool HasReachedExploreDestination() const;

    std::string DestName = "";
    float DestCoordinatesX = 0.0f;
    float DestCoordinatesY = 0.0f;
    float DestCoordinatesZ = 0.0f;
    int8 DestMap = 0;
    bool hasPoiDestination = false;

    // Grind task methods
    bool CanPerformGrind() const;
    void StartGrinding();
    bool IsGrindingComplete() const;
    void RegisterGrindTask();
    bool SetGrindDestination();
    bool HasReachedGrindDestination() const;
    void CreatePathFromHotSpots();
    void UpdateGrindingBehavior();
    Unit* FindEntryTargetToAttack();
    std::vector<std::string> SplitString(const std::string& str, char delim);

    std::vector<Position> m_grindHotSpots;
    uint32 m_grindEntryTarget;
    uint32 m_grindMaxLevel;
    size_t m_currentHotSpotIndex;
    ShortTimeTracker m_grindUpdateTimer;

private:
    ShortTimeTracker m_updateChatTimer;
};

#endif
