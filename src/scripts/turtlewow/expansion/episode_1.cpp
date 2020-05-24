
#include "scriptPCH.h"

enum EI_Quests
{
    INTRODUCTION          = 80000,
    TO_ALAHTHALAS         = 80001,
    CRYSTAL_CLEAR_TASK    = 80002,
    RELICS_IN_FERALAS     = 80003
};

bool GossipHello_npc_caledra(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(INTRODUCTION) == QUEST_STATUS_INCOMPLETE)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Greetings! I'm here to help.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    }

    pPlayer->PrepareQuestMenu(pCreature->GetGUID());
    pPlayer->SEND_GOSSIP_MENU(pCreature->GetDefaultGossipMenuId(), pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_caledra(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1) 
    { 
        // TODO: Make a timer.

        pCreature->MonsterSay("I’m glad that you wish to assist us...I will do my best to recap where we stand..");
        pCreature->MonsterSay("I should explain the situation better. I am Caledra Dawnbreeze, formerly a Ranger-Captain of the Farstriders during the Second war, but now merely a citizen of Stormwind. After the loss of Quel\'thalas our people suffered deeply due to our addiction to magic...Some of us led by our former Prince Kael\'thas were seduced by dark magic and from what I\'ve heard they betrayed the Alliance siding with the creatures known as the Naga and left.");
        pCreature->MonsterSay("I've heard other more...troubling stories but regardless, they are gone and we should focus on those of us who remain in the Alliance. A few months ago, I've managed to gather representatives of our people from all outlying settlements such as the Farstrider lodges.");
        pCreature->MonsterSay("We've had a meeting where we agreed that the time has come for our people to come together so that we may create a home for ourselves where we could rebuild our people in time, a military lodge or cities belonging to other races simply isn't the way to rebuild.");
        pCreature->MonsterSay("Thankfully Dalaran's surviving archives provided an opportunity, roughly a century ago an outpost was built on a peninsula near Quel'thalas. The Outpost is powered by an Arcane crystal infused with the energies of the Sunwell itself.");
        pCreature->MonsterSay("In other words, it's a way for us to cope with the addiction to magic we've been suffering from. The crystal will not last forever but it will buy us time to find a cure. Our Scouts have managed to find the site, and they've confirmed that it is intact. Our people has begun to settle the Outpost and they have named it Alah'thalas, the Land of Light in our tongue.");
        pCreature->MonsterSay("However, the buildings are old and have not been maintained properly, we lack the reagents and materials to sustain the enchantments that protect the Outpost. Likewise the local mine has been infested with creatures...In other words, any help you provide would be greatly appreciated!");

        pCreature->HandleEmoteCommand(EMOTE_ONESHOT_TALK);
        CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(80003); // Caledra Gossip Trigger
        if (cInfo != nullptr)
            pPlayer->KilledMonster(cInfo, ObjectGuid());
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool GossipHello_npc_elsharin(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestRewardStatus(TO_ALAHTHALAS))
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Please, open a portal to Alah'Thalas.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    }

    pPlayer->PrepareQuestMenu(pCreature->GetGUID());
    pPlayer->SEND_GOSSIP_MENU(pCreature->GetDefaultGossipMenuId(), pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_elsharin(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pCreature->MonsterSay("Safe travels!");

        float dis{ -3.0F };
        float x, y, z;
        pPlayer->GetSafePosition(x, y, z);
        x += dis * cos(pPlayer->GetOrientation());
        y += dis * sin(pPlayer->GetOrientation());
        pPlayer->SummonGameObject(3000001, x, y, z + 0.5F, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 30, true);
        pPlayer->SummonGameObject(3000002, x, y, z - 1.5F, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 30, true);

        pCreature->HandleEmote(EMOTE_STATE_SUBMERGED);
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool GOHello_go_portal_alahthalas(Player* pPlayer, GameObject* pGo)
{
    if (pPlayer->GetQuestRewardStatus(TO_ALAHTHALAS))
        pPlayer->TeleportTo(0, 4309.09f, -2854.56f, 5.33926f, 2.35496f);
    return true;
}

void AddSC_episode_1()
{
    Script *newscript;
	
	newscript = new Script;
    newscript->Name = "go_portal_alahthalas";
    newscript->pGOHello = &GOHello_go_portal_alahthalas;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_elsharin";
    newscript->pGossipHello = &GossipHello_npc_elsharin;
    newscript->pGossipSelect = &GossipSelect_npc_elsharin;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_caledra";
    newscript->pGossipHello = &GossipHello_npc_caledra;
    newscript->pGossipSelect = &GossipSelect_npc_caledra;
    newscript->RegisterSelf();

}