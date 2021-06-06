-- Remove custom Un'Goro eggs trigger and use proper areatriggers.
DELETE FROM `creature` WHERE `id`=20005;
DELETE FROM `creature_template` WHERE `entry`=20005;
INSERT INTO `scripted_areatrigger` (`entry`, `script_name`) VALUES 
(1726, 'at_scent_larkorwi'),
(1727, 'at_scent_larkorwi'),
(1728, 'at_scent_larkorwi'),
(1729, 'at_scent_larkorwi'),
(1730, 'at_scent_larkorwi'),
(1731, 'at_scent_larkorwi'),
(1732, 'at_scent_larkorwi'),
(1733, 'at_scent_larkorwi'),
(1734, 'at_scent_larkorwi'),
(1735, 'at_scent_larkorwi'),
(1736, 'at_scent_larkorwi'),
(1737, 'at_scent_larkorwi'),
(1738, 'at_scent_larkorwi'),
(1739, 'at_scent_larkorwi'),
(1740, 'at_scent_larkorwi'),
(1766, 'at_scent_larkorwi');

-- Lar'korwi Mate should drop only 1 egg.
-- https://youtu.be/4h4rGWirV8U?t=33
UPDATE `creature_loot_template` SET `mincountOrRef`=1, `maxcount`=1 WHERE `entry`=9683 && `item`=11509;

-- Remove custom versions of Doctor Weavil and his flying machine.
DELETE FROM `creature_template` WHERE `entry` IN (155520, 155530);
DELETE FROM `creature_template_addon` WHERE `entry` IN (155520, 155530);
DELETE FROM `creature_ai_events` WHERE `creature_id` IN (155520, 155530);
DELETE FROM `creature_ai_scripts` WHERE `id` iN (15552001, 15553001);

