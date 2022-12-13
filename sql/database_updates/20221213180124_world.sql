REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (60543, 55, 6256, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (60543, 122, 6365, 1, 7200, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (60543, 56, 6529, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (60543, 57, 6530, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (60543, 58, 6532, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (60543, 59, 6533, 2, 7200, 0, 0);

UPDATE `creature_template` SET `npc_flags` = 7 WHERE `entry` = 60543;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2501

DELETE FROM `creature_loot_template` WHERE `item` = 22435;

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (6551, 22435, -15, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (6554, 22435, -15, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (10041, 22435, -100, 0, 2, 3, 0);
