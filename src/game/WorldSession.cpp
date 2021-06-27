/*
 * Copyright (C) 2005-2011 MaNGOS <http://getmangos.com/>
 * Copyright (C) 2009-2011 MaNGOSZero <https://github.com/mangos/zero>
 * Copyright (C) 2011-2016 Nostalrius <https://nostalrius.org>
 * Copyright (C) 2016-2017 Elysium Project <https://github.com/elysium-project>
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

/** \file
    \ingroup u2w
*/

#include "WorldSocket.h"                                    // must be first to make ACE happy with ACE includes in it
#include "Common.h"
#include "Database/DatabaseEnv.h"
#include "Log.h"
#include "Opcodes.h"
#include "WorldPacket.h"
#include "WorldSession.h"
#include "Player.h"
#include "ObjectMgr.h"
#include "Group.h"
#include "Guild.h"
#include "GuildMgr.h"
#include "World.h"
#include "ObjectAccessor.h"
#include "BattleGroundMgr.h"
#include "MapManager.h"
#include "SocialMgr.h"

#include "PlayerBotMgr.h"
#include "Anticheat.h"
#include "Language.h"
#include "Auth/Sha1.h"
#include "ChannelMgr.h"
#include "Chat.h"
#include "Channel.h"
#include "AccountMgr.h"
#include "MasterPlayer.h"
#include "turtlewow/transmog/transmog.h"

// select opcodes appropriate for processing in Map::Update context for current session state
static bool MapSessionFilterHelper(WorldSession* session, OpcodeHandler const& opHandle)
{
    // we do not process not logged in player packets
    Player * plr = session->GetPlayer();
    if (!plr)
        return false;

    // in Map::Update() we do not process packets where player is not in world!
    return plr->IsInWorld();
}


bool MapSessionFilter::Process(WorldPacket * packet)
{
    OpcodeHandler const& opHandle = opcodeTable[packet->GetOpcode()];
    // let's check if our opcode can be really processed in Map::Update()
    return MapSessionFilterHelper(m_pSession, opHandle);
}

/// WorldSession constructor
WorldSession::WorldSession(uint32 id, WorldSocket *sock, AccountTypes sec, time_t mute_time, LocaleConstant locale, const std::string& remote_ip) :
    m_muteTime(mute_time), m_connected(true), m_disconnectTimer(0), m_who_recvd(false),
    m_ah_list_recvd(false), _scheduleBanLevel(0),
    _accountFlags(0), m_idleTime(WorldTimer::getMSTime()), _player(nullptr), m_Socket(sock), _security(sec), _accountId(id), _logoutTime(0), m_inQueue(false),
    m_playerLoading(false), m_playerLogout(false), m_playerRecentlyLogout(false), m_playerSave(false), m_sessionDbcLocale(sWorld.GetAvailableDbcLocale(locale)),
    m_sessionDbLocaleIndex(sObjectMgr.GetIndexForLocale(locale)), m_latency(0), m_tutorialState(TUTORIALDATA_UNCHANGED), m_warden(nullptr), m_cheatData(nullptr),
    m_bot(nullptr), m_lastReceivedPacketTime(0), _clientOS(CLIENT_OS_UNKNOWN), _gameBuild(0),
    _charactersCount(10), _characterMaxLevel(0), _clientHashComputeStep(HASH_NOT_COMPUTED),
    m_lastPubChannelMsgTime(0), m_moveRejectTime(0), m_masterPlayer(nullptr)
{
    if (sock)
    {
        m_Address = remote_ip;
        sock->AddReference();
    }
    else
        m_Address = "<BOT>";
}

/// WorldSession destructor
WorldSession::~WorldSession()
{
    ///- unload player if not unloaded
    if (_player)
        LogoutPlayer(true);

    /// - If have unclosed socket, close it
    if (m_Socket)
    {
        m_Socket->CloseSocket();
        m_Socket->RemoveReference();
        m_Socket = nullptr;
    }

    ///- empty incoming packet queue
    WorldPacket* packet = nullptr;
    for (auto& i : _recvQueue)
        while (i.next(packet))
            delete packet;

    delete m_warden;
    delete m_cheatData;
}

void WorldSession::SizeError(WorldPacket const& packet, uint32 size) const
{
    sLog.outError("Client (account %u) send packet %s (%u) with size " SIZEFMTD " but expected %u (attempt crash server?), skipped",
                  GetAccountId(), LookupOpcodeName(packet.GetOpcode()), packet.GetOpcode(), packet.size(), size);
}

/// Get the player name
char const* WorldSession::GetPlayerName() const
{
    return GetPlayer() ? GetPlayer()->GetName() : "<none>";
}

