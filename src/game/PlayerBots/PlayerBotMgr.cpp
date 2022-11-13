#include "Common.h"
#include "Policies/SingletonImp.h"
#include "PlayerBotMgr.h"
#include "ObjectMgr.h"
#include "World.h"
#include "WorldSession.h"
#include "AccountMgr.h"
#include "Config/Config.h"
#include "Chat.h"
#include "Player.h"
#include "Group.h"
#include "PlayerBotAI.h"
#include "PartyBotAI.h"
#include "BattleBotAI.h"
#include "BattleBotWaypoints.h"
#include "WorldBotAI.h"
#include "WorldBotWaypoints.h"
#include "Language.h"
#include "Spell.h"

INSTANTIATE_SINGLETON_1(PlayerBotMgr);
std::vector<WorldBotsCollection> myBots;
std::vector<WorldBotsCollection> myHordeBots;
std::vector<WorldBotsCollection> myAllianceBots;
std::vector<WorldBotsAreaPOI> myAreaPOI;

PlayerBotMgr::PlayerBotMgr()
{
    m_totalChance = 0;
    m_maxAccountId = 0;

    // Config
    m_confMinRandomBots         = 3;
    m_confMaxRandomBots         = 10;
    m_confRandomBotsRefresh     = 60000;
    m_confUpdateDiff            = 10000;
    m_confEnableRandomBots      = false;
    m_confDebug                 = false;

    // Time
    m_elapsedTime = 0;
    m_lastBotsRefresh = 0;
    m_lastUpdate = 0;
}

PlayerBotMgr::~PlayerBotMgr()
{

}

void PlayerBotMgr::LoadConfig()
{
    m_confEnableRandomBots = sConfig.GetBoolDefault("RandomBot.Enable", true);
    m_confMinRandomBots = sConfig.GetIntDefault("RandomBot.MinBots", 3);
    m_confMaxRandomBots = sConfig.GetIntDefault("RandomBot.MaxBots", 10);
    m_confRandomBotsRefresh = sConfig.GetIntDefault("RandomBot.Refresh", 60000);
    m_confAllowSaving = sConfig.GetBoolDefault("PlayerBot.AllowSaving", true);
    m_confDebug = sConfig.GetBoolDefault("PlayerBot.Debug", false);
    m_confUpdateDiff = sConfig.GetIntDefault("PlayerBot.UpdateMs", 10000);

    if (!sWorld.getConfig(CONFIG_BOOL_FORCE_LOGOUT_DELAY))
        m_tempBots.clear();
}

void PlayerBotMgr::Load()
{
    // 1- Clean
    DeleteAll();
    m_bots.clear();
    m_tempBots.clear();
    m_totalChance = 0;

    // 2- Configuration
    LoadConfig();

    // 3- Load usable account ID
    QueryResult* result = LoginDatabase.PQuery(
                              "SELECT MAX(`id`)"
                              " FROM `account`");
    if (!result)
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "Playerbot: unable to load max account id.");
        return;
    }
    Field* fields = result->Fetch();
    m_maxAccountId = fields[0].GetUInt32() + 10000;
    delete result;

    // 4- LoadFromDB
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, ">> [PlayerBotMgr] Loading Bots ...");
    result = CharacterDatabase.PQuery(
                 "SELECT char_guid, chance, ai"
                 " FROM playerbot");
    if (!result)
        sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "Table `playerbot` is empty.");
    else
    {
        do
        {
            fields = result->Fetch();
            uint32 guid = fields[0].GetUInt32();
            uint32 acc = GenBotAccountId();
            uint32 chance = fields[1].GetUInt32();

            std::shared_ptr<PlayerBotEntry> entry = std::make_shared<PlayerBotEntry>(guid, acc, chance);
            entry->ai.reset(CreatePlayerBotAI(fields[2].GetCppString()));
            entry->ai->botEntry = entry.get();
            if (!sObjectMgr.GetPlayerNameByGUID(guid, entry->name))
                entry->name = "<Unknown>";
            entry->ai->OnBotEntryLoad(entry.get());
            m_bots.insert({ entry->playerGUID, entry });
            m_totalChance += chance;
        }
        while (result->NextRow());
        delete result;
        sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "%u bots loaded", m_bots.size());
    }

    // 5- Check config/DB
    if (m_confMinRandomBots >= m_bots.size() && !m_bots.empty())
        m_confMinRandomBots = m_bots.size() - 1;
    if (m_confMaxRandomBots > m_bots.size())
        m_confMaxRandomBots = m_bots.size();
    if (m_confMaxRandomBots <= m_confMinRandomBots)
        m_confMaxRandomBots = m_confMinRandomBots + 1;

    // 6- Start initial bots
    if (m_confEnableRandomBots)
    {
        for (uint32 i = 0; i < m_confMinRandomBots; i++)
            AddRandomBot();
    }

    // 7- Fill stats info
    m_stats.confMaxOnline = m_confMaxRandomBots;
    m_stats.confMinOnline = m_confMinRandomBots;
    m_stats.totalBots = m_bots.size();
    m_stats.confRandomBotsRefresh = m_confRandomBotsRefresh;
    m_stats.confUpdateDiff = m_confUpdateDiff;

    // 8- Show stats if debug
    if (m_confDebug)
    {
        sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "[PlayerBotMgr] Between %u and %u bots online", m_confMinRandomBots, m_confMaxRandomBots);
        sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "[PlayerBotMgr] %u now loading", m_stats.loadingCount);
    }

    // World Bots
    bool worldBotEnabled = sWorld.getConfig(CONFIG_BOOL_WORLDBOT);
    if (worldBotEnabled)
    {
        WorldBotAI* ai = nullptr;

        // Load paths
        ai->LoadDBWaypoints();

        // Load db characters
        m_useWorldBotLoader = sWorld.getConfig(CONFIG_BOOL_WORLDBOT_LOADER);
        if (m_useWorldBotLoader)
        {
            WorldBotLoader();
            WorldBotCreator();
        }

        // Load Area POI's
        WorldBotLoadAreaPOI();

        // Load chat
        ai->LoadBotChat();
    }
}

void PlayerBotMgr::DeleteAll()
{
    m_stats.onlineCount = 0;
    m_stats.loadingCount = 0;

    for (auto i = m_bots.begin(); i != m_bots.end(); i++)
    {
        if (i->second->state != PB_STATE_OFFLINE)
        {
            OnBotLogout(i->second.get());
            m_totalChance += i->second->chance;
        }
    }
    m_tempBots.clear();

    if (m_confDebug)
        sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "[PlayerBotMgr] Deleting all bots [OK]");
}

void PlayerBotMgr::OnBotLogin(PlayerBotEntry *e)
{
    e->state = PB_STATE_ONLINE;
    if (m_confDebug)
        sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "[PlayerBot][Login]  '%s' GUID:%u Acc:%u", e->name.c_str(), e->playerGUID, e->accountId);
}
void PlayerBotMgr::OnBotLogout(PlayerBotEntry *e)
{
    e->state = PB_STATE_OFFLINE;
    if (m_confDebug)
        sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "[PlayerBot][Logout] '%s' GUID:%u Acc:%u", e->name.c_str(), e->playerGUID, e->accountId);
}

void PlayerBotMgr::OnPlayerInWorld(Player* player)
{
    if (PlayerBotEntry* e = player->GetSession()->GetBot())
    {
        player->SetAI(e->ai.get());
        e->ai->SetPlayer(player);
        e->ai->OnPlayerLogin();
    }
}

void PlayerBotMgr::Update(uint32 diff)
{
    // Temporary bots.
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
            // Update of "chatBot" too.
            for (auto iter = m_bots.begin(); iter != m_bots.end(); ++iter)
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
    if (!((m_elapsedTime - m_lastUpdate) > m_confUpdateDiff))
        return; // No need to update
    m_lastUpdate = m_elapsedTime;

    for (auto iter = m_bots.begin(); iter != m_bots.end();)
    {
        if (!m_confEnableRandomBots && !iter->second->customBot)
        {
            ++iter;
            continue;
        }

        if (iter->second->state == PB_STATE_ONLINE)
        {
            if (!iter->second->m_pendingResponses.empty() &&
                iter->second->ai && iter->second->ai->me)
            {
                std::vector<uint16> pendingResponses = iter->second->m_pendingResponses;
                iter->second->m_pendingResponses.clear();
                for (const auto opcode : pendingResponses)
                {
                    iter->second->ai->SendFakePacket(opcode);
                }
            }

            if (iter->second->requestRemoval)
            {
                if (iter->second->ai && iter->second->ai->me)
                    iter->second->ai->me->RemoveFromGroup();

                DeleteBot(iter);

                if (WorldSession* sess = sWorld.FindSession(iter->second->accountId))
                    sess->LogoutPlayer(m_confAllowSaving);

                iter->second->requestRemoval = false;

                if (iter->second->customBot)
                    iter = m_bots.erase(iter);
                else
                    ++iter;
                continue;
            }
        }

        // Connection of pending bots
        if (iter->second->state != PB_STATE_LOADING)
        {
            ++iter;
            continue;
        }

        WorldSession* sess = sWorld.FindSession(iter->second->accountId);

        if (!sess)
        {
            // This may happen : just wait for the World to add the session.
            ++iter;
            continue;
        }

        if (iter->second->ai->OnSessionLoaded(iter->second.get(), sess))
        {
            OnBotLogin(iter->second.get());
            m_stats.loadingCount--;

            if (iter->second->isChatBot)
                m_stats.onlineChat++;
            else
                m_stats.onlineCount++;
        }
        else
        {
            sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "PLAYERBOT: Unable to load session id %u", iter->second->accountId);
            DeleteBot(iter);

            if (iter->second->customBot)
                iter = m_bots.erase(iter);
            else
                ++iter;
            continue;
        }

        ++iter;
    }

    if (!m_confEnableRandomBots)
        return;

    /*uint32 updatesCount = (m_elapsedTime - m_lastBotsRefresh) / m_confRandomBotsRefresh;
    for (uint32 i = 0; i < updatesCount; ++i)
    {
        AddOrRemoveBot();
        m_lastBotsRefresh += m_confRandomBotsRefresh;
    }*/
}

