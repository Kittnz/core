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

#include "GossipDef.h"
#include "QuestDef.h"
#include "ObjectMgr.h"
#include "Opcodes.h"
#include "WorldPacket.h"
#include "WorldSession.h"
#include "Formulas.h"

GossipMenu::GossipMenu(WorldSession* session) : m_session(session)
{
    m_gItems.reserve(16);                                   // can be set for max from most often sizes to speedup push_back and less memory use
    m_gMenuId = 0;
    m_discoveredNode = false;
}

GossipMenu::~GossipMenu()
{
    ClearMenu();
}

void GossipMenu::AddMenuItem(uint8 Icon, std::string const& Message, uint32 dtSender, uint32 dtAction, std::string const& BoxMessage, bool Coded)
{
    MANGOS_ASSERT(m_gItems.size() <= GOSSIP_MAX_MENU_ITEMS);

    GossipMenuItem gItem;

    gItem.m_gIcon       = Icon;
    gItem.m_gMessage    = Message;
    gItem.m_gCoded      = Coded;
    gItem.m_gSender     = dtSender;
    gItem.m_gOptionId   = dtAction;
    gItem.m_gBoxMessage = BoxMessage;

    m_gItems.push_back(gItem);
}

void GossipMenu::AddGossipMenuItemData(int32 action_menu, uint32 action_poi, uint32 action_script)
{
    GossipMenuItemData pItemData;

    pItemData.m_gAction_menu    = action_menu;
    pItemData.m_gAction_poi     = action_poi;
    pItemData.m_gAction_script  = action_script;

    m_gItemsData.push_back(pItemData);
}

void GossipMenu::AddMenuItem(uint8 Icon, std::string const& Message, bool Coded)
{
    AddMenuItem(Icon, Message, 0, 0, "", Coded);
}

void GossipMenu::AddMenuItem(uint8 Icon, char const* Message, bool Coded)
{
    AddMenuItem(Icon, std::string(Message ? Message : ""), Coded);
}

void GossipMenu::AddMenuItem(uint8 Icon, char const* Message, uint32 dtSender, uint32 dtAction, char const* BoxMessage, bool Coded)
{
    AddMenuItem(Icon, std::string(Message ? Message : ""), dtSender, dtAction, std::string(BoxMessage ? BoxMessage : ""), Coded);
}

void GossipMenu::AddMenuItem(uint8 Icon, int32 itemText, uint32 dtSender, uint32 dtAction, int32 boxText, bool Coded)
{
    uint32 loc_idx = m_session->GetSessionDbLocaleIndex();

    char const* item_text = itemText ? (itemText > 0 ? sObjectMgr.GetBroadcastText(itemText, loc_idx, GetMenuSession()->GetPlayer()->GetGender()) : sObjectMgr.GetMangosString(itemText, loc_idx)) : "";
    char const* box_text = boxText ? (boxText > 0 ? sObjectMgr.GetBroadcastText(boxText, loc_idx, GetMenuSession()->GetPlayer()->GetGender()) : sObjectMgr.GetMangosString(boxText, loc_idx)) : "";

    AddMenuItem(Icon, std::string(item_text), dtSender, dtAction, std::string(box_text), Coded);
}

uint32 GossipMenu::MenuItemSender(unsigned int ItemId)
{
    if (ItemId >= m_gItems.size())
        return 0;

    return m_gItems[ ItemId ].m_gSender;
}

uint32 GossipMenu::MenuItemAction(unsigned int ItemId)
{
    if (ItemId >= m_gItems.size())
        return 0;

    return m_gItems[ ItemId ].m_gOptionId;
}

bool GossipMenu::MenuItemCoded(unsigned int ItemId)
{
    if (ItemId >= m_gItems.size())
        return 0;

    return m_gItems[ ItemId ].m_gCoded;
}

void GossipMenu::ClearMenu()
{
    m_gItems.clear();
    m_gItemsData.clear();
    m_gMenuId = 0;
    m_discoveredNode = false;
}