/// Send a packet to the client
void WorldSession::SendPacket(WorldPacket const* packet)
{
    // There is a maximum size packet.
    if (packet->size() > 0x8000)
    {
        // Packet will be rejected by client
        sLog.outInfo("[NETWORK] Packet %s size %u is too large. Not sent [Account %u Player %s]", LookupOpcodeName(packet->GetOpcode()), packet->size(), GetAccountId(), GetPlayerName());
        return;
    }

#ifdef _DEBUG

    // Code for network use statistic
    static uint64 sendPacketCount = 0;
    static uint64 sendPacketBytes = 0;

    static time_t firstTime = time(nullptr);
    static time_t lastTime = firstTime;                     // next 60 secs start time

    static uint64 sendLastPacketCount = 0;
    static uint64 sendLastPacketBytes = 0;

    time_t cur_time = time(nullptr);

    if ((cur_time - lastTime) < 60)
    {
        sendPacketCount += 1;
        sendPacketBytes += packet->size();

        sendLastPacketCount += 1;
        sendLastPacketBytes += packet->size();
    }
    else
    {
        uint64 minTime = uint64(cur_time - lastTime);
        uint64 fullTime = uint64(lastTime - firstTime);
        DETAIL_LOG("Send all time packets count: " UI64FMTD " bytes: " UI64FMTD " avr.count/sec: %f avr.bytes/sec: %f time: %u", sendPacketCount, sendPacketBytes, float(sendPacketCount) / fullTime, float(sendPacketBytes) / fullTime, uint32(fullTime));
        DETAIL_LOG("Send last min packets count: " UI64FMTD " bytes: " UI64FMTD " avr.count/sec: %f avr.bytes/sec: %f", sendLastPacketCount, sendLastPacketBytes, float(sendLastPacketCount) / minTime, float(sendLastPacketBytes) / minTime);

        lastTime = cur_time;
        sendLastPacketCount = 1;
        sendLastPacketBytes = packet->wpos(); // wpos is real written size
    }
#endif

    if (Player* player = GetPlayer())
    {
        DEBUG_UNIT_IF(packet->GetOpcode() != SMSG_MESSAGECHAT && packet->GetOpcode() != SMSG_WARDEN_DATA, player,
            DEBUG_PACKETS_SEND, "[%s] Send packet : %u/0x%x (%s)", player->GetName(), packet->GetOpcode(), packet->GetOpcode(), LookupOpcodeName(packet->GetOpcode()));
    }

	if (m_Socket == nullptr)
	{
		return;
	}

    if (m_Socket->SendPacket(*packet) == -1)
        m_Socket->CloseSocket();
}

/// Add an incoming packet to the queue
void WorldSession::QueuePacket(WorldPacket* newPacket)
{
    OpcodeHandler const& opHandle = opcodeTable[newPacket->GetOpcode()];
    if (opHandle.packetProcessing >= PACKET_PROCESS_MAX_TYPE)
    {
        sLog.outError("SESSION: opcode %s (0x%.4X) will be skipped",
                      LookupOpcodeName(newPacket->GetOpcode()),
                      newPacket->GetOpcode());
        return;
    }
    m_lastReceivedPacketTime = newPacket->GetPacketTime();

    uint32 processing = opHandle.packetProcessing;
    _recvQueue[processing].add(newPacket);
}

/// Logging helper for unexpected opcodes
void WorldSession::LogUnexpectedOpcode(WorldPacket* packet, const char *reason)
{
    DEBUG_LOG("SESSION: received unexpected opcode %s (0x%.4X) %s",
                  LookupOpcodeName(packet->GetOpcode()),
                  packet->GetOpcode(),
                  reason);
}

/// Logging helper for unexpected opcodes
void WorldSession::LogUnprocessedTail(WorldPacket *packet)
{
    sLog.outError("SESSION: opcode %s (0x%.4X) have unprocessed tail data (read stop at " SIZEFMTD " from " SIZEFMTD ")",
                  LookupOpcodeName(packet->GetOpcode()),
                  packet->GetOpcode(),
                  packet->rpos(), packet->wpos());
}

bool WorldSession::ForcePlayerLogoutDelay()
{
    if (!sWorld.IsStopped() && GetPlayer() && GetPlayer()->FindMap() && GetPlayer()->IsInWorld() && sPlayerBotMgr.ForceLogoutDelay())
    {
        sLog.out(LOG_CHAR, "Account: %d (IP: %s) Lost socket for character:[%s] (guid: %u)", GetAccountId(), GetRemoteAddress().c_str(), _player->GetName() , _player->GetGUIDLow());
        GetPlayer()->OnDisconnected();
        SetDisconnectedSession();
        m_disconnectTimer = 120000;
        return true;
    }
    return false;
}

