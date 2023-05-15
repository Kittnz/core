#include "DatabaseLogger.hpp"
#include "Database/DatabaseEnv.h"

void DatabaseLogger::LogLoot(const LootLogEntry& log)
{
    //For now just log to DB, we can do some pre-processing here later.
    LogsDatabase.PExecute("INSERT INTO `character_loot` (`receiver_name`, `receiver_guid`, `receiver_account_id`, `receiver_ip`, `source_type`, `source_guid`, `source_entry`, `money`, `item_entry`, `item_count`, `loot_type`) "
        "VALUES('%s', %u, %u, '%s', '%s', %u, %u, %u, %u, %u, '%s')", log.receiverName.c_str(), log.receiverGuid, log.receiverAccountId, log.receiverIp.c_str(), log.sourceType.data(), 
        log.sourceGuid, log.sourceEntry, log.money, log.itemEntry, log.itemCount, log.lootType.data());
}

void DatabaseLogger::LogCharAction(const CharActionLogEntry& log)
{
    if (!_maxCharActionId)
    {
        //have to do it this way because auto increment insert results aren't available for async inserts which is what all of our logs are based on.
        _maxCharActionId = std::make_unique<QueryResult>(LogsDatabase.Query("SELECT IFNULL(MAX(id), 0) FROM character_action"))->Fetch()[0].GetUInt32();
    }

    bool saveRename = log.action == LogCharAction::ActionRename;

    if (saveRename && !log.renameInfo.has_value())
        return;

    ++_maxCharActionId;

    LogsDatabase.PExecute("INSERT INTO `character_action` (`id`, `char_guid`, `account_id`, `action`) VALUES (%u, %u, %u, '%s')", _maxCharActionId, log.charGuid, log.accountId, log.action);

    if (saveRename)
        LogsDatabase.PExecute("INSERT INTO `character_action_renames` (`action_id`, `old_name`, `new_name`) VALUES (%u, '%s', '%s')", _maxCharActionId, log.renameInfo->oldName, log.renameInfo->newName);
}