/*
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

#pragma once

enum ScourgeInvasionSpells
{
    SPELL_SPIRIT_PARTICLES_PURPLE               = 28126, // Purple Minions Aura.

    // GameObject Necropolis
    SPELL_SUMMON_NECROPOLIS_CRITTERS            = 27866, // Spawns NPCs Necropolis Health and Necropolis.

    // Necropolis Health -> Necropolis
    SPELL_DESPAWNER_OTHER                       = 28349, // Casted by the NPC "Necropolis health" after getting hit by,
                                                         // on the NPC "Necropolis" which destroys itself and the Necropolis Object.

    // Necropolis Health
    SPELL_ZAP_NECROPOLIS                        = 28386, // There are always 3 Necrotic Shards spawns per Necropolis. This Spell is castet on the NPC "Necropolis Health" if a Shard dies and does 40 Physical damage.
                                                         // NPC "Necropolis Health" has 42 health. 42 health / 3 Shards = 14 damage.
                                                         // We have set the armor value from the NPC "Necropolis Health" to 950 to reduce the damage from 40 to 14.

    // Necropolis -> Proxy
    SPELL_COMMUNIQUE_TIMER_NECROPOLIS           = 28395, // Periodically triggers 28373 Communique, Necropolis-to-Proxies every 15 seconds.
    SPELL_COMMUNIQUE_NECROPOLIS_TO_PROXIES      = 28373, // purple bolt Visual (BIG).

    // Proxy -> Necropolis
    SPELL_COMMUNIQUE_PROXY_TO_NECROPOLIS        = 28367, // Purple bolt Visual (SMALL).

    // Proxy -> Relay
    SPELL_COMMUNIQUE_PROXY_TO_RELAY             = 28366, // purple bolt Visual (BIG).

    // Relay -> Proxy
    SPELL_COMMUNIQUE_RELAY_TO_PROXY             = 28365, // Purple bolt Visual (SMALL).

    // Relay -> Shard
    SPELL_COMMUNIQUE_RELAY_TO_CAMP              = 28326, // Purple bolt Visual (BIG).

    // Shard
    SPELL_CREATE_CRYSTAL                        = 28344, // Spawn a Necrotic Shard.
    SPELL_CREATE_CRYSTAL_CORPSE                 = 27895, // Summon (Damaged Necrotic Shard).
    SPELL_CAMP_RECEIVES_COMMUNIQUE              = 28449, // Impact Visual.
    SPELL_COMMUNIQUE_TIMER_CAMP                 = 28346, // Cast on npc_necrotic_shard on spawn? Periodically triggers 28345 Communique Trigger every 35 seconds.
    SPELL_COMMUNIQUE_TRIGGER                    = 28345, // Triggers 28281 SPELL_COMMUNIQUE_CAMP_TO_RELAY via void Spell::EffectDummy.
    SPELL_DAMAGE_CRYSTAL                        = 28041, // 100 Damage (Physical). Casted on itself, if 16143 (Shadow of Doom) spawns.
    SPELL_SOUL_REVIVAL                          = 28681, // Increases all damage caused by 10%.
    SPELL_CAMP_TYPE_GHOST_SKELETON              = 28197, // Camp Type, tells the NPC "Scourge Invasion Minion, finder" which Camp type the Shard has.
    SPELL_CAMP_TYPE_GHOST_GHOUL                 = 28198, // ""
    SPELL_CAMP_TYPE_GHOUL_SKELETON              = 28199, // ""
    SPELL_MINION_SPAWNER_SMALL                  = 27887, // Triggers 27885 (Disturb Minion Trap, small) every 5 seconds. Activates up to 3 unknown Objects wich spawns the Minions.
    SPELL_MINION_SPAWNER_BUTTRESS               = 27888, // Triggers 27886 (Disturb Minion Trap, Buttress) every 1 hour. Activates unknown Objects, They may also spawn the Cultists.
    SPELL_CHOOSE_CAMP_TYPE                      = 28201, // casted by Necrotic Shard.

    // Shard -> Relay
    SPELL_COMMUNIQUE_CAMP_TO_RELAY              = 28281, // Purple bolt Visual (SMALL)
    SPELL_COMMUNIQUE_CAMP_TO_RELAY_DEATH        = 28351, // Visual when Damaged Necrotic Shard dies.

    // Camp - Minion spawning system
    SPELL_FIND_CAMP_TYPE                        = 28203, // casted by Scourge Invasion Minion, finder.

    // Scourge Invasion Minion, spawner, Ghost/Ghoul
    SPELL_PH_SUMMON_MINION_TRAP_GHOST_GHOUL     = 27883,

    // Scourge Invasion Minion, spawner, Ghost/Skeleton
    SPELL_PH_SUMMON_MINION_TRAP_GHOST_SKELETON  = 28186,

    // Scourge Invasion Minion, spawner, Ghoul/Skeleton
    SPELL_PH_SUMMON_MINION_TRAP_GHOUL_SKELETON  = 28187,

    // Minions Spells
    SPELL_ZAP_CRYSTAL                           = 28032, // 15 damage to a Necrotic Shard on death.
    SPELL_MINION_SPAWN_IN                       = 28234, // Pink Lightning.
    SPELL_SPIRIT_SPAWN_OUT                      = 17680, // Makes invisible.
    SPELL_MINION_DESPAWN_TIMER                  = 28090, // Triggers 28091 (Despawner, self) every 150 seconds. Triggers 17680 SPELL_SPIRIT_SPAWN_OUT via void Spell::EffectDummy.
    SPELL_CONTROLLER_TIMER                      = 28095, // Triggers 28091 (Despawner, self) every 60 seconds for 1 hour. (Unknown who is casting this).
    SPELL_DESPAWNER_SELF                        = 28091, // Trigger from Spell above.
    SPELL_SUMMON_SCOURGE_CONTROLLER             = 28092,

    // Minion Abilities
    SPELL_SCOURGE_STRIKE                        = 28265, // Pink Lightning (Instakill).
    SPELL_ENRAGE                                = 8599,  // Used by 16141 (Ghoul Berserker).
    SPELL_BONE_SHARDS                           = 17014, // [shortest sniff CD: 16,583 seconds] Used by 16299 (Skeletal Shocktrooper).
    SPELL_INFECTED_BITE                         = 7367,  // [shortest sniff CD: 13,307 seconds] Used by 16141 (Ghoul Berserker).
    SPELL_DEMORALIZING_SHOUT                    = 16244, // [shortest sniff CD: 19,438 seconds] Used by 16298 (Spectral Soldier).
    SPELL_SUNDER_ARMOR                          = 21081, // [shortest sniff CD: 6,489 seconds] Used by 16298 (Spectral Soldier).
    SPELL_SHADOW_WORD_PAIN                      = 589,   // Used by 16438 (Skeletal Trooper).
    SPELL_DUAL_WIELD                            = 674,   // Used by Skeletal Soldier and Skeletal Shocktrooper.

    // Marks of the Dawn
    SPELL_CREATE_LESSER_MARK_OF_THE_DAWN        = 28319, // Create Lesser Mark of the Dawn.
    SPELL_CREATE_MARK_OF_THE_DAWN               = 28320, // Create Mark of the Dawn.
    SPELL_CREATE_GREATER_MARK_OF_THE_DAWN       = 28321, // Create Greater Mark of the Dawn.

    // Rare Minions
    SPELL_KNOCKDOWN                             = 16790, // Used by 14697 (Lumbering Horror).
    SPELL_TRAMPLE                               = 5568,  // Used by 14697 (Lumbering Horror).
    SPELL_AURA_OF_FEAR                          = 28313, // Used by 14697 (Lumbering Horror).
    SPELL_RIBBON_OF_SOULS                       = 16243, // [shortest sniff CD: 1,638 seconds] Used by 16379 (Spirit of the Damned).
    SPELL_PSYCHIC_SCREAM                        = 22884, // or 26042, used by 16379 (Spirit of the Damned).
    SPELL_MINION_DESPAWN_TIMER_UNCOMMON         = 28292, // Triggers 28091 (Despawner, self) every 10 minutes. Triggers 17680 SPELL_SPIRIT_SPAWN_OUT via void Spell::EffectDummy.
    SPELL_ARCANE_BOLT                           = 13748, /* 20720 Used by 16380 (Bone Witch).
                                                         https://classicdb.ch/?npc=16380#abilities says 13748 but 20720 is the only "Arcane Bolt" whichs requires no mana.
                                                         Danage is very high, so i guess it has a very long cd.
                                                         Spell description in the Bestiary is: Hurls a magical bolt at an enemy, inflicting Arcane damage.
                                                         */

    // Cultist Engineer
    SPELL_CREATE_SUMMONER_SHIELD                = 28132, // Summon Object - Temporary (181142),
                                                         // Casted exactly the same time with 28234 (Minion Spawn-in) on spawn.
    SPELL_BUTTRESS_CHANNEL                      = 28078, // Channeled by Cultist Engineer on Damaged Necrotic Shard shortly after spawning.
    SPELL_BUTTRESS_TRAP                         = 28054, // Unknown.
    SPELL_KILL_SUMMONER_SUMMON_BOSS             = 28250, // Reagents, 1 Necrotic Rune
                                                         
    // Probably used to spawn Shadow of Doom.   Casting sequence (All these [x] spells are being casted the following order within 1-2 seconds):
    SPELL_PH_KILL_SUMMONER_BUFF                 = 27852, // [1] Casted by Cultist on Player.
    SPELL_KILL_SUMMONER_WHO_WILL_SUMMON_BOSS    = 27894, // [2] Casted by Player on Cultist.
    SPELL_QUIET_SUICIDE                         = 3617,  // [3] Instakill, casted exactly same time as 31316 (Summon Boss Buff).
    SPELL_SUMMON_BOSS_BUFF                      = 31316, // [4] Summon Boss Buff, casted on Player
    SPELL_SUMMON_BOSS                           = 31315, /* [5] Reagents, 8 Necrotic Rune, Summon (Shadow of Doom) for 1 hour.
                                                             The question is: What happens after this hour if the Shadow of Doom despawns?
                                                             Do the cultists respawn and channeling again on the damaged shard or
                                                             Does the Necrotic crystal respawn without Cultists or Shadows of Doom?
                                                             */

    // Shadow of Doom
    SPELL_SPAWN_SMOKE                           = 10389, // Spawning Visual.
    SPELL_ZAP_CRYSTAL_CORPSE                    = 28056, // Casted on Shard if Shadow of Doom dies.
    SPELL_MINDFLAY                              = 16568,
    SPELL_FEAR                                  = 12542,

    // Pallid Horror - Patchwerk Terror (also uses: 28315)
    SPELL_SUMMON_CRACKED_NECROTIC_CRYSTAL       = 28424, // Alliance.
    SPELL_SUMMON_FAINT_NECROTIC_CRYSTAL         = 28699, // Horde.
    SPELL_DAMAGE_VS_GUARDS                      = 28364, // [shortest sniff CD: 11 seconds, longest 81 sec] hits 13839 (Royal Dreadguard).

    // Flameshocker (also uses: 28234, 17680)
    SPELL_FLAMESHOCKERS_TOUCH                   = 28314, // [shortest sniff CD: 30 seconds]
    SPELL_FLAMESHOCKERS_REVENGE                 = 28323, // On death. 
    SPELL_FLAMESHOCKERS_TOUCH2                  = 28329, // [shortest sniff CD: 30 seconds]
    SPELL_FLAMESHOCKER_IMMOLATE_VISUAL          = 28330

    /*
    These spells are not used by any NPCs or GameObjects.
    The [PH] in the name means it's a placeholder. Blizzard often adds that to the names of things they add to the game but haven't finalized.
    The fact that the [PH] is still there means the quest was never finished. (Google)
        SPELL_PH_SUMMON_MINION_PARENT_GHOST_GHOUL       = 28183,
        SPELL_PH_SUMMON_MINION_PARENT_GHOST_SKELETON    = 28184,
        SPELL_PH_SUMMON_MINION_PARENT_GHOUL_SKELETON    = 28185,
        SPELL_PH_GET_TOKEN                              = 27922, // Create Item "Necrotic Rune".
        SPELL_PH_BUTTRESS_ACTIVATOR                     = 28086,
        SPELL_PH_CRYSTAL_CORPSE_DESPAWN                 = 28020,
        SPELL_PH_CRYSTAL_CORPSE_TIMER                   = 28018, // Triggers 28020 ([PH] Crystal Corpse Despawn) after 2 hours.
        SPELL_PH_CYSTAL_BAZOOKA                         = 27849,
        SPELL_PH_SUMMON_BUTTRESS                        = 28024, // Summon (Cultist Engineer) for 1 hour.
        SPELL_DND_SUMMON_CRYSTAL_MINION_FINDER          = 28227,
    */
};

