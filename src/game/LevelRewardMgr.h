#ifndef MANGOS_LEVEL_REWARD_MGR_H
#define MANGOS_LEVEL_REWARD_MGR_H

#include "Common.h"
#include "Policies/Singleton.h"
#include <map>
#include <string>

class Player;

struct LevelReward
{
    uint32 level;
    uint32 itemId;
    uint32 itemCount;
    uint32 mailSubjectEntry;
    uint32 mailTextEntry;
};

class LevelRewardMgr
{
public:
    LevelRewardMgr();
    ~LevelRewardMgr();

    void LoadLevelRewards();
    void CheckLevelReward(Player* player, uint32 level) const;
    const std::vector<LevelReward>* GetLevelRewards(uint32 level) const;

private:
    typedef std::map<uint32, std::vector<LevelReward>> LevelRewardsMap;
    LevelRewardsMap m_levelRewards;
};

extern LevelRewardMgr g_levelRewardMgr;

#endif // MANGOS_LEVEL_REWARD_MGR_H
