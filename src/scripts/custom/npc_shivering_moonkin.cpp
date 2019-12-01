#include "scriptPCH.h"

#define ELUNE_WINTER_QUEST 60009      
#define EGGNOG_ITEM        17198      

bool GossipHello_npc_shivering_moonkin(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(ELUNE_WINTER_QUEST) == QUEST_STATUS_INCOMPLETE)
        if (pPlayer->HasItemCount(EGGNOG_ITEM, 0))
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "<Give moonkin a hot cup of Egg Nog>", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

    pPlayer->SEND_GOSSIP_MENU(90318, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_shivering_moonkin(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
            pCreature->MonsterSay("Hoot!");
            pCreature->MonsterTextEmote(90319); 
            pCreature->SendPlaySpellVisual(SPELL_VISUAL_KIT_DRINK);
            pPlayer->AddItem(51248); // Add Snow Covered Feather
            pPlayer->RemoveItemCurrency(EGGNOG_ITEM, 1); 
    }  

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool GossipHello_npc_frosty(Player* pPlayer, Creature* pCreature)
{
    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Happy Winter Veil, Frosty!\nTeleport me to the Winter Veil Vale!", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    pPlayer->SEND_GOSSIP_MENU(90326, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_frosty(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        static const WorldLocation m_WinterVeilVale(0, -4746.845F, 622.921F, 401.9f, 2.49F);
        pPlayer->TeleportTo(m_WinterVeilVale);
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

void AddSC_npc_shivering_moonkin()
{
    Script *newscript;
    newscript = new Script;
    newscript->Name = "npc_shivering_moonkin";
    newscript->pGossipHello = &GossipHello_npc_shivering_moonkin;
    newscript->pGossipSelect = &GossipSelect_npc_shivering_moonkin;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_frosty";
    newscript->pGossipHello = &GossipHello_npc_frosty;
    newscript->pGossipSelect = &GossipSelect_npc_frosty;
    newscript->RegisterSelf();
}