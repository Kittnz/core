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

#ifndef MANGOSSERVER_QUEST_H
#define MANGOSSERVER_QUEST_H

#include "Platform/Define.h"

#include <string>
#include <vector>

class Field;
class Player;
class ObjectMgr;

#define MAX_QUEST_LOG_SIZE 20

#define QUEST_OBJECTIVES_COUNT 4
#define QUEST_ITEM_OBJECTIVES_COUNT QUEST_OBJECTIVES_COUNT
#define QUEST_SOURCE_ITEM_IDS_COUNT 4
#define QUEST_REWARD_CHOICES_COUNT 6
#define QUEST_REWARDS_COUNT 4
#define QUEST_DEPLINK_COUNT 10
#define QUEST_REPUTATIONS_COUNT 5
#define QUEST_EMOTE_COUNT 4

enum QuestFailedReasons
{
    INVALIDREASON_DONT_HAVE_REQ                 = 0,        // this is default case
    INVALIDREASON_QUEST_FAILED_LOW_LEVEL        = 1,        // You are not high enough level for that quest.
    INVALIDREASON_QUEST_FAILED_REQS             = 2,        // You don't meet the requirements for that quest.
    INVALIDREASON_QUEST_FAILED_INVENTORY_FULL   = 4,        // Inventory is full. (Also 50. From SMSG_QUESTGIVER_QUEST_FAILED)
    INVALIDREASON_QUEST_FAILED_WRONG_RACE       = 6,        // That quest is not available to your race.
    INVALIDREASON_QUEST_ONLY_ONE_TIMED          = 12,       // You can only be on one timed quest at a time.
    INVALIDREASON_QUEST_ALREADY_ON              = 13,       // You are already on that quest
    INVALIDREASON_QUEST_FAILED_DUPLICATE_ITEM   = 17,       // Duplicate item found. (From SMSG_QUESTGIVER_QUEST_FAILED)
    INVALIDREASON_QUEST_FAILED_MISSING_ITEMS    = 20,       // You don't have the required items with you. Check storage.
    INVALIDREASON_QUEST_FAILED_NOT_ENOUGH_MONEY = 22        // You don't have enough money for that quest.
    // INVALIDREASON_QUEST_FAILED_REQS                   = 3,4,5,7-11,14-19,21
};

enum QuestShareMessages
{
    QUEST_PARTY_MSG_SHARING_QUEST           = 0,            // ERR_QUEST_PUSH_SUCCESS_S
    QUEST_PARTY_MSG_CANT_TAKE_QUEST         = 1,            // ERR_QUEST_PUSH_INVALID_S
    QUEST_PARTY_MSG_ACCEPT_QUEST            = 2,            // ERR_QUEST_PUSH_ACCEPTED_S
    QUEST_PARTY_MSG_DECLINE_QUEST           = 3,            // ERR_QUEST_PUSH_DECLINED_S
    QUEST_PARTY_MSG_TOO_FAR                 = 4,            // removed in 3.x
    QUEST_PARTY_MSG_BUSY                    = 5,            // ERR_QUEST_PUSH_BUSY_S
    QUEST_PARTY_MSG_LOG_FULL                = 6,            // ERR_QUEST_PUSH_LOG_FULL_S
    QUEST_PARTY_MSG_HAVE_QUEST              = 7,            // ERR_QUEST_PUSH_ONQUEST_S
    QUEST_PARTY_MSG_FINISH_QUEST            = 8,            // ERR_QUEST_PUSH_ALREADY_DONE_S
};

enum __QuestTradeSkill
{
    QUEST_TRSKILL_NONE           = 0,
    QUEST_TRSKILL_ALCHEMY        = 1,
    QUEST_TRSKILL_BLACKSMITHING  = 2,
    QUEST_TRSKILL_COOKING        = 3,
    QUEST_TRSKILL_ENCHANTING     = 4,
    QUEST_TRSKILL_ENGINEERING    = 5,
    QUEST_TRSKILL_FIRSTAID       = 6,
    QUEST_TRSKILL_HERBALISM      = 7,
    QUEST_TRSKILL_LEATHERWORKING = 8,
    QUEST_TRSKILL_POISONS        = 9,
    QUEST_TRSKILL_TAILORING      = 10,
    QUEST_TRSKILL_MINING         = 11,
    QUEST_TRSKILL_FISHING        = 12,
    QUEST_TRSKILL_SKINNING       = 13,
};

