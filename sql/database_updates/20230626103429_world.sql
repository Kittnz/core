-- Create object 'Favor of Erennius' which looks like G_ChestTitan.m2' this object should contain the following loot, and should drop 1 of the items listed below, this chest should have a 8 day respawn timer.
REPLACE INTO gameobject_template VALUES
(2020042, 3, 25806, 'Favor of Erennius', 0, 0, 0.8, 43, 2020042, 30, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (30585, 61522, 0, 1, 1, 1, 0);
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (30585, 61523, 0, 1, 1, 1, 0);
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (30585, 61524, 0, 1, 1, 1, 0);
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (30585, 61525, 0, 1, 1, 1, 0);
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (30585, 61526, 0, 1, 1, 1, 0);
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (30585, 61527, 0, 1, 1, 1, 0);

REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(2020042, 30585, 100, 0, -30585, 1, 0);

update gameobject set spawntimesecsmin = 604800, spawntimesecsmax = 604800 where ID = 2020042;

-- Gobject 2011043, and 2011044 (Medivh's Merlot, and Medivh's Merlot Blue) should be lootable by any player.
update gameobject_template set faction = 0, flags = 0, data2 = 30 where entry in (2011043,2011044);

