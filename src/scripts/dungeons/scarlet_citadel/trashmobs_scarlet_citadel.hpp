/*
 * Copyright (C) 2021-2022 Nolin (nolin.nolin.nolin.nolin@gmail.org)
 *
 * This is private software and may not be shared under any circumstances,
 * absent permission of Nolin.
 */

#pragma once

namespace nsAntiExploit
{
	static const float vfTeleportDestinations[][4] =
	{
		{ 231.569946f, 48.830078f, (32.822887f + 0.1f), 3.130378f } // Boss Mariella
	};

	static constexpr float PERMITTED_AREA{ 20.f };
	static constexpr auto WARNING_MESSAGE{ "You are not allowed to leave this area." };
	static constexpr std::uint32_t PULSE_TIMER{ 500 };
	static constexpr std::uint32_t SPELL_STUN{ 27880 };
}

namespace nsCitadelInquisitor
{
	static constexpr std::uint32_t SPELL_HOLY_NOVA{ 23858 };
	static constexpr std::uint32_t SPELL_COUNTERSPELL{ 20537 };
	static constexpr std::uint32_t SPELL_DIVINE_SHIELD{ 1020 };
	static constexpr std::uint32_t SPELL_GREATER_HEAL{ 24208 };

	static constexpr std::uint32_t INITIAL_TIMER_COUNTERSPELL{ 2000 };
	static constexpr std::uint32_t TIMER_MIN_COUNTERSPELL{ 5000 };
	static constexpr std::uint32_t TIMER_MAX_COUNTERSPELL{ 8000 };
	static constexpr std::uint32_t TIMER_HOLY_NOVA{ 1000 };
	static constexpr std::uint32_t TIMER_GREATER_HEAL{ 5000 };
}

namespace nsCitadelValiant
{
	static constexpr std::uint32_t SPELL_CHARGE{ 26561 };
	static constexpr std::uint32_t SPELL_CLEAVE{ 26350 };
	static constexpr std::uint32_t SPELL_SONICBURST{ 23918 };

	static constexpr std::uint32_t TIMER_CHARGE{ 10000 };
	static constexpr std::uint32_t TIMER_CLEAVE{ 5000 };
}

namespace nsCitadelFootman
{
	static constexpr std::uint32_t SPELL_DISARM{ 6713 };
	static constexpr std::uint32_t SPELL_FRENZY{ 8269 };
	static constexpr std::uint32_t SPELL_HAMSTRING{ 26141 };

	static constexpr std::uint32_t INITIAL_TIMER_DISARM{ 1000 };
	static constexpr std::uint32_t TIMER_DISARM{ 7000 };
	static constexpr std::uint32_t INITIAL_TIMER_FRENZY{ 15000 };
	static constexpr std::uint32_t TIMER_FRENZY{ 120000 };
}

namespace nsCitadelInterrogator
{
	static constexpr std::uint32_t SPELL_STEALTH{ 1787 };
	static constexpr std::uint32_t SPELL_FRENZY{ 8269 };
	static constexpr std::uint32_t SPELL_BLIND{ 2094 };
	static constexpr std::uint32_t SPELL_EVASION{ 5277 };
	static constexpr std::uint32_t SPELL_EVISCERATE{ 11300 };
	static constexpr std::uint32_t SPELL_GOUGE{ 11286 };
	static constexpr std::uint32_t SPELL_SINISTER_STRIKE{ 11294 };

	static constexpr std::uint32_t TIMER_MIN_SINISTER_STRIKE{ 2000 };
	static constexpr std::uint32_t TIMER_MAX_SINISTER_STRIKE{ 3000 };
	static constexpr std::uint32_t INITIAL_TIMER_GAUGE{ 8000 };
	static constexpr std::uint32_t TIMER_MIN_GAUGE{ 8000 };
	static constexpr std::uint32_t TIMER_MAX_GAUGE{ 10000 };
	static constexpr std::uint32_t INITIAL_TIMER_BLIND{ 12000 };
	static constexpr std::uint32_t TIMER_MIN_BLIND{ 12000 };
	static constexpr std::uint32_t TIMER_MAX_BLIND{ 15000 };
}
