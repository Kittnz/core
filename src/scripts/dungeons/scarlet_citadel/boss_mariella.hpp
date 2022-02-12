/*
 * Copyright (C) 2021-2022 Nolin (nolin.nolin.nolin.nolin@gmail.org)
 *
 * This is private software and may not be shared under any circumstances,
 * absent permission of Nolin.
 */

#include "scriptPCH.h"
#include "scarlet_citadel.h"

#pragma once

struct Location
{
    float m_fX, m_fY, m_fZ, m_fO, m_fR0, m_fR1, m_fR2, m_fR3;
};

namespace nsSacrificePhase
{
    std::vector<ObjectGuid> m_vPossibleVictim{};
    static constexpr float REGENERATE_HEALTH_PERCENTAGE{ 1.f }; // How many percent should Boss Mariella regenerate on one tick
    uint8 m_uiSacrificePhase{};
    uint32 m_uiIncreaseHealth_Timer{};
    bool m_bIsSacrificePhase{};

    static constexpr uint32 INCREASE_HEALTH_TIMER{ 1000 };      // Interval of Boss Mariella hp re-generate
}

namespace nsVoidZone
{
    // Void Zone
    std::vector<ObjectGuid> m_vVoidZones{};
    static constexpr uint8 NUMBEROFSUMMONERS{ 3 };     // How many players are required to spawn a Void Zone
    static constexpr uint32 VOIDZONE_DAMAGE{ 3000 };   // How much damage should void Zone do on one tick
    static constexpr uint32 NPC_VOIDZONE{ 2000016 };   // Void Zone's entry
    static constexpr float VOIDZONE_DIAMETER{ 2.87f }; // Exact value if field `size` in creature_template = 0.1
    uint32 m_uiVoidZoneSpawn_Timer{};
    uint32 m_uiDamage_Timer{};
    bool m_bVoidZonesAlreadyAnnounced{};

    static constexpr uint32 VOIDZONE_DAMAGE_REPEAT_TIMER{ 2000 }; // Interval of Void Zones damage
    static constexpr uint32 VOIDZONE_SPAWN_FIRST_TIMER{ 1000 };   // Void Zone's first damage tick should start after this time
    static constexpr uint32 VOIDZONE_SPAWN_REPEAT_TIMER{ 20000 }; // Interval for a new Void Zone spawn wave
}

namespace nsFelhounds
{
    // Felhounds
    std::vector<ObjectGuid> m_vFelhounds{};
    std::list<ObjectGuid> m_lSummoningCircles{};
    static constexpr uint32 NPC_FELHOUND{ 2000017 };            // Felhound's entry
    static constexpr uint32 GO_SUMMONINGCIRCLE{ 5000012 };      // Summoning Circle entry
    static constexpr uint32 GO_SUMMONINGCIRCLE_DESPAWN_TIMER { 1800000 };
    static constexpr uint32 VISUALSPELL_DRAINMANA{ 25676 };     // Drain Mana visual effect (blue line)
    static constexpr uint32 VISUALSPELL_SUMMON_FELOUND{ 7741 }; // Summon Felhound visual effect
    static constexpr int32 VALUE_DRAINMANA{ -1250 };            // How much mana should be drained on one tick
    static constexpr std::size_t MAX_FELHOUNDS_SPAWNED{ 50 };   // Set a limit in case a condition is broken and we get an overflow here
    uint32 m_uiFelhoundSpawn_Timer{};
    uint32 m_uiManaDrain_Timer{};
    bool m_bFelhoundsAlreadyAnnounced{};

    static const Location vfSpawnPoints[] =
    {
        { 189.632f, 18.3435f, 31.346f, 0.788997f, 0.f, 0.f, 0.380631f,  0.924727f },
        { 189.632f, 33.1638f, 31.112f, 5.454260f, 0.f, 0.f, 0.381105f, -0.924532f },
        { 204.404f, 33.1638f, 31.242f, 3.962000f, 0.f, 0.f, 0.923975f, -0.382453f },
        { 204.404f, 18.3435f, 30.860f, 2.359790f, 0.f, 0.f, 0.923781f,  0.382921f }
    };

    static constexpr uint32 FELHOUND_DRAIN_REPEAT_TIMER{ 1000 };  // Interval of Felhound's mana drain
    static constexpr uint32 FELHOUND_SPAWN_FIRST_TIMER{ 1000 };   // Felhound's first spawn should start after this time
    static constexpr uint32 FELHOUND_SPAWN_REPEAT_TIMER{ 15000 }; // Interval for a new Felhound spawn
}


