#include "scriptPCH.h"
#include "transmog.h"
#include "ObjectMgr.h"
#include "World.h"
#include "GossipDef.h"
#include <ctime>

transmog& transmog::Instance()
{
    static transmog Instance;
    return Instance;
}

bool transmog::IsFakeItem(uint32 entry)
{
    return GetFakeItemProto(entry) != nullptr;

}

void transmog::AddFakeItemProto(uint32 fakeentry, const ItemPrototype* proto)
{
    m_fakeitemproto.insert({ fakeentry, proto });
}

void transmog::DeleteTransmogItemFromDB(uint32 GuidLow)
{
    CharacterDatabase.PExecute("DELETE FROM character_transmog WHERE itemguid = %u", GuidLow);
}

uint32 transmog::GenerateFakeItemEntry(const ItemPrototype* itemToTransmogProto, const ItemPrototype* itemTransmogProto)
{
    const TransmogEntry* te = sObjectMgr.GetTransmogEntry(itemTransmogProto->DisplayInfoID);

    return te ? (((100 + itemToTransmogProto->ItemId) * 1000) + te->display_entry) : 0;
}

const ItemPrototype* transmog::GetOrCreateFakeItemProto(uint32 fakeEntry, const ItemPrototype* itemToTransmog, const ItemPrototype* itemTransmog)
{
    if (!itemToTransmog || !itemTransmog)
        return nullptr;

    if (const ItemPrototype* itemProtoTransmog = GetFakeItemProto(fakeEntry))
        return itemProtoTransmog;
    else
    {
        CreateFakeItemPrototype(GenerateFakeItemEntry(itemToTransmog, itemTransmog), itemToTransmog, itemTransmog);
        return GetFakeItemProto(GenerateFakeItemEntry(itemToTransmog, itemTransmog));
    }
}

void transmog::CreateFakeItemPrototype(uint32 newFakeID, const ItemPrototype* itemProto1, const ItemPrototype* itemProto2)
{
    auto* fakeIProto = new ItemPrototype[1];

    *fakeIProto = *itemProto1;

    fakeIProto->ItemId = newFakeID;
    fakeIProto->DisplayInfoID = itemProto2->DisplayInfoID;

    AddFakeItemProto(newFakeID, fakeIProto);
}

const ItemPrototype* transmog::GetFakeItemProto(uint32 fakeentry)
{
    if (!m_fakeitemproto.empty())
    {
        auto itr = m_fakeitemproto.find(fakeentry);
        if (itr != m_fakeitemproto.end())
            return itr->second;
    }

    return nullptr;
}

uint32 transmog::GetRealItemEntry(uint32 fakeEntry)
{
    uint32 fentry = fakeEntry;
    QueryResult* result = CharacterDatabase.PQuery("SELECT oldentry FROM character_transmog WHERE fakeentry = %u", fakeEntry);
    if (result)
        fentry = (*result)[0].GetUInt32();

    delete result;

    return fentry;
}

uint8 transmog::GetEquipmentSlot(uint32 InventoryType)
{
    switch (InventoryType)
    {
    case INVTYPE_HEAD:
        return EQUIPMENT_SLOT_HEAD;
    case INVTYPE_SHOULDERS:
        return EQUIPMENT_SLOT_SHOULDERS;
    case INVTYPE_CHEST:
    case INVTYPE_ROBE:
        return EQUIPMENT_SLOT_CHEST;
    case INVTYPE_WAIST:
        return EQUIPMENT_SLOT_WAIST;
    case INVTYPE_LEGS:
        return EQUIPMENT_SLOT_LEGS;
    case INVTYPE_FEET:
        return EQUIPMENT_SLOT_FEET;
    case INVTYPE_WRISTS:
        return EQUIPMENT_SLOT_WRISTS;
    case INVTYPE_HANDS:
        return EQUIPMENT_SLOT_HANDS;
    case INVTYPE_CLOAK:
        return EQUIPMENT_SLOT_BACK;
    case INVTYPE_WEAPONMAINHAND:
    case INVTYPE_2HWEAPON:
        return EQUIPMENT_SLOT_MAINHAND;
    case INVTYPE_WEAPONOFFHAND:
    case INVTYPE_SHIELD:
    case INVTYPE_HOLDABLE:
        return EQUIPMENT_SLOT_OFFHAND;
    case INVTYPE_RANGED:
    case INVTYPE_THROWN:
    case INVTYPE_RANGEDRIGHT:
        return EQUIPMENT_SLOT_RANGED;
    default:
        return EQUIPMENT_SLOT_START;
    }
}

