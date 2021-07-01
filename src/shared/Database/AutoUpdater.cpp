#include "AutoUpdater.hpp"
#include "DatabaseEnv.h"
#include "Config/Config.h"
#include "Auth/Sha1.h"
#include "Util.h"

#include <sstream>
#include <openssl/sha.h>
#include <fstream>
#include <memory>
#include <iterator>
#include <istream>
#include <locale>

using namespace std::filesystem;

namespace DBUpdater
{
    static constexpr const char* UpdateExtension = ".sql";
    static constexpr const char* MigrationTable = "migrations";

    std::unordered_map<std::string, FileMigration> AutoUpdater::LoadFileMigrations(const directory_entry& targetPath) const
    {
        if (!targetPath.exists())
        {
            sLog.outInfo("[DB Auto-Updater] Path doesn\'t contain %s updates, creating..", targetPath.path().filename().string().c_str());
            create_directory(targetPath);
            return {}; //can't contain any updates if it didn't exist so no reason to check.
        }

        std::vector<directory_entry> possibleUpdates;

        for (const auto& fileEntry : directory_iterator{ targetPath })
        {
            if (fileEntry.is_regular_file() && fileEntry.path().extension() == UpdateExtension) // possible update, add.
                possibleUpdates.push_back(fileEntry);
        }

        sLog.outInfo("[DB Auto-Updater] Found %u possible migration%s for %s.", possibleUpdates.size(), possibleUpdates.size() != 1 ? "s" : "",
            targetPath.path().filename().string().c_str());


        std::unordered_map<std::string, FileMigration> fileMigrations;

        for (const auto& update : possibleUpdates)
        {
            FileMigration migration;


            if (CalculateFileHash(update.path().string(), migration.Hash, migration.FileData))
            {
                migration.ModifiedAt = update.last_write_time();
                migration.Name = update.path().stem().string();

                auto hash = migration.Hash;

                fileMigrations.insert({ hash, std::move(migration) });
            }
        }
        return fileMigrations;
    }

    std::unordered_map<std::string, Migration> AutoUpdater::LoadDatabaseMigrations(DatabaseType* targetDatabase) const
    {
        targetDatabase->DirectPExecute("CREATE TABLE IF NOT EXISTS `%s` (\
            `Id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,\
            `Name` VARCHAR(255) NOT NULL DEFAULT \'0\' COLLATE \'utf8_general_ci\',\
            `Hash` VARCHAR(128) NOT NULL DEFAULT \'0\' COLLATE \'utf8_general_ci\',\
            `AppliedAt` DATETIME NOT NULL,\
            PRIMARY KEY(`Id`) USING BTREE\
            )\
            COLLATE = \'utf8_general_ci\'\
            ENGINE = InnoDB\
            ;", MigrationTable);


        std::unordered_map<std::string, Migration> dbMigrations;

        {
            std::unique_ptr<QueryResult> tableResult = std::unique_ptr<QueryResult>{ targetDatabase->PQuery("SELECT `Name`, `Hash` FROM `%s`", MigrationTable) };

            if (!tableResult)
            {
                sLog.outInfo("[DB Auto-Updater] No DB migrations found, table %s is empty.", MigrationTable);
                return {};
            }


            do {
                auto fields = tableResult->Fetch();
                auto hash = fields[1].GetCppString();

                dbMigrations.insert({ hash, Migration{ fields[0].GetCppString(), hash } });
            } while (tableResult->NextRow());
        }

        return dbMigrations;
    }

