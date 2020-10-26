#include "DailyQuestHandler.h"
#include "Database/DatabaseEnv.h"
#include "World.h"
#include "QuestDef.h"
#include "WorldSession.h"
#include "Player.h"

#include <memory>
#include <sstream>

void DailyQuestHandler::LoadFromDB()
{
    {
        auto resetTimeResult = std::unique_ptr<QueryResult>(WorldDatabase.Query("SELECT `nextResetTime` FROM `daily_quest_timer` LIMIT 1"));

        if (resetTimeResult)
        {
            auto fields = resetTimeResult->Fetch();
            if (fields)
                m_nextResetTime = fields[0].GetUInt64();
        }
    }

    //load quests with daily quest status flag

    {
        auto questResult = std::unique_ptr<QueryResult>(
            WorldDatabase.PQuery(
                "SELECT `entry` FROM `quest_template` t1 WHERE `patch`= (SELECT max(`patch`) FROM `quest_template` t2 WHERE t1.`entry`=t2.`entry` && `patch` <= %u)"
                " AND (`SpecialFlags` & %u) = %u", sWorld.GetWowPatch(), QUEST_SPECIAL_FLAG_DAILY, QUEST_SPECIAL_FLAG_DAILY));

        if (questResult)
        {
            do {
                m_questIds.push_back(questResult->Fetch()[0].GetUInt32());
            } while (questResult->NextRow());
        }
    }

}

void DailyQuestHandler::Update(uint32 diff)
{
    if (m_shouldCheckUpdate > diff)
    {
        m_shouldCheckUpdate -= diff;
        return;
    }

    m_shouldCheckUpdate = CheckUpdateTimer;


    auto timeUnix = time(nullptr);

    if (timeUnix >= m_nextResetTime) // update now
    {
        const auto& sessions = sWorld.GetAllSessions();

        for (auto& sessionPair : sessions)
        {
            auto session = sessionPair.second;

            auto player = session->GetPlayer();

            if (!player || !player->IsInWorld())
                continue;

            for (uint32 questId : m_questIds)
            {
                if (player->GetQuestStatus(questId) == QUEST_STATUS_COMPLETE)
                {
                    //remove quest
                    player->RemoveQuest(questId);

                    // set quest status to not started (will updated in DB at next save)
                    player->SetQuestStatus(questId, QUEST_STATUS_NONE);

                    // reset rewarded for restart repeatable quest
                    player->getQuestStatusMap()[questId].m_rewarded = false;
                }
            }
        }

        //build query for offline players

        std::ostringstream ss;
        ss << "DELETE FROM `character_queststatus` WHERE `status` = %u AND `quest` IN (";

        for (uint32 questId : m_questIds)
        {
            ss << questId << ",";
        }

        ss.seekp(-1, std::ios_base::end); // remove last comma

        ss << ")";

        CharacterDatabase.PExecute(ss.str().c_str(), QUEST_STATUS_COMPLETE); // execute to remove all quests.


        //now update next reset time to midnight next day.

        WorldDatabase.Execute("UPDATE `daily_quest_timer` SET `nextResetTime` = UNIX_TIMESTAMP(CURDATE() + 1)");
    }
}