/// Update the WorldSession (triggered by World update)
bool WorldSession::Update(PacketFilter& updater)
{
    uint32 sessionUpdateTime = WorldTimer::getMSTime();
    for (uint32 & i : _floodPacketsCount)
        i = 0;

    ///- Retrieve packets from the receive queue and call the appropriate handlers
    ProcessPackets(updater);

    if(CharacterScreenIdleKick(sessionUpdateTime))
        return false;

    sessionUpdateTime = WorldTimer::getMSTimeDiffToNow(sessionUpdateTime);

    if (sWorld.getConfig(CONFIG_UINT32_PERFLOG_SLOW_UNIQUE_SESSION_UPDATE) && sessionUpdateTime > sWorld.getConfig(CONFIG_UINT32_PERFLOG_SLOW_UNIQUE_SESSION_UPDATE))
        sLog.out(LOG_PERFORMANCE, "Slow session update: %ums. Account %u on IP %s", sessionUpdateTime, GetAccountId(), GetRemoteAddress().c_str());

    if (m_Socket && !m_Socket->IsClosed() && m_warden)
        m_warden->Update();

    //check if we are safe to proceed with logout
    //logout procedure should happen only in World::UpdateSessions() method!!!
    if (updater.ProcessLogout())
    {
        if (m_bot != nullptr && m_bot->state == PB_STATE_OFFLINE)
        {
            LogoutPlayer(true);
            return false;
        }

        if (_clientHashComputeStep == HASH_COMPUTED && GetPlayer())
        {
            _clientHashComputeStep = HASH_NOTIFIED;
        }
        ///- Cleanup socket pointer if need
        if (m_Socket && m_Socket->IsClosed())
        {
            m_Socket->RemoveReference();
            m_Socket = nullptr;

            // Character stays IG for 2 minutes
            return ForcePlayerLogoutDelay();
        }

        ///- If necessary, log the player out
        time_t currTime = time(nullptr);
        bool forceConnection = sPlayerBotMgr.ForceAccountConnection(this);
        if (sWorld.IsStopped())
            forceConnection = false;
        if ((!m_Socket || (ShouldLogOut(currTime) && !m_playerLoading)) && !forceConnection && m_bot == nullptr)
            LogoutPlayer(true);

        if (!m_Socket && !forceConnection && this->m_bot == nullptr)
            return false;                                       //Will remove this session from the world session map
    }
    else // Async map based update
    {
        if (GetMasterPlayer() && GetPlayer())
        {
            GetMasterPlayer()->LoadPlayer(GetPlayer());
            GetMasterPlayer()->Update();
        }
        // else
        // TODO: Broadcast MasterPlayer update to Master
    }
    return true;
}

bool WorldSession::CanProcessPackets() const
{
    return ((m_Socket && !m_Socket->IsClosed()) || (_player && sPlayerBotMgr.IsChatBot(_player->GetGUIDLow())));
}

void WorldSession::ProcessPackets(PacketFilter& updater)
{
    WorldPacket* packet = nullptr;
    _receivedPacketType[updater.PacketProcessType()] = false;
    while (CanProcessPackets() && _recvQueue[updater.PacketProcessType()].next(packet, updater))
    {
        _receivedPacketType[updater.PacketProcessType()] = true;
        if (!AllowPacket(packet->GetOpcode()))
            break;

        ALL_SESSION_SCRIPTS(this, OnPacket(packet->GetOpcode()));
        OpcodeHandler const& opHandle = opcodeTable[packet->GetOpcode()];
        try
        {
            uint32 packetTime = WorldTimer::getMSTime();
            switch (opHandle.status)
            {
                case STATUS_LOGGEDIN:

                    if (!_player)
                    {
                        // skip STATUS_LOGGEDIN opcode unexpected errors if player logout sometime ago - this can be network lag delayed packets
                        if (!m_playerRecentlyLogout)
                            LogUnexpectedOpcode(packet, "the player has not logged in yet");
                    }
                    else if (_player->IsInWorld())
                        ExecuteOpcode(opHandle, packet);

                    // lag can cause STATUS_LOGGEDIN opcodes to arrive after the player started a transfer
                    break;
                case STATUS_LOGGEDIN_OR_RECENTLY_LOGGEDOUT:
                    if (!_player && !m_playerRecentlyLogout)
                        LogUnexpectedOpcode(packet, "the player has not logged in yet and not recently logout");
                    else
                        // not expected _player or must checked in packet hanlder
                        ExecuteOpcode(opHandle, packet);
                    break;
                case STATUS_TRANSFER:
                    if (!_player)
                        LogUnexpectedOpcode(packet, "the player has not logged in yet");
                    else if (_player->IsInWorld())
                        LogUnexpectedOpcode(packet, "the player is still in world");
                    else
                        ExecuteOpcode(opHandle, packet);
                    break;
                case STATUS_AUTHED:
                    // prevent cheating with skip queue wait
                    if (m_inQueue)
                    {
                        LogUnexpectedOpcode(packet, "the player not pass queue yet");
                        break;
                    }

                    // single from authed time opcodes send in to after logout time
                    // and before other STATUS_LOGGEDIN_OR_RECENTLY_LOGGOUT opcodes.
                    m_playerRecentlyLogout = false;

                    ExecuteOpcode(opHandle, packet);
                    break;
                case STATUS_NEVER:
                    sLog.outError("SESSION: received not allowed opcode %s (0x%.4X)",
                                  opHandle.name,
                                  packet->GetOpcode());
                    break;
                case STATUS_UNHANDLED:
                    DEBUG_LOG("SESSION: received not handled opcode %s (0x%.4X)",
                              opHandle.name,
                              packet->GetOpcode());
                    break;
                default:
                    sLog.outError("SESSION: received wrong-status-req opcode %s (0x%.4X)",
                                  opHandle.name,
                                  packet->GetOpcode());
                    break;
            }
            packetTime = WorldTimer::getMSTimeDiffToNow(packetTime);
            if (sWorld.getConfig(CONFIG_UINT32_PERFLOG_SLOW_PACKET) && packetTime > sWorld.getConfig(CONFIG_UINT32_PERFLOG_SLOW_PACKET))
                sLog.out(LOG_PERFORMANCE, "Slow packet opcode %s: %ums. Account %u on IP %s", opHandle.name, packetTime, GetAccountId(), GetRemoteAddress().c_str());
        }
        catch (ByteBufferException &)
        {
            sLog.outError("WorldSession::Update ByteBufferException occured while parsing a packet (opcode:0x%x) from client %s, accountid=%i.",
                          packet->GetOpcode(), GetRemoteAddress().c_str(), GetAccountId());
            if (sLog.HasLogLevelOrHigher(LOG_LVL_DEBUG))
            {
                DEBUG_LOG("Dumping error causing packet:");
                packet->hexlike();
            }

            if (sWorld.getConfig(CONFIG_BOOL_KICK_PLAYER_ON_BAD_PACKET))
            {
                DETAIL_LOG("Disconnecting session [account id %u / address %s] for badly formatted packet.",
                           GetAccountId(), GetRemoteAddress().c_str());
                ProcessAnticheatAction("Anticrash", "ByteBufferException", CHEAT_ACTION_KICK);
            }
        }
        catch (std::runtime_error &e)
        {
            sLog.outInfo("CATCH Exception 'ASSERT' for account %u / IP %s", GetAccountId(), GetRemoteAddress().c_str());
            sLog.outInfo(e.what());
            ProcessAnticheatAction("Anticrash", "ASSERT failed", CHEAT_ACTION_KICK);
        }
        catch (...)
        {
            sLog.outInfo("CATCH Unknown exception. Account %u / IP %s", GetAccountId(), GetRemoteAddress().c_str());
            ProcessAnticheatAction("Anticrash", "Exception raised", CHEAT_ACTION_KICK);
        }

        delete packet;
    }
}


