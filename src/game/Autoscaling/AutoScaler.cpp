#include "AutoScaler.hpp"
#include "Database/DatabaseEnv.h"
#include "Map.h"

#include <mutex>
#include <memory>

using namespace AutoScaling;

void AutoScaler::LoadFromDB()
{
    std::unique_ptr<QueryResult> result{ WorldDatabase.Query("SELECT * FROM disabled_dungeon_scaling") };

    if (!result)
        return;

    do
    {
        auto fields = result->Fetch();
        disabledScaling.insert(fields[0].GetUInt32());
    } while (result->NextRow());
}

class Read_Mutex_Guard
{
public:
    explicit Read_Mutex_Guard(ACE_RW_Mutex& mut)
        : mut(mut)
    {	// construct and lock
        mut.acquire_read();
    }
    ~Read_Mutex_Guard() noexcept
    {	// unlock
        mut.release();
    }

    Read_Mutex_Guard(const Read_Mutex_Guard&) = delete;
    Read_Mutex_Guard& operator=(const Read_Mutex_Guard&) = delete;
private:
    ACE_RW_Mutex& mut;
};

void AutoScaler::Scale(DungeonMap* map)
{
    if (disabledScaling.find(map->GetId()) != disabledScaling.end())
        return;

    uint32 playerCount = map->GetPlayersCountExceptGMs();
    uint32 maxCount = map->GetMaxPlayers();

    if (maxCount == 5)
        return;

    if (maxCount == 10 && playerCount < 8)
        playerCount = 8;
    else if (maxCount == 20 && playerCount < 12)
        playerCount = 12;
    else if (maxCount == 40 && playerCount < 20)
        playerCount = 20;

    float percentage = static_cast<float>(playerCount) / static_cast<float>(maxCount) * 100.f;

    auto ScaleValue = [percentage](float value)
    {
        return value / 100 * percentage;
    };

    auto& lock = map->GetObjectLock();
    Read_Mutex_Guard guard{ lock };
    auto& container = map->GetObjectStore();
    auto pairItr = container.range<Creature>();
    while (pairItr.first != pairItr.second)
    {
        auto creature = pairItr.first->second;
        if (creature && !creature->isInCombat())
        {
            creature->SetMaxHealth(static_cast<uint32>(ScaleValue(creature->GetCreateHealth())));
            creature->SetMaxPower(POWER_MANA, static_cast<uint32>(ScaleValue(creature->GetCreateMana())));

            if (baseDamages.find(creature->GetEntry()) == baseDamages.end())
            {
                //store base vals.
                auto tup = std::make_tuple(
                    std::make_pair(creature->GetWeaponDamageRange(BASE_ATTACK, MINDAMAGE), creature->GetWeaponDamageRange(BASE_ATTACK, MAXDAMAGE)),
                    std::make_pair(creature->GetFloatValue(UNIT_FIELD_MINRANGEDDAMAGE), creature->GetFloatValue(UNIT_FIELD_MAXRANGEDDAMAGE)),
                    creature->GetModifierValue(UNIT_MOD_ATTACK_POWER, BASE_VALUE));
                baseDamages[creature->GetEntry()] = std::move(tup);
            }

            auto& tup = baseDamages[creature->GetEntry()];

            creature->SetBaseWeaponDamage(BASE_ATTACK, MINDAMAGE, ScaleValue(std::get<0>(tup).first));
            creature->SetBaseWeaponDamage(BASE_ATTACK, MAXDAMAGE, ScaleValue(std::get<0>(tup).second));

            creature->SetBaseWeaponDamage(OFF_ATTACK, MINDAMAGE, ScaleValue(std::get<0>(tup).first));
            creature->SetBaseWeaponDamage(OFF_ATTACK, MAXDAMAGE, ScaleValue(std::get<0>(tup).second));

            creature->SetFloatValue(UNIT_FIELD_MINRANGEDDAMAGE, ScaleValue(std::get<1>(tup).first));
            creature->SetFloatValue(UNIT_FIELD_MAXRANGEDDAMAGE, ScaleValue(std::get<1>(tup).second));

            creature->SetModifierValue(UNIT_MOD_ATTACK_POWER, BASE_VALUE, ScaleValue(std::get<2>(tup)));
        }
        ++pairItr.first;
    }
}