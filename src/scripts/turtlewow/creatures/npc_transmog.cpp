
#include "scriptPCH.h"
#include "ScriptedAI.h"
#include "../transmog.h"
#include <ctime>

bool GossipHello_TransmogNPC(Player* player, Creature* creature)
{
    if (!sWorld.getConfig(CONFIG_BOOL_TRANSMOG_ENABLED))
        return false;

    player->PlayerTalkClass->ClearMenus();

    if (sTransmog.HasItemsForTransmog(player, EQUIPMENT_SLOT_HEAD))
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, "Head", GOSSIP_SENDER_MAIN, GOSSIP_ID_HEAD);

    if (sTransmog.HasItemsForTransmog(player, EQUIPMENT_SLOT_SHOULDERS))
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, "Shoulders", GOSSIP_SENDER_MAIN, GOSSIP_ID_SHOULDERS);

    if (sTransmog.HasItemsForTransmog(player, EQUIPMENT_SLOT_BACK))
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, "Cloak", GOSSIP_SENDER_MAIN, GOSSIP_ID_CLOAK);

    if (sTransmog.HasItemsForTransmog(player, EQUIPMENT_SLOT_CHEST))
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, "Chest", GOSSIP_SENDER_MAIN, GOSSIP_ID_CHEST);

    if (sTransmog.HasItemsForTransmog(player, EQUIPMENT_SLOT_WRISTS))
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT,"Wrists", GOSSIP_SENDER_MAIN, GOSSIP_ID_WRISTS);

    if (sTransmog.HasItemsForTransmog(player, EQUIPMENT_SLOT_HANDS))
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, "Hands", GOSSIP_SENDER_MAIN, GOSSIP_ID_HANDS);

    if (sTransmog.HasItemsForTransmog(player, EQUIPMENT_SLOT_WAIST))
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, "Waist", GOSSIP_SENDER_MAIN, GOSSIP_ID_WAIST);

    if (sTransmog.HasItemsForTransmog(player, EQUIPMENT_SLOT_LEGS))
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, "Legs", GOSSIP_SENDER_MAIN, GOSSIP_ID_LEGS);

    if (sTransmog.HasItemsForTransmog(player, EQUIPMENT_SLOT_FEET))
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, "Feet", GOSSIP_SENDER_MAIN, GOSSIP_ID_FEET);

    if (Item* it = player->GetItemByPos(INVENTORY_SLOT_BAG_0, EQUIPMENT_SLOT_MAINHAND))
    {
        if (sTransmog.HasItemsForTransmog(player, EQUIPMENT_SLOT_MAINHAND))
            if (it->GetProto()->InventoryType == INVTYPE_WEAPON)
                player->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, "Main Hand", GOSSIP_SENDER_MAIN, GOSSIP_ID_ONEHAND_MAIN);
            else
                player->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, "Main Hand", GOSSIP_SENDER_MAIN, it->GetProto()->InventoryType);
    }

    if (Item* it = player->GetItemByPos(INVENTORY_SLOT_BAG_0, EQUIPMENT_SLOT_OFFHAND))
    {
        if (sTransmog.HasItemsForTransmog(player, EQUIPMENT_SLOT_OFFHAND))
            if (it->GetProto()->InventoryType == INVTYPE_WEAPON)
                player->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, "Off-Hand", GOSSIP_SENDER_MAIN, GOSSIP_ID_ONEHAND_OFF);
            else
                player->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT,"Off-Hand", GOSSIP_SENDER_MAIN, it->GetProto()->InventoryType);
    }

    if (sTransmog.HasItemsForTransmog(player, EQUIPMENT_SLOT_RANGED))
        if (Item* it = player->GetItemByPos(INVENTORY_SLOT_BAG_0, EQUIPMENT_SLOT_RANGED))
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, "Ranged", GOSSIP_SENDER_MAIN, it->GetProto()->InventoryType);

    player->PrepareQuestMenu(creature->GetGUID());

    player->SEND_GOSSIP_MENU(GOSSIP_TEXT_1, creature->GetGUID());
    return true;
}

