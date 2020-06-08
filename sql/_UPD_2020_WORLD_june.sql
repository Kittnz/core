update creature_template set faction = 74 where entry = 51280;
update creature set spawntimesecsmin = 300, spawntimesecsmax = 300 where id = 51280;

-- Fix paladin quest
UPDATE `quest_template` SET `ExclusiveGroup` = 0 WHERE `entry` = 1661;

-- add missing quest Feathermoon Stronghold (7494) to Crier Goodman (2198) and Herald Moonstalker (10878)
replace into `creature_questrelation` (`id`, `quest`, `patch_min`, `patch_max`) VALUES
(10878, 7494, 1, 10),
(2198, 7494, 1, 10);

-- allow wren darkspring to summon an imp
UPDATE `creature_template` SET `ai_name` = 'EventAI' WHERE `entry` = 6376;
replace into `creature_ai_events` (`id`, `creature_id`, `event_type`, `event_chance`, `action1_script`, `comment`) VALUES
(637601, 6376, 11, 100, 637601, 'Wren Darkspring - Summon Imp on Spawn');
replace into `creature_ai_scripts` (`id`, `command`, `datalong`, `data_flags`, `comments`) VALUES
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
replace into `npc_vendor` (`entry`, `item`) VALUES
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

replace into broadcast_text (ID, MaleText) values ('90368', 'Bandits? We\'re not bandits.\nWe\'re renegades. Make yourself at home.');
replace into npc_text (ID, BroadcastTextID0) values ('90368', '90368');

REPLACE INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (51562, 0, 6852, 0, 0, 0, 'Kelton\'s Riding Gryphon', NULL, 0, 29, 29, 1528, 1528, 1126, 1126, 0, 35, 0, 1.07, 1.14286, 0, 20, 5, 0, 0, 1, 9, 10, 0, 120, 1, 1720, 1892, 1, 0, 0, 0, 0, 0, 0, 0, 43.8944, 60.3548, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 86, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2, 'npc_riding_gryphon');  

REPLACE INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (51563, 7, 5081, 0, 0, 0, 'Rholo', 'Northshire Renegades', 0, 50, 50, 3517, 3517, 2103, 2103, 2999, 11, 4096, 1.2, 1.14286, 0, 20, 5, 0, 0, 1, 72, 93, 0, 226, 1, 2000, 2000, 1, 4096, 0, 0, 0, 0, 0, 0, 66.44, 91.355, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 51260, 0, 0, 0, 0, 524298, 'npc_rholo');

REPLACE INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (51564, 7, 2363, 0, 0, 0, 'Kelton Clemons', 'Retired Gryphon Master', 0, 50, 50, 3517, 3517, 2103, 2103, 2999, 11, 4096, 1.2, 1.14286, 0, 20, 5, 0, 0, 1, 72, 93, 0, 226, 1, 2000, 2000, 1, 4096, 0, 0, 0, 0, 0, 0, 66.44, 91.355, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 51260, 0, 0, 0, 0, 524298, '');

update creature_template set npc_flags = 3 where entry = 51562;
update creature_template set npc_flags = 1 where entry = 51563;
update creature_template set npc_flags = 2 where entry = 51564;
update creature_template set subname = 'Black Market Merchant' where entry = 51260;

SET @quest_entry = 60070;
SET @quest_zone = 1519;
SET @faction_id = 0;
SET @faction_count = 0;
SET @xp_or_money = 450;
SET @quest_level = 7;
SET @min_level = 6;
SET @questgiver_id = 51564;
SET @quest_finisher = 51562;
SET @nextquest = 0;
SET @nextquestinchain = 0;
SET @prevquest = 0;
SET @reward_item_1 = 0;
SET @reward_item_2 = 0;
SET @reward_item_3 = 0;
SET @reward_item_4 = 0;
SET @reward_item_1_count = 0;
SET @reward_item_2_count = 0;
SET @reward_item_3_count = 0;
SET @reward_item_4_count = 0;
SET @creature_to_kill_1 = 0;
SET @creature_to_kill_2 = 0;
SET @creature_to_kill_3 = 0;
SET @creature_to_kill_4 = 0;
SET @creature_to_kill_1_count = 0;
SET @creature_to_kill_2_count = 0;
SET @creature_to_kill_3_count = 0;
SET @creature_to_kill_4_count = 0;
SET @required_item_1 = 769;
SET @required_item_2 = 422;
SET @required_item_3 = 51751;
SET @required_item_4 = 0;
SET @required_item_1_count = 5;
SET @required_item_2_count = 3;
SET @required_item_3_count = 1;
SET @required_item_4_count = 0;

replace into quest_template (entry, patch, Method, ZoneOrSort, MinLevel, QuestLevel, MaxLevel, Type, RequiredClasses, RequiredRaces, RequiredSkill,
RequiredSkillValue, RepObjectiveFaction, RepObjectiveValue, RequiredMinRepFaction, RequiredMinRepValue,RequiredMaxRepFaction,
RequiredMaxRepValue, SuggestedPlayers, LimitTime, QuestFlags, SpecialFlags, PrevQuestId, NextQuestId, ExclusiveGroup, NextQuestInChain,
SrcItemId, SrcItemCount, SrcSpell, Title, Details, Objectives, OfferRewardText, RequestItemsText, EndText, ObjectiveText1, ObjectiveText2,
ObjectiveText3, ObjectiveText4, ReqItemId1, ReqItemId2, ReqItemId3, ReqItemId4, ReqItemCount1, ReqItemCount2, ReqItemCount3,
ReqItemCount4, ReqSourceId1, ReqSourceId2, ReqSourceId3, ReqSourceId4, ReqSourceCount1, ReqSourceCount2, ReqSourceCount3,
ReqSourceCount4, ReqCreatureOrGOId1, ReqCreatureOrGOId2, ReqCreatureOrGOId3, ReqCreatureOrGOId4, ReqCreatureOrGOCount1,
ReqCreatureOrGOCount2, ReqCreatureOrGOCount3, ReqCreatureOrGOCount4, ReqSpellCast1, ReqSpellCast2, ReqSpellCast3,
ReqSpellCast4, RewChoiceItemId1, RewChoiceItemId2, RewChoiceItemId3, RewChoiceItemId4, RewChoiceItemId5, RewChoiceItemId6,
RewChoiceItemCount1, RewChoiceItemCount2, RewChoiceItemCount3, RewChoiceItemCount4, RewChoiceItemCount5, RewChoiceItemCount6,
RewItemId1, RewItemId2, RewItemId3, RewItemId4, RewItemCount1, RewItemCount2, RewItemCount3, RewItemCount4, RewRepFaction1,
RewRepFaction2, RewRepFaction3, RewRepFaction4, RewRepFaction5, RewRepValue1, RewRepValue2, RewRepValue3, RewRepValue4,
RewRepValue5, RewOrReqMoney, RewMoneyMaxLevel, RewSpell, RewSpellCast, RewMailTemplateId, RewMailMoney, RewMailDelaySecs,
PointMapId, PointX, PointY, PointOpt, DetailsEmote1, DetailsEmote2, DetailsEmote3, DetailsEmote4, DetailsEmoteDelay1,
DetailsEmoteDelay2, DetailsEmoteDelay3, DetailsEmoteDelay4, IncompleteEmote, CompleteEmote, OfferRewardEmote1, OfferRewardEmote2,
OfferRewardEmote3, OfferRewardEmote4, OfferRewardEmoteDelay1, OfferRewardEmoteDelay2, OfferRewardEmoteDelay3,OfferRewardEmoteDelay4,
StartScript, CompleteScript) values

(@quest_entry, '0', '2', @quest_zone, @min_level, @quest_level, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 

'Matter of Trust', 

'Trust is something you can\'t buy, $R.\n\nHere\'s the deal, mate. You earn trust of this gryphon over here and you\'ll get your ride to the camp. Fail and he\'ll have you as his breakfast.\n\nHah! Of course I\'m pulling your leg here, mate, alas, this winged beast won\'t even nudge unless it\'s trust you completely.\n\nHow, you ask? Food, of course. And a toy. Go figure.
', 

'Bring 10 Chunks of Boar Meat, 3 Dwarven Mild Cheese and 1 Chew Toy to Kelton\'s Riding Gryphon in the Goldshire.', 

'Gryphon looks excited sniffing air about you sensing treats and almost chirping with joy at the sight of his Chew Toy you are holding. His pupils expand immensily. He looks happy!', 

'Gryphon recognizes you and doesn\'t seems to be satisfied with all his cawing and disturbed jabbering. He clearly looks hungry and frustrated. Perhaps handful of famous Dwarven Mild could do some good?', 

'', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', @faction_id, '0', '0', '0', '0', @faction_count, '0', '0', '0', '0', '0', @xp_or_money, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', 0, 0);
      
