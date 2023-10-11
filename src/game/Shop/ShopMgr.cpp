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
#include "Database/DatabaseEnv.h"
#include "Database/DatabaseImpl.h"
#include "Player.h"
#include "Chat.h"


ShopMgr::ShopMgr(Player* owner) : _owner(owner)
{
}



std::string ShopMgr::BuyItem(uint32 itemID)
{

	auto shopEntry = sObjectMgr.GetShopEntryInfo(itemID);

	if (!shopEntry)
		return "itemnotinshop";


	if (!_owner->IsShopAllowed())
		return "";


	uint32 price = shopEntry->Price;
	
	int32 count = 1;
	ItemPosCountVec dest;
	uint32 noSpaceForCount = 0;
	uint8 msg = _owner->CanStoreNewItem(NULL_BAG, NULL_SLOT, dest, itemID, count, &noSpaceForCount);
	if (msg != EQUIP_ERR_OK)
		count -= noSpaceForCount;

	if (count == 0 || dest.empty())
		return "bagsfulloralreadyhaveitem";

	const std::function<void(uint32, int32, uint32)> balanceCallback = [price, itemID, dest, count](uint32 accountId, int32 coins, uint32 guidLow)
	{
		auto _owner = sObjectAccessor.FindPlayer(guidLow);
		if (!_owner)
			return;

		std::string response = "";
		std::string result = "BuyResult:";
		const std::string prefix = "TW_SHOP";

		if (coins > 0)
		{
			int64 newBalance = coins - price;

			if (newBalance >= 0 && newBalance < INT_MAX)
			{
				uint32 shopId = sObjectMgr.NextShopLogEntry();
				LoginDatabase.BeginTransaction();

				bool successTransaction =
					LoginDatabase.PExecute("UPDATE `shop_coins` SET `coins` = `coins` - %u WHERE `id` = %u", price, _owner->GetSession()->GetAccountId()) &&
					LoginDatabase.PExecute("INSERT INTO `shop_logs` (`id`, `time`, `guid`, `account`, `item`, `price`, `refunded`, `realm_id`) VALUES (%u, NOW(), %u, %u, %u, %u, 0, %u)", shopId, _owner->GetGUIDLow(), _owner->GetSession()->GetAccountId(), itemID, price
						, realmID);

				std::function<void(bool)> updateCallback = [ownerGuid = _owner->GetGUIDLow(), prefix, result](bool queryResult)
				{
					auto owner = sObjectAccessor.FindPlayerNotInWorld(ownerGuid);
					if (owner)
					{
						owner->SetShopAllowed(true);
						std::string response = "ok";
						owner->SendAddonMessage(prefix, result + response);
					}

					if (!queryResult && owner)
						sLog.out(LOG_EXPLOITS, "Player %s bought item but query did not go through.", owner->GetShortDescription().c_str());
				};

				LoginDatabase.CommitTransaction(&updateCallback);

				if (!successTransaction)
				{
					response = "dberrorcantprocess";
					_owner->SendAddonMessage(prefix, result + response);
					return;
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

				_owner->SetShopAllowed(false);
				return;
			}
			else
			{
				response = "notenoughtokens";
				_owner->SendAddonMessage(prefix, result + response);
				return;
			}

		}
		else
		{
			response = "notenoughtokens";
			_owner->SendAddonMessage(prefix, result + response);
			return;
		}
	};


	GetBalance(balanceCallback, _owner->GetSession()->GetAccountId(), _owner->GetGUIDLow());
	return "";
}