    void AutoUpdater::ProcessTargetUpdates(const fs::directory_entry& targetPath, DatabaseType* targetDatabase) const
    {
        auto fileMigrations = LoadFileMigrations(targetPath);
        auto dbMigrations = LoadDatabaseMigrations(targetDatabase);

        std::vector<FileMigration> updates;

        for (auto& fileMigrationPair : fileMigrations)
        {
            const auto& hash = fileMigrationPair.first;
            const auto& migration = fileMigrationPair.second;

            if (dbMigrations.find(hash) != dbMigrations.end()) // already applied, skip
            {
                if (migration.Name != dbMigrations[hash].Name)
                    sLog.outInfo("[DB Auto-Updater] Migration with hash %s was migrated with name %s but now has name %s.", migration.Hash.c_str(), 
                        dbMigrations[hash].Name.c_str(), migration.Name.c_str());

                dbMigrations.erase(hash);
                continue;
            }

            updates.push_back(std::move(fileMigrationPair.second));
            dbMigrations.erase(hash);
        }

        for (const auto& dbMigration : dbMigrations)
        {
            sLog.outInfo("[DB Auto-Updater] Migration %s with hash %s exists in DB but not as file, old migration?", dbMigration.second.Name.c_str(), dbMigration.first.c_str());
        }

        //sort by modified-at ascending for oldest -> newest updates
        std::sort(updates.begin(), updates.end(), [](const FileMigration& e1, const FileMigration& e2)
            {
                return e1.ModifiedAt < e2.ModifiedAt;
            });

        for (const auto& update : updates)
        {
            if (!ExecuteUpdate(update, targetDatabase))
            {
                sLog.outError("[DB Auto-Updater] Migration %s with hash %s failed to apply.", update.Name.c_str(), update.Hash.c_str());
           }
        }
    }

    bool AutoUpdater::ExecuteUpdate(const FileMigration& migration, DatabaseType* targetDatabase) const
    {
        sLog.outInfo("[DB Auto-Updater] Attempting to execute update %s, hash %s.", migration.Name.c_str(), migration.Hash.c_str());
        std::string sqlString{ migration.FileData.begin(), migration.FileData.end() };

        if (!targetDatabase->BeginTransaction())
            return false;

        targetDatabase->Execute(sqlString.c_str(), true);

        targetDatabase->DirectPExecute("INSERT INTO `%s` (`Name`, `Hash`, `AppliedAt`) VALUES (\'%s\', \'%s\', NOW());", MigrationTable, migration.Name.c_str(), migration.Hash.c_str());

        return targetDatabase->CommitTransactionDirect();
    }

    bool AutoUpdater::CalculateFileHash(const std::string& fileName, std::string& hexResult, std::optional<std::reference_wrapper<std::vector<uint8>>> fileData) const
    {
        std::basic_ifstream<char, std::char_traits<char>> fileStream{ fileName, std::ios::binary };

        //char_traits isn't specialized for uint8_t for some reason so get_faucet std::locale won't work if we don't imbue first.
       // fileStream.imbue(std::locale{ fileStream.getloc(), new std::codecvt<uint8, char, std::mbstate_t> });

        if (!fileStream)
        {
            sLog.outError("[DB Auto-Updater] Can\'t open migration file %s.", fileName.c_str());
            return false;
        }
        
        std::vector<char> binCharData{ std::istreambuf_iterator<char>(fileStream), std::istreambuf_iterator<char>() };
        std::vector<uint8> binData{ binCharData.begin(), binCharData.end() };

        Sha1Hash hash;
        hash.Initialize();
        if (binData.size() > 0)
            hash.UpdateData(&binData[0], binData.size());
        hash.Finalize();

        std::vector<uint8> digest{ hash.GetDigest(), hash.GetDigest() + hash.GetLength() };

        hexResult = ByteArrayToHexStr(&digest[0], digest.size());

        if (fileData.has_value())
            fileData.value().get() = std::move(binData);

        return true;
    }

    void AutoUpdater::ProcessUpdates()
    {
        if (!sConfig.GetBoolDefault("Database.AutoUpdate.Enabled", true))
        {
            sLog.outInfo("[DB Auto-Updater] Disabled.");
            return;
        }

        auto pathString = sConfig.GetStringDefault("Database.AutoUpdate.Path", "");
        auto authUpdateFolder = sConfig.GetStringDefault("Database.AutoUpdate.AuthUpdateName", "Logon");
        auto charUpdateFolder = sConfig.GetStringDefault("Database.AutoUpdate.CharUpdateName", "Char");
        auto worldUpdateFolder = sConfig.GetStringDefault("Database.AutoUpdate.WorldUpdateName", "World");
        path folderPath{ pathString };


        directory_entry logonUpdatePath{ folderPath / authUpdateFolder };
        directory_entry charUpdatePath{ folderPath / charUpdateFolder };
        directory_entry worldUpdatePath{ folderPath / worldUpdateFolder };

        ProcessTargetUpdates(logonUpdatePath, &LoginDatabase);
        ProcessTargetUpdates(charUpdatePath, &CharacterDatabase);
        ProcessTargetUpdates(worldUpdatePath, &WorldDatabase);

    }
}