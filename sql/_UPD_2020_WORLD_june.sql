update creature_template set faction = 74 where entry = 51280;
update creature set spawntimesecsmin = 300, spawntimesecsmax = 300 where id = 51280;

-- Fix paladin quest
UPDATE `quest_template` SET `ExclusiveGroup` = 0 WHERE `entry` = 1661;

-- add missing quest Feathermoon Stronghold (7494) to Crier Goodman (2198) and Herald Moonstalker (10878)
INSERT INTO `creature_questrelation` (`id`, `quest`, `patch_min`, `patch_max`) VALUES
(10878, 7494, 1, 10),
(2198, 7494, 1, 10);

-- allow wren darkspring to summon an imp
UPDATE `creature_template` SET `ai_name` = 'EventAI' WHERE `entry` = 6376;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `event_type`, `event_chance`, `action1_script`, `comment`) VALUES
(637601, 6376, 11, 100, 637601, 'Wren Darkspring - Summon Imp on Spawn');
INSERT INTO `creature_ai_scripts` (`id`, `command`, `datalong`, `data_flags`, `comments`) VALUES
(637601, 15, 11939, 4, 'Wren Darkspring - Summon Imp on Spawn');

-- Massive Longbow - Skolmin Goldfury
UPDATE `npc_vendor` SET `maxcount` = 1, `incrtime` = 10800 WHERE `entry` = 5122 AND `item` = 11307;

-- Sturdy Recurve - Skolmin Goldfury
UPDATE `npc_vendor` SET `maxcount` = 1, `incrtime` = 10800 WHERE `entry` = 5122 AND `item` = 11306;

-- Fine Shortbow - Skolmin Goldfury
UPDATE `npc_vendor` SET `maxcount` = 2, `incrtime` = 10800 WHERE `entry` = 5122 AND `item` = 11303;



-- Flamberge - Thalgus Thunderfist
DELETE FROM `npc_vendor` WHERE `entry` = 7976 AND `item` = 2521;

-- Bullova - Thalgus Thunderfist
DELETE FROM `npc_vendor` WHERE `entry` = 7976 AND `item` = 2523;

-- War Hammer - Thalgus Thunderfist
DELETE FROM `npc_vendor` WHERE `entry` = 7976 AND `item` = 2525;

-- Zweihander - Thalgus Thunderfist
DELETE FROM `npc_vendor` WHERE `entry` = 7976 AND `item` = 2529;

-- Great Axe - Thalgus Thunderfist
DELETE FROM `npc_vendor` WHERE `entry` = 7976 AND `item` = 2531;

-- War Maul - Thalgus Thunderfist
DELETE FROM `npc_vendor` WHERE `entry` = 7976 AND `item` = 2533;



-- Missing Items - Brenwyn Wintersteel
INSERT INTO `npc_vendor` (`entry`, `item`) VALUES
(5120, 3111),
(5120, 2946),
(5120, 3107),
(5120, 3137),
(5120, 3108),
(5120, 3131),
(5120, 3135),
(5120, 2947),
(5120, 15326),
(5120, 15327);



-- Weighted Throwing Axe - Bryllia Ironbrand
DELETE FROM `npc_vendor` WHERE `entry` = 5101 AND `item` = 3131;

-- Balanced Throwing Dagger - Bryllia Ironbrand
DELETE FROM `npc_vendor` WHERE `entry` = 5101 AND `item` = 2946;



-- Strong Fishing Pole - Tansy Puddlefizz
UPDATE `npc_vendor` SET `maxcount` = 1, `incrtime` = 7200 WHERE `entry` = 5162 AND `item` = 6365;



-- Gyrochronatom - Gearcutter Cogspinner
UPDATE `npc_vendor` SET `maxcount` = 1, `incrtime` = 10800 WHERE `entry` = 5175 AND `item` = 4389;

-- Schematic: Thorium Grenade - Gearcutter Cogspinner
UPDATE `npc_vendor` SET `maxcount` = 1, `incrtime` = 10800 WHERE `entry` = 5175 AND `item` = 16041;

-- Schematic: Thorium Widget - Gearcutter Cogspinner
UPDATE `npc_vendor` SET `maxcount` = 1, `incrtime` = 10800 WHERE `entry` = 5175 AND `item` = 16042;

-- Schematic: Blue Firework - Gearcutter Cogspinner
UPDATE `npc_vendor` SET `maxcount` = 1, `incrtime` = 10800 WHERE `entry` = 5175 AND `item` = 18649;



-- Lesser Mana Potion - Soolie Berryfizz
DELETE FROM `npc_vendor` WHERE `entry` = 5178 AND `item` = 3385;

-- Lesser Healing Potion - Soolie Berryfizz
DELETE FROM `npc_vendor` WHERE `entry` = 5178 AND `item` = 858;



-- Black Dye - Burbik Gearspanner
DELETE FROM `npc_vendor` WHERE `entry` = 5163 AND `item` = 2325;

