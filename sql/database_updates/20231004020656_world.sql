-- Remove cloth from Relentless Infernal's loot and add stones.
DELETE FROM `creature_loot_template` WHERE `entry`=61349 && `item` IN (14256, 14047);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61349, 4784, 80, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61349, 7912, 40, 0, 1, 1, 0);
