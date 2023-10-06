-- pain
update item_template set stat_value1 = 15, stat_value2 = 18, stat_value3 = 15 where entry = 61756; -- Nordanaar Guardian Spaulders
update item_template set stat_value1 = 11, stat_type1 = 7, stat_value2 = 0, spellid_1 = 15464, spellid_3 = 7523, spelltrigger_3 = 1, spellid_2 = 9331, nature_res = 7 where entry = 61523; -- Crystal Sword of the Blossom

-- item Dawnstone Ore (entry 61390) change stacksize to 12

-- NPC Snarlclaw entry 61405 has the incorrect display ID , change display ID to 736

-- Quest The Deed to Ravenshire (Entry 40966) change zoneid to 5180

-- Quest 40942 change objective quest text to : "Slay Firemurk Dragonkin in Dustwallow Marsh, and recover a Potent Draconic Jewel for Magus Orelius at Ravenshire in Gilneas."

UPDATE `item_template` SET `stackable` = 12 WHERE `entry` = 61390;
UPDATE `creature_template` SET `display_id1` = 736, `display_id2` = 0 WHERE `entry` = 61405;
UPDATE `quest_template` SET `ZoneOrSort` = 5180 WHERE `entry` = 40966;
UPDATE `quest_template` SET `objectives` = 'Slay Firemurk Dragonkin in Dustwallow Marsh, and recover a Potent Draconic Jewel for Magus Orelius at Ravenshire in Gilneas.' WHERE `entry` = 40942;

-- Add item ID 61455 to loot group 8, 9 and 10 for Solnius, with equal drop chance with the other drops
-- Add item ID 70000 to loot group 12 with a 4.4% drop chance to Solnius.

REPlACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60748, 70000, 4.4, 12, 1, 1, 0);

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60748, 61203, 5.88, 8, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60748, 61204, 5.88, 8, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60748, 61205, 5.88, 8, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60748, 61206, 5.88, 8, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60748, 61207, 5.88, 8, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60748, 61208, 5.88, 8, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60748, 61209, 5.88, 8, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60748, 61210, 5.88, 8, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60748, 61211, 5.88, 8, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60748, 61212, 5.88, 8, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60748, 61213, 5.88, 8, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60748, 61214, 5.88, 8, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60748, 61237, 5.88, 8, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60748, 61238, 5.88, 8, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60748, 61239, 5.88, 8, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60748, 61448, 5.88, 8, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60748, 61455, 5.88, 8, 1, 1, 0);

-- https://database.turtle-wow.org/?quest=41021 should reward experience. 

UPDATE `quest_template` SET `RewXP` = 8300, `RewMoneyMaxLevel` = 29700 WHERE `entry` = 41021;