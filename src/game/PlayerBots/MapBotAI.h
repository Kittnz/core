#ifndef MANGOS_MapBotAI_H
#define MANGOS_MapBotAI_H

#include "CombatBotBaseAI.h"
#include "MapBotWaypoints.h"
#include "BattleBotAI.h"
#include "PartyBotAI.h"
#include "PlayerBotMgr.h"

struct MapBotChatData
{
    MapBotChatData(uint32 guid, uint32 type, std::string chat) : m_guid(guid), m_type(type), m_chat(chat) {}
    uint32 m_type, m_guid = 0;
    std::string m_chat = "";
};

struct MapBotChatRespondsQueue
{
    MapBotChatRespondsQueue(ObjectGuid originguid, uint32 type, uint32 guid1, uint32 guid2, std::string msg, std::string chanName, std::string name) : m_originguid(originguid), m_type(type), m_guid1(guid1), m_guid2(guid2), m_msg(msg), m_chanName(chanName), m_name(name) {}
    ObjectGuid m_originguid;
    uint32 m_type;
    uint32 m_guid1;
    uint32 m_guid2;
    std::string m_msg;
    std::string m_chanName;
    std::string m_name;
};

enum MapBotChatDataType
{
    NOT_UNDERSTAND,
    GRUDGE,
    VICTIM,
    ATTACKER,
    HELLO_RESPOND,
    NAME_RESPOND,
    ADMIN_ABUSE
};

enum MapBotMapId
{
    MAP_EASTERN_KINGDOMS = 0,
    MAP_KALIMDOR = 1,
    MAP_AV = 30,
    MAP_AB = 529,
    MAP_WS = 489,
};

enum MapBotWsgWaitSpot
{
    MB_WSG_WAIT_SPOT_SPAWN,
    MB_WSG_WAIT_SPOT_LEFT,
    MB_WSG_WAIT_SPOT_RIGHT
};  

typedef std::vector<std::string> Speech;

class MapBotAI : public CombatBotBaseAI
{
public:

    MapBotAI(uint8 race, uint8 class_, uint32 mapId, uint32 instanceId, float x, float y, float z, float o, bool isBattleBot, uint8 bgId)
        : CombatBotBaseAI(),  m_race(race), m_class(class_), m_mapId(mapId), m_instanceId(instanceId), m_x(x), m_y(y), m_z(z), m_o(o), m_isBattleBot(isBattleBot), m_battlegroundId(bgId)
    {
        m_updateTimer.Reset(2000);
        m_updateMoveTimer.Reset(1000);
        m_updateChatTimer.Reset(2000);
        BotLastChatTime = sWorld.GetGameTime();
    }

    bool OnSessionLoaded(PlayerBotEntry * entry, WorldSession * sess) override
    {
        if (sPlayerBotMgr.m_useMapBotLoader)
        {
            sess->LoginPlayer(entry->playerGUID);
            return true;
        }
        else
            return SpawnNewPlayer(sess, m_class, m_race, m_mapId, m_instanceId, m_x, m_y, m_z, m_o);
    }

    void OnPlayerLogin() final;
    void UpdateAI(uint32 const diff) final;
    void OnPacketReceived(WorldPacket const* packet) final;
    void SendFakePacket(uint16 opcode) final;
    void MovementInform(uint32 MovementType, uint32 Data = 0) final;

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
    void RunAwayFromTarget(Unit* pTarget);

    void OnJustRevived();
    void OnJustDied();
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

    std::vector<LootResponseData> m_lootResponses;
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
    bool m_wasDead = false;
    bool m_wasInBG = false;
    bool m_isBattleBot = false;
    bool m_isMapBot = false;

    // Movement System
    void LoadDBWaypoints();
    void UpdateWaypointMovement();
    void DoGraveyardJump();
    void MoveToNextPoint();
    bool StartNewPathFromBeginning();
    void StartNewPathFromAnywhere();
    bool BGStartNewPathToObjective();
    bool StartNewPathToPosition(Position const& position, std::vector<MapBotPath*> const& vPaths);
    void ClearPath();
    void StopMoving();
    bool m_doingGraveyardJump = false;
    bool m_movingInReverse = false;
    uint32 m_currentPoint = 0;
    MapBotPath* m_currentPath = nullptr;
    uint8 m_waitingSpot = MB_WSG_WAIT_SPOT_SPAWN;

    // Chat System
    std::vector<MapBotChatRespondsQueue> m_chatWorldRespondsQueue;
    std::vector<MapBotChatRespondsQueue> m_chatPlayerRespondsQueue;
    void LoadBotChat();
    void BotChatAddToQueue(Player* me, uint8 msgtype, ObjectGuid guid1, ObjectGuid guid2, std::string message, std::string chanName, std::string name);
    void HandleChat(Player* me, uint32 type, uint32 guid1, uint32 guid2, std::string msg, std::string chanName, std::string name);
    ShortTimeTracker m_updateChatTimer;
    //uint8 m_BotChatCount = 0;
    time_t BotLastChatTime;

};

#endif
