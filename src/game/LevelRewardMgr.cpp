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

    // Get localized subject and text
    int32 loc_idx = player->GetSession()->GetSessionDbLocaleIndex();

    // Process each reward separately
    for (const auto& reward : *rewards)
    {
        // Validate the item
        ItemPrototype const* item_proto = sObjectMgr.GetItemPrototype(reward.itemId);
        if (!item_proto)
        {
            sLog.Out(LOG_DBERROR, LOG_LVL_ERROR, "LevelRewardMgr: Invalid item ID %u for level %u reward.", reward.itemId, level);
            continue;
        }

        uint32 itemCount = reward.itemCount;
        if (itemCount < 1 || (item_proto->MaxCount > 0 && itemCount > uint32(item_proto->MaxCount)))
        {
            sLog.Out(LOG_DBERROR, LOG_LVL_ERROR, "LevelRewardMgr: Invalid item count %u for item %u in level %u reward.", itemCount, reward.itemId, level);
            continue;
        }

        char const* subject = sObjectMgr.GetMangosString(reward.mailSubjectEntry, loc_idx);
        char const* text = sObjectMgr.GetMangosString(reward.mailTextEntry, loc_idx);

        // Handle items that might exceed stack size
        while (itemCount > 0)
        {
            // Determine current stack size
            uint32 currentStackSize = std::min(itemCount, uint32(item_proto->GetMaxStackSize()));

            // Create a new mail draft for each item/stack
            MailDraft draft(subject, text);

            // Create the item and add it to mail
            Item* mailItem = Item::CreateItem(reward.itemId, currentStackSize, player->GetObjectGuid().GetCounter());
            if (mailItem)
            {
                mailItem->SaveToDB();
                draft.AddItem(mailItem);

                // Create mail sender
                MailSender sender(MAIL_NORMAL, (uint32)0, MAIL_STATIONERY_GM);

                // Send the mail
                draft.SendMailTo(MailReceiver(player), sender, MAIL_CHECK_MASK_COPIED);

                // Log the reward
                sLog.Player(player->GetSession(), LOG_LEVELUP, LOG_LVL_BASIC, "Character %s:%u received level %u reward (item: %u, count: %u) for having 0 deaths", player->GetName(), player->GetGUIDLow(), level, reward.itemId, currentStackSize);

                // Decrease remaining count
                itemCount -= currentStackSize;
            }
            else
            {
                // Failed to create item, break loop
                sLog.Out(LOG_DBERROR, LOG_LVL_ERROR, "LevelRewardMgr: Failed to create item %u for level %u reward.", reward.itemId, level);
                break;
            }
        }
    }

    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "LevelRewardMgr: Sent level %u reward mails to player %s (%u).", level, player->GetName(), player->GetGUIDLow());
}