PlayerMenu::PlayerMenu(WorldSession *session) : mGossipMenu(session)
{
}

PlayerMenu::~PlayerMenu()
{
    ClearMenus();
}

void PlayerMenu::ClearMenus()
{
    mGossipMenu.ClearMenu();
    mQuestMenu.ClearMenu();
}

uint32 PlayerMenu::GossipOptionSender(unsigned int Selection)
{
    return mGossipMenu.MenuItemSender(Selection);
}

uint32 PlayerMenu::GossipOptionAction(unsigned int Selection)
{
    return mGossipMenu.MenuItemAction(Selection);
}

bool PlayerMenu::GossipOptionCoded(unsigned int Selection)
{
    return mGossipMenu.MenuItemCoded(Selection);
}

void PlayerMenu::SendGossipMenu(uint32 TitleTextId, ObjectGuid objectGuid)
{
    WorldPacket data(SMSG_GOSSIP_MESSAGE, (100));           // guess size
    data << ObjectGuid(objectGuid);
    data << uint32(TitleTextId);
    data << uint32(mGossipMenu.MenuItemCount());            // [ZERO] max count 15

    for (uint32 iI = 0; iI < mGossipMenu.MenuItemCount(); ++iI)
    {
        GossipMenuItem const& gItem = mGossipMenu.GetItem(iI);
        data << uint32(iI);
        data << uint8(gItem.m_gIcon);
        data << uint8(gItem.m_gCoded);                      // makes pop up box password
        data << gItem.m_gMessage;                           // text for gossip item, max 0x800
    }

    data << uint32(mQuestMenu.MenuItemCount());             // max count 0x20

    for (uint32 iI = 0; iI < mQuestMenu.MenuItemCount(); ++iI)
    {
        QuestMenuItem const& qItem = mQuestMenu.GetItem(iI);
        uint32 questID = qItem.m_qId;
        Quest const* pQuest = sObjectMgr.GetQuestTemplate(questID);

        data << uint32(questID);
        data << uint32(qItem.m_qIcon);
        data << uint32(pQuest->GetQuestLevel());
        std::string Title = pQuest->GetTitle();

        int loc_idx = GetMenuSession()->GetSessionDbLocaleIndex();
        if (loc_idx >= 0)
            if (QuestLocale const *ql = sObjectMgr.GetQuestLocale(questID))
                if (ql->Title.size() > (size_t)loc_idx && !ql->Title[loc_idx].empty())
                    Title = ql->Title[loc_idx];
        data << Title;                                      // max 0x200
    }

    GetMenuSession()->SendPacket(&data);
    //DEBUG_LOG( "WORLD: Sent SMSG_GOSSIP_MESSAGE NPCGuid=%u",GUID_LOPART(npcGUID) );
}

void PlayerMenu::CloseGossip()
{
    WorldPacket data(SMSG_GOSSIP_COMPLETE, 0);
    GetMenuSession()->SendPacket(&data);

    //DEBUG_LOG( "WORLD: Sent SMSG_GOSSIP_COMPLETE" );
}

// Outdated
void PlayerMenu::SendPointOfInterest(float X, float Y, uint32 Icon, uint32 Flags, uint32 Data, char const * locName)
{
    WorldPacket data(SMSG_GOSSIP_POI, (4 + 4 + 4 + 4 + 4 + 10)); // guess size
    data << uint32(Flags);
    data << float(X);
    data << float(Y);
    data << uint32(Icon);
    data << uint32(Data);
    data << locName;

    GetMenuSession()->SendPacket(&data);
    //DEBUG_LOG("WORLD: Sent SMSG_GOSSIP_POI");
}

