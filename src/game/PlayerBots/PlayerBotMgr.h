#ifndef _PLAYERBOTMGR_H
#define _PLAYERBOTMGR_H

#include "Common.h"
#include "Policies/Singleton.h"
#include "Database/DatabaseEnv.h"
#include "PlayerBotAI.h"
#include "BattleGroundDefines.h"

#include <vector>
#include <memory>

class PlayerBotAI;
class WorldSession;
class Player;

enum PlayerBotAutoEquip
{
    PLAYER_BOT_AUTO_EQUIP_STARTING_GEAR = 0,
    PLAYER_BOT_AUTO_EQUIP_RANDOM_GEAR = 1,
    PLAYER_BOT_AUTO_EQUIP_PREMADE_GEAR = 2,
};

enum PlayerBotState
{
    PB_STATE_OFFLINE,
    PB_STATE_LOADING,
    PB_STATE_ONLINE
};

struct PlayerBotEntry
{
    uint64 playerGUID;
    std::string name;
    uint32 accountId;

    uint32 chance;
    uint8 state; //Online, in queue or offline
    bool isChatBot; // bot des joueurs en discussion via le site.
    bool customBot; // Enabled even if PlayerBot system disabled (AutoTesting system for example)
    bool requestRemoval;
    std::unique_ptr<PlayerBotAI> ai;

    PlayerBotEntry(uint64 guid, uint32 account, uint32 chance_): playerGUID(guid), accountId(account), chance(chance_), state(PB_STATE_OFFLINE), isChatBot(false), customBot(false), requestRemoval(false), ai(nullptr)
    {}
    PlayerBotEntry(): playerGUID(0), accountId(0), chance(100.0f), state(PB_STATE_OFFLINE), isChatBot(false), customBot(false), requestRemoval(false), ai(nullptr)
    {}
};

struct PlayerBotStats
{
    /* Stats */
    uint32 onlineCount;
    uint32 loadingCount;
    uint32 totalBots;
    uint32 onlineChat;

    /* Config */
    uint32 confMaxOnline;
    uint32 confMinOnline;
    uint32 confRandomBotsRefresh;
    uint32 confUpdateDiff;

    PlayerBotStats() 
    : onlineCount(0), loadingCount(0), totalBots(0), onlineChat(0),
    confMaxOnline(0), confMinOnline(0), confRandomBotsRefresh(0), confUpdateDiff(0) {}
};

class WorldBotsCollection
{
public:
    uint32 guid;
    uint32 account;
    std::string name;
    uint32 race;
    uint32 class_;
    float pos_x;
    float pos_y;
    float pos_z;
    uint32 map;
    float orientation;
    uint8 level;
};

class WorldBotsAreaPOI
{
public:
    uint32 id;
    uint32 importance;
    float pos_x;
    float pos_y;
    float pos_z;
    uint32 map;
    uint32 flags;
    uint32 areaid;
    std::string name;
};

struct WorldBotGrindProfile {
    uint32 guid;
    std::string fileName;
    std::string hotSpots;
    std::string entryTarget;
    uint32 maxLevel;
    uint32 minLevel;
    std::string questType;
    std::string faction;
    uint32 mapId;
};

class PlayerBotMgr
{
    public:
        PlayerBotMgr();
        ~PlayerBotMgr();

        void LoadConfig();
        void Load();

        void Update(uint32 diff);
        bool AddOrRemoveBot();

        bool AddBot(PlayerBotAI* ai);
        bool AddBot(uint32 playerGuid, bool chatBot = false, PlayerBotAI* pAI = nullptr);
        bool DeleteBot(std::map<uint32, std::shared_ptr<PlayerBotEntry>>::iterator iter);
        bool DeleteBot(uint32 playerGuid);

        bool AddRandomBot();
        bool DeleteRandomBot();

        void AddBattleBot(BattleGroundQueueTypeId queueType, Team botTeam, uint32 botLevel, bool temporary);
        void DeleteBattleBots();

        void DeleteAll();
        void AddAllBots();

        void OnBotLogout(PlayerBotEntry *e);
        void OnBotLogin(PlayerBotEntry *e);
        void OnPlayerInWorld(Player* pPlayer);
        void AddTempBot(uint32 account, uint32 time);
        void RefreshTempBot(uint32 account);

        bool ForceAccountConnection(WorldSession* sess);
        bool IsPermanentBot(uint32 playerGuid);
        bool IsChatBot(uint32 playerGuid);
        bool IsSavingAllowed() { return m_confAllowSaving; }

        uint32 GenBotAccountId() { return ++m_maxAccountId; }
        PlayerBotStats& GetStats(){ return m_stats; }
        void Start() { m_confEnableRandomBots = true; }

        void WorldBotLoader();
        void WorldBotCreator();
        bool WorldBotAdd(uint32 guid, uint32 account, uint32 race, uint32 class_, float pos_x, float pos_y, float pos_z, float orientation, uint32 map);
        bool m_useWorldBotLoader = false;
        void WorldBotBalancer(uint32 diff);
        void WorldBotLoadAreaPOI();
        void WorldBotLoadGrindProfiles();
        const std::vector<WorldBotGrindProfile>& GetGrindProfiles() const { return m_grindProfiles; }

        ShortTimeTracker m_BotBalanceTimer;
        uint32 GetOnlineBotsCount(Team team) const;
        uint32 GetAvailableBotsCount(Team team) const;

    protected:
        // How long since last update?
        uint32 m_elapsedTime;
        uint32 m_lastBotsRefresh;
        uint32 m_lastUpdate;
        uint32 m_totalChance;
        uint32 m_maxAccountId;
        time_t m_lastBattleBotQueueUpdate;

        std::map<uint32 /*pl guid*/, std::shared_ptr<PlayerBotEntry>> m_bots;
        std::map<uint32 /*account*/, uint32> m_tempBots;
        PlayerBotStats m_stats;

        uint32 m_confMinRandomBots;
        uint32 m_confMaxRandomBots;
        uint32 m_confRandomBotsRefresh;
        uint32 m_confUpdateDiff;
        bool m_confAllowSaving;
        bool m_confDebug;
        bool m_confEnableRandomBots;
        bool m_confBattleBotAutoJoin;
        std::vector<WorldBotGrindProfile> m_grindProfiles;

    private:
        ShortTimeTracker m_BalanceTimer;
};

#define sPlayerBotMgr MaNGOS::Singleton<PlayerBotMgr>::Instance()
#endif