enum QuestStatus
{
    QUEST_STATUS_NONE           = 0,
    QUEST_STATUS_COMPLETE       = 1,
    QUEST_STATUS_UNAVAILABLE    = 2,
    QUEST_STATUS_INCOMPLETE     = 3,
    QUEST_STATUS_AVAILABLE      = 4,                        // unused in fact
    QUEST_STATUS_FAILED         = 5,
    MAX_QUEST_STATUS
};

inline char const* QuestStatusToString(QuestStatus status)
{
    switch (status)
    {
        case QUEST_STATUS_NONE: return "NONE";
        case QUEST_STATUS_COMPLETE: return "COMPLETE";
        case QUEST_STATUS_UNAVAILABLE: return "UNAVAILABLE";
        case QUEST_STATUS_INCOMPLETE: return "INCOMPLETE";
        case QUEST_STATUS_AVAILABLE: return "AVAILABLE";
        case QUEST_STATUS_FAILED: return "FAILED";
        default: break;
    }

    return "UNKNOWN";
}

enum __QuestGiverStatus
{
    DIALOG_STATUS_NONE                     = 0,
    DIALOG_STATUS_UNAVAILABLE              = 1,
    DIALOG_STATUS_CHAT                     = 2,
    DIALOG_STATUS_INCOMPLETE               = 3,
    DIALOG_STATUS_REWARD_REP               = 4,
    DIALOG_STATUS_AVAILABLE                = 5,
    DIALOG_STATUS_REWARD_OLD               = 6,             // red dot on minimap
    DIALOG_STATUS_REWARD2                  = 7,             // yellow dot on minimap
    // [-ZERO] tbc?  DIALOG_STATUS_REWARD                   = 8              // yellow dot on minimap
    DIALOG_STATUS_UNDEFINED                = 100            // Used as result for unassigned ScriptCall
};

// values based at QuestInfo.dbc
enum QuestTypes
{
    QUEST_TYPE_ELITE               = 1,
    QUEST_TYPE_LIFE                = 21,
    QUEST_TYPE_PVP                 = 41,
    QUEST_TYPE_RAID                = 62,
    QUEST_TYPE_DUNGEON             = 81,
    //tbc?
    QUEST_TYPE_WORLD_EVENT         = 82,
    QUEST_TYPE_LEGENDARY           = 83,
    QUEST_TYPE_ESCORT              = 84,
};

enum QuestFlags
{
    // Flags used at server and sent to client
    QUEST_FLAGS_NONE           = 0x00000000,
    QUEST_FLAGS_STAY_ALIVE     = 0x00000001,                // Not used currently
    QUEST_FLAGS_PARTY_ACCEPT   = 0x00000002,                // If player in party, all players that can accept this quest will receive confirmation box to accept quest CMSG_QUEST_CONFIRM_ACCEPT/SMSG_QUEST_CONFIRM_ACCEPT
    QUEST_FLAGS_EXPLORATION    = 0x00000004,                // Not used currently
    QUEST_FLAGS_SHARABLE       = 0x00000008,                // Can be shared: Player::CanShareQuest()
    //QUEST_FLAGS_NONE2        = 0x00000010,                // Not used currently
    QUEST_FLAGS_EPIC           = 0x00000020,                // Not used currently: Unsure of content
    QUEST_FLAGS_RAID           = 0x00000040,                // Not used currently

    QUEST_FLAGS_UNK2           = 0x00000100,                // Not used currently: _DELIVER_MORE Quest needs more than normal _q-item_ drops from mobs
    QUEST_FLAGS_HIDDEN_REWARDS = 0x00000200,                // Items and money rewarded only sent in SMSG_QUESTGIVER_OFFER_REWARD (not in SMSG_QUESTGIVER_QUEST_DETAILS or in client quest log(SMSG_QUEST_QUERY_RESPONSE))
    QUEST_FLAGS_AUTO_REWARDED  = 0x00000400,                // These quests are automatically rewarded on quest complete and they will never appear in quest log client side.
};

enum QuestSpecialFlags
{
    // Mangos flags for set SpecialFlags in DB if required but used only at server
    QUEST_SPECIAL_FLAG_REPEATABLE           = 0x001,        // |1 in SpecialFlags from DB
    QUEST_SPECIAL_FLAG_EXPLORATION_OR_EVENT = 0x002,        // |2 in SpecialFlags from DB (if required area explore, spell SPELL_EFFECT_QUEST_COMPLETE casting, table `*_script` command SCRIPT_COMMAND_QUEST_EXPLORED use, set from script DLL)
    // reserved for future versions           0x004,        // |4 in SpecialFlags.

    // Mangos flags for internal use only
    QUEST_SPECIAL_FLAG_DELIVER              = 0x008,        // Internal flag computed only
    QUEST_SPECIAL_FLAG_SPEAKTO              = 0x010,        // Internal flag computed only
    QUEST_SPECIAL_FLAG_KILL_OR_CAST         = 0x020,        // Internal flag computed only
    QUEST_SPECIAL_FLAG_TIMED                = 0x040,        // Internal flag computed only
};

enum QuestMethod
{
    QUEST_METHOD_AUTOCOMPLETE               = 0x0,
    QUEST_METHOD_DISABLED                   = 0x1,
    QUEST_METHOD_DELIVER                    = 0x2,

    QUEST_METHOD_LIMIT                      = 0x3,          // Highest Method entry DB should have
};

#define QUEST_SPECIAL_FLAG_DB_ALLOWED (QUEST_SPECIAL_FLAG_REPEATABLE | QUEST_SPECIAL_FLAG_EXPLORATION_OR_EVENT)

struct QuestLocale
{
    QuestLocale() { ObjectiveText.resize(QUEST_OBJECTIVES_COUNT); }

    std::vector<std::string> Title;
    std::vector<std::string> Details;
    std::vector<std::string> Objectives;
    std::vector<std::string> OfferRewardText;
    std::vector<std::string> RequestItemsText;
    std::vector<std::string> EndText;
    std::vector< std::vector<std::string> > ObjectiveText;
};

// This Quest class provides a convenient way to access a few pretotaled (cached) quest details,
// all base quest information, and any utility functions such as generating the amount of
// xp to give
class Quest
{
    friend class ObjectMgr;
    public:
        Quest(Field* questRecord);
        uint32 XPValue(Player* pPlayer) const;

        uint32 GetQuestFlags() const { return m_QuestFlags; }
        bool HasQuestFlag(QuestFlags flag) const { return (m_QuestFlags & flag) != 0; }
        bool HasSpecialFlag(QuestSpecialFlags flag) const { return (m_SpecialFlags & flag) != 0; }
        void SetSpecialFlag(QuestSpecialFlags flag) { m_SpecialFlags |= flag; }