void PlayerMenu::SendPointOfInterest(uint32 poi_id)
{
    PointOfInterest const* poi = sObjectMgr.GetPointOfInterest(poi_id);
    if (!poi)
    {
        sLog.outErrorDb("Requested send nonexistent POI (Id: %u), ignore.", poi_id);
        return;
    }

    std::string icon_name = poi->icon_name;

    int loc_idx = GetMenuSession()->GetSessionDbLocaleIndex();
    if (loc_idx >= 0)
        if (PointOfInterestLocale const *pl = sObjectMgr.GetPointOfInterestLocale(poi_id))
            if (pl->IconName.size() > size_t(loc_idx) && !pl->IconName[loc_idx].empty())
                icon_name = pl->IconName[loc_idx];

    WorldPacket data(SMSG_GOSSIP_POI, (4 + 4 + 4 + 4 + 4 + 10)); // guess size
    data << uint32(poi->flags);
    data << float(poi->x);
    data << float(poi->y);
    data << uint32(poi->icon);
    data << uint32(poi->data);
    data << icon_name;

    GetMenuSession()->SendPacket(&data);
    //DEBUG_LOG("WORLD: Sent SMSG_GOSSIP_POI");
}

void PlayerMenu::SendTalking(uint32 textID)
{
    NpcText const* pGossip = sObjectMgr.GetNpcText(textID);

    WorldPacket data(SMSG_NPC_TEXT_UPDATE, 100);            // guess size
    data << textID;                                         // can be < 0

    if (!pGossip)
    {
        for (uint32 i = 0; i < 8; ++i)
        {
            data << float(0);
            data << "Greetings, $N.";
            data << "Greetings, $N.";
            data << uint32(0);
            data << uint32(0);
            data << uint32(0);
            data << uint32(0);
            data << uint32(0);
            data << uint32(0);
            data << uint32(0);
        }
    }
    else
    {
        std::string Text_0[8], Text_1[8];
        int loc_idx = GetMenuSession()->GetSessionDbLocaleIndex();
        for (int i = 0; i < 8; ++i)
        {
            BroadcastText const* bct = sObjectMgr.GetBroadcastTextLocale(pGossip->Options[i].BroadcastTextID);
            if (bct)
            {
                Text_0[i] = bct->GetText(loc_idx, GENDER_MALE, true);
                Text_1[i] = bct->GetText(loc_idx, GENDER_FEMALE, true);

                data << pGossip->Options[i].Probability;

                if (Text_0[i].empty())
                    data << Text_1[i];
                else
                    data << Text_0[i];

                if (Text_1[i].empty())
                    data << Text_0[i];
                else
                    data << Text_1[i];

                data << bct->languageId;

                data << bct->emoteDelay1;
                data << bct->emoteId1;
                data << bct->emoteDelay2;
                data << bct->emoteId2;
                data << bct->emoteDelay3;
                data << bct->emoteId3;
            }
            else
            {
                data << float(0);
                data << "Greetings, $N.";
                data << "Greetings, $N.";
                data << uint32(0);
                data << uint32(0);
                data << uint32(0);
                data << uint32(0);
                data << uint32(0);
                data << uint32(0);
                data << uint32(0);
            }
        }
    }
    GetMenuSession()->SendPacket(&data);

    DEBUG_LOG("WORLD: Sent SMSG_NPC_TEXT_UPDATE ");
}

void PlayerMenu::SendTalking(char const * title, char const * text)
{
    WorldPacket data(SMSG_NPC_TEXT_UPDATE, 50);             // guess size
    data << uint32(0);
    for (uint32 i = 0; i < 8; ++i)
    {
        data << float(0);
        data << title;
        data << text;
        data << uint32(0);
        data << uint32(0);
        data << uint32(0);
        data << uint32(0);
        data << uint32(0);
        data << uint32(0);
        data << uint32(0);
    }

    GetMenuSession()->SendPacket(&data);

    DEBUG_LOG("WORLD: Sent SMSG_NPC_TEXT_UPDATE ");
}

/*********************************************************/
/***                    QUEST SYSTEM                   ***/
/*********************************************************/

QuestMenu::QuestMenu()
{
    m_qItems.reserve(16);                                   // can be set for max from most often sizes to speedup push_back and less memory use
}

