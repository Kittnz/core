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

template <typename Arg>
using tuple_shop_t = std::tuple<std::function
    <void(uint32, uint32, Arg)>, uint32, Arg>;

class ShopMgr
{
    public:
        explicit ShopMgr(Player* owner);
        
        template <typename Arg>
        static void GetBalanceCallback(QueryResult* result, tuple_shop_t<Arg> tuple)
        {
            const auto& [callbackFunc, accountId, arg] = tuple;

            if (!result)
            {
                callbackFunc(accountId, 0, arg);
                return;
            }

            auto fields = result->Fetch();
            uint32 coins = fields[0].GetUInt32();
            callbackFunc(accountId, coins, arg);
            delete result;
        }


        template <typename Arg>
        void GetBalance(std::function<void(uint32, uint32, Arg)> callback, uint32 accountId, Arg arg)
        {
            LoginDatabase.AsyncPQueryOv<
                tuple_shop_t<Arg>>(&GetBalanceCallback<Arg>, std::make_tuple(callback, accountId, arg), "SELECT `coins` FROM `shop_coins` WHERE `id` = %u", accountId);
        }


		std::string BuyItem(uint32 itemID);

    private:
        Player* _owner;
        
};

#endif