        // table data accessors:
        uint32 GetQuestId() const { return QuestId; }
        uint32 GetQuestMethod() const { return QuestMethod; }
        int32  GetZoneOrSort() const { return ZoneOrSort; }
        uint32 GetMinLevel() const { return MinLevel; }
        uint32 GetMaxLevel() const { return MaxLevel; }
        uint32 GetQuestLevel() const { return QuestLevel; }
        uint32 GetType() const { return Type; }
        uint32 GetRequiredClasses() const { return RequiredClasses; }
        uint32 GetRequiredRaces() const { return RequiredRaces; }
        uint32 GetRequiredSkill() const { return RequiredSkill; }
        uint32 GetRequiredSkillValue() const { return RequiredSkillValue; }
        uint32 GetRequiredCondition() const { return RequiredCondition; }
        uint32 GetRepObjectiveFaction() const { return RepObjectiveFaction; }
        int32  GetRepObjectiveValue() const { return RepObjectiveValue; }
        uint32 GetRequiredMinRepFaction() const { return RequiredMinRepFaction; }
        int32  GetRequiredMinRepValue() const { return RequiredMinRepValue; }
        uint32 GetRequiredMaxRepFaction() const { return RequiredMaxRepFaction; }
        int32  GetRequiredMaxRepValue() const { return RequiredMaxRepValue; }
        uint32 GetSuggestedPlayers() const { return SuggestedPlayers; }
        uint32 GetLimitTime() const { return LimitTime; }
        int32  GetPrevQuestId() const { return PrevQuestId; }
        int32  GetNextQuestId() const { return NextQuestId; }
        int32  GetExclusiveGroup() const { return ExclusiveGroup; }
        uint32 GetBreadcrumbForQuestId() const { return BreadcrumbForQuestId; }
        uint32 GetNextQuestInChain() const { return NextQuestInChain; }
        // [-ZERO] not exist
        uint32 GetSrcItemId() const { return SrcItemId; }
        uint32 GetSrcItemCount() const { return SrcItemCount; }
        uint32 GetSrcSpell() const { return SrcSpell; }
        std::string GetTitle() const { return Title; }
        std::string GetDetails() const { return Details; }
        std::string GetObjectives() const { return Objectives; }
        std::string GetOfferRewardText() const { return OfferRewardText; }
        std::string GetRequestItemsText() const { return RequestItemsText; }
        std::string GetEndText() const { return EndText; }
        int32  GetRewOrReqMoney() const;
        uint32 GetRewMoneyMaxLevel() const { return RewMoneyMaxLevel; }
        int32 GetRewMoneyMaxLevelAtComplete() const;
        uint32 GetRewXP() const { return RewXP; }
                                                            // use in XP calculation at client
        uint32 GetRewSpell() const { return RewSpell; }
        uint32 GetRewSpellCast() const { return RewSpellCast; }
        int32 GetRewMailTemplateId() const { return RewMailTemplateId; }
        uint32 GetRewMailDelaySecs() const { return RewMailDelaySecs; }
        uint32 GetRewMailMoney() const { return RewMailMoney; }
        uint32 GetPointMapId() const { return PointMapId; }
        float  GetPointX() const { return PointX; }
        float  GetPointY() const { return PointY; }
        uint32 GetPointOpt() const { return PointOpt; }
        uint32 GetIncompleteEmote() const { return IncompleteEmote; }
        uint32 GetCompleteEmote() const { return CompleteEmote; }
        uint32 GetQuestStartScript() const { return QuestStartScript; }
        uint32 GetQuestCompleteScript() const { return QuestCompleteScript; }

        bool   IsRepeatable() const { return m_SpecialFlags & QUEST_SPECIAL_FLAG_REPEATABLE; }
        bool   IsAutoComplete() const { return QuestMethod ? false : true; }
        bool   IsAllowedInRaid() const;

        // quest can be fully deactivated and will not be available for any player
        void SetQuestActiveState(bool state) { m_isActive = state; }
        bool IsActive() const { return m_isActive; }

        // multiple values
        std::string ObjectiveText[QUEST_OBJECTIVES_COUNT];
        uint32 ReqItemId[QUEST_ITEM_OBJECTIVES_COUNT];
        uint32 ReqItemCount[QUEST_ITEM_OBJECTIVES_COUNT];
        uint32 ReqSourceId[QUEST_SOURCE_ITEM_IDS_COUNT];
        uint32 ReqSourceCount[QUEST_SOURCE_ITEM_IDS_COUNT];
        int32  ReqCreatureOrGOId[QUEST_OBJECTIVES_COUNT];   // >0 Creature <0 Gameobject
        uint32 ReqCreatureOrGOCount[QUEST_OBJECTIVES_COUNT];
        uint32 ReqSpell[QUEST_OBJECTIVES_COUNT];
        uint32 RewChoiceItemId[QUEST_REWARD_CHOICES_COUNT];
        uint32 RewChoiceItemCount[QUEST_REWARD_CHOICES_COUNT];
        uint32 RewItemId[QUEST_REWARDS_COUNT];
        uint32 RewItemCount[QUEST_REWARDS_COUNT];
        uint32 RewRepFaction[QUEST_REPUTATIONS_COUNT];
        int32  RewRepValue[QUEST_REPUTATIONS_COUNT];
        uint32 DetailsEmote[QUEST_EMOTE_COUNT];
        uint32 DetailsEmoteDelay[QUEST_EMOTE_COUNT];
        uint32 OfferRewardEmote[QUEST_EMOTE_COUNT];
        uint32 OfferRewardEmoteDelay[QUEST_EMOTE_COUNT];

