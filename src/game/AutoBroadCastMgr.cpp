#include "Database/DatabaseEnv.h"
#include "World.h"
#include "Util.h"
#include "Log.h"
#include "ProgressBar.h"
#include "Policies/SingletonImp.h"

#include "AutoBroadCastMgr.h"

INSTANTIATE_SINGLETON_1(AutoBroadCastMgr);

AutoBroadCastMgr::AutoBroadCastMgr()
{
    _constInterval = sWorld.getConfig(CONFIG_UINT32_AUTOBROADCAST_INTERVAL);
    _current = 0;
}

AutoBroadCastMgr::~AutoBroadCastMgr()
{
    entries.clear();
}

void AutoBroadCastMgr::load()
{
    entries.clear();
    std::unique_ptr<QueryResult> result(WorldDatabase.Query("SELECT `string_id` FROM `autobroadcast`"));

    if (!result)
    {
        BarGoLink bar(1);
        bar.step();

        return;
    }

    uint32 count = 0;
    BarGoLink bar(result->GetRowCount());

    Field *fields;

    do
    {
        bar.step();
        AutoBroadCastEntry e;
        fields = result->Fetch();

        e.stringId = fields[0].GetInt32();

        entries.push_back(e);
        ++count;
    }
    while (result->NextRow());

    
}

void AutoBroadCastMgr::update(uint32 diff)
{
    if (entries.empty())
        return;

    _current += diff;

    if (_current >= _constInterval)
    {
        AutoBroadCastEntry entry = SelectRandomContainerElement(entries);
        sWorld.SendWorldText(entry.stringId);
        _current = 0;
    }
}