void WorldSession::ClearIncomingPacketsByType(PacketProcessing type)
{
    ASSERT(type < PACKET_PROCESS_MAX_TYPE);
    WorldPacket* data = nullptr;
    while (_recvQueue[type].next(data))
        delete data;
}

void WorldSession::SetDisconnectedSession()
{
    m_connected = false;
    sWorld.SetSessionDisconnected(this);
}

bool WorldSession::UpdateDisconnected(uint32 diff)
{
    ASSERT(!m_connected);
    if (!_player || !_player->IsInWorld() || !_player->FindMap())
        return false;
    if (m_disconnectTimer < diff)
        return false; // Delete this session
    m_disconnectTimer -= diff;
    return true;
}

/// %Log the player out
void WorldSession::LogoutPlayer(bool Save)
{
    // finish pending transfers before starting the logout
    /* while(_player && _player->IsBeingTeleportedFar())
        HandleMoveWorldportAckOpcode(); */

    m_idleTime = WorldTimer::getMSTime();
    m_playerLogout = true;
    m_playerSave = Save;
    bool doBanPlayer = false;

    if (_player)
    {
        bool inWorld = _player->IsInWorld() && _player->FindMap();

        sLog.out(LOG_CHAR, "Account: %d (IP: %s) Logout Character:[%s] (guid: %u)", GetAccountId(), GetRemoteAddress().c_str(), _player->GetName() , _player->GetGUIDLow());
        if (ObjectGuid lootGuid = GetPlayer()->GetLootGuid())
            DoLootRelease(lootGuid);

        ///- If the player just died before logging out, make him appear as a ghost
        if (inWorld && _player->GetDeathTimer())
        {
            _player->GetHostileRefManager().deleteReferences();
            _player->BuildPlayerRepop();
            _player->RepopAtGraveyard();
        }
        else if (inWorld && _player->IsInCombat())
        {
            _player->CombatStop();
            _player->GetHostileRefManager().setOnlineOfflineState(false);
        }
        else if (inWorld && _player->HasAuraType(SPELL_AURA_SPIRIT_OF_REDEMPTION))
        {
            // this will kill character by SPELL_AURA_SPIRIT_OF_REDEMPTION
            _player->RemoveSpellsCausingAura(SPELL_AURA_MOD_SHAPESHIFT);
            //_player->SetDeathPvP(*); set at SPELL_AURA_SPIRIT_OF_REDEMPTION apply time
            _player->KillPlayer();
            _player->BuildPlayerRepop();
            _player->RepopAtGraveyard();
        }
        //drop a flag if player is carrying it
        if (BattleGround *bg = _player->GetBattleGround())
            _player->LeaveBattleground(true);

        ///- Teleport to home if the player is in an invalid instance
        if (!_player->m_InstanceValid && !_player->IsGameMaster())
        {
            _player->TeleportToHomebind();
            //this is a bad place to call for far teleport because we need player to be in world for successful logout
            //maybe we should implement delayed far teleport logout?
            sMapMgr.ExecuteSingleDelayedTeleport(_player);
        }

        // FG: finish pending transfers after starting the logout
        // this should fix players being able to logout and login back with full hp at death position
        while (_player->IsBeingTeleportedFar())
        {
            HandleMoveWorldportAckOpcode();
            sMapMgr.ExecuteSingleDelayedTeleport(_player); // Execute chain teleport if there are some
        }

        // Refresh apres ca
        inWorld = _player->IsInWorld() && _player->FindMap();
        if (!inWorld)
        {
            Save = false;
            sLog.outInfo("[CRASH] Joueur %s pas dans le monde a la deco.", _player->GetName());
        }
        else if (ShouldBeBanned(_player->GetLevel()))
            doBanPlayer = true;

        sBattleGroundMgr.PlayerLoggedOut(_player);

        ///- Reset the online field in the account table
        // no point resetting online in character table here as Player::SaveToDB() will set it to 1 since player has not been removed from world at this stage
        // No SQL injection as AccountID is uint32
        static SqlStatementID id;

        SqlStatement stmt = LoginDatabase.CreateStatement(id, "UPDATE account SET current_realm = ?, online = 0 WHERE id = ?");
        stmt.PExecute(uint32(0), GetAccountId());

        ///- If the player is in a guild, update the guild roster and broadcast a logout message to other guild members
        if (Guild* guild = sGuildMgr.GetGuildById(_player->GetGuildId()))
        {
            if (MemberSlot* slot = guild->GetMemberSlot(_player->GetObjectGuid()))
            {
                slot->SetMemberStats(_player);
                slot->UpdateLogoutTime();
            }

            guild->BroadcastEvent(GE_SIGNED_OFF, _player->GetObjectGuid(), _player->GetName());
        }

        ///- Remove pet
        _player->RemovePet(PET_SAVE_AS_CURRENT);

        // Dungeon anti-exploit. Should be before save
        bool removedFromMap = false;
        if (Map* map = _player->FindMap())
        {
            if (map->IsNonRaidDungeon() && _player->GetGroup())
            {
                AreaTriggerTeleport const* at = sObjectMgr.GetGoBackTrigger(map->GetId());
                if (at)
                    removedFromMap = _player->TeleportTo(at->destination);
                else
                    removedFromMap = _player->TeleportToHomebind();

                sMapMgr.ExecuteSingleDelayedTeleport(_player);
            }
        }
        ///- empty buyback items and save the player in the database
        // some save parts only correctly work in case player present in map/player_lists (pets, etc)
        if (Save)
        {
            if (inWorld && sWorld.getConfig(CONFIG_BOOL_TRANSMOG_ENABLED))
                sTransmog.LoadTransmog(_player, true);
            _player->SaveToDB(false, removedFromMap);
        }

        ///- Leave all channels before player delete...
        _player->CleanupChannels();

        ///- If the player is in a group (or invited), remove him. If the group if then only 1 person, disband the group.
        _player->UninviteFromGroup();

        // remove player from the group if he is:
        // a) in group; b) not in raid group; c) logging out normally (not being kicked or disconnected)
        if (_player->GetGroup() && !_player->GetGroup()->isRaidGroup() && m_Socket)
            _player->RemoveFromGroup();

        ///- Send update to group
        if (Group* group = _player->GetGroup())
            group->UpdatePlayerOnlineStatus(_player, false);

        ///- Update cached data at logout
        sObjectMgr.UpdatePlayerCache(_player);

        ///- Remove the player from the world
        // the player may not be in the world when logging out
        // e.g if he got disconnected during a transfer to another map
        // calls to GetMap in this case may cause crashes

        if (inWorld && !removedFromMap)
        {
            Map* _map = _player->GetMap();
            _map->Remove(_player, true);
        }
        else
        {
            _player->CleanupsBeforeDelete();
            Map::DeleteFromWorld(_player);
        }

        SetPlayer(nullptr);                                    // deleted in Remove/DeleteFromWorld call

        ///- Send the 'logout complete' packet to the client
        WorldPacket data(SMSG_LOGOUT_COMPLETE, 0);
        SendPacket(&data);

        DEBUG_LOG("SESSION: Sent SMSG_LOGOUT_COMPLETE Message");
    }

    if (m_masterPlayer)
    {
        ///- Broadcast a logout message to the player's friends
        if (m_masterPlayer->GetSocial())
        {
            sSocialMgr.SendFriendStatus(m_masterPlayer, FRIEND_OFFLINE, m_masterPlayer->GetObjectGuid(), true);
            sSocialMgr.RemovePlayerSocial(m_masterPlayer->GetGUIDLow());
            m_masterPlayer->SetSocial(nullptr);
        }

        m_masterPlayer->SaveToDB();
        delete m_masterPlayer;
        m_masterPlayer = nullptr;
    }

    m_playerLogout = false;
    m_playerSave = false;
    m_playerRecentlyLogout = true;
    LogoutRequest(0);

    if (doBanPlayer)
        sWorld.BanAccount(BAN_ACCOUNT, GetUsername(), 0, _scheduleBanReason, "");
}

