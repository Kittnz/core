#pragma once

#include "field_duty_alliance/npc_captain_blackanvil.h"
#include "field_duty_alliance/trigger_field_duty_alliance.h"
#include "field_duty_horde/npc_hiveregal_hunterkiller.h"
#include "field_duty_horde/npc_krug_skullsplit.h"
#include "field_duty_horde/npc_merok_longstride.h"
#include "field_duty_horde/npc_orgrimmar_legion_grunt.h"
#include "field_duty_horde/npc_shadow_priestess_shai.h"

inline void RegisterScripts_Silithus()
{
    // Field Duty - Alliance
    npc_captain_blackanvil::register_script();
    trigger_field_duty_alliance::register_script();

    // Field Duty - Horde
    npc_hiveregal_hunterkiller::register_script();
    npc_krug_skullsplit::register_script();
    npc_merok_longstride::register_script();
    npc_orgrimmar_legion_grunt::register_script();
    npc_shadow_priestess_shai::register_script();
}
