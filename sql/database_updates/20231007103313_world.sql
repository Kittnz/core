-- For the quest 40860, change short description text to 'Travel to Gilneas in the north and collect 4 Dawnstone Chunks for Technician Voltgear at the Gnomeregan Reclamation Facility in Dun Morogh.'
update quest_template set Objectives = 'Travel to Gilneas in the north and collect 4 Dawnstone Chunks for Technician Voltgear at the Gnomeregan Reclamation Facility in Dun Morogh.' where entry = 40860;
-- Make a new item called 'Dawnstone Chunk' that is the exact same item practically as Dawnstone Ore, and make that the new item requirement of 40860.
REPLACE INTO item_template VALUES
(61817, 12, 0, 'Dawnstone Chunk', '', 4690, 1, 2048, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);
update quest_template set ReqItemId1 = 61817 where entry = 40860;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(61399, 61817, -80, 0, 1, 1, 0);
-- Fix deez nuts.
update item_template set spellppmrate_1 = 1 where entry = 12798; -- Annihilator.
-- Quest "Securing Gilneas I" grammar fix.
update quest_template set details = 'The land is tainted with the foul mark of worgen that tread through our lands unopposed. The royalists have seen fit to punish the people by letting their kind spread like a disease.$B$BEven now the worgen reach as far south as the Overgrown Acre just to the northwest of here. If they will not put an end to this threat, then we must. Find the Bloodclaw tribe that stalks within Gilneas, hunt them, and recover ten of their pelts.' where entry = 40926;