
#include "scriptPCH.h"

// <The Greysteel Company> NPCs

bool GossipHello_npc_dirge_the_bouncer(Player* p_Player, Creature* p_Creature)
{
    p_Player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "What is this place?", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    p_Player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Who are the Greysteels?", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
    p_Player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Why do they call you Dirge?", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);
    p_Player->SEND_GOSSIP_MENU(90200, p_Creature->GetGUID());
    return true;
}

bool GossipSelect_npc_dirge_the_bouncer(Player* p_Player, Creature* p_Creature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
        p_Creature->MonsterSay("This be tha Grey Raven lad. Ye better have coin ta pay for yer drinks. There's no handouts here.", 7, 0);
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
        p_Creature->MonsterSay("Da Greysteel Company. Mercen... I mean, Adventurer Company. Check in with the guys inside if ye want work.", 7, 0);
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 3)
        p_Creature->MonsterSay("They call me Dirge, 'cause I'm tha last thing ye hear before they put ye in tha ground.", 7, 0);
    p_Player->CLOSE_GOSSIP_MENU();
    return true;
}

// <Ghosts of Lordaeron> NPCs

bool GossipHello_npc_lordaeron_alice(Player* p_Player, Creature* p_Creature)
{
    p_Player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "<Choose blue stone>", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    p_Player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "<Choose red stone>", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
    p_Player->SEND_GOSSIP_MENU(90201, p_Creature->GetGUID());
    return true;
}

bool GossipSelect_npc_lordaeron_alice(Player* p_Player, Creature* p_Creature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        p_Creature->MonsterTextEmote("Alice waves her hand in front of your face. Your reason for coming is no longer clear to you, and you forget what you know about the Ghosts of Lordaeron.");
        p_Creature->MonsterSay("Go! Take the ferry back, and begone! Never return to this place if you value your life!", 33, 0);
    }
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
        p_Creature->MonsterSay("Ah, so the truth is too enticing for you to look away. Very well. Go on ahead, and speak with whoever is here, or wait until someone arrives. It will be a difficult road for you, but I assure you it is the correct one.", 33, 0);

    p_Player->CLOSE_GOSSIP_MENU();
    return true;
}

bool GossipHello_npc_lordaeron_ike(Player* p_Player, Creature* p_Creature)
{

    p_Player->PrepareGossipMenu(p_Creature, p_Creature->GetCreatureInfo()->gossip_menu_id);
    p_Player->SEND_GOSSIP_MENU(90202, p_Creature->GetGUID());
    return true;
}


void AddSC_guild_housing()
{
    Script *newscript;

    newscript = new Script;
    newscript->Name = "npc_dirge_the_bouncer";
    newscript->pGossipHello = &GossipHello_npc_dirge_the_bouncer;
    newscript->pGossipSelect = &GossipSelect_npc_dirge_the_bouncer;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_lordaeron_alice";
    newscript->pGossipHello = &GossipHello_npc_lordaeron_alice;
    newscript->pGossipSelect = &GossipSelect_npc_lordaeron_alice;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_lordaeron_ike";
    newscript->pGossipHello = &GossipHello_npc_lordaeron_ike;
    newscript->RegisterSelf();

}