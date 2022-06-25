/*
 * Copyright (C) 2021-2022 Nolin (nolin.nolin.nolin.nolin@gmail.org)
 *
 * This is private software and may not be shared under any circumstances,
 * absent permission of Nolin.
 */

#pragma once

namespace nsDaelus
{
    struct Location
    {
        float m_fX{}, m_fY{}, m_fZ{}, m_fO{}, m_fR0{}, m_fR1{}, m_fR2{}, m_fR3{};
    };

    static constexpr std::uint8_t NUMBER_OF_ADDS{ 6 };
    static const Location vfSpawnPoints[NUMBER_OF_ADDS] =
    {
        { 36.207348f, -17.218674f, 16.87f, 1.570526f }, // R1
        { 36.207348f,  43.897984f, 16.87f, 4.696410f }, // L1
        { 67.414421f, -17.218674f, 16.87f, 1.570526f }, // R2
        { 67.414421f,  43.897984f, 16.87f, 4.696410f }, // L2
        { 98.575172f, -17.218674f, 16.87f, 1.570526f }, // R3
        { 98.575172f,  43.897984f, 16.87f, 4.696410f }, // L3
    };

    static constexpr std::uint32_t NPC_CITADEL_MONK{ 2000013 };

    static constexpr std::uint32_t SPELL_RED_COLOR{ 26235 };
    static constexpr std::uint32_t SPELL_VULNERABILITY{ 26156 };

    static constexpr std::uint32_t CALL_MONKS_FIRST_TIMER{ 5000 };
    static constexpr std::uint32_t CALL_MONKS_REPEAT_TIMER{ 30000 };
    static constexpr std::uint32_t CHECK_MONKS_REPEAT_TIMER{ 500 };

    static constexpr std::uint32_t FACTION_SCARLET{ 67 };  // Scarlet Citadel Faction
    static constexpr std::uint32_t FACTION_NEUTRAL{ 189 }; // Neutral Faction

    static constexpr auto START_BUTTON{ "START_BUTTON" };

    enum class CombatNotifications
    {
        ABOUT_TO_START,
        START,
        PHASE_ONE,
        PHASE_TWO,
        PHASE_THREE,
        ENRAGE,
        RAIDWIPE,
        BOSSDIED,
        ACHIEVEMENT_FAILED
    };

    const std::string [[nodiscard]] CombatNotification(const CombatNotifications& combatNotifications)
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
            case CombatNotifications::PHASE_ONE:
            {
                return "PHASE_ONE";
            }
            case CombatNotifications::PHASE_TWO:
            {
                return "PHASE_TWO";
            }
            case CombatNotifications::PHASE_THREE:
            {
                return "PHASE_THREE";
            }
            case CombatNotifications::ENRAGE:
            {
                return "ENRAGE";
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
            default:
            {
                return "";
            }
        }
    }
}
