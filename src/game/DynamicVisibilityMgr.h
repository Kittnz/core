//This probably could've gone in some existing file but oh well
#pragma once

#include "Database/DatabaseEnv.h"

#include <unordered_map>
#include <memory>
#include <optional>

struct VisibilitySettings
{
    uint32 AreaId;
    uint32 MinVisibilityDistance;
    uint32 MaxVisibilityDistance;
    uint32 DecreaseTickDiff;
    uint32 IncreaseTickDiff;
};

class DynamicVisibilityMgr
{
public:
    static DynamicVisibilityMgr* instance()
    {
        static DynamicVisibilityMgr instance;
        return &instance;
    }


    void LoadFromDB(bool reload);
    void InitVisibilities(bool reload);

    void UpdateVisibility(uint32 diff);

    std::optional<uint32> GetDynamicVisibility(uint32 areaId);

private:
    std::unordered_map<uint32, VisibilitySettings> _areaSettings;
    std::unordered_map<uint32, uint32> _currentVisibilities;

};

#define sDynamicVisMgr DynamicVisibilityMgr::instance()