/// Kick a player out of the World
void WorldSession::KickPlayer()
{
    if (m_Socket)
        m_Socket->CloseSocket();
}

/// Cancel channeling handler

void WorldSession::SendAreaTriggerMessage(const char* Text, ...)
{
    va_list ap;
    char szStr [1024];
    szStr[0] = '\0';

    va_start(ap, Text);
    vsnprintf(szStr, 1024, Text, ap);
    va_end(ap);

    uint32 length = strlen(szStr) + 1;
    WorldPacket data(SMSG_AREA_TRIGGER_MESSAGE, 4 + length);
    data << length;
    data << szStr;
    SendPacket(&data);
}

void WorldSession::SendNotification(const char *format, ...)
{
    if (format)
    {
        va_list ap;
        char szStr [1024];
        szStr[0] = '\0';
        va_start(ap, format);
        vsnprintf(szStr, 1024, format, ap);
        va_end(ap);

        WorldPacket data(SMSG_NOTIFICATION, (strlen(szStr) + 1));
        data << szStr;
        SendPacket(&data);
    }
}

void WorldSession::SendNotification(int32 string_id, ...)
{
    char const* format = GetMangosString(string_id);
    if (format)
    {
        va_list ap;
        char szStr [1024];
        szStr[0] = '\0';
        va_start(ap, string_id);
        vsnprintf(szStr, 1024, format, ap);
        va_end(ap);

        WorldPacket data(SMSG_NOTIFICATION, (strlen(szStr) + 1));
        data << szStr;
        SendPacket(&data);
    }
}

