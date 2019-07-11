#pragma once
#include <unordered_set>
#include <unordered_map>

#include "Common.h"

class DungeonMap;

namespace AutoScaling
{
    class AutoScaler final
    {
    public:
        static AutoScaler* instance()
        {
            static AutoScaler instance;
            return &instance;
        }

        AutoScaler(const AutoScaler&) = delete;
        AutoScaler(AutoScaler&&) = delete;
        ~AutoScaler() = default;


        void LoadFromDB();
        void Scale(DungeonMap* map);


    private:
        AutoScaler() = default;
        std::unordered_set<uint32> disabledScaling;
        std::unordered_map<uint32, std::tuple<std::pair<uint32, uint32>, std::pair<uint32, uint32>, uint32>> baseDamages;
    };
}

#define sAutoScaler AutoScaling::AutoScaler::instance()