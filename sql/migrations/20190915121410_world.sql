replace into migrations values (20190915121410);

set @height = -46;
truncate table miraclerace_checkpoint;
replace into miraclerace_checkpoint (raceid, positionx, positiony, positionz, cameraposx, cameraposy, cameraposz) values
(1, -6201.01, -3901.35, -60.2815, -6201.01, -3901.35, @height),
(1, -6358.91, -3902.69, -62.2377, -6358.91, -3902.69, @height),
(1, -6430.95, -3998.23, -62.8418, -6430.95, -3998.23, @height),
(1, -6399.89, -4167.54, -63.0010, -6399.89, -4167.54, @height),
(1, -6276.93, -4211.54, -61.5375, -6276.93, -4211.54, @height),
(1, -6139.69, -4188.55, -62.2672, -6139.69, -4188.55, @height),
(1, -6032.51, -4195.18, -62.5750, -6032.51, -4195.18, @height),
(1, -5922.14, -4200.73, -62.7331, -5922.14, -4200.73, @height),
(1, -5757.89, -4186.62, -61.4904, -5757.89, -4186.62, @height),
(1, -5647.06, -4084.18, -61.3742, -5647.06, -4084.18, @height),
(1, -5650.55, -3918.05, -61.4841, -5650.55, -3918.05, @height),
(1, -5732.75, -3792.44, -60.7805, -5732.75, -3792.44, @height),
(1, -5864.30, -3789.30, -60.2010, -5864.30, -3789.30, @height),
(1, -5996.42, -3852.06, -60.5732, -5996.42, -3852.06, @height),
(1, -6146.15, -3902.03, -59.8756, -6146.15, -3902.03, @height);

-- Race Spectator:
replace into creature_template (entry, patch, display_id1, display_id2, display_id3, display_id4, name, subname, gossip_menu_id, level_min, level_max, health_min, health_max, mana_min, mana_max, armor, faction, npc_flags, speed_walk, speed_run, scale, detection_range, call_for_help_range, leash_range, rank, xp_multiplier, dmg_min, dmg_max, dmg_school, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, unit_class, unit_flags, dynamic_flags, beast_family, trainer_type, trainer_spell, trainer_class, trainer_race, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, type_flags, loot_id, pickpocket_loot_id, skinning_loot_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spell_id1, spell_id2, spell_id3, spell_id4, spell_list_id, pet_spell_list_id, gold_min, gold_max, ai_name, movement_type, inhabit_type, civilian, racial_leader, regeneration, equipment_id, trainer_id, vendor_id, mechanic_immune_mask, school_immune_mask, flags_extra, script_name) values 
(50523, 0, 11676, 11689, 11691, 10620, 'Race Spectator', '', 0, 5, 5, 112, 112, 0, 0, 120, 35, 0, 0.92, 1.14286, 1, 20, 5, 0, 0, 1.8, 15, 21, 0, 0, 1.9, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 5, 8, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, ''),
(50524, 0, 7214, 7218, 7219, 7231, 'Race Spectator', '', 0, 5, 5, 112, 112, 0, 0, 120, 35, 0, 0.92, 1.14286, 1, 20, 5, 0, 0, 1.8, 15, 21, 0, 0, 1.9, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 5, 8, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, ''),
(50525, 0, 5435, 5433, 5424, 5451, 'Race Spectator', '', 0, 5, 5, 112, 112, 0, 0, 120, 35, 0, 0.92, 1.14286, 1, 20, 5, 0, 0, 1.8, 15, 21, 0, 0, 1.9, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 5, 8, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, ''),
(50526, 0, 5530, 5531, 5532, 5545, 'Race Spectator', '', 0, 5, 5, 112, 112, 0, 0, 120, 35, 0, 0.92, 1.14286, 1, 20, 5, 0, 0, 1.8, 15, 21, 0, 0, 1.9, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 5, 8, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, '');
-- /cheer
replace into creature_template_addon (entry, emote) values ('50523', '4'),('50524', '4'),('50525', '4'),('50526', '4');

-- Ironaya and Archaedas texts:
delete from script_texts where entry = -1070000;
update broadcast_text set Sound = 5851, type = 1 where ID = 3261;
update broadcast_text set Sound = 5855, type = 1 where ID = 3400;
update broadcast_text set Sound = 5856, type = 1 where ID = 6536;
update broadcast_text set Sound = 5857, type = 1 where ID = 6537;
update broadcast_text set Sound = 5858, type = 1 where ID = 6215;

-- Fix crash on script loading: 
delete from creature_movement_scripts where command = 79;

-- Miracle Raceway quest rewards: