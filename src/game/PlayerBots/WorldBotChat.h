#ifndef WORLD_BOT_CHAT_H
#define WORLD_BOT_CHAT_H

#include <vector>
#include <string>
#include <unordered_map>
#include <random>
#include "WorldBotAI.h"
#include "Common.h" // Include this for the chat message types

struct PlayerChatData {
    uint64 unixtimems;
    uint32 guid;
    std::string senderName;
    std::string text;
    uint32 chatType;
    std::string channelName;
};

namespace Classic
{
    enum ChatMsg
    {
        CHAT_MSG_SYSTEM = 0,
        CHAT_MSG_SAY = 1,
        CHAT_MSG_PARTY = 2,
        CHAT_MSG_RAID = 3,
        CHAT_MSG_GUILD = 4,
        CHAT_MSG_OFFICER = 5,
        CHAT_MSG_YELL = 6,
        CHAT_MSG_WHISPER = 7,
        CHAT_MSG_WHISPER_FOREIGN = 8,
        CHAT_MSG_WHISPER_INFORM = 9,
        CHAT_MSG_EMOTE = 10,
        CHAT_MSG_TEXT_EMOTE = 11,
        CHAT_MSG_MONSTER_SAY = 12,
        CHAT_MSG_MONSTER_PARTY = 13,
        CHAT_MSG_MONSTER_YELL = 14,
        CHAT_MSG_MONSTER_WHISPER = 15,
        CHAT_MSG_MONSTER_EMOTE = 16,
        CHAT_MSG_CHANNEL = 17,
        CHAT_MSG_CHANNEL_JOIN = 18,
        CHAT_MSG_CHANNEL_LEAVE = 19,
        CHAT_MSG_CHANNEL_LIST = 20,
        CHAT_MSG_CHANNEL_NOTICE = 21,
        CHAT_MSG_CHANNEL_NOTICE_USER = 22,
        CHAT_MSG_AFK = 23,
        CHAT_MSG_DND = 24,
        CHAT_MSG_IGNORED = 25,
        CHAT_MSG_SKILL = 26,
        CHAT_MSG_LOOT = 27,
        CHAT_MSG_MONEY = 28,
        CHAT_MSG_OPENING = 29,
        CHAT_MSG_TRADESKILLS = 30,
        CHAT_MSG_PET_INFO = 31,
        CHAT_MSG_COMBAT_MISC_INFO = 32,
        CHAT_MSG_COMBAT_XP_GAIN = 33,
        CHAT_MSG_COMBAT_HONOR_GAIN = 34,
        CHAT_MSG_COMBAT_FACTION_CHANGE = 35,
        CHAT_MSG_BG_SYSTEM_NEUTRAL = 36,
        CHAT_MSG_BG_SYSTEM_ALLIANCE = 37,
        CHAT_MSG_BG_SYSTEM_HORDE = 38,
        CHAT_MSG_RAID_LEADER = 39,
        CHAT_MSG_RAID_WARNING = 40,
        CHAT_MSG_RAID_BOSS_EMOTE = 41,
        CHAT_MSG_RAID_BOSS_WHISPER = 42,
        CHAT_MSG_FILTERED = 43,
        CHAT_MSG_RESTRICTED = 44,
        //unused1 = 45,
        CHAT_MSG_ACHIEVEMENT = 46,
        CHAT_MSG_GUILD_ACHIEVEMENT = 47,
        //unused2 = 48,
        CHAT_MSG_PARTY_LEADER = 49,
        CHAT_MSG_TARGETICONS = 50,
        CHAT_MSG_BN_WHISPER = 51,
        CHAT_MSG_BN_WHISPER_INFORM = 52,
        CHAT_MSG_BN_CONVERSATION = 53,
        CHAT_MSG_BN_CONVERSATION_NOTICE = 54,
        CHAT_MSG_BN_CONVERSATION_LIST = 55,
        CHAT_MSG_BN_INLINE_TOAST_ALERT = 56,
        CHAT_MSG_BN_INLINE_TOAST_BROADCAST = 57,
        CHAT_MSG_BN_INLINE_TOAST_BROADCAST_INFORM = 58,
        CHAT_MSG_BN_INLINE_TOAST_CONVERSATION = 59,
        CHAT_MSG_BN_WHISPER_PLAYER_OFFLINE = 60,
        CHAT_MSG_COMBAT_GUILD_XP_GAIN = 61,
        CHAT_MSG_BATTLEGROUND = 62,
        CHAT_MSG_BATTLEGROUND_LEADER = 63,
        CHAT_MSG_PET_BATTLE_COMBAT_LOG = 64,
        CHAT_MSG_PET_BATTLE_INFO = 65,
        CHAT_MSG_INSTANCE_CHAT = 66,
        CHAT_MSG_INSTANCE_CHAT_LEADER = 67,
    };
}

class WorldBotChatData
{
public:
    WorldBotChatData(uint32 guid, uint32 type, const std::string& chat)
        : m_guid(guid), m_type(type), m_chat(chat) {}

    uint32 m_guid;
    uint32 m_type;
    std::string m_chat;
};

class WorldBotChat
{
public:

    static WorldBotChat* instance()
    {
        static WorldBotChat instance;
        return &instance;
    }

    // Loader
    void LoadPlayerChat();
    void LoadBotChat();

    // Sending random chats in World channel
    void SendChatMessage(Player* me);
    ChatData GetRandomChannelChatData();

    std::string ChatTypeToString(uint32 value);

    // Recieving chat
    void HandleChatMessage(Player* me, uint8 msgtype, ObjectGuid guid1, const std::string& message, const std::string& chanName);



private:

    // Recieving chat
    void ProcessWhisper(Player* me, ObjectGuid senderGuid, const std::string& message);
    void ProcessChannelMessage(Player* me, const std::string& message, const std::string& chanName);
    bool ShouldReactToChannelMessage(const std::string& message);
    void PerformChannelReaction(Player* me, const std::string& message);
    const char* GenerateResponse(const std::string& message, const std::string& botName);
    std::string SelectRandomResponse(const std::vector<std::string>& responses);

    std::vector<WorldBotChatData> m_chatDataNotUnderstand;
    std::vector<WorldBotChatData> m_chatDataGrudge;
    std::vector<WorldBotChatData> m_chatDataVictim;
    std::vector<WorldBotChatData> m_chatDataAttacker;
    std::vector<WorldBotChatData> m_chatDataHelloRespond;
    std::vector<WorldBotChatData> m_chatDataNameRespond;
    std::vector<WorldBotChatData> m_chatDataAdminAbuse;

    // Enum for chat data types
    enum WorldBotChatDataType
    {
        NOT_UNDERSTAND = 0,
        GRUDGE = 1,
        VICTIM = 2,
        ATTACKER = 3,
        HELLO_RESPOND = 4,
        NAME_RESPOND = 5,
        ADMIN_ABUSE = 6
    };

    // Genenral
    std::vector<ChatData> m_chatData;
    std::unordered_map<std::string, std::vector<size_t>> m_channelChatMap;
    std::unordered_map<uint32, std::vector<size_t>> m_chatTypeMap;
    std::vector<std::string> m_activeChannels;
    std::vector<uint32> m_activeChatTypes;
    std::mt19937 m_rng;
};

// Define a convenient macro
#define sWorldBotChat (*WorldBotChat::instance())

#endif // WORLD_BOT_CHAT_H
