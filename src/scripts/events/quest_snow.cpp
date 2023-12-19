#include "ScriptPCH.h"


constexpr std::array<uint32, 2> QuestsCompleted = { 1, 2 };



bool GossipHello_Christmas_Entity(Player* player, Creature* creature)
{
    const bool canSeeItems = std::any_of(QuestsCompleted.begin(), QuestsCompleted.end(), [player](uint32 questId)
        {
            return player->GetQuestStatus(questId) == QUEST_STATUS_COMPLETE;
        });

    if (canSeeItems)
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_VENDOR, "Show me the goods.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF);
    player->SEND_GOSSIP_MENU(907, creature->GetGUID());
    return true;
}

bool GossipSelect_Christmas_Entity(Player* player, Creature* creature, uint32 sender, uint32 action)
{
    if (action == GOSSIP_ACTION_INFO_DEF)
    {
        const bool canSeeItems = std::any_of(QuestsCompleted.begin(), QuestsCompleted.end(), [player](uint32 questId)
            {
                return player->GetQuestStatus(questId) == QUEST_STATUS_COMPLETE;
            });

        if (canSeeItems)
        {
            player->canSeeVendorList = true;
            player->PlayerTalkClass->CloseGossip();
            player->GetSession()->SendListInventory(creature->GetGUID());
        }
    }
    return true;
}

void AddSC_Quest_Snow()
{
    Script* pNewScript;

    pNewScript = new Script;
    pNewScript->Name = "npc_snow_vendor";
    pNewScript->pGossipHello = &GossipHello_Christmas_Entity;
    pNewScript->pGossipSelect = &GossipSelect_Christmas_Entity;
    pNewScript->RegisterSelf();
}