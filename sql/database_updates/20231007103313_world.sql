-- For the quest 40860, change short description text to 'Travel to Gilneas in the north and collect 4 Dawnstone Chunks for Technician Voltgear at the Gnomeregan Reclamation Facility in Dun Morogh.'
update quest_template set Objectives = 'Travel to Gilneas in the north and collect 4 Dawnstone Chunks for Technician Voltgear at the Gnomeregan Reclamation Facility in Dun Morogh.' where entry = 40860;
-- Make a new item called 'Dawnstone Chunk' that is the exact same item practically as Dawnstone Ore, and make that the new item requirement of 40860.
REPLACE INTO item_template VALUES
(61817, 12, 0, 'Dawnstone Chunk', '', 4690, 1, 2048, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);
update quest_template set ReqItemId1 = 61817 where entry = 40860;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(61399, 61817, -80, 0, 1, 1, 0);
