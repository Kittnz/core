delete from event_scripts where id in (6607, 12731, 12732, 12733, 12734, 12735, 12736, 12737, 12738, 12739, 12740, 12741, 12742, 33820, 33821, 33822, 33823, 33824, 33825, 33826, 33827, 33828, 33829, 33830, 33831);

delete from creature_ai_events where id in (2200011, 2200012, 2200013, 1487102);
delete from creature_ai_scripts where id in (3001531, 3001532, 3001533, 16777215);

update creature_template set faction = 35 where entry in (60348, 60349, 60350, 60351, 60352, 60353);

update creature set wander_distance = 0 where guid in (2571582, 2571583, 2571584, 2571585);

update creature_template set script_name = '' where entry = 9563;

delete from quest_template where entry = 787;
delete from creature_questrelation where quest = 787;
delete from creature_involvedrelation where quest = 787;

update creature_template_addon set mount = 0 where entry = 60765;

delete from spell_chain where spell_id in (45961, 3036, 3037, 3038, 3668);

update gameobject set spawntimesecsmin = 180, spawntimesecsmax = 180, spawn_flags = 0, animprogress = 100 where guid = 20326;

delete from spell_threat where entry in (19850, 19852, 19853, 19854, 25290, 25918, 25918);

replace into conditions (condition_entry, type, value1, value2, value3, value4, flags) values (16053, 41, 10, 2, 0, 0, 0);
																					  
delete from spell_script_target where targetentry = 80829;                            
																					  
replace into conditions (condition_entry, type, value1, value2, value3, value4, flags) values (392, 7, 202, 125, 0, 0, 0);
replace into conditions (condition_entry, type, value1, value2, value3, value4, flags) values (393, 7, 202, 200, 0, 0, 0);

replace into gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state, spawn_flags, visibility_mod) values (32373, 90566, 0, -4861.05, 740.452, 249.389, 1.49226, 0, 0, 0.678801, 0.734323, 180, 180, 100, 1, 0, 0);

delete from gossip_menu where entry = 50450;

delete from creature_movement_scripts where id = 14;

replace into gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state, spawn_flags, visibility_mod) values (10080, 144069, 0, -10999.1, -3484.59, 104.045, 1.18682, 0, 0, 0.559193, 0.829038, -120, -120, 100, 1, 0, 0);

replace into gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state, spawn_flags, visibility_mod) values (32378, 90567, 0, -4855.03, 742.434, 249.325, -0.078541, 0, 0, -0.03926, 0.999229, 180, 180, 100, 1, 0, 0);

update creature_ai_events set event_param1 = 15, event_param2 = 1 where creature_id = 2149 and id = 214902;
update creature_ai_events set event_flags = 0 where id = 1308201;

update creature_spells set probability_2 = 100 where entry = 201078;
update creature_spells set probability_1 = 100 where entry = 180021;

update creature_template set gossip_menu_id = 0 where gossip_menu_id = 50450;

update creature_display_info_addon set gender = 1 where display_id = 6895;
update creature_display_info_addon set display_id_other_gender = 6894 where display_id = 6895;

update creature_display_info_addon set gender = 0 where display_id = 6894;
update creature_display_info_addon set display_id_other_gender = 6895 where display_id = 6894;

update creature_display_info_addon set gender = 1 where display_id = 15475;
update creature_display_info_addon set display_id_other_gender = 15476 where display_id = 15475;

update creature_display_info_addon set gender = 0 where display_id = 15476;
update creature_display_info_addon set display_id_other_gender = 15475 where display_id = 15476;

replace into creature_template (entry, display_id1, display_id2, display_id3, display_id4, name, subname, gossip_menu_id, level_min, level_max, health_min, health_max, mana_min, mana_max, armor, faction, npc_flags, speed_walk, speed_run, scale, detection_range, call_for_help_range, leash_range, rank, xp_multiplier, dmg_min, dmg_max, dmg_school, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, unit_class, unit_flags, dynamic_flags, beast_family, trainer_type, trainer_spell, trainer_class, trainer_race, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, type_flags, loot_id, pickpocket_loot_id, skinning_loot_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spell_id1, spell_id2, spell_id3, spell_id4, spell_list_id, pet_spell_list_id, gold_min, gold_max, ai_name, movement_type, inhabit_type, civilian, racial_leader, regeneration, equipment_id, trainer_id, vendor_id, mechanic_immune_mask, school_immune_mask, flags_extra, phase_quest_id, script_name) VALUES (22000, 8353, 0, 0, 0, 'Mr. Duckling', 'PTR Helper', 9528, 30, 30, 1002, 1002, 0, 0, 1200, 875, 5, 1, 1.14286, 1.15, 18, 5, 0, 0, 1, 42, 53, 0, 122, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 45.144, 62.073, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 524298, 0, 'ptr_npc_keklord');

replace into creature_template (entry, display_id1, display_id2, display_id3, display_id4, name, subname, gossip_menu_id, level_min, level_max, health_min, health_max, mana_min, mana_max, armor, faction, npc_flags, speed_walk, speed_run, scale, detection_range, call_for_help_range, leash_range, rank, xp_multiplier, dmg_min, dmg_max, dmg_school, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, unit_class, unit_flags, dynamic_flags, beast_family, trainer_type, trainer_spell, trainer_class, trainer_race, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, type_flags, loot_id, pickpocket_loot_id, skinning_loot_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spell_id1, spell_id2, spell_id3, spell_id4, spell_list_id, pet_spell_list_id, gold_min, gold_max, ai_name, movement_type, inhabit_type, civilian, racial_leader, regeneration, equipment_id, trainer_id, vendor_id, mechanic_immune_mask, school_immune_mask, flags_extra, phase_quest_id, script_name) VALUES (22001, 8353, 0, 0, 0, 'Mr. Goose', 'PTR Vendor', 9528, 30, 30, 1002, 1002, 0, 0, 1200, 875, 5, 1, 1.14286, 1.15, 18, 5, 0, 0, 1, 42, 53, 0, 122, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 45.144, 62.073, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 524298, 0, 'ptr_npc_vendor');
