#include "WorldBotAI.h"
#include "WorldBotTravelSystem.h"
#include "BattleGround.h"
#include "Player.h"
#include "Log.h"
#include "MotionMaster.h"
#include "ObjectMgr.h"
#include "PlayerBotMgr.h"
#include "WorldPacket.h"
#include "Spell.h"
#include "SpellAuras.h"
#include "Chat.h"
#include "GridNotifiers.h"
#include "GridNotifiersImpl.h"
#include "TargetedMovementGenerator.h"
#include "Channel.h"
#include "ChannelMgr.h"
#include "MasterPlayer.h"
#include "Object.h"
#include <regex>
#include <random>

std::vector<WorldBotChatData> m_chatDataNotUnderstand;
std::vector<WorldBotChatData> m_chatDataGrudge;
std::vector<WorldBotChatData> m_chatDataVictim;
std::vector<WorldBotChatData> m_chatDataAttacker;
std::vector<WorldBotChatData> m_chatDataHelloRespond;
std::vector<WorldBotChatData> m_chatDataNameRespond;
std::vector<WorldBotChatData> m_chatDataAdminAbuse;

void WorldBotAI::LoadBotChat()
{
    std::unique_ptr<QueryResult> result = WorldDatabase.PQuery("SELECT guid, type, chat FROM worldbot_chat ORDER BY guid, type ASC;");

    if (result)
    {
        do
        {
            auto fields = result->Fetch();

            uint32 guid = fields[0].GetUInt32();
            uint32 type = fields[1].GetUInt32();
            std::string chat = fields[2].GetString();

            switch (type)
            {
            case WorldBotChatDataType::NOT_UNDERSTAND:
            {
                m_chatDataNotUnderstand.push_back(WorldBotChatData(guid, type, chat));
                break;
            }
            case WorldBotChatDataType::GRUDGE:
            {
                m_chatDataGrudge.push_back(WorldBotChatData(guid, type, chat));
                break;
            }
            case WorldBotChatDataType::VICTIM:
            {
                m_chatDataVictim.push_back(WorldBotChatData(guid, type, chat));
                break;
            }
            case WorldBotChatDataType::ATTACKER:
            {
                m_chatDataAttacker.push_back(WorldBotChatData(guid, type, chat));
                break;
            }
            case WorldBotChatDataType::HELLO_RESPOND:
            {
                m_chatDataHelloRespond.emplace_back(WorldBotChatData(guid, type, chat));
                break;
            }
            case WorldBotChatDataType::NAME_RESPOND:
            {
                m_chatDataNameRespond.push_back(WorldBotChatData(guid, type, chat));
                break;
            }
            case WorldBotChatDataType::ADMIN_ABUSE:
            {
                m_chatDataAdminAbuse.push_back(WorldBotChatData(guid, type, chat));
                break;
            }
            default:
                break;
            }

        } while (result->NextRow());
    }
    else
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBot: unable to load chat.");
        return;
    }
}

void WorldBotAI::BotChatAddToQueue(Player* me, uint8 msgtype, ObjectGuid guid1, ObjectGuid guid2, std::string message, std::string chanName)
{
    /*if (msgtype == CHAT_MSG_SAY || msgtype == CHAT_MSG_YELL)
    {
        if (MasterPlayer* player = ObjectAccessor::FindMasterPlayer(guid1))
        {
            if (player->GetTeam() == me->GetTeam())
            {
                m_chatSayYellPlayerRespondsQueue.push_back(BotChatRespondsQueue(me->GetObjectGuid(), msgtype, guid1, guid2, message, chanName));
            }
        }
    }*/
    if (msgtype == CHAT_MSG_WHISPER)
    {
        if (MasterPlayer* player = ObjectAccessor::FindMasterPlayer(guid1))
        {
            if (player->GetTeam() == me->GetTeam())
            {
                m_chatWhisperPlayerRespondsQueue.push_back(BotChatRespondsQueue(me->GetObjectGuid(), msgtype, guid1, guid2, message, chanName));
            }
        }
    }
    if (msgtype == CHAT_MSG_CHANNEL)
    {
        if (MasterPlayer* player = ObjectAccessor::FindMasterPlayer(guid1))
        {
            if (player->GetTeam() == me->GetTeam())
            {
                // General
                if (chanName.find("General") != std::string::npos)
                {
                    m_chatGeneralRespondsQueue.push_back(BotChatRespondsQueue(me->GetObjectGuid(), msgtype, guid1, guid2, message, chanName));
                }

                // Trade chat
                if (chanName.find("Trade") != std::string::npos)
                {
                    m_chatTradeRespondsQueue.push_back(BotChatRespondsQueue(me->GetObjectGuid(), msgtype, guid1, guid2, message, chanName));
                }

                // Looking for group
                if (chanName.find("Lfg") != std::string::npos)
                {
                    m_chatLFGRespondsQueue.push_back(BotChatRespondsQueue(me->GetObjectGuid(), msgtype, guid1, guid2, message, chanName));
                }

                // World chat
                if (chanName.find("World") != std::string::npos)
                {
                    m_chatWorldRespondsQueue.push_back(BotChatRespondsQueue(me->GetObjectGuid(), msgtype, guid1, guid2, message, chanName));
                }
            }
        }
    }
}