/*
Toutes les X minutes, ajoute ou enleve un bot.
*/
bool PlayerBotMgr::AddOrRemoveBot()
{
    uint32 alea = urand(m_confMinRandomBots, m_confMaxRandomBots);
    /*
    10 --- --- --- --- --- --- --- --- --- --- 20 bots
                NumActuel
    [alea ici : remove    ][    ici, add    ]
    */
    if (alea > m_stats.onlineCount)
        return AddRandomBot();
    else
        return DeleteRandomBot();

}

bool PlayerBotMgr::AddBot(PlayerBotAI* ai)
{
    // Find a correct accountid ?
    std::shared_ptr<PlayerBotEntry> e = std::make_shared<PlayerBotEntry>();
    e->ai.reset(ai);
    e->accountId = GenBotAccountId();
    e->playerGUID = sObjectMgr.GeneratePlayerLowGuid();
    e->customBot = true;
    ai->botEntry = e.get();
    m_bots.insert({ e->playerGUID, e });
    return AddBot(e->playerGUID, false);
}

bool PlayerBotMgr::AddBot(uint32 playerGUID, bool chatBot, PlayerBotAI* pAI)
{
    uint32 accountId = 0;
    auto iter = m_bots.find(playerGUID);
    if (iter == m_bots.end())
        accountId = sObjectMgr.GetPlayerAccountIdByGUID(playerGUID);
    else
        accountId = iter->second->accountId;

    if (!accountId)
    {
        sLog.Out(LOG_BASIC, LOG_LVL_DETAIL, "Compte du joueur %u introuvable ...", playerGUID);
        return false;
    }

    if (sWorld.FindSession(accountId))
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "[PlayerBotMgr] Account %u is already online!", accountId);
        return false;
    }

    std::shared_ptr<PlayerBotEntry> e;
    if (iter != m_bots.end())
    {
        e = iter->second;

        if (pAI) // new AI
        {
            e->ai.reset(pAI);
            e->customBot = true;
        }
    }
    else
    {
        sLog.Out(LOG_BASIC, LOG_LVL_DETAIL, "[PlayerBotMgr] Adding temporary PlayerBot with GUID %u.", playerGUID);
        e = std::make_shared<PlayerBotEntry>();
        e->state        = PB_STATE_LOADING;
        e->playerGUID   = playerGUID;
        e->chance       = 10;
        e->accountId    = accountId;
        e->isChatBot    = chatBot;
        if (pAI)
        {
            e->ai.reset(pAI);
            e->customBot = true;
        }
        else
        {
            e->ai.reset(new PlayerBotAI(nullptr));
            e->customBot = false;
        }
        m_bots.insert({ playerGUID , e });
    }

    e->ai->botEntry = e.get();
    e->state = PB_STATE_LOADING;
    WorldSession* session = new WorldSession(accountId, nullptr, sAccountMgr.GetSecurity(accountId), 0, LOCALE_enUS);
    session->SetBot(e);
    sWorld.AddSession(session);
    m_stats.loadingCount++;
    if (chatBot)
        AddTempBot(accountId, 20000);

    return true;
}

bool PlayerBotMgr::AddRandomBot()
{
    uint32 alea = urand(0, m_totalChance);
    bool done = false;
    for (auto it = m_bots.begin(); it != m_bots.end() && !done; it++)
    {
        if (it->second->state != PB_STATE_OFFLINE)
            continue;
        if (it->second->customBot)
            continue;
        uint32 chance = it->second->chance;

        if (chance >= alea)
        {
            AddBot(it->first);
            done = true;
        }
        alea -= chance;
    }
    return done;
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
    auto iter = m_bots.find(playerGUID);
    if (iter == m_bots.end())
        return false;

    return DeleteBot(iter);
}

bool PlayerBotMgr::DeleteBot(std::map<uint32, std::shared_ptr<PlayerBotEntry>>::iterator iter)
{
    if (iter->second->state == PB_STATE_LOADING)
        m_stats.loadingCount--;
    else if (iter->second->state == PB_STATE_ONLINE)
        m_stats.onlineCount--;

    OnBotLogout(iter->second.get());
    return true;
}

bool PlayerBotMgr::DeleteRandomBot()
{
    if (m_stats.onlineCount < 1)
        return false;
    uint32 idDelete = urand(0, m_stats.onlineCount);
    uint32 onlinePassed = 0;
    std::map<uint32, PlayerBotEntry*>::iterator iter;
    for (auto iter = m_bots.begin(); iter != m_bots.end(); iter++)
    {
        if (!iter->second->customBot && !iter->second->isChatBot && iter->second->state == PB_STATE_ONLINE)
        {
            onlinePassed++;
            if (onlinePassed == idDelete)
            {
                OnBotLogout(iter->second.get());
                m_stats.onlineCount--;
                return true;
            }
        }
    }
    return false;
}

bool PlayerBotMgr::ForceAccountConnection(WorldSession* sess)
{
    if (sess->GetBot())
        return sess->GetBot()->state != PB_STATE_OFFLINE;

    // Temporary bots.
    return m_tempBots.find(sess->GetAccountId()) != m_tempBots.end();
}

bool PlayerBotMgr::IsPermanentBot(uint32 playerGUID)
{
    auto iter = m_bots.find(playerGUID);
    return iter != m_bots.end();
}

bool PlayerBotMgr::IsChatBot(uint32 playerGuid)
{
    auto iter = m_bots.find(playerGuid);
    return iter != m_bots.end() && iter->second->isChatBot;
}

void PlayerBotMgr::AddAllBots()
{
    for (auto it = m_bots.begin(); it != m_bots.end(); it++)
    {
        if (!it->second->isChatBot && it->second->state == PB_STATE_OFFLINE)
            AddBot(it->first);
    }
}

bool ChatHandler::HandleBotReloadCommand(char * args)
{
    sPlayerBotMgr.Load();
    SendSysMessage("PlayerBot system reloaded");
    return true;
}

bool ChatHandler::HandleBotAddRandomCommand(char * args)
{
    uint32 count = 1;
    char* sCount = strtok((char*)args, " ");
    if (sCount)
        count = uint32(atoi(sCount));
    for (uint32 i = 0; i < count; ++i)
        sPlayerBotMgr.AddRandomBot();
    PSendSysMessage("%u bots added", count);
    return true;
}

bool ChatHandler::HandleBotStopCommand(char * args)
{
    sPlayerBotMgr.DeleteAll();
    SendSysMessage("Tous les bots ont ete decharges.");
    return true;
}

bool ChatHandler::HandleBotAddAllCommand(char * args)
{
    sPlayerBotMgr.AddAllBots();
    SendSysMessage("Tous les bots ont ete connecte");
    return true;
}

bool ChatHandler::HandleBotAddCommand(char* args)
{
    uint32 guid = 0;
    char *charname = nullptr;
    if (*args)
    {
        charname = strtok((char*)args, " ");
        if (charname && strcmp(charname, "") == 0)
            return false;

        guid = sObjectMgr.GetPlayerGuidByName(charname).GetCounter();
        if (!guid)
        {
            PSendSysMessage("Player not found : '%s'", charname);
            SetSentErrorMessage(true);
            return false;
        }
    }
    if (!guid || !sPlayerBotMgr.AddBot(guid))
    {
        SendSysMessage("[PlayerBotMgr] Unable to load bot.");
        return true;
    }
    PSendSysMessage("[PlayerBotMgr] Bot added : '%s', GUID=%u", charname ? charname : "NULL", guid);
    return true;
}

