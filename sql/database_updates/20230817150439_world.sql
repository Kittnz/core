-- Add a 0.2% chance to get Item ID 12363 from Object ID 324, 123848, 150082, 176643, 165658.
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ( 9597, 12363, 0.2, 1, 1, 1, 0);
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (11213, 12363, 0.2, 1, 1, 1, 0);
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (13960, 12363, 0.2, 1, 1, 1, 0);
-- Increase the chance to get Item ID 12363 from Object ID 181068 to 2%.
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (181068, 12363, 2, 1, 1, 1, 0);
-- Increase the chance to get Item ID 12363 from Object ID 181069 to 3%.
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (181069, 12363, 3, 1, 1, 1, 0);
