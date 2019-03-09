#include "RateProfile.h"
#include "SystemConfig.h"

RateProfileMgr::RateProfileMgr()
    : cachedDungeonProfile(nullptr),
    cachedHardcoreProfile(nullptr)
{
    LoadDefaultRates();
}

RateProfileMgr::~RateProfileMgr()
{
    Destroy();
}

void RateProfileMgr::Initialize()
{
    if (!_rateConfigFile.SetSource(_RATE_CONFIG))
    {
        sLog.outError("Could not find configuration file rate.conf");
        Log::WaitBeforeContinueIfNeed();
        return;
    }

    std::vector<std::string> RootSections;
    _rateConfigFile.GetRootSections(RootSections);

    if (RootSections.empty())
    {
        sLog.outError("Rate Profiles file (rate.conf) is empty. Will be used default rates");
        return;
    }

    // Check for Settings section
    auto settingsSectionIter = std::find(RootSections.begin(), RootSections.end(), "Settings");
    if (settingsSectionIter == RootSections.end())
    {
        sLog.outError("Rate Profiles file (rate.conf) missing section \"Settings\". Will be used default rates");
        return;
    }

    // Load profiles
    std::vector<std::string> ProfilesPerLevel;
    _rateConfigFile.GetKeys("Settings", ProfilesPerLevel);

    auto CheckLevelStringLambda = [](std::string& levelStr, int& OutLevel) -> bool
    {
        for (char ch : levelStr)
        {
            if (!isdigit(ch))
            {
                return false;
            }
        }

        int level = atoi(levelStr.c_str());
        if (level > DEFAULT_MAX_LEVEL)
        {
            return false;
        }
        OutLevel = level;

        return true;
    };

    auto LoadProfileInKeyLambda = [this, &RootSections](std::string& levelSetting) -> float*
    {
        std::string profileName = _rateConfigFile.GetStringDefaultInSection(levelSetting.c_str(), "Settings", "");
        if (profileName.empty())
        {
            sLog.outError("Rate Profiles file (rate.conf) have incorrect level profile name \"%s\". "
                "Profile name shouldn't be empty. Will be used default rates", levelSetting.c_str());
            Destroy();
            LoadDefaultRates();
            return nullptr;
        }

        // check if profile already parsed
        auto profileIter = profiles.find(profileName);
        if (profileIter == profiles.end())
        {
            // profile should be loaded first
            auto profileSectionIter = std::find(RootSections.begin(), RootSections.end(), profileName);
            if (profileSectionIter == RootSections.end())
            {
                sLog.outError("Rate Profiles file (rate.conf) have incorrect level profile name \"%s\". "
                    "Profile is missing. Will be used default rates", levelSetting.c_str());
                Destroy();
                LoadDefaultRates();
                return nullptr;
            }
            if (LoadProfile(profileName.c_str()))
            {
                profileIter = profiles.find(profileName);
            }
            else
            {
                sLog.outError("Rate Profiles file (rate.conf) have incorrect level profile name \"%s\". "
                    "Profile '%s' can't be loaded. Invalid syntax or file corruption. Will be used default rates", levelSetting.c_str(), profileName.c_str());
                Destroy();
                LoadDefaultRates();
                return nullptr;
            }
        }
        
        return profileIter->second;
    };

    // Load dungeon and hardcore profile if available
    auto DungeonProfileIter = std::find(RootSections.begin(), RootSections.end(), "Dungeon");
    if (DungeonProfileIter != RootSections.end())
    {
        if (LoadProfile("Dungeon"))
        {
            cachedDungeonProfile = GetProfile("Dungeon");
        }
    }

    auto HardcoreProfileIter = std::find(RootSections.begin(), RootSections.end(), "Hardcore");
    if (HardcoreProfileIter != RootSections.end())
    {
        if (LoadProfile("Hardcore"))
        {
            cachedHardcoreProfile = GetProfile("Hardcore");
        }
    }

    for (std::string& levelSetting : ProfilesPerLevel)
    {
        // Section name should be in format "<level_start>_<level_end>". Or point to one specific level
        // First check the formatted variant
        size_t delimeter = levelSetting.find('_');
        if (delimeter == std::string::npos)
        {
            // maybe just one level? But better check for digits only. Maybe user is drunk
            int level = 1;
            if (!CheckLevelStringLambda(levelSetting, level))
            {
                sLog.outError("Rate Profiles file (rate.conf) have incorrect level profile name \"%s\". "
                    "It should be in format \"<level_start>_<level_end>\" or specific level digit. And level must be less then default max level (%d) Will be used default rates", levelSetting.c_str(), DEFAULT_MAX_LEVEL);
                Destroy();
                LoadDefaultRates();
                return;
            }

            float* profileData = LoadProfileInKeyLambda(levelSetting);
            if (profileData == nullptr) return;
            
            // finally - set profile
            pProfilePerLevel[level - 1] = profileData;
        }
        else
        {
            // This is level range. Get first and last values
            std::string firstLevelStr = levelSetting.substr(0, delimeter);
            std::string lastLevelStr = levelSetting.substr(delimeter + 1, levelSetting.size());

            int firstLevel, lastLevel;
            if (!CheckLevelStringLambda(firstLevelStr, firstLevel) || !CheckLevelStringLambda(lastLevelStr, lastLevel))
            {
                sLog.outError("Rate Profiles file (rate.conf) have incorrect level profile name \"%s\". "
                    "It should be in format \"<level_start>_<level_end>\" or specific level digit. Will be used default rates", levelSetting.c_str());
                Destroy();
                LoadDefaultRates();
                return;
            }

            float* profileData = LoadProfileInKeyLambda(levelSetting);
            if (profileData == nullptr) return;

            for (int level = firstLevel; level < lastLevel + 1; ++level)
            {
                pProfilePerLevel[level - 1] = profileData;
            }
        }
    }
}

