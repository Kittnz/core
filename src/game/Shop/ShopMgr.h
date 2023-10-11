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

#ifndef SHOP_MGR_H
#define SHOP_MGR_H

#include "Common.h"
#include "SharedDefines.h"
#include "Platform/Define.h"
#include "Database/DatabaseEnv.h"

class Player;

using tuple_shop_t = std::tuple<std::function
    <void(uint32 /*accountId*/, int32 /*coins*/, uint32 /*guid*/)>, uint32 /*accountId*/, uint32 /*guid*/>;

class ShopMgr
{
    public:
        explicit ShopMgr(Player* owner);
        
        static void GetBalanceCallback(QueryResult* result, tuple_shop_t tuple)
        {
            const auto& [callbackFunc, accountId, guid] = tuple;

            if (!result)
            {
                callbackFunc(accountId, 0, guid);
                return;
            }

            auto fields = result->Fetch();
            int32 coins = fields[0].GetInt32();
            callbackFunc(accountId, coins, guid);
            delete result;
        }


        void GetBalance(std::function<void(uint32, int32, uint32)> callback, uint32 accountId, uint32 guid)
        {
            LoginDatabase.AsyncPQueryOv<
                tuple_shop_t>(&GetBalanceCallback, std::make_tuple(callback, accountId, guid), "SELECT `coins` FROM `shop_coins` WHERE `id` = %u", accountId);
        }


		std::string BuyItem(uint32 itemID);

    private:
        Player* _owner;
        
};

#endif
