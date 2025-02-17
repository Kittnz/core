/*
 * Copyright (C) 2005-2011 MaNGOS <http://getmangos.com/>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

#include "GuildMgr.h"
#include "Guild.h"
#include "Log.h"
#include "ObjectGuid.h"
#include "Database/DatabaseEnv.h"
#include "Policies/SingletonImp.h"
#include "ProgressBar.h"
#include "World.h"
#include "ObjectMgr.h"
#include "Player.h"
#include "AccountMgr.h"
#include "Config/Config.h"

INSTANTIATE_SINGLETON_1(GuildMgr);

GuildMgr::GuildMgr()
{
}

GuildMgr::~GuildMgr()
{
    for (const auto& itr : m_GuildMap)
        delete itr.second;

    CleanUpPetitions();
}

void GuildMgr::CleanUpPetitions()
{
    for (const auto& iter : m_petitionMap)
        delete iter.second; // will clean up signatures too

    m_petitionMap.clear();
}

void GuildMgr::AddGuild(Guild* guild)
{
    std::lock_guard<std::shared_timed_mutex> guard(m_guildMutex);
    m_GuildMap[guild->GetId()] = guild;
}

void GuildMgr::RemoveGuild(uint32 guildId)
{
    std::lock_guard<std::shared_timed_mutex> guard(m_guildMutex);
    m_GuildMap.erase(guildId);
}

Guild* GuildMgr::GetGuildById(uint32 guildId) const
{
    std::shared_lock<std::shared_timed_mutex> guard(m_guildMutex);
    GuildMap::const_iterator itr = m_GuildMap.find(guildId);
    if (itr != m_GuildMap.end())
        return itr->second;

    return nullptr;
}

Guild* GuildMgr::GetGuildByName(std::string const& name) const
{
    std::shared_lock<std::shared_timed_mutex> guard(m_guildMutex);
    for (const auto& itr : m_GuildMap)
        if (itr.second->GetName() == name)
            return itr.second;

    return nullptr;
}

Guild* GuildMgr::GetGuildByLeader(ObjectGuid const& guid) const
{
    std::shared_lock<std::shared_timed_mutex> guard(m_guildMutex);
    for (const auto& itr : m_GuildMap)
        if (itr.second->GetLeaderGuid() == guid)
            return itr.second;

    return nullptr;
}

std::string GuildMgr::GetGuildNameById(uint32 guildId) const
{
    std::shared_lock<std::shared_timed_mutex> guard(m_guildMutex);
    GuildMap::const_iterator itr = m_GuildMap.find(guildId);
    if (itr != m_GuildMap.end())
        return itr->second->GetName();

    return "";
}

void GuildMgr::LoadGuilds()
{
    uint32 count = 0;

    //                                                                     0           1       2              3               4               5               6
    std::unique_ptr<QueryResult> result = CharacterDatabase.Query("SELECT `guild_id`, `name`, `leader_guid`, `emblem_style`, `emblem_color`, `border_style`, `border_color`,"
                          //   7                8       9       10
                          "`background_Color`, `info`, `motd`, `create_date` FROM `guild` ORDER BY `guild_id` ASC");

    if (!result)
    {
        BarGoLink bar(1);

        bar.step();

        sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "");
        sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, ">> Loaded %u guild definitions", count);
        return;
    }

    // load guild ranks
    //                                                                                 0           1     2       3
    std::unique_ptr<QueryResult> guildRanksResult   = CharacterDatabase.Query("SELECT `guild_id`, `id`, `name`, `rights` FROM `guild_rank` ORDER BY `guild_id` ASC, `id` ASC");

    // load guild members
    //                                                                                 0                          1       2       3              4
    std::unique_ptr<QueryResult> guildMembersResult = CharacterDatabase.Query("SELECT `guild_id`, `guild_member`.`guid`, `rank`, `player_note`, `officer_note`,"
                                      //             5                    6                     7                     8                    9                           10
                                      "`characters`.`name`, `characters`.`level`, `characters`.`class`, `characters`.`zone`, `characters`.`logout_time`, `characters`.`account` "
                                      "FROM `guild_member` LEFT JOIN `characters` ON `characters`.`guid` = `guild_member`.`guid` ORDER BY `guild_id` ASC");

    BarGoLink bar(result->GetRowCount());

    do
    {
        //Field* fields = result->Fetch();

        bar.step();
        ++count;

        Guild *newGuild = new Guild;
        if (!newGuild->LoadGuildFromDB(result) ||
                !newGuild->LoadRanksFromDB(guildRanksResult) ||
                !newGuild->LoadMembersFromDB(guildMembersResult) ||
                !newGuild->CheckGuildStructure()
           )
        {
            newGuild->Disband();
            delete newGuild;
            continue;
        }
        newGuild->LoadGuildEventLogFromDB();
        AddGuild(newGuild);
    }
    while (result->NextRow());

    //delete unused log_guid records in guild_eventlog table
    //you can comment these lines if you don't plan to change CONFIG_UINT32_GUILD_EVENT_LOG_COUNT
    CharacterDatabase.PExecute("DELETE FROM `guild_eventlog` WHERE `log_guid` > '%u'", sWorld.getConfig(CONFIG_UINT32_GUILD_EVENT_LOG_COUNT));

    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "");
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, ">> Loaded %u guild definitions", count);
}

std::string GuildMgr::GetNextGuildNumber(uint32 currentNumber) const
{
    static const std::vector<std::string> numbers = {
        "One",    "Two",      "Three",    "Four",    "Five",    "Six",       "Seven",    "Eight",    "Nine",  "Ten", "Eleven",
        "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Nineteen", "Twenty"
        // Add more as needed
    };

    if (currentNumber >= numbers.size())
        return std::to_string(currentNumber + 1); // Fallback to numeric if we run out of words

    return numbers[currentNumber];
}

uint32 GuildMgr::CreateOrGetStarterGuildMasterAccount()
{
    // Check if account already exists
    std::string username = "startguildmaster";
    uint32 accountId = sAccountMgr.GetId(username);

    if (!accountId)
    {
        // Create new account
        std::string password = sConfig.GetStringDefault("StarterGuild.Account.Password", "your_secure_password_here");
        AccountOpResult result = sAccountMgr.CreateAccount(username, password);

        if (result == AOR_OK)
        {
            accountId = sAccountMgr.GetId(username);
            sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "Created starter guild master account with id: %u", accountId);
        }
        else
        {
            sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "Failed to create starter guild master account!");
            return 0;
        }
    }

    m_starterGuildMasterAccount = accountId;
    return accountId;
}

Guild* GuildMgr::GetOrCreateStarterGuild(Team team)
{
    // First try to find an existing starter guild with space
    for (GuildMap::iterator itr = m_GuildMap.begin(); itr != m_GuildMap.end(); ++itr)
    {
        Guild* guild = itr->second;
        if (guild->GetName().find(team == ALLIANCE ? "Alliance Starter Guild" : "Horde Starter Guild") != std::string::npos)
        {
            if (guild->GetMemberSize() < 999)
                return guild;
        }
    }

    // Count existing starter guilds to determine the next number
    uint32 guildCount = 0;
    for (GuildMap::iterator itr = m_GuildMap.begin(); itr != m_GuildMap.end(); ++itr)
    {
        if (itr->second->GetName().find(team == ALLIANCE ? "Alliance Starter Guild" : "Horde Starter Guild") != std::string::npos)
            guildCount++;
    }

    // Create a new guild with the next number
    return CreateStarterGuild(team, GetNextGuildNumber(guildCount));
}

void GuildMgr::CreateGuildMasterCharacter(Team team, const std::string& number, uint32 accountId)
{
    std::string gmName = (team == ALLIANCE) ? "AllianceGuildMaster" : "HordeGuildMaster";
    gmName += number;

    // Create character entry in DB first
    std::unique_ptr<QueryResult> result = CharacterDatabase.Query("SELECT MAX(guid) FROM characters");
    uint32 guid = result ? result->Fetch()[0].GetUInt32() + 1 : 1;

    CharacterDatabase.BeginTransaction();

    // Create base character
    CharacterDatabase.PExecute("INSERT INTO characters (guid, account, name, race, class, gender, level, zone, map, position_x, position_y, position_z) "
                               "VALUES (%u, %u, '%s', %u, %u, 0, %u, %u, %u, %f, %f, %f)",
                               guid, accountId, gmName.c_str(),
                               team == ALLIANCE ? RACE_HUMAN : RACE_ORC, // Race
                               CLASS_WARRIOR, // Class
                               60, // Level
                               team == ALLIANCE ? 1519 : 1637, // Zone (Stormwind or Orgrimmar)
                               team == ALLIANCE ? 0 : 1, // Map (Eastern Kingdoms or Kalimdor)
                               team == ALLIANCE ? -8833.38f : 1632.54f, // x
                               team == ALLIANCE ? 628.628f : -4440.77f, // y
                               team == ALLIANCE ? 94.0066f : 15.4526f // z
    );

    // Cache the player
    sObjectMgr.InsertPlayerInCache(guid, // guid
                                   team == ALLIANCE ? RACE_HUMAN : RACE_ORC, // race
                                   CLASS_WARRIOR, // class
                                   0, // gender
                                   accountId, // account
                                   gmName, // name
                                   60, // level
                                   team == ALLIANCE ? 1519 : 1637 // zoneId
    );

    CharacterDatabase.CommitTransaction();
}

bool GuildMgr::IsStarterGuildMaster(ObjectGuid guid) const
{
    PlayerCacheData const* data = sObjectMgr.GetPlayerDataByGUID(guid.GetCounter());
    if (!data)
        return false;

    return data->uiAccount == m_starterGuildMasterAccount;
}

Guild* GuildMgr::CreateStarterGuild(Team team, const std::string& suffix)
{
    // Check if we've reached maximum number of guilds
    const uint32 MAX_STARTER_GUILDS = 1000;
    uint32 currentGuildCount = 0;

    for (GuildMap::iterator itr = m_GuildMap.begin(); itr != m_GuildMap.end(); ++itr)
    {
        if (itr->second->GetName().find("Starter Guild") != std::string::npos)
            currentGuildCount++;
    }

    if (currentGuildCount >= MAX_STARTER_GUILDS)
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "Maximum number of starter guilds reached!");
        return nullptr;
    }

    std::string guildName = (team == ALLIANCE) ? "Alliance Starter Guild" : "Horde Starter Guild";
    if (!suffix.empty())
        guildName += " " + suffix;

    // Get or create the starter guild master account
    uint32 accountId = CreateOrGetStarterGuildMasterAccount();
    if (!accountId)
        return nullptr;

    // Create the guild master character
    CreateGuildMasterCharacter(team, suffix, accountId);

    // Find the newly created character's GUID
    std::string gmName = (team == ALLIANCE ? "AllianceGuildMaster" : "HordeGuildMaster") + suffix;
    ObjectGuid gmGuid = sObjectMgr.GetPlayerGuidByName(gmName);

    if (!gmGuid)
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "Failed to find guild master character!");
        return nullptr;
    }

    Guild* guild = new Guild;
    if (!guild->Create(gmGuid, guildName))
    {
        delete guild;
        return nullptr;
    }

    AddGuild(guild);
    return guild;
}

void GuildMgr::LoadPetitions()
{
    CleanUpPetitions(); // for reload
    uint32 count = 0;

    //                                                                     0            1                2               3
    std::unique_ptr<QueryResult> result = CharacterDatabase.Query("SELECT `owner_guid`, `petition_guid`, `charter_guid`, `name` FROM `petition`");

    if (!result)
    {
        BarGoLink bar(1);

        bar.step();

        sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "");
        sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, ">> Loaded %u petitions", count);
        return;
    }

    // load signatures
    //                                                                                         0             1                2              3
    std::unique_ptr<QueryResult> petitionSignaturesDbResult = CharacterDatabase.Query("SELECT `owner_guid`, `petition_guid`, `player_guid`, `player_account` FROM `petition_sign`");

    BarGoLink bar(result->GetRowCount());

    do
    {
        bar.step();
        ++count;

        Petition* petition = new Petition();
        if (!petition->LoadFromDB(std::move(result)))
        {
            petition->Delete();
            delete petition;
            continue;
        }

        m_petitionMap[petition->GetId()] = petition;
    } while (result->NextRow());

    if (petitionSignaturesDbResult)
    {
        do
        {
            Field* fields = petitionSignaturesDbResult->Fetch();

            ObjectGuid ownerGuid = ObjectGuid(HIGHGUID_PLAYER, fields[0].GetUInt32());
            uint32 petitionId = fields[1].GetUInt32();
            ObjectGuid playerGuid = ObjectGuid(HIGHGUID_PLAYER, fields[2].GetUInt32());
            uint32 accountId = fields[3].GetUInt32();

            Petition* petition = GetPetitionById(petitionId);

            if (!petition)
            {
                // Signatures for a petition that does not exist. Delete it
                sLog.Out(LOG_DBERROR, LOG_LVL_MINIMAL, "Signatures exist for petition %u that does not exist", petitionId);
                CharacterDatabase.PExecute("DELETE FROM `petition_sign` WHERE `petition_guid` = '%u'", petitionId);
                continue;
            }

            if (ownerGuid != petition->GetOwnerGuid())
            {
                sLog.Out(LOG_DBERROR, LOG_LVL_MINIMAL, "Signatures exist for petition %u with a different owner, updating", petitionId);
                CharacterDatabase.PExecute("UPDATE `petition_sign` SET `owner_guid` = '%u' WHERE `petition_guid` = '%u'",
                    petition->GetOwnerGuid().GetCounter(), petition->GetId());

                ownerGuid = petition->GetOwnerGuid();
            }

            PetitionSignature* signature = new PetitionSignature(petition, playerGuid, accountId);
            petition->AddSignature(signature);

        } while (petitionSignaturesDbResult->NextRow());
    }

    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "");
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, ">> Loaded %u petitions", count);
}

Petition::~Petition()
{
    for (const auto& itr : m_signatures)
        delete itr;

    m_signatures.clear();
}

void GuildMgr::CreatePetition(uint32 id, Player* player, ObjectGuid const& charterGuid, std::string& name)
{
    Petition* petition = new Petition(id, ObjectGuid(charterGuid), ObjectGuid(player->GetObjectGuid()), name);
    petition->SetTeam(player->GetTeam());
    petition->SaveToDB();

    std::lock_guard<std::shared_timed_mutex> guard(m_petitionsMutex);
    m_petitionMap[petition->GetId()] = petition;
}

void GuildMgr::DeletePetition(Petition* petition)
{
    std::lock_guard<std::shared_timed_mutex> guard(m_petitionsMutex);
    m_petitionMap.erase(petition->GetId());

    petition->Delete();
    delete petition;
}

Petition* GuildMgr::GetPetitionById(uint32 id)
{
    std::shared_lock<std::shared_timed_mutex> guard(m_petitionsMutex);
    PetitionMap::iterator iter = m_petitionMap.find(id);
    if (iter != m_petitionMap.end())
        return iter->second;

    return nullptr;
}

Petition* GuildMgr::GetPetitionByCharterGuid(ObjectGuid const& charterGuid)
{
    std::shared_lock<std::shared_timed_mutex> guard(m_petitionsMutex);
    for (const auto& iter : m_petitionMap)
    {
        Petition* petition = iter.second;
        if (petition->GetCharterGuid() == charterGuid)
            return petition;
    }

    return nullptr;
}

Petition* GuildMgr::GetPetitionByOwnerGuid(ObjectGuid const& ownerGuid)
{
    std::shared_lock<std::shared_timed_mutex> guard(m_petitionsMutex);
    for (const auto& iter : m_petitionMap)
    {
        Petition* petition = iter.second;
        if (petition->GetOwnerGuid() == ownerGuid)
            return petition;
    }

    return nullptr;
}

void GuildMgr::DeletePetitionSignaturesByPlayer(ObjectGuid guid, uint32 exceptPetitionId)
{
    std::lock_guard<std::shared_timed_mutex> guard(m_petitionsMutex);
    for (const auto& iter : m_petitionMap)
    {
        if (iter.first == exceptPetitionId)
            continue;

        Petition* petition = iter.second;
        petition->DeleteSignatureByPlayer(guid);
    }
}

bool Petition::LoadFromDB(const std::unique_ptr<QueryResult>& result)
{
    if (!result)
    {
        sLog.Out(LOG_DBERROR, LOG_LVL_MINIMAL, "[Petitions] Unable to load petitions from DB");
        return false;
    }

    // SELECT owner_guid, petition_guid, name FROM petition
    Field* fields = result->Fetch();

    m_ownerGuid = ObjectGuid(HIGHGUID_PLAYER, fields[0].GetUInt32());
    m_id = fields[1].GetUInt32();
    m_charterGuid = ObjectGuid(HIGHGUID_ITEM, fields[2].GetUInt32());
    m_name = fields[3].GetString();

    m_team = sObjectMgr.GetPlayerTeamByGUID(m_ownerGuid);

    return true;
}

void Petition::Delete()
{
    // Only delete if initialized
    if (m_id)
    {
        CharacterDatabase.BeginTransaction();
        CharacterDatabase.PExecute("DELETE FROM `petition` WHERE `petition_guid` = '%u'", m_id);
        CharacterDatabase.PExecute("DELETE FROM `petition_sign` WHERE `petition_guid` = '%u'", m_id);
        CharacterDatabase.CommitTransaction();
    }
}

void Petition::BuildSignatureData(WorldPacket& data)
{
    for (const auto signature : m_signatures)
    {
        data << signature->GetSignatureGuid();
        data << 0;
    }
}

bool Petition::Rename(std::string& newname)
{
    std::string db_newname = newname;
    CharacterDatabase.escape_string(db_newname);
    CharacterDatabase.PExecute("UPDATE `petition` SET `name` = '%s' WHERE `petition_guid` = '%u'",
        db_newname.c_str(), m_id);

    sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "Petition %u renamed to '%s'", m_id, newname.c_str());

    m_name = newname;

    return true;
}

void Petition::SaveToDB()
{
    std::string escaped_name = m_name;
    CharacterDatabase.escape_string(escaped_name);
    CharacterDatabase.PExecute("INSERT INTO `petition` (`owner_guid`, `petition_guid`, `charter_guid`, `name`) VALUES ('%u', '%u', '%u', '%s')",
        m_ownerGuid.GetCounter(), m_id, m_charterGuid.GetCounter(), escaped_name.c_str());
}

PetitionSignature* Petition::GetSignatureForPlayer(Player* player)
{
    PetitionSignature* signature = nullptr;
    // Note that in pretty much any case if the player has a signature on
    // this petition, then the account has a signature. Therefore, it will
    // return here
    if (signature = GetSignatureForAccount(player->GetSession()->GetAccountId()))
        return signature;

    if (signature = GetSignatureForPlayerGuid(player->GetObjectGuid()))
        return signature;

    return nullptr;
}

PetitionSignature* Petition::GetSignatureForAccount(uint32 accountId)
{
    for (const auto signature : m_signatures)
    {
        if (signature->GetSignatureAccountId() == accountId)
            return signature;
    }

    return nullptr;
}

PetitionSignature* Petition::GetSignatureForPlayerGuid(ObjectGuid const& guid)
{
    for (const auto signature : m_signatures)
    {
        if (signature->GetSignatureGuid() == guid)
            return signature;
    }

    return nullptr;
}

void Petition::AddSignature(PetitionSignature* signature)
{
    m_signatures.push_back(signature);
}

bool Petition::AddNewSignature(Player* player)
{
    if (IsComplete())
        return false;

    PetitionSignature* signature = new PetitionSignature(this, player);
    signature->SaveToDB();
    AddSignature(signature);

    return true;
}

void Petition::DeleteSignatureByPlayer(ObjectGuid guid)
{
    for (auto itr = m_signatures.begin(); itr != m_signatures.end(); ++itr)
    {
        if ((*itr)->GetSignatureGuid() == guid)
        {
            delete (*itr);
            m_signatures.erase(itr);
            return;
        }
    }
}

PetitionSignature::PetitionSignature(Petition* petition, Player* player)
    : m_petition(petition), m_playerGuid(player->GetObjectGuid()),
    m_playerAccount(player->GetSession()->GetAccountId())
{

}

void PetitionSignature::SaveToDB()
{
    CharacterDatabase.PExecute("INSERT INTO `petition_sign` (`owner_guid`, `petition_guid`, `player_guid`, `player_account`) VALUES ('%u', '%u', '%u','%u')",
        m_petition->GetOwnerGuid().GetCounter(), m_petition->GetId(), m_playerGuid.GetCounter(), m_playerAccount);
}
