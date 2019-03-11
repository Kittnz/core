#include "scriptPCH.h"
#include <array>
#include <Objects/Creature.h>

// Turtle WoW 1st quest:

#define ITEM_APPLE                          4536
#define ITEM_RIDING_TURTLE                 23720

#define QUEST_LOST_TURTLES		           50100 

#define TEXT_PLAYER_IS_FOLLOWED            90010
#define TEXT_PLAYER_IS_NOT_FOLLOWED        90011
#define TEXT_PLAYER_HAS_APPLES             90012
#define TEXT_PLAYER_HAS_NO_APPLES          90013
#define TEXT_PLAYER_COMPLETED_QUEST        90014

#define TEXT_QUESTGIVER_GOOD_JOB           90015
#define GOSSIP_MENU_TEXT                   90016

#define TEXT_TURTLE_IS_NOT_FOLLOWING       90017
#define TEXT_TURTLE_IS_FOLLOWING           90018
#define GET_IN_WE_ARE_GOING_TO_VEGAS       90019

static std::vector<ObjectGuid> g_followed_units;

bool GossipHello_npc_lost_turtle(Player* p_Player, Creature* p_Creature)
{
    if (p_Player->GetQuestStatus(QUEST_LOST_TURTLES) == QUEST_STATUS_COMPLETE)
        p_Player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, TEXT_PLAYER_COMPLETED_QUEST, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);
    else
    {
        if (p_Player->HasItemCount(ITEM_APPLE, 1, true) && p_Player->isAlive() && p_Player->GetQuestStatus(QUEST_LOST_TURTLES) == QUEST_STATUS_INCOMPLETE)
            p_Player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, TEXT_PLAYER_HAS_APPLES , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
        else
            p_Player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, TEXT_PLAYER_HAS_NO_APPLES, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
    }

    p_Player->SEND_GOSSIP_MENU(GOSSIP_MENU_TEXT, p_Creature->GetGUID());
    return true;
}

bool GossipSelect_npc_lost_turtle(Player* p_Player, Creature* p_Creature, uint32 uiSender, uint32 uiAction)
{
    bool isFollowed;
    isFollowed = false;

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        p_Player->DestroyItemCount(ITEM_APPLE, 1, true);
        p_Creature->MonsterSay(TEXT_TURTLE_IS_FOLLOWING, 0U, p_Player);
        p_Creature->GetMotionMaster()->MoveFollow(p_Player, PET_FOLLOW_DIST, PET_FOLLOW_ANGLE);
        g_followed_units.push_back(p_Player->GetObjectGuid());
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
    {
        p_Creature->MonsterSay(TEXT_TURTLE_IS_NOT_FOLLOWING, 0U, p_Player);
        p_Creature->GetMotionMaster()->MoveConfused();
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 3)
    {
        p_Player->AddItem(50017);
        p_Creature->MonsterSay(GET_IN_WE_ARE_GOING_TO_VEGAS, 0U, p_Player);
        p_Player->CastSpell(p_Player, 30174, true);
        p_Creature->GetMotionMaster()->Clear();
        p_Creature->ForcedDespawn();
    }

    p_Player->CLOSE_GOSSIP_MENU();
    return true;
}

bool GossipHello_npc_lost_turtles_questgiver(Player* p_Player, Creature* p_Creature)
{
    if (p_Player->isAlive() && p_Player->GetQuestStatus(QUEST_LOST_TURTLES) == QUEST_STATUS_INCOMPLETE && (std::find(g_followed_units.begin(), g_followed_units.end(), p_Player->GetObjectGuid()) != g_followed_units.end()))
    {
        p_Player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, TEXT_PLAYER_IS_FOLLOWED, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    }
    else
    {
        p_Player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, TEXT_PLAYER_IS_NOT_FOLLOWED, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
    }

    p_Player->SEND_GOSSIP_MENU(GOSSIP_MENU_TEXT, p_Creature->GetGUID());
    return true;
}

bool GossipSelect_npc_lost_turtles_questgiver(Player* p_Player, Creature* p_Creature, uint32 uiSender, uint32 uiAction)
{
    Quest const* pQuest = sObjectMgr.GetQuestTemplate(QUEST_LOST_TURTLES);

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        p_Player->FullQuestComplete(QUEST_LOST_TURTLES);
        p_Player->CompleteQuest(QUEST_LOST_TURTLES);
        p_Creature->MonsterSay(TEXT_QUESTGIVER_GOOD_JOB, 0U, p_Player);

        auto itr = std::find(g_followed_units.begin(), g_followed_units.end(), p_Player->GetObjectGuid());
        if (itr != g_followed_units.end())
            g_followed_units.erase(itr);
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
    {
        if (p_Player->HasItemCount(ITEM_RIDING_TURTLE, 1, true) || p_Player->GetQuestStatus(QUEST_LOST_TURTLES) == QUEST_STATUS_INCOMPLETE)
            ChatHandler(p_Player).PSendSysMessage("You must tame a turtle first!");
        else
            p_Player->AddQuest(pQuest, NULL);
    }

    p_Player->CLOSE_GOSSIP_MENU();
    return true;
}

void AddSC_lost_turtles()
{
    Script *newscript;

    newscript = new Script;
    newscript->Name = "npc_lost_turtle";
    newscript->pGossipHello = &GossipHello_npc_lost_turtle;
    newscript->pGossipSelect = &GossipSelect_npc_lost_turtle;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_lost_turtles_questgiver";
    newscript->pGossipHello = &GossipHello_npc_lost_turtles_questgiver;
    newscript->pGossipSelect = &GossipSelect_npc_lost_turtles_questgiver;
    newscript->RegisterSelf();
}