std::string transmog::GetTransmogItemColor(uint32 quality)
{
    switch (quality)
    {
    case ITEM_QUALITY_POOR:
        return "|cff0E0F06";
    case ITEM_QUALITY_NORMAL:
        return "|cff0E0F06";
    case ITEM_QUALITY_UNCOMMON:
        return "|cff0E0F06";
    case ITEM_QUALITY_RARE:
        return "|cff0E0F06";
    case ITEM_QUALITY_EPIC:
        return "|cFF0E0F06";
    case ITEM_QUALITY_LEGENDARY:
        return "|cFF0E0F06";
    case ITEM_QUALITY_ARTIFACT:
        return "|cFF0E0F06";
    default:
        return "|cFF0E0F06";
    }
}

std::string transmog::GetTransmogCostStr(Player* player, uint32 copper)
{
    std::string costText = sObjectMgr.GetMangosString(GOSSIP_TEXT_COST, player->GetSession()->GetSessionDbLocaleIndex());

    if (sWorld.getConfig(CONFIG_UINT32_TRANSMOG_REQ_ITEM) > 0)
    {
        //if (const ItemPrototype* proto = sObjectMgr.GetItemPrototype(sWorld.getConfig(CONFIG_UINT32_TRANSMOG_REQ_ITEM)))
        //    return (costText + " " + GetTransmogItemColor(proto->Quality) +
        //        "[" + sObjectMgr.GetItemLocaleName(sWorld.getConfig(CONFIG_UINT32_TRANSMOG_REQ_ITEM),
        //            player->GetSession()->GetSessionDbLocaleIndex()) + "]|r x" + std::to_string(sWorld.getConfig(CONFIG_UINT32_TRANSMOG_REQ_ITEM_COUNT)));
        return " ";
    }
    else if (sWorld.getConfig(CONFIG_FLOAT_TRANSMOG_REQ_MONEY_RATE) != 0.0)
    {
        copper = (copper + 1) * sWorld.getConfig(CONFIG_FLOAT_TRANSMOG_REQ_MONEY_RATE);
        uint32 gold = copper / GOLD;
        uint32 silv = (copper % GOLD) / SILVER;
        uint32 copp = (copper % GOLD) % SILVER;

        std::string costText_G = sObjectMgr.GetMangosString(GOSSIP_TEXT_COST_G, player->GetSession()->GetSessionDbLocaleIndex());
        std::string costText_S = sObjectMgr.GetMangosString(GOSSIP_TEXT_COST_S, player->GetSession()->GetSessionDbLocaleIndex());
        std::string costText_C = sObjectMgr.GetMangosString(GOSSIP_TEXT_COST_C, player->GetSession()->GetSessionDbLocaleIndex());

        if (gold > 0)
            costText += std::to_string(gold) + costText_G;
        if (silv > 0)
            costText += std::to_string(silv) + costText_S;
        if (copp > 0)
            costText += std::to_string(copp) + costText_C;

        return costText;
    }

    return " ";
}

bool transmog::IsRangedWeapon(uint32 Class, uint32 SubClass)
{
    return Class == ITEM_CLASS_WEAPON && (
        SubClass == ITEM_SUBCLASS_WEAPON_BOW ||
        SubClass == ITEM_SUBCLASS_WEAPON_GUN ||
        SubClass == ITEM_SUBCLASS_WEAPON_CROSSBOW);
}

bool transmog::IsTwoHandedWeapon(uint32 Class, uint32 InventoryType)
{
    return Class == ITEM_CLASS_WEAPON && InventoryType == INVTYPE_2HWEAPON;
}

bool transmog::IsFistWeapon(uint32 Class, uint32 SubClass)
{
    return Class == ITEM_CLASS_WEAPON && SubClass == ITEM_SUBCLASS_WEAPON_FIST;
}

