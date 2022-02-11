/*
 * Copyright (C) 2021-2022 Nolin (nolin.nolin.nolin.nolin@gmail.org)
 *
 * This is private software and may not be shared under any circumstances,
 * absent permission of Nolin.
 */

#include "scriptPCH.h"
#include "scarlet_citadel.h"

#pragma once

namespace nsSacrificePhase
{
    static constexpr float REGENERATE_HEALTH_PERCENTAGE{ 1.f };
    uint8 m_uiSacrificePhase{};
    uint32 m_uiIncreaseHealth_Timer{};
    bool m_bIsSacrificePhase{};
    std::vector<ObjectGuid> m_vPossibleVictim{};

    static constexpr uint32 INCREASE_HEALTH_TIMER{ 1000 };
}

namespace nsVoidZone
{
    // Void Zone
    std::vector<ObjectGuid> m_vVoidZones{};
    static constexpr uint8 NUMBEROFSUMMONERS{ 3 };
    static constexpr uint32 VOIDZONE_DAMAGE{ 2500 };
    static constexpr uint32 NPC_VOIDZONE{ 2000016 };
    static constexpr float VOIDZONE_DIAMETER{ 2.87f }; // Exact value if field `size` in creature_template = 0.1
    uint32 m_uiVoidZoneSpawn_Timer{};
    uint32 m_uiDamage_Timer{};
    bool m_bVoidZonesAlreadyAnnounced{};

    static constexpr uint32 VOIDZONE_DAMAGE_REPEAT_TIMER{ 1000 };
    static constexpr uint32 VOIDZONE_SPAWN_FIRST_TIMER{ 1000 };
    static constexpr uint32 VOIDZONE_SPAWN_REPEAT_TIMER{ 20000 };
}

namespace nsFelhounds
{
    // Felhounds
    std::vector<ObjectGuid> m_vFelhounds{};
    static constexpr uint32 NPC_FELHOUND{ 2000017 };
    static constexpr uint32 VISUALSPELL_DRAINMANA{ 25676 };
    static constexpr uint32 VISUALSPELL_SUMMON_FELOUND{ 7741 };
    static constexpr int32 VALUE_DRAINMANA{ -1250 };
    static constexpr auto MAX_FELHOUNDS_SPAWNED{ 50 };
    uint32 m_uiFelhoundSpawn_Timer{};
    uint32 m_uiManaDrain_Timer{};
    bool m_bFelhoundsAlreadyAnnounced{};

    static constexpr uint32 FELHOUND_SPAWN_FIRST_TIMER{ 1000 };
    static constexpr uint32 FELHOUND_SPAWN_REPEAT_TIMER{ 15000 };
    static constexpr uint32 FELHOUND_DRAIN_REPEAT_TIMER{ 1000 };
}


// Shadow Volley
uint32 m_uiShadowVolley_Timer{};

static constexpr uint32 SHADOWVOLLEY_REPEAT_TIMER{ 8000 };
static constexpr uint32 SHADOWVOLLEY_ENRAGE_REPEAT_TIMER{ 1000 };


// Void Bolt
uint32 m_uiVoidBolt_Timer{};

static constexpr uint32 VOIDBOLT_REPEAT_TIMER{ 3000 };


// Enrage
uint32 m_uiEnrage_Timer{};
bool m_bEnrage{};

static constexpr uint32 TIME_UNTIL_ENRAGE{ 600000 };


// Misc
static constexpr float ROOM_DIAGONAL{ 33.f };
ScriptedInstance* m_pInstance{};


enum MariellaSpells
{
    SPELL_SHADOWVOLLEY = 21341,
    SPELL_VOIDBOLT = 22709,
};

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
