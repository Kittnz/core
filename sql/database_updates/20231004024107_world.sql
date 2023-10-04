-- Replace loot table of Mana Stalker with that of Hederine Manastalker.
DELETE FROM `creature_loot_template` WHERE `entry`=61354;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES 
(61354, 2449, 0.02, 0, 1, 1, 0),
(61354, 3914, 0.02, 0, 1, 1, 0),
(61354, 4500, 0.26, 0, 1, 1, 109),
(61354, 4583, 56.8729, 0, 1, 1, 0),
(61354, 4584, 16.8385, 0, 1, 1, 0),
(61354, 5759, 1.0309, 0, 1, 1, 0),
(61354, 7909, 1.0309, 0, 1, 1, 0),
(61354, 7910, 0.1718, 0, 1, 1, 0),
(61354, 7911, 0.06, 0, 1, 1, 0),
(61354, 8146, 11.6838, 0, 1, 1, 0),
(61354, 10620, 0.4, 0, 1, 1, 0),
(61354, 12361, 0.02, 0, 1, 1, 0),
(61354, 12365, 0.22, 0, 1, 1, 0),
(61354, 12684, 0.02, 0, 1, 1, 0),
(61354, 12691, 0.02, 0, 1, 1, 0),
(61354, 12693, 0.02, 0, 1, 1, 0),
(61354, 12694, 0.04, 0, 1, 1, 0),
(61354, 12695, 0.02, 0, 1, 1, 0),
(61354, 12697, 0.02, 0, 1, 1, 0),
(61354, 12704, 0.04, 0, 1, 1, 0),
(61354, 12713, 0.04, 0, 1, 1, 0),
(61354, 13490, 0.02, 0, 1, 1, 0),
(61354, 13492, 0.02, 0, 1, 1, 0),
(61354, 13518, 0.02, 0, 1, 1, 0),
(61354, 14466, 0.04, 0, 1, 1, 0),
(61354, 14467, 0.02, 0, 1, 1, 0),
(61354, 14470, 0.02, 0, 1, 1, 0),
(61354, 14474, 0.02, 0, 1, 1, 0),
(61354, 14478, 0.02, 0, 1, 1, 0),
(61354, 14479, 0.02, 0, 1, 1, 0),
(61354, 14484, 0.02, 0, 1, 1, 0),
(61354, 14489, 0.04, 0, 1, 1, 0),
(61354, 14491, 0.04, 0, 1, 1, 0),
(61354, 14492, 0.04, 0, 1, 1, 0),
(61354, 14494, 0.02, 0, 1, 1, 0),
(61354, 14496, 0.02, 0, 1, 1, 0),
(61354, 14498, 0.06, 0, 1, 1, 0),
(61354, 14499, 0.02, 0, 1, 1, 0),
(61354, 14504, 0.02, 0, 1, 1, 0),
(61354, 14506, 0.08, 0, 1, 1, 0),
(61354, 14508, 0.04, 0, 1, 1, 0),
(61354, 15731, 0.02, 0, 1, 1, 0),
(61354, 15737, 0.02, 0, 1, 1, 0),
(61354, 15743, 0.02, 0, 1, 1, 0),
(61354, 15745, 0.02, 0, 1, 1, 0),
(61354, 15746, 0.02, 0, 1, 1, 0),
(61354, 15755, 0.04, 0, 1, 1, 0),
(61354, 15757, 0.02, 0, 1, 1, 0),
(61354, 15765, 0.04, 0, 1, 1, 0),
(61354, 16043, 0.02, 0, 1, 1, 0),
(61354, 16051, 0.04, 0, 1, 1, 0),
(61354, 16215, 0.02, 0, 1, 1, 0),
(61354, 16218, 0.02, 0, 1, 1, 0),
(61354, 16220, 0.02, 0, 1, 1, 0),
(61354, 16245, 0.02, 0, 1, 1, 0),
(61354, 16251, 0.04, 0, 1, 1, 0),
(61354, 20400, 0.26, 0, 1, 1, 108),
(61354, 61706, -18, 0, 1, 1, 0),
(61354, 24016, 1, 0, -24016, 1, 0),
(61354, 24032, 0.025, 0, -24032, 1, 0),
(61354, 24090, 0.005, 0, -24090, 1, 0),
(61354, 30079, 0.025, 2, -30079, 1, 0),
(61354, 30080, 1, 0, -30080, 1, 0),
(61354, 30081, 1, 0, -30081, 1, 0),
(61354, 30082, 0.005, 0, -30082, 1, 0),
(61354, 30083, 1, 3, -30083, 1, 0),
(61354, 30084, 0.025, 4, -30084, 1, 0),
(61354, 30087, 0.005, 0, -30087, 1, 0),
(61354, 30088, 0.025, 0, -30088, 1, 0),
(61354, 30183, 0.005, 10, -30183, 1, 0);

