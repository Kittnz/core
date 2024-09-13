#include "Common.h"
#include "Policies/SingletonImp.h"
#include "PlayerBotMgr.h"
#include "ObjectMgr.h"
#include "World.h"
#include "WorldSession.h"
#include "AccountMgr.h"
#include "Opcodes.h"
#include "Config/Config.h"
#include "Chat.h"
#include "Player.h"
#include "PlayerBotAI.h"
#include "PartyBotAI.h"
#include "BattleBotAI.h"
#include "BattleGroundMgr.h"
#include "BattleBotWaypoints.h"
#include "Anticheat.h"
#include "VMapFactory.h"
#include "PopulationBotAI.h"

#include <random>

void chompAndTrim(std::string& str)
{
    while (str.length() > 0)
    {
        char lc = str[str.length() - 1];
        if (lc == '\r' || lc == '\n' || lc == ' ' || lc == '"' || lc == '\'')
        {
            str = str.substr(0, str.length() - 1);
        }
        else
        {
            break;
        }
    }
    while (str.length() > 0)
    {
        char lc = str[0];
        if (lc == ' ' || lc == '"' || lc == '\'')
        {
            str = str.substr(1, str.length() - 1);
        }
        else
        {
            break;
        }
    }
}

bool getNextId(const std::string& pString, unsigned int& pStartPos, unsigned int& pId)
{
    bool result = false;
    unsigned int i;
    for (i = pStartPos; i < pString.size(); ++i)
    {
        if (pString[i] == ',')
        {
            break;
        }
    }
    if (i > pStartPos)
    {
        std::string idString = pString.substr(pStartPos, i - pStartPos);
        pStartPos = i + 1;
        chompAndTrim(idString);
        pId = atoi(idString.c_str());
        result = true;
    }
    return result;
}

PlayerBotMgr sPlayerBotMgr;

PlayerBotMgr::PlayerBotMgr()
{
    totalChance = 0;
    _maxAccountId = 0;

    /* Config */
    confMinBots = 4;
    confMaxBots = 8;
    confBotsRefresh = 30000;
    confUpdateDiff = 10000;
    enable = false;
    confDebug = false;
    forceLogoutDelay = true;

    /* Time */
    m_elapsedTime = 0;
    m_lastBotsRefresh = 0;
    m_lastUpdate = 0;
    m_lastBattleBotQueueUpdate = 0;
}

PlayerBotMgr::~PlayerBotMgr()
{

}

void PlayerBotMgr::LoadConfig()
{
    enable = sConfig.GetBoolDefault("PlayerBot.Enable", false);
    confMinBots = sConfig.GetIntDefault("PlayerBot.MinBots", 3);
    confMaxBots = sConfig.GetIntDefault("PlayerBot.MaxBots", 10);
    confBotsRefresh = sConfig.GetIntDefault("PlayerBot.Refresh", 60000);
    confDebug = sConfig.GetBoolDefault("PlayerBot.Debug", false);
    confUpdateDiff = sConfig.GetIntDefault("PlayerBot.UpdateMs", 10000);
    forceLogoutDelay = sConfig.GetBoolDefault("PlayerBot.ForceLogoutDelay", true);
    if (!forceLogoutDelay)
        m_tempBots.clear();

    confMaxInZone = sConfig.GetIntDefault("PlayerBot.MixBotsInZone", 500);
    confMaxInArea = sConfig.GetIntDefault("PlayerBot.MaxBotsInArea", 100);
    confMinBotsAddOrRemove = sConfig.GetIntDefault("PlayerBot.MinBotsAddOrRemove", 1);
    confMaxBotsAddOrRemove = sConfig.GetIntDefault("PlayerBot.MaxBotsAddOrRemove", 20);

    m_confBattleBotAutoJoin = sConfig.GetBoolDefault("BattleBot.AutoJoin", false);
    m_confRandomBotAutoJoin = sConfig.GetBoolDefault("PlayerBot.AutoJoin", true);

    std::string nopvpzones = sConfig.GetStringDefault("PlayerBot.NoPvpAreas", "2255,656,2361,2362,2363,976,35,2268,3425,392,541,1446,3828,3712,3738,3565,3539,3623,4152,3988,4658,4284,4418,4436,4275,4323");
    if (!nopvpzones.empty())
    {
        unsigned int pos = 0;
        unsigned int id;
        chompAndTrim(nopvpzones);
        while (getNextId(nopvpzones, pos, id))
            m_no_pvp_zones.push_back(id);
    }
}

