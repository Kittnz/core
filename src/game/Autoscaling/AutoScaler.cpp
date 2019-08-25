#include "AutoScaler.hpp"
#include "Database/DatabaseEnv.h"
#include "Map.h"

#include <mutex>
#include <memory>

using namespace AutoScaling;

// Unused
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
    //if (disabledScaling.find(map->GetId()) != disabledScaling.end())
    //    return;

    uint32 playerCount = map->GetPlayersCountExceptGMs();
    uint32 maxCount = map->GetMaxPlayers();

    if (maxCount <= 10 || playerCount == maxCount)
        return;

    else if (maxCount == 20 && playerCount < 12)
        playerCount = 12;
    else if (maxCount == 40 && playerCount < 20)
        playerCount = 20;

    auto& lock = map->GetObjectLock();
    Read_Mutex_Guard guard{ lock };
    auto& container = const_cast<TypeUnorderedMapContainer<AllMapStoredObjectTypes, ObjectGuid>&>(map->GetObjectStore());


    auto pairItr = container.range<Creature>();
    while (pairItr.first != pairItr.second)
    {
        auto creature = pairItr.first->second;
        if (creature && !creature->isInCombat())
            ScaleCreature(creature, playerCount, maxCount);

        ++pairItr.first;
    }
}

void AutoScaler::ScaleCreature(Creature* creature, uint32 playerCount, uint32 maxCount)
{
    if (creature->IsPet() && creature->GetOwner() && creature->GetOwner()->IsPlayer())
        return;

    float specificHPFactor = 1;
    float specificPowerFactor = 1;
    float specificDmgFactor = 1;

    switch (creature->GetEntry()) {
        case 12099: // Firesworn, Garr add.
            if (playerCount < 30) {
                specificHPFactor = 0.5f;
                specificDmgFactor =  0.5f;
            }
            break;
        case 11661: // Flamewalker, Gehenass add.
        case 12119: // Flamewalker Protector, Lucifron add.
            if (playerCount < 30) {
                specificDmgFactor =  0.75f;
            }
            break;
        case 11669: // Flame Imp
            if (playerCount < 30) {
                specificHPFactor = 0.75f;
                specificDmgFactor = 0.75f;
            }
            break;
    }

    float hpPercentage = static_cast<float>(playerCount) / static_cast<float>(maxCount) * 100.f;
    auto ScaleHp = [hpPercentage](float value)
    {
        return value / 100 * hpPercentage;
    };
    float powerPercentage = (static_cast<float>(playerCount) / static_cast<float>(maxCount) * 100.f) + (maxCount - playerCount);
    auto ScalePower = [powerPercentage](float value)
    {
        return value / 100 * powerPercentage;
    };
    float dmgPercentage = (static_cast<float>(playerCount) / static_cast<float>(maxCount) * 100.f) + (maxCount - playerCount);
    auto ScaleDamage = [dmgPercentage](float value)
    {
        return value / 100 * dmgPercentage;
    };

    creature->SetMaxHealth(static_cast<uint32>(ScaleHp(creature->GetCreateHealth()) * specificHPFactor));
    creature->SetMaxPower(POWER_MANA, static_cast<uint32>(ScalePower(creature->GetCreateMana()) * specificPowerFactor));

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

    creature->SetBaseWeaponDamage(BASE_ATTACK, MINDAMAGE, ScaleDamage(std::get<0>(tup).first) * specificDmgFactor);
    creature->SetBaseWeaponDamage(BASE_ATTACK, MAXDAMAGE, ScaleDamage(std::get<0>(tup).second) * specificDmgFactor);

    creature->SetBaseWeaponDamage(OFF_ATTACK, MINDAMAGE, ScaleDamage(std::get<0>(tup).first) * specificDmgFactor);
    creature->SetBaseWeaponDamage(OFF_ATTACK, MAXDAMAGE, ScaleDamage(std::get<0>(tup).second) * specificDmgFactor);

    creature->SetFloatValue(UNIT_FIELD_MINRANGEDDAMAGE, ScaleDamage(std::get<1>(tup).first) * specificDmgFactor);
    creature->SetFloatValue(UNIT_FIELD_MAXRANGEDDAMAGE, ScaleDamage(std::get<1>(tup).second) * specificDmgFactor);

    creature->SetModifierValue(UNIT_MOD_ATTACK_POWER, BASE_VALUE, ScaleDamage(std::get<2>(tup)) * specificDmgFactor);
}

void AutoScaler::GenerateScaledMoneyLoot(Creature* creature, Loot* loot)
{
    uint32 playerCount = creature->GetMap()->GetPlayersCountExceptGMs();
    uint32 maxCount = ((DungeonMap*)creature->GetMap())->GetMaxPlayers();
    if (maxCount > 10 && playerCount < maxCount)
    {
        if (maxCount == 20 && playerCount < 12)
            playerCount = 12;
        else if (maxCount == 40 && playerCount < 20)
            playerCount = 20;
    }

    float gold_factor = static_cast<float>(playerCount) / static_cast<float>(maxCount);
    loot->generateMoneyLoot(static_cast<uint32>(creature->GetCreatureInfo()->gold_min * gold_factor),
                            static_cast<uint32>(creature->GetCreatureInfo()->gold_max * gold_factor));
}