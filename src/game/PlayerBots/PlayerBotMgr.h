#ifndef _PLAYERBOTMGR_H
#define _PLAYERBOTMGR_H

#include "Common.h"
#include "Policies/Singleton.h"
#include "Database/DatabaseEnv.h"

#include <vector>

class PlayerBotAI;
class WorldSession;
class Player;

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
    uint32 zoneID;
    uint32 areaID;
    WorldLocation loc;
    PlayerBotAI* ai;

    PlayerBotEntry(uint64 guid, uint32 account, uint32 _chance, uint32 zone, uint32 area = 0): playerGUID(guid), accountId(account), chance(_chance), zoneID(zone), areaID(area), state(PB_STATE_OFFLINE), isChatBot(false), customBot(false), requestRemoval(false), ai(nullptr)
    {}
    PlayerBotEntry(): playerGUID(0), accountId(0), chance(100.0f), zoneID(0), areaID(0), state(PB_STATE_OFFLINE), isChatBot(false), customBot(false), requestRemoval(false), ai(nullptr)
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
    uint32 confBotsRefresh;
    uint32 confUpdateDiff;

    PlayerBotStats() 
    : onlineCount(0), loadingCount(0), totalBots(0), onlineChat(0),
    confMaxOnline(0), confMinOnline(0), confBotsRefresh(0), confUpdateDiff(0) {}
};

class PlayerBotMgr
{
    public:
        PlayerBotMgr();
        ~PlayerBotMgr();

        void LoadConfig();
        void Load();

        void ShuffleBots();

        void Update(uint32 diff);
        bool AddOrRemoveBot();

        bool AddBot(PlayerBotAI* ai);
        bool AddBot(uint32 playerGuid, bool chatBot=false);
        bool DeleteBot(std::map<uint32, PlayerBotEntry*>::iterator iter);
        bool DeleteBot(uint32 playerGuid);

        bool AddRandomBot();
        bool DeleteRandomBot();
        bool DeleteRandomBotNotActiveZones();

        void AddBattleBot(BattleGroundQueueTypeId queueType, Team botTeam, uint32 botLevel, bool temporary);
        void DeleteBattleBots();
        void AddRandomBotForBg(BattleGroundQueueTypeId queueType, Team botTeam, uint32 botLevel);

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
        bool ForceLogoutDelay() const { return forceLogoutDelay; }

        uint32 GenBotAccountId() { return ++_maxAccountId; }
        PlayerBotStats& GetStats(){ return m_stats; }
        void Start() { enable = true; }

        bool IsActiveZone(uint32 zone) { return m_player_in_zones.find(zone) != m_player_in_zones.end(); }
        bool IsActiveArea(uint32 area) { return m_player_in_areas.find(area) != m_player_in_areas.end(); }
        bool IsNoPvpZone(uint32 zone) { return std::find(m_no_pvp_zones.begin(), m_no_pvp_zones.end(), zone) != m_no_pvp_zones.end(); }

    protected:
        /* Combien de temps depuis la derniere MaJ ?*/
        uint32 m_elapsedTime;
        uint32 m_lastBotsRefresh;
        uint32 m_lastUpdate;
        uint32 totalChance;
        uint32 _maxAccountId;
        time_t m_lastBattleBotQueueUpdate;

        std::vector <uint32 /*pl guid*/> m_bots_vector;
        std::map<uint32 /*pl guid*/, PlayerBotEntry*> m_bots;
        std::map<uint32 /*account*/, uint32> m_tempBots;
        std::map<uint32, uint32> m_player_in_zones;
        std::map<uint32, uint32> m_player_in_areas;
        std::map<uint32, uint32> m_bot_in_zones;
        std::map<uint32, uint32> m_bot_in_areas;
        PlayerBotStats m_stats;

        std::vector <uint32> m_no_pvp_zones;

        uint32 confMinBots;
        uint32 confMaxBots;
        uint32 confBotsRefresh;
        uint32 confUpdateDiff;
        uint32 confMaxInZone;
        uint32 confMaxInArea;
        uint32 confMinBotsAddOrRemove;
        uint32 confMaxBotsAddOrRemove;
        bool confDebug;
        bool forceLogoutDelay;
        bool m_confBattleBotAutoJoin;
        bool m_confRandomBotAutoJoin;

        bool enable;
};

extern PlayerBotMgr sPlayerBotMgr;

#endif