bool ChatHandler::HandleBotDeleteCommand(char * args)
{
    char *charname = strtok((char*)args, " ");

    if (!charname || strcmp(charname, "") == 0)
    {
        SendSysMessage("Syntaxe : $nomDuJoueur");
        SetSentErrorMessage(true);
        return false;
    }
    uint32 lowGuid = sObjectMgr.GetPlayerGuidByName(charname).GetCounter();
    if (!lowGuid)
    {
        PSendSysMessage("Unable to find player: '%s'", charname);
        SetSentErrorMessage(true);
        return false;
    }
    if (sPlayerBotMgr.DeleteBot(lowGuid))
    {
        PSendSysMessage("Bot %s (GUID:%u) disconnected.", charname, lowGuid);
        return true;
    }
    else
    {
        PSendSysMessage("Bot %s (GUID:%u) : unable to disconnect.", charname, lowGuid);
        SetSentErrorMessage(true);
        return false;
    }
}

bool ChatHandler::HandleBotInfoCommand(char * args)
{
    uint32 online = sWorld.GetActiveSessionCount();

    PlayerBotStats stats = sPlayerBotMgr.GetStats();
    SendSysMessage("-- PlayerBot stats --");
    PSendSysMessage("Min:%u Max:%u Total:%u", stats.confMinOnline, stats.confMaxOnline, stats.totalBots);
    PSendSysMessage("Loading : %u, Online : %u, Chat : %u", stats.loadingCount, stats.onlineCount, stats.onlineChat);
    PSendSysMessage("%up + %ub = %u",
                    (online - stats.onlineCount), stats.onlineCount, online);
    return true;
}

bool ChatHandler::HandleBotStartCommand(char * args)
{
    sPlayerBotMgr.Start();
    return true;
}

uint8 SelectRandomRaceForClass(uint8 playerClass, Team playerTeam)
{
    switch (playerClass)
    {
        case CLASS_WARRIOR:
        {
            if (playerTeam == ALLIANCE)
                return PickRandomValue(RACE_HUMAN, RACE_DWARF, RACE_NIGHTELF, RACE_GNOME);
            else
                return PickRandomValue(RACE_ORC, RACE_UNDEAD, RACE_TAUREN, RACE_TROLL);
            break;
        }
        case CLASS_PALADIN:
        {
            return urand(0, 1) ? RACE_HUMAN : RACE_DWARF;
        }
        case CLASS_HUNTER:
        {
            if (playerTeam == ALLIANCE)
                return urand(0, 1) ? RACE_DWARF : RACE_NIGHTELF;
            else
                return PickRandomValue(RACE_ORC, RACE_TAUREN, RACE_TROLL);
            break;
        }
        case CLASS_ROGUE:
        {
            if (playerTeam == ALLIANCE)
                return PickRandomValue(RACE_HUMAN, RACE_DWARF, RACE_NIGHTELF, RACE_GNOME);
            else
                return PickRandomValue(RACE_ORC, RACE_UNDEAD, RACE_TROLL);
            break;
        }
        case CLASS_PRIEST:
        {
            if (playerTeam == ALLIANCE)
                return PickRandomValue(RACE_HUMAN, RACE_DWARF, RACE_NIGHTELF);
            else
                return urand(0, 1) ? RACE_UNDEAD : RACE_TROLL;
            break;
        }
        case CLASS_SHAMAN:
        {
            return PickRandomValue(RACE_ORC, RACE_TAUREN, RACE_TROLL);
        }
        case CLASS_MAGE:
        {
            if (playerTeam == ALLIANCE)
                return urand(0, 1) ? RACE_HUMAN : RACE_GNOME;
            else
                return urand(0, 1) ? RACE_UNDEAD : RACE_TROLL;
            break;
        }
        case CLASS_WARLOCK:
        {
            if (playerTeam == ALLIANCE)
                return urand(0, 1) ? RACE_HUMAN : RACE_GNOME;
            else
                return urand(0, 1) ? RACE_ORC : RACE_UNDEAD;
            break;
        }
        case CLASS_DRUID:
        {
            return playerTeam == ALLIANCE ? RACE_NIGHTELF : RACE_TAUREN;
        }
    }

    return 0;
}

bool ChatHandler::PartyBotAddRequirementCheck(Player const* pPlayer, Player const* pTarget)
{
    if (pPlayer->IsTaxiFlying())
    {
        SendSysMessage("Cannot add bots while flying.");
        return false;
    }

    // Spawning bots inside BG will cause server crash on BG end.
    if (pPlayer->InBattleGround())
    {
        SendSysMessage("Cannot add bots inside battlegrounds.");
        return false;
    }

    if (pPlayer->GetGroup() && (pPlayer->GetGroup()->IsFull() || sWorld.getConfig(CONFIG_UINT32_PARTY_BOT_MAX_BOTS) &&
        (pPlayer->GetGroup()->GetMembersCount() - 1 >= sWorld.getConfig(CONFIG_UINT32_PARTY_BOT_MAX_BOTS))))
    {
        SendSysMessage("Cannot add more bots. Group is full.");
        return false;
    }

    if (Map const* pMap = pPlayer->GetMap())
    {
        if (pMap->IsDungeon() &&
            pMap->GetPlayers().getSize() >= pMap->GetMapEntry()->maxPlayers)
        {
            SendSysMessage("Cannot add more bots. Instance is full.");
            return false;
        }
    }

    if (pTarget && pTarget->GetTeam() != pPlayer->GetTeam())
    {
        SendSysMessage("Cannot clone enemy faction characters.");
        return false;
    }

    // Restrictions when the command is made public to avoid abuse.
    if (GetSession()->GetSecurity() <= SEC_PLAYER && !sWorld.getConfig(CONFIG_BOOL_PARTY_BOT_SKIP_CHECKS))
    {
        if (pPlayer->IsDead())
        {
            SendSysMessage("Cannot add bots while dead.");
            return false;
        }

        if (pPlayer->IsInCombat())
        {
            SendSysMessage("Cannot add bots while in combat.");
            return false;
        }

        if (pPlayer->GetMap()->IsDungeon())
        {
            SendSysMessage("Cannot add bots while inside instances.");
            return false;
        }

        // Clone command.
        if (pTarget)
        {
            if (pTarget->IsDead())
            {
                SendSysMessage("Cannot clone dead characters.");
                return false;
            }

            if (pTarget->IsInCombat())
            {
                SendSysMessage("Cannot clone characters that are in combat.");
                return false;
            }

            if (pTarget->GetLevel() > pPlayer->GetLevel() + 10)
            {
                SendSysMessage("Cannot clone higher level characters.");
                return false;
            }
        }
    }

    return true;
}

bool ChatHandler::HandlePartyBotAddCommand(char* args)
{
    Player* pPlayer = m_session->GetPlayer();
    if (!pPlayer)
        return false;

    if (!PartyBotAddRequirementCheck(pPlayer, nullptr))
    {
        SetSentErrorMessage(true);
        return false;
    }

    if (!args)
    {
        SendSysMessage("Incorrect syntax. Expected role or class.");
        SetSentErrorMessage(true);
        return false;
    }

    uint8 botClass = 0;
    uint32 botLevel = pPlayer->GetLevel();
    CombatBotRoles botRole = ROLE_INVALID;

    if (char* arg1 = ExtractArg(&args))
    {
        std::string option = arg1;
        if (option == "warrior")
            botClass = CLASS_WARRIOR;
        else if (option == "paladin" && pPlayer->GetTeam() == ALLIANCE)
            botClass = CLASS_PALADIN;
        else if (option == "hunter")
            botClass = CLASS_HUNTER;
        else if (option == "rogue")
            botClass = CLASS_ROGUE;
        else if (option == "priest")
            botClass = CLASS_PRIEST;
        else if (option == "shaman" && pPlayer->GetTeam() == HORDE)
            botClass = CLASS_SHAMAN;
        else if (option == "mage")
            botClass = CLASS_MAGE;
        else if (option == "warlock")
            botClass = CLASS_WARLOCK;
        else if (option == "druid")
            botClass = CLASS_DRUID;
        else if (option == "dps")
        {
            botClass = PickRandomValue(CLASS_WARRIOR, CLASS_HUNTER, CLASS_ROGUE, CLASS_MAGE, CLASS_WARLOCK);
            botRole = CombatBotBaseAI::IsMeleeDamageClass(botClass) ? ROLE_MELEE_DPS : ROLE_RANGE_DPS;
        }
        else if (option == "healer")
        {
            std::vector<uint32> dpsClasses = { CLASS_PRIEST, CLASS_DRUID };
            if (pPlayer->GetTeam() == HORDE)
                dpsClasses.push_back(CLASS_SHAMAN);
            else
                dpsClasses.push_back(CLASS_PALADIN);
            botClass = SelectRandomContainerElement(dpsClasses);
            botRole = ROLE_HEALER;
        }
        else if (option == "tank")
        {
            botClass = CLASS_WARRIOR;
            botRole = ROLE_TANK;
        }

        // Prevent setting a custom level for bots unless the account is a GM or skipping checks is enabled.
        if (GetSession()->GetSecurity() > SEC_PLAYER || sWorld.getConfig(CONFIG_BOOL_PARTY_BOT_SKIP_CHECKS))
            ExtractUInt32(&args, botLevel);
    }

    if (!botClass)
    {
        SendSysMessage("Incorrect syntax. Expected role or class.");
        SetSentErrorMessage(true);
        return false;
    }

    uint8 botRace = SelectRandomRaceForClass(botClass, pPlayer->GetTeam());

    float x, y, z;
    pPlayer->GetNearPoint(pPlayer, x, y, z, 0, 5.0f, frand(0.0f, 6.0f));

    PartyBotAI* ai = new PartyBotAI(pPlayer, nullptr, botRole, botRace, botClass, botLevel, pPlayer->GetMapId(), pPlayer->GetMap()->GetInstanceId(), x, y, z, pPlayer->GetOrientation());
    if (sPlayerBotMgr.AddBot(ai))
        SendSysMessage("New party bot added.");
    else
    {
        SendSysMessage("Error spawning bot.");
        SetSentErrorMessage(true);
        return false;
    }

    return true;
}