void WorldBotAI::HandleChat(Player* me, uint32 type, uint32 guid1, uint32 guid2, std::string msg, std::string chanName)
{
    MasterPlayer* pMe = me->GetSession()->GetMasterPlayer();
    MasterPlayer* pReciever = ObjectAccessor::FindMasterPlayer(guid1);
    std::string name = pReciever->GetName();

    std::string respondsText;
    time_t gtime = sWorld.GetGameTime();
    int32 rnd = urand(2, 10);
    if (BotLastChatTime < (gtime - rnd))
    {
        // Chat Logic
        int32 verb_pos = -1;
        int32 verb_type = -1;
        int32 is_quest = 0;
        bool found = false;
        std::stringstream text(msg);
        std::string segment;
        std::vector<std::string> word;
        while (std::getline(text, segment, ' '))
        {
            word.push_back(segment);
        }

        for (uint32 i = 0; i < 8; i++)
        {
            if (word.size() < i)
                word.push_back("");
        }

        if (msg.find("?") != std::string::npos)
            is_quest = 1;
        if (word[0].find("what") != std::string::npos)
            is_quest = 2;
        else if (word[0].find("who") != std::string::npos)
            is_quest = 3;
        else if (word[0] == "when")
            is_quest = 4;
        else if (word[0] == "where")
            is_quest = 5;
        else if (word[0] == "why")
            is_quest = 6;

        // Responds
        //for (uint32 i = 0; i < word.size(); i++)
        for (uint32 i = 0; i < 6; i++)
        {
            if (word[i] == "hi" || word[i] == "hey" || word[i] == "hello" || word[i] == "wazzup")
            {
                std::string hello = SelectRandomContainerElement(m_chatDataHelloRespond).m_chat;
                msg = std::regex_replace(hello, std::regex("%s"), name);
                respondsText = msg.c_str();
                found = true;
            }

            if (verb_type < 4)
            {
                if (word[i] == "am" || word[i] == "are" || word[i] == "is")
                {
                    verb_pos = i;
                    verb_type = 2; // present
                }
                else if (word[i] == "will")
                {
                    verb_pos = i;
                    verb_type = 3; // future
                }
                else if (word[i] == "was" || word[i] == "were")
                {
                    verb_pos = i;
                    verb_type = 1; // past
                }
                else if (word[i] == "shut")
                {
                    uint32 rnd = urand(0, 2);
                    std::string msg = "";
                    if (rnd == 0)
                        msg = "sorry %s, ill shut up now";
                    if (rnd == 1)
                        msg = "ok ok %s";
                    if (rnd == 2)
                        msg = "fine, i wont talk to you anymore %s";

                    msg = std::regex_replace(msg, std::regex("%s"), name);
                    respondsText = msg;
                    found = true;
                }
            }
        }
        if (verb_type < 4 && is_quest && !found)
        {
            switch (is_quest)
            {
            case 2:
            {
                uint32 rnd = urand(0, 3);
                std::string msg = "";

                switch (rnd)
                {
                case 0:
                    msg = "i dont know what";
                    break;
                case 1:
                    msg = "i dont know %s";
                    break;
                case 2:
                    msg = "who cares";
                    break;
                case 3:
                    msg = "afraid that was before i was around or paying attention";
                    break;
                }

                msg = std::regex_replace(msg, std::regex("%s"), name);
                respondsText = msg;
                found = true;
            }
            case 3:
            {
                uint32 rnd = urand(0, 4);
                std::string msg = "";

                switch (rnd)
                {
                case 0:
                    msg = "nobody";
                    break;
                case 1:
                    msg = "we all do";
                    break;
                case 2:
                    msg = "perhaps its you, %s";
                    break;
                case 3:
                    msg = "dunno %s";
                    break;
                case 4:
                    msg = "is it me?";
                    break;
                }

                msg = std::regex_replace(msg, std::regex("%s"), name);
                respondsText = msg;
                found = true;
            }
            case 4:
            {
                uint32 rnd = urand(0, 6);
                std::string msg = "";

                switch (rnd)
                {
                case 0:
                    msg = "soon perhaps %s";
                    break;
                case 1:
                    msg = "probably later";
                    break;
                case 2:
                    msg = "never";
                    break;
                case 3:
                    msg = "what do i look like, a psychic?";
                    break;
                case 4:
                    msg = "a few minutes, maybe an hour ... years?";
                    break;
                case 5:
                    msg = "when? good question %s";
                    break;
                case 6:
                    msg = "dunno %s";
                    break;
                }

                msg = std::regex_replace(msg, std::regex("%s"), name);
                respondsText = msg;
                found = true;
            }
            case 5:
            {
                uint32 rnd = urand(0, 6);
                std::string msg = "";

                switch (rnd)
                {
                case 0:
                    msg = "really want me to answer that?";
                    break;
                case 1:
                    msg = "on the map?";
                    break;
                case 2:
                    msg = "who cares";
                    break;
                case 3:
                    msg = "afk?";
                    break;
                case 4:
                    msg = "none of your buisiness where";
                    break;
                case 5:
                    msg = "yeah, where?";
                    break;
                case 6:
                    msg = "dunno %s";
                    break;
                }

                msg = std::regex_replace(msg, std::regex("%s"), name);
                respondsText = msg;
                found = true;
            }
            case 6:
            {
                uint32 rnd = urand(0, 6);
                std::string msg = "";

                switch (rnd)
                {
                case 0:
                    msg = "dunno %s";
                    break;
                case 1:
                    msg = "why? just because %s";
                    break;
                case 2:
                    msg = "why is the sky blue?";
                    break;
                case 3:
                    msg = "dont ask me %s, im just a bot";
                    break;
                case 4:
                    msg = "your asking the wrong person";
                    break;
                case 5:
                    msg = "who knows?";
                    break;
                case 6:
                    msg = "dunno %s";
                    break;
                }
                msg = std::regex_replace(msg, std::regex("%s"), name);
                respondsText = msg;
                found = true;
            }
            default:
            {
                switch (verb_type)
                {
                case 1:
                {
                    uint32 rnd = urand(0, 3);
                    std::string msg = "";

                    switch (rnd)
                    {
                    case 0:
                        msg = "its true, " + word[verb_pos + 1] + " " + word[verb_pos] + " " + word[verb_pos + 2] + " " + word[verb_pos + 3] + " " + word[verb_pos + 4] + " " + word[verb_pos + 4];
                        break;
                    case 1:
                        msg = "ya %s but thats in the past";
                        break;
                    case 2:
                        msg = "nah, but " + word[verb_pos + 1] + " will " + word[verb_pos + 3] + " again though %s";
                        break;
                    case 3:
                        msg = "afraid that was before i was around or paying attention";
                        break;
                    }
                    msg = std::regex_replace(msg, std::regex("%s"), name);
                    respondsText = msg;
                    found = true;
                }
                case 2:
                {
                    uint32 rnd = urand(0, 6);
                    std::string msg = "";

                    switch (rnd)
                    {
                    case 0:
                        msg = "its true, " + word[verb_pos + 1] + " " + word[verb_pos] + " " + word[verb_pos + 2] + " " + word[verb_pos + 3] + " " + word[verb_pos + 4] + " " + word[verb_pos + 5];
                        break;
                    case 1:
                        msg = "ya %s thats true";
                        break;
                    case 2:
                        msg = "maybe " + word[verb_pos + 1] + " " + word[verb_pos] + " " + word[verb_pos + 2] + " " + word[verb_pos + 3] + " " + word[verb_pos + 4] + " " + word[verb_pos + 5];
                        break;
                    case 3:
                        msg = "dunno %s";
                        break;
                    case 4:
                        msg = "i dont think so %s";
                        break;
                    case 5:
                        msg = "yes";
                        break;
                    case 6:
                        msg = "no";
                        break;
                    }
                    msg = std::regex_replace(msg, std::regex("%s"), name);
                    respondsText = msg;
                    found = true;
                }
                case 3:
                {
                    uint32 rnd = urand(0, 8);
                    std::string msg = "";

                    switch (rnd)
                    {
                    case 0:
                        msg = "dunno %s";
                        break;
                    case 1:
                        msg = "beats me %s";
                        break;
                    case 2:
                        msg = "how should i know %s";
                        break;
                    case 3:
                        msg = "dont ask me %s, im just a bot";
                        break;
                    case 4:
                        msg = "your asking the wrong person";
                        break;
                    case 5:
                        msg = "what do i look like, a psychic?";
                        break;
                    case 6:
                        msg = "sure %s";
                        break;
                    case 7:
                        msg = "i dont think so %s";
                        break;
                    case 8:
                        msg = "maybe";
                        break;
                    }
                    msg = std::regex_replace(msg, std::regex("%s"), name);
                    respondsText = msg;
                    found = true;
                }
                }
            }
            }
        }
        else
        {
            switch (verb_type)
            {
            case 1:
            {
                uint32 rnd = urand(0, 2);
                std::string msg = "";

                switch (rnd)
                {
                case 0:
                    msg = "yeah %s, the key word being " + word[verb_pos] + " " + word[verb_pos + 1];
                case 1:
                    msg = "ya %s but thats in the past";
                case 2:
                    msg = word[verb_pos - 1] + " will " + word[verb_pos + 1] + " again though %s";
                }
                msg = std::regex_replace(msg, std::regex("%s"), name);
                respondsText = msg;
                found = true;
            }
            case 2:
            {
                uint32 rnd = urand(0, 2);
                std::string msg = "";

                switch (rnd)
                {
                case 0:
                    msg = "%s, what do you mean " + word[verb_pos + 1] + "?";
                case 1:
                    msg = "%s, what is a " + word[verb_pos + 1] + "?";
                case 2:
                    msg = "yeah i know " + word[verb_pos - 1] + " is a " + word[verb_pos + 1];
                }
                msg = std::regex_replace(msg, std::regex("%s"), name);
                respondsText = msg;
                found = true;
            }
            case 3:
            {
                uint32 rnd = urand(0, 1);
                std::string msg = "";

                switch (rnd)
                {
                case 0:
                    msg = "are you sure thats going to happen %s?";
                case 1:
                    msg = "%s, what will happen %s?";
                case 2:
                    msg = "are you saying " + word[verb_pos - 1] + " will " + word[verb_pos + 1] + " " + word[verb_pos + 2] + "%s?";
                }
                msg = std::regex_replace(msg, std::regex("%s"), name);
                respondsText = msg;
                found = true;
            }
            }
        }
        if (!found)
        {
            // Name Responds
            if (msg.find(me->GetName()) != std::string::npos)
            {
                std::string msg = SelectRandomContainerElement(m_chatDataNameRespond).m_chat;
                msg = std::regex_replace(msg, std::regex("%s"), name);
                respondsText = msg;
                found = true;
            }
            else // Does not understand
            {
                std::string msg = SelectRandomContainerElement(m_chatDataNotUnderstand).m_chat;
                msg = std::regex_replace(msg, std::regex("%s"), name);
                respondsText = msg;
                found = true;
            }
        }

        // send responds
        // 
        if (found)
        {
            const char* c = respondsText.c_str();
            if (type == CHAT_MSG_WHISPER)
            {
                if (me->GetTeam() == ALLIANCE)
                {
                    pMe->Whisper(c, LANG_COMMON, pReciever);
                }
                else
                {
                    pMe->Whisper(c, LANG_ORCISH, pReciever);
                }
            }
            BotLastChatTime = gtime;
        }
    }
}

