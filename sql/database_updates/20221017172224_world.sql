-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2297
-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2261
-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2282
-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2282
-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2268

UPDATE `turtle_world`.`creature_template` SET `gold_min` = 0, `gold_max` = 0 WHERE `entry` = 60848;
UPDATE `turtle_world`.`creature_template` SET `skinning_loot_id` = 3100 WHERE `entry` = 60848;
UPDATE `turtle_world`.`creature_template` SET `beast_family` = 5 WHERE `entry` = 60848;
UPDATE `turtle_world`.`creature_template` SET `type_flags` = 1 WHERE `entry` = 60848;
UPDATE `turtle_world`.`creature_template` SET `loot_id` = 3100 WHERE `entry` = 60848;
UPDATE `turtle_world`.`quest_template` SET `Details` = 'The quilboar activity in the Brambleblade Ravine has been increasing lately, we suspect that they\'re preparing for an attack on Camp Narache.\n\nGo to the ravine and thin their numbers, they fight without honor and deserve none.' WHERE `entry` = 60150;
UPDATE `creature_template` SET `loot_id` = 91291 WHERE `entry` = 91291;
DELETE FROM `creature_loot_template` WHERE `entry` = 91291;
UPDATE `turtle_world`.`quest_template` SET `ZoneOrSort` = 796 WHERE `entry` = 40233;
REPlACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 422, 0.0128, 0, 3, 3, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 785, 0.02, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 804, 0.08, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 857, 0.0257, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 858, 0.0128, 0, 2, 2, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 929, 1.3991, 0, 1, 2, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 954, 0.38, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 1205, 2.2205, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 1206, 1.06, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 1210, 0.24, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 1299, 1.5, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 1300, 1, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 1478, 0.34, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 1529, 0.02, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 1705, 0.2567, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 1712, 0.3, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 2409, 0.02, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 2449, 0.02, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 2450, 0.02, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 2452, 0.02, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 2453, 0.02, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 2455, 0.04, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 2589, 8.2916, 0, 2, 5, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 2592, 22.6672, 0, 2, 4, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 2601, 0.04, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 2700, 0.06, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 2770, 0.02, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 2771, 0.06, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 2775, 0.02, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 2835, 0.02, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 2836, 0.02, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 2881, 0.02, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 2882, 0.04, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 2883, 0.04, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 2997, 0.02, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 3012, 0.44, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 3356, 0.02, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 3385, 0.6674, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 3393, 0.02, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 3394, 0.02, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 3396, 0.02, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 3611, 0.02, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 3770, 4.6721, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 4292, 0.02, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 4293, 0.02, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 4294, 0.04, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 4296, 0.02, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 4297, 0.02, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 4306, 1.8098, 0, 1, 3, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 4345, 0.02, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 4346, 0.02, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 4347, 0.04, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 4348, 0.02, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 4349, 0.04, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 4350, 0.02, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 4409, 0.04, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 4410, 0.04, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 4412, 0.02, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 4538, 0.04, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 4542, 0.0128, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 4593, 0.02, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 4606, 0.04, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 4694, 0.0898, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 4698, 0.06, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 4700, 0.1027, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 5374, 0.02, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 5503, 0.02, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 5543, 0.02, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 5575, 0.0385, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 5576, 0.0257, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 5578, 0.04, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 5972, 0.02, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 6044, 0.02, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 6211, 0.02, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 6344, 0.02, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 6347, 0.02, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 6348, 0.02, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 6375, 0.04, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 6390, 0.04, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 6391, 0.04, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 6454, 0.02, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 6566, 0.0513, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 6579, 0.077, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 6588, 0.077, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 6716, 0.02, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 7091, 0.02, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 7092, 0.02, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 7360, 0.02, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 7363, 0.02, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 7364, 0.02, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 10316, 0.04, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 10405, 0.1027, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 10407, 0.1, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 10424, 0.02, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 11038, 0.04, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 11039, 0.02, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 11081, 0.04, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 11098, 0.02, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 14170, 0.2, 0, 1, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 30008, 5, 0, -30008, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 30009, 1, 0, -30009, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 30010, 0.025, 0, -30010, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 30011, 1, 0, -30011, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 30012, 0.025, 0, -30012, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 30013, 0.05, 0, -30013, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 30014, 0.025, 0, -30014, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 30022, 1, 0, -30022, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 30023, 0.025, 0, -30023, 1, 0);
REPlACE INTO `turtle_world`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91291, 30024, 1, 0, -30024, 1, 0);