QuestMenu::~QuestMenu()
{
    ClearMenu();
}

void QuestMenu::AddMenuItem(uint32 QuestId, uint8 Icon)
{
    Quest const* qinfo = sObjectMgr.GetQuestTemplate(QuestId);
    if (!qinfo)
        return;

    MANGOS_ASSERT(m_qItems.size() <= GOSSIP_MAX_MENU_ITEMS);

    QuestMenuItem qItem;

    qItem.m_qId        = QuestId;
    qItem.m_qIcon      = Icon;

    m_qItems.push_back(qItem);
}

bool QuestMenu::HasItem(uint32 questid)
{
    for (const auto& qItem : m_qItems)
        if (qItem.m_qId == questid)
            return true;

    return false;
}

void QuestMenu::ClearMenu()
{
    m_qItems.clear();
}

void PlayerMenu::SendQuestGiverQuestList(QEmote eEmote, std::string const& Title, ObjectGuid guid)
{
    WorldPacket data(SMSG_QUESTGIVER_QUEST_LIST, 100);      // guess size
    data << ObjectGuid(guid);

    if (QuestGreetingLocale const *questGreeting = sObjectMgr.GetQuestGreetingLocale(guid.GetEntry(), (guid.IsAnyTypeCreature() ? 0 : 1)))
    {
        int locale_idx = GetMenuSession()->GetSessionDbLocaleIndex();

        if ((int32)questGreeting->Content.size() > locale_idx + 1 && !questGreeting->Content[locale_idx + 1].empty())
            data << questGreeting->Content[locale_idx + 1];
        else
            data << questGreeting->Content[0];

        data << uint32(questGreeting->EmoteDelay);
        data << uint32(questGreeting->Emote);
    }
    else
    {
        data << Title;
        data << uint32(eEmote._Delay);                          // player emote
        data << uint32(eEmote._Emote);                          // NPC emote
    }

    size_t count_pos = data.wpos();
    data << uint8(mQuestMenu.MenuItemCount());
    uint32 count = 0;
    for (; count < mQuestMenu.MenuItemCount(); ++count)
    {
        QuestMenuItem const& qmi = mQuestMenu.GetItem(count);

        uint32 questID = qmi.m_qId;

        if (Quest const *pQuest = sObjectMgr.GetQuestTemplate(questID))
        {
            std::string title = pQuest->GetTitle();

            int loc_idx = GetMenuSession()->GetSessionDbLocaleIndex();
            if (loc_idx >= 0)
            {
                if (QuestLocale const *ql = sObjectMgr.GetQuestLocale(questID))
                {
                    if (ql->Title.size() > (size_t)loc_idx && !ql->Title[loc_idx].empty())
                        title = ql->Title[loc_idx];
                }
            }

            data << uint32(questID);
            data << uint32(qmi.m_qIcon);
            data << uint32(pQuest->GetQuestLevel());
            data << title;
        }
    }
    data.put<uint8>(count_pos, count);
    GetMenuSession()->SendPacket(&data);
    //DEBUG_LOG("WORLD: Sent SMSG_QUESTGIVER_QUEST_LIST NPC Guid = %s", guid.GetString().c_str());
}

void PlayerMenu::SendQuestGiverStatus(uint8 questStatus, ObjectGuid npcGUID)
{
    WorldPacket data(SMSG_QUESTGIVER_STATUS, 12);
    data << ObjectGuid(npcGUID);
    data << uint32(questStatus);

    GetMenuSession()->SendPacket(&data);
    DEBUG_LOG("WORLD: Sent SMSG_QUESTGIVER_STATUS for %s", npcGUID.GetString().c_str());
}

