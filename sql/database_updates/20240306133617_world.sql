-- Group 12 items of NPC 60596 are now NOT included in the blood group, and each now has an independent 0.01% drop chance.
delete from creature_loot_template where entry = 60596 and item = 30566;
replace INTO creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60596, 61563, 0.01, 0, 1, 1, 0);
replace INTO creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60596, 61590, 0.01, 0, 1, 1, 0);
replace INTO creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60596, 61591, 0.01, 0, 1, 1, 0);
replace INTO creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60596, 61592, 0.01, 0, 1, 1, 0);
replace INTO creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60596, 61593, 0.01, 0, 1, 1, 0);
replace INTO creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60596, 61594, 0.01, 0, 1, 1, 0);
replace INTO creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60596, 61595, 0.01, 0, 1, 1, 0);
replace INTO creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60596, 61596, 0.01, 0, 1, 1, 0);
