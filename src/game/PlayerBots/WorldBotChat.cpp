#include "WorldBotAI.h"
#include "WorldBotTravelSystem.h"
#include "WorldBotChat.h"
#include "Player.h"
#include "ChannelMgr.h"
#include "Channel.h"
#include "ObjectMgr.h"
#include "World.h"
#include "Database/DatabaseEnv.h"
#include "Log.h"
#include <regex>

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
void WorldBotChat::LoadBotChat()
{
    // Clear existing data
    m_chatDataNotUnderstand.clear();
    m_chatDataGrudge.clear();
    m_chatDataVictim.clear();
    m_chatDataAttacker.clear();
    m_chatDataHelloRespond.clear();
    m_chatDataNameRespond.clear();
    m_chatDataAdminAbuse.clear();

    // Query the database for chat data
    std::unique_ptr<QueryResult> result(WorldDatabase.PQuery("SELECT guid, type, chat FROM worldbot_chat ORDER BY guid, type ASC"));

    if (!result)
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotChat: Unable to load chat data from the database.");
        return;
    }

    do
    {
        Field* fields = result->Fetch();

        uint32 guid = fields[0].GetUInt32();
        uint32 type = fields[1].GetUInt32();
        std::string chat = fields[2].GetString();

        WorldBotChatData chatData(guid, type, chat);

        switch (static_cast<WorldBotChatDataType>(type))
        {
        case NOT_UNDERSTAND:
            m_chatDataNotUnderstand.push_back(chatData);
            break;
        case GRUDGE:
            m_chatDataGrudge.push_back(chatData);
            break;
        case VICTIM:
            m_chatDataVictim.push_back(chatData);
            break;
        case ATTACKER:
            m_chatDataAttacker.push_back(chatData);
            break;
        case HELLO_RESPOND:
            m_chatDataHelloRespond.push_back(chatData);
            break;
        case NAME_RESPOND:
            m_chatDataNameRespond.push_back(chatData);
            break;
        case ADMIN_ABUSE:
            m_chatDataAdminAbuse.push_back(chatData);
            break;
        default:
            sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotChat: Unknown chat data type %u for guid %u", type, guid);
            break;
        }
    } while (result->NextRow());

    sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "WorldBotChat: Loaded %zu chat data entries",
        m_chatDataNotUnderstand.size() + m_chatDataGrudge.size() + m_chatDataVictim.size() +
        m_chatDataAttacker.size() + m_chatDataHelloRespond.size() + m_chatDataNameRespond.size() +
        m_chatDataAdminAbuse.size());
}

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
    const char* response = GenerateResponse(message, me->GetName());
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

const char* WorldBotChat::GenerateResponse(const std::string& message, const std::string& botName)
{
    std::string respondsText;
    bool found = false;

    // Parse the message into words
    std::istringstream iss(message);
    std::vector<std::string> words{ std::istream_iterator<std::string>{iss},
                                   std::istream_iterator<std::string>{} };

    // Pad the words vector to ensure at least 8 elements
    while (words.size() < 8) {
        words.push_back("");
    }

    // Determine if it's a question and what type
    int32 is_quest = 0;
    if (message.find("?") != std::string::npos)
        is_quest = 1;
    if (words[0].find("what") != std::string::npos)
        is_quest = 2;
    else if (words[0].find("who") != std::string::npos)
        is_quest = 3;
    else if (words[0] == "when")
        is_quest = 4;
    else if (words[0] == "where")
        is_quest = 5;
    else if (words[0] == "why")
        is_quest = 6;

    // Check for greetings
    for (const auto& word : words) {
        if (word == "hi" || word == "hey" || word == "hello" || word == "wazzup") {
            std::string hello = SelectRandomContainerElement(m_chatDataHelloRespond).m_chat;
            respondsText = std::regex_replace(hello, std::regex("%s"), "");
            found = true;
            break;
        }
    }

    // Verb logic
    int32 verb_pos = -1;
    int32 verb_type = -1;
    for (size_t i = 0; i < 6 && !found; ++i) {
        if (words[i] == "am" || words[i] == "are" || words[i] == "is") {
            verb_pos = i;
            verb_type = 2; // present
        }
        else if (words[i] == "will") {
            verb_pos = i;
            verb_type = 3; // future
        }
        else if (words[i] == "was" || words[i] == "were") {
            verb_pos = i;
            verb_type = 1; // past
        }
        else if (words[i] == "shut") {
            uint32 rnd = urand(0, 2);
            switch (rnd) {
            case 0: respondsText = "Sorry, I'll shut up now"; break;
            case 1: respondsText = "Ok ok"; break;
            case 2: respondsText = "Fine, I won't talk to you anymore"; break;
            }
            found = true;
        }
    }

    // Handle questions based on type
    if (!found && is_quest && verb_type < 4) {
        switch (is_quest) {
        case 2: // what
            respondsText = SelectRandomResponse({ "I don't know what", "Who cares", "That was before my time" });
            break;
        case 3: // who
            respondsText = SelectRandomResponse({ "Nobody", "We all do", "Perhaps it's you", "Is it me?" });
            break;
        case 4: // when
            respondsText = SelectRandomResponse({ "Soon perhaps", "Probably later", "Never", "What do I look like, a psychic?" });
            break;
        case 5: // where
            respondsText = SelectRandomResponse({ "On the map?", "Who cares", "None of your business" });
            break;
        case 6: // why
            respondsText = SelectRandomResponse({ "Just because", "Why is the sky blue?", "Don't ask me, I'm just a bot" });
            break;
            // ... rest of the switch cases ...
        }
        found = true;
    }

    // If still not found, use default responses
    if (!found) {
        if (message.find(botName) != std::string::npos) {
            std::string nameResponse = SelectRandomContainerElement(m_chatDataNameRespond).m_chat;
            respondsText = std::regex_replace(nameResponse, std::regex("%s"), botName);
        }
        else {
            std::string notUnderstand = SelectRandomContainerElement(m_chatDataNotUnderstand).m_chat;
            respondsText = std::regex_replace(notUnderstand, std::regex("%s"), botName);
        }
    }

    // Store the response in a static variable to ensure it persists after the function returns
    static std::string staticResponse;
    staticResponse = respondsText;
    return staticResponse.c_str();
}

// Helper function to select a random response from a list
std::string WorldBotChat::SelectRandomResponse(const std::vector<std::string>& responses)
{
    std::uniform_int_distribution<> dis(0, responses.size() - 1);
    return responses[dis(m_rng)];
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