const char * WorldSession::GetMangosString(int32 entry) const
{
    return sObjectMgr.GetMangosString(entry, GetSessionDbLocaleIndex());
}

void WorldSession::Handle_NULL(WorldPacket& recvPacket)
{
    sLog.outError("SESSION: received unimplemented opcode %s (0x%.4X)",
                  LookupOpcodeName(recvPacket.GetOpcode()),
                  recvPacket.GetOpcode());
}

void WorldSession::Handle_EarlyProccess(WorldPacket& recvPacket)
{
    sLog.outError("SESSION: received opcode %s (0x%.4X) that must be processed in WorldSocket::OnRead",
                  LookupOpcodeName(recvPacket.GetOpcode()),
                  recvPacket.GetOpcode());
}

void WorldSession::Handle_ServerSide(WorldPacket& recvPacket)
{
    sLog.outError("SESSION: received server-side opcode %s (0x%.4X)",
                  LookupOpcodeName(recvPacket.GetOpcode()),
                  recvPacket.GetOpcode());
}

void WorldSession::Handle_Deprecated(WorldPacket& recvPacket)
{
    sLog.outError("SESSION: received deprecated opcode %s (0x%.4X)",
                  LookupOpcodeName(recvPacket.GetOpcode()),
                  recvPacket.GetOpcode());
}

void WorldSession::SendAuthWaitQue(uint32 position)
{
    if (position == 0)
    {
        WorldPacket packet(SMSG_AUTH_RESPONSE, 1);
        packet << uint8(AUTH_OK);
        SendPacket(&packet);
    }
    else
    {
        WorldPacket packet(SMSG_AUTH_RESPONSE, 5);
        packet << uint8(AUTH_WAIT_QUEUE);
        packet << uint32(position);
        SendPacket(&packet);
    }
}

void WorldSession::LoadTutorialsData()
{
    for (uint32 & tutorial : m_Tutorials)
        tutorial = 0;

    QueryResult *result = CharacterDatabase.PQuery("SELECT tut0,tut1,tut2,tut3,tut4,tut5,tut6,tut7 FROM character_tutorial WHERE account = '%u'", GetAccountId());

    if (!result)
    {
        m_tutorialState = TUTORIALDATA_NEW;
        return;
    }

    do
    {
        Field *fields = result->Fetch();

        for (int iI = 0; iI < 8; ++iI)
            m_Tutorials[iI] = fields[iI].GetUInt32();
    }
    while (result->NextRow());

    delete result;

    m_tutorialState = TUTORIALDATA_UNCHANGED;
}

void WorldSession::SendTutorialsData()
{
    WorldPacket data(SMSG_TUTORIAL_FLAGS, 4 * 8);
    for (uint32 tutorial : m_Tutorials)
        data << tutorial;

    SendPacket(&data);
}

void WorldSession::SaveTutorialsData()
{
    static SqlStatementID updTutorial ;
    static SqlStatementID insTutorial ;

    switch (m_tutorialState)
    {
        case TUTORIALDATA_CHANGED:
        {
            SqlStatement stmt = CharacterDatabase.CreateStatement(updTutorial, "UPDATE character_tutorial SET tut0=?, tut1=?, tut2=?, tut3=?, tut4=?, tut5=?, tut6=?, tut7=? WHERE account = ?");
            for (uint32 tutorial : m_Tutorials)
                stmt.addUInt32(tutorial);

            stmt.addUInt32(GetAccountId());
            stmt.Execute();
        }
        break;

        case TUTORIALDATA_NEW:
        {
            SqlStatement stmt = CharacterDatabase.CreateStatement(insTutorial, "INSERT INTO character_tutorial (account,tut0,tut1,tut2,tut3,tut4,tut5,tut6,tut7) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)");

            stmt.addUInt32(GetAccountId());
            for (uint32 tutorial : m_Tutorials)
                stmt.addUInt32(tutorial);

            stmt.Execute();
        }
        break;
        case TUTORIALDATA_UNCHANGED:
            break;
    }

    m_tutorialState = TUTORIALDATA_UNCHANGED;
}

