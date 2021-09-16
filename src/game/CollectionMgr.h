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

#ifndef COLLECTION_MGR_H
#define COLLECTION_MGR_H

#include "Common.h"
#include "SharedDefines.h"
#include "Platform/Define.h"

typedef std::vector<uint32> TransmogContainer;

class Player;
class QueryResult;

class CollectionMgr
{
    public:
        explicit CollectionMgr(Player* owner);

        // General
        void SaveToDB();
        void LoadFromDB(QueryResult* result);

        // Helpers
        bool HasTransmog(uint32 itemId) { return std::find(_transmogs.begin(), _transmogs.end(), itemId) != _transmogs.end(); }
        TransmogContainer& GetTransmogs() { return _transmogs; }
        void AddTransmog(uint32 itemId);
        bool CanAddTransmog(uint32 ItemId);
    private:
        Player* _owner;
        TransmogContainer _transmogs{};
};

#endif
