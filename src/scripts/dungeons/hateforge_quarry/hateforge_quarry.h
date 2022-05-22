
#include "scriptPCH.h"

struct Location
{
	float m_fX{}, m_fY{}, m_fZ{}, m_fO{}, m_fR0{}, m_fR1{}, m_fR2{}, m_fR3{};
};

enum boss_hargesh_doomcaller
{
	NPC_FACELESS_TERROR = 60738,

	SPELL_IMMOLATE = 11668,
	SPELL_SHADOW_BOLT_VOLLEY = 27646,
	SPELL_SHADOW_BOLT = 17393,
	SPELL_IMMUNE_ALL = 29230
};

static const Location vfSpawnPoint[] =
{
	{ -8300.825195f, -3735.292725f, 138.12f, 6.020778f }, // 0 - Spawn point for Boss' Hargesh Doomcaller's add 0
	{ -8283.150391f, -3740.716309f, 137.77f, 2.820284f }  // 1 - Spawn point for Boss' Hargesh Doomcaller's add 1
};