void PlayerMenu::SendQuestGiverQuestDetails(Quest const *pQuest, ObjectGuid npcGUID, bool ActivateAccept)
{
    std::string Title      = pQuest->GetTitle();
    std::string Details    = pQuest->GetDetails();
    std::string Objectives = pQuest->GetObjectives();

    int loc_idx = GetMenuSession()->GetSessionDbLocaleIndex();
    if (loc_idx >= 0)
    {
        if (QuestLocale const *ql = sObjectMgr.GetQuestLocale(pQuest->GetQuestId()))
        {
            if (ql->Title.size() > (size_t)loc_idx && !ql->Title[loc_idx].empty())
                Title = ql->Title[loc_idx];
            if (ql->Details.size() > (size_t)loc_idx && !ql->Details[loc_idx].empty())
                Details = ql->Details[loc_idx];
            if (ql->Objectives.size() > (size_t)loc_idx && !ql->Objectives[loc_idx].empty())
                Objectives = ql->Objectives[loc_idx];
        }
    }

    WorldPacket data(SMSG_QUESTGIVER_QUEST_DETAILS, 100);   // guess size
    data << ObjectGuid(npcGUID);
    data << uint32(pQuest->GetQuestId());
    data << Title;
    data << Details;
    data << Objectives;
    data << uint32(ActivateAccept ? 1 : 0);                 // auto finish

    if (pQuest->HasQuestFlag(QUEST_FLAGS_HIDDEN_REWARDS))
    {
        data << uint32(0);                                  // Rewarded chosen items hidden
        data << uint32(0);                                  // Rewarded items hidden
        data << uint32(0);                                  // Rewarded money hidden
    }
    else
    {
        ItemPrototype const* IProto;

        auto count = pQuest->GetRewChoiceItemsCount(); // // QUEST_REWARD_CHOICES_COUNT
        data << uint32(count); 

        for (uint32 i = 0; i < count; ++i)
        {
            data << uint32(pQuest->RewChoiceItemId[i]);
            data << uint32(pQuest->RewChoiceItemCount[i]);

            IProto = ObjectMgr::GetItemPrototype(pQuest->RewChoiceItemId[i]);

            if (IProto)
                data << uint32(IProto->DisplayInfoID);
            else
                data << uint32(0x00);
        }

        count = pQuest->GetRewItemsCount(); // QUEST_REWARDS_COUNT
        data << uint32(count);
        
        for (uint32 i = 0; i < count; ++i)
        {
            data << uint32(pQuest->RewItemId[i]);
            data << uint32(pQuest->RewItemCount[i]);

            IProto = ObjectMgr::GetItemPrototype(pQuest->RewItemId[i]);

            if (IProto)
                data << uint32(IProto->DisplayInfoID);
            else
                data << uint32(0x00);
        }

        data << uint32(pQuest->GetRewOrReqMoney());
    }

    data << uint32(pQuest->GetRewSpell());                  // reward spell, this spell will display (icon) (casted if RewSpellCast==0)
    data << uint32(QUEST_EMOTE_COUNT);

    for (uint32 i = 0; i < QUEST_EMOTE_COUNT; ++i)
    {
        data << uint32(pQuest->DetailsEmote[i]);
        data << uint32(pQuest->DetailsEmoteDelay[i]); // delay between emotes in ms
    }

    GetMenuSession()->SendPacket(&data);

    if (GetMenuSession()->GetPlayer() && GetMenuSession()->GetPlayer()->IsHardcore())
    {
        if (pQuest->GetType() == QUEST_TYPE_PVP)
            GetMenuSession()->SendNotification("This quest will flag you for PvP.");
    }

    DEBUG_LOG("WORLD: Sent SMSG_QUESTGIVER_QUEST_DETAILS NPCGuid = %s, questid = %u", npcGUID.GetString().c_str(), pQuest->GetQuestId());
}