update quest_template set 
rewitemid1 = @reward_item_1, rewitemcount1 = @reward_item_1_count,
rewitemid2 = @reward_item_2, rewitemcount2 = @reward_item_2_count,
rewitemid3 = @reward_item_3, rewitemcount3 = @reward_item_3_count,
rewitemid4 = @reward_item_4, rewitemcount4 = @reward_item_4_count,
ReqCreatureOrGOId1 = @creature_to_kill_1, ReqCreatureOrGOCount1 = @creature_to_kill_1_count,
ReqCreatureOrGOId2 = @creature_to_kill_2, ReqCreatureOrGOCount2 = @creature_to_kill_2_count,
ReqCreatureOrGOId3 = @creature_to_kill_3, ReqCreatureOrGOCount3 = @creature_to_kill_3_count,
ReqCreatureOrGOId4 = @creature_to_kill_4, ReqCreatureOrGOCount4 = @creature_to_kill_4_count,
reqitemid1 = @required_item_1, reqitemcount1 = @required_item_1_count,
reqitemid2 = @required_item_2, reqitemcount2 = @required_item_2_count,
reqitemid3 = @required_item_3, reqitemcount3 = @required_item_3_count,
reqitemid4 = @required_item_4, reqitemcount4 = @required_item_4_count
where entry = @quest_entry;

update quest_template set nextquestid = @nextquest where entry = @quest_entry;
update quest_template set nextquestinchain = @nextquestinchain where entry = @quest_entry;
update quest_template set prevquestid = @prevquest where entry = @quest_entry;
	  
replace into creature_questrelation (id, quest, patch_min, patch_max) values (@questgiver_id, @quest_entry,'10','10');
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values (@quest_finisher, @quest_entry,'10','10');   

