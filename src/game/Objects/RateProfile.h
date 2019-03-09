#pragma once
#include "Common.h"
#include "Config/Config.h"
#include "Database/DBCEnums.h"

enum class RateConfig : int
{
    XP_KILL,
    REPUTATION_GAIN,
    REPUTATION_LOWLEVEL_KILL,
    REPUTATION_LOWLEVEL_QUEST,
    MAX_VALUE
};


class RateProfileMgr
{
public:
    RateProfileMgr();
    ~RateProfileMgr();

    void Initialize();
    float GetRateValue(RateConfig value, uint8 level, bool bInDungeon) const;
    float GetRateValueForHardcorePlayers(RateConfig value, bool bInDungeon) const;
    void Reload();

private:
    Config _rateConfigFile;

    //raw pointer array to profiles
    float* pProfilePerLevel[DEFAULT_MAX_LEVEL];
    float* cachedDungeonProfile;
    float* cachedHardcoreProfile;

    std::map<std::string, float*> profiles;

    void LoadDefaultRates();
    bool LoadProfile(const char* ProfileName);
    float* GetProfile(const char* ProfileName);
    inline void SetRateValue(float* profile, RateConfig key, float value);
    void Destroy();
};