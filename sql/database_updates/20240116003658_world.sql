REPLACE INTO `fishing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (5536, 6361, 0.3212, 1, 1, 1, 0);
REPLACE INTO `fishing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (5536, 6356, 1.6914, 1, 1, 1, 0);
REPLACE INTO `fishing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (5536, 6308, 0.3671, 1, 1, 1, 0);
REPLACE INTO `fishing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (5536, 6303, 0, 1, 1, 1, 0);
REPLACE INTO `fishing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (5536, 6291, 12.5606, 1, 1, 1, 0);
REPLACE INTO `fishing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (5536, 6289, 8.5945, 1, 1, 1, 0);
REPLACE INTO `fishing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (5536, 6292, 0.1381, 1, 1, 1, 0);

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/5969

UPDATE `quest_template` SET `OfferRewardText` = '<Wide eyes and an extreme expression of bewilderment can be seen on Ranala\'s face.>$B$BI can\'t believe my eyes! My gold pouch, it\'s... it\'s here! But... it seems to have lost some coins through this hole here. Regardless, most of it is still here. $n, thank you so much. Here, this is for your troubles. When we get back, we\'ll tell the superiors of what you did here.' WHERE `entry` = 41160