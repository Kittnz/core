REPLACE INTO gameobject_template (entry, patch, type, displayId, name, faction, flags, size, data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, mingold, maxgold, phase_quest_id, script_name) VALUES (112909, 0, 5, 24364, 'WARNING!!! DO NOT ENTER!!!', 0, 0, 0.7, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO gameobject_template (entry, patch, type, displayId, name, faction, flags, size, data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, mingold, maxgold, phase_quest_id, script_name) VALUES (112910, 0, 5, 24364, 'Jade Mine. No entry allowed.', 0, 0, 0.7, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE creature_template SET npc_flags = 19 WHERE entry = 3136;
UPDATE creature_template SET faction = 16 WHERE entry = 91966;
update creature_template set scale = 1.5, faction = 90, dmg_school = 2, rank = 1 where entry = 92112;
replace into gameobject_template values 
(112911, 0, 5, 23442, 'Crescent Grove (Entrance)', 0, 0, 1.6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'crescent_grove_portal'),
(112912, 0, 5, 23442, 'Crescent Grove (Exit)', 0, 0, 1.6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'crescent_grove_portal'),
(112913, 0, 5, 23443, 'Crescent Grove (Collision)', 0, 0, 1.6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
replace into map_template values (802, 0, 0, 1, 802, 5, 0, -1, 0, 0, 'Crescent Grove', 'instance_crescent_grove');

set @creature_loot_id = 92100; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;
set @creature_loot_id = 92101; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;
set @creature_loot_id = 92102; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;
set @creature_loot_id = 92103; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;
set @creature_loot_id = 92104; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;
set @creature_loot_id = 92105; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;
set @creature_loot_id = 92106; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;
set @creature_loot_id = 92107; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;
set @creature_loot_id = 92108; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;
set @creature_loot_id = 92109; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;
set @creature_loot_id = 92110; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;
set @creature_loot_id = 92111; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;
set @creature_loot_id = 92112; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;
set @creature_loot_id = 92113; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;
set @creature_loot_id = 92114; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;
set @creature_loot_id = 92115; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;
set @creature_loot_id = 92116; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;
set @creature_loot_id = 92117; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;
set @creature_loot_id = 92118; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;
set @creature_loot_id = 92119; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;
set @creature_loot_id = 92120; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;
set @creature_loot_id = 92121; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;
set @creature_loot_id = 92122; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;
set @creature_loot_id = 92123; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;
set @creature_loot_id = 92124; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;
set @creature_loot_id = 92125; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;
set @creature_loot_id = 92126; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;
set @creature_loot_id = 92127; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;
set @creature_loot_id = 92128; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;
set @creature_loot_id = 92129; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;

update creature set spawntimesecsmin = 36000, spawntimesecsmax = 36000 where id between 92100 and 92129;

REPLACE INTO creature_template (entry, patch, display_id1, display_id2, display_id3, display_id4, name, subname, gossip_menu_id, level_min, level_max, health_min, health_max, mana_min, mana_max, armor, faction, npc_flags, speed_walk, speed_run, scale, detection_range, call_for_help_range, leash_range, rank, xp_multiplier, dmg_min, dmg_max, dmg_school, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, unit_class, unit_flags, dynamic_flags, beast_family, trainer_type, trainer_spell, trainer_class, trainer_race, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, type_flags, loot_id, pickpocket_loot_id, skinning_loot_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spell_id1, spell_id2, spell_id3, spell_id4, spell_list_id, pet_spell_list_id, gold_min, gold_max, ai_name, movement_type, inhabit_type, civilian, racial_leader, regeneration, equipment_id, trainer_id, vendor_id, mechanic_immune_mask, school_immune_mask, flags_extra, phase_quest_id, script_name) VALUES (90987, 0, 1524, 0, 0, 0, 'Wally Burnside', '', 0, 45, 45, 2217, 2217, 0, 0, 2725, 35, 7, 1, 1.14286, 0, 20, 5, 0, 0, 1, 72, 93, 0, 204, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 61.776, 84.942, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2, 0, '');

update creature_template set npc_flags = 3 where entry = 90987;

set @gossip_menu_id = 60187; set @magic_number = 90987; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Our ship got wrecked a few weeks ago, I\'ve been managing to survive. The murlocs can certainly cause issues, are you willing to help?'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;
