/*
 * Copyright (C) 2020-2021 Turtle WoW
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

#include "CollectionMgr.h"
#include "World.h"
#include "ObjectMgr.h"
#include "ObjectGuid.h"
#include "Creature.h"
#include "Object.h"
#include "PoolManager.h"
#include "Language.h"
#include "Log.h"
#include "MapManager.h"
#include "BattleGroundMgr.h"
#include "MassMailMgr.h"
#include "SpellMgr.h"
#include "Policies/SingletonImp.h"
#include "Player.h"
#include "Chat.h"
#include "ItemPrototype.h"

CollectionMgr::CollectionMgr(Player* owner) : _owner(owner)
{
}

void CollectionMgr::LoadFromDB(QueryResult* result)
{
    _transmogs.clear();

    if (!result)
        return;

    do
    {

        Field* fields = result->Fetch();
        uint32 itemId = fields[0].GetUInt32();

        _transmogs.push_back(itemId);

    } while (result->NextRow());
}


bool CollectionMgr::HasTransmog(uint32 newItemId)
{

    ItemPrototype const* newItemProto = ObjectMgr::GetItemPrototype(newItemId);

    if (!newItemProto)
        return true;

    for (auto& collectedItemId : _transmogs)
    {
        ItemPrototype const* collectedItemProto = ObjectMgr::GetItemPrototype(collectedItemId);
        if (!collectedItemProto)
            continue;
        if (newItemProto->DisplayInfoID == collectedItemProto->DisplayInfoID)
            return true;
    }

    return false;
}

void CollectionMgr::AddToCollection(uint32 itemId)
{
    if (HasTransmog(itemId))
        return;

    ItemPrototype const* proto = ObjectMgr::GetItemPrototype(itemId);
    if (!proto)
        return;
    if (!sObjectMgr.IsItemTypeTransmoggable(proto->InventoryType))
        return;
    if (!sObjectMgr.IsItemSubClassTransmoggable(proto->SubClass))
        return;

    _transmogs.push_back(itemId);

    static SqlStatementID insTransmog;
    SqlStatement stmtIns = CharacterDatabase.CreateStatement(insTransmog, "INSERT INTO character_transmogs (guid,itemId) VALUES (?, ?)");

    stmtIns.PExecute(_owner->GetGUIDLow(), itemId);

	_owner->SendAddonMessage("TW_TRANSMOG","NewTransmog:" + std::to_string(itemId));

}

std::string CollectionMgr::GetAvailableTransmogs(uint8 InventorySlotId, uint8 invType, uint32 destItemId)
{

    ItemPrototype const* destItemProto = ObjectMgr::GetItemPrototype(destItemId);
    if (!destItemProto)
        return "0:0";

    std::string tmogs;
    for (auto& item : _transmogs)
        if (ItemPrototype const* proto = ObjectMgr::GetItemPrototype(item))
        {
            if (proto->Class == ITEM_CLASS_WEAPON && destItemProto->Class == ITEM_CLASS_WEAPON) {

                if (destItemProto->SubClass == ITEM_SUBCLASS_WEAPON_FIST && proto->SubClass == ITEM_SUBCLASS_WEAPON_FIST)
                {
                    if (destItemProto->InventoryType == INVTYPE_WEAPON || destItemProto->InventoryType == INVTYPE_WEAPONMAINHAND)
                    {
                        if (proto->InventoryType == INVTYPE_WEAPON || proto->InventoryType == INVTYPE_WEAPONMAINHAND)
                        {
                            tmogs += std::to_string(item) + ":";
                            continue;
                        }
                    }
                    if (destItemProto->InventoryType == INVTYPE_WEAPONOFFHAND && proto->InventoryType == INVTYPE_WEAPONOFFHAND)
                    {
                        tmogs += std::to_string(item) + ":";
                        continue;
                    }
                }

                if (destItemProto->InventoryType == INVTYPE_RANGED || destItemProto->InventoryType == INVTYPE_RANGEDRIGHT)
                {
                    if (destItemProto->InventoryType == proto->InventoryType && destItemProto->SubClass == proto->SubClass)
                    {
                        tmogs += std::to_string(item) + ":";
                        continue;
                    }
                }
                if (destItemProto->SubClass == ITEM_SUBCLASS_WEAPON_DAGGER)
                {
                    if (proto->SubClass == ITEM_SUBCLASS_WEAPON_DAGGER)
                    {
                        tmogs += std::to_string(item) + ":";
                        continue;
                    }
                }
                if (destItemProto->SubClass == ITEM_SUBCLASS_WEAPON_STAFF)
                {
                    if (proto->SubClass == ITEM_SUBCLASS_WEAPON_STAFF)
                    {
                        tmogs += std::to_string(item) + ":";
                        continue;
                    }
                }
                if (destItemProto->SubClass == ITEM_SUBCLASS_WEAPON_POLEARM)
                {
                    if (proto->SubClass == ITEM_SUBCLASS_WEAPON_POLEARM)
                    {
                        tmogs += std::to_string(item) + ":";
                        continue;
                    }
                }
                if (destItemProto->SubClass == ITEM_SUBCLASS_WEAPON_AXE || destItemProto->SubClass == ITEM_SUBCLASS_WEAPON_MACE || destItemProto->SubClass == ITEM_SUBCLASS_WEAPON_SWORD)
                {
                    if (proto->SubClass == ITEM_SUBCLASS_WEAPON_AXE || proto->SubClass == ITEM_SUBCLASS_WEAPON_MACE || proto->SubClass == ITEM_SUBCLASS_WEAPON_SWORD)
                    {
                        tmogs += std::to_string(item) + ":";
                        continue;
                    }
                }
                if (destItemProto->SubClass == ITEM_SUBCLASS_WEAPON_AXE2 || destItemProto->SubClass == ITEM_SUBCLASS_WEAPON_MACE2 || destItemProto->SubClass == ITEM_SUBCLASS_WEAPON_SWORD2)
                {

                    if (proto->SubClass == ITEM_SUBCLASS_WEAPON_STAFF || proto->SubClass == ITEM_SUBCLASS_WEAPON_POLEARM)
                        continue;

                    if (proto->SubClass == ITEM_SUBCLASS_WEAPON_AXE2 || proto->SubClass == ITEM_SUBCLASS_WEAPON_MACE2 || proto->SubClass == ITEM_SUBCLASS_WEAPON_SWORD2)
                    {
                        tmogs += std::to_string(item) + ":";
                        continue;
                    }
                }
            }
            else
            {
                if (destItemProto->InventoryType == INVTYPE_CHEST || destItemProto->InventoryType == INVTYPE_ROBE)
                {
                    if (proto->InventoryType == INVTYPE_CHEST || proto->InventoryType == INVTYPE_ROBE)
                        tmogs += std::to_string(item) + ":";
                }
                else
                {
                    if (proto->InventoryType == invType)
                        tmogs += std::to_string(item) + ":";
                }
            }
        }

    if (tmogs.empty())
        tmogs += "0";
    else
        tmogs.pop_back();

    uint32 numPossibleTransmogs;

    if (destItemProto->Class == ITEM_CLASS_ARMOR && destItemProto->SubClass != ITEM_SUBCLASS_ARMOR_SHIELD)
        numPossibleTransmogs = sObjectMgr.GetPossibleTransmogs(_owner->GetClass(), destItemProto->Class, 1, destItemProto->InventoryType);
    else
        numPossibleTransmogs = sObjectMgr.GetPossibleTransmogs(_owner->GetClass(), destItemProto->Class, destItemProto->SubClass, destItemProto->InventoryType);

    return std::to_string(numPossibleTransmogs) + ":" + tmogs;
}

uint8 CollectionMgr::ServerSlotToClientInventorySlotId(uint8 InventorySlotId)
{
    switch (InventorySlotId)
    {
        case EQUIPMENT_SLOT_HEAD:// = 0,
            return 1;
        case EQUIPMENT_SLOT_SHOULDERS:// = 2,
            return 3;
        case EQUIPMENT_SLOT_CHEST:// = 4,
            return 5;
        case EQUIPMENT_SLOT_WAIST:// = 5,
            return 6;
        case EQUIPMENT_SLOT_LEGS:// = 6,
            return 7;
        case EQUIPMENT_SLOT_FEET:// = 7,
            return 8;
        case EQUIPMENT_SLOT_WRISTS:// = 8,
            return 9;
        case EQUIPMENT_SLOT_HANDS:// = 9,
            return 10;
        case EQUIPMENT_SLOT_BACK:// = 14,
            return 15;
        case EQUIPMENT_SLOT_MAINHAND:// = 15,
            return 16;
        case EQUIPMENT_SLOT_OFFHAND:// = 16,
            return 17;
        case EQUIPMENT_SLOT_RANGED:// = 17,
            return 18;
    }
    return 0;
}