bool transmog::IsShield(uint32 Class, uint32 InventoryType)
{
    return Class == ITEM_CLASS_ARMOR && InventoryType == INVTYPE_SHIELD;
}

bool transmog::IsWand(uint32 Class, uint32 SubClass)
{
    return Class == ITEM_CLASS_WEAPON && SubClass == ITEM_SUBCLASS_WEAPON_WAND;
}

bool transmog::IsHoldable(uint32 Class, uint32 InventoryType)
{
    return Class == ITEM_CLASS_ARMOR && InventoryType == INVTYPE_HOLDABLE;
}

bool transmog::CanTransmogrifyItemWithItem(Player* player, Item* pItemToTransmog, Item* pItemTransmog)
{
    if (!pItemToTransmog || !pItemTransmog)
        return false;

    if (pItemToTransmog->IsInTrade() || pItemTransmog->IsInTrade())
        return false;

    uint32 fakeEntry = GenerateFakeItemEntry(pItemToTransmog->GetProto(),
        pItemTransmog->GetProto());

    if (fakeEntry == 0)
        return false;

    if (fakeEntry == pItemToTransmog->GetFakeEntry())
        return false;

    const ItemPrototype* target = pItemToTransmog->GetProto();
    const ItemPrototype* source = pItemTransmog->GetProto();

    if (!target || !source)
        return false;

    if (source->Class != target->Class)
        return false;

    if (source->InventoryType == INVTYPE_BAG ||
        source->InventoryType == INVTYPE_RELIC ||
        source->InventoryType == INVTYPE_FINGER ||
        source->InventoryType == INVTYPE_TRINKET ||
        source->InventoryType == INVTYPE_AMMO ||
        source->InventoryType == INVTYPE_QUIVER)
        return false;

    if (target->InventoryType == INVTYPE_BAG ||
        target->InventoryType == INVTYPE_RELIC ||
        target->InventoryType == INVTYPE_FINGER ||
        target->InventoryType == INVTYPE_TRINKET ||
        target->InventoryType == INVTYPE_AMMO ||
        target->InventoryType == INVTYPE_QUIVER)
        return false;

    if (target->Class != ITEM_CLASS_ARMOR &&
        target->Class != ITEM_CLASS_WEAPON)
        return false;

    if (IsFistWeapon(source->Class, source->SubClass) != IsFistWeapon(target->Class, target->SubClass))
        return false;
    if (IsTwoHandedWeapon(source->Class, source->InventoryType) != IsTwoHandedWeapon(target->Class, target->InventoryType))
        return false;
    else if (IsShield(source->Class, source->InventoryType) != IsShield(target->Class, target->InventoryType))
        return false;
    else if (IsWand(source->Class, source->SubClass) != IsWand(target->Class, target->SubClass))
        return false;
    else if (IsHoldable(source->Class, source->InventoryType) != IsHoldable(target->Class, target->InventoryType))
        return false;
    else if (IsRangedWeapon(source->Class, source->SubClass) != IsRangedWeapon(target->Class, target->SubClass))
        if (source->Class == ITEM_CLASS_WEAPON && source->InventoryType != target->InventoryType)
            return false;

    if (source->Class == ITEM_CLASS_WEAPON && source->SubClass != target->SubClass)
        return false;

    return GetEquipmentSlot(source->InventoryType) == GetEquipmentSlot(target->InventoryType);
}