void PlayerBotMgr::Load()
{
    // 1- clean
    DeleteAll();
    m_bots.clear();
    m_tempBots.clear();
    totalChance = 0;

    // 2- Configuration
    LoadConfig();

    // 3- Load usable account ID
    QueryResult *result = LoginDatabase.PQuery("SELECT MAX(id) FROM account");
    if (!result)
    {
        sLog.outError("Playerbot: unable to load max account id.");
        return;
    }
    Field *fields = result->Fetch();
    _maxAccountId = fields[0].GetUInt32() + 10000;
    delete result;

    // 4- LoadFromDB
    result = CharacterDatabase.PQuery("SELECT char_guid, chance, ai FROM playerbot");
    if (!result)
        sLog.outString("Loading playerbots...");
    else
    {
        do
        {
            fields = result->Fetch();
            uint32 guid = fields[0].GetUInt32();
            uint32 acc = GenBotAccountId();
            uint32 chance = fields[1].GetUInt32();

            PlayerBotEntry* entry = new PlayerBotEntry(guid, acc, chance, 0);
            std::string aiName = fields[2].GetCppString();
            entry->ai = CreatePlayerBotAI(aiName);
            entry->ai->botEntry = entry;
            if (!sObjectMgr.GetPlayerNameByGUID(guid, entry->name))
                entry->name = "<Unknown>";
            if (auto* cache = sObjectMgr.GetPlayerDataByName(entry->name))
            {
                if (aiName == "PlayerBotWorldPopulationAI")
                {
                    // only set loc for world population bots
                    WorldLocation loc = WorldLocation(cache->uiMapId, cache->fPosX, cache->fPosY, cache->fPosZ, cache->fOrientation);
                    entry->loc = loc;
                }
                entry->zoneID = cache->uiZoneId;
                entry->areaID = sTerrainMgr.GetAreaId(cache->uiMapId, cache->fPosX, cache->fPosY, cache->fPosZ);
            }
            entry->ai->OnBotEntryLoad(entry);
            m_bots[entry->playerGUID] = entry;
            m_bots_vector.push_back(entry->playerGUID);
            totalChance += chance;
        } while (result->NextRow());

        delete result;
        sLog.outString("%u bots charges", m_bots.size());
    }

    // 5- Check config/DB
    if (confMinBots >= m_bots.size() && !m_bots.empty())
        confMinBots = m_bots.size() - 1;
    if (confMaxBots > m_bots.size())
        confMaxBots = m_bots.size();
    if (confMaxBots <= confMinBots)
        confMaxBots = confMinBots + 1;


    // 5.1 Initialize zones
    m_player_in_zones.clear();
    m_player_in_areas.clear();

    // 5.2 Shuffle bots
    ShuffleBots();

    // 6- Start initial bots
    /*if (enable)
    {
        for (uint32 i = 0; i < confMinBots; i++)
            AddRandomBot();
    }*/

    //7 - Remplir les stats
    m_stats.confMaxOnline = confMaxBots;
    m_stats.confMinOnline = confMinBots;
    m_stats.totalBots = m_bots.size();
    m_stats.confBotsRefresh = confBotsRefresh;
    m_stats.confUpdateDiff = confUpdateDiff;

    //8- Afficher les stats si débug
    if (confDebug)
    {
        sLog.outString("[PlayerBotMgr] Between %u and %u bots online", confMinBots, confMaxBots);
        sLog.outString("[PlayerBotMgr] %u now loading", m_stats.loadingCount);
    }
}

void PlayerBotMgr::ShuffleBots()
{
    std::random_device rd;
    std::mt19937 g(rd());
    std::shuffle(m_bots_vector.begin(), m_bots_vector.end(), g);
}

void PlayerBotMgr::DeleteAll()
{
    m_stats.onlineCount = 0;
    m_stats.loadingCount = 0;

    std::map<uint32, PlayerBotEntry*>::iterator i;
    for (i = m_bots.begin(); i != m_bots.end(); i++)
    {
        if (i->second->state != PB_STATE_OFFLINE)
        {
            OnBotLogout(i->second);
            totalChance += i->second->chance;
        }
    }

    m_tempBots.clear();

    if (confDebug)
        sLog.outString("[PlayerBotMgr] Deleting all bots [OK]");
}

void PlayerBotMgr::OnBotLogin(PlayerBotEntry *e)
{
    e->state = PB_STATE_ONLINE;
    if (confDebug)
        sLog.outString("[PlayerBot][Login]  '%s' GUID:%u Acc:%u", e->name.c_str(), e->playerGUID, e->accountId);
}