bool ChatHandler::HandlePartyBotCloneCommand(char* args)
{
    Player* pPlayer = m_session->GetPlayer();
    if (!pPlayer)
        return false;

    Player* pTarget = GetSelectedPlayer();
    if (!pTarget)
    {
        SendSysMessage(LANG_NO_CHAR_SELECTED);
        SetSentErrorMessage(true);
        return false;
    }

    if (!PartyBotAddRequirementCheck(pPlayer, pTarget))
    {
        SetSentErrorMessage(true);
        return false;
    }

    uint8 botRace = pTarget->GetRace();
    uint8 botClass = pTarget->GetClass();

    float x, y, z;
    pPlayer->GetNearPoint(pPlayer, x, y, z, 0, 5.0f, frand(0.0f, 6.0f));

    PartyBotAI* ai = new PartyBotAI(pPlayer, pTarget, ROLE_INVALID, botRace, botClass, pPlayer->GetLevel(), pPlayer->GetMapId(), pPlayer->GetMap()->GetInstanceId(), x, y, z, pPlayer->GetOrientation());
    if (sPlayerBotMgr.AddBot(ai))
        SendSysMessage("New party bot added.");
    else
    {
        SendSysMessage("Error spawning bot.");
        SetSentErrorMessage(true);
        return false;
    }

    return true;
}

bool ChatHandler::HandlePartyBotLoadCommand(char* args)
{
    Player* pPlayer = m_session->GetPlayer();
    if (!pPlayer)
        return false;

    std::string name = ExtractPlayerNameFromLink(&args);
    if (name.empty())
    {
        SendSysMessage(LANG_PLAYER_NOT_FOUND);
        SetSentErrorMessage(true);
        return false;
    }

    ObjectGuid guid = sObjectMgr.GetPlayerGuidByName(name).GetCounter();
    if (!guid)
    {
        SendSysMessage(LANG_PLAYER_NOT_FOUND);
        SetSentErrorMessage(true);
        return false;
    }

    if (sObjectAccessor.FindPlayerNotInWorld(guid))
    {
        SendSysMessage("Player is already online!");
        SetSentErrorMessage(true);
        return false;
    }

    float x, y, z;
    pPlayer->GetNearPoint(pPlayer, x, y, z, 0, 5.0f, frand(0.0f, 6.0f));

    PartyBotAI* pAI = new PartyBotAI(pPlayer, pPlayer->GetMapId(), pPlayer->GetMap()->GetInstanceId(), x, y, z, pPlayer->GetOrientation());

    if (!sPlayerBotMgr.AddBot(guid, false, pAI))
    {
        delete pAI;
        SendSysMessage("Error spawning bot.");
        SetSentErrorMessage(true);
        return false;
    }

    PSendSysMessage("Loading %s as party bot.", name.c_str());
    return true;
}

bool ChatHandler::HandlePartyBotSetRoleCommand(char* args)
{
    if (!args)
        return false;

    Player* pTarget = GetSelectedPlayer();
    if (!pTarget)
    {
        SendSysMessage(LANG_NO_CHAR_SELECTED);
        SetSentErrorMessage(true);
        return false;
    }

    CombatBotRoles role = ROLE_INVALID;
    std::string roleStr = args;

    if (roleStr == "tank")
        role = ROLE_TANK;
    else if (roleStr == "dps")
        role = CombatBotBaseAI::IsMeleeDamageClass(pTarget->GetClass()) ? ROLE_MELEE_DPS : ROLE_RANGE_DPS;
    else if (roleStr == "meleedps")
        role = ROLE_MELEE_DPS;
    else if (roleStr == "rangedps")
        role = ROLE_RANGE_DPS;
    else if (roleStr == "healer")
        role = ROLE_HEALER;

    if (role == ROLE_INVALID)
        return false;

    if (pTarget->AI())
    {
        if (PartyBotAI* pAI = dynamic_cast<PartyBotAI*>(pTarget->AI()))
        {
            pAI->m_role = role;
            pAI->ResetSpellData();
            pAI->PopulateSpellData();
            PSendSysMessage("%s is now a %s.", pTarget->GetName(), roleStr.c_str());
            return true;
        }
    }

    SendSysMessage("Target is not a party bot.");
    SetSentErrorMessage(true);
    return false;
}

bool ChatHandler::HandlePartyBotAttackStartCommand(char* args)
{
    Player* pPlayer = GetSession()->GetPlayer();
    Unit* pTarget = GetSelectedUnit();
    if (!pTarget || (pTarget == pPlayer))
    {
        SendSysMessage(LANG_SELECT_CHAR_OR_CREATURE);
        SetSentErrorMessage(true);
        return false;
    }
    
    Group* pGroup = pPlayer->GetGroup();
    if (!pGroup)
    {
        SendSysMessage("You are not in a group.");
        SetSentErrorMessage(true);
        return false;
    }

    for (GroupReference* itr = pGroup->GetFirstMember(); itr != nullptr; itr = itr->next())
    {
        if (Player* pMember = itr->getSource())
        {
            if (pMember == pPlayer)
                continue;

            if (pMember->AI())
            {
                if (PartyBotAI* pAI = dynamic_cast<PartyBotAI*>(pMember->AI()))
                {
                    if (pMember->IsValidAttackTarget(pTarget))
                        pAI->AttackStart(pTarget);
                }
            }            
        }
    }
    
    PSendSysMessage("All party bots are now attacking %s.", pTarget->GetName());
    return true;
}

void StopPartyBotAttackHelper(PartyBotAI* pAI, Player* pBot)
{
    pBot->AttackStop(true);
    pBot->InterruptNonMeleeSpells(false);
    if (!pBot->IsStopped())
        pBot->StopMoving();
    if (pBot->GetMotionMaster()->GetCurrentMovementGeneratorType() == CHASE_MOTION_TYPE)
        pBot->GetMotionMaster()->Clear();
    if (pAI->m_updateTimer.GetExpiry() < 3000)
        pAI->m_updateTimer.Reset(3000);
}

bool ChatHandler::HandlePartyBotAttackStopCommand(char* args)
{
    Player* pPlayer = GetSession()->GetPlayer();
    Unit* pTarget = GetSelectedUnit();
    if (!pTarget || (pTarget == pPlayer))
    {
        SendSysMessage(LANG_SELECT_CHAR_OR_CREATURE);
        SetSentErrorMessage(true);
        return false;
    }

    Group* pGroup = pPlayer->GetGroup();
    if (!pGroup)
    {
        SendSysMessage("You are not in a group.");
        SetSentErrorMessage(true);
        return false;
    }

    for (GroupReference* itr = pGroup->GetFirstMember(); itr != nullptr; itr = itr->next())
    {
        if (Player* pMember = itr->getSource())
        {
            if (pMember == pPlayer)
                continue;

            if (pMember->AI())
            {
                if (PartyBotAI* pAI = dynamic_cast<PartyBotAI*>(pMember->AI()))
                {
                    if (pMember->GetVictim() == pTarget)
                        StopPartyBotAttackHelper(pAI, pMember);
                }
            }
        }
    }

    PSendSysMessage("All party bots have stopped attacking %s.", pTarget->GetName());
    return true;
}

bool ChatHandler::HandlePartyBotAoECommand(char* args)
{
    Player* pPlayer = GetSession()->GetPlayer();
    Unit* pTarget = GetSelectedUnit();
    if (!pTarget || !pPlayer->IsValidAttackTarget(pTarget, true))
    {
        SendSysMessage(LANG_SELECT_CHAR_OR_CREATURE);
        SetSentErrorMessage(true);
        return false;
    }

    Group* pGroup = pPlayer->GetGroup();
    if (!pGroup)
    {
        SendSysMessage("You are not in a group.");
        SetSentErrorMessage(true);
        return false;
    }

    for (GroupReference* itr = pGroup->GetFirstMember(); itr != nullptr; itr = itr->next())
    {
        if (Player* pMember = itr->getSource())
        {
            if (pMember == pPlayer)
                continue;

            if (pMember->AI())
            {
                if (PartyBotAI* pAI = dynamic_cast<PartyBotAI*>(pMember->AI()))
                {
                    for (auto const& pSpell : pAI->m_spells.raw.spells)
                    {
                        if (pSpell && pSpell->IsAreaOfEffectSpell() &&
                           !pSpell->IsPositiveSpell() &&
                            pSpell->IsTargetInRange(pMember, pTarget))
                        {
                            if (pMember->GetCurrentSpell(CURRENT_GENERIC_SPELL) &&
                               !pMember->GetCurrentSpell(CURRENT_GENERIC_SPELL)->m_spellInfo->IsAreaOfEffectSpell())
                                pMember->InterruptSpell(CURRENT_GENERIC_SPELL);

                            if (pMember->CastSpell(pTarget, pSpell, false) == SPELL_CAST_OK)
                                break;
                        }
                    }
                }
            }
        }
    }

    PSendSysMessage("All party bots are casting AoE spells at %s.", pTarget->GetName());
    return true;
}

