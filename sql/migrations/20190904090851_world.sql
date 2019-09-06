DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190904090851');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190904090851');
-- Add your query below.
replace into `creature_template` (`entry`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `Civilian`, `Racial_Leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `Mechanic_Immune_Mask`, `School_Immune_Mask`, `flags_extra`, `Script_Name`) 
values
(50513,3019, 0, 0, 0, 'Expert Training Dummy', '', 0, 60, 60, 1000000, 1000000, 0, 0, 3000, 914,  0, 0.91, 1.14286, 2, 0, 1, 2, 0, 0, 1, 2000, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 100, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, 17, 0, 64, 'custom_npc_training_dummy'),
(50514,3019, 0, 0, 0, 'Heroic Training Dummy', '', 0, 63, 63, 1000000, 1000000, 0, 0, 5000, 914, 0, 0.91, 1.14286, 2, 3, 1, 2, 0, 0, 1, 2000, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 100, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, 17, 0, 64, 'custom_npc_training_dummy'),
(50515, 3019, 0, 0, 0, 'Apprentice Training Dummy', '', 0, 1, 1, 1000000, 1000000, 0, 0, 100, 914,  0, 0.91, 1.14286, 2, 0, 1, 2, 0, 0, 1, 2000, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 100, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, 17, 0, 64, 'custom_npc_training_dummy');

UPDATE `creature_template` SET `mechanic_immune_mask` = '2793635679' WHERE entry in (50513, 50514, 50515);


-- Crimson Church GOs:

REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000029, 0, 5, 6389, 'Symbol of the Light', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000030, 0, 5, 6820, 'Paladin Statue', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000031, 0, 5, 301, 'Duskwood Bush 1', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000032, 0, 14, 4691, 'Stone Moonwell', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000033, 0, 5, 3678, 'Westfall Wagon', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000034, 0, 5, 6410, 'Scarecrow', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000035, 0, 5, 5112, 'Water Basin', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000036, 0, 5, 4413, 'Simple Wooden Door', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000037, 0, 5, 216, 'Cauldron', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000038, 0, 5, 6708, 'Weapon Crate', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000039, 0, 5, 5932, 'Purple Crystal', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000040, 0, 5, 5851, 'Open Book', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000041, 0, 5, 5873, 'Nightmare Stone', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000042, 0, 5, 679, 'Stove', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000043, 0, 5, 697, 'Bush Fadeleaf', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000043, 0, 5, 699, 'Bush Wntersbite', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- Old "unused" quests: 

replace into quest_template (entry, minlevel, questlevel, requiredraces, title, details, objectives, offerrewardtext, requestitemstext, prevquestid, nextquestid, rewitemid1, reqcreatureorgoid1, reqcreatureorgocount1, rewmoneymaxlevel, zoneorsort, rewitemcount1, reqitemid1, reqitemcount1) values
(807, 4, 4, 0, 'Scorched Hearts', 
'My scouts report that some of the Durotar wildlife have become infected with a demonic taint. They were seen to the north and west.\n\nThey wander among their brethren as normal beasts, but evil powers flow through them, and burning within each one is a heart scorched by black magic.\n\nThese beasts must be destroyed!\n\nIf you find such an animal while you explore Durotar, kill it and collect its Scorched Heart. Bring the hearts to me and I will have them studied, then destroyed.',
'Bring 5 Scorched Hearts to Orgnil Soulscar in Razor Hill.',
'These beasts must be destroyed!',
'Bring the hearts to me and I will have them studied, then destroyed.',
 0, -- PrevQuestId
 0, -- NextQuestId
 0, 0, 0, 1100, 14, 1,
 4868 -- Required Item
 5     -- Amount);
-- Todo: [Deprecated Scorched Hearte] rename and add to the loot tables.
replace into creature_questrelation (id, quest)    values (3142, 807); 
replace into creature_involvedrelation (id, quest) values (3142, 807);

replace into quest_template (entry, minlevel, questlevel, requiredraces, title, details, objectives, offerrewardtext, requestitemstext, prevquestid, nextquestid, rewitemid1, reqcreatureorgoid1, reqcreatureorgocount1, rewmoneymaxlevel, zoneorsort, rewitemcount1, reqitemid1, reqitemcount1) values
(810, 4, 5, 0, 'Small Scorpid Carapaces', 
'You would do well to learn how dangerous this land can be, $c.\n\nThe wildlife here can teach us such things... if we are wise and observant.\n\nThe scorpids are a perfect example of survival in Durotar. If you are to survive, it would be wise to take on some of their characteristics as your own. Their hardened carapaces can protect you from the harshness of the sun, or even a deadly weapon.\n\nBring me 6 Small Scorpid Carapaces from the Clattering Scorpids, <name>, and I shall see about rewarding you justly.',
'Bring 6 Small Scorpid Carapaces to Kor\'ghan in Sen\'jin Village.',
'Bring me 6 Small Scorpid Carapaces from the Clattering Scorpids, $n, and I shall see about rewarding you justly.',
'You got the capacies',
 0, -- PrevQuestId
 811, -- NextQuestId
 0, 0, 0, 450, 14, 1,
 19937 -- Required Item
 6     -- Amount);
-- Todo: [Small Scorpid Carapace] item and add it to the loot.
replace into creature_questrelation (id, quest)    values (3189, 810); 
replace into creature_involvedrelation (id, quest) values (3189, 810);

replace into quest_template (entry, minlevel, questlevel, requiredraces, title, details, objectives, offerrewardtext, requestitemstext, prevquestid, nextquestid, rewitemid1, reqcreatureorgoid1, reqcreatureorgocount1, rewmoneymaxlevel, zoneorsort, rewitemcount1, reqitemid1, reqitemcount1) values
(811, 4, 5, 0, 'Large Scorpid Carapaces', 
'One of the other traits of the scorpids is their fierce loyalty. They will protect one another if they are in danger--you\'ve probably already seen this behavior in your first scorpid hunt.\n\nYou would do well to heed that lesson and adapt it for yourself: we are stronger as one; we are weak when we are divided into many.\n\nBring me 8 Large Scorpid Carapaces from the Armored Scorpids and I shall reward you for learning this wisdom.',
'Bring 8 Large Scorpid Carapaces to Kor\'ghan in Sen\'jin Village.',
'Bring me 8 Large Scorpid Carapaces from the Armored Scorpids and I shall reward you for learning this wisdom.',
'You got the capacies?',
 810, -- PrevQuestId
 0, -- NextQuestId
 0, 0, 0, 450, 14, 1,
 19937 -- Required Item
 6     -- Amount);
-- Todo: [Large Scorpid Carapace] item and add it to the loot.
replace into creature_questrelation (id, quest)    values (3189, 811); 
replace into creature_involvedrelation (id, quest) values (3189, 811);

replace into quest_template (entry, minlevel, questlevel, requiredraces, title, details, objectives, offerrewardtext, requestitemstext, prevquestid, nextquestid, rewitemid1, reqcreatureorgoid1, reqcreatureorgocount1, rewmoneymaxlevel, zoneorsort, rewitemcount1, reqitemid1, reqitemcount1) values
(814, 4, 6, 0, 'Chunks of Boar Meat', 
'Cook and clean--that\'s all I do!\n\nYou want to eat, you get me some more meat! I don\'t have all day to hunt and prepare food for all these louses. You got to learn to pull your own weight around here if you wanna be treated equal.\n\nGet me some Chunks of Boar Meat if you want to make yourself useful... or you don\'t want to starve to death.',
'Bring 10 Chunks of Boar Meat to Cook Torka in Razor Hill.',
'Get me some Chunks of Boar Meat if you want to make yourself useful...',
'You want to eat, you get me some more meat!',
 0, -- PrevQuestId
 0, -- NextQuestId
 0, 0, 0, 540, 14, 1,
 769 -- Required Item
 10  -- Amount);
replace into creature_questrelation (id, quest)    values (3191, 814); 
replace into creature_involvedrelation (id, quest) values (3191, 814);

replace into quest_template (entry, minlevel, questlevel, requiredraces, title, details, objectives, offerrewardtext, requestitemstext, prevquestid, nextquestid, rewitemid1, reqcreatureorgoid1, reqcreatureorgocount1, rewmoneymaxlevel, zoneorsort, rewitemcount1, reqitemid1, reqitemcount1) values
(814, 4, 6, 0, 'Chunks of Boar Meat', 
'Truly a spirit of strength resides in your body--or maybe it was only luck, yes?\n\nThat is what the young rely on these days: luck... and the generosity of those more powerful than they. Not many take the time to find their own path. It\'s always begging for help... always the reward, and never the quest. I\'m sure you\'ll be the same.\n\nBut there is hope. I need one other thing for my potion, <name>: 8 shimmerweed herbs. They can be found in Thunder Ridge to the northwest of Razor Hill.
',
'Bring 8 Shimmerweed to Master Vornal in Sen\'jin Village..',
'Get me some Chunks of Boar Meat if you want to make yourself useful...',
'You want to eat, you get me some more meat!',
 0, -- PrevQuestId
 0, -- NextQuestId
 0, 0, 0, 780, 14, 1,
 2676 -- Required Item
 8  -- Amount);
-- Todo: [Shimmerweed] should drop at Thunder Ridge to the northwest of Razor Hill.
replace into creature_questrelation (id, quest)    values (3304, 820); 
replace into creature_involvedrelation (id, quest) values (3304, 820);





-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