void PlayerBotMgr::OnBotLogout(PlayerBotEntry *e)
{
    e->state = PB_STATE_OFFLINE;
    WorldSession* sess = sWorld.FindSession(e->accountId);
    if (sess)
    {
        //sess->GetPlayer()->StopMoving();
        sess->ForcePlayerLogoutDelay();
    }

    static SqlStatementID updChars;
    SqlStatement stmt = CharacterDatabase.CreateStatement(updChars, "UPDATE characters SET online = 0 WHERE guid = ?");
    stmt.PExecute((uint32)e->playerGUID);

    if (confDebug)
        sLog.outString("[PlayerBot][Logout] '%s' GUID:%u Acc:%u", e->name.c_str(), e->playerGUID, e->accountId);
}

void PlayerBotMgr::OnPlayerInWorld(Player* player)
{
    if (PlayerBotEntry* e = player->GetSession()->GetBot())
    {
        player->setAI(e->ai);
        e->ai->SetPlayer(player);
        e->ai->OnPlayerLogin();
    }
}

void PlayerBotMgr::Update(uint32 diff)
{
    // Bots temporaires
    std::map<uint32, uint32>::iterator it;
    for (it = m_tempBots.begin(); it != m_tempBots.end(); ++it)
    {
        if (it->second < diff)
            it->second = 0;
        else
            it->second -= diff;
    }

    it = m_tempBots.begin();
    while (it != m_tempBots.end())
    {
        if (!it->second)
        {
            // Update des "chatBot" aussi.
            for (std::map<uint32, PlayerBotEntry*>::iterator iter = m_bots.begin(); iter != m_bots.end(); ++iter)
                if (iter->second->accountId == it->first)
                {
                    iter->second->state = PB_STATE_OFFLINE; // Will get logged out at next WorldSession::Update call
                    m_bots.erase(iter);
                    break;
                }
            m_tempBots.erase(it);
            it = m_tempBots.begin();
        }
        else
            ++it;
    }

    m_elapsedTime += diff;
    if (!((m_elapsedTime - m_lastUpdate) > confUpdateDiff))
        return; //Pas besoin d'update

    m_lastUpdate = m_elapsedTime;

    /* Connection des bots en attente */
    std::map<uint32, PlayerBotEntry*>::iterator iter;
    for (iter = m_bots.begin(); iter != m_bots.end(); ++iter)
    {
        if (!enable && !iter->second->customBot)
            continue;

        if (iter->second->state == PB_STATE_ONLINE)
        {
            if (iter->second->requestRemoval)
            {
                if (iter->second->ai && iter->second->ai->me)
                    iter->second->ai->me->RemoveFromGroup();

                DeleteBot(iter->first);

                iter->second->requestRemoval = false;

                if (iter->second->customBot)
                    iter = m_bots.erase(iter);
                else
                    ++iter;
                continue;
            }
        }

        if (iter->second->state != PB_STATE_LOADING)
            continue;

        WorldSession* sess = sWorld.FindSession(iter->second->accountId);

        if (!sess)
        {
            // This may happen : just wait for the World to add the session.
            //sLog.outString("/!\\ PlayerBot in queue but Session not in World ... Account : %u, GUID : %u", iter->second->accountId, iter->second->playerGUID);
            continue;
        }

        if (iter->second->ai->OnSessionLoaded(iter->second, sess))
        {
            OnBotLogin(iter->second);
            m_stats.loadingCount--;

            if (iter->second->isChatBot)
                m_stats.onlineChat++;
            else
                m_stats.onlineCount++;
        }
        else
            sLog.outError("PLAYERBOT: Unable to load session id %u", iter->second->accountId);
    }

    if (!enable)
        return;

    // update active zones
    m_player_in_zones.clear();
    m_player_in_areas.clear();
    HashMapHolder<MasterPlayer>::MapType const& plist = sObjectAccessor.GetMasterPlayers();
    for (const auto& itr : plist)
    {
        if (!itr.second->GetSession()->GetBot() && itr.second->GetSession()->GetPlayer()->IsGMVisible())
        {
            m_player_in_areas[itr.second->GetAreaId()]++;
            m_player_in_zones[itr.second->GetZoneId()]++;
        }
    }

    if (!m_player_in_areas.empty() || !m_player_in_zones.empty())
        ShuffleBots();

    if ((m_confBattleBotAutoJoin || m_confRandomBotAutoJoin) && (m_lastBattleBotQueueUpdate <= (sWorld.GetGameTime() - 10)))
    {
        m_lastBattleBotQueueUpdate = sWorld.GetGameTime();
        for (uint32 queueType = BATTLEGROUND_QUEUE_AV; queueType < MAX_BATTLEGROUND_QUEUE_TYPES; ++queueType)
        {
            bool hasPlayerInQueue[MAX_BATTLEGROUND_BRACKETS] = {};
            uint32 queuedAllianceCount[MAX_BATTLEGROUND_BRACKETS] = {};
            uint32 queuedHordeCount[MAX_BATTLEGROUND_BRACKETS] = {};
            BattleGroundQueue const& bgQueue = sBattleGroundMgr.m_BattleGroundQueues[queueType];
            for (auto const& itr : bgQueue.m_QueuedPlayers)
            {
                //if (itr.second.GroupInfo->IsInvitedToBGInstanceGUID)
                //    continue;

                if (Player* pPlayer = sObjectAccessor.FindPlayer(itr.first))
                {
                    BattleGroundTypeId bgTypeId = itr.second.GroupInfo->BgTypeId;
                    if (bgTypeId != BattleGroundMgr::BGTemplateId(BattleGroundQueueTypeId(queueType)))
                        continue;

                    BattleGroundBracketId bgBracketId = pPlayer->GetBattleGroundBracketIdFromLevel(bgTypeId);
                    if (bgBracketId == BG_BRACKET_ID_NONE)
                        continue;

                    if (itr.second.GroupInfo->GroupTeam == ALLIANCE)
                        ++queuedAllianceCount[bgBracketId];
                    else
                        ++queuedHordeCount[bgBracketId];

                    if (!pPlayer->GetSession()->GetBot())
                        hasPlayerInQueue[bgBracketId] = true;
                }
            }

            // check players in BG
            HashMapHolder<Player>::MapType const& plist = sObjectAccessor.GetPlayers();
            for (const auto& itr : plist)
            {
                Player* pPlayer = itr.second;
                if (!pPlayer->InBattleGround())
                    continue;

                BattleGround* bg = pPlayer->GetBattleGround();
                if (bg && (bg->GetStatus() == STATUS_WAIT_JOIN || bg->GetStatus() == STATUS_IN_PROGRESS))
                {
                    BattleGroundTypeId bgTypeId = bg->GetTypeID();
                    if (bgTypeId != BattleGroundMgr::BGTemplateId(BattleGroundQueueTypeId(queueType)))
                        continue;

                    BattleGroundBracketId bgBracketId = bg->GetBracketId();
                    if (bgBracketId == BG_BRACKET_ID_NONE)
                        continue;

                    if (pPlayer->GetBGTeam() == ALLIANCE)
                        ++queuedAllianceCount[bgBracketId];
                    else
                        ++queuedHordeCount[bgBracketId];
                }
            }

            for (uint32 bracketId = BG_BRACKET_ID_FIRST; bracketId < MAX_BATTLEGROUND_BRACKETS; ++bracketId)
            {
                BattleGroundTypeId bgTypeId = BattleGroundMgr::BGTemplateId(BattleGroundQueueTypeId(queueType));
                BattleGround* bg = sBattleGroundMgr.GetBattleGroundTemplate(bgTypeId);
                ASSERT(bg);

                if (!queuedAllianceCount[bracketId] && !queuedHordeCount[bracketId])
                    continue;

                if (queuedHordeCount[bracketId] < bg->GetMaxPlayersPerTeam() || queuedAllianceCount[bracketId] < bg->GetMaxPlayersPerTeam())
                {
                    hasPlayerInQueue[bracketId] = true;

                    sLog.outString("BG %u bracket %u has %u ally players", bgTypeId, bracketId, queuedAllianceCount[bracketId]);
                    sLog.outString("BG %u bracket %u has %u hord players", bgTypeId, bracketId, queuedHordeCount[bracketId]);
                }
            }

            for (uint32 bracketId = BG_BRACKET_ID_FIRST; bracketId < MAX_BATTLEGROUND_BRACKETS; ++bracketId)
            {
                if (!hasPlayerInQueue[bracketId])
                    continue;

                if (!queuedAllianceCount[bracketId] && !queuedHordeCount[bracketId])
                    continue;

                BattleGroundTypeId bgTypeId = BattleGroundMgr::BGTemplateId(BattleGroundQueueTypeId(queueType));
                BattleGround* bg = sBattleGroundMgr.GetBattleGroundTemplate(bgTypeId);
                ASSERT(bg);

                uint32 const minLevel = Player::GetMinLevelForBattleGroundBracketId((BattleGroundBracketId)bracketId, bgTypeId);
                //ASSERT(minLevel <= PLAYER_MAX_LEVEL);
                uint32 const maxLevel = Player::GetMaxLevelForBattleGroundBracketId((BattleGroundBracketId)bracketId, bgTypeId);

                if (m_confBattleBotAutoJoin)
                {
                    for (uint32 i = queuedAllianceCount[bracketId]; i < bg->GetMinPlayersPerTeam(); ++i)
                    {
                        uint32 const botLevel = urand(minLevel, maxLevel);
                        AddBattleBot(BattleGroundQueueTypeId(queueType), ALLIANCE, botLevel, true);
                    }
                    for (uint32 i = queuedHordeCount[bracketId]; i < bg->GetMinPlayersPerTeam(); ++i)
                    {
                        uint32 const botLevel = urand(minLevel, maxLevel);
                        AddBattleBot(BattleGroundQueueTypeId(queueType), HORDE, botLevel, true);
                    }
                }
                if (m_confRandomBotAutoJoin)
                {
                    uint32 maxAllyBots = urand(0, std::min<uint32>(2, std::abs((int)bg->GetMaxPlayersPerTeam() - (int)queuedAllianceCount[bracketId])));
                    uint32 maxHordeBots = urand(0, std::min<uint32>(2, std::abs((int)bg->GetMaxPlayersPerTeam() - (int)queuedHordeCount[bracketId])));

                    if (queuedHordeCount[bracketId] >= bg->GetMaxPlayersPerTeam())
                        maxHordeBots = 0;
                    
                    if (queuedAllianceCount[bracketId] >= bg->GetMaxPlayersPerTeam())
                        maxAllyBots = 0;

                    for (uint32 i = 0; i < maxAllyBots; ++i)
                    {
                        uint32 const botLevel = urand(minLevel, maxLevel);
                        AddRandomBotForBg(BattleGroundQueueTypeId(queueType), ALLIANCE, botLevel);
                        sLog.outString("Adding Random BG Bot for Alliance BG %u Bracket %u...", bgTypeId, bracketId);
                    }
                    for (uint32 i = 0; i < maxHordeBots; ++i)
                    {
                        uint32 const botLevel = urand(minLevel, maxLevel);
                        AddRandomBotForBg(BattleGroundQueueTypeId(queueType), HORDE, botLevel);
                        sLog.outString("Adding Random BG Bot for Horde...BG %u Bracket %u", bgTypeId, bracketId);
                    }
                }
            }
        }
    }

    uint32 updatesCount = (m_elapsedTime - m_lastBotsRefresh) / confBotsRefresh;
    for (uint32 i = 0; i < updatesCount; ++i)
    {
        AddOrRemoveBot();
        m_lastBotsRefresh += confBotsRefresh;
    }
}

