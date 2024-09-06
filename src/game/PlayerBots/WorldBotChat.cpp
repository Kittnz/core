#include "WorldBotAI.h"
#include "WorldBotTravelSystem.h"
#include "WorldBotChat.h"
#include "Player.h"
#include "ChannelMgr.h"
#include "Channel.h"
#include "ObjectMgr.h"
#include "World.h"

/* Loader */
void WorldBotChat::LoadPlayerChat()
{
    std::unique_ptr<QueryResult> result = CharacterDatabase.Query("SELECT unixtimems, guid, sender_name, text, chat_type, channel_name FROM player_chat");
    if (!result)
        return;

    do
    {
        Field* fields = result->Fetch();
        ChatData chatData;
        chatData.unixtimems = fields[0].GetUInt64();
        chatData.guid = fields[1].GetUInt32();
        chatData.senderName = fields[2].GetString();
        chatData.text = fields[3].GetString();
        chatData.chatType = fields[4].GetUInt32();
        chatData.channelName = fields[5].GetString();

        size_t index = m_chatData.size();
        m_chatData.push_back(chatData);

        if (!m_chatData[index].channelName.empty())
        {
            m_channelChatMap[m_chatData[index].channelName].push_back(index);

            if (std::find(m_activeChannels.begin(), m_activeChannels.end(), m_chatData[index].channelName) == m_activeChannels.end())
            {
                m_activeChannels.push_back(m_chatData[index].channelName);
            }
        }

        m_chatTypeMap[m_chatData[index].chatType].push_back(index);

        if (std::find(m_activeChatTypes.begin(), m_activeChatTypes.end(), m_chatData[index].chatType) == m_activeChatTypes.end())
        {
            m_activeChatTypes.push_back(m_chatData[index].chatType);
        }
    } while (result->NextRow());
}

/* Sender */
void WorldBotChat::SendChatMessage(Player* me)
{
    ChatData chatData = GetRandomChannelChatData();
    if (chatData.text.empty())
        return;

    if (ChannelMgr* cMgr = channelMgr(me->GetTeam()))
    {
        if (Channel* chn = cMgr->GetJoinChannel(chatData.channelName.c_str()))
        {
            chn->Say(me->GetObjectGuid(), chatData.text.c_str(), (me->GetTeam() == ALLIANCE) ? LANG_COMMON : LANG_ORCISH);
        }
    }
}

ChatData WorldBotChat::GetRandomChannelChatData()
{
    std::vector<std::string> channelKeywords = {"World", "Trade"};
    std::vector<size_t> validIndices;

    for (const auto& pair : m_channelChatMap)
    {
        const std::string& channelName = pair.first;
        for (const auto& keyword : channelKeywords)
        {
            if (channelName.find(keyword) != std::string::npos)
            {
                validIndices.insert(validIndices.end(), pair.second.begin(), pair.second.end());
                break;
            }
        }
    }

    if (validIndices.empty())
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotChat: No chat data found for World or Trade channels");
        return ChatData();
    }

    std::uniform_int_distribution<> dis(0, validIndices.size() - 1);
    size_t index = validIndices[dis(m_rng)];
    
    ChatData& chatData = m_chatData[index];
    sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "WorldBotChat: Selected chat type: %s for channel: %s",  ChatTypeToString(chatData.chatType).c_str(), chatData.channelName.c_str());
    
    return chatData;
}