void PlayerMenu::SendQuestQueryResponse(Quest const *pQuest)
{
    std::string Title, Details, Objectives, EndText;
    std::string ObjectiveText[QUEST_OBJECTIVES_COUNT];
    Title = pQuest->GetTitle();
    Details = pQuest->GetDetails();
    Objectives = pQuest->GetObjectives();
    EndText = pQuest->GetEndText();
    for (int i = 0; i < QUEST_OBJECTIVES_COUNT; ++i)
        ObjectiveText[i] = pQuest->ObjectiveText[i];

    int loc_idx = GetMenuSession()->GetSessionDbLocaleIndex();
    if (loc_idx >= 0)
    {
        if (QuestLocale const *ql = sObjectMgr.GetQuestLocale(pQuest->GetQuestId()))
        {
            if (ql->Title.size() > (size_t)loc_idx && !ql->Title[loc_idx].empty())
                Title = ql->Title[loc_idx];
            if (ql->Details.size() > (size_t)loc_idx && !ql->Details[loc_idx].empty())
                Details = ql->Details[loc_idx];
            if (ql->Objectives.size() > (size_t)loc_idx && !ql->Objectives[loc_idx].empty())
                Objectives = ql->Objectives[loc_idx];
            if (ql->EndText.size() > (size_t)loc_idx && !ql->EndText[loc_idx].empty())
                EndText = ql->EndText[loc_idx];

            for (int i = 0; i < QUEST_OBJECTIVES_COUNT; ++i)
                if (ql->ObjectiveText[i].size() > (size_t)loc_idx && !ql->ObjectiveText[i][loc_idx].empty())
                    ObjectiveText[i] = ql->ObjectiveText[i][loc_idx];
        }
    }

    WorldPacket data(SMSG_QUEST_QUERY_RESPONSE, 100);       // guess size

    data << uint32(pQuest->GetQuestId());                   // quest id
    data << uint32(pQuest->GetQuestMethod());               // Accepted values: 0, 1 or 2. 0==IsAutoComplete() (skip objectives/details)
    data << uint32(pQuest->GetQuestLevel());                // may be 0, static data, in other cases must be used dynamic level: Player::GetQuestLevelForPlayer
    data << uint32(pQuest->GetZoneOrSort());                // zone or sort to display in quest log

    data << uint32(pQuest->GetType());
    //[-ZERO] data << uint32(pQuest->GetSuggestedPlayers());

    data << uint32(pQuest->GetRepObjectiveFaction());       // shown in quest log as part of quest objective
    data << uint32(pQuest->GetRepObjectiveValue());         // shown in quest log as part of quest objective

    data << uint32(0);                                      // RequiredOpositeRepFaction
    data << uint32(0);                                      // RequiredOpositeRepValue, required faction value with another (oposite) faction (objective)

    data << uint32(pQuest->GetNextQuestInChain());          // client will request this quest from NPC, if not 0

    if (pQuest->HasQuestFlag(QUEST_FLAGS_HIDDEN_REWARDS))
        data << uint32(0);                                  // Hide money rewarded
    else
        data << uint32(pQuest->GetRewOrReqMoney());

    data << uint32(pQuest->GetRewMoneyMaxLevel());          // used in XP calculation at client
    data << uint32(pQuest->GetRewSpell());                  // reward spell, this spell will display (icon) (casted if RewSpellCast==0)

    data << uint32(pQuest->GetSrcItemId());                 // source item id
    data << uint32(pQuest->GetQuestFlags());                // quest flags

    int iI;

    if (pQuest->HasQuestFlag(QUEST_FLAGS_HIDDEN_REWARDS))
    {
        for (iI = 0; iI < QUEST_REWARDS_COUNT; ++iI)
            data << uint32(0) << uint32(0);
        for (iI = 0; iI < QUEST_REWARD_CHOICES_COUNT; ++iI)
            data << uint32(0) << uint32(0);
    }
    else
    {
        for (iI = 0; iI < QUEST_REWARDS_COUNT; ++iI)
        {
            data << uint32(pQuest->RewItemId[iI]);
            data << uint32(pQuest->RewItemCount[iI]);
        }
        for (iI = 0; iI < QUEST_REWARD_CHOICES_COUNT; ++iI)
        {
            data << uint32(pQuest->RewChoiceItemId[iI]);
            data << uint32(pQuest->RewChoiceItemCount[iI]);
        }
    }

    data << pQuest->GetPointMapId();
    data << pQuest->GetPointX();
    data << pQuest->GetPointY();
    data << pQuest->GetPointOpt();

    data << Title;
    data << Objectives;
    data << Details;
    data << EndText;

    for (iI = 0; iI < QUEST_OBJECTIVES_COUNT; ++iI)
    {
        if (pQuest->ReqCreatureOrGOId[iI] < 0)
        {
            // client expected gameobject template id in form (id|0x80000000)
            data << uint32((pQuest->ReqCreatureOrGOId[iI] * (-1)) | 0x80000000);
        }
        else
            data << uint32(pQuest->ReqCreatureOrGOId[iI]);
        data << uint32(pQuest->ReqCreatureOrGOCount[iI]);
        data << uint32(pQuest->ReqItemId[iI]);
        data << uint32(pQuest->ReqItemCount[iI]);
    }

    for (iI = 0; iI < QUEST_OBJECTIVES_COUNT; ++iI)
        data << ObjectiveText[iI];

    GetMenuSession()->SendPacket(&data);

    DEBUG_LOG("WORLD: Sent SMSG_QUEST_QUERY_RESPONSE questid=%u", pQuest->GetQuestId());
}