bool GossipSelect_TransmogNPC(Player* player, Creature* creature, uint32 sender, uint32 action)
{
    if (!sWorld.getConfig(CONFIG_BOOL_TRANSMOG_ENABLED))
        return false;

    uint8 weapon_eqType = 0;
    uint8 slotType = sTransmog.GetEquipmentSlot(action);
    switch (sender)
    {
    case GOSSIP_SENDER_MAIN:
        if (action == GOSSIP_ID_ONEHAND_MAIN)
        {
            action = INVTYPE_WEAPONMAINHAND;
            slotType = EQUIPMENT_SLOT_MAINHAND;
        }
        else if (action == GOSSIP_ID_ONEHAND_OFF)
        {
            action = INVTYPE_WEAPONOFFHAND;
            slotType = EQUIPMENT_SLOT_OFFHAND;
        }

        player->CLOSE_GOSSIP_MENU();
        sTransmog.GetTransmogItems(player, creature, action, slotType);
        break;
    case GOSSIP_SENDER_TRANSMOGRIFY:
        if (action > GOSSIP_INDEX_MAINHAND&& action < GOSSIP_INDEX_OFFHAND)
        {
            weapon_eqType = EQUIPMENT_SLOT_MAINHAND;
            action -= GOSSIP_INDEX_MAINHAND;
        }
        else if (action > GOSSIP_INDEX_OFFHAND)
        {
            weapon_eqType = EQUIPMENT_SLOT_OFFHAND;
            action -= GOSSIP_INDEX_OFFHAND;
        }
        //transmog!
        if (const ItemPrototype* itemTransmogProto = sObjectMgr.GetItemPrototype(action))
        {
            uint32 buyPrice = itemTransmogProto->BuyPrice;

            uint8 iType = sTransmog.GetEquipmentSlot(itemTransmogProto->InventoryType);
            if (weapon_eqType != 0)
                iType = weapon_eqType;

            if (Item* itemToTransmog = player->GetItemByPos(INVENTORY_SLOT_BAG_0, iType))
            {
                Item* itemTransmog = Item::CreateItem(itemTransmogProto->ItemId, 1, nullptr);
                if (itemToTransmog->GetEntry() == itemTransmog->GetEntry())
                {
                    sTransmog.DoTransmog(player, itemToTransmog, itemTransmog);
                    sTransmog.DeleteTransmogItemFromDB(itemToTransmog->GetGUIDLow());
                    return true;
                }

                uint32 fakeEntry = sTransmog.GenerateFakeItemEntry(itemToTransmog->GetProto(), itemTransmogProto);
                if (fakeEntry == 0)
                    return true;

                itemTransmogProto = sTransmog.GetOrCreateFakeItemProto(fakeEntry, itemToTransmog->GetProto(), itemTransmogProto);
                if (!itemTransmogProto)
                    return true;

                itemTransmog = Item::CreateItem(itemTransmogProto->ItemId, 1, nullptr);

                if (sTransmog.CanBuy(player, buyPrice))
                {
                    if (sTransmog.DoTransmog(player, itemToTransmog, itemTransmog))
                        CharacterDatabase.PExecute("REPLACE INTO character_transmog (itemguid, fakeentry, ownerguid, oldentry, newentry) VALUES (%u, %u, %u, %u, %u)",
                            itemToTransmog->GetGUIDLow(), itemTransmog->GetEntry(), player->GetGUIDLow(), itemToTransmog->GetEntry(), action);
                }
                else
                    player->SendBuyError(BUY_ERR_NOT_ENOUGHT_MONEY, creature, 0, 0);
            }
        }
        break;
    }

    return true;
}

void AddSC_custom_creatures()
{
    Script *newscript;

    newscript = new Script;
    newscript->Name = "npc_transmog";
    newscript->pGossipHello = &GossipHello_TransmogNPC;
    newscript->pGossipSelect = &GossipSelect_TransmogNPC;
    newscript->RegisterSelf();
}
