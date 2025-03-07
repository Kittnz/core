#include "LevelRewardMgr.h"
#include "Database/DatabaseEnv.h"
#include "Item.h"
#include "Log.h"
#include "ObjectMgr.h"
#include "Player.h"
#include "Mail.h"
#include "MassMailMgr.h"

LevelRewardMgr::LevelRewardMgr() {}

LevelRewardMgr::~LevelRewardMgr() { m_levelRewards.clear(); }

LevelRewardMgr g_levelRewardMgr;

void LevelRewardMgr::LoadLevelRewards()
{
    m_levelRewards.clear();

    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "Loading level rewards...");

    std::unique_ptr<QueryResult> result(WorldDatabase.Query("SELECT level, item_id, item_count, mail_subject_entry, mail_text_entry FROM player_level_rewards ORDER BY level"));

    if (!result)
    {
        sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, ">> Loaded 0 level rewards. Table `player_level_rewards` is empty.");
        return;
    }

    uint32 count = 0;

    do
    {
        Field* fields = result->Fetch();

        LevelReward reward;
        reward.level = fields[0].GetUInt32();
        reward.itemId = fields[1].GetUInt32();
        reward.itemCount = fields[2].GetUInt32();
        reward.mailSubjectEntry = fields[3].GetUInt32();
        reward.mailTextEntry = fields[4].GetUInt32();

        // Verify that the string entries exist
        if (!sObjectMgr.GetMangosString(reward.mailSubjectEntry, 0))
        {
            sLog.Out(LOG_DBERROR, LOG_LVL_ERROR, "Table `player_level_rewards` has invalid mail_subject_entry %u for level %u. Skipping.", reward.mailSubjectEntry, reward.level);
            continue;
        }

        if (!sObjectMgr.GetMangosString(reward.mailTextEntry, 0))
        {
            sLog.Out(LOG_DBERROR, LOG_LVL_ERROR, "Table `player_level_rewards` has invalid mail_text_entry %u for level %u. Skipping.", reward.mailTextEntry, reward.level);
            continue;
        }

        // Add to the map of vectors, creating the vector if this is the first entry for the level
        m_levelRewards[reward.level].push_back(reward);

        ++count;
    }
    while (result->NextRow());

    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, ">> Loaded %u level rewards.", count);
}

const std::vector<LevelReward>* LevelRewardMgr::GetLevelRewards(uint32 level) const
{
    LevelRewardsMap::const_iterator itr = m_levelRewards.find(level);
    if (itr != m_levelRewards.end())
        return &itr->second;

    return nullptr;
}

void LevelRewardMgr::CheckLevelReward(Player* player, uint32 level) const
{
    // Only check for level rewards for players who have never died
    if (player->GetTotalDeathCount() != 0)
        return;

    // Get the rewards for this level (if any)
    const std::vector<LevelReward>* rewards = GetLevelRewards(level);
    if (!rewards || rewards->empty())
        return;

    // Get localized subject and text from the first reward (they should all be the same for a level)
    int32 loc_idx = player->GetSession()->GetSessionDbLocaleIndex();

    const LevelReward& firstReward = rewards->front();
    char const* subject = sObjectMgr.GetMangosString(firstReward.mailSubjectEntry, loc_idx);
    char const* text = sObjectMgr.GetMangosString(firstReward.mailTextEntry, loc_idx);

    // Create mail with subject and text
    MailDraft draft(subject, text);

    // Add all items to the mail
    for (const auto& reward : *rewards)
    {
        // Create item instance
        Item* item = Item::CreateItem(reward.itemId, reward.itemCount, player->GetObjectGuid().GetCounter());
        if (item)
        {
            // Save the item
            item->SaveToDB();

            // Add item to the mail
            draft.AddItem(item);

            // Log the reward
            sLog.Player(player->GetSession(), LOG_LEVELUP, LOG_LVL_BASIC, "Character %s:%u received level %u reward (item: %u, count: %u) for having 0 deaths", player->GetName(), player->GetGUIDLow(), level, reward.itemId, reward.itemCount);
        }
    }

    // Create a proper MailSender
    MailSender sender(MAIL_NORMAL, (uint32)0, MAIL_STATIONERY_GM);

    // Send mail to player
    draft.SendMailTo(MailReceiver(player), sender, MAIL_CHECK_MASK_COPIED);
}