        uint32 GetReqItemsCount() const { return m_reqitemscount; }
        uint32 GetReqCreatureOrGOcount() const { return m_reqCreatureOrGOcount; }
        uint32 GetRewChoiceItemsCount() const { return m_rewchoiceitemscount; }
        uint32 GetRewItemsCount() const { return m_rewitemscount; }

        typedef std::vector<int32> PrevQuests;
        PrevQuests prevQuests;
        typedef std::vector<uint32> PrevChainQuests;
        PrevChainQuests prevChainQuests;
        std::vector<uint32> DependentBreadcrumbQuests;

        // cached data
    private:
        uint32 m_reqitemscount;
        uint32 m_reqCreatureOrGOcount;
        uint32 m_rewchoiceitemscount;
        uint32 m_rewitemscount;

        bool m_isActive;

        // table data
    protected:
        uint32 QuestId;
        uint32 QuestMethod;
        int32  ZoneOrSort;
        uint32 MinLevel;
        uint32 MaxLevel;
        uint32 QuestLevel;
        uint32 Type;
        uint32 RequiredClasses;
        uint32 RequiredRaces;
        uint32 RequiredSkill;
        uint32 RequiredSkillValue;
        uint32 RequiredCondition;
        uint32 RepObjectiveFaction;
        int32  RepObjectiveValue;
        uint32 RequiredMinRepFaction;
        int32  RequiredMinRepValue;
        uint32 RequiredMaxRepFaction;
        int32  RequiredMaxRepValue;
        uint32 SuggestedPlayers;
        uint32 LimitTime;
        uint32 m_QuestFlags;
        uint32 m_SpecialFlags;
        int32  PrevQuestId;
        int32  NextQuestId;
        int32  ExclusiveGroup;
        uint32 BreadcrumbForQuestId;
        uint32 NextQuestInChain;
        uint32 SrcItemId;
        uint32 SrcItemCount;
        uint32 SrcSpell;
        std::string Title;
        std::string Details;
        std::string Objectives;
        std::string OfferRewardText;
        std::string RequestItemsText;
        std::string EndText;
        uint32 RewXP;
        int32  RewOrReqMoney;
        uint32 RewMoneyMaxLevel;
        uint32 RewSpell;
        uint32 RewSpellCast;
        int32 RewMailTemplateId;
        uint32 RewMailDelaySecs;
        uint32 RewMailMoney;
        uint32 PointMapId;
        float  PointX;
        float  PointY;
        uint32 PointOpt;
        uint32 IncompleteEmote;
        uint32 CompleteEmote;
        uint32 QuestStartScript;
        uint32 QuestCompleteScript;
};

enum QuestUpdateState
{
    QUEST_UNCHANGED = 0,
    QUEST_CHANGED = 1,
    QUEST_NEW = 2,
    QUEST_DELETED = 3,
};

struct QuestStatusData
{
    QuestStatusData()
        : m_status(QUEST_STATUS_NONE),m_rewarded(false),
        m_explored(false), m_timer(0), uState(QUEST_NEW), m_reward_choice(0)
    {
        memset(m_itemcount, 0, QUEST_OBJECTIVES_COUNT * sizeof(uint32));
        memset(m_creatureOrGOcount, 0, QUEST_OBJECTIVES_COUNT * sizeof(uint32));
    }

    QuestStatus m_status;
    bool m_rewarded;
    bool m_explored;
    uint32 m_timer;
    QuestUpdateState uState;
    uint32 m_reward_choice;

    uint32 m_itemcount[ QUEST_OBJECTIVES_COUNT ];
    uint32 m_creatureOrGOcount[ QUEST_OBJECTIVES_COUNT ];
};
#endif