float RateProfileMgr::GetRateValue(RateConfig value, uint8 level, bool bInDungeon) const
{
    if (bInDungeon) return cachedDungeonProfile[(uint32)value];
    uint8 clampedLevel = std::min(level, static_cast<uint8>(60));
    return pProfilePerLevel[clampedLevel - 1][(uint32)value];
}

float RateProfileMgr::GetRateValueForHardcorePlayers(RateConfig value, bool bInDungeon) const
{
    if (bInDungeon) return cachedDungeonProfile[(uint32)value];
    return cachedHardcoreProfile[(uint32)value];
}

void RateProfileMgr::Reload()
{
    Destroy();
    LoadDefaultRates();
    Initialize();
}

void RateProfileMgr::LoadDefaultRates()
{
    float* pDefaultProfile = new float[(int)RateConfig::MAX_VALUE];
    cachedDungeonProfile = pDefaultProfile;
    cachedHardcoreProfile = pDefaultProfile;
    profiles["_default"] = pDefaultProfile;

    for (int rateId = 0; rateId < (int)RateConfig::MAX_VALUE; ++rateId)
    {
        pDefaultProfile[rateId] = 1.0f;
    }

    for (int LevelId = 0; LevelId < DEFAULT_MAX_LEVEL; ++LevelId)
    {
        pProfilePerLevel[LevelId] = pDefaultProfile;
    }
}

// This function not returning 'false' currently
bool RateProfileMgr::LoadProfile(const char* ProfileName)
{
    auto profileIter = profiles.find(ProfileName);
    if (profileIter != profiles.end())
    {
        delete[] profileIter->second;
    }

    float XpKill            = _rateConfigFile.GetFloatDefault("Rate.XP.Kill", ProfileName, 1.0f);

    float ReputationGain    = _rateConfigFile.GetFloatDefault("Rate.Reputation.Gain", ProfileName, 1.0f);
    float RepLowLevelKill   = _rateConfigFile.GetFloatDefault("Rate.Reputation.LowLevel.Kill", ProfileName, 1.0f);
    float RepLowLevelQuest  = _rateConfigFile.GetFloatDefault("Rate.Reputation.LowLevel.Quest", ProfileName, 1.0f);

    float* pProfile = new float[(int)RateConfig::MAX_VALUE];
    profiles[ProfileName] = pProfile;
    SetRateValue(pProfile, RateConfig::XP_KILL, XpKill);

    return true;
}

float* RateProfileMgr::GetProfile(const char* ProfileName)
{
    auto ProfileIter = profiles.find(ProfileName);
    if (ProfileIter != profiles.end())
    {
        return ProfileIter->second;
    }

    return nullptr;
}

inline void RateProfileMgr::SetRateValue(float* profile, RateConfig key, float value)
{
    profile[(uint32)key] = value;
}

void RateProfileMgr::Destroy()
{
    for (auto pProfilePair : profiles)
    {
        delete[] pProfilePair.second;
    }

    profiles.clear();

    memset(pProfilePerLevel, 0, sizeof(pProfilePerLevel));
}