void WorldBotAI::HandleGeneralChat(Player* me, uint32 type, uint32 guid1, uint32 guid2, std::string msg, std::string chanName)
{
    MasterPlayer* pMe = me->GetSession()->GetMasterPlayer();
    MasterPlayer* pReciever = ObjectAccessor::FindMasterPlayer(guid1);
    std::string name = pReciever->GetName();

    std::string respondsText;
    time_t gtime = sWorld.GetGameTime();
    int32 rnd = urand(2, 10);
    if (BotLastChatTime < (gtime - rnd))
    {
        // Chat Logic
        bool found = false;



        // send responds
        // 
        if (found)
        {
            const char* c = respondsText.c_str();
            if (chanName.find("General"))
            {
                if (ChannelMgr* cMgr = channelMgr(me->GetTeam()))
                {
                    if (Channel* chn = cMgr->GetJoinChannel(chanName.c_str()))
                        if (me->GetTeam() == ALLIANCE)
                            chn->Say(me->GetObjectGuid(), c, LANG_COMMON, false);
                        else
                            chn->Say(me->GetObjectGuid(), c, LANG_ORCISH, false);
                }
            }
            BotLastChatTime = gtime;
        }
    }
}

void WorldBotAI::HandleTradeChat(Player* me, uint32 type, uint32 guid1, uint32 guid2, std::string msg, std::string chanName)
{
    MasterPlayer* pMe = me->GetSession()->GetMasterPlayer();
    MasterPlayer* pReciever = ObjectAccessor::FindMasterPlayer(guid1);
    std::string name = pReciever->GetName();

    std::string respondsText;
    time_t gtime = sWorld.GetGameTime();
    int32 rnd = urand(2, 10);
    if (BotLastChatTime < (gtime - rnd))
    {
        // Chat Logic
        bool found = false;


        // send responds
        // 
        if (found)
        {
            const char* c = respondsText.c_str();
            if (chanName.find("Trade"))
            {
                if (ChannelMgr* cMgr = channelMgr(me->GetTeam()))
                {
                    if (Channel* chn = cMgr->GetJoinChannel(chanName.c_str()))
                        if (me->GetTeam() == ALLIANCE)
                            chn->Say(me->GetObjectGuid(), c, LANG_COMMON, false);
                        else
                            chn->Say(me->GetObjectGuid(), c, LANG_ORCISH, false);
                }
            }
            BotLastChatTime = gtime;
        }
    }
}