/*
Toutes les X minutes, ajoute ou enleve un bot.
*/
bool PlayerBotMgr::AddOrRemoveBot()
{
    uint32 alea = urand(confMinBots, confMaxBots);
    /*
    10 --- --- --- --- --- --- --- --- --- --- 20 bots
                NumActuel
    [alea ici : remove    ][    ici, add    ]
    */
    bool result = false;
    if (alea > m_stats.onlineCount)
        result = AddRandomBot();
    else
        result = DeleteRandomBot();

    // run Delete again to remove out of active zone bots
    DeleteRandomBotNotActiveZones();

    return result;
}

bool PlayerBotMgr::AddBot(PlayerBotAI* ai)
{
    // Find a correct accountid ?
    PlayerBotEntry* e = new PlayerBotEntry();
    e->ai = ai;
    e->accountId = GenBotAccountId();
    e->playerGUID = sObjectMgr.GeneratePlayerLowGuid();
    e->customBot = true;
    ai->botEntry = e;
    m_bots[e->playerGUID] = e;
    AddBot(e->playerGUID, false);
    return true;
}

bool PlayerBotMgr::AddBot(uint32 playerGUID, bool chatBot)
{
    uint32 accountId = 0;
    PlayerBotEntry *e = nullptr;
    std::map<uint32, PlayerBotEntry*>::iterator iter = m_bots.find(playerGUID);
    if (iter == m_bots.end())
        accountId = sObjectMgr.GetPlayerAccountIdByGUID(playerGUID);
    else
        accountId = iter->second->accountId;
    if (!accountId)
    {
        DETAIL_LOG("Compte du joueur %u introuvable ...", playerGUID);
        return false;
    }

    if (iter != m_bots.end())
        e = iter->second;
    else
    {
        DETAIL_LOG("Adding temporary PlayerBot.");
        e = new PlayerBotEntry();
        e->state        = PB_STATE_LOADING;
        e->playerGUID   = playerGUID;
        e->chance       = 10;
        e->accountId    = accountId;
        e->isChatBot    = chatBot;
        e->ai           = new PlayerBotAI(nullptr);
        m_bots[playerGUID] = e;
    }

    e->state = PB_STATE_LOADING;
    WorldSession *session = new WorldSession(accountId, nullptr, sAccountMgr.GetSecurity(accountId), 0, LOCALE_enUS, "<BOT>", 0);
    session->SetBot(e);
    BigNumber K;
    session->InitAntiCheatSession(&K);
    sWorld.AddSession(session);
    m_stats.loadingCount++;

    if (chatBot)
        AddTempBot(accountId, 20000);

    return true;
}

