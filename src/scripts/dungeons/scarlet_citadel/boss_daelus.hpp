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
}