-- Move Doctor Weavil's addon data to spawn instead of template.
INSERT INTO `creature_addon` (`guid`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (18614, 7, 0, 3, 1, 16, 0, 0, '');
DELETE FROM `creature_template_addon` WHERE `entry`=15552;

-- Remove custom spells used to start event script.
DELETE FROM `spell_mod` WHERE `ID` IN (25720, 33008, 33009, 33031);
DELETE FROM `spell_effect_mod` WHERE `ID` IN (25720, 33008, 33009, 33031);

-- Update scripts used in quest Decoy to use correct creature ids.
DELETE FROM `event_scripts` WHERE `id`=9527;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (9527, 0, 9, 181756, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Decoy!: Respawn Stillpine Grain');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (9527, 5, 10, 15553, 61000, 0, 0, 0, 0, 0, 0, 0, 9529, 6, 1, 5166.07, -5196.86, 938.6, 2.125, 0, 'Decoy!: Summon Doctor Weavil\'s Flying Machine');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (9527, 16, 10, 15552, 44000, 0, 0, 0, 0, 0, 0, 16, 9528, 6, 1, 5088.21, -5087.08, 922.385, 4.89885, 0, 'Decoy!: Summon Doctor Weavil');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (9527, 33, 0, 0, 0, 0, 0, 15552, 50, 8, 3, 11106, 0, 0, 0, 0, 0, 0, 0, 0, 'Decoy!: Doctor Weavil - Say Text');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (9527, 33, 1, 1, 0, 0, 0, 15552, 50, 8, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Decoy!: Doctor Weavil - Emote Talk');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (9527, 37, 1, 1, 0, 0, 0, 15552, 50, 8, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Decoy!: Doctor Weavil - Emote Talk');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (9527, 39, 0, 2, 0, 0, 0, 15552, 50, 8, 3, 11107, 0, 0, 0, 0, 0, 0, 0, 0, 'Decoy!: Doctor Weavil - Say Emoted Text');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (9527, 39, 1, 25, 0, 0, 0, 15552, 50, 8, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Decoy!: Doctor Weavil - Emote Point');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (9527, 42, 0, 0, 0, 0, 0, 15552, 50, 8, 3, 11108, 0, 0, 0, 0, 0, 0, 0, 0, 'Decoy!: Doctor Weavil - Say Text');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (9527, 42, 1, 1, 0, 0, 0, 15552, 50, 8, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Decoy!: Doctor Weavil - Emote Talk');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (9527, 46, 1, 1, 0, 0, 0, 15552, 50, 8, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Decoy!: Doctor Weavil - Emote Talk');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (9527, 50, 0, 0, 0, 0, 0, 15552, 50, 8, 2, 11109, 0, 0, 0, 0, 0, 0, 0, 0, 'Decoy!: Doctor Weavil - Say Text');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (9527, 50, 1, 5, 0, 0, 0, 15552, 50, 8, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Decoy!: Doctor Weavil - Emote Exclamation');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (9527, 52, 1, 5, 0, 0, 0, 15552, 50, 8, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Decoy!: Doctor Weavil - Emote Exclamation');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (9527, 55, 1, 5, 0, 0, 0, 15552, 50, 8, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Decoy!: Doctor Weavil - Emote Exclamation');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (9527, 59, 10, 15554, 3000000, 0, 0, 0, 0, 0, 0, 0, 0, 6, 1, 5096.82, -5089.7, 923.05, 4.0144, 0, 'Decoy!: Summon Number Two');
DELETE FROM `event_scripts` WHERE `id`=9528;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (9528, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Doctor Weavil - Set Stand State');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (9528, 0, 22, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Doctor Weavil - Set Faction to Friendly');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (9528, 1, 3, 0, 15000, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5085.52, -5112.76, 930.478, 4.63966, 0, 'Doctor Weavil - Move');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (9528, 16, 3, 0, 1000, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5085.86, -5110.67, 929.987, 1.40774, 0, 'Doctor Weavil - Move');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (9528, 40, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Doctor Weavil - Set Run');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (9528, 41, 3, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5088.21, -5087.08, 922.385, 1.40774, 0, 'Doctor Weavil - Move');
DELETE FROM `event_scripts` WHERE `id`=9529;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (9529, 1, 3, 0, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5086.46, -5116.87, 938.6, 1.473, 0, 'Doctor Weavil Flying Machine - Move');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (9529, 6, 3, 0, 4000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5087.93, -5083.94, 922.205, 1.74548, 0, 'Doctor Weavil Flying Machine - Move');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (9529, 56, 3, 0, 6000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5098.31, -5022.73, 934.798, 1.403, 0, 'Doctor Weavil Flying Machine - Move');

-- Remove other custom creatures that do not appear to be used.
DELETE FROM `creature_template` WHERE `entry` IN (1000000, 15711, 16963);
DELETE FROM `creature_template_addon` WHERE `entry` IN (1000000, 15711, 16963);

-- Delete custom Lord Victor Nefarius.
DELETE FROM `creature_template` WHERE `entry`=10163;

DELETE FROM `script_texts` WHERE `entry` IN (-1000715, -1000716, -1000717, -1000718, -1000719, -1000720, -1000721, -1000722, -1000723, -1000724, -1000725, -1000726, -1000727, -1000728, -1000729);
DELETE FROM `script_texts` WHERE `entry` IN (-1000730, -1000731, -1000732, -1000733, -1000734, -1000752, -1000735, -1000736, -1000737, -1000738, -1000739, -1000740, -1000741, -1000742, -1000743);
DELETE FROM `script_texts` WHERE `entry` IN (-1000744, -1000745, -1000746, -1000747, -1000748, -1000749, -1000750, -1000751, -1000672, -1000673, -1000674, -1000676, -1000678, -1000680, -1000683);
DELETE FROM `script_texts` WHERE `entry` IN (-1000684, -1000675, -1000677, -1000679, -1000681, -1000682, -1000323, -1000324, -1780189, -1000106, -1000107, -1000108, -1000109, -1000110, -1000817);
DELETE FROM `script_texts` WHERE `entry` IN (-1000818, -1000819, -1000820, -1000821, -1000822, -1000823, -1000824, -1000825, -1000826, -1780210, -1000800, -1000434, -1000435, -1000436, -1000437);
DELETE FROM `script_texts` WHERE `entry` IN (-1000438, -1000439, -1000440, -1000441, -1000445, -1000442, -1000443, -1000444, -1000327, -1000339, -1000328, -1000329, -1000330, -1000331, -1000332);
DELETE FROM `script_texts` WHERE `entry` IN (-1000333, -1000334, -1000335, -1000336, -1000337, -1000338, -1000325, -1000326, -1000905, -1000906, -1000789, -1000790, -1000791, -1000792, -1000793);
DELETE FROM `script_texts` WHERE `entry` IN (-1000794, -1000795, -1000796, -1780209, -1780226, -1780184, -1780185, -1780186, -1780187, -1780188, -1000501, -1000502, -1000503, -1000504, -1000505);
DELETE FROM `script_texts` WHERE `entry` IN (-1000506, -1000507, -1000508, -1000509);

UPDATE `broadcast_text` SET `EmoteId0` = 1 WHERE `ID` IN (11293, 11295, 11301, 11302, 1244, 1236);
UPDATE `broadcast_text` SET `EmoteId0` = 2 WHERE `ID` IN (8265);
UPDATE `broadcast_text` SET `Type` = 1 WHERE `ID` IN (11030, 11293, 11294, 11295, 11297, 11299, 11304, 11305, 11306, 11309, 11310, 11311, 11314, 11315, 11316, 11320);
UPDATE `broadcast_text` SET `Type` = 2 WHERE `ID` IN (11313, 11160, 3012);
UPDATE `broadcast_text` SET `Type` = 3 WHERE `ID` IN (11277);