-- Red Dye - Burbik Gearspanner
DELETE FROM `npc_vendor` WHERE `entry` = 5163 AND `item` = 2604;

-- Dust of Decay - Burbik Gearspanner
DELETE FROM `npc_vendor` WHERE `entry` = 5163 AND `item` = 2928;

-- Gray Dye - Burbik Gearspanner
DELETE FROM `npc_vendor` WHERE `entry` = 5163 AND `item` = 4340;

-- Yellow Dye - Burbik Gearspanner
DELETE FROM `npc_vendor` WHERE `entry` = 5163 AND `item` = 4341;

-- Purple Dye - Burbik Gearspanner
DELETE FROM `npc_vendor` WHERE `entry` = 5163 AND `item` = 4342;

-- Fishing Pole - Burbik Gearspanner
DELETE FROM `npc_vendor` WHERE `entry` = 5163 AND `item` = 6256;

-- Skinning Knife - Burbik Gearspanner
DELETE FROM `npc_vendor` WHERE `entry` = 5163 AND `item` = 7005;

-- Heavy Silken Thread - Burbik Gearspanner
DELETE FROM `npc_vendor` WHERE `entry` = 5163 AND `item` = 8343;

-- Crystal Vial - Burbik Gearspanner
DELETE FROM `npc_vendor` WHERE `entry` = 5163 AND `item` = 8925;

-- Rune Thread - Burbik Gearspanner
DELETE FROM `npc_vendor` WHERE `entry` = 5163 AND `item` = 14341;

-- Imbued Vial - Burbik Gearspanner
DELETE FROM `npc_vendor` WHERE `entry` = 5163 AND `item` = 18256;



-- Pattern: Tuxedo Jacket - Outfitter Eric
UPDATE `npc_vendor` SET `maxcount` = 1, `incrtime` = 3600 WHERE `entry` = 8681 AND `item` = 10326;

-- Pattern: Tuxedo Pants - Outfitter Eric
UPDATE `npc_vendor` SET `maxcount` = 1, `incrtime` = 3600 WHERE `entry` = 8681 AND `item` = 10323;

-- Pattern: Tuxedo Shirt - Outfitter Eric
UPDATE `npc_vendor` SET `maxcount` = 1, `incrtime` = 3600 WHERE `entry` = 8681 AND `item` = 10321;

-- Pattern: Lavender Mageweave Shirt - Outfitter Eric
UPDATE `npc_vendor` SET `maxcount` = 1, `incrtime` = 7200 WHERE `entry` = 8681 AND `item` = 10314;



-- Pattern: Heavy Leather Ball - Bombus Finespindle
UPDATE `npc_vendor` SET `maxcount` = 1, `incrtime` = 7200 WHERE `entry` = 5128 AND `item` = 18731;



-- Formula: Enchant 2H Weapon - Lesser Intellect - Tilli Thistlefuzz
UPDATE `npc_vendor` SET `maxcount` = 1, `incrtime` = 7200 WHERE `entry` = 5158 AND `item` = 6349;

-- Goldshire RP update

REPLACE INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (51560, 0, 2410, 0, 0, 0, 'White Stallion', '', 0, 1, 2, 42, 55, 53, 53, 30, 35, 0, 1, 1.38571, 0, 20, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 2, 'npc_riding_horse');
REPLACE INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (51561, 0, 2408, 0, 0, 0, 'Palomino', '', 0, 1, 2, 64, 55, 53, 53, 30, 35, 0, 1, 1.38571, 0, 20, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 2, 'npc_riding_horse');

update creature_template set npc_flags = 1 where entry = 51560;
update creature_template set npc_flags = 1 where entry = 51561;

replace into broadcast_text (ID, MaleText) values ('90365', '<The horse seems to like you.>');
replace into npc_text (ID, BroadcastTextID0) values ('90365', '90365');

replace into broadcast_text (ID, MaleText) values ('90366', 'Gryphon looks at you with a curious gaze, clearly not ready for any flight. Perhaps feeding him a Chunk of Boar Meat is a good idea, since there are some leftovers around.\n\nMost likely that stray chew toy is something this gryphon is attached to and will trust you if he gets one?');
replace into npc_text (ID, BroadcastTextID0) values ('90366', '90366');

replace into broadcast_text (ID, MaleText) values ('90367', 'Trust is something you can\'t buy, $C.');
replace into npc_text (ID, BroadcastTextID0) values ('90367', '90367');

REPLACE INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (51562, 0, 6852, 0, 0, 0, 'Kelton\'s Riding Gryphon', NULL, 0, 29, 29, 1528, 1528, 1126, 1126, 0, 35, 0, 1.07, 1.14286, 0, 20, 5, 0, 0, 1, 9, 10, 0, 120, 1, 1720, 1892, 1, 0, 0, 0, 0, 0, 0, 0, 43.8944, 60.3548, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 86, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2, 'npc_riding_gryphon'); -- Clemons

update creature_template set npc_flags = 1 where entry = 51562;


