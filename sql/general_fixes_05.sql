-- Grovetender Engryss : 7412 HP
-- Keeper Ranathos : 8780 HP, change nature resistance to 50 
-- Warden Liferoot : 5025 HP
-- Warden Treeshade 5025 HP
-- High Priestess A'lathea : 9027 HP
-- Fenektis the Deceiver :  9526 HP, change armor to 1504, change shadow resistance to 50
-- Master Raxxieth : 11042 HP , change shadow resistance to 50

update creature_template set health_min = 7412, health_max = 7412 where entry = 92107;
update creature_template set health_min = 8780, health_max = 8780, nature_res = 50 where entry = 92109;
update creature_template set health_min = 5025, health_max = 5025 where entry = 92128;
update creature_template set health_min = 5025, health_max = 5025 where entry = 92129;
update creature_template set health_min = 9027, health_max = 9027 where entry = 92108;
update creature_template set health_min = 9526, health_max = 9526, armor = 1504, shadow_res = 50 where entry = 92111;
update creature_template set health_min = 11042, health_max = 11042, shadow_res = 50 where entry = 92110;

replace into item_template values
 ('83235', '0', '15', '0', 'Ancient Locking Mechanism', 'You can\'t make out what the runes mean.', '3113', '4', '0', '1', '400000', '100000', '0', '-1', '-1', '75',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
REPLACE INTO creature_loot_template (entry, item, groupid) VALUES (80935, 83235, 7);
 
replace into creature_template (entry, patch, display_id1, display_id2, display_id3, display_id4, name, subname, gossip_menu_id, level_min, level_max, health_min, health_max, mana_min, mana_max, armor, faction, npc_flags, speed_walk, speed_run, scale, detection_range, call_for_help_range, leash_range, rank, xp_multiplier, dmg_min, dmg_max, dmg_school, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, unit_class, unit_flags, dynamic_flags, beast_family, trainer_type, trainer_spell, trainer_class, trainer_race, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, type_flags, loot_id, pickpocket_loot_id, skinning_loot_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spell_id1, spell_id2, spell_id3, spell_id4, spell_list_id, pet_spell_list_id, gold_min, gold_max, ai_name, movement_type, inhabit_type, civilian, racial_leader, regeneration, equipment_id, trainer_id, vendor_id, mechanic_immune_mask, school_immune_mask, flags_extra, phase_quest_id, script_name) values (92213, 0, 18695, 0, 0, 0, 'Concavius', 'Voidspawn', 0, 63, 63, 364578, 364578, 128821, 128821, 4960, 7, 0, 1, 1.14286, 4.2, 20, 5, 0, 3, 1, 1468, 1926, 0, 312, 1, 2400, 2000, 8, 0, 0, 0, 0, 0, 0, 0, 400, 550, 100, 10, 4, 50056, 0, 0, 30, 30, 30, 30, 30, 30, 0, 0, 0, 0, 0, 0, 324687, 561234, '', 1, 3, 0, 0, 3, 0, 0, 0, 2798337883, 0, 0, 0, 'boss_concavius');

replace into creature_display_info_addon (display_id) values (18239);
replace into creature_display_info_addon (display_id) values (18695);
replace into creature_display_info_addon (display_id) values (18696);
replace into creature_display_info_addon (display_id) values (18700);
set @creature_loot_id = 92213; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;

update creature_template set speed_walk = 1.8, speed_run = 2, scale = 4, faction = 14 where entry = 92213;

replace into creature_template (entry, patch, display_id1, display_id2, display_id3, display_id4, name, subname, gossip_menu_id, level_min, level_max, health_min, health_max, mana_min, mana_max, armor, faction, npc_flags, speed_walk, speed_run, scale, detection_range, call_for_help_range, leash_range, rank, xp_multiplier, dmg_min, dmg_max, dmg_school, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, unit_class, unit_flags, dynamic_flags, beast_family, trainer_type, trainer_spell, trainer_class, trainer_race, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, type_flags, loot_id, pickpocket_loot_id, skinning_loot_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spell_id1, spell_id2, spell_id3, spell_id4, spell_list_id, pet_spell_list_id, gold_min, gold_max, ai_name, movement_type, inhabit_type, civilian, racial_leader, regeneration, equipment_id, trainer_id, vendor_id, mechanic_immune_mask, school_immune_mask, flags_extra, phase_quest_id, script_name) values 

(92210, 2, 11798, 0, 0, 0, 'Gozzo', 'Twilight\'s Hammer', 0, 60, 60, 43296, 43296, 22434, 22434, 3075, 16, 0, 1.1, 1.14286, 0, 20, 5, 0, 4, 1, 846, 905, 0, 272, 1, 1150, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 61.732, 84.8815, 100, 7, 0, 14479, 0, 0, 0, 0, 0, 0, 0, 0, 17439, 19816, 0, 0, 0, 0, 120, 162, '', 2, 3, 0, 0, 3, 14479, 0, 0, 0, 0, 0, 0, 'concavius_summoner'),
(92211, 2, 11824, 0, 0, 0, 'Liang', 'Twilight\'s Hammer', 0, 60, 60, 43296, 43296, 22434, 22434, 3075, 16, 0, 1.1, 1.14286, 0, 20, 5, 0, 4, 1, 846, 905, 0, 272, 1, 1150, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 61.732, 84.8815, 100, 7, 0, 14479, 0, 0, 0, 0, 0, 0, 0, 0, 17439, 19816, 0, 0, 0, 0, 120, 162, '', 2, 3, 0, 0, 3, 14479, 0, 0, 0, 0, 0, 0, 'concavius_summoner'),
(92212, 2, 7821, 0, 0, 0, 'Jabiry', 'Twilight\'s Hammer', 0, 60, 60, 43296, 43296, 22434, 22434, 3075, 16, 0, 1.1, 1.14286, 0, 20, 5, 0, 4, 1, 846, 905, 0, 272, 1, 1150, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 61.732, 84.8815, 100, 7, 0, 14479, 0, 0, 0, 0, 0, 0, 0, 0, 17439, 19816, 0, 0, 0, 0, 120, 162, '', 2, 3, 0, 0, 3, 14479, 0, 0, 0, 0, 0, 0, 'concavius_summoner');

update item_template set class = 4, subclass = 0 where entry in (81307, 80804);

replace into item_template values
 ('81167', '0', '4', '2', 'Chieftain\'s Ceremonial Mantle', '', '60884', '3', '0', '1', '196413', '51201', '3', '-1', '-1', '63',
 '60', '0', '0', '0', '0', '0', '81', '7', '0', '1', '0', '4', '6', '5', '9',
 '6', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '193', '0', '0', '0',
 '0', '0', '0', '18029', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '55', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 UPDATE item_template SET stat_value3 = 0 WHERE entry = 83075 AND patch = 0;
 UPDATE item_template SET name = 'Brave\'s War Leggings', stat_value3 = 0 WHERE entry = 83068 AND patch = 0;
 
delete from creature where id in (92210, 92211, 92212, 92213);

INSERT INTO creature (guid, id, id2, id3, id4, map, display_id, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, mana_percent, movement_type, spawn_flags, visibility_mod, patch_min, patch_max) VALUES (2567309, 92210, 0, 0, 0, 1, 0, 14479, -1958.3, 553.63, 165.999, 4.23414, 25, 25, 5, 100, 100, 2, 0, 0, 0, 10);
INSERT INTO creature (guid, id, id2, id3, id4, map, display_id, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, mana_percent, movement_type, spawn_flags, visibility_mod, patch_min, patch_max) VALUES (2567313, 92211, 0, 0, 0, 1, 0, 14479, -1953.85, 548.043, 166.152, 3.64588, 25, 25, 5, 100, 100, 2, 0, 0, 0, 10);
INSERT INTO creature (guid, id, id2, id3, id4, map, display_id, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, mana_percent, movement_type, spawn_flags, visibility_mod, patch_min, patch_max) VALUES (2567315, 92212, 0, 0, 0, 1, 0, 14479, -1965, 552.622, 166.109, 5.10357, 25, 25, 5, 100, 100, 2, 0, 0, 0, 10);
INSERT INTO creature (guid, id, id2, id3, id4, map, display_id, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, mana_percent, movement_type, spawn_flags, visibility_mod, patch_min, patch_max) VALUES (2567316, 92213, 0, 0, 0, 1, 0, 0, -1962.77, 545.571, 166.397, 1.02797, 25, 25, 5, 100, 100, 1, 0, 0, 0, 10);

update creature set spawntimesecsmin = 259200, spawntimesecsmax = 604800 where id  in (92210, 92211, 92212, 92213);

replace creature_template values
(92140, 0, 2557, 0, 0, 0, 'Southsea Deckhand', NULL, 0, 52, 53, 3179, 3282, 0, 0, 2669, 230, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 106, 136, 0, 234, 1, 2000, 2000, 1, 32768, 0, 0, 0, 0, 0, 0, 70.4704, 96.8968, 100, 7, 0, 6371, 6371, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63710, 0, 104, 141, 'EventAI', 1, 3, 0, 0, 3, 6371, 0, 0, 0, 0, 0, 0, '');

set @equip_template = 56028; set @weapon_1 = 2092; set @weapon_2 = 0; set @creature = 92140;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0); 
update creature_template set equipment_id = @equip_template where entry = @creature;

replace INTO item_template (entry, patch, class, subclass, name, description, display_id, quality, flags, buy_count, buy_price, sell_price, inventory_type, allowable_class, allowable_race, item_level, required_level, required_skill, required_skill_rank, required_spell, required_honor_rank, required_city_rank, required_reputation_faction, required_reputation_rank, max_count, stackable, container_slots, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3, stat_type4, stat_value4, stat_type5, stat_value5, stat_type6, stat_value6, stat_type7, stat_value7, stat_type8, stat_value8, stat_type9, stat_value9, stat_type10, stat_value10, delay, range_mod, ammo_type, dmg_min1, dmg_max1, dmg_type1, dmg_min2, dmg_max2, dmg_type2, dmg_min3, dmg_max3, dmg_type3, dmg_min4, dmg_max4, dmg_type4, dmg_min5, dmg_max5, dmg_type5, block, armor, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, spellid_3, spelltrigger_3, spellcharges_3, spellppmrate_3, spellcooldown_3, spellcategory_3, spellcategorycooldown_3, spellid_4, spelltrigger_4, spellcharges_4, spellppmrate_4, spellcooldown_4, spellcategory_4, spellcategorycooldown_4, spellid_5, spelltrigger_5, spellcharges_5, spellppmrate_5, spellcooldown_5, spellcategory_5, spellcategorycooldown_5, bonding, page_text, page_language, page_material, start_quest, lock_id, material, sheath, random_property, set_id, max_durability, area_bound, map_bound, duration, bag_family, disenchant_id, food_type, min_money_loot, max_money_loot, extra_flags, other_team_entry, script_name) VALUES (83236, 0, 15, 0, 'Void-Linked Sack of Goods', '', 33942, 2, 4, 1, 19050, 4762, 0, 2047, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

update item_template set quality = 3 where entry = 83236;

replace into item_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountorref, maxcount) values

(83236, 7971, 33, 1, 2, 3),
(83236, 12363, 35, 1, 1, 2),
(83236, 12361, 35, 1, 1, 2),
(83236, 12364, 35, 1, 1, 2),
(83236, 12800, 35, 1, 1, 3),

(83236, 7080, 100, 2, 1, 2),
(83236, 7082, 100, 2, 1, 2),
(83236, 7076, 100, 2, 1, 2),
(83236, 7078, 100, 2, 1, 2),

(83236, 15416, 23, 3, 2, 5),
(83236, 20520, 23, 3, 2, 4),
(83236, 14256, 23, 3, 2, 4),
(83236, 11370, 23, 3, 3, 6),
(83236, 13468, 8, 3, 1, 3);

UPDATE item_template SET spelltrigger_1 = 2 WHERE entry = 83062 AND patch = 0;