enum ScourgeInvasionNPC
{
    // Mouth of Kel'Thuzad
    NPC_MOUTH_OF_KELTHUZAD                              = 16995,

    // Visible NPCs
    NPC_NECROTIC_SHARD                                  = 16136,
    NPC_DAMAGED_NECROTIC_SHARD                          = 16172,
    NPC_CULTIST_ENGINEER                                = 16230,
    NPC_SHADOW_OF_DOOM                                  = 16143,

    // Camp Helpers (invisible)
    NPC_SCOURGE_INVASION_MINION_FINDER                  = 16356, // Casting 28203 (Find Camp Type).
    NPC_SCOURGE_INVASION_MINION_SPAWNER_GHOST_GHOUL     = 16306,
    NPC_SCOURGE_INVASION_MINION_SPAWNER_GHOST_SKELETON  = 16336,
    NPC_SCOURGE_INVASION_MINION_SPAWNER_GHOUL_SKELETON  = 16338,

    // Necropolis Helpers (invisible)
    NPC_NECROPOLIS                                      = 16401,
    NPC_NECROPOLIS_HEALTH                               = 16421,
    NPC_NECROPOLIS_PROXY                                = 16398,
    NPC_NECROPOLIS_RELAY                                = 16386,

    // Minions
    NPC_SKELETAL_SHOCKTROOPER                           = 16299,
    NPC_GHOUL_BERSERKER                                 = 16141,
    NPC_SPECTRAL_SOLDIER                                = 16298,

    // Rare Minions
    NPC_LUMBERING_HORROR                                = 14697,
    NPC_BONE_WITCH                                      = 16380,
    NPC_SPIRIT_OF_THE_DAMNED                            = 16379,

    // 50 Zones cleared
    NPC_ARGENT_DAWN_INITIATE                            = 16384,
    NPC_ARGENT_DAWN_CLERIC                              = 16435,
    // 100 Zones cleared
    NPC_ARGENT_DAWN_PRIEST                              = 16436,
    NPC_ARGENT_DAWN_PALADIN                             = 16395,
    // 150 Zones cleared
    NPC_ARGENT_DAWN_CRUSADER                            = 16433,
    NPC_ARGENT_DAWN_CHAMPION                            = 16434,

    // Low level Minions
    NPC_SKELETAL_TROOPER                                = 16438,
    NPC_SPECTRAL_SPIRIT                                 = 16437,
    NPC_SKELETAL_SOLDIER                                = 16422,
    NPC_SPECTRAL_APPARITATION                           = 16423,

    // Stormwind - Undercity Attacks https://www.youtube.com/watch?v=c0QjLqHVPRU&t=17s
    NPC_PALLID_HORROR                                   = 16394,
    NPC_PATCHWORK_TERROR                                = 16382,
    NPC_CRACKED_NECROTIC_CRYSTAL                        = 16431,
    NPC_FAINT_NECROTIC_CRYSTAL                          = 16531,
    NPC_FLAMESHOCKER                                    = 16383,
    NPC_HIGHLORD_BOLVAR_FORDRAGON                       = 1748,
    NPC_LADY_SYLVANAS_WINDRUNNER                        = 10181,
    NPC_VARIMATHRAS                                     = 2425,
    NPC_ROYAL_DREADGUARD                                = 13839,
    NPC_STORMWIND_ROYAL_GUARD                           = 1756,
    NPC_UNDERCITY_ELITE_GUARDIAN                        = 16432,
    NPC_UNDERCITY_GUARDIAN                              = 5624,
    NPC_DEATHGUARD_ELITE                                = 7980,
    NPC_STORMWIND_CITY_GUARD                            = 68,
    NPC_STORMWIND_ELITE_GUARD                           = 16396,

    // Citizens
    NPC_RENATO_GALLINA                                  = 1432,
    NPC_MICHAEL_GARRETT                                 = 4551,
    NPC_HANNAH_AKELEY                                   = 4575,
    NPC_INNKEEPER_NORMAN                                = 6741,
    NPC_OFFICER_MALOOF                                  = 15766,
    NPC_STEPHANIE_TURNER                                = 6174,
    NPC_THOMAS_MILLER                                   = 3518,
    NPC_WILLIAM_MONTAGUE                                = 4549
};

enum ScourgeInvasionMisc
{
    ITEM_NECROTIC_RUNE                                  = 22484,

    // Invisible Objects
    GOBJ_BUTTRESS_TRAP                                  = 181112, // [Guessed] Those objects can't be sniffed and are not available in any database.

    GOBJ_SUMMON_MINION_TRAP_GHOST_GHOUL                 = 181111, // Object is not in sniffed files or any database such as WoWHead, but spell 28196 (Create Minion Trap: Ghost/Skeleton) should probably summon them.
    GOBJ_SUMMON_MINION_TRAP_GHOST_SKELETON              = 181155, // ""
    GOBJ_SUMMON_MINION_TRAP_GHOUL_SKELETON              = 181156, // ""

    // Visible Objects
    GOBJ_SUMMON_CIRCLE                                  = 181136,
    GOBJ_SUMMONER_SHIELD                                = 181142,

    GOBJ_UNDEAD_FIRE                                    = 181173,
    GOBJ_UNDEAD_FIRE_AURA                               = 181174,
    GOBJ_SKULLPILE_01                                   = 181191,
    GOBJ_SKULLPILE_02                                   = 181192,
    GOBJ_SKULLPILE_03                                   = 181193,
    GOBJ_SKULLPILE_04                                   = 181194,

    GOBJ_NECROPOLIS_TINY                                = 181154, // Necropolis (scale 1.0).
    GOBJ_NECROPOLIS_SMALL                               = 181373, // Necropolis (scale 1.5).
    GOBJ_NECROPOLIS_MEDIUM                              = 181374, // Necropolis (scale 2.0).
    GOBJ_NECROPOLIS_BIG                                 = 181215, // Necropolis (scale 2.5).
    GOBJ_NECROPOLIS_HUGE                                = 181223, // Necropolis (scale 3.5).
    GOBJ_NECROPOLIS_CITY                                = 181172, // Necropolis at the Citys (scale 2.5).

    // These timers may fail if you set it under 1 minute.
    ZONE_ATTACK_TIMER_MIN                               = 60 * 45, // 45 min.
    ZONE_ATTACK_TIMER_MAX                               = 60 * 60, // 60 min.
    CITY_ATTACK_TIMER_MIN                               = 60 * 45, // 45 min.
    CITY_ATTACK_TIMER_MAX                               = 60 * 60, // 60 min.

    ZONEID_WINTERSPRING                                 = 618,
    ZONEID_AZSHARA                                      = 16,
    ZONEID_EASTERN_PLAGUELANDS                          = 139,
    ZONEID_BLASTED_LANDS                                = 4,
    ZONEID_BURNING_STEPPES                              = 46,
    ZONEID_TANARIS                                      = 440,
    ZONEID_UNDERCITY                                    = 1497,
    ZONEID_STORMWIND                                    = 1519,

    GAME_EVENT_SCOURGE_INVASION                         = 17,
    GAME_EVENT_SCOURGE_INVASION_WINTERSPRING            = 90,
    GAME_EVENT_SCOURGE_INVASION_TANARIS                 = 91,
    GAME_EVENT_SCOURGE_INVASION_AZSHARA                 = 92,
    GAME_EVENT_SCOURGE_INVASION_BLASTED_LANDS           = 93,
    GAME_EVENT_SCOURGE_INVASION_EASTERN_PLAGUELANDS     = 94,
    GAME_EVENT_SCOURGE_INVASION_BURNING_STEPPES         = 95,
    GAME_EVENT_SCOURGE_INVASION_50_INVASIONS            = 96,
    GAME_EVENT_SCOURGE_INVASION_100_INVASIONS           = 97,
    GAME_EVENT_SCOURGE_INVASION_150_INVASIONS           = 98,
    GAME_EVENT_SCOURGE_INVASION_INVASIONS_DONE          = 99
};

enum ScourgeInvasionNPCEvents
{
    EVENT_SHARD_MINION_SPAWNER_SMALL        = 1,
    EVENT_SHARD_MINION_SPAWNER_BUTTRESS     = 2,
    EVENT_SPAWNER_SUMMON_MINION             = 3,
    EVENT_SHARD_FIND_DAMAGED_SHARD          = 4,
    EVENT_CULTIST_CHANNELING                = 5,
    EVENT_MOUTH_OF_KELTHUZAD_YELL           = 6,
    EVENT_MOUTH_OF_KELTHUZAD_ZONE_START     = 7,
    EVENT_MOUTH_OF_KELTHUZAD_ZONE_STOP      = 8,
    EVENT_MOUTH_OF_KELTHUZAD_UPDATE         = 9,