void PlayerMenu::SendQuestGiverOfferReward(Quest const* pQuest, ObjectGuid npcGUID, bool EnableNext)
{
    std::string Title = pQuest->GetTitle();
    std::string OfferRewardText = pQuest->GetOfferRewardText();

    int loc_idx = GetMenuSession()->GetSessionDbLocaleIndex();
    if (loc_idx >= 0)
    {
        if (QuestLocale const *ql = sObjectMgr.GetQuestLocale(pQuest->GetQuestId()))
        {
            if (ql->Title.size() > (size_t)loc_idx && !ql->Title[loc_idx].empty())
                Title = ql->Title[loc_idx];
            if (ql->OfferRewardText.size() > (size_t)loc_idx && !ql->OfferRewardText[loc_idx].empty())
                OfferRewardText = ql->OfferRewardText[loc_idx];
        }
    }

    WorldPacket data(SMSG_QUESTGIVER_OFFER_REWARD, 50);     // guess size

    data << ObjectGuid(npcGUID);
    data << uint32(pQuest->GetQuestId());
    data << Title;
    data << OfferRewardText;

    data << uint32(EnableNext ? 1 : 0);                     // Auto Finish

    uint32 EmoteCount = 0;

    for (uint32 i : pQuest->OfferRewardEmote)
    {
        if (i <= 0)
            break;

        ++EmoteCount;
    }

    data << EmoteCount;                                     // Emote Count
    for (uint32 i = 0; i < EmoteCount; ++i)
    {
        data << uint32(pQuest->OfferRewardEmoteDelay[i]);   // Delay Emote
        data << uint32(pQuest->OfferRewardEmote[i]);
    }

    ItemPrototype const *pItem;

    data << uint32(pQuest->GetRewChoiceItemsCount());
    for (uint32 i = 0; i < pQuest->GetRewChoiceItemsCount(); ++i)
    {
        pItem = ObjectMgr::GetItemPrototype(pQuest->RewChoiceItemId[i]);

        data << uint32(pQuest->RewChoiceItemId[i]);
        data << uint32(pQuest->RewChoiceItemCount[i]);

        if (pItem)
            data << uint32(pItem->DisplayInfoID);
        else
            data << uint32(0x00);
    }

    data << uint32(pQuest->GetRewItemsCount());
    for (uint32 i = 0; i < pQuest->GetRewItemsCount(); ++i)
    {
        pItem = ObjectMgr::GetItemPrototype(pQuest->RewItemId[i]);
        data << uint32(pQuest->RewItemId[i]);
        data << uint32(pQuest->RewItemCount[i]);

        if (pItem)
            data << uint32(pItem->DisplayInfoID);
        else
            data << uint32(0x00);
    }

    data << uint32(pQuest->GetRewOrReqMoney());

    data << uint32(0);              // unused
    data << uint32(pQuest->GetRewSpell());                  // reward spell, this spell will display (icon) (casted if RewSpellCast==0)
    GetMenuSession()->SendPacket(&data);
    DEBUG_LOG("WORLD: Sent SMSG_QUESTGIVER_OFFER_REWARD NPCGuid = %s, questid = %u", npcGUID.GetString().c_str(), pQuest->GetQuestId());
}

