#include "DatabaseLogger.hpp"
#include "Database/DatabaseEnv.h"

void DatabaseLogger::LogLoot(const LootLogEntry& log)
{
    //For now just log to DB, we can do some pre-processing here later.
    LogsDatabase.PExecute("INSERT INTO `character_loot` (`receiver_name`, `receiver_guid`, `receiver_account_id`, `receiver_ip`, `source_type`, `source_guid`, `source_entry`, `money`, `item_entry`, `item_count`, `loot_type`) "
        "VALUES('%s', %u, %u, '%s', '%s', %u, %u, %u, %u, %u, '%s')", log.receiverName.c_str(), log.receiverGuid, log.receiverAccountId, log.receiverIp.c_str(), log.sourceType.data(), 
        log.sourceGuid, log.sourceEntry, log.money, log.itemEntry, log.itemCount, log.lootType.data());
}