    // Shadow of Doom Events
    EVENT_DOOM_MINDFLAY                     = 20,
    EVENT_DOOM_FEAR                         = 21,
    EVENT_DOOM_START_ATTACK                 = 22,

    // Rare Events 
    EVENT_RARE_KNOCKDOWN                    = 31,
    EVENT_RARE_TRAMPLE                      = 32,
    EVENT_RARE_RIBBON_OF_SOULS              = 33,

    // Minion Events
    EVENT_MINION_ENRAGE                     = 40,
    EVENT_MINION_BONE_SHARDS                = 41,
    EVENT_MINION_INFECTED_BITE              = 42,
    EVENT_MINION_DAZED                      = 43,
    EVENT_MINION_DEMORALIZING_SHOUT         = 44,
    EVENT_MINION_SUNDER_ARMOR               = 45,
    EVENT_MINION_ARCANE_BOLT                = 46,
    EVENT_MINION_PSYCHIC_SCREAM             = 47,
    EVENT_MINION_SCOURGE_STRIKE             = 48,
    EVENT_MINION_SHADOW_WORD_PAIN           = 49,
    EVENT_MINION_FLAMESHOCKERS_TOUCH        = 50,
    EVENT_MINION_FLAMESHOCKERS_DESPAWN      = 51,

    // Pallid Horror Events 
    EVENT_PALLID_RANDOM_YELL                = 52,
    EVENT_PALLID_SPELL_DAMAGE_VS_GUARDS     = 53,
    EVENT_SYLVANAS_ANSWER_YELL              = 54,
    EVENT_PALLID_RANDOM_SAY                 = 55,
    EVENT_PALLID_SUMMON_FLAMESHOCKER        = 56
};

enum ScourgeInvasionWorldStatesVariables
{
    // Worldstates
    WORLDSTATE_WINTERSPRING                     = 0x08D3, // 2259 - Icon on map.
    WORLDSTATE_AZSHARA                          = 0x08D4, // 2260 - Icon on map.
    WORLDSTATE_EASTERN_PLAGUELANDS              = 0x08D8, // 2264 - Icon on map.
    WORLDSTATE_BLASTED_LANDS                    = 0x08D5, // 2261 - Icon on map.
    WORLDSTATE_BURNING_STEPPES                  = 0x08D6, // 2262 - Icon on map.
    WORLDSTATE_TANARIS                          = 0x08D7, // 2263 - Icon on map.

    WORLDSTATE_SI_BATTLES_WON                   = 2219, // We have won $2219W battles against the Scourge.  Gird yourself, $n, for this war is far from over. & We have won $2219W battles against the Scourge.  Take heart, $n.  While many battles lie ahead, heroes, heroes from every realm have risen to fight them. & We have won $2219W battles against the Scourge.  Stand firm, $n!  We must persevere!
    WORLDSTATE_SI_AZSHARA_REMAINING             = 2279, // The Scourge infestation grows in Azshara. Every able bodied warrior is needed to stem the tide of their invasion.$B$BNumber of Necropolises remaining: $2279W
    WORLDSTATE_SI_BLASTED_LANDS_REMAINING       = 2280, // The Scourge infestation grows in the Blasted Lands. Every able bodied warrior is needed to stem the tide of their invasion.$B$BNumber of Necropolises remaining: $2280W
    WORLDSTATE_SI_BURNING_STEPPES_REMAINING     = 2281, // If additional support is not soon sent to the Burning Steppes, I fear the Scourge will establish a base of operations there. If you can, you should go there to aid the defenders.$B$BNumber of Necropolises remaining: $2281W
    WORLDSTATE_SI_EASTERN_PLAGUELANDS           = 2282, // The Scourge infestation grows in the Eastern Plaguelands. Every able bodied warrior is needed to stem the tide of their invasion.$B$BNumber of Necropolises remaining: $2282W
    WORLDSTATE_SI_TANARIS                       = 2283, // It seems the army of the Scourge has come to Tanaris. A significant number of their necropolises and other forces have been dispatched there.$B$BNumber of Necropolises remaining: $2283W
    WORLDSTATE_SI_WINTERSPRING                  = 2284, // Indeed, the hills of Winterspring are currently attempting to withstand a renewed Scourge assault. Your assistance would help them greatly.$B$BNumber of Necropolises remaining: $2284W

    // Variables
    VARIABLE_TANARIS_ATTACK_TIME                = (GAME_EVENT_SCOURGE_INVASION * 1000) + ZONEID_TANARIS,
    VARIABLE_BLASTED_LANDS_ATTACK_TIME          = (GAME_EVENT_SCOURGE_INVASION * 1000) + ZONEID_BLASTED_LANDS,
    VARIABLE_EASTERN_PLAGUELANDS_ATTACK_TIME    = (GAME_EVENT_SCOURGE_INVASION * 1000) + ZONEID_EASTERN_PLAGUELANDS,
    VARIABLE_BURNING_STEPPES_ATTACK_TIME        = (GAME_EVENT_SCOURGE_INVASION * 1000) + ZONEID_BURNING_STEPPES,
    VARIABLE_WINTERSPRING_ATTACK_TIME           = (GAME_EVENT_SCOURGE_INVASION * 1000) + ZONEID_WINTERSPRING,
    VARIABLE_AZSHARA_ATTACK_TIME                = (GAME_EVENT_SCOURGE_INVASION * 1000) + ZONEID_AZSHARA,
    VARIABLE_SI_ATTACK_COUNT                    = (GAME_EVENT_SCOURGE_INVASION * 1000) + 0,
    VARIABLE_SI_LAST_ATTACK_ZONE                = (GAME_EVENT_SCOURGE_INVASION * 1000) + 1,
    VARIABLE_SI_UNDERCITY_TIME                  = (GAME_EVENT_SCOURGE_INVASION * 10000) + ZONEID_UNDERCITY,
    VARIABLE_SI_STORMWIND_TIME                  = (GAME_EVENT_SCOURGE_INVASION * 10000) + ZONEID_STORMWIND,

