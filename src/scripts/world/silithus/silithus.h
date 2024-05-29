#pragma once

#include "field_duty_horde/npc_hiveregal_hunterkiller.h"
#include "field_duty_horde/npc_krug_skullsplit.h"
#include "field_duty_horde/npc_merok_longstride.h"
#include "field_duty_horde/npc_orgrimmar_legion_grunt.h"
#include "field_duty_horde/npc_shadow_priestess_shai.h"

inline void RegisterScripts_Silithus()
{
    npc_hiveregal_hunterkiller::register_script();
    npc_krug_skullsplit::register_script();
    npc_merok_longstride::register_script();
    npc_orgrimmar_legion_grunt::register_script();
    npc_shadow_priestess_shai::register_script();
}