static std::map<std::string, RaidTargetIcon> raidTargetIcons =
{
    { "star",     RAID_TARGET_ICON_STAR     },
    { "circle",   RAID_TARGET_ICON_CIRCLE   },
    { "diamond",  RAID_TARGET_ICON_DIAMOND  },
    { "triangle", RAID_TARGET_ICON_TRIANGLE },
    { "moon",     RAID_TARGET_ICON_MOON     },
    { "square",   RAID_TARGET_ICON_SQUARE   },
    { "cross",    RAID_TARGET_ICON_CROSS    },
    { "skull",    RAID_TARGET_ICON_SKULL    },
};

bool ChatHandler::HandlePartyBotControlMarkCommand(char* args)
{
    std::string mark = args;
    auto itrMark = raidTargetIcons.find(mark);
    if (itrMark == raidTargetIcons.end())
    {
        SendSysMessage("Unknown target mark. Valid names are: star, circle, diamond, triangle, moon, square, cross, skull");
        SetSentErrorMessage(true);
        return false;
    }

    Player* pPlayer = GetSession()->GetPlayer();
    Player* pTarget = GetSelectedPlayer();

    if (pTarget && (pTarget != pPlayer))
    {
        if (pTarget->AI())
        {
            if (PartyBotAI* pAI = dynamic_cast<PartyBotAI*>(pTarget->AI()))
            {
                PSendSysMessage("%s will crowd control %s.", pTarget->GetName(), args);
                pAI->m_marksToCC.push_back(itrMark->second);
                return true;
            }
        }
        SendSysMessage("Target is not a party bot.");
        SetSentErrorMessage(true);
        return false;
    }

    Group* pGroup = pPlayer->GetGroup();
    if (!pGroup)
    {
        SendSysMessage("You are not in a group.");
        SetSentErrorMessage(true);
        return false;
    }

    for (GroupReference* itr = pGroup->GetFirstMember(); itr != nullptr; itr = itr->next())
    {
        if (Player* pMember = itr->getSource())
        {
            if (pMember == pPlayer)
                continue;

            if (pMember->AI())
            {
                if (PartyBotAI* pAI = dynamic_cast<PartyBotAI*>(pMember->AI()))
                {
                    pAI->m_marksToCC.push_back(itrMark->second);
                }
            }
        }
    }

    PSendSysMessage("All party bots will crowd control %s.", args);
    return true;
}

bool ChatHandler::HandlePartyBotFocusMarkCommand(char* args)
{
    std::string mark = args;
    auto itrMark = raidTargetIcons.find(mark);
    if (itrMark == raidTargetIcons.end())
    {
        SendSysMessage("Unknown target mark. Valid names are: star, circle, diamond, triangle, moon, square, cross, skull");
        SetSentErrorMessage(true);
        return false;
    }

    Player* pPlayer = GetSession()->GetPlayer();
    Player* pTarget = GetSelectedPlayer();

    if (pTarget && (pTarget != pPlayer))
    {
        if (pTarget->AI())
        {
            if (PartyBotAI* pAI = dynamic_cast<PartyBotAI*>(pTarget->AI()))
            {
                PSendSysMessage("%s will focus %s.", pTarget->GetName(), args);
                pAI->m_marksToFocus.push_back(itrMark->second);
                return true;
            }
        }
        SendSysMessage("Target is not a party bot.");
        SetSentErrorMessage(true);
        return false;
    }

    Group* pGroup = pPlayer->GetGroup();
    if (!pGroup)
    {
        SendSysMessage("You are not in a group.");
        SetSentErrorMessage(true);
        return false;
    }

    for (GroupReference* itr = pGroup->GetFirstMember(); itr != nullptr; itr = itr->next())
    {
        if (Player* pMember = itr->getSource())
        {
            if (pMember == pPlayer)
                continue;

            if (pMember->AI())
            {
                if (PartyBotAI* pAI = dynamic_cast<PartyBotAI*>(pMember->AI()))
                {
                    pAI->m_marksToFocus.push_back(itrMark->second);
                }
            }
        }
    }

    PSendSysMessage("All party bots will focus %s.", args);
    return true;
}

bool ChatHandler::HandlePartyBotClearMarksCommand(char* args)
{
    Player* pPlayer = GetSession()->GetPlayer();
    Player* pTarget = GetSelectedPlayer();

    if (pTarget && (pTarget != pPlayer))
    {
        if (pTarget->AI())
        {
            if (PartyBotAI* pAI = dynamic_cast<PartyBotAI*>(pTarget->AI()))
            {
                PSendSysMessage("All mark assignments cleared for %s.", pTarget->GetName());
                pAI->m_marksToCC.clear();
                pAI->m_marksToFocus.clear();
                return true;
            }
        }
        SendSysMessage("Target is not a party bot.");
        SetSentErrorMessage(true);
        return false;
    }

    Group* pGroup = pPlayer->GetGroup();
    if (!pGroup)
    {
        SendSysMessage("You are not in a group.");
        SetSentErrorMessage(true);
        return false;
    }

    for (GroupReference* itr = pGroup->GetFirstMember(); itr != nullptr; itr = itr->next())
    {
        if (Player* pMember = itr->getSource())
        {
            if (pMember == pPlayer)
                continue;

            if (pMember->AI())
            {
                if (PartyBotAI* pAI = dynamic_cast<PartyBotAI*>(pMember->AI()))
                {
                    pAI->m_marksToCC.clear();
                    pAI->m_marksToFocus.clear();
                }
            }
        }
    }

    SendSysMessage("Mark assignments cleared for all bots.");
    return true;
}

bool HandlePartyBotComeToMeHelper(Player* pBot, Player* pPlayer)
{
    if (pBot->AI() && pBot->IsAlive() && pBot->IsInMap(pPlayer) && !pBot->HasUnitState(UNIT_STAT_NO_FREE_MOVE))
    {
        if (PartyBotAI* pAI = dynamic_cast<PartyBotAI*>(pBot->AI()))
        {
            if (pBot->GetVictim())
                StopPartyBotAttackHelper(pAI, pBot);

            if (pBot->GetStandState() != UNIT_STAND_STATE_STAND)
                pBot->SetStandState(UNIT_STAND_STATE_STAND);

            pBot->InterruptSpellsWithInterruptFlags(SPELL_INTERRUPT_FLAG_MOVEMENT);
            pBot->MonsterMove(pPlayer->GetPositionX(), pPlayer->GetPositionY(), pPlayer->GetPositionZ());
            return true;
        }
    }

    return false;
}

bool ChatHandler::HandlePartyBotComeToMeCommand(char* args)
{
    Player* pPlayer = GetSession()->GetPlayer();
    Player* pTarget = GetSelectedPlayer();

    bool ok = false;

    if (pTarget && pTarget != pPlayer)
    {
        if (ok = HandlePartyBotComeToMeHelper(pTarget, pPlayer))
            PSendSysMessage("%s is coming to your position.", pTarget->GetName());
        else
            PSendSysMessage("%s is not a party bot or it cannot move.", pTarget->GetName());
        return ok;
    }
    else if (Group* pGroup = pPlayer->GetGroup())
    {
        bool ok = false;
        for (GroupReference* itr = pGroup->GetFirstMember(); itr != nullptr; itr = itr->next())
        {
            if (Player* pMember = itr->getSource())
            {
                if (pMember == pPlayer)
                    continue;

                ok = HandlePartyBotComeToMeHelper(pMember, pPlayer) || ok;
            }
        }

        if (ok)
            SendSysMessage("All party bots are coming to your position.");
        else
            SendSysMessage("There are no party bots in the group or they cannot move.");
        return ok;
    }

    SendSysMessage("You are not in a group.");
    SetSentErrorMessage(true);
    return false;
}

bool HandlePartyBotUseGObjectHelper(Player* pTarget, GameObject* pGo)
{
    if (pTarget->AI())
    {
        if (PartyBotAI* pAI = dynamic_cast<PartyBotAI*>(pTarget->AI()))
        {
            if (pTarget->IsWithinDist(pGo, INTERACTION_DISTANCE))
            {
                pGo->Use(pTarget);
                return true;
            }
        }
    }

    return false;
}

