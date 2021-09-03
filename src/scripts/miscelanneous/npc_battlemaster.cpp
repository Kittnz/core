#include "scriptPCH.h"
#include <array>

#define MENU_WSG "Warsong Gulch"
#define MENU_AB "Arathi Basin"
#define MENU_AV "Alterac Valley"
#define GREETINGS 90100
#define IN_QUEUE 90101

bool GossipHello_npc_battlemaster(Player* p_Player, Creature* p_Creature)
{
    p_Player->ADD_GOSSIP_ITEM(GOSSIP_ICON_BATTLE, MENU_WSG, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    if (p_Player->GetLevel() > 9)
        p_Player->ADD_GOSSIP_ITEM(GOSSIP_ICON_BATTLE, MENU_AB, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);

    if (p_Player->GetLevel() > 50)
        p_Player->ADD_GOSSIP_ITEM(GOSSIP_ICON_BATTLE, MENU_AV, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);

    p_Player->ADD_GOSSIP_ITEM(GOSSIP_ICON_VENDOR, GOSSIP_TEXT_BROWSE_GOODS, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 4);
	p_Player->SEND_GOSSIP_MENU(GREETINGS, p_Creature->GetGUID());

	p_Creature->HandleEmote(1);

	return true;
}

bool GossipSelect_npc_battlemaster(Player* p_Player, Creature* p_Creature, uint32 uiSender, uint32 uiAction)
{
	if (p_Player->IsInCombat() || p_Player->InBattleGround() || p_Player->IsBeingTeleported() || p_Player->HasSpellCooldown(20939) || p_Player->HasSpellCooldown(26013) || (p_Player->GetDeathState() == CORPSE))		
        ChatHandler(p_Player).PSendSysMessage("You are not meeting the conditions for joining!");
    else
    {
        p_Player->SetBattleGroundEntryPoint();
        if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
            p_Player->GetSession()->SendBattlegGroundList(p_Player->GetObjectGuid(), BATTLEGROUND_WS);
        else if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
            p_Player->GetSession()->SendBattlegGroundList(p_Player->GetObjectGuid(), BATTLEGROUND_AB);
        else if (uiAction == GOSSIP_ACTION_INFO_DEF + 3)
            p_Player->GetSession()->SendBattlegGroundList(p_Player->GetObjectGuid(), BATTLEGROUND_AV);
        else if (uiAction == GOSSIP_ACTION_INFO_DEF + 4)
            p_Player->SEND_VENDORLIST(p_Creature->GetGUID());
    }

	p_Player->CLOSE_GOSSIP_MENU();
	return true;
}

#define YOU_HAVE_NO_HONOR 90315

bool GossipHello_wsg_arena(Player* p_Player, Creature* p_Creature)
{
    p_Player->ADD_GOSSIP_ITEM(GOSSIP_ICON_BATTLE, MENU_WSG, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    p_Player->SEND_GOSSIP_MENU(YOU_HAVE_NO_HONOR, p_Creature->GetGUID());
    p_Creature->HandleEmote(1);
    return true;
}

bool GossipSelect_wsg_arena(Player* p_Player, Creature* p_Creature, uint32 uiSender, uint32 uiAction)
{
    if (!p_Player)
        return false;

    if (p_Player->IsInCombat() || p_Player->InBattleGround() || p_Player->IsBeingTeleported() || p_Player->HasSpellCooldown(20939) || p_Player->HasSpellCooldown(26013) || (p_Player->GetDeathState() == CORPSE))
        ChatHandler(p_Player).PSendSysMessage("You are not meeting the conditions for joining!");
    else
    {
        p_Player->SetBattleGroundEntryPoint();
        if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
            p_Player->GetSession()->SendBattlegGroundList(p_Player->GetObjectGuid(), BATTLEGROUND_WS);
    }

    p_Player->CLOSE_GOSSIP_MENU();
    return true;
}

void AddSC_battlemaster()
{
    Script *newscript;
	
    newscript = new Script;
    newscript->Name = "npc_battlemaster";
    newscript->pGossipHello = &GossipHello_npc_battlemaster;
    newscript->pGossipSelect = &GossipSelect_npc_battlemaster;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "wsg_arena";
    newscript->pGossipHello = &GossipHello_wsg_arena;
    newscript->pGossipSelect = &GossipSelect_wsg_arena;
    newscript->RegisterSelf();
}
