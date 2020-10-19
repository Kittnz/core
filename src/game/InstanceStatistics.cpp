/*
* Copyright (C) 2017 Elysium Project <https://github.com/elysium-project>
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

#include "InstanceStatistics.h"
#include "Policies/Singleton.h"
#include "Database/DatabaseEnv.h"
#include "Policies/SingletonImp.h"
#include "Player.h"
#include "Creature.h"
#include "SpellEntry.h"

INSTANTIATE_SINGLETON_1(InstanceStatisticsMgr);

void InstanceStatisticsMgr::LoadFromDB()
{
    m_instanceWipes.clear();
    std::unique_ptr<QueryResult> result(LogsDatabase.Query("SELECT `mapId`, `creatureEntry`, `count` FROM `instance_wipes`"));
    if (result)
    {
        do
        {
            Field* fields = result->Fetch();

            uint32 mapId = fields[0].GetUInt32();
            uint32 creatureEntry = fields[1].GetUInt32();
            uint32 killCount = fields[2].GetUInt32();

            m_instanceWipes[std::make_pair(mapId, creatureEntry)] = InstanceWipes{ mapId,creatureEntry,killCount };
        } while (result->NextRow());
    }

    m_instanceCreatureKills.clear();
    result.reset(LogsDatabase.Query("SELECT `mapId`, `creatureEntry`, `spellEntry`, `count` FROM `instance_creature_kills`"));
    if (result)
    {
        do
        {
            Field* fields = result->Fetch();

            uint32 mapId = fields[0].GetUInt32();
            uint32 creatureEntry = fields[1].GetUInt32();
            uint32 spellEntry = fields[2].GetUInt32();
            uint32 killCount = fields[3].GetUInt32();
            auto it = m_instanceCreatureKills.find(std::make_pair(mapId, creatureEntry));
            if (it == m_instanceCreatureKills.end())
            {
                InstanceCreatureKlls obj;
                obj.mapId = mapId;
                obj.creatureEntry = creatureEntry;
                obj.killsBySpells[spellEntry] = killCount;
                m_instanceCreatureKills.insert(std::make_pair(std::make_pair(mapId, creatureEntry), std::move(obj)));
            }
            else
            {
                it->second.killsBySpells[spellEntry] = killCount;
            }
        } while (result->NextRow());
    }

    m_instanceCustomCounters.clear();
    result.reset(LogsDatabase.Query("SELECT `index`, `count` FROM `instance_custom_counters`"));
    if (result)
    {
        do
        {
            Field* fields = result->Fetch();

            uint32 index = fields[0].GetUInt32();
            uint32 count = fields[1].GetUInt32();
            m_instanceCustomCounters[index] = count;
            ++count;
        } while (result->NextRow());
    }
}

void InstanceStatisticsMgr::IncrementWipeCounter(uint32 mapId, uint32 creatureEntry)
{
    uint32 count;
    m_wipesMutex.acquire();
    auto it = m_instanceWipes.find(std::make_pair(mapId, creatureEntry));
    if (it == m_instanceWipes.end())
    {
        count = 1;
        InstanceWipes obj{ mapId,creatureEntry, count };
        m_instanceWipes[std::make_pair(mapId, creatureEntry)] = obj;
    }
    else {
        it->second.count++;
        count = it->second.count;
    }
    m_wipesMutex.release();

    Save(mapId, creatureEntry, count);
}

void InstanceStatisticsMgr::IncrementKillCounter(Creature* pKiller, Player* pVictim, SpellEntry const* spellProto)
{
    if (!pKiller || !pVictim)
        return;
    if (!pKiller->GetMap())
        return;
    uint32 mapId = pKiller->GetMap()->GetId();
    uint32 creatureEntry = pKiller->GetEntry();
    uint32 spellId = 0;
    if (spellProto)
        spellId = spellProto->Id;
    uint32 count = 0;

    m_creatureKillsMutex.acquire();
    auto it = m_instanceCreatureKills.find(std::make_pair(mapId, creatureEntry));
    if (it == m_instanceCreatureKills.end())
    {
        count = 1;
        InstanceCreatureKlls obj;
        obj.mapId = mapId;
        obj.creatureEntry = creatureEntry;
        obj.killsBySpells[spellId] = count;
        m_instanceCreatureKills.insert(std::make_pair(std::make_pair(mapId, creatureEntry), std::move(obj)));
    }
    else {
        auto it2 = it->second.killsBySpells.find(spellId);
        if (it2 == it->second.killsBySpells.end())
        {
            count = 1;
            it->second.killsBySpells[spellId] = count;
        }
        else
        {
            count = ++it2->second;
        }
    }
    m_creatureKillsMutex.release();

    Save(mapId,creatureEntry,spellId,count);
}

void InstanceStatisticsMgr::IncrementCustomCounter(eInstanceCustomCounter index, bool save)
{
    m_customCountersMutex.acquire();
    uint32 count;
    auto it = m_instanceCustomCounters.find(index);
    if (it == m_instanceCustomCounters.end())
    {
        count = 1;
        m_instanceCustomCounters[index] = count;
    }
    else
    {
        it->second++;
        count = it->second;
    }
    m_customCountersMutex.release();

    if (save)
    {
        LogsDatabase.BeginTransaction();
        LogsDatabase.PExecute("DELETE FROM `instance_custom_counters` WHERE `index` = %u", index);
        LogsDatabase.PExecute("INSERT INTO `instance_custom_counters` (`index`, `count`) VALUES (%u, %u)", index, count);
        LogsDatabase.CommitTransaction();
    }
}

void InstanceStatisticsMgr::Save(uint32 mapId, uint32 creatureEntry, uint32 spellId, uint32 count)
{
    LogsDatabase.BeginTransaction();
    LogsDatabase.PExecute("DELETE FROM `instance_creature_kills` WHERE `mapId` = %u and `creatureEntry` = %u and `spellEntry` = %u",
        mapId, creatureEntry, spellId);
    LogsDatabase.PExecute("INSERT INTO `instance_creature_kills` (`mapId`, `creatureEntry`, `spellEntry`, `count`) VALUES (%u, %u, %u, %u)",
        mapId, creatureEntry, spellId, count);
    LogsDatabase.CommitTransaction();
}

void InstanceStatisticsMgr::Save(uint32 mapId, uint32 creatureEntry, uint32 count)
{
    LogsDatabase.BeginTransaction();
    LogsDatabase.PExecute("DELETE FROM `instance_wipes` WHERE `mapId` = %u and `creatureEntry` = %u",  mapId, creatureEntry);
    LogsDatabase.PExecute("INSERT INTO `instance_wipes` (`mapId`, `creatureEntry`, `count`) VALUES (%u, %u, %u)", mapId, creatureEntry, count);
    LogsDatabase.CommitTransaction();
}
