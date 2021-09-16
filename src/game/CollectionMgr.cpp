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

CollectionMgr::CollectionMgr(Player* owner) : _owner(owner)
{
}

void CollectionMgr::SaveToDB()
{
    static SqlStatementID insTransmog;
    SqlStatement stmtIns = CharacterDatabase.CreateStatement(insTransmog, "INSERT INTO character_transmogs (guid,itemId) VALUES (?, ?)");

    for (auto const& itr : _transmogs)
        stmtIns.PExecute(_owner->GetGUIDLow(), itr);
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

        _transmogs.push_back(fields[0].GetUInt32());
    } while (result->NextRow());
}

void CollectionMgr::AddTransmog(uint32 itemId)
{
    _transmogs.push_back(itemId);
}

bool CollectionMgr::CanAddTransmog(uint32 itemId)
{
    if (HasTransmog(itemId))
        return false;

    // TODO
}