bool ChatHandler::HandlePartyBotUseGObjectCommand(char* args)
{
    Player* pPlayer = GetSession()->GetPlayer();
    Player* pTarget = GetSelectedPlayer();

    GameObject* pGo = getSelectedGameObject();
    if (!pGo)
    {
        SendSysMessage(LANG_COMMAND_NOGAMEOBJECTFOUND);
        return false;
    }

    bool ok = false;

    if (pTarget && pTarget != pPlayer)
    {
        if (ok = HandlePartyBotUseGObjectHelper(pTarget, pGo))
            PSendSysMessage("%s has used the object.", pTarget->GetName());
        else
            PSendSysMessage("%s is not in range or is not a party bot.", pTarget->GetName());
        return ok;
    }
    else if (Group* pGroup = pPlayer->GetGroup())
    {
        for (GroupReference* itr = pGroup->GetFirstMember(); itr != nullptr; itr = itr->next())
        {
            if (Player* pMember = itr->getSource())
                ok = HandlePartyBotUseGObjectHelper(pMember, pGo) || ok;
        }

        if (ok)
            SendSysMessage("All party bots in range have used the object.");
        else
            SendSysMessage("There are no party bots in range of the object.");
        return ok;
    }

    SendSysMessage("You are not in a group.");
    SetSentErrorMessage(true);
    return false;
}

bool HandlePartyBotPauseApplyHelper(Player* pTarget, uint32 duration)
{
    if (pTarget->AI())
    {
        if (PartyBotAI* pAI = dynamic_cast<PartyBotAI*>(pTarget->AI()))
        {
            pAI->m_updateTimer.Reset(duration);

            if (duration)
            {
                pTarget->StopMoving();
                pTarget->GetMotionMaster()->MoveIdle();
            }

            return true;
        }
    }

    return false;
}

bool ChatHandler::HandlePartyBotPauseHelper(char* args, bool pause)
{
    bool all = false;
    uint32 duration = 0;
    if (char* arg1 = ExtractArg(&args))
    {
        if (!(all = (strcmp(arg1, "all") == 0)) && pause)
            duration = atoi(arg1);

        if (char* arg2 = ExtractArg(&args))
        {
            if (!duration && pause)
                duration = atoi(arg2);
            else if (!all)
                all = strcmp(arg2, "all") == 0;
        }
    }

    if (pause && !duration)
        duration = 5 * MINUTE * IN_MILLISECONDS;

    if (all)
    {
        Player* pPlayer = GetSession()->GetPlayer();
        Group* pGroup = pPlayer->GetGroup();
        if (!pGroup)
        {
            SendSysMessage("You are not in a group.");
            SetSentErrorMessage(true);
            return false;
        }

        bool success = false;
        for (GroupReference* itr = pGroup->GetFirstMember(); itr != nullptr; itr = itr->next())
        {
            if (Player* pMember = itr->getSource())
            {
                if (pMember == pPlayer)
                    continue;

                if (HandlePartyBotPauseApplyHelper(pMember, duration))
                    success = true;
            }
        }

        if (success)
        {
            if (pause)
                PSendSysMessage("All party bots paused for %u seconds.", (duration / IN_MILLISECONDS));
            else
                SendSysMessage("All party bots unpaused.");
        }
        else
            SendSysMessage("No party bots in group.");
    }
    else
    {
        Player* pTarget = GetSelectedPlayer();
        if (!pTarget)
        {
            SendSysMessage(LANG_NO_CHAR_SELECTED);
            SetSentErrorMessage(true);
            return false;
        }

        if (HandlePartyBotPauseApplyHelper(pTarget, duration))
        {
            if (pause)
                PSendSysMessage("%s paused for %u seconds.", pTarget->GetName(), (duration / IN_MILLISECONDS));
            else
                PSendSysMessage("%s unpaused.", pTarget->GetName());
        }
            
        else
            SendSysMessage("Target is not a party bot.");
    }

    return true;
}

bool ChatHandler::HandlePartyBotPauseCommand(char* args)
{
    return HandlePartyBotPauseHelper(args, true);
}

bool ChatHandler::HandlePartyBotUnpauseCommand(char* args)
{
    return HandlePartyBotPauseHelper(args, false);
}

bool ChatHandler::HandlePartyBotUnequipCommand(char* args)
{
    Player* pTarget = GetSelectedPlayer();
    if (!pTarget)
    {
        SendSysMessage(LANG_NO_CHAR_SELECTED);
        SetSentErrorMessage(true);
        return false;
    }

    char* cId = ExtractKeyFromLink(&args, "Hitem");
    if (!cId)
        return false;

    uint32 itemId = 0;
    if (!ExtractUInt32(&cId, itemId))
        return false;

    uint32 count = pTarget->GetItemCount(itemId, false);
    if (!count)
    {
        SendSysMessage("Target does not have that item.");
        SetSentErrorMessage(true);
        return false;
    }

    if (pTarget->AI())
    {
        if (PartyBotAI* pAI = dynamic_cast<PartyBotAI*>(pTarget->AI()))
        {
            pTarget->DestroyItemCount(itemId, count, true);
            return true;
        }
    }

    SendSysMessage("Target is not a party bot.");
    SetSentErrorMessage(true);
    return false;
}

bool ChatHandler::HandlePartyBotRemoveCommand(char* args)
{
    Player* pTarget = GetSelectedPlayer();
    if (!pTarget)
    {
        SendSysMessage(LANG_NO_CHAR_SELECTED);
        SetSentErrorMessage(true);
        return false;
    }

    if (pTarget->AI())
    {
        if (PartyBotAI* pAI = dynamic_cast<PartyBotAI*>(pTarget->AI()))
        {
            pAI->botEntry->requestRemoval = true;
            return true;
        }
    }

    SendSysMessage("Target is not a party bot.");
    SetSentErrorMessage(true);
    return false;
}

bool ChatHandler::HandleBattleBotAddAlteracCommand(char* args)
{
    return HandleBattleBotAddCommand(args, BATTLEGROUND_QUEUE_AV);
}

bool ChatHandler::HandleBattleBotAddArathiCommand(char* args)
{
    return HandleBattleBotAddCommand(args, BATTLEGROUND_QUEUE_AB);
}

bool ChatHandler::HandleBattleBotAddWarsongCommand(char* args)
{
    return HandleBattleBotAddCommand(args, BATTLEGROUND_QUEUE_WS);
}

bool ChatHandler::HandleBattleBotAddCommand(char* args, uint8 bg)
{
    if (!*args)
    {
        SendSysMessage("Incorrect syntax. Expected faction");
        SetSentErrorMessage(true);
        return false;
    }

    Team botTeam = HORDE;
    uint32 botLevel = sWorld.getConfig(CONFIG_UINT32_MAX_PLAYER_LEVEL);
    std::string option;
    if (char* arg1 = ExtractArg(&args))
    {
        option = arg1;
        if (option == "horde")
            botTeam = HORDE;
        else if (option == "alliance")
            botTeam = ALLIANCE;
        else
        {
            SendSysMessage("Incorrect syntax. Expected faction");
            SetSentErrorMessage(true);
            return false;
        }

        ExtractUInt32(&args, botLevel);
    }

    std::vector<uint32> dpsClasses = { CLASS_WARRIOR, CLASS_HUNTER, CLASS_ROGUE, CLASS_MAGE, CLASS_WARLOCK, CLASS_PRIEST, CLASS_DRUID };
    if (botTeam == HORDE)
        dpsClasses.push_back(CLASS_SHAMAN);
    else
        dpsClasses.push_back(CLASS_PALADIN);
    uint8 botClass = SelectRandomContainerElement(dpsClasses);
    uint8 botRace = SelectRandomRaceForClass(botClass, botTeam);

    // Spawn bot on GM Island
    BattleBotAI* ai = new BattleBotAI(botRace, botClass, botLevel, 1, 0, 16224.356f, 16284.763f, 13.175f, 4.56f, bg);
    sPlayerBotMgr.AddBot(ai);

    if (bg == BATTLEGROUND_QUEUE_WS)
        PSendSysMessage("Added %s battle bot and queuing for WS", option.c_str());
        
    if (bg == BATTLEGROUND_QUEUE_AB)
        PSendSysMessage("Added %s battle bot and queuing for AB", option.c_str());
    
    if (bg == BATTLEGROUND_QUEUE_AV)
        PSendSysMessage("Added %s battle bot and queuing for AV", option.c_str());

    return true;
}

bool ChatHandler::HandleBattleBotRemoveCommand(char* args)
{
    Player* pTarget = GetSelectedPlayer();
    if (!pTarget)
    {
        SendSysMessage(LANG_NO_CHAR_SELECTED);
        SetSentErrorMessage(true);
        return false;
    }

    if (pTarget->AI())
    {
        if (BattleBotAI* pAI = dynamic_cast<BattleBotAI*>(pTarget->AI()))
        {
            pAI->botEntry->requestRemoval = true;
            return true;
        }
    }

    SendSysMessage("Target is not a battle bot.");
    SetSentErrorMessage(true);
    return false;
}