// Shadow Volley
uint32 m_uiShadowVolley_Timer{};
static constexpr uint32 SPELL_SHADOWVOLLEY{ 21341 };              // Hits every player within range of 100 yd for 800-1000 damage (Ignores LoS)

static constexpr uint32 SHADOWVOLLEY_REPEAT_TIMER{ 8000 };        // Interval of how often should Shadow Volley be casted
static constexpr uint32 SHADOWVOLLEY_ENRAGE_REPEAT_TIMER{ 1000 }; // Interval of how often should Shadow Volley be casted on enrage


// Kill Zone
uint32 m_uiKill_Timer{};
std::size_t m_uiKillZoneGuid{};
static constexpr uint32 NPC_KILLZONE{ 2000018 };           // Void Zone's entry
static constexpr float KILLZONE_DIAMETER{ 5.74f };         // Exact value if field `size` in creature_template = 0.2

static constexpr uint32 KILLZONE_KILL_REPEAT_TIMER{ 500 }; // Interval of Kill Zones deadly tick


// Enrage
uint32 m_uiEnrage_Timer{};
bool m_bEnrage{};

static constexpr uint32 TIME_UNTIL_ENRAGE{ 600000 }; // Time until enrage


// Achievement
bool m_bAchievementKill{};
static constexpr uint32 GO_ACHIEVEMENT_CHEST{ 5000013 };              // Chest to loot the achievement reward
static constexpr uint32 GO_ACHIEVEMENT_CHEST_DESPAWN_TIMER{ 900000 }; // 15 Minutes 
static const Location vfAchievementChestSpawnPoint[] =                // Chest spawn location
{
    { 175.895233f, 25.896152f, 31.493601f, 6.277175f, 0.f, 0.f, 0.99999f,  0.004572f }
};


// Misc
static constexpr float ROOM_DIAGONAL{ 33.f }; // Room size
ScriptedInstance* m_pInstance{};


enum class CombatNotifications
{
    SACRIFICE_75_PERCENT,
    SACRIFICE_50_PERCENT,
    SACRIFICE_25_PERCENT,
    SACRIFICE_ENDED,
    ENRAGE,
    RAIDWIPE,
    BOSSDIED,
    FELHOUNDS_SPAWN,
    VOIDZONES_SPAWN,
    ACHIEVEMENT_FAILED
};

std::string [[nodiscard]] CombatNotification(const CombatNotifications& combatNotifications)
{
    std::string strNotification{};
    switch (combatNotifications)
    {
        case CombatNotifications::SACRIFICE_75_PERCENT:
        {
            return (strNotification = "Only through sacrifice can one achieve victory.");
        }
        case CombatNotifications::SACRIFICE_50_PERCENT:
        {
            return (strNotification = "Die for the glory of the crusade!");
        }
        case CombatNotifications::SACRIFICE_25_PERCENT:
        {
            return (strNotification = "Persistent, are we?");
        }
        case CombatNotifications::ENRAGE:
        {
            return (strNotification = "That's enough! Now DIE!");
        }
        case CombatNotifications::RAIDWIPE:
        {
            return (strNotification = "What an utter waste of my time.");
        }
        case CombatNotifications::BOSSDIED:
        {
            return (strNotification = "No! This is not... how it should have ended.");
        }
        case CombatNotifications::SACRIFICE_ENDED:
        {
            return (strNotification = "You worms! I will not fall to the likes of you!");
        }
        case CombatNotifications::FELHOUNDS_SPAWN:
        {
            return (strNotification = "Feed my pets! Feed on the blasphemers!");
        }
        case CombatNotifications::VOIDZONES_SPAWN:
        {
            return (strNotification = "Only the darkness awaits the heretics.");
        }
        case CombatNotifications::ACHIEVEMENT_FAILED:
        {
            return (strNotification = "ACHIEVEMENT_FAILED"); // TODO: Find proper text
        }
    }
}

std::string [[nodiscard]] SayOnPlayersDeath(const uint8 uiRandomNumber)
{
    std::string strNotification{};
    switch (uiRandomNumber)
    {
        case 0:
        {
            return (strNotification = "Unworthy.");
        }
        case 1:
        {
            return (strNotification = "As expected.");
        }
        case 2:
        {
            return (strNotification = "Pathetic.");
        }
        case 3:
        {
            return (strNotification = "How easily you crumble.");
        }
    }
}
