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

    // Misc
    static constexpr float ROOM_DIAGONAL{ (54.0f / 2) }; // Room size
}
