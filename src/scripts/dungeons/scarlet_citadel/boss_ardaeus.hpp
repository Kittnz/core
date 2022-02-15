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

    // Gossip Menu
    static constexpr uint32 GOSSIP_TEXT{ 1000001 };
    static constexpr auto GOSSIP_ANSWER{ "GOSSIP_ANSWER" };

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
        std::string strNotification{};
        switch (combatNotifications)
        {
            case CombatNotifications::ABOUT_TO_START:
            {
                return (strNotification = "ABOUT_TO_START");
            }
            case CombatNotifications::START:
            {
                return (strNotification = "START");
            }
            case CombatNotifications::RAIDWIPE:
            {
                return (strNotification = "RAIDWIPE");
            }
            case CombatNotifications::BOSSDIED:
            {
                return (strNotification = "BOSSDIED");
            }
            case CombatNotifications::ACHIEVEMENT_FAILED:
            {
                return (strNotification = "ACHIEVEMENT_FAILED");
            }
        }
    }

    std::string [[nodiscard]] SayOnPlayersDeath(const uint8& uiRandomNumber)
    {
        std::string strNotification{};
        switch (uiRandomNumber)
        {
            case 0:
            {
                return (strNotification = "PLACEHOLDER0");
            }
            case 1:
            {
                return (strNotification = "PLACEHOLDER1");
            }
            case 2:
            {
                return (strNotification = "PLACEHOLDER2");
            }
            case 3:
            {
                return (strNotification = "PLACEHOLDER3");
            }
        }
    }
}