    VARIABLE_SI_WINTERSPRING_REMAINING          = (GAME_EVENT_SCOURGE_INVASION * 1000) + GAME_EVENT_SCOURGE_INVASION_WINTERSPRING,
    VARIABLE_SI_AZSHARA_REMAINING               = (GAME_EVENT_SCOURGE_INVASION * 1000) + GAME_EVENT_SCOURGE_INVASION_AZSHARA,
    VARIABLE_SI_EASTERN_PLAGUELANDS_REMAINING   = (GAME_EVENT_SCOURGE_INVASION * 1000) + GAME_EVENT_SCOURGE_INVASION_EASTERN_PLAGUELANDS,
    VARIABLE_SI_BLASTED_LANDS_REMAINING         = (GAME_EVENT_SCOURGE_INVASION * 1000) + GAME_EVENT_SCOURGE_INVASION_BLASTED_LANDS,
    VARIABLE_SI_BURNING_STEPPES_REMAINING       = (GAME_EVENT_SCOURGE_INVASION * 1000) + GAME_EVENT_SCOURGE_INVASION_BURNING_STEPPES,
    VARIABLE_SI_TANARIS_REMAINING               = (GAME_EVENT_SCOURGE_INVASION * 1000) + GAME_EVENT_SCOURGE_INVASION_TANARIS
};

enum ScourgeInvasionQuests
{
    QUEST_UNDER_THE_SHADOW                      = 9153,
    QUEST_CRACKED_NECROTIC_CRYSTAL              = 9292,
    QUEST_FAINT_NECROTIC_CRYSTAL                = 9310
};

enum ScourgeInvasionLang
{
    // Pallid Horror random yelling every 65-300 seconds
    BCT_PALLID_HORROR_YELL1                            = 12329, // What?  This not Naxxramas!  We not like this place... destroy!
    BCT_PALLID_HORROR_YELL2                            = 12327, // Raaarrrrggghhh!  We come for you!
    BCT_PALLID_HORROR_YELL3                            = 12326, // Kel'Thuzad say to tell you... DIE!
    BCT_PALLID_HORROR_YELL4                            = 12342, // Why you run away? We make your corpse into Scourge.
    BCT_PALLID_HORROR_YELL5                            = 12343, // No worry, we find you.
    BCT_PALLID_HORROR_YELL6                            = 12330, // You spare parts!  We make more Scourge in necropolis.
    BCT_PALLID_HORROR_YELL7                            = 12328, // Hahaha, your guards no match for Scourge!
    BCT_PALLID_HORROR_YELL8                            = 12325, // We come destroy puny ones!

    // Undercity Guardian
    BCT_UNDERCITY_GUARDIAN_ROGUES_QUARTER              = 12336, // Rogues' Quarter attacked by Scourge!  Help!
    BCT_UNDERCITY_GUARDIAN_MAGIC_QUARTER               = 12335, // Scourge attack Magic Quarter!
    BCT_UNDERCITY_GUARDIAN_TRADE_QUARTER               = 12353, // There Scourge outside Trade Quarter!
    BCT_UNDERCITY_GUARDIAN_SEWERS                      = 12334, // Scourge in sewers!  We need help!

    // Undercity Elite Guardian
    BCT_UNDERCITY_ELITE_GUARDIAN_1                     = 12354, // Scourge inside Trade Quarter!  Destroy!

    // Royal Dreadguard
    BCT_UNDERCITY_ROYAL_DREADGUARD_1                   = 12337, // The Scourge are at the entrance to the Royal Quarter!  Kill them!!

    // Varimathras
    BCT_UNDERCITY_VARIMATHRAS_1                        = 12333, // Dreadguard, hold your line.  Halt the advance of those Scourge!

    // Lady Sylvanas Windrunner
    BCT_UNDERCITY_SYLVANAS_1                           = 12331, // The Scourge attack against my court has been eliminated.  You may go about your business.
    BCT_UNDERCITY_SYLVANAS_2                           = 12332, // My Royal Dreadguard, you will deal with this matter as befits your station.  That, or you will wish that you had.