bool PlayerBotMgr::AddRandomBot()
{
    uint32 alea = urand(0, totalChance);
    uint32 counter = 0;
    uint32 maxBots = urand(confMinBotsAddOrRemove, confMaxBotsAddOrRemove);
    for (auto& botGuid : m_bots_vector)
    {
        if (counter > maxBots)
            break;

        auto it = std::pair(botGuid, m_bots[botGuid]);

        if (it.second->state != PB_STATE_OFFLINE)
            continue;

        if (it.second->customBot)
            continue;

        // not add in non active zones
        bool shouldAdd = true;
        bool activeZone = true;
        bool activeArea = true;
        uint32 oldAlea = alea;
        if (!it.second->loc.IsEmpty())
        {
            if (m_player_in_areas.find(it.second->areaID) == m_player_in_areas.end())
                activeArea = false;
            if (m_player_in_zones.find(it.second->zoneID) == m_player_in_zones.end())
                activeZone = false;
        }

        if (!activeZone)
            shouldAdd = false;
        if (shouldAdd && activeZone && !activeArea && !urand(0, 2))
            shouldAdd = false;

        if (shouldAdd && !it.second->loc.IsEmpty() && (activeZone || activeArea))
            alea = urand(0, 100);

        if (!shouldAdd)
            continue;

        if (activeZone && m_bot_in_zones[it.second->zoneID] >= confMaxInZone)
        {
            //sLog.outError("[Playerbot][Warning] Zone %u has %u bots, can't add more!", it.second->zoneID, m_bot_in_zones[it.second->zoneID]);
            continue;
        }

        if (it.second->zoneID != it.second->areaID && activeArea && m_bot_in_areas[it.second->areaID] >= confMaxInArea)
        {
            //sLog.outError("[Playerbot][Warning] Area %u has %u bots, can't add more!", it.second->areaID, m_bot_in_areas[it.second->areaID]);
            continue;
        }

        uint32 chance = it.second->chance;

        if (chance >= alea)
        {
            if (shouldAdd && !it.second->loc.IsEmpty())
            {
                const auto* zoneEntry = AreaEntry::GetById(it.second->zoneID);
                if (activeArea)
                    zoneEntry = AreaEntry::GetById(it.second->areaID);

                m_bot_in_areas[it.second->areaID]++;
                m_bot_in_zones[it.second->zoneID]++;

                std::string zoneName = zoneEntry ? zoneEntry->Name : "Unknown";
                sLog.outString("[PlayerBot][Login] Bot #%u (%s) added to active %s #%u (%s)", it.second->playerGUID, it.second->name, activeArea ? "Area" : "Zone", it.second->areaID, zoneName);
            }
            AddBot(it.first);
            counter++;
        }

        if (shouldAdd && !it.second->loc.IsEmpty() && (activeZone || activeArea))
            alea = oldAlea;

        alea -= chance;
    }

    return counter;
}