#define SPELL_RED_GLOW 20370

void ShowBattleBotPathHelper(Map* pMap, BattleBotPath* pPath, uint32 id)
{
    for (const auto& point : *pPath)
    {
        if (Creature* pWaypoint = pMap->SummonCreature(VISUAL_WAYPOINT, point.x, point.y, point.z, 0.0f, TEMPSUMMON_TIMED_DESPAWN, 120000, true))
        {
            // Show path id as level to distinguish individual paths.
            pWaypoint->SetUInt32Value(UNIT_FIELD_LEVEL, id);

            // Mark points that have script attached.
            if (point.pFunc)
                pWaypoint->CastSpell(pWaypoint, SPELL_RED_GLOW, true);
        }
    }
}

bool ChatHandler::HandleBattleBotShowPathCommand(char* args)
{
    Player* pTarget = GetSelectedPlayer();
    if (!pTarget)
    {
        SendSysMessage(LANG_NO_CHAR_SELECTED);
        SetSentErrorMessage(true);
        return false;
    }

    if (pTarget->AI())
    {
        if (BattleBotAI* pAI = dynamic_cast<BattleBotAI*>(pTarget->AI()))
        {
            if (pAI->m_currentPath)
                ShowBattleBotPathHelper(pTarget->GetMap(), pAI->m_currentPath, 1);
            else
                SendSysMessage("Target is not following a path.");

            return true;
        }
    }

    SendSysMessage("Target is not a battle bot.");
    SetSentErrorMessage(true);
    return false;
}

bool ChatHandler::HandleBattleBotShowAllPathsCommand(char* args)
{
    Player* pPlayer = m_session->GetPlayer();
    BattleGround* pBG = pPlayer->GetBattleGround();
    if (!pBG)
    {
        SendSysMessage("You are not in a battleground.");
        return false;
    }

    std::vector<BattleBotPath*> const* pPaths;

    switch (pBG->GetTypeID())
    {
        case BATTLEGROUND_AB:
        {
            pPaths = &vPaths_AB;
            break;
        }
        case BATTLEGROUND_AV:
        {
            pPaths = &vPaths_AV;
            break;
        }
        case BATTLEGROUND_WS:
        {
            pPaths = &vPaths_WS;
            break;
        }
        default:
            break;
    }

    uint32 id = 1;
    for (const auto& path : *pPaths)
    {
        ShowBattleBotPathHelper(pPlayer->GetMap(), path, id++);
    }

    PSendSysMessage("Showing %u paths for battleground.", id);
    return true;
}


bool ChatHandler::HandleWorldBotAddAlteracCommand(char* args)
{
    return HandleWorldBotAddCommand(args, MAP_AV, true);
}

bool ChatHandler::HandleWorldBotAddArathiCommand(char* args)
{
    return HandleWorldBotAddCommand(args, MAP_AB, true);
}

bool ChatHandler::HandleWorldBotAddWarsongCommand(char* args)
{
    return HandleWorldBotAddCommand(args, MAP_WS, true);
}

bool ChatHandler::HandleWorldBotAddEasternKingdomsCommand(char* args)
{
    return HandleWorldBotAddCommand(args, MAP_EASTERN_KINGDOMS, false);
}

bool ChatHandler::HandleWorldBotAddKalimdorCommand(char* args)
{
    return HandleWorldBotAddCommand(args, MAP_KALIMDOR, false);
}

bool ChatHandler::HandleWorldBotAddCommand(char* args, uint32 map, bool isBattleBot)
{
    bool worldBotEnabled = sWorld.getConfig(CONFIG_BOOL_WORLDBOT);
    if (!worldBotEnabled)
    {
        SendSysMessage("World bots are disabled.");
        SetSentErrorMessage(true);
        return false;
    }

    bool worldBotLoader = sPlayerBotMgr.m_useWorldBotLoader;
    if (worldBotLoader)
    {
        SendSysMessage("World bots:  Adding bots is not allowed, use config to add bots from character db.");
        SetSentErrorMessage(true);
        return false;
    }

    Player* pPlayer = m_session->GetPlayer();
    if (!pPlayer)
        return false;

    if (!args)
    {
        SendSysMessage("Incorrect syntax. Expected faction");
        SetSentErrorMessage(true);
        return false;
    }

    Team botTeam = HORDE;

    std::string option = args;
    if (option == "horde")
        botTeam = HORDE;
    else if (option == "alliance")
        botTeam = ALLIANCE;
    else
    {
        SendSysMessage("Incorrect syntax. Expected faction");
        SetSentErrorMessage(true);
        return false;
    }

    std::vector<uint32> dpsClasses = { CLASS_WARRIOR, CLASS_HUNTER, CLASS_ROGUE, CLASS_MAGE, CLASS_WARLOCK, CLASS_PRIEST, CLASS_DRUID };
    if (botTeam == HORDE)
        dpsClasses.push_back(CLASS_SHAMAN);
    else
        dpsClasses.push_back(CLASS_PALADIN);
    uint8 botClass = SelectRandomContainerElement(dpsClasses);
    uint8 botRace = SelectRandomRaceForClass(botClass, botTeam);

    // Spawn bot
    WorldBotAI* ai;
    switch (map)
    {
    case MAP_EASTERN_KINGDOMS:
        ai = new WorldBotAI(botRace, botClass, 0, 0, -8833.379f, 628.627f, 94.006f, 4.195f, isBattleBot, 0);
        PSendSysMessage("Added %s world bot", args);
        break;
    case MAP_KALIMDOR:
        ai = new WorldBotAI(botRace, botClass, 1, 0, 1655.873f, -4413.851f, 16.623f, 2.967f, isBattleBot, 0);
        PSendSysMessage("Added %s world bot", args);
        break;
    case MAP_WS:
        ai = new WorldBotAI(botRace, botClass, 1, 0, 16224.356f, 16284.763f, 13.175f, 4.56f, isBattleBot, BATTLEGROUND_QUEUE_WS);
        PSendSysMessage("Added %s world bot and queuing for WS", args);
        break;
    case MAP_AB:
        ai = new WorldBotAI(botRace, botClass, 1, 0, 16224.356f, 16284.763f, 13.175f, 4.56f, isBattleBot, BATTLEGROUND_QUEUE_AB);
        PSendSysMessage("Added %s world bot and queuing for AB", args);
        break;
    case MAP_AV:
        ai = new WorldBotAI(botRace, botClass, 1, 0, 16224.356f, 16284.763f, 13.175f, 4.56f, isBattleBot, BATTLEGROUND_QUEUE_AV);
        PSendSysMessage("Added %s world bot and queuing for AV", args);
        break;
    default:
        break;
    }

    if (sPlayerBotMgr.AddBot(ai))
        SendSysMessage("New world bot added.");
    else
    {
        SendSysMessage("Error spawning bot.");
        SetSentErrorMessage(true);
        return false;
    }

    return true;
}

bool ChatHandler::HandleWorldBotRemoveCommand(char* args)
{
    Player* pTarget = GetSelectedPlayer();
    if (!pTarget)
    {
        SendSysMessage(LANG_NO_CHAR_SELECTED);
        SetSentErrorMessage(true);
        return false;
    }

    if (pTarget->AI())
    {
        if (WorldBotAI* pAI = dynamic_cast<WorldBotAI*>(pTarget->AI()))
        {
            pAI->botEntry->requestRemoval = true;
            return true;
        }
    }

    SendSysMessage("Target is not a map bot.");
    SetSentErrorMessage(true);
    return false;
}

void ShowWorldBotPathHelper(Map* pMap, WorldBotPath* pPath, uint32 id)
{
    for (const auto& point : *pPath)
    {
        if (Creature* pWaypoint = pMap->SummonCreature(VISUAL_WAYPOINT, point.x, point.y, point.z, 0.0f, TEMPSUMMON_TIMED_DESPAWN, 120000, true))
        {
            // Show path id as level to distinguish individual paths.
            pWaypoint->SetUInt32Value(UNIT_FIELD_LEVEL, id);

            // Mark points that have script attached.
            if (point.pFunc)
                pWaypoint->CastSpell(pWaypoint, SPELL_RED_GLOW, true);
        }
    }
}

bool ChatHandler::HandleWorldBotShowPathCommand(char* args)
{
    Player* pTarget = GetSelectedPlayer();
    if (!pTarget)
    {
        SendSysMessage(LANG_NO_CHAR_SELECTED);
        SetSentErrorMessage(true);
        return false;
    }

    if (pTarget->AI())
    {
        if (WorldBotAI* pAI = dynamic_cast<WorldBotAI*>(pTarget->AI()))
        {
            if (pAI->m_currentPath)
                ShowWorldBotPathHelper(pTarget->GetMap(), pAI->m_currentPath, 1);
            else
                SendSysMessage("Target is not following a path.");

            return true;
        }
    }

    SendSysMessage("Target is not a map bot.");
    SetSentErrorMessage(true);
    return false;
}