    // Citizens
    BCT_UNDERCITY_RANDOM_1                             = 12355, // Scourge spotted nearby!
    BCT_STORMWIND_RANDOM_1                             = 12366, // Scourge spotted nearby! Renato Gallina
    BCT_UNDERCITY_RANDOM_2                             = 12356, // I just saw a Scourge!  Kill it!
    BCT_STORMWIND_RANDOM_2                             = 12367, // I just saw a Scourge!  Kill it! Thomas Miller
    BCT_UNDERCITY_RANDOM_3                             = 12357, // Did you see that?  There's a Scourge over there! Michael Garrett, Hannah Akeley
    BCT_STORMWIND_RANDOM_3                             = 12368, // Did you see that?  There's a Scourge over there! Thomas Miller
    BCT_UNDERCITY_RANDOM_4                             = 12359, // There's one of the Scourge, right over there! Innkeeper Norman, Michael Garrett
    BCT_STORMWIND_RANDOM_4                             = 12370, // There's one of the Scourge, right over there!
    BCT_UNDERCITY_RANDOM_5                             = 12357, // Did you see that?  There's a Scourge over there! Michael Garrett, Hannah Akeley
    BCT_STORMWIND_RANDOM_5                             = 12368, // Did you see that?  There's a Scourge over there! Thomas Miller
    BCT_UNDERCITY_RANDOM_6                             = 12361, // Will these unrelenting Scourge attacks never end? Innkeeper Norman, William Montague
    BCT_STORMWIND_RANDOM_6                             = 12372, // Will these unrelenting Scourge attacks never end?
    BCT_UNDERCITY_RANDOM_7                             = 12360, // This has gone too far.  How dare the Scourge attack Undercity!  Destroy it before more come! Innkeeper Norman
    BCT_STORMWIND_RANDOM_7                             = 12371, // This has gone too far.  How dare the Scourge attack Stormwind!  Destroy it before more come! Stephanie Turner
    BCT_UNDERCITY_RANDOM_8                             = 12362, // Destroy the Scourge invader now, before it's too late! Michael Garrett
    BCT_STORMWIND_RANDOM_8                             = 12373, // Destroy the Scourge invader now, before it's too late! Officer Maloof
    BCT_UNDERCITY_RANDOM_9                             = 12358, // How can I get anything done with the Scourge running amok in here?! Innkeeper Norman
    BCT_STORMWIND_RANDOM_9                             = 12369, // How can I get anything done with the Scourge running amok around here?! Stephanie Turner

    // Stormwind City Guard
    BCT_STORMWIND_CITY_GUARD_1                         = 12310, // To arms!  Scourge spotted in the Cathedral of Light!
    BCT_STORMWIND_CITY_GUARD_2                         = 12311, // Scourge in the Trade District!  Have at them!
    BCT_STORMWIND_CITY_GUARD_3                         = 12315, // Light help us... the Scourge are in the Park!

    // Stormwind Royal Guard
    BCT_STORMWIND_CITY_GUARD_4                         = 12316, // The Scourge are at the castle entrance!  For Stormwind!  For King Anduin!

    // Highlord Bolvar Fordragon?
    BCT_STORMWIND_BOLVAR_1                             = 12317, // Hold the line!  Protect the King at all costs!
    BCT_STORMWIND_BOLVAR_2                             = 12318, // Good work, one and all!  The Scourge at the castle have been defeated.

    // Misc
    BCT_CULTIST_ENGINEER_OPTION                        = 12112, // Use 8 necrotic runes and disrupt his ritual.
    BCT_GIVE_MAGIC_ITEM_OPTION                         = 12302, // Give me one of your magic items.
    BCT_SHADOW_OF_DOOM_TEXT_0                          = 12420, // Our dark master has noticed your trifling, and sends me to bring a message... of doom!
    BCT_SHADOW_OF_DOOM_TEXT_1                          = 12421, // These heroics mean nothing, $c.  Your future is sealed and your soul is doomed to servitude!
    BCT_SHADOW_OF_DOOM_TEXT_2                          = 12422, // Your battle here is but the smallest mote of a world wide invasion, whelp!  It is time you learned of the powers you face!
    BCT_SHADOW_OF_DOOM_TEXT_3                          = 12243, // You will not stop our deepening shadow, $c.  Now... join us!  Join the ranks of the Chosen!
    BCT_MOUTH_OF_KELTHUZAD_ZONE_ATTACK_START_1         = 13121, // Spawn.
    BCT_MOUTH_OF_KELTHUZAD_ZONE_ATTACK_START_2         = 13125, // Spawn. 53 min between 2-3 in sniffs.
    BCT_MOUTH_OF_KELTHUZAD_ZONE_ATTACK_ENDS_1          = 13165, // Despawn.
    BCT_MOUTH_OF_KELTHUZAD_ZONE_ATTACK_ENDS_2          = 13164, // Despawn.
    BCT_MOUTH_OF_KELTHUZAD_ZONE_ATTACK_ENDS_3          = 13163, // Despawn.
    BCT_MOUTH_OF_KELTHUZAD_RANDOM_1                    = 13126, // Random.
    BCT_MOUTH_OF_KELTHUZAD_RANDOM_2                    = 13124, // Random.
    BCT_MOUTH_OF_KELTHUZAD_RANDOM_3                    = 13122, // 180 seconds between 5-6 in sniffs.
    BCT_MOUTH_OF_KELTHUZAD_RANDOM_4                    = 13123, // Random. 30 min between 8-2 in sniffs.
    BCT_ARGENT_EMISSARY_OPTION_0                       = 12176, // What's happening?
    BCT_ARGENT_EMISSARY_OPTION_1                       = 12207, // What can I do?
    BCT_ARGENT_EMISSARY_OPTION_2                       = 12434, // Where are we battling the Scourge?
    BCT_ARGENT_EMISSARY_OPTION_2_SUB_OPTION_0          = 12198, // Is Winterspring currently under attack?
    BCT_ARGENT_EMISSARY_OPTION_2_SUB_OPTION_1          = 12201, // Is Tanaris currently under attack?
    BCT_ARGENT_EMISSARY_OPTION_2_SUB_OPTION_2          = 12203, // Are the Blasted Lands currently under attack?
    BCT_ARGENT_EMISSARY_OPTION_2_SUB_OPTION_3          = 12205, // Are the Burning Steppes currently under attack?
    BCT_ARGENT_EMISSARY_OPTION_2_SUB_OPTION_4          = 12476, // Is Azshara currently under attack?
    BCT_ARGENT_EMISSARY_OPTION_2_SUB_OPTION_5          = 12477, // Are the Eastern Plaguelands currently under attack?
    BCT_ARGENT_EMISSARY_OPTION_3                       = 12398, // How many battles have we won?
    BCT_ARGENT_EMISSARY_OPTION                         = 12478, // I have another question.