void PlayerBotMgr::AddTempBot(uint32 account, uint32 time)
{
    m_tempBots[account] = time;
}

void PlayerBotMgr::RefreshTempBot(uint32 account)
{
    if (m_tempBots.find(account) != m_tempBots.end())
    {
        uint32& delay = m_tempBots[account];
        if (delay < 1000)
            delay = 1000;
    }
}

bool PlayerBotMgr::DeleteBot(uint32 playerGUID)
{
    std::map<uint32, PlayerBotEntry*>::iterator iter = m_bots.find(playerGUID);
    if (iter == m_bots.end())
        return false;

    if (iter->second->state == PB_STATE_LOADING)
        m_stats.loadingCount--;
    else if (iter->second->state == PB_STATE_ONLINE)
        m_stats.onlineCount--;

    OnBotLogout(iter->second);
    return true;
}

bool PlayerBotMgr::DeleteRandomBot()
{
    if (m_stats.onlineCount < 1)
        return false;

    uint32 idDelete = urand(0, m_stats.onlineCount);
    uint32 onlinePassed = 0;
    std::map<uint32, PlayerBotEntry*>::iterator iter;
    for (iter = m_bots.begin(); iter != m_bots.end(); iter++)
    {
        if (!iter->second->customBot && !iter->second->isChatBot && iter->second->state == PB_STATE_ONLINE)
        {
            onlinePassed++;
            if (onlinePassed == idDelete)
            {
                Player* pPlayer = ObjectAccessor::FindPlayer(iter->first);
                if (pPlayer && pPlayer->GetGroup())
                {
                    continue;
                }

                auto botai = dynamic_cast<PlayerBotWorldPopulationAI*>(iter->second->ai);
                if (botai && botai->me && (botai->me->InBattleGround() || botai->me->InBattleGroundQueue()))
                    continue;

                OnBotLogout(iter->second);
                m_stats.onlineCount--;
                return true;
            }
        }
    }

    return false;
}