bool ChatHandler::HandleWorldBotShowAllPathsCommand(char* args)
{
    Player* pPlayer = m_session->GetPlayer();
    std::vector<WorldBotPath*> const* pPaths;

    switch (pPlayer->GetMapId())
    {
    case MAP_EASTERN_KINGDOMS:
    {
        pPaths = &vPaths_Map_Eastern_Kingdoms;
        break;
    }
    case MAP_KALIMDOR:
    {
        pPaths = &vPaths_Map_Kalimdor;
        break;
    }
    case MAP_AB:
    {
        pPaths = &vPaths_Map_Arathi_Basin;
        break;
    }
    case MAP_AV:
    {
        pPaths = &vPaths_Map_Alterac_Valley;
        break;
    }
    case MAP_WS:
    {
        pPaths = &vPaths_Map_Warsong_Gulch;
        break;
    }
    default:
        break;
    }

    uint32 id = 1;
    for (const auto& path : *pPaths)
    {
        ShowWorldBotPathHelper(pPlayer->GetMap(), path, id++);
    }

    PSendSysMessage("Showing %u paths.", id);
    return true;
}

bool ChatHandler::HandleWorldBotPathPointAddCommand(char* args)
{
    uint32 guid, id, reverse = 0;
    char comment[100];

    sscanf(args, "%u %u %u %s", &guid, &id, &reverse, comment);

    Player* me = m_session->GetPlayer();
    WorldDatabase.PExecute(
        "INSERT INTO `worldbot_waypoints` (`guid`, `id`, `x`, `y`, `z`, `area`, `zone`, `map`, `reverse`, `comments`) VALUES "
        "(%u, %u, %f, %f, %f, %u, %u, %u, %u, '%s')",
        guid, id, me->GetPositionX(), me->GetPositionY(), me->GetPositionZ(), me->GetAreaId(), me->GetZoneId(), me->GetMapId(), reverse, comment);

    PSendSysMessage("Added new waypoint with guid: %u and id: %u", guid, id);
    PSendSysMessage("XYZ: %f %f %f", me->GetPositionX(), me->GetPositionY(), me->GetPositionZ());
    PSendSysMessage("AreaID: %u  ZoneID: %u  Map: %u", me->GetAreaId(), me->GetZoneId(), me->GetMapId());
    PSendSysMessage("Reverse: %u and comment: %s", reverse, comment);

    return true;
}

void PlayerBotMgr::WorldBotLoader()
{
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "[WorldBotLoader] Loading Bots from character db...");
    QueryResult* result = CharacterDatabase.PQuery("SELECT guid, account, name, race, class, position_x, position_y, position_z, map, orientation FROM characters WHERE is_worldbot = 1 and virtual_player_realm = 721682444");
    if (!result)
    {
        sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "Table `character` is empty.");
    }
    else
    {
        do
        {
            Field* fields = result->Fetch();
            uint32 guid = fields[0].GetUInt32();
            uint32 account = fields[1].GetUInt32();
            std::string name = fields[2].GetString();
            uint32 race = fields[3].GetUInt32();
            uint32 class_ = fields[4].GetUInt32();
            float pos_x = fields[5].GetFloat();
            float pos_y = fields[6].GetFloat();
            float pos_z = fields[7].GetFloat();
            uint32 map = fields[8].GetUInt32();
            float orientation = fields[9].GetFloat();

            ChrRacesEntry const* rEntry = sChrRacesStore.LookupEntry(race);

            if (!rEntry)
                break;

            if (rEntry->TeamID == 1) // horde
            {
                WorldBotsCollection bot;
                bot.guid = guid;
                bot.account = account;
                bot.name = name;
                bot.race = race;
                bot.class_ = class_;
                bot.pos_x = pos_x;
                bot.pos_y = pos_y;
                bot.pos_z = pos_z;
                bot.map = map;
                bot.orientation = orientation;
                myHordeBots.push_back(bot);
            }

            if (rEntry->TeamID == 7) // alliance
            {
                WorldBotsCollection bot;
                bot.guid = guid;
                bot.account = account;
                bot.name = name;
                bot.race = race;
                bot.class_ = class_;
                bot.pos_x = pos_x;
                bot.pos_y = pos_y;
                bot.pos_z = pos_z;
                bot.map = map;
                bot.orientation = orientation;
                myAllianceBots.push_back(bot);
            }

        } while (result->NextRow());

        delete result;
    }
}

void PlayerBotMgr::WorldBotCreator()
{
    uint32 worldBotHordeCount = 0;
    uint32 worldBotAllianceCount = 0;
    uint32 worldBotHordeMax = sWorld.getConfig(CONFIG_UINT32_WORLDBOT_HORDE_MAX);
    uint32 worldBotAllianceMax = sWorld.getConfig(CONFIG_UINT32_WORLDBOT_ALLIANCE_MAX);

    std::random_shuffle(myHordeBots.begin(), myHordeBots.end());
    for (auto b : myHordeBots)
    {
        if (worldBotHordeCount >= worldBotHordeMax)
            break;

        WorldBotAdd(b.guid, b.account, b.race, b.class_, b.pos_x, b.pos_y, b.pos_z, b.orientation, b.map);
        sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "WorldBot:  Add horde bot %s with guid: %u  account: %u", b.name.c_str(), b.guid, b.account);
        worldBotHordeCount++;
    }

    std::random_shuffle(myAllianceBots.begin(), myAllianceBots.end());
    for (auto b : myAllianceBots)
    {
        if (worldBotAllianceCount >= worldBotAllianceMax)
            break;

        WorldBotAdd(b.guid, b.account, b.race, b.class_, b.pos_x, b.pos_y, b.pos_z, b.orientation, b.map);
        sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "WorldBot:  Add alliance bot %s with guid: %u  account: %u", b.name.c_str(), b.guid, b.account);
        worldBotAllianceCount++;
    }

    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "WorldBot:  Loaded %u horde bots and %u alliance bots", worldBotHordeCount, worldBotAllianceCount);
}

bool PlayerBotMgr::WorldBotAdd(uint32 guid, uint32 account, uint32 race, uint32 class_, float pos_x, float pos_y, float pos_z, float orientation, uint32 map)
{
    uint32 accountId = 0;
    auto iter = m_bots.find(guid);
    if (iter == m_bots.end())
        accountId = account;
    else
        accountId = iter->second->accountId;

    if (!accountId)
    {
        sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "Player account %u not found ...", guid);
        return false;
    }

    WorldBotAI* ai = new WorldBotAI(race, class_, map, 0, pos_x, pos_y, pos_z, orientation, false, 0);

    std::shared_ptr<PlayerBotEntry> e;
    if (iter != m_bots.end())
    {
        if (ai) // new AI
            e->ai.reset(ai);

        e = iter->second;
    }
    else
    {
        e = std::make_shared<PlayerBotEntry>();
        e->state = PB_STATE_LOADING;
        e->playerGUID = guid;
        e->chance = 100;
        e->accountId = accountId;
        e->isChatBot = false;
        ai->botEntry = e.get();
        
        if (ai)
        {
            e->ai.reset(ai);
        }
        else
        {
            e->ai.reset(new PlayerBotAI(nullptr));
        }

        m_bots.insert({ guid , e });
    }

    e->ai->botEntry = e.get();
    e->state = PB_STATE_LOADING;
    WorldSession* session = new WorldSession(accountId, nullptr, sAccountMgr.GetSecurity(accountId), 0, LOCALE_enUS);
    session->SetBot(e);
    sWorld.AddSession(session);
    m_stats.loadingCount++;

    return true;
}

void PlayerBotMgr::WorldBotBalancer()
{

}

void PlayerBotMgr::WorldBotLoadAreaPOI()
{
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "[WorldBot POI] Loading poi's from db...");
    QueryResult* result = WorldDatabase.PQuery("SELECT ID, Importance, X, Y, Z, ContinentID, Flags, AreaID, Name_enUS FROM `worldbot_areapoi`");
    if (!result)
    {
        sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "Table `worldbot_areapoi` is empty.");
    }
    else
    {
        do
        {
            Field* fields = result->Fetch();
            uint32 id = fields[0].GetUInt32();
            uint32 importance = fields[1].GetUInt32();
            float pos_x = fields[2].GetFloat();
            float pos_y = fields[3].GetFloat();
            float pos_z = fields[4].GetFloat();
            uint32 map = fields[5].GetUInt32();
            uint32 flags = fields[6].GetUInt32();
            uint32 areaid = fields[7].GetUInt32();
            std::string name = fields[8].GetString();

            WorldBotsAreaPOI poi;
            poi.id = id;
            poi.importance = importance;
            poi.pos_x = pos_x;
            poi.pos_y = pos_y;
            poi.pos_z = pos_z;
            poi.map = map;
            poi.flags = flags;
            poi.areaid = areaid;
            poi.name = name;
            myAreaPOI.push_back(poi);

        } while (result->NextRow());

        delete result;
    }
}
