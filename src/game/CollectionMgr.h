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
        void LoadFromDB(QueryResult* result);

        // Helpers
        bool HasTransmog(uint32 newItemId);
        void AddToCollection(uint32 itemId);
        bool ItemIsValidTransmogForDest(uint32 item, ItemPrototype const* destItemProto);

        TransmogContainer GetTransmogs() { return _transmogs; }
        
        std::string GetAvailableTransmogs(uint8 InventorySlotId, uint8 invType, uint32 destItemId);
        
        uint8 ServerSlotToClientInventorySlotId(uint8 InventorySlotId);

    private:
        Player* _owner;
        TransmogContainer _transmogs{};
        
};

#endif