void WorldSession::ExecuteOpcode(OpcodeHandler const& opHandle, WorldPacket* packet)
{
    // need prevent do internal far teleports in handlers because some handlers do lot steps
    // or call code that can do far teleports in some conditions unexpectedly for generic way work code
    if (_player)
        _player->SetCanDelayTeleport(true);

    //sLog.outString("[%s] Recvd packet : %u/0x%x (%s)", GetUsername().c_str(), packet->GetOpcode(), packet->GetOpcode(), LookupOpcodeName(packet->GetOpcode()));
    if (Player* player = GetPlayer())
        DEBUG_UNIT(player, DEBUG_PACKETS_RECV, "[%s] Recvd packet : %u/0x%x (%s)", player->GetName(), packet->GetOpcode(), packet->GetOpcode(), LookupOpcodeName(packet->GetOpcode()));

    (this->*opHandle.handler)(*packet);

    if (_player)
    {
        // can be not set in fact for login opcode, but this not create porblems.
        _player->SetCanDelayTeleport(false);

        //we should execute delayed teleports only for alive(!) players
        //because we don't want player's ghost teleported from graveyard
        if (_player->IsHasDelayedTeleport())
             _player->TeleportTo(_player->m_teleport_dest, _player->m_teleport_options);
    }

    if (packet->rpos() < packet->wpos() && sLog.HasLogLevelOrHigher(LOG_LVL_DEBUG))
        LogUnprocessedTail(packet);
}

void WorldSession::InitWarden(BigNumber* k)
{
    m_warden = sAnticheatMgr->CreateWardenFor(this, k);
}

void WorldSession::InitCheatData(Player* pPlayer)
{
    if (m_cheatData)
        m_cheatData->InitNewPlayer(pPlayer);
    else
        m_cheatData = sAnticheatMgr->CreateAnticheatFor(pPlayer);
}

MovementAnticheat* WorldSession::GetCheatData()
{
    return m_cheatData ? m_cheatData : (m_cheatData = sAnticheatMgr->CreateAnticheatFor(GetPlayer()));
}

void WorldSession::ProcessAnticheatAction(const char* detector, const char* reason, uint32 cheatAction, uint32 banSeconds)
{
    const char* action = "";
    if (cheatAction & CHEAT_ACTION_MUTE_PUB_CHANS)
    {
        action = "Muted from public channels.";
        if (GetSecurity() == SEC_PLAYER)
        {
            LoginDatabase.PExecute("UPDATE account SET flags = flags | 0x%x WHERE id = %u", ACCOUNT_FLAG_MUTED_FROM_PUBLIC_CHANNELS, GetAccountId());
            SetAccountFlags(GetAccountFlags() | ACCOUNT_FLAG_MUTED_FROM_PUBLIC_CHANNELS);
        }
    }
    if (cheatAction & CHEAT_ACTION_BAN_IP_ACCOUNT)
    {
        action = "Account+IP banned.";
        if (GetSecurity() == SEC_PLAYER)
        {
            std::string _reason = std::string("CHEAT") + ": " + reason;
            sWorld.BanAccount(BAN_ACCOUNT, GetUsername(), banSeconds, _reason, detector);
            std::stringstream banIpReason;
            banIpReason << "Cf account " << GetUsername();
            sWorld.BanAccount(BAN_IP, GetRemoteAddress(), banSeconds, banIpReason.str(), detector);
        }
    }
    else if (cheatAction & CHEAT_ACTION_BAN_ACCOUNT)
    {
        action = "Banned.";
        std::string _reason = std::string("CHEAT") + ": " + reason;
        if (GetSecurity() == SEC_PLAYER)
            sWorld.BanAccount(BAN_ACCOUNT, GetUsername(), banSeconds, _reason, detector);
    }
    else if (cheatAction & CHEAT_ACTION_KICK)
    {
        action = "Kicked.";
        if (GetSecurity() == SEC_PLAYER)
            KickPlayer();
    }
    else if (cheatAction & CHEAT_ACTION_REPORT_GMS)
        action = "Announced to GMs.";
    else if (!(cheatAction & CHEAT_ACTION_LOG))
        return;

    std::string playerDesc;
    if (_player)
        playerDesc = _player->GetShortDescription();
    else
    {
        std::stringstream oss;
        oss << "<None> [" << GetUsername() << ":" << GetAccountId() << "@" << GetRemoteAddress().c_str() << "]";
        playerDesc = oss.str();
    }

    if ((cheatAction & CHEAT_ACTION_GLOBAL_ANNOUNNCE) && (cheatAction >= CHEAT_ACTION_KICK))
    {
        std::stringstream oss;
        oss << "|r[|c1f40af20AC |cffff0000" << detector << "|r]: Player " << _player->GetName() << ", Cheat: " << reason << ", Penalty: " << action;
        sWorld.SendGlobalText(oss.str().c_str(), this);
    }

    if (cheatAction & CHEAT_ACTION_REPORT_GMS)
    {
        std::stringstream oss;
        oss << "Player " << playerDesc << ", Cheat: " << reason;

        if (cheatAction >= CHEAT_ACTION_KICK)
            oss << ", Penalty: " << action;

        sWorld.SendGMText(LANG_GM_ANNOUNCE_COLOR, detector, oss.str().c_str());
    }

    sLog.outAnticheat(detector, playerDesc.c_str(), reason, action);
}