bool PlayerBotMgr::DeleteRandomBotNotActiveZones()
{
    if (m_stats.onlineCount < 1)
        return false;

    uint32 maxBots = urand(confMinBotsAddOrRemove, confMaxBotsAddOrRemove);
    uint32 counter = 0;

    if (m_player_in_zones.empty() && m_player_in_areas.empty())
        maxBots = confMaxBotsAddOrRemove;

    for (auto& botGuid : m_bots_vector)
    {
        auto iter = std::pair(botGuid, m_bots[botGuid]);
        if (!iter.second->loc.IsEmpty() && !iter.second->customBot && !iter.second->isChatBot && iter.second->state == PB_STATE_ONLINE)
        {
            Player* pPlayer = ObjectAccessor::FindPlayer(iter.first);
            if (pPlayer && pPlayer->GetGroup())
            {
                continue;
            }

            // delete first in non active zones
            bool shouldRemove = false;
            bool activeZone = true;
            bool activeArea = true;

            if (m_player_in_zones.find(iter.second->zoneID) == m_player_in_zones.end())
                activeZone = false;
            if (m_player_in_areas.find(iter.second->areaID) == m_player_in_areas.end())
                activeArea = false;

            if (!activeZone)
                shouldRemove = true;
            if (!shouldRemove && activeZone && !activeArea && !urand(0, 2))
                shouldRemove = true;

            auto botai = dynamic_cast<PlayerBotWorldPopulationAI*>(iter.second->ai);
            if (botai && botai->me && (botai->me->InBattleGround() || botai->me->InBattleGroundQueue()))
                shouldRemove = false;

            if (shouldRemove)
            {
                const auto* zoneEntry = AreaEntry::GetById(iter.second->zoneID);
                if (!activeArea)
                    zoneEntry = AreaEntry::GetById(iter.second->areaID);

                m_bot_in_areas[iter.second->areaID]--;
                m_bot_in_zones[iter.second->zoneID]--;

                std::string zoneName = zoneEntry ? zoneEntry->Name : "Unknown";
                sLog.outString("[PlayerBot][Logout] Bot #%u (%s) removed from inactive %s #%u (%s)", iter.second->playerGUID, iter.second->name, activeArea ? "Area" : "Zone", iter.second->areaID, zoneName);
                OnBotLogout(iter.second);
                m_stats.onlineCount--;

                counter++;
                if (counter >= maxBots)
                    return true;
            }
        }
    }

    return counter;
}

uint8 SelectRandomRaceForClass(uint8 playerClass, Team playerTeam)
{
    std::vector<uint32> validRaces;
    for (uint32 raceId = 1; raceId < MAX_RACES; ++raceId)
    {
        if (playerTeam == ALLIANCE)
        {
            if (!((1 << (raceId - 1)) & RACEMASK_ALLIANCE))
                continue;
        }
        else if (playerTeam == HORDE)
        {
            if (!((1 << (raceId - 1)) & RACEMASK_HORDE))
                continue;
        }

        if (sObjectMgr.GetPlayerInfo(raceId, playerClass))
            validRaces.push_back(raceId);
    }

    if (validRaces.empty())
        return 0;

    return SelectRandomContainerElement(validRaces);
}

