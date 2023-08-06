-- ITEM 50079 (Island Frog) set drop to the following NPCS with a drop chance of 0.08%
-- 91857
-- 91858
-- 91860
-- 91833
-- 91844
-- 91835
-- 92146
-- 91962
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(91857, 50079, 0.08, 9, 1, 1, 0),
(91858, 50079, 0.08, 9, 1, 1, 0),
(91860, 50079, 0.08, 9, 1, 1, 0),
(91833, 50079, 0.08, 9, 1, 1, 0),
(91844, 50079, 0.08, 9, 1, 1, 0),
(91835, 50079, 0.08, 9, 1, 1, 0),
(92146, 50079, 0.08, 9, 1, 1, 0),
(91962, 50079, 0.08, 9, 1, 1, 0);
-- ITEM 54000 (Azure Frog) set drop to the following NPCS with a drop chance of 0.08%
-- 60909
-- 60910
-- 10659
-- 10660
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(60909, 54000, 0.08, 9, 1, 1, 0),
(60910, 54000, 0.08, 9, 1, 1, 0),
(10659, 54000, 0.08, 9, 1, 1, 0),
(10660, 54000, 0.08, 9, 1, 1, 0);
-- ITEM 54001 (Dream Frog) set drop to the following NPCS with a drop chance of 0.08%
-- 60742
-- 60743
-- 60744
-- 60745
-- 60746
-- 61212
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(60742, 54001, 0.08, 9, 1, 1, 0),
(60743, 54001, 0.08, 9, 1, 1, 0),
(60744, 54001, 0.08, 9, 1, 1, 0),
(60745, 54001, 0.08, 9, 1, 1, 0),
(60746, 54001, 0.08, 9, 1, 1, 0),
(61212, 54001, 0.08, 9, 1, 1, 0);
-- ITEM 54003 (Infinite Frog) set drop to the following NPCS with a drop chance of 0.03% , change item 54003 to be bind on use
-- 65100
-- 65101
-- 65102
-- 65103
-- 65104
-- 65105
update item_template set bonding = 3 where entry = 54003;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(65100, 54003, 0.03, 8, 1, 1, 0),
(65101, 54003, 0.03, 8, 1, 1, 0),
(65102, 54003, 0.03, 8, 1, 1, 0),
(65103, 54003, 0.03, 8, 1, 1, 0),
(65104, 54003, 0.03, 8, 1, 1, 0),
(65105, 54003, 0.03, 8, 1, 1, 0);
-- ITEM 54004 (Poison Frog) set drop to the following NPCS with a drop chance of 0.09%, change item 54004 to be bind on use
-- 8603
-- 8522
-- 8521
-- 8598
-- 8543
-- 8540
-- 8532
-- 8605
update item_template set bonding = 3 where entry = 54004;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(8603, 54004, 0.09, 9, 1, 1, 0),
(8522, 54004, 0.09, 9, 1, 1, 0),
(8521, 54004, 0.09, 9, 1, 1, 0),
(8598, 54004, 0.09, 9, 1, 1, 0),
(8543, 54004, 0.09, 9, 1, 1, 0),
(8540, 54004, 0.09, 9, 1, 1, 0),
(8532, 54004, 0.09, 9, 1, 1, 0),
(8605, 54004, 0.09, 9, 1, 1, 0);
-- ITEM 54005 (Snow Frog) set drop to the following NPCS with a drop chance of 0.03% , change item 54005 to be bind on use
-- 7438
-- 7439
-- 7440
-- 7441
-- 7442
update item_template set bonding = 3 where entry = 54005;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(7438, 54005, 0.03, 9, 1, 1, 0),
(7439, 54005, 0.03, 9, 1, 1, 0),
(7440, 54005, 0.03, 9, 1, 1, 0),
(7441, 54005, 0.03, 9, 1, 1, 0),
(7442, 54005, 0.03, 9, 1, 1, 0);
-- ITEM 54007 (Gold Frog) set drop to the following NPCS with a drop chance of 0.05%, change item 54007 to be bind on use
-- 61083
-- 61084
-- 61085
-- 61086
-- 61087
-- 61088
-- 61129
-- 61130
-- 61131
-- 61079
update item_template set bonding = 3 where entry = 54007;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(61083, 54007, 0.05, 9, 1, 1, 0),
(61084, 54007, 0.05, 9, 1, 1, 0),
(61085, 54007, 0.05, 9, 1, 1, 0),
(61086, 54007, 0.05, 9, 1, 1, 0),
(61087, 54007, 0.05, 9, 1, 1, 0),
(61088, 54007, 0.05, 9, 1, 1, 0),
(61129, 54007, 0.05, 9, 1, 1, 0),
(61130, 54007, 0.05, 9, 1, 1, 0),
(61131, 54007, 0.05, 9, 1, 1, 0),
(61079, 54007, 0.05, 9, 1, 1, 0);
-- ITEM 54002 (Bullfrog) add to the vendor list of Dirge Quikcleave (entry 8125) with 1 stock and a respawn of 1 hr
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES
(8125, 54002, 1, 3600, 0, 0);
-- Item 54008 add to the sell list of creature 11874 (Masat T'andr) with a stock of 2 and a respawn rate of 1hr
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES
(11874, 54008, 2, 3600, 0, 0);
-- Enable gameobjects: (These are displayid entries, you need to create new ones)
-- 33259 - world\generic\PVP\OilRigs\BF2_OilTower_01.m2
-- 33260 - world\generic\PVP\OilRigs\BF2_OilTower_02.m2
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `phase_quest_id`, `script_name`) VALUES
(2020060, 5, 33259, 'World Generic PVP OilRigs BF2_OilTower_01.mdx', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(2020061, 5, 33260, 'World Generic PVP OilRigs BF2_OilTower_02.mdx', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
-- NPC Rashi Goldtongue <DJ> - Displayid 20440 - faction 855 - level 42 - Gossip text: Yo pal! Welcome to my studio! it is a little crowded but I make due. You are talkin' to Rashi Goldtongue, the DJ broadcasting live from Everlook! Tune in to my show sometime aight?
REPLACE INTO `creature_template` (`entry`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `mount_display_id`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `spawn_spell_id`, `auras`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `phase_quest_id`, `script_name`) VALUES
(61641, 20440, 0, 0, 0, 0, 'Rashi Goldtongue', 'DJ', 0, 42, 42, 1981, 1981, 0, 0, 2246, 855, 3, 1, 1.14286, 1, 18, 5, 0, 0, 1, 64, 79, 0, 172, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 58.7664, 80.8038, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @gossip_menu_id = 41540; set @magic_number = 61641;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Yo pal! Welcome to my studio! it is a little crowded but I make due. You are talkin\' to Rashi Goldtongue, the DJ broadcasting live from Everlook! Tune in to my show sometime aight?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;