void WorldBotAI::HandleLFGChat(Player* me, uint32 type, uint32 guid1, uint32 guid2, std::string msg, std::string chanName)
{
    MasterPlayer* pMe = me->GetSession()->GetMasterPlayer();
    MasterPlayer* pReciever = ObjectAccessor::FindMasterPlayer(guid1);
    std::string name = pReciever->GetName();

    std::string respondsText;
    time_t gtime = sWorld.GetGameTime();
    int32 rnd = urand(2, 10);
    if (BotLastChatTime < (gtime - rnd))
    {
        // Chat Logic
        bool found = false;



        // send responds
        // 
        if (found)
        {
            const char* c = respondsText.c_str();
            if (chanName.find("Lfg"))
            {
                if (ChannelMgr* cMgr = channelMgr(me->GetTeam()))
                {
                    if (Channel* chn = cMgr->GetJoinChannel(chanName.c_str()))
                        if (me->GetTeam() == ALLIANCE)
                            chn->Say(me->GetObjectGuid(), c, LANG_COMMON, false);
                        else
                            chn->Say(me->GetObjectGuid(), c, LANG_ORCISH, false);
                }
            }
            BotLastChatTime = gtime;
        }
    }
}

void WorldBotAI::HandleWorldChat(Player* me, uint32 type, uint32 guid1, uint32 guid2, std::string msg, std::string chanName)
{
    MasterPlayer* pMe = me->GetSession()->GetMasterPlayer();
    MasterPlayer* pReciever = ObjectAccessor::FindMasterPlayer(guid1);
    std::string name = pReciever->GetName();

    std::string respondsText;
    time_t gtime = sWorld.GetGameTime();
    int32 rnd = urand(2, 10);
    if (BotLastChatTime < (gtime - rnd))
    {
        // Chat Logic
        bool found = false;



        // send responds
        // 
        if (found)
        {
            const char* c = respondsText.c_str();
            if (chanName.find("World"))
            {
                if (ChannelMgr* cMgr = channelMgr(me->GetTeam()))
                {
                    if (Channel* chn = cMgr->GetJoinChannel(chanName.c_str()))
                        if (me->GetTeam() == ALLIANCE)
                            chn->Say(me->GetObjectGuid(), c, LANG_COMMON, false);
                        else
                            chn->Say(me->GetObjectGuid(), c, LANG_ORCISH, false);
                }
            }
            BotLastChatTime = gtime;
        }
    }
}