void PlayerBotMgr::AddBattleBot(BattleGroundQueueTypeId queueType, Team botTeam, uint32 botLevel, bool temporary)
{
    std::vector<uint32> availableClasses = { CLASS_WARRIOR, CLASS_HUNTER, CLASS_ROGUE, CLASS_MAGE, CLASS_WARLOCK, CLASS_PRIEST, CLASS_DRUID };
    if (botTeam == HORDE)
        availableClasses.push_back(CLASS_SHAMAN);
    else
        availableClasses.push_back(CLASS_PALADIN);

    uint8 botClass = SelectRandomContainerElement(availableClasses);
    uint8 botRace = SelectRandomRaceForClass(botClass, botTeam);
    if (!botRace)
        return;

    // Spawn bot on GM Island
    uint32 const instanceId = sMapMgr.GetContinentInstanceId(1, 16224.356f, 16284.763f);
    BattleBotAI* ai = new BattleBotAI(botRace, botClass, botLevel, 1, instanceId, 16224.356f, 16284.763f, 13.175f, 4.56f, queueType, temporary);
    AddBot(ai);

    if (botTeam == ALLIANCE)
    {
        //sWorld.SendWorldTextToBGAndQueue(LANG_ALLIANCE_BATTLEBOT_ADDED, botLevel, queueType, botLevel, queueType);
        sLog.outString("[PlayerBotMgr] Adding level %u alliance battlebot to bg queue %u.", botLevel, queueType);
    }
    else
    {
        //sWorld.SendWorldTextToBGAndQueue(LANG_HORDE_BATTLEBOT_ADDED, botLevel, queueType, botLevel, queueType);
        sLog.outString("[PlayerBotMgr] Adding level %u horde battlebot to bg queue %u.", botLevel, queueType);
    }
}

void PlayerBotMgr::DeleteBattleBots()
{
    for (auto const& itr : m_bots)
    {
        if (dynamic_cast<BattleBotAI*>(itr.second->ai))
            itr.second->requestRemoval = true;
    }
    m_confBattleBotAutoJoin = false;
}

void PlayerBotMgr::AddRandomBotForBg(BattleGroundQueueTypeId queueType, Team botTeam, uint32 botLevel)
{
    for (auto& botGuid : m_bots_vector)
    {
        auto iter = std::pair(botGuid, m_bots[botGuid]);
        if (!iter.second->loc.IsEmpty() && !iter.second->customBot && !iter.second->isChatBot && iter.second->state != PB_STATE_LOADING)
        {
            Player* pPlayer = ObjectAccessor::FindPlayer(iter.first);
            if (pPlayer)
            {
                if (pPlayer->GetGroup())
                    continue;
                if (pPlayer->IsInCombat())
                    continue;
            }

            if (auto* cache = sObjectMgr.GetPlayerDataByGUID(iter.first))
            {
                if (Player::TeamForRace(cache->uiRace) != botTeam)
                    continue;

                if (cache->uiLevel != botLevel)
                    continue;

                if (dynamic_cast<PlayerBotWorldPopulationAI*>(iter.second->ai))
                {
                    m_bot_in_areas[iter.second->areaID]++;
                    m_bot_in_zones[iter.second->zoneID]++;

                    if (iter.second->state == PB_STATE_OFFLINE)
                    {
                        AddBot(iter.first);
                    }

                    auto botai = dynamic_cast<PlayerBotWorldPopulationAI*>(iter.second->ai);
                    botai->m_battlegroundId = queueType;
                    return;
                }
            }
        }
    }
}

bool PlayerBotMgr::ForceAccountConnection(WorldSession* sess)
{
    if (sess->GetBot())
        return sess->GetBot()->state != PB_STATE_OFFLINE;

    // Bots temporaires
    return m_tempBots.find(sess->GetAccountId()) != m_tempBots.end();
}

bool PlayerBotMgr::IsPermanentBot(uint32 playerGUID)
{
    std::map<uint32, PlayerBotEntry*>::iterator iter = m_bots.find(playerGUID);
    return iter != m_bots.end();
}

bool PlayerBotMgr::IsChatBot(uint32 playerGuid)
{
    std::map<uint32, PlayerBotEntry*>::iterator iter = m_bots.find(playerGuid);
    return iter != m_bots.end() && iter->second->isChatBot;
}

void PlayerBotMgr::AddAllBots()
{
    std::map<uint32, PlayerBotEntry*>::iterator it;
    for (it = m_bots.begin(); it != m_bots.end(); it++)
    {
        if (!it->second->isChatBot && it->second->state == PB_STATE_OFFLINE)
            AddBot(it->first);
    }
}