    BCT_CULTIST_ENGINEER_GOSSIP                        = 8436, // 12111 - This cultist is in a deep trance...
    BCT_ARGENT_DAWN_GOSSIP_150_WINS                    = 8525, // 12299 - The battle is won. For the time being, the Scourge threat has been pushed back. Our resources can be channeled into aiding you, in thanks and preparation for the future.
    BCT_ARGENT_DAWN_GOSSIP_100_WINS                    = 8526, // 12300 - The battle goes well. The Scourge forces seem weakened. I believe it will only be a matter of time before we drive them from our shores. I will turn my magics to you, to aid in this struggle.
    BCT_ARGENT_DAWN_GOSSIP_50_WINS                     = 8527, // 12301 - The first steps of our fight against the Scourge go well. We have had some successes, and hopefully my assistance can aid you in bringing future success to the battle.
    BCT_ARGENT_EMISSARY_GOSSIP                         = 8434, // 12109 - The time has come for Horde and Alliance to look towards Northrend and the invasion of the Lich King. In recent days, territories across Kalimdor and the Eastern Kingdoms have come under attack. Will you take up arms to save your land from destruction at their hands?
    BCT_ARGENT_EMISSARY_AWNSER_0                       = 8471, // 12180 - The tides of war have come again. From the cold north, the Lich King's necropolises have laid siege to
    BCT_ARGENT_EMISSARY_AWNSER_1                       = 8486, // 12209 - The Scourge are establishing small staging points in the places under attack, receiving communications and other assistance from the necropolises that fly overhead. From what we can tell, the only way to root them out is by killing the ground forces that surround the points.
    BCT_ARGENT_EMISSARY_AWNSER_2                       = 8573, // 12435 - The Lich King brought only small forces to bear against each of Azeroth's capital cities, while their main forces periodically attack the following lands:$B$BAzshara, the Blasted Lands, the Burning Steppes, the Tanaris Desert, the Eastern Plaguelands and Winterspring.
    BCT_ARGENT_EMISSARY_AWNSER_2_SUB_OPTION_0          = 8480, // 12199 - Indeed, the hills of Winterspring are currently attempting to withstand a renewed Scourge assault.Your assistance would help them greatly.$B$BNumber of Necropolises remaining : $2284W
    BCT_ARGENT_EMISSARY_AWNSER_2_SUB_OPTION_1          = 8482, // 12202 - It seems the army of the Scourge has come to Tanaris. A significant number of their necropolises and other forces have been dispatched there.$B$BNumber of Necropolises remaining: $2283W
    BCT_ARGENT_EMISSARY_AWNSER_2_SUB_OPTION_2          = 8483, // 12204 - The Scourge infestation grows in the Blasted Lands. Every able bodied warrior is needed to stem the tide of their invasion.$B$BNumber of Necropolises remaining: $2280W
    BCT_ARGENT_EMISSARY_AWNSER_2_SUB_OPTION_3          = 8484, // 12206 - If additional support is not soon sent to the Burning Steppes, I fear the Scourge will establish a base of operations there. If you can, you should go there to aid the defenders.$B$BNumber of Necropolises remaining: $2281W
    BCT_ARGENT_EMISSARY_AWNSER_2_SUB_OPTION_4          = 8593, // 12474 - The Scourge infestation grows in Azshara. Every able bodied warrior is needed to stem the tide of their invasion.$B$BNumber of Necropolises remaining: $2279W
    BCT_ARGENT_EMISSARY_AWNSER_2_SUB_OPTION_5          = 8594, // 12475 - The Scourge infestation grows in the Eastern Plaguelands. Every able bodied warrior is needed to stem the tide of their invasion.$B$BNumber of Necropolises remaining: $2282W
    BCT_ARGENT_EMISSARY_AWBSER_3_0                     = 8551, // 12399 - We have won $2219W battles against the Scourge.  Gird yourself, $n, for this war is far from over.
    BCT_ARGENT_EMISSARY_AWBSER_3_1                     = 8554, // 12402 - We have won $2219W battles against the Scourge.  Take heart, $n.  While many battles lie ahead, heroes, heroes from every realm have risen to fight them.
    BCT_ARGENT_EMISSARY_AWBSER_3_2                     = 8555, // 12403 - We have won $2219W battles against the Scourge.  Stand firm, $n!  We must persevere!
    BCT_ARGENT_EMISSARY_FREE_OF_SCOURGE                = 8481  // For the time being, that area is free of Scourge influence. I fear it will only be a matter of time before they return.
};
