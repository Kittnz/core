#include "scriptPCH.h"

#define ELUNE_WINTER_QUEST 50318     
#define EGGNOG_ITEM        17198      
#define MOONKIN_FED        19705      

bool GossipHello_npc_shivering_moonkin(Player* pPlayer, Creature* pCreature)
{
    if (pCreature->HasAura(MOONKIN_FED))
    {
        pCreature->MonsterSay("Hoot!");
        pCreature->SendPlaySpellVisual(SPELL_VISUAL_KIT_DRINK);
    }
    else
    {
        if (pPlayer->GetQuestStatus(ELUNE_WINTER_QUEST) == QUEST_STATUS_INCOMPLETE)
        {
            if (pPlayer->HasItemCount(EGGNOG_ITEM, 1, 0))
                pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "<Give moonkin a hot cup of Egg Nog>", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
        }
        pPlayer->SEND_GOSSIP_MENU(90318, pCreature->GetGUID());
    }
    return true;
}

bool GossipSelect_npc_shivering_moonkin(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (!pCreature)
        return true;

    if (!pPlayer)
        return true;

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
            pCreature->MonsterSay("Hoot!");
            pCreature->MonsterTextEmote(90319); 
            pCreature->SendPlaySpellVisual(SPELL_VISUAL_KIT_DRINK);
            pPlayer->AddItem(51248); // Add Snow Covered Feather
            pPlayer->RemoveItemCurrency(EGGNOG_ITEM, 1); 
            pCreature->AddAura(MOONKIN_FED);

            SpellAuraHolder* holder = pCreature->GetSpellAuraHolder(MOONKIN_FED);
            holder->SetAuraDuration(300000); // 5 minutes
            holder->UpdateAuraDuration();
    }  
    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool GossipHello_npc_tinsel(Player* pPlayer, Creature* pCreature)
{
    pPlayer->PrepareQuestMenu(pCreature->GetGUID());
    pPlayer->SEND_GOSSIP_MENU(90335, pCreature->GetGUID());
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

struct npc_chihkoaAI : public ScriptedPetAI
{
    npc_chihkoaAI(Creature* pCreature) : ScriptedPetAI(pCreature)
    {
    }

    void ReceiveEmote(Player* pPlayer, uint32 uiEmote)
    {
        if (m_creature && m_creature->isAlive()) 
        {
            if (uiEmote == TEXTEMOTE_DANCE)
                m_creature->MonsterSay("Yeee-ha!");

            if (pPlayer->ToPlayer()->GetQuestStatus(50328) == QUEST_STATUS_INCOMPLETE) 
            {
                if (pPlayer->ToPlayer()->GetDrunkValue() > 0)
                {
                    int32 dummy_player{ 70011 };
                    CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(dummy_player);

                    if (cInfo != nullptr)
                        pPlayer->ToPlayer()->KilledMonster(cInfo, ObjectGuid());
                }

            }
        }
    }
};

CreatureAI* GetAI_npc_chihkoa(Creature* pCreature)
{
    return new npc_chihkoaAI(pCreature);
}

void AddSC_winter_veil_vale()
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

    newscript = new Script;
    newscript->Name = "npc_tinsel";
    newscript->pGossipHello = &GossipHello_npc_tinsel;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_chihkoa";
    newscript->GetAI = &GetAI_npc_chihkoa;
    newscript->RegisterSelf();
}