bool WorldSession::AllowPacket(uint16 opcode)
{
    // Do not count packets that are often spamed by the client when loading a zone for example.
    switch (opcode)
    {
        case CMSG_GAMEOBJECT_QUERY:
        case CMSG_CREATURE_QUERY:
        case CMSG_QUESTGIVER_STATUS_QUERY:
        case CMSG_ITEM_QUERY_SINGLE:
        case CMSG_NAME_QUERY:
        case CMSG_PET_NAME_QUERY:
        case CMSG_GUILD_QUERY:
        case CMSG_JOIN_CHANNEL:         // Can be flooded by addons upon login
        case CMSG_AUCTION_LIST_ITEMS:   // We already handle only one per session update
        case CMSG_WHO:                  // We already handle only one per session update
            return true;
        default:
            break;
    }

    _floodPacketsCount[FLOOD_TOTAL_PACKETS]++;

    switch (opcode)
    {
        case CMSG_CHAR_CREATE:
        case CMSG_CHAR_ENUM:
        case CMSG_CHAR_DELETE:
        case CMSG_OPEN_ITEM:
        case CMSG_PETITION_BUY:
        case CMSG_PETITION_SIGN:
        case CMSG_PETITION_QUERY:
        case MSG_PETITION_RENAME:
        case CMSG_SEND_MAIL:
        case CMSG_PLAYER_LOGIN:
            _floodPacketsCount[FLOOD_VERY_SLOW_OPCODES]++;
        // no break, since slow packets are also very slow packets.
        case CMSG_LOGOUT_REQUEST:
        case CMSG_ADD_FRIEND:
        case CMSG_DEL_FRIEND:
        case CMSG_BUY_ITEM:
        case CMSG_SELL_ITEM:
            _floodPacketsCount[FLOOD_SLOW_OPCODES]++;
            break;
        default:
            break;
    }

    // Check if the permitted threshold has been exceeded
    std::stringstream reason;
    if (_floodPacketsCount[FLOOD_VERY_SLOW_OPCODES] > 2)
        reason << _floodPacketsCount[FLOOD_VERY_SLOW_OPCODES] << " very slow packets";
    if (_floodPacketsCount[FLOOD_SLOW_OPCODES] > 8)
        reason << _floodPacketsCount[FLOOD_SLOW_OPCODES] << " slow packets";
    if (_floodPacketsCount[FLOOD_TOTAL_PACKETS] > 300)
        reason << _floodPacketsCount[FLOOD_TOTAL_PACKETS] << " packets";
    if (!reason.str().empty())
    {
        reason << " (" << LookupOpcodeName(opcode) << ")";
        ProcessAnticheatAction("AntiFlood", reason.str().c_str(), sWorld.getConfig(CONFIG_UINT32_ANTIFLOOD_SANCTION));
        return false;
    }

    return true;
}

/**
 * Given a number of client identifiers, computes a unique hash.
 */
void WorldSession::ComputeClientHash()
{
    std::stringstream oss;
    for (const auto& itr : _clientIdentifiers)
    {
        Sha1Hash sha;
        sha.UpdateData(itr.second);
        sha.Finalize();
        uint8* digest = sha.GetDigest();
        char c = itr.first + '0';
        if (c > '9')
            c = c - '9' + 'A' - 1;
        oss << c;
        for (int i = 0; i < 3; ++i)
            oss << char(digest[i] % (0x24 - 0x7A + 1) + 0x20);
    }
    _clientHash = oss.str();
}

bool WorldSession::ShouldBeBanned(uint32 currentLevel) const
{
    return !_scheduleBanReason.empty() && urand(2, _scheduleBanLevel) <= currentLevel;
}

uint32 WorldSession::GenerateItemLowGuid()
{
    return sObjectMgr.GenerateItemLowGuid();
}

uint32 WorldSession::GeneratePetNumber()
{
    return sObjectMgr.GeneratePetNumber();
}

bool WorldSession::CharacterScreenIdleKick(uint32 currTime)
{
    if (GetPlayer() || m_inQueue || PlayerLoading()) // not on the character screen
        return false;

    auto maxIdle = sWorld.getConfig(CONFIG_UINT32_CHARACTER_SCREEN_MAX_IDLE_TIME);

    if (!maxIdle) // disabled
        return false;

    if ((currTime - m_idleTime) >= (maxIdle * 1000))
    {
        DEBUG_LOG("SESSION: Kicking session [%s] from character selection", GetRemoteAddress().c_str());
        return true;
    }

    return false;
}
