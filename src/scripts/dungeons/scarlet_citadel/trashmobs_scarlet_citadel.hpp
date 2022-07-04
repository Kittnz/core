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

namespace nsChaplainAndSister
{

	static const LocationXYZO vfWaypointsChaplain[] =
	{
		{ 172.095718f, -92.974007f, 16.009285f, 4.83292f }, // 0
		{ 177.601257f, -96.136108f, 16.009285f, 6.28020f }, // 1
		{ 195.531052f, -96.470490f, 16.009285f, 6.27627f }, // 2
		{ 199.359970f, -96.496933f, 16.868980f, 6.27627f }, // 3
		{ 215.438583f, -96.608032f, 16.868980f, 6.27627f }, // 4
		{ 220.254471f, -96.641312f, 15.988512f, 6.27627f }, // 5
		{ 232.252365f, -116.87307f, 15.988512f, 6.27038f }  // 6
	};

	static const LocationXYZO vfWaypointsSister[] =
	{
		{ 174.115463f, -84.962456f, 16.009287f, 0.09517f }, // 0
		{ 184.291809f, -84.783699f, 16.009287f, 0.01467f }, // 1
		{ 195.649780f, -95.058739f, 16.009295f, 0.00878f }, // 2
		{ 198.932648f, -95.029900f, 16.868988f, 0.00878f }, // 3
		{ 215.436218f, -95.073044f, 16.868988f, 6.24877f }, // 4
		{ 218.807205f, -95.189102f, 15.988533f, 6.24877f }, // 5
		{ 232.759308f, -116.55590f, 15.988533f, 0.00288f }  // 6
	};

	static constexpr auto strChaplainConv_0_0{ "Lady Abbendis has been meditating for the past few days to communicate with the Light." };
	static constexpr auto strSisterConv_0_0{ "Do you believe the Light will finally answer?" };
	static constexpr auto strChaplainConv_0_1{ "Is that doubt I hear sister? Mumble around the wrong people and you will be hanged." };
	static constexpr auto strSisterConv_0_1{ "Of course not. I simply miss the might of the Ashbringer." };
	static constexpr auto strChaplainConv_0_2{ "The Ashbringer is lost to the corruption of the Scourge, as believers we will have to make due." };
	static constexpr auto strSisterConv_0_2{ "You speak truthfully. I wonder what would happen if it'd ever cross our paths." };
	static constexpr auto strChaplainConv_0_3{ "The Light's Justice will be met." };

	static constexpr auto strChaplainConv_1_0{ "The Scourge will come." };
	static constexpr auto strSisterConv_1_0{ "And we will be ready." };
	static constexpr auto strChaplainConv_1_1{ "Without our other leaders we are lost." };
	static constexpr auto strSisterConv_1_1{ "Trust in Lady Abbendis. The Light will surely show us the path." };
	static constexpr auto strChaplainConv_1_2{ "Perhaps, if not we will forge it ourselves." };
	static constexpr auto strSisterConv_1_2{ "It is nothing but the truth you're speaking my friend." };

	static constexpr auto strChaplainConv_2_0{ "The new recruits will help us in our campaign to Northrend." };
	static constexpr auto strSisterConv_2_0{ "Are we certain that attacking their very heart is the best decision?" };
	static constexpr auto strChaplainConv_2_1{ "The Dread Citadel has fallen, without the Cult of the Damned the Scourge is nothing but fodder." };
	static constexpr auto strSisterConv_2_1{ "If only Lady Whitemane was here to witness this moment." };
	static constexpr auto strChaplainConv_2_2{ "She was blinded by her own personal agenda." };
	static constexpr auto strSisterConv_2_2{ "I wish you wouldn't speak like that." };
	static constexpr auto strChaplainConv_2_3{ "It is nothing but the truth." };
}
