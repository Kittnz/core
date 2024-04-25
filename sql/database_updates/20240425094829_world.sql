-- Move Item ID 80716 to loot group 1 for NPC ID 3927, with a 25% chance to drop 1 item, reduce Item ID 6314's drop chance to 25%.
delete from creature_loot_template where entry = 3927 and item = 80716;
replace INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (30132, 3748, 50, 1, 1, 1, 0);
replace INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (30132, 6314, 25, 1, 1, 1, 0);
replace INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (30132, 80716, 25, 1, 1, 1, 0);
