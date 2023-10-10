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

#include "ShopMgr.h"
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

ShopMgr::ShopMgr(Player* owner) : _owner(owner)
{
}

uint32 ShopMgr::GetBalance()
{
	uint32 balance = 0;
	QueryResult* coins_result = LoginDatabase.PQuery("SELECT `coins` FROM `shop_coins` WHERE `id` = '%u'", _owner->GetSession()->GetAccountId());

	if (!coins_result)
	{
		LoginDatabase.PExecute("INSERT INTO shop_coins (id, coins) VALUES ('%u', 0)", _owner->GetSession()->GetAccountId());
		return balance;
	}

	if (coins_result)
	{
		Field* fields = coins_result->Fetch();
		balance = fields[0].GetUInt32();
		delete coins_result;
	}

	return balance;
}

std::string ShopMgr::BuyItem(uint32 itemID)
{

	auto shopEntry = sObjectMgr.GetShopEntryInfo(itemID);

	if (!shopEntry)
		return "itemnotinshop";

	uint32 price = shopEntry->Price;
	
	int32 count = 1;
	ItemPosCountVec dest;
	uint32 noSpaceForCount = 0;
	uint8 msg = _owner->CanStoreNewItem(NULL_BAG, NULL_SLOT, dest, itemID, count, &noSpaceForCount);
	if (msg != EQUIP_ERR_OK)
		count -= noSpaceForCount;

	if (count == 0 || dest.empty())
		return "bagsfulloralreadyhaveitem";

	uint32 balance = GetBalance();
	if (balance < price)
		return "notenoughtokens";


	uint32 newBalance = balance - price;

	if (newBalance >= 0)
	{
		LoginDatabase.BeginTransaction();

		if (!LoginDatabase.PExecute("UPDATE `shop_coins` SET `coins` = %u WHERE `id` = %u", newBalance, _owner->GetSession()->GetAccountId()))
		{
			LoginDatabase.RollbackTransaction();
			return "dberrorcantprocess";
		}

		uint32 shopId = sObjectMgr.NextShopLogEntry();
		if (!LoginDatabase.PExecute("INSERT INTO `shop_logs` (`id`, `time`, `guid`, `account`, `item`, `price`, `refunded`) VALUES (%u, NOW(), %u, %u, %u, %u, 0)", shopId, _owner->GetGUIDLow(), _owner->GetSession()->GetAccountId(), itemID, price))
		{
			LoginDatabase.RollbackTransaction();
			return "dberrorcantprocess";
		}

		if (!LoginDatabase.CommitTransactionDirect())
		{
			return "dberrorcantprocess";
		}

		auto entry = new ShopLogEntry{
			shopId,
			GetCurrentTimeString(),
			_owner->GetSession()->GetAccountId(),
			_owner->GetGUIDLow(),
			itemID,
			price,
			false,
			(uint32)time(nullptr)
		};
		sObjectMgr.GetShopLogEntries(_owner->GetSession()->GetAccountId()).push_back(entry);
		sObjectMgr.AddShopLogEntry(shopId, entry);

		Item* item = _owner->StoreNewItem(dest, itemID, true, Item::GenerateItemRandomPropertyId(itemID));
		_owner->SendNewItem(item, count, false, true);

		return "ok";
	}
	else 
	{
		LoginDatabase.RollbackTransaction();
		return "notenoughtokens";
	}
}