/*
 * Copyright (C) 2021-2022 Nolin (nolin.nolin.nolin.nolin@gmail.org)
 *
 * This is private software and may not be shared under any circumstances,
 * absent permission of Nolin.
 */

#include "scriptPCH.h"
#include "scarlet_citadel.h"

#pragma once

namespace nsArdaeus
{
    template <typename Functor>
    void DoAfterTime(Creature* pCreature, const uint32& uiTime, Functor&& function)
    {
        pCreature->m_Events.AddEvent(new LambdaBasicEvent<Functor>(std::move(function)), pCreature->m_Events.CalculateTime(uiTime));
    }

    struct Location
    {
        float m_fX{}, m_fY{}, m_fZ{}, m_fO{}, m_fR0{}, m_fR1{}, m_fR2{}, m_fR3{};
    };

    static constexpr uint32 NPC_SUN{ 2000019 };
    static const Location vfSunMovePoints[] =
    {
        { 255.f, -100.f, 60.0f, 0.f, 0.f, 0.f, 0.f, 0.f }, // Spawn location
        { 255.f, -100.f, 18.5f, 0.f, 0.f, 0.f, 0.f, 0.f }  // End location
    };

    // Sun
    static constexpr uint32 DAMAGE_DONE_TO_MOVE_UPWARDS{ 25000 }; // Required damage to move Sun upwards
    static constexpr uint32 SUN_SPEED_INCREASE_TIMER{ 10000 };    // Interval for speed update
    static constexpr float INCREASE_Z_AXIS{ 5.0f };               // Set new Z destination to move Sun upwards
    static constexpr float INCREASE_SPEED{ 5.0f };                // Set new speed

    // Call for Help
    static constexpr uint32 VISUALSPELL_SUMMON_CALLFORHELP{ 7741 }; // TODO: Replace this spell since its already used in Boss Mariella's fight
    static constexpr uint32 CALLFORHELP_REPEAT_TIMER{ 30000 };
    static constexpr uint32 ARDAEUS_STATUE_NPC{ 2000031 };
    static constexpr uint8 MAX_SPAWN_POINTS{ 11 };
    static const Location vfStatueNPCsSpawnPoints[MAX_SPAWN_POINTS] = // Statue spawn points
    {
        { 273.846527f,  -89.212425f, 36.449623f }, // Admiral Barean Westwind
        { 266.307312f,  -81.047981f, 36.766712f }, // Harthal Truesight
        { 254.888184f,  -77.541397f, 36.278404f }, // Valea Twinblades
        { 244.001007f,  -81.246063f, 33.979237f }, // Dorgar Stoenbrow
        { 236.904312f,  -89.258492f, 36.039940f }, // Fellari Swiftarrow
        { 234.323257f,  -99.893288f, 36.788834f }, // Orman of Stromgarde
        { 235.413086f, -111.568939f, 36.354855f }, // Yana Bloodspear
        { 244.116028f, -119.026382f, 36.735710f }, // Ferren Marcus
        { 255.226807f, -121.590538f, 35.795573f }, // Holia Sunshield
        { 266.339966f, -119.543060f, 35.871510f }, // Arellas Fireleaf
        { 273.310608f, -110.504791f, 36.435394f }  // Invar One-Arm
    };
    static const Location vfCallForHelpSpawnPoint[] =         // Call for Help NPC spawn point
    {
        { 255.173981f, -99.994385f, 18.679367f, 6.263751f }   // Middle of the room
    };
    static const uint32 vfCallForHelpNPCs[MAX_SPAWN_POINTS] = // Call for Help NPCs
    {
        2000030, // Admiral Barean Westwind
        2000029, // Harthal Truesight
        2000028, // Valea Twinblades
        2000027, // Dorgar Stoenbrow
        2000026, // Fellari Swiftarrow
        2000025, // Orman of Stromgarde
        2000024, // Yana Bloodspear
        2000023, // Ferren Marcus
        2000022, // Holia Sunshield
        2000021, // Arellas Fireleaf
        2000020  // Invar One-Arm
    };

    // Gossip Menu
    static constexpr uint32 GOSSIP_TEXT{ 1000001 };
    static constexpr auto GOSSIP_ANSWER{ "Give us your worst, fanatic mage." };

    // Achievment
    static constexpr uint32 ACHIEVEMENT_CHECK_TIMER{ 1000 };
    static constexpr uint32 GO_ACHIEVEMENT_CHEST{ 5000014 };              // Chest to loot the achievement reward
    static constexpr uint32 GO_ACHIEVEMENT_CHEST_DESPAWN_TIMER{ 900000 }; // 15 Minutes
    static constexpr float ACHIEVEMENT_FAILED_BELOW{ 20.75f };
    static const Location vfAchievementChestSpawnPoint[] =                // Chest spawn location
    {
        { 236.068649f, -99.972031f, 23.774151f, 6.271617f, 0.f, 0.f, 0.f, 0.f } // TODO: Check rotation
    };

    // Misc
    static constexpr float ROOM_DIAGONAL{ (54.0f / 2) }; // Room size
    static constexpr uint32 FACTION_SCARLET{ 67 };       // Scarlet Citadel Faction // TODO: Find proper ID
    static constexpr uint32 FACTION_NEUTRAL{ 189 };      // Neutral Faction


    enum class CombatNotifications
    {
        ABOUT_TO_START,
        START,
        RAIDWIPE,
        BOSSDIED,
        ACHIEVEMENT_FAILED
    };

    std::string [[nodiscard]] CombatNotification(const CombatNotifications& combatNotifications)
    {
        switch (combatNotifications)
        {
            case CombatNotifications::ABOUT_TO_START:
            {
                return "ABOUT_TO_START";
            }
            case CombatNotifications::START:
            {
                return "START";
            }
            case CombatNotifications::RAIDWIPE:
            {
                return "RAIDWIPE";
            }
            case CombatNotifications::BOSSDIED:
            {
                return "BOSSDIED";
            }
            case CombatNotifications::ACHIEVEMENT_FAILED:
            {
                return "ACHIEVEMENT_FAILED";
            }
        }
    }

    std::string [[nodiscard]] SayOnPlayersDeath(const uint8 uiRandomNumber)
    {
        switch (uiRandomNumber)
        {
            case 0:
            {
                return "PLACEHOLDER0";
            }
            case 1:
            {
                return "PLACEHOLDER1";
            }
            case 2:
            {
                return "PLACEHOLDER2";
            }
            case 3:
            {
                return "PLACEHOLDER3";
            }
            default:
            {
                break;
            }
        }
    }
}