replace into gameobject_template values 
(1000380, 0, 3, 758, 'Gryphon Chew Toy', 0, 0, 0.7, 57, 1000380, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_template values 
(1000381, 0, 5, 758, 'Chewed Toy', 0, 0, 0.6, 57, 1000380, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');


REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES 
(1000380, 51751, 100, 1, 1, 1, 0, 0, 10);

replace into item_template (
entry, patch, class, subclass, name,description, display_id, quality, flags, buy_count,
buy_price, sell_price, inventory_type, allowable_class, allowable_race, item_level,
required_level, required_skill, required_skill_rank, required_spell, required_honor_rank,
required_city_rank, required_reputation_faction, required_reputation_rank, max_count, stackable,
container_slots, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3,
stat_type4, stat_value4, stat_type5, stat_value5, stat_type6, stat_value6, stat_type7,
stat_value7, stat_type8, stat_value8, stat_type9, stat_value9, stat_type10, stat_value10,
delay, range_mod, ammo_type, dmg_min1, dmg_max1, dmg_type1, dmg_min2, dmg_max2, dmg_type2,
dmg_min3, dmg_max3, dmg_type3, dmg_min4, dmg_max4, dmg_type4, dmg_min5, dmg_max5, dmg_type5, block,
armor, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1,
spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2,
spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2,
spellid_3, spelltrigger_3, spellcharges_3, spellppmrate_3, spellcooldown_3, spellcategory_3,
spellcategorycooldown_3, spellid_4, spelltrigger_4, spellcharges_4, spellppmrate_4, spellcooldown_4,
spellcategory_4, spellcategorycooldown_4, spellid_5, spelltrigger_5, spellcharges_5, spellppmrate_5,
spellcooldown_5, spellcategory_5, spellcategorycooldown_5, bonding, page_text, page_language, page_material,
start_quest, lock_id, material, sheath, random_property, set_id, max_durability, area_bound, map_bound,
duration, bag_family, disenchant_id, food_type, min_money_loot, max_money_loot, extra_flags, other_team_entry,
script_name)
values
 ('51751', '0', '12', '0', 'Gryphon Chew Toy', '', '18071', '1', '0', '1', '0', '0', '0', '-1', '-1', '1',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

-- Community quests

replace into item_template (
entry, patch, class, subclass, name,description, display_id, quality, flags, buy_count,
buy_price, sell_price, inventory_type, allowable_class, allowable_race, item_level,
required_level, required_skill, required_skill_rank, required_spell, required_honor_rank,
required_city_rank, required_reputation_faction, required_reputation_rank, max_count, stackable,
container_slots, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3,
stat_type4, stat_value4, stat_type5, stat_value5, stat_type6, stat_value6, stat_type7,
stat_value7, stat_type8, stat_value8, stat_type9, stat_value9, stat_type10, stat_value10,
delay, range_mod, ammo_type, dmg_min1, dmg_max1, dmg_type1, dmg_min2, dmg_max2, dmg_type2,
dmg_min3, dmg_max3, dmg_type3, dmg_min4, dmg_max4, dmg_type4, dmg_min5, dmg_max5, dmg_type5, block,
armor, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1,
spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2,
spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2,
spellid_3, spelltrigger_3, spellcharges_3, spellppmrate_3, spellcooldown_3, spellcategory_3,
spellcategorycooldown_3, spellid_4, spelltrigger_4, spellcharges_4, spellppmrate_4, spellcooldown_4,
spellcategory_4, spellcategorycooldown_4, spellid_5, spelltrigger_5, spellcharges_5, spellppmrate_5,
spellcooldown_5, spellcategory_5, spellcategorycooldown_5, bonding, page_text, page_language, page_material,
start_quest, lock_id, material, sheath, random_property, set_id, max_durability, area_bound, map_bound,
duration, bag_family, disenchant_id, food_type, min_money_loot, max_money_loot, extra_flags, other_team_entry,
script_name)
values
 ('51752', '1', '2', '8', 'Crusader\'s Redemption', '', '20195', '3', '0', '1', '0', '15471', '17', '-1', '-1', '39',
 '39', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '7', '7', '5',
 '5', '15', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2900', '0',
 '0', '88', '133', '0', '5', '10', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '10', '0', '13665', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '2', '0', '0', '0', '0', '0', '1', '1', '0', '0', '100', '0', '0', '0', '0', '1', '0', '0', '0',
 '0', '1', NULL);

replace into item_template (
entry, patch, class, subclass, name,description, display_id, quality, flags, buy_count,
buy_price, sell_price, inventory_type, allowable_class, allowable_race, item_level,
required_level, required_skill, required_skill_rank, required_spell, required_honor_rank,
required_city_rank, required_reputation_faction, required_reputation_rank, max_count, stackable,
container_slots, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3,
stat_type4, stat_value4, stat_type5, stat_value5, stat_type6, stat_value6, stat_type7,
stat_value7, stat_type8, stat_value8, stat_type9, stat_value9, stat_type10, stat_value10,
delay, range_mod, ammo_type, dmg_min1, dmg_max1, dmg_type1, dmg_min2, dmg_max2, dmg_type2,
dmg_min3, dmg_max3, dmg_type3, dmg_min4, dmg_max4, dmg_type4, dmg_min5, dmg_max5, dmg_type5, block,
armor, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1,
spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2,
spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2,
spellid_3, spelltrigger_3, spellcharges_3, spellppmrate_3, spellcooldown_3, spellcategory_3,
spellcategorycooldown_3, spellid_4, spelltrigger_4, spellcharges_4, spellppmrate_4, spellcooldown_4,
spellcategory_4, spellcategorycooldown_4, spellid_5, spelltrigger_5, spellcharges_5, spellppmrate_5,
spellcooldown_5, spellcategory_5, spellcategorycooldown_5, bonding, page_text, page_language, page_material,
start_quest, lock_id, material, sheath, random_property, set_id, max_durability, area_bound, map_bound,
duration, bag_family, disenchant_id, food_type, min_money_loot, max_money_loot, extra_flags, other_team_entry,
script_name)
values
 ('51753', '1', '2', '1', 'Archaic Slicer', '', '8476', '3', '0', '1', '0', '9871', '13', '-1', '-1', '0',
 '29', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3200', '0',
 '0', '74', '111', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '200', '0', '0', '10',
 '0', '0', '0', '18819', '2', '0', '1.5', '600', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '2', '0', '0', '0', '0', '0', '1', '1', '0', '0', '100', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template (
entry, patch, class, subclass, name,description, display_id, quality, flags, buy_count,
buy_price, sell_price, inventory_type, allowable_class, allowable_race, item_level,
required_level, required_skill, required_skill_rank, required_spell, required_honor_rank,
required_city_rank, required_reputation_faction, required_reputation_rank, max_count, stackable,
container_slots, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3,
stat_type4, stat_value4, stat_type5, stat_value5, stat_type6, stat_value6, stat_type7,
stat_value7, stat_type8, stat_value8, stat_type9, stat_value9, stat_type10, stat_value10,
delay, range_mod, ammo_type, dmg_min1, dmg_max1, dmg_type1, dmg_min2, dmg_max2, dmg_type2,
dmg_min3, dmg_max3, dmg_type3, dmg_min4, dmg_max4, dmg_type4, dmg_min5, dmg_max5, dmg_type5, block,
armor, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1,
spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2,
spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2,
spellid_3, spelltrigger_3, spellcharges_3, spellppmrate_3, spellcooldown_3, spellcategory_3,
spellcategorycooldown_3, spellid_4, spelltrigger_4, spellcharges_4, spellppmrate_4, spellcooldown_4,
spellcategory_4, spellcategorycooldown_4, spellid_5, spelltrigger_5, spellcharges_5, spellppmrate_5,
spellcooldown_5, spellcategory_5, spellcategorycooldown_5, bonding, page_text, page_language, page_material,
start_quest, lock_id, material, sheath, random_property, set_id, max_durability, area_bound, map_bound,
duration, bag_family, disenchant_id, food_type, min_money_loot, max_money_loot, extra_flags, other_team_entry,
script_name)
values
 ('51754', '1', '2', '7', 'Lodestone Blade', 'The power inside is begging to be released.', '18409', '3', '65536', '1', '0', '7461', '13', '-1', '-1', '28',
 '28', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1700', '0',
 '0', '25', '47', '0', '5', '5', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '10', '7269', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 replace into creature_template (
entry, patch, display_id1, display_id2, display_id3, display_id4, name, subname, gossip_menu_id, level_min, level_max,
health_min, health_max, mana_min, mana_max, armor, faction, npc_flags, speed_walk, speed_run, scale, detection_range,
call_for_help_range, leash_range, rank, xp_multiplier, dmg_min, dmg_max, dmg_school, attack_power, dmg_multiplier,
base_attack_time, ranged_attack_time, unit_class, unit_flags, dynamic_flags, beast_family, trainer_type, trainer_spell,
trainer_class, trainer_race, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, type_flags, loot_id,
pickpocket_loot_id, skinning_loot_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spell_id1,
spell_id2, spell_id3, spell_id4, spell_list_id, pet_spell_list_id, gold_min, gold_max, ai_name, movement_type,
inhabit_type, civilian, racial_leader, regeneration, equipment_id, trainer_id, vendor_id, mechanic_immune_mask,
school_immune_mask, flags_extra, script_name)
values
('51566', '1', '10374', '0', '0', '0', 'Drakin Swiftaxe', 'Recruiter', '0', '45', '45',
'1500', '1500', '2000', '2000', '4500', '471', '2', '1', '1.14286', '1', '20',
'5', '30', '0', '1', '350', '275', '0', '300', '1',
'2000', '0', '2', '4104', '1', '1', '0', '0',
'0', '0', '0', '0', '0', '7', '0', '0',
'0', '0', '0', '0', '15', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '200', '300', 'ReactorAI', '0',
'3', '0', '0', '1', '23171', '0', '0', '0',
'0', '80', 'NULL');


replace into quest_template (
entry, patch, Method, ZoneOrSort, MinLevel, QuestLevel, MaxLevel, Type, RequiredClasses, RequiredRaces, RequiredSkill,
RequiredSkillValue, RepObjectiveFaction, RepObjectiveValue, RequiredMinRepFaction, RequiredMinRepValue,RequiredMaxRepFaction,
RequiredMaxRepValue, SuggestedPlayers, LimitTime, QuestFlags, SpecialFlags, PrevQuestId, NextQuestId, ExclusiveGroup, NextQuestInChain,
SrcItemId, SrcItemCount, SrcSpell, Title, Details, Objectives, OfferRewardText, RequestItemsText, EndText, ObjectiveText1, ObjectiveText2,
ObjectiveText3, ObjectiveText4, ReqItemId1, ReqItemId2, ReqItemId3, ReqItemId4, ReqItemCount1, ReqItemCount2, ReqItemCount3,
ReqItemCount4, ReqSourceId1, ReqSourceId2, ReqSourceId3, ReqSourceId4, ReqSourceCount1, ReqSourceCount2, ReqSourceCount3,
ReqSourceCount4, ReqCreatureOrGOId1, ReqCreatureOrGOId2, ReqCreatureOrGOId3, ReqCreatureOrGOId4, ReqCreatureOrGOCount1,
ReqCreatureOrGOCount2, ReqCreatureOrGOCount3, ReqCreatureOrGOCount4, ReqSpellCast1, ReqSpellCast2, ReqSpellCast3,
ReqSpellCast4, RewChoiceItemId1, RewChoiceItemId2, RewChoiceItemId3, RewChoiceItemId4, RewChoiceItemId5, RewChoiceItemId6,
RewChoiceItemCount1, RewChoiceItemCount2, RewChoiceItemCount3, RewChoiceItemCount4, RewChoiceItemCount5, RewChoiceItemCount6,
RewItemId1, RewItemId2, RewItemId3, RewItemId4, RewItemCount1, RewItemCount2, RewItemCount3, RewItemCount4, RewRepFaction1,
RewRepFaction2, RewRepFaction3, RewRepFaction4, RewRepFaction5, RewRepValue1, RewRepValue2, RewRepValue3, RewRepValue4,
RewRepValue5, RewOrReqMoney, RewMoneyMaxLevel, RewSpell, RewSpellCast, RewMailTemplateId, RewMailMoney, RewMailDelaySecs,
PointMapId, PointX, PointY, PointOpt, DetailsEmote1, DetailsEmote2, DetailsEmote3, DetailsEmote4, DetailsEmoteDelay1,
DetailsEmoteDelay2, DetailsEmoteDelay3, DetailsEmoteDelay4, IncompleteEmote, CompleteEmote, OfferRewardEmote1, OfferRewardEmote2,
OfferRewardEmote3, OfferRewardEmote4, OfferRewardEmoteDelay1, OfferRewardEmoteDelay2, OfferRewardEmoteDelay3,OfferRewardEmoteDelay4,
StartScript, CompleteScript)
         values
 ('60071', '1', '2', '47', '42', '42', '60', '0', '0', '0', '0',
'0', '0', '0', '0', '0','0',
'0', '0', '0', '8', '0', '0', '60072', '0', '0',
'0', '0', '0', 'Cracking the Witherbark', 'Hey, $N, that was your name wasn\'t it?\n\nYou probably know that we have some troll problems, so we decided to hire more adventurers such as yourself, sounds good right?\n\nYour first target will be the Witherbarks to the east of Aerie Peak, they\'re too close for comfort and they brew deadly poisons right at our doorstep! Are you up for challenge?', 'Drakin Swiftaxe has tasked you with the disposal of 10 Vilebranch Scalpers, 10 Vilebranch Zealots and 5 Vilebranch Venombloods. Return to him when you are done.', 'You actually did it? I mean of course i always believed in you! Here, take some gold for your troubles.', 'Don\'t be a sissy and go show those trolls who\'s the boss!', '', '', '',
'', '', '0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0', '0',
'0', '2649', '2650', '2652', '0', '10',
'10', '5', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0', '0', '471',
'0', '0', '0', '0', '250', '0', '0', '0',
'0', '12582', '2520', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '18', '0', '0', '0', '2',
'0', '0', '0', '19', '4', '0', '0',
'0', '0', '0', '0', '0','0',
0, 0);
replace into creature_questrelation (id, quest, patch_min, patch_max) values ('51566','60071','10','10');
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values ('51566','60071','10','10');
      
	  
replace into quest_template (
entry, patch, Method, ZoneOrSort, MinLevel, QuestLevel, MaxLevel, Type, RequiredClasses, RequiredRaces, RequiredSkill,
RequiredSkillValue, RepObjectiveFaction, RepObjectiveValue, RequiredMinRepFaction, RequiredMinRepValue,RequiredMaxRepFaction,
RequiredMaxRepValue, SuggestedPlayers, LimitTime, QuestFlags, SpecialFlags, PrevQuestId, NextQuestId, ExclusiveGroup, NextQuestInChain,
SrcItemId, SrcItemCount, SrcSpell, Title, Details, Objectives, OfferRewardText, RequestItemsText, EndText, ObjectiveText1, ObjectiveText2,
ObjectiveText3, ObjectiveText4, ReqItemId1, ReqItemId2, ReqItemId3, ReqItemId4, ReqItemCount1, ReqItemCount2, ReqItemCount3,
ReqItemCount4, ReqSourceId1, ReqSourceId2, ReqSourceId3, ReqSourceId4, ReqSourceCount1, ReqSourceCount2, ReqSourceCount3,
ReqSourceCount4, ReqCreatureOrGOId1, ReqCreatureOrGOId2, ReqCreatureOrGOId3, ReqCreatureOrGOId4, ReqCreatureOrGOCount1,
ReqCreatureOrGOCount2, ReqCreatureOrGOCount3, ReqCreatureOrGOCount4, ReqSpellCast1, ReqSpellCast2, ReqSpellCast3,
ReqSpellCast4, RewChoiceItemId1, RewChoiceItemId2, RewChoiceItemId3, RewChoiceItemId4, RewChoiceItemId5, RewChoiceItemId6,
RewChoiceItemCount1, RewChoiceItemCount2, RewChoiceItemCount3, RewChoiceItemCount4, RewChoiceItemCount5, RewChoiceItemCount6,
RewItemId1, RewItemId2, RewItemId3, RewItemId4, RewItemCount1, RewItemCount2, RewItemCount3, RewItemCount4, RewRepFaction1,
RewRepFaction2, RewRepFaction3, RewRepFaction4, RewRepFaction5, RewRepValue1, RewRepValue2, RewRepValue3, RewRepValue4,
RewRepValue5, RewOrReqMoney, RewMoneyMaxLevel, RewSpell, RewSpellCast, RewMailTemplateId, RewMailMoney, RewMailDelaySecs,
PointMapId, PointX, PointY, PointOpt, DetailsEmote1, DetailsEmote2, DetailsEmote3, DetailsEmote4, DetailsEmoteDelay1,
DetailsEmoteDelay2, DetailsEmoteDelay3, DetailsEmoteDelay4, IncompleteEmote, CompleteEmote, OfferRewardEmote1, OfferRewardEmote2,
OfferRewardEmote3, OfferRewardEmote4, OfferRewardEmoteDelay1, OfferRewardEmoteDelay2, OfferRewardEmoteDelay3,OfferRewardEmoteDelay4,
StartScript, CompleteScript)
         values
 ('60072', '1', '2', '47', '42', '46', '60', '0', '0', '0', '0',
'0', '471', '250', '0', '0','0',
'0', '0', '0', '8', '0', '60071', '60073', '0', '0',
'0', '0', '0', 'Trimming the Vilebranch', 'Back for more, $N?\n\nThere is still more to do and more rewards to claim. Your next target will be the Vilebranchs, we think they\'re preparing something big. Their chanting can be heard even from here! Go to the Altar of Zul to the southeast, and trim their numbers!', 'Drakin Swiftaxe wants you to kill 15 Vilebranch Soothsayers and 30 Vilebranch Scalpers. Return to him when you\'re done.', 'I knew it was nothing for a $C like you! Here, take this for your troubles.', 'Did you do it? If they\'re not stopped, we might be doomed.', '', '', '',
'0', '0', '0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0', '0',
'0', '4467', '4466', '0', '0', '15',
'30', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0', '0',
'0', '14976', '2640', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '1', '0', '0', '0', '1',
'0', '0', '0', '19', '4', '0', '0',
'0', '0', '0', '0', '0','0',
0, 0);
replace into creature_questrelation (id, quest, patch_min, patch_max) values ('51566','60072','10','10');
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values ('51566','60072','10','10');

replace into quest_template (
entry, patch, Method, ZoneOrSort, MinLevel, QuestLevel, MaxLevel, Type, RequiredClasses, RequiredRaces, RequiredSkill,
RequiredSkillValue, RepObjectiveFaction, RepObjectiveValue, RequiredMinRepFaction, RequiredMinRepValue,RequiredMaxRepFaction,
RequiredMaxRepValue, SuggestedPlayers, LimitTime, QuestFlags, SpecialFlags, PrevQuestId, NextQuestId, ExclusiveGroup, NextQuestInChain,
SrcItemId, SrcItemCount, SrcSpell, Title, Details, Objectives, OfferRewardText, RequestItemsText, EndText, ObjectiveText1, ObjectiveText2,
ObjectiveText3, ObjectiveText4, ReqItemId1, ReqItemId2, ReqItemId3, ReqItemId4, ReqItemCount1, ReqItemCount2, ReqItemCount3,
ReqItemCount4, ReqSourceId1, ReqSourceId2, ReqSourceId3, ReqSourceId4, ReqSourceCount1, ReqSourceCount2, ReqSourceCount3,
ReqSourceCount4, ReqCreatureOrGOId1, ReqCreatureOrGOId2, ReqCreatureOrGOId3, ReqCreatureOrGOId4, ReqCreatureOrGOCount1,
ReqCreatureOrGOCount2, ReqCreatureOrGOCount3, ReqCreatureOrGOCount4, ReqSpellCast1, ReqSpellCast2, ReqSpellCast3,
ReqSpellCast4, RewChoiceItemId1, RewChoiceItemId2, RewChoiceItemId3, RewChoiceItemId4, RewChoiceItemId5, RewChoiceItemId6,
RewChoiceItemCount1, RewChoiceItemCount2, RewChoiceItemCount3, RewChoiceItemCount4, RewChoiceItemCount5, RewChoiceItemCount6,
RewItemId1, RewItemId2, RewItemId3, RewItemId4, RewItemCount1, RewItemCount2, RewItemCount3, RewItemCount4, RewRepFaction1,
RewRepFaction2, RewRepFaction3, RewRepFaction4, RewRepFaction5, RewRepValue1, RewRepValue2, RewRepValue3, RewRepValue4,
RewRepValue5, RewOrReqMoney, RewMoneyMaxLevel, RewSpell, RewSpellCast, RewMailTemplateId, RewMailMoney, RewMailDelaySecs,
PointMapId, PointX, PointY, PointOpt, DetailsEmote1, DetailsEmote2, DetailsEmote3, DetailsEmote4, DetailsEmoteDelay1,
DetailsEmoteDelay2, DetailsEmoteDelay3, DetailsEmoteDelay4, IncompleteEmote, CompleteEmote, OfferRewardEmote1, OfferRewardEmote2,
OfferRewardEmote3, OfferRewardEmote4, OfferRewardEmoteDelay1, OfferRewardEmoteDelay2, OfferRewardEmoteDelay3,OfferRewardEmoteDelay4,
StartScript, CompleteScript)
         values
 ('60073', '1', '2', '354', '42', '50', '60', '1', '0', '0', '0',
'0', '0', '0', '0', '0','0',
'0', '0', '0', '0', '0', '60072', '0', '0', '0',
'0', '0', '0', 'Decimate Their Ranks', 'Alright $N, we\'re chased the rats to their den. To the very southeast of the Hinterlands you\'ll find the troll city of Jintha\'alor. You\'ll encounter the very elite, practicing dark magic and foul practices.\n\nI know you\'re all powerful but I\'m not gonna lie, I don\'t think you can do this alone, bring your friends and kill EVERY. SINGLE. TROLL.\n\nNow go out there and sweep the city!', 'Drakir Swiftaxe has tasked you with the extermination of 20  
Vilebranch Berserkers, Vilebranch Shadow Hunters, Vilebranch Blood Drinkers and Vilebranch Soul Eaters, twenty of each. Do not return until you\'re done.', 'You are a true hero, $N.\n\nI expected nothing less from you. Here take this, it has more power than you think.', 'Did you do it or do you have no friends? Not my problem, go get some and sweep the city!', '', '', '',
'', '', '0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0', '0',
'0', '2643', '2645', '2646', '2647', '20',
'20', '20', '20', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0',
'51755', '0', '0', '0', '1', '0', '0', '0', '471',
'0', '0', '0', '0', '300', '0', '0', '0',
'0', '22500', '3660', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '22', '0', '0', '0', '0',
'0', '0', '0', '14', '4', '0', '0',
'0', '0', '0', '0', '0','0',
0, 0);
replace into creature_questrelation (id, quest, patch_min, patch_max) values ('51566','60073','10','10');
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values ('51566','60073','10','10');

replace into item_template (
entry, patch, class, subclass, name,description, display_id, quality, flags, buy_count,
buy_price, sell_price, inventory_type, allowable_class, allowable_race, item_level,
required_level, required_skill, required_skill_rank, required_spell, required_honor_rank,
required_city_rank, required_reputation_faction, required_reputation_rank, max_count, stackable,
container_slots, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3,
stat_type4, stat_value4, stat_type5, stat_value5, stat_type6, stat_value6, stat_type7,
stat_value7, stat_type8, stat_value8, stat_type9, stat_value9, stat_type10, stat_value10,
delay, range_mod, ammo_type, dmg_min1, dmg_max1, dmg_type1, dmg_min2, dmg_max2, dmg_type2,
dmg_min3, dmg_max3, dmg_type3, dmg_min4, dmg_max4, dmg_type4, dmg_min5, dmg_max5, dmg_type5, block,
armor, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1,
spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2,
spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2,
spellid_3, spelltrigger_3, spellcharges_3, spellppmrate_3, spellcooldown_3, spellcategory_3,
spellcategorycooldown_3, spellid_4, spelltrigger_4, spellcharges_4, spellppmrate_4, spellcooldown_4,
spellcategory_4, spellcategorycooldown_4, spellid_5, spelltrigger_5, spellcharges_5, spellppmrate_5,
spellcooldown_5, spellcategory_5, spellcategorycooldown_5, bonding, page_text, page_language, page_material,
start_quest, lock_id, material, sheath, random_property, set_id, max_durability, area_bound, map_bound,
duration, bag_family, disenchant_id, food_type, min_money_loot, max_money_loot, extra_flags, other_team_entry,
script_name)
values
 ('51755', '0', '4', '0', 'Rune of the Wildhammer Clan', 'You can hear crackling thunder and gryphon screechs within.', '20984', '2', '0', '1', '0', '13572', '12', '-1', '-1', '51',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '23727', '1', '0', '0', '-1', '0', '-1', '15464', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
      
	  
replace into quest_template (
entry, patch, Method, ZoneOrSort, MinLevel, QuestLevel, MaxLevel, Type, RequiredClasses, RequiredRaces, RequiredSkill,
RequiredSkillValue, RepObjectiveFaction, RepObjectiveValue, RequiredMinRepFaction, RequiredMinRepValue,RequiredMaxRepFaction,
RequiredMaxRepValue, SuggestedPlayers, LimitTime, QuestFlags, SpecialFlags, PrevQuestId, NextQuestId, ExclusiveGroup, NextQuestInChain,
SrcItemId, SrcItemCount, SrcSpell, Title, Details, Objectives, OfferRewardText, RequestItemsText, EndText, ObjectiveText1, ObjectiveText2,
ObjectiveText3, ObjectiveText4, ReqItemId1, ReqItemId2, ReqItemId3, ReqItemId4, ReqItemCount1, ReqItemCount2, ReqItemCount3,
ReqItemCount4, ReqSourceId1, ReqSourceId2, ReqSourceId3, ReqSourceId4, ReqSourceCount1, ReqSourceCount2, ReqSourceCount3,
ReqSourceCount4, ReqCreatureOrGOId1, ReqCreatureOrGOId2, ReqCreatureOrGOId3, ReqCreatureOrGOId4, ReqCreatureOrGOCount1,
ReqCreatureOrGOCount2, ReqCreatureOrGOCount3, ReqCreatureOrGOCount4, ReqSpellCast1, ReqSpellCast2, ReqSpellCast3,
ReqSpellCast4, RewChoiceItemId1, RewChoiceItemId2, RewChoiceItemId3, RewChoiceItemId4, RewChoiceItemId5, RewChoiceItemId6,
RewChoiceItemCount1, RewChoiceItemCount2, RewChoiceItemCount3, RewChoiceItemCount4, RewChoiceItemCount5, RewChoiceItemCount6,
RewItemId1, RewItemId2, RewItemId3, RewItemId4, RewItemCount1, RewItemCount2, RewItemCount3, RewItemCount4, RewRepFaction1,
RewRepFaction2, RewRepFaction3, RewRepFaction4, RewRepFaction5, RewRepValue1, RewRepValue2, RewRepValue3, RewRepValue4,
RewRepValue5, RewOrReqMoney, RewMoneyMaxLevel, RewSpell, RewSpellCast, RewMailTemplateId, RewMailMoney, RewMailDelaySecs,
PointMapId, PointX, PointY, PointOpt, DetailsEmote1, DetailsEmote2, DetailsEmote3, DetailsEmote4, DetailsEmoteDelay1,
DetailsEmoteDelay2, DetailsEmoteDelay3, DetailsEmoteDelay4, IncompleteEmote, CompleteEmote, OfferRewardEmote1, OfferRewardEmote2,
OfferRewardEmote3, OfferRewardEmote4, OfferRewardEmoteDelay1, OfferRewardEmoteDelay2, OfferRewardEmoteDelay3,OfferRewardEmoteDelay4,
StartScript, CompleteScript)
         values
 ('60074', '1', '2', '354', '42', '50', '60', '1', '0', '0', '0',
'0', '0', '0', '0', '0','0',
'0', '5', '0', '0', '0', '60072', '0', '0', '0',
'0', '0', '0', 'Bring Down the Priestess!', 'I\'ve been making you kill trolls left and right but this time, we have an actual target for once! We got reports of their leader, Vile Priestess Hexx rallying the Vilebranch trolls for an assault on Aerie Peak! We can\'t let that happen, can we?\n\nGather your friends and climb the city of Jintha\'alor to the very southeast and kill her and her special guards. You will be richly rewarded for you efforts.', 'Drakir Swiftaxe has tasked you with death of Vile Priestess Hexx and 20 Vilebranch Aman\'zasi Guards in the city of Jintha\'alor, to the very southeast of Aerie Peak.\n\nReturn to him when it\'s done.', 'You truly dealt a mighty blow to the Vilebranch trolls, they won\'t be attacking us anytime soon. Here, a reward truly worthy of the hero you are!', 'The possibility of an assault increases with every passing moment, go there and stop her plans!', '', 'Vilebranch Aman\'zasi Guards slain (20)', 'Vile Priestess Hexx slain',
'0', '0', '0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0', '0',
'0', '2648', '7995', '0', '0', '20',
'1', '0', '0', '0', '0', '0',
'0', '51756', '51757', '0', '0', '0', '0',
'1', '1', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0', '0', '471',
'0', '0', '0', '0', '300', '0', '0', '0',
'0', '22500', '3660', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '5', '2', '0', '0',
'0', '0', '0', '0', '0','0',
0, 0);
replace into creature_questrelation (id, quest, patch_min, patch_max) values ('51566','60074','10','10');
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values ('51566','60074','10','10');
      
	  
	  replace into item_template (
entry, patch, class, subclass, name,description, display_id, quality, flags, buy_count,
buy_price, sell_price, inventory_type, allowable_class, allowable_race, item_level,
required_level, required_skill, required_skill_rank, required_spell, required_honor_rank,
required_city_rank, required_reputation_faction, required_reputation_rank, max_count, stackable,
container_slots, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3,
stat_type4, stat_value4, stat_type5, stat_value5, stat_type6, stat_value6, stat_type7,
stat_value7, stat_type8, stat_value8, stat_type9, stat_value9, stat_type10, stat_value10,
delay, range_mod, ammo_type, dmg_min1, dmg_max1, dmg_type1, dmg_min2, dmg_max2, dmg_type2,
dmg_min3, dmg_max3, dmg_type3, dmg_min4, dmg_max4, dmg_type4, dmg_min5, dmg_max5, dmg_type5, block,
armor, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1,
spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2,
spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2,
spellid_3, spelltrigger_3, spellcharges_3, spellppmrate_3, spellcooldown_3, spellcategory_3,
spellcategorycooldown_3, spellid_4, spelltrigger_4, spellcharges_4, spellppmrate_4, spellcooldown_4,
spellcategory_4, spellcategorycooldown_4, spellid_5, spelltrigger_5, spellcharges_5, spellppmrate_5,
spellcooldown_5, spellcategory_5, spellcategorycooldown_5, bonding, page_text, page_language, page_material,
start_quest, lock_id, material, sheath, random_property, set_id, max_durability, area_bound, map_bound,
duration, bag_family, disenchant_id, food_type, min_money_loot, max_money_loot, extra_flags, other_team_entry,
script_name)
values
 ('51756', '0', '4', '1', 'Pendant of the Deep Woodlands', '', '9860', '3', '0', '1', '0', '0', '2', '-1', '-1', '51',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '6', '7', '7',
 '6', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '10',
 '0', '0', '0', '9417', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template (
entry, patch, class, subclass, name,description, display_id, quality, flags, buy_count,
buy_price, sell_price, inventory_type, allowable_class, allowable_race, item_level,
required_level, required_skill, required_skill_rank, required_spell, required_honor_rank,
required_city_rank, required_reputation_faction, required_reputation_rank, max_count, stackable,
container_slots, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3,
stat_type4, stat_value4, stat_type5, stat_value5, stat_type6, stat_value6, stat_type7,
stat_value7, stat_type8, stat_value8, stat_type9, stat_value9, stat_type10, stat_value10,
delay, range_mod, ammo_type, dmg_min1, dmg_max1, dmg_type1, dmg_min2, dmg_max2, dmg_type2,
dmg_min3, dmg_max3, dmg_type3, dmg_min4, dmg_max4, dmg_type4, dmg_min5, dmg_max5, dmg_type5, block,
armor, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1,
spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2,
spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2,
spellid_3, spelltrigger_3, spellcharges_3, spellppmrate_3, spellcooldown_3, spellcategory_3,
spellcategorycooldown_3, spellid_4, spelltrigger_4, spellcharges_4, spellppmrate_4, spellcooldown_4,
spellcategory_4, spellcategorycooldown_4, spellid_5, spelltrigger_5, spellcharges_5, spellppmrate_5,
spellcooldown_5, spellcategory_5, spellcategorycooldown_5, bonding, page_text, page_language, page_material,
start_quest, lock_id, material, sheath, random_property, set_id, max_durability, area_bound, map_bound,
duration, bag_family, disenchant_id, food_type, min_money_loot, max_money_loot, extra_flags, other_team_entry,
script_name)
values
 ('51757', '0', '4', '1', 'Ivy Woven Cloak', 'Don\'t worry, the backside has been trimmed.', '26951', '3', '0', '1', '0', '9835', '16', '-1', '-1', '51',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '8', '4', '9',
 '7', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '101', '0', '0', '10',
 '0', '0', '0', '21991', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 REPLACE INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (51568, 0, 3377, 0, 0, 0, 'Amber Armstrong', 'Campkeeper', 1291, 30, 30, 1605, 1605, 0, 0, 1200, 12, 135, 1, 1.14286, 0, 20, 5, 0, 0, 1, 42, 53, 0, 122, 1, 1000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 45.144, 62.073, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 524298, '');
 
REPLACE INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (51569, 0, 6852, 0, 0, 0, 'Riding Gryphon', NULL, 0, 29, 29, 1528, 1528, 1126, 1126, 0, 35, 0, 1.07, 1.14286, 0, 20, 5, 0, 0, 1, 9, 10, 0, 120, 1, 1720, 1892, 1, 0, 0, 0, 0, 0, 0, 0, 43.8944, 60.3548, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 86, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2, 'npc_riding_gryphon_back');  

update creature_template set faction = 694 where entry = 51566;

delete from creature where id = 51566;
REPLACE INTO `creature` (`id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (51566, 0, 0, 0, 327.283, -2146.56, 123.228, 1.7341, 25, 25, 0, 0, 100, 100, 0, 0, 0, 0, 0, 10);


-- More.

replace into item_template (
entry, patch, class, subclass, name,description, display_id, quality, flags, buy_count,
buy_price, sell_price, inventory_type, allowable_class, allowable_race, item_level,
required_level, required_skill, required_skill_rank, required_spell, required_honor_rank,
required_city_rank, required_reputation_faction, required_reputation_rank, max_count, stackable,
container_slots, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3,
stat_type4, stat_value4, stat_type5, stat_value5, stat_type6, stat_value6, stat_type7,
stat_value7, stat_type8, stat_value8, stat_type9, stat_value9, stat_type10, stat_value10,
delay, range_mod, ammo_type, dmg_min1, dmg_max1, dmg_type1, dmg_min2, dmg_max2, dmg_type2,
dmg_min3, dmg_max3, dmg_type3, dmg_min4, dmg_max4, dmg_type4, dmg_min5, dmg_max5, dmg_type5, block,
armor, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1,
spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2,
spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2,
spellid_3, spelltrigger_3, spellcharges_3, spellppmrate_3, spellcooldown_3, spellcategory_3,
spellcategorycooldown_3, spellid_4, spelltrigger_4, spellcharges_4, spellppmrate_4, spellcooldown_4,
spellcategory_4, spellcategorycooldown_4, spellid_5, spelltrigger_5, spellcharges_5, spellppmrate_5,
spellcooldown_5, spellcategory_5, spellcategorycooldown_5, bonding, page_text, page_language, page_material,
start_quest, lock_id, material, sheath, random_property, set_id, max_durability, area_bound, map_bound,
duration, bag_family, disenchant_id, food_type, min_money_loot, max_money_loot, extra_flags, other_team_entry,
script_name)
values
 ('51807', '0', '12', '0', 'Gretchen\'s Slippers', 'A worn pair of cozy slippers.', '31646', '1', '0', '1', '0', '0', '0', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 replace into quest_template (
entry, patch, Method, ZoneOrSort, MinLevel, QuestLevel, MaxLevel, Type, RequiredClasses, RequiredRaces, RequiredSkill,
RequiredSkillValue, RepObjectiveFaction, RepObjectiveValue, RequiredMinRepFaction, RequiredMinRepValue,RequiredMaxRepFaction,
RequiredMaxRepValue, SuggestedPlayers, LimitTime, QuestFlags, SpecialFlags, PrevQuestId, NextQuestId, ExclusiveGroup, NextQuestInChain,
SrcItemId, SrcItemCount, SrcSpell, Title, Details, Objectives, OfferRewardText, RequestItemsText, EndText, ObjectiveText1, ObjectiveText2,
ObjectiveText3, ObjectiveText4, ReqItemId1, ReqItemId2, ReqItemId3, ReqItemId4, ReqItemCount1, ReqItemCount2, ReqItemCount3,
ReqItemCount4, ReqSourceId1, ReqSourceId2, ReqSourceId3, ReqSourceId4, ReqSourceCount1, ReqSourceCount2, ReqSourceCount3,
ReqSourceCount4, ReqCreatureOrGOId1, ReqCreatureOrGOId2, ReqCreatureOrGOId3, ReqCreatureOrGOId4, ReqCreatureOrGOCount1,
ReqCreatureOrGOCount2, ReqCreatureOrGOCount3, ReqCreatureOrGOCount4, ReqSpellCast1, ReqSpellCast2, ReqSpellCast3,
ReqSpellCast4, RewChoiceItemId1, RewChoiceItemId2, RewChoiceItemId3, RewChoiceItemId4, RewChoiceItemId5, RewChoiceItemId6,
RewChoiceItemCount1, RewChoiceItemCount2, RewChoiceItemCount3, RewChoiceItemCount4, RewChoiceItemCount5, RewChoiceItemCount6,
RewItemId1, RewItemId2, RewItemId3, RewItemId4, RewItemCount1, RewItemCount2, RewItemCount3, RewItemCount4, RewRepFaction1,
RewRepFaction2, RewRepFaction3, RewRepFaction4, RewRepFaction5, RewRepValue1, RewRepValue2, RewRepValue3, RewRepValue4,
RewRepValue5, RewOrReqMoney, RewMoneyMaxLevel, RewSpell, RewSpellCast, RewMailTemplateId, RewMailMoney, RewMailDelaySecs,
PointMapId, PointX, PointY, PointOpt, DetailsEmote1, DetailsEmote2, DetailsEmote3, DetailsEmote4, DetailsEmoteDelay1,
DetailsEmoteDelay2, DetailsEmoteDelay3, DetailsEmoteDelay4, IncompleteEmote, CompleteEmote, OfferRewardEmote1, OfferRewardEmote2,
OfferRewardEmote3, OfferRewardEmote4, OfferRewardEmoteDelay1, OfferRewardEmoteDelay2, OfferRewardEmoteDelay3,OfferRewardEmoteDelay4,
StartScript, CompleteScript)
         values
 ('60107', '1', '2', '85', '8', '10', '15', '0', '0', '0', '0',
'0', '0', '0', '0', '0','0',
'0', '0', '0', '0', '0', '375', '0', '0', '0',
'0', '0', '0', 'Cold Feet', 'The damned cold won\'t leave me. I thank you for the pelts, $N but I wonder if I may trouble you again?\n\nI paid a helpful soul, Calvin, to go to Solliden Farmstead to retrieve my slippers before you happened along. He hasn\'t returned and I\'ve heard that he may be less than honest. Undeath doesn\'t change an opportunist it seems. My slippers are in a footlocker at the farmstead.\n\nThe reports I overheard about Scarlets in the area are the least concerning. The murlocs like anything shiny I\'ve heard and I did keep that footlocker polished up...', 'Retrieve Gretchen\'s slippers from the shiny footlocker north of Solliden Farmstead.', 'My slippers! Thank you very much! You have shown a great kindness to me. Please take this coin for your troubles. Dark lady watch over you.', 'Hello again, $N. Have you made the trip to the shore North of Solliden Farmstead yet?', '', '', '',
'', '', '51807', '0', '0', '0', '1', '0', '0',
'0', '0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0', '0',
'0', '300', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '16', '26',
'0', '0', '5', '7', '0','0',
0, 0);
replace into creature_questrelation (id, quest, patch_min, patch_max) values ('1521','60107','10','10');
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values ('1521','60107','10','10');
      
replace into gameobject_template values 
(1000383, 0, 3, 5744, 'Seaweed-covered Footlocker', 0, 0, 0.7, 57, 1000383, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES 
(1000383, 51807, 100, 1, 1, 1, 0, 0, 10);

delete from gameobject where id = 1000383;
REPLACE INTO `gameobject` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (1000383, 0, 2510.85, 1500.83, 0.742392, 5.50204, 0, 0, 0.380717, -0.924692, 25, 25, 100, 1, 0, 0, 0, 10);

-- New Pet fro Kazgrim

replace into item_template (entry, class, subclass, name, description, display_id, quality, bonding, spellid_1, spellcooldown_1) values
(51760, 15, 2, 'Gryphon Hatchling', 'A gift from the Wildhammer dwarves to the heroes of the Alliance, these hatchlings are descendants of the same gryphons ridden by Falstad and his entourage into Grim Batol.', 1294, 3, 1, 28505, 1500);
replace into creature_template (entry, display_id1, display_id2, display_id3, name, subname, level_min, level_max, health_min, health_max, faction, script_name, scale) values
(51570, '6852', 0, 0, 'Beaky', '', '1', '1', '64', '64', '35', '', 0.4);
replace into custom_pet_entry_relation (item_entry, creature_entry) values 
(51760, 51570);

-- Wormhole quest

SET @quest_entry = 60107;
SET @quest_zone = 2255;
SET @faction_id = 0;
SET @faction_count = 0;
SET @xp_or_money = 450;
SET @quest_level = 5;
SET @min_level = 1;
SET @questgiver_id = 51564;
SET @quest_finisher = 51562;
SET @nextquest = 0;
SET @nextquestinchain = 0;
SET @prevquest = 0;
SET @reward_item_1 = 0;
SET @reward_item_2 = 0;
SET @reward_item_3 = 0;
SET @reward_item_4 = 0;
SET @reward_item_1_count = 51310;
SET @reward_item_2_count = 0;
SET @reward_item_3_count = 0;
SET @reward_item_4_count = 0;
SET @creature_to_kill_1 = 1;
SET @creature_to_kill_2 = 0;
SET @creature_to_kill_3 = 0;
SET @creature_to_kill_4 = 0;
SET @creature_to_kill_1_count = 0;
SET @creature_to_kill_2_count = 0;
SET @creature_to_kill_3_count = 0;
SET @creature_to_kill_4_count = 0;
SET @required_item_1 = 0;
SET @required_item_2 = 0;
SET @required_item_3 = 0;
SET @required_item_4 = 0;
SET @required_item_1_count = 5;
SET @required_item_2_count = 3;
SET @required_item_3_count = 1;
SET @required_item_4_count = 0;

replace into quest_template (entry, patch, Method, ZoneOrSort, MinLevel, QuestLevel, MaxLevel, Type, RequiredClasses, RequiredRaces, RequiredSkill,
RequiredSkillValue, RepObjectiveFaction, RepObjectiveValue, RequiredMinRepFaction, RequiredMinRepValue,RequiredMaxRepFaction,
RequiredMaxRepValue, SuggestedPlayers, LimitTime, QuestFlags, SpecialFlags, PrevQuestId, NextQuestId, ExclusiveGroup, NextQuestInChain,
SrcItemId, SrcItemCount, SrcSpell, Title, Details, Objectives, OfferRewardText, RequestItemsText, EndText, ObjectiveText1, ObjectiveText2,
ObjectiveText3, ObjectiveText4, ReqItemId1, ReqItemId2, ReqItemId3, ReqItemId4, ReqItemCount1, ReqItemCount2, ReqItemCount3,
ReqItemCount4, ReqSourceId1, ReqSourceId2, ReqSourceId3, ReqSourceId4, ReqSourceCount1, ReqSourceCount2, ReqSourceCount3,
ReqSourceCount4, ReqCreatureOrGOId1, ReqCreatureOrGOId2, ReqCreatureOrGOId3, ReqCreatureOrGOId4, ReqCreatureOrGOCount1,
ReqCreatureOrGOCount2, ReqCreatureOrGOCount3, ReqCreatureOrGOCount4, ReqSpellCast1, ReqSpellCast2, ReqSpellCast3,
ReqSpellCast4, RewChoiceItemId1, RewChoiceItemId2, RewChoiceItemId3, RewChoiceItemId4, RewChoiceItemId5, RewChoiceItemId6,
RewChoiceItemCount1, RewChoiceItemCount2, RewChoiceItemCount3, RewChoiceItemCount4, RewChoiceItemCount5, RewChoiceItemCount6,
RewItemId1, RewItemId2, RewItemId3, RewItemId4, RewItemCount1, RewItemCount2, RewItemCount3, RewItemCount4, RewRepFaction1,
RewRepFaction2, RewRepFaction3, RewRepFaction4, RewRepFaction5, RewRepValue1, RewRepValue2, RewRepValue3, RewRepValue4,
RewRepValue5, RewOrReqMoney, RewMoneyMaxLevel, RewSpell, RewSpellCast, RewMailTemplateId, RewMailMoney, RewMailDelaySecs,
PointMapId, PointX, PointY, PointOpt, DetailsEmote1, DetailsEmote2, DetailsEmote3, DetailsEmote4, DetailsEmoteDelay1,
DetailsEmoteDelay2, DetailsEmoteDelay3, DetailsEmoteDelay4, IncompleteEmote, CompleteEmote, OfferRewardEmote1, OfferRewardEmote2,
OfferRewardEmote3, OfferRewardEmote4, OfferRewardEmoteDelay1, OfferRewardEmoteDelay2, OfferRewardEmoteDelay3,OfferRewardEmoteDelay4,
StartScript, CompleteScript) values

(@quest_entry, '0', '2', @quest_zone, @min_level, @quest_level, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 

'Into the Unknown', 

'Greetings, $R!\n\nYou look like s brave soul. What if I told you I am on the brink of revolutionizing travel as we know it?\n\nThrough some clever recombobulating of magic Runes that mages use I was able to make a device that can open a wormhole which can be used to teleport someone to a place on the other side of the world.\n\nBehold the invention that will change travel as we know it! I call it the Portable Wormhole Generator.\n\nNow the only thing left to do is to test it... That\'s where you come in.\n\nIf you are willing to step into the portal created by the Generator you should end up in Stormwind where my partner Felix will be waiting for you. Do this and you will be given one of the devices as a show of our gratidude.\n\nGood luck!
', 

'Test Portable Wormhole Generator.', 

'By the Gods it actually worked! I can\'t believe it!\n\nI mean.. of course it worked, worked just fine.\n\nThis changes everything. Thank you $R, it took no small amount of courage to step into that portal not knowing for certain what was on the other side. I\'m sure Herman promised you a reward, so here it is, your very own Portable Wormhole Generator.\n\nUse it well, and for your own good don\'t fiddle around with it. Good luck!', 

'Nothing to be afraid of... Nothing at all!', 

'', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', @faction_id, '0', '0', '0', '0', @faction_count, '0', '0', '0', '0', '0', @xp_or_money, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', 0, 0);
      
update quest_template set 
rewitemid1 = @reward_item_1, rewitemcount1 = @reward_item_1_count,
rewitemid2 = @reward_item_2, rewitemcount2 = @reward_item_2_count,
rewitemid3 = @reward_item_3, rewitemcount3 = @reward_item_3_count,
rewitemid4 = @reward_item_4, rewitemcount4 = @reward_item_4_count,
ReqCreatureOrGOId1 = @creature_to_kill_1, ReqCreatureOrGOCount1 = @creature_to_kill_1_count,
ReqCreatureOrGOId2 = @creature_to_kill_2, ReqCreatureOrGOCount2 = @creature_to_kill_2_count,
ReqCreatureOrGOId3 = @creature_to_kill_3, ReqCreatureOrGOCount3 = @creature_to_kill_3_count,
ReqCreatureOrGOId4 = @creature_to_kill_4, ReqCreatureOrGOCount4 = @creature_to_kill_4_count,
reqitemid1 = @required_item_1, reqitemcount1 = @required_item_1_count,
reqitemid2 = @required_item_2, reqitemcount2 = @required_item_2_count,
reqitemid3 = @required_item_3, reqitemcount3 = @required_item_3_count,
reqitemid4 = @required_item_4, reqitemcount4 = @required_item_4_count
where entry = @quest_entry;

-- set faction for defias rioter
UPDATE `creature_template` SET `faction` = 17 WHERE entry = 5043;

-- add middle lane pathing
INSERT INTO `creature_movement_special` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(504301, 1, -8716.43, 884.722, 76.3504, 100, 0, 0, 0),
(504301, 2, -8742.05, 864.404, 76.5227, 100, 0, 0, 0),
(504301, 3, -8754.53, 854.314, 82.5392, 100, 0, 0, 0),
(504301, 4, -8762.12, 848.166, 86.1997, 100, 0, 0, 0),
(504301, 5, -8764.43, 846.379, 87.2971, 100, 0, 0, 0),
(504301, 6, -8772.04, 840.429, 90.9329, 100, 0, 0, 0),
(504301, 7, -8780.68, 833.842, 95.0307, 100, 0, 0, 0);

-- add left lane pathing
INSERT INTO `creature_movement_special` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(504302, 1, -8713.28, 884.912, 76.351, 100, 0, 0, 0),
(504302, 2, -8740.69, 863.015, 76.448, 100, 0, 0, 0),
(504302, 3, -8753.21, 852.692, 82.5292, 100, 0, 0, 0),
(504302, 4, -8760.63, 846.642, 86.1184, 100, 0, 0, 0),
(504302, 5, -8762.88, 844.698, 87.2342, 100, 0, 0, 0),
(504302, 6, -8770.44, 838.699, 90.8653, 100, 0, 0, 0),
(504302, 7, -8778.45, 831.800, 94.8518, 100, 0, 0, 0);

-- add right lane pathing
INSERT INTO `creature_movement_special` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(504303, 1, -8715.18, 887.661, 76.3511, 100, 0, 0, 0),
(504303, 2, -8742.84, 865.801, 76.4288, 100, 0, 0, 0),
(504303, 3, -8755.53, 855.885, 82.4662, 100, 0, 0, 0),
(504303, 4, -8763.28, 849.84, 86.1526, 100, 0, 0, 0),
(504303, 5, -8765.64, 847.962, 87.2845, 100, 0, 0, 0),
(504303, 6, -8773.36, 842.437, 90.8508, 100, 0, 0, 0),
(504303, 7, -8781.85, 835.478, 94.9935, 100, 0, 0, 0);

-- add event
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (171902, 1719, 0, 1, 0, 100, 1, 1800000, 1800000, 1800000, 1800000, 171902, 0, 0, 'Warden Thelwater - Start Stockade Jailbreak Event');

-- add event scripts
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (171902, 0, 10, 5043, 15000, 0, 0, 0, 0, 0, 0, 1, 504301, 6, 6, -8716.43, 884.722, 76.3504, 3.84802, 0, 'jailbreak - summon middle lane 1');
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (171902, 0, 10, 5043, 15000, 0, 0, 0, 0, 0, 0, 1, 504302, 6, 6, -8713.28, 884.912, 76.351, 3.84802, 0, 'jailbreak - summon left lane 1');
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (171902, 0, 10, 5043, 15000, 0, 0, 0, 0, 0, 0, 1, 504303, 6, 6, -8715.18, 887.661, 76.3511, 3.84802, 0, 'jailbreak - summon right lane 1');
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (171902, 0, 10, 5043, 15000, 0, 0, 0, 0, 0, 0, 1, 504301, 6, 6, -8714.18, 886.3988, 76.3511, 3.84802, 0, 'jailbreak - summon middle lane 2');
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (171902, 0, 10, 5043, 15000, 0, 0, 0, 0, 0, 0, 1, 504301, 6, 6, -8712.94, 887.305, 76.3511, 3.84802, 0, 'jailbreak - summon middle lane 3');
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (171902, 0, 10, 5043, 15000, 0, 0, 0, 0, 0, 0, 1, 504302, 6, 6, -8711.87, 885.939, 76.3511, 3.84802, 0, 'jailbreak - summon left lane 2');
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (171902, 0, 10, 5043, 15000, 0, 0, 0, 0, 0, 0, 1, 504303, 6, 6, -8714.06, 888.635, 76.3511, 3.84802, 0, 'jailbreak - summon right lane 2');

-- add event scripts, scripts
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (504301, 0, 60, 3, 0, 0, 0, 0, 0, 0, 0, 0, 504301, 0, 0, 0, 0, 0, 0, 0, 'jailbreak - middle lane move');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (504302, 0, 60, 3, 0, 0, 0, 0, 0, 0, 0, 0, 504302, 0, 0, 0, 0, 0, 0, 0, 'jailbreak - left lane move');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (504303, 0, 60, 3, 0, 0, 0, 0, 0, 0, 0, 0, 504303, 0, 0, 0, 0, 0, 0, 0, 'jailbreak - right lane move');

- update script id's in pathing
UPDATE `creature_movement_template` SET `script_id` = 504201 WHERE `entry` = 5042 AND `point` IN (1,6,10,13);

-- slight update to timing, emotes and script id for nurse lilian
DELETE FROM `creature_movement_scripts` WHERE `id`=5042;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (504201, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1680, 1681, 1685, 1682, 0, 0, 0, 0, 0, 'Nurse Lilian Pathing - Speech');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (504201, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Nurse Lilian Pathing - Speech Emote');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (504201, 1, 28, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Nurse Lilian Pathing - Crouch');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (504201, 10, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Nurse Lilian Pathing - Stand');

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

UPDATE `quest_template` SET `ExclusiveGroup` = 0 WHERE `entry` = 1661;

UPDATE `creature_template` SET `skinning_loot_id` = 0 WHERE `skinning_loot_id` = 100001;
DELETE FROM `skinning_loot_template` where `entry` = 100001;

-- correct position of justine demalier
UPDATE `creature` SET `position_x` = -8825.5, `position_y` = 630.778, `position_z` = 94.1948, `orientation` = 3.82227 WHERE `id` = 12481;

-- correct position of melgris malagan
UPDATE `creature` SET `position_x` = -8824.71, `position_y` = 629.821, `position_z` = 94.1077, `orientation` = 4.03171 WHERE `id` = 12480;

-- Fix Reginald's horse faction
UPDATE `creature_template` SET `faction` = 12 WHERE `entry` = 12581;

-- Fix equip template of spawned Onyxia guards
UPDATE `creature_equip_template` SET `equipentry1` = 1899, `equipentry2` = 143 WHERE `entry` = 12739;

-- Fixing broadcast texts
UPDATE `broadcast_text` SET `EmoteId0` = 1 WHERE `ID` IN (8090, 8107, 8121, 8123, 8125, 8132, 8126, 8126, 8130, 8210, 8212, 8215, 8216, 8218, 8219, 8227, 8235);
UPDATE `broadcast_text` SET `EmoteId0` = 22 WHERE `ID` IN (8109, 8127, 8128, 8129);
UPDATE `broadcast_text` SET `EmoteId0` = 35 WHERE `ID` = 8091;
UPDATE `broadcast_text` SET `EmoteId0` = 11 WHERE `ID` = 8214;
UPDATE `broadcast_text` SET `EmoteId0` = 25 WHERE `ID` IN (8206, 8207, 8211);

UPDATE `broadcast_text` SET `Type` = 6 WHERE `ID` = 8119;
UPDATE `broadcast_text` SET `Type` = 1 WHERE `ID` IN (8109, 8129, 8248);