std::string WorldBotChat::ChatTypeToString(uint32 value)
{
    switch (value)
    {
    case Classic::CHAT_MSG_SYSTEM:
        return "CHAT_MSG_SYSTEM";
    case Classic::CHAT_MSG_SAY:
        return "CHAT_MSG_SAY";
    case Classic::CHAT_MSG_PARTY:
        return "CHAT_MSG_PARTY";
    case Classic::CHAT_MSG_RAID:
        return "CHAT_MSG_RAID";
    case Classic::CHAT_MSG_GUILD:
        return "CHAT_MSG_GUILD";
    case Classic::CHAT_MSG_OFFICER:
        return "CHAT_MSG_OFFICER";
    case Classic::CHAT_MSG_YELL:
        return "CHAT_MSG_YELL";
    case Classic::CHAT_MSG_WHISPER:
        return "CHAT_MSG_WHISPER";
    case Classic::CHAT_MSG_WHISPER_INFORM:
        return "CHAT_MSG_WHISPER_INFORM";
    case Classic::CHAT_MSG_EMOTE:
        return "CHAT_MSG_EMOTE";
    case Classic::CHAT_MSG_TEXT_EMOTE:
        return "CHAT_MSG_TEXT_EMOTE";
    case Classic::CHAT_MSG_MONSTER_SAY:
        return "CHAT_MSG_MONSTER_SAY";
    case Classic::CHAT_MSG_MONSTER_YELL:
        return "CHAT_MSG_MONSTER_YELL";
    case Classic::CHAT_MSG_MONSTER_WHISPER:
        return "CHAT_MSG_MONSTER_WHISPER";
    case Classic::CHAT_MSG_MONSTER_EMOTE:
        return "CHAT_MSG_MONSTER_EMOTE";
    case Classic::CHAT_MSG_CHANNEL:
        return "CHAT_MSG_CHANNEL";
    case Classic::CHAT_MSG_CHANNEL_JOIN:
        return "CHAT_MSG_CHANNEL_JOIN";
    case Classic::CHAT_MSG_CHANNEL_LEAVE:
        return "CHAT_MSG_CHANNEL_LEAVE";
    case Classic::CHAT_MSG_CHANNEL_LIST:
        return "CHAT_MSG_CHANNEL_LIST";
    case Classic::CHAT_MSG_CHANNEL_NOTICE:
        return "CHAT_MSG_CHANNEL_NOTICE";
    case Classic::CHAT_MSG_CHANNEL_NOTICE_USER:
        return "CHAT_MSG_CHANNEL_NOTICE_USER";
    case Classic::CHAT_MSG_AFK:
        return "CHAT_MSG_AFK";
    case Classic::CHAT_MSG_DND:
        return "CHAT_MSG_DND";
    case Classic::CHAT_MSG_IGNORED:
        return "CHAT_MSG_IGNORED";
    case Classic::CHAT_MSG_SKILL:
        return "CHAT_MSG_SKILL";
    case Classic::CHAT_MSG_LOOT:
        return "CHAT_MSG_LOOT";
    case Classic::CHAT_MSG_MONEY:
        return "CHAT_MSG_MONEY";
    case Classic::CHAT_MSG_COMBAT_MISC_INFO:
        return "CHAT_MSG_COMBAT_MISC_INFO";
    case Classic::CHAT_MSG_COMBAT_XP_GAIN:
        return "CHAT_MSG_COMBAT_XP_GAIN";
    case Classic::CHAT_MSG_COMBAT_HONOR_GAIN:
        return "CHAT_MSG_COMBAT_HONOR_GAIN";
    case Classic::CHAT_MSG_COMBAT_FACTION_CHANGE:
        return "CHAT_MSG_COMBAT_FACTION_CHANGE";
    case Classic::CHAT_MSG_BG_SYSTEM_NEUTRAL:
        return "CHAT_MSG_BG_SYSTEM_NEUTRAL";
    case Classic::CHAT_MSG_BG_SYSTEM_ALLIANCE:
        return "CHAT_MSG_BG_SYSTEM_ALLIANCE";
    case Classic::CHAT_MSG_BG_SYSTEM_HORDE:
        return "CHAT_MSG_BG_SYSTEM_HORDE";
    case Classic::CHAT_MSG_RAID_LEADER:
        return "CHAT_MSG_RAID_LEADER";
    case Classic::CHAT_MSG_RAID_WARNING:
        return "CHAT_MSG_RAID_WARNING";
    case Classic::CHAT_MSG_RAID_BOSS_EMOTE:
        return "CHAT_MSG_RAID_BOSS_EMOTE";
    case Classic::CHAT_MSG_RAID_BOSS_WHISPER:
        return "CHAT_MSG_RAID_BOSS_WHISPER";
    case Classic::CHAT_MSG_FILTERED:
        return "CHAT_MSG_FILTERED";
    case Classic::CHAT_MSG_BATTLEGROUND:
        return "CHAT_MSG_BATTLEGROUND";
    case Classic::CHAT_MSG_BATTLEGROUND_LEADER:
        return "CHAT_MSG_BATTLEGROUND_LEADER";
    }
    return std::to_string(value);
}

/* Recieving */
void WorldBotChat::HandleChatMessage(Player* me, uint8 msgtype, ObjectGuid guid1, const std::string& message, const std::string& chanName)
{
    switch (msgtype)
    {
    case CHAT_MSG_WHISPER:
        ProcessWhisper(me, guid1, message);
        break;
    case CHAT_MSG_CHANNEL:
        ProcessChannelMessage(me, message, chanName);
        break;
        // Add other cases if needed
    default:
        // Log or handle other message types if necessary
        break;
    }
}

void WorldBotChat::ProcessWhisper(Player* me, ObjectGuid senderGuid, const std::string& message)
{
    const char* response = GenerateResponse(message);
    if (response[0] != '\0')  // Check if the response is not empty
    {
        MasterPlayer* pMe = me->GetSession()->GetMasterPlayer();
        MasterPlayer* pReceiver = ObjectAccessor::FindMasterPlayer(senderGuid);

        if (pMe && pReceiver)
        {
            pMe->Whisper(response, LANG_COMMON, pReceiver);
        }
        else
        {
            sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotChat: Failed to process whisper - invalid player pointers");
        }
    }
}

void WorldBotChat::ProcessChannelMessage(Player* me, const std::string& message, const std::string& chanName)
{
    if (ShouldReactToChannelMessage(message))
    {
        PerformChannelReaction(me, message);
    }
}

const char* WorldBotChat::GenerateResponse(const std::string& message)
{
    // Implement a basic response generation system
    // This is a very simple example and should be expanded based on your needs
    if (message.find("hello") != std::string::npos)
        return "Hello there!";
    if (message.find("how are you") != std::string::npos)
        return "I'm doing well, thank you for asking!";
    if (message.find("bye") != std::string::npos)
        return "Goodbye! Take care!";

    // Default response if no matching pattern is found
    return "I'm not sure how to respond to that.";
}

bool WorldBotChat::ShouldReactToChannelMessage(const std::string& message)
{
    // Implement logic to determine if the bot should react to this message
    // This could be based on keywords, random chance, etc.
    // For this example, let's say there's a 10% chance to react to any message
    std::uniform_real_distribution<> dis(0.0, 1.0);
    return dis(m_rng) < 0.1;
}

void WorldBotChat::PerformChannelReaction(Player* me, const std::string& message)
{
    // Implement various actions the bot can take in response to channel messages
    // This is a simple example and should be expanded based on your needs
    const char* possibleActions[] = {
        "nod",
        "wave",
        "laugh",
        "dance"
    };

    const size_t numActions = sizeof(possibleActions) / sizeof(possibleActions[0]);
    std::uniform_int_distribution<> dis(0, numActions - 1);
    const char* action = possibleActions[dis(m_rng)];

    me->TextEmote(action);
}
