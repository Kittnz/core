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


static robin_hood::unordered_map<uint32, uint32> m_accountBalances;
static robin_hood::unordered_set<uint32> m_accountbalanceUpdates;


constexpr uint32 ShopUpdateTimeout = 8 * IN_MILLISECONDS;
uint32 m_shopDiffUpdateBalances = ShopUpdateTimeout;



void ShopMgr::UpdateBalances(uint32 diff)
{
	if (m_shopDiffUpdateBalances <= diff)
	{
		std::ostringstream ss;
		ss << "SELECT `id`, `coins` FROM `shop_coins` WHERE `id` IN (";
		for (const auto& val : m_accountbalanceUpdates)
		{
			ss << val << ",";
		}
		ss.seekp(-1, ss.cur);
		ss << ")";

		LoginDatabase.AsyncQuery(&ShopMgr::UpdateBalanceCallback, 2, ss.str().c_str());
		m_shopDiffUpdateBalances = ShopUpdateTimeout;
		m_accountbalanceUpdates.clear();
	}
	else
		m_shopDiffUpdateBalances -= diff;
}

void ShopMgr::UpdateBalanceCallback(QueryResult* result, int dummy)
{
	if (!result)
		return;

	do {
		auto fields = result->Fetch();

		uint32 accId = fields[0].GetUInt32();
		uint32 balance = fields[1].GetUInt32();

		m_accountBalances[accId] = balance;
	} while (result->NextRow());

	delete result;
}

void ShopMgr::ScheduleBalanceUpdate()
{
	m_accountbalanceUpdates.insert(_owner->GetSession()->GetAccountId());
}


uint32 ShopMgr::GetBalance()
{
	ScheduleBalanceUpdate();
	auto itr = m_accountBalances.find(_owner->GetSession()->GetAccountId());

	if (itr == m_accountBalances.end())
		return 0;

	return itr->second;
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

	QueryResult* Result = LoginDatabase.PQuery("SELECT `coins` FROM `shop_coins` WHERE `id` = %u", _owner->GetSession()->GetAccountId());

	if (!Result)
		return "unknowndberror";

	Field* fields = Result->Fetch();

	uint32 coins = fields[0].GetUInt32();
	delete Result;

	if (coins > 0)
	{
		int32 newBalance = coins - price;

		if (newBalance >= 0)
		{
			LoginDatabase.BeginTransaction();

			uint32 shopId = sObjectMgr.NextShopLogEntry();

			bool successTransaction =
				LoginDatabase.PExecute("UPDATE `shop_coins` SET `coins` = %i WHERE `id` = %u", newBalance, _owner->GetSession()->GetAccountId()) &&
				LoginDatabase.PExecute("INSERT INTO `shop_logs` (`id`, `time`, `guid`, `account`, `item`, `price`, `refunded`) VALUES (%u, NOW(), %u, %u, %u, %u, 0)", shopId, _owner->GetGUIDLow(), _owner->GetSession()->GetAccountId(), itemID, price);

			bool success = LoginDatabase.CommitTransactionDirect();

			if (!success)
				return "dberrorcantprocess";


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
			return "notenoughtokens";
	}
	else
		return "notenoughtokens";

}