bool transmog::CanBuy(Player* player, uint32 buyPrice)
{
    if (sWorld.getConfig(CONFIG_UINT32_TRANSMOG_REQ_ITEM) > 0)
    {
        uint32 reqItemId = sWorld.getConfig(CONFIG_UINT32_TRANSMOG_REQ_ITEM);
        if (sObjectMgr.GetItemPrototype(reqItemId))
            if (player->HasItemCount(reqItemId, sWorld.getConfig(CONFIG_UINT32_TRANSMOG_REQ_ITEM_COUNT)))
            {
                player->DestroyItemCount(reqItemId, (int32)sWorld.getConfig(CONFIG_UINT32_TRANSMOG_REQ_ITEM_COUNT), true, false);
                player->SaveInventoryAndGoldToDB();
                return true;
            }
            else
                return false;
    }
    else if (sWorld.getConfig(CONFIG_FLOAT_TRANSMOG_REQ_MONEY_RATE) != 0.0)
    {
        uint32 price = (buyPrice + 1) * sWorld.getConfig(CONFIG_FLOAT_TRANSMOG_REQ_MONEY_RATE);
        if (player->GetMoney() >= price)
        {
            player->ModifyMoney(-((int32)price));
            player->SaveInventoryAndGoldToDB();
            return true;
        }
        else
            return false;
    }

    return true;
}

bool transmog::HasItemsForTransmog(Player* player, uint32 SlotType)
{
    if (Item* equippedItem = player->GetItemByPos(INVENTORY_SLOT_BAG_0, SlotType))
        if (equippedItem->GetFakeEntry() > 0)
            return true;

    Item* tItem = player->GetItemByPos(INVENTORY_SLOT_BAG_0, SlotType);

    for (int i = INVENTORY_SLOT_ITEM_START; i < INVENTORY_SLOT_ITEM_END; ++i)
        if (Item* pItem = player->GetItemByPos(INVENTORY_SLOT_BAG_0, i))
            if (CanTransmogrifyItemWithItem(player, tItem, pItem))
                return true;

    return false;
}

void transmog::GetTransmogItems(Player* player, Creature* creature, uint32 InventoryType, uint32 SlotType, Item* confirmItem)
{
    Item* itemToTransmog = player->GetItemByPos(INVENTORY_SLOT_BAG_0, SlotType);

    if (itemToTransmog && itemToTransmog->GetFakeEntry() > 0)
    {
        uint32 index = 0;
        if (itemToTransmog->GetProto()->InventoryType == INVTYPE_WEAPON && (InventoryType == INVTYPE_WEAPONMAINHAND
            || InventoryType == INVTYPE_WEAPONOFFHAND))
        {
            if (SlotType == EQUIPMENT_SLOT_MAINHAND)
                index = GOSSIP_INDEX_MAINHAND;
            else if (SlotType == EQUIPMENT_SLOT_OFFHAND)
                index = GOSSIP_INDEX_OFFHAND;
        }

        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, ("Reset: " + GetTransmogItemColor(itemToTransmog->GetProto()->Quality) +
            "" + sObjectMgr.GetItemLocaleName(itemToTransmog->GetEntry(), player->GetSession()->GetSessionDbLocaleIndex()) + "|r" /*\n" +
            GetTransmogCostStr(player, tItem->GetProto()->BuyPrice)*/).c_str()
            , GOSSIP_SENDER_TRANSMOGRIFY, index + itemToTransmog->GetEntry());
    }

    for (int i = INVENTORY_SLOT_ITEM_START; i < INVENTORY_SLOT_ITEM_END; ++i)
    {
        if (Item* itemTransmog = player->GetItemByPos(INVENTORY_SLOT_BAG_0, i))
        {
            uint32 index = 0;

            if (itemTransmog->GetProto()->InventoryType == INVTYPE_WEAPON && (InventoryType == INVTYPE_WEAPONMAINHAND
                || InventoryType == INVTYPE_WEAPONOFFHAND))
            {
                if (SlotType == EQUIPMENT_SLOT_MAINHAND)
                    index = GOSSIP_INDEX_MAINHAND;
                else if (SlotType == EQUIPMENT_SLOT_OFFHAND)
                    index = GOSSIP_INDEX_OFFHAND;
            }

            if (CanTransmogrifyItemWithItem(player, itemToTransmog, itemTransmog))
                player->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, (GetTransmogItemColor(itemTransmog->GetProto()->Quality) +
                    "" + sObjectMgr.GetItemLocaleName(itemTransmog->GetEntry(), player->GetSession()->GetSessionDbLocaleIndex()) + "|r" +
                    GetTransmogCostStr(player, itemTransmog->GetProto()->BuyPrice)).c_str()
                    , GOSSIP_SENDER_TRANSMOGRIFY, index + itemTransmog->GetEntry());
        }
    }

    player->SEND_GOSSIP_MENU(GOSSIP_TEXT_2, creature->GetGUID());
}

bool transmog::DoTransmog(Player* player, Item* pItemToTransmog, Item* pItemTransmog)
{
    if (!pItemTransmog || !pItemToTransmog || (!CanTransmogrifyItemWithItem(player, pItemToTransmog, pItemTransmog)))
    {
        player->CLOSE_GOSSIP_MENU();
        return false;
    }

    player->SetUInt32Value(PLAYER_VISIBLE_ITEM_1_0 + (pItemToTransmog->GetSlot() * MAX_VISIBLE_ITEM_OFFSET) + 0,
        pItemTransmog->GetEntry());


    if (pItemToTransmog->GetEntry() == pItemTransmog->GetEntry())
    {
        pItemToTransmog->SetFakeEntry(0);
        transmog::DeleteTransmogItemFromDB(pItemToTransmog->GetGUIDLow());
    }
    else
        pItemToTransmog->SetFakeEntry(pItemTransmog->GetEntry());

    pItemToTransmog->SetBinding(true);
    pItemToTransmog->SetOwnerGuid(player->GetObjectGuid());
    pItemToTransmog->SetState(ITEM_CHANGED, player);

    player->CLOSE_GOSSIP_MENU();
    return true;
}

void transmog::UpdateTransmogItem(Player* player, Item* item)
{
    if (!item || !player)
        return;

    if (item->GetFakeEntry() != 0)
    {
        const ItemPrototype* itemProto = GetFakeItemProto(item->GetFakeEntry());

        if (itemProto)
            player->SetUInt32Value(PLAYER_VISIBLE_ITEM_1_0 + (item->GetSlot() * MAX_VISIBLE_ITEM_OFFSET) + 0,
                item->GetFakeEntry());
    }
}

void transmog::LoadTransmog(Player* player, bool logout /*= false*/)
{
    QueryResult* result = CharacterDatabase.PQuery("SELECT itemguid, fakeentry, newentry FROM character_transmog WHERE ownerguid = %u", player->GetGUIDLow());
    if (result)
    {
        do
        {
            auto itemGUID = MAKE_NEW_GUID((*result)[0].GetUInt32(), 0, HIGHGUID_ITEM);
            uint32 fakeEntry = (*result)[1].GetUInt32();
            uint32 newEntry = (*result)[2].GetUInt32();

            if (Item* itemToTransmog = player->GetItemByGuid(itemGUID))
            {
                if (logout)
                {
                    // hack for properly visible items in login screen 
                    // after deleting cache player will see naked character,
                    // because transmog use fake item entry. Game client must cached this non-exist item first.
                    // this hack sends true item entry on player's logout.
                    for (int i = EQUIPMENT_SLOT_START; i < EQUIPMENT_SLOT_END; ++i)
                    {
                        if (itemToTransmog->GetFakeEntry() > 0 && 
                            !itemToTransmog->IsInBag() && itemToTransmog->GetFakeEntry() == fakeEntry)
                            player->SetUInt32Value(PLAYER_VISIBLE_ITEM_1_0 + (itemToTransmog->GetSlot()
                                * MAX_VISIBLE_ITEM_OFFSET) + 0, newEntry);
                    }
                }
                else if (const ItemPrototype* itemTransmogProto = GetOrCreateFakeItemProto(fakeEntry,
                    itemToTransmog->GetProto(), sObjectMgr.GetItemPrototype(newEntry)))
                    if (itemTransmogProto->ItemId == fakeEntry)
                        if (Item* itemTransmog = Item::CreateItem(itemTransmogProto->ItemId, 1, nullptr))
                            DoTransmog(player, itemToTransmog, itemTransmog);
            }

        } while (result->NextRow());
    }
    delete result;
}


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

void AddSC_transmog()
{
    Script *newscript;

    newscript = new Script;
    newscript->Name = "npc_transmog";
    newscript->pGossipHello = &GossipHello_TransmogNPC;
    newscript->pGossipSelect = &GossipSelect_TransmogNPC;
    newscript->RegisterSelf();
}

