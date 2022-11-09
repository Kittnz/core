-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2428

UPDATE `quest_template` SET `RewRepFaction2` = 0, `RewRepFaction3` = 0, `RewRepValue2` = 0, `RewRepValue3` = 0 WHERE `entry` = 80396;

-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2425

UPDATE `quest_template` SET `ZoneOrSort` = 17 WHERE `entry` = 40684;
UPDATE `quest_template` SET `ZoneOrSort` = 17 WHERE `entry` = 40685;

-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2423

DELETE FROM `creature_loot_template` WHERE `entry` = 7395;
UPDATE `creature_template` SET `loot_id` = 0 WHERE `entry` = 7395;
UPDATE `creature_template` SET `skinning_loot_id` = 0 WHERE `entry` = 7395;
UPDATE `creature_template` SET `type` = 8 WHERE `entry` = 7395;

-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2415

UPDATE `creature_template` SET `nature_res` = 0 WHERE `entry` = 5288;

-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2414

REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES 
(7848, 4304, 77.167, 1, 1, 2, 0),
(7848, 8169, 2.3256, 1, 1, 2, 0),
(7848, 8170, 20.5074, 1, 1, 2, 0),
(7848, 18947, 80, 2, 1, 2, 0);

UPDATE `creature_template` SET `skinning_loot_id` = 7848 WHERE `entry` = 7848;

-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2413

UPDATE `creature_template` SET `skinning_loot_id` = 9683 WHERE `entry` = 9683;

REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES 
(9683, 4304, 77.2672, 1, 1, 1, 0),
(9683, 8169, 3.2648,  1, 1, 1, 0),
(9683, 8170, 19.468,  1, 1, 1, 0),
(9684, 4304, 12.9032, 2, 1, 1, 0),
(9684, 8170, 83.2845, 2, 1, 1, 0),
(9684, 8171, 3.8123,  2, 1, 1, 0);