void PlayerMenu::SendQuestGiverRequestItems(Quest const *pQuest, ObjectGuid npcGUID, bool Completable, bool CloseOnCancel)
{
    // We can always call to RequestItems, but this packet only goes out if there are actually
    // items.  Otherwise, we'll skip straight to the OfferReward

    std::string Title = pQuest->GetTitle();
    std::string RequestItemsText = pQuest->GetRequestItemsText();

    int loc_idx = GetMenuSession()->GetSessionDbLocaleIndex();
    if (loc_idx >= 0)
    {
        if (QuestLocale const *ql = sObjectMgr.GetQuestLocale(pQuest->GetQuestId()))
        {
            if (ql->Title.size() > (size_t)loc_idx && !ql->Title[loc_idx].empty())
                Title = ql->Title[loc_idx];
            if (ql->RequestItemsText.size() > (size_t)loc_idx && !ql->RequestItemsText[loc_idx].empty())
                RequestItemsText = ql->RequestItemsText[loc_idx];
        }
    }

    // Quests that don't require items use the RequestItemsText field to store the text
    // that is shown when you talk to the quest giver while the quest is incomplete.
    // Therefore the text should not be shown for them when the quest is complete.
    // For quests that do require items, it is self explanatory.
    if (RequestItemsText.empty() || ((pQuest->GetReqItemsCount() == 0) && Completable))
    {
        SendQuestGiverOfferReward(pQuest, npcGUID, true);
        return;
    }

    WorldPacket data(SMSG_QUESTGIVER_REQUEST_ITEMS, 50);    // guess size
    data << ObjectGuid(npcGUID);
    data << uint32(pQuest->GetQuestId());
    data << Title;
    data << RequestItemsText;

    data << uint32(0x00);                                   // emote delay

    if (Completable)
        data << pQuest->GetCompleteEmote();                 // emote id
    else
        data << pQuest->GetIncompleteEmote();

    // Close Window after cancel
    if (CloseOnCancel)
        data << uint32(0x01);                               // auto finish
    else
        data << uint32(0x00);

    // Required Money
    data << uint32(pQuest->GetRewOrReqMoney() < 0 ? -pQuest->GetRewOrReqMoney() : 0);

    data << uint32(pQuest->GetReqItemsCount());
    ItemPrototype const *pItem;
    for (int i = 0; i < QUEST_ITEM_OBJECTIVES_COUNT; ++i)
    {
        if (!pQuest->ReqItemId[i])
            continue;
        pItem = ObjectMgr::GetItemPrototype(pQuest->ReqItemId[i]);
        data << uint32(pQuest->ReqItemId[i]);
        data << uint32(pQuest->ReqItemCount[i]);

        if (pItem)
            data << uint32(pItem->DisplayInfoID);
        else
            data << uint32(0);
    }

    data << uint32(0x02);

    if (!Completable)                                       // Completable = flags1 && flags2 && flags3 && flags4
        data << uint32(0x00);                               // flags1
    else
        data << uint32(0x03);

    data << uint32(0x04);                                   // flags2
    data << uint32(0x08);                                   // flags3
    //data << uint32(0x10);                                 // [-ZERO] flags4

    GetMenuSession()->SendPacket(&data);
    DEBUG_LOG("WORLD: Sent SMSG_QUESTGIVER_REQUEST_ITEMS NPCGuid = %s, questid = %u", npcGUID.GetString().c_str(), pQuest->GetQuestId());
}
