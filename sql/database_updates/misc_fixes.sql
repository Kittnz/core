
-- Add spawn for Ritual Candle Aura.
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(262118, 179688, 429, -43.4643, 800.206, -29.5358, 0.698132, 0, 0, 0.34202, 0.939693, 900, 900, 0, 1);

-- Correct faction for Ritual Candle Aura.
-- "Treasure" faction 1375 here is guessed based on when patch 1.4 was released, and the fact that it's hostile to Demon faction 90
UPDATE `gameobject_template` SET `faction`=1375 WHERE entry=179688;

-- Correct faction for Wheel of the Black March.
UPDATE `gameobject_template` SET `faction`=35 WHERE `entry`=179672;
-- Correct faction for Doomsday Candle.
UPDATE `gameobject_template` SET `faction`=35 WHERE `entry`=179673;
-- Correct faction for Bell of Dethmoora.
UPDATE `gameobject_template` SET `faction`=35 WHERE `entry`=179674;
-- Correct faction for Xorothian Imp.
UPDATE `creature_template` SET `faction`=90 WHERE `entry`=14482;
-- Correct faction for Dread Guard.
UPDATE `creature_template` SET `faction`=90 WHERE `entry`=14483;

-- Remove custom trigger npc.
DELETE FROM `creature_template` WHERE `entry`=1000001;

-- Add gossip menu and correct flags for Dreadsteed Spirit.
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES (5863, 7036);
UPDATE `creature_template` SET `gossip_menu_id`=5863, `npc_flags`=3, `unit_flags`=768 WHERE `entry`=14504;

-- Remove custom creature used for Lava Fissure Eruptions.
DELETE FROM `creature_template` WHERE `entry`=20009;

-- These spells should target the Lava Fissures.
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES 
(17731, 0, 176513, 0),
(17731, 0, 176514, 0),
(17731, 0, 176515, 0),
(17731, 0, 176809, 0),
(17731, 0, 176810, 0),
(17731, 0, 176811, 0),
(17731, 0, 176812, 0),
(17731, 0, 176813, 0),
(17731, 0, 176814, 0),
(17731, 0, 176815, 0),
(17731, 0, 176816, 0),
(17731, 0, 176817, 0),
(17731, 0, 176818, 0),
(17731, 0, 176819, 0),
(17731, 0, 176820, 0),
(17731, 0, 176821, 0),
(17731, 0, 176822, 0),
(17731, 0, 176823, 0),
(17731, 0, 176824, 0),
(17731, 0, 176825, 0),
(17731, 0, 176826, 0),
(17731, 0, 176827, 0),
(17731, 0, 176828, 0),
(17731, 0, 176829, 0),
(17731, 0, 176830, 0),
(17731, 0, 176831, 0),
(17731, 0, 176832, 0),
(17731, 0, 176833, 0),
(17731, 0, 176834, 0),
(17731, 0, 176835, 0),
(17731, 0, 176836, 0),
(17731, 0, 176837, 0),
(17731, 0, 176838, 0),
(17731, 0, 176839, 0),
(17731, 0, 176840, 0),
(17731, 0, 176841, 0),
(17731, 0, 176842, 0),
(17731, 0, 176908, 0),
(17731, 0, 176909, 0),
(17731, 0, 176910, 0),
(17731, 0, 176911, 0),
(17731, 0, 176912, 0),
(17731, 0, 176913, 0),
(17731, 0, 176914, 0),
(17731, 0, 176915, 0),
(17731, 0, 176916, 0),
(17731, 0, 176917, 0),
(17731, 0, 176918, 0),
(17731, 0, 176919, 0),
(17731, 0, 176920, 0),
(17731, 0, 176921, 0),
(17731, 0, 176922, 0),
(18431, 0, 176513, 0),
(18431, 0, 176514, 0),
(18431, 0, 176515, 0),
(18431, 0, 176809, 0),
(18431, 0, 176810, 0),
(18431, 0, 176811, 0),
(18431, 0, 176812, 0),
(18431, 0, 176813, 0),
(18431, 0, 176814, 0),
(18431, 0, 176815, 0),
(18431, 0, 176816, 0),
(18431, 0, 176817, 0),
(18431, 0, 176818, 0),
(18431, 0, 176819, 0),
(18431, 0, 176820, 0),
(18431, 0, 176821, 0),
(18431, 0, 176822, 0),
(18431, 0, 176823, 0),
(18431, 0, 176824, 0),
(18431, 0, 176825, 0),
(18431, 0, 176826, 0),
(18431, 0, 176827, 0),
(18431, 0, 176828, 0),
(18431, 0, 176829, 0),
(18431, 0, 176830, 0),
(18431, 0, 176831, 0),
(18431, 0, 176832, 0),
(18431, 0, 176833, 0),
(18431, 0, 176834, 0),
(18431, 0, 176835, 0),
(18431, 0, 176836, 0),
(18431, 0, 176837, 0),
(18431, 0, 176838, 0),
(18431, 0, 176839, 0),
(18431, 0, 176840, 0),
(18431, 0, 176841, 0),
(18431, 0, 176842, 0),
(18431, 0, 176908, 0),
(18431, 0, 176909, 0),
(18431, 0, 176910, 0),
(18431, 0, 176911, 0),
(18431, 0, 176912, 0),
(18431, 0, 176913, 0),
(18431, 0, 176914, 0),
(18431, 0, 176915, 0),
(18431, 0, 176916, 0),
(18431, 0, 176917, 0),
(18431, 0, 176918, 0),
(18431, 0, 176919, 0),
(18431, 0, 176920, 0),
(18431, 0, 176921, 0),
(18431, 0, 176922, 0);

-- Remove wrong Lava Trap spawns.
DELETE FROM `gameobject` WHERE `id` IN (177984, 177985);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES (82053, 177984, 249, 16.8415, -225.106, -86.2168, 2.61799, 0, 0, 1, 0, 180, 180, 255, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES (82054, 177985, 249, -28.1006, -190.667, -89.6964, -0.087264, 0, 0, 1, 0, 180, 180, 255, 1);

-- Add Lava Fissure spawns.
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES 
(81975, 176513, 249, 24.2333, -235.508, -84.9566, -2.53072, 0, 0, 1, 0, 180, 180, 255, 1),
(81976, 176514, 249, 14.4175, -233.453, -86.0326, -0.436332, 0, 0, 1, 0, 180, 180, 255, 1),
(81977, 176515, 249, 17.3921, -245.044, -86.1595, 1.309, 0, 0, 1, 0, 180, 180, 255, 1),
(81978, 176809, 249, 16.8415, -225.106, -86.2168, 2.61799, 0, 0, 1, 0, 180, 180, 255, 1),
(81979, 176810, 249, -28.1006, -190.667, -89.6964, -0.087264, 0, 0, 1, 0, 180, 180, 255, 1),
(81980, 176811, 249, -26.3963, -199.616, -88.82, 1.83259, 0, 0, 1, 0, 180, 180, 255, 1),
(81981, 176812, 249, 8.23697, -253.584, -86.6082, -2.35619, 0, 0, 1, 0, 180, 180, 255, 1),
(81982, 176813, 249, 7.06976, -243.991, -86.9945, -2.70526, 0, 0, 1, 0, 180, 180, 255, 1),
(81983, 176814, 249, -3.98491, -248.954, -85.9318, 0.95993, 0, 0, 1, 0, 180, 180, 255, 1),
(81984, 176815, 249, -0.638085, -239.839, -87.3523, 1.39626, 0, 0, 1, 0, 180, 180, 255, 1),
(81985, 176816, 249, -15.3872, -232.509, -89.0988, -1.04719, 0, 0, 1, 0, 180, 180, 255, 1),
(81986, 176817, 249, -12.8884, -245.332, -87.9905, -0.087264, 0, 0, 1, 0, 180, 180, 255, 1),
(81987, 176818, 249, -20.9761, -254.701, -87.7823, -2.61799, 0, 0, 1, 0, 180, 180, 255, 1),
(81988, 176819, 249, 3.20326, -230.379, -87.0469, -1.48353, 0, 0, 1, 0, 180, 180, 255, 1),
(81989, 176820, 249, -37.4064, -244.92, -89.0483, 3.05433, 0, 0, 1, 0, 180, 180, 255, 1),
(81990, 176821, 249, -26.0913, -229.619, -88.82, -1.83259, 0, 0, 1, 0, 180, 180, 255, 1),
(81991, 176822, 249, -28.124, -238.209, -89.6964, 0.087264, 0, 0, 1, 0, 180, 180, 255, 1),
(81992, 176823, 249, 29.1885, -206.772, -84.5641, 0.785399, 0, 0, 1, 0, 180, 180, 255, 1),
(81993, 176824, 249, 31.1672, -218.99, -83.8272, -1.74533, 0, 0, 1, 0, 180, 180, 255, 1),
(81994, 176825, 249, 13.1918, -214.436, -86.484, 0.872664, 0, 0, 1, 0, 180, 180, 255, 1),
(81995, 176826, 249, -37.3837, -184.484, -89.0483, -3.05433, 0, 0, 1, 0, 180, 180, 255, 1),
(81996, 176827, 249, -1.66729, -217.144, -85.672, 0.785397, 0, 0, 1, 0, 180, 180, 255, 1),
(81997, 176828, 249, -9.80653, -212.031, -88.1401, -0.261798, 0, 0, 1, 0, 180, 180, 255, 1),
(81998, 176829, 249, -19.3983, -219.854, -88.4829, -2.79252, 0, 0, 1, 0, 180, 180, 255, 1),
(81999, 176830, 249, -19.6951, -209.639, -88.5545, -0.43633, 0, 0, 1, 0, 180, 180, 255, 1),
(82000, 176831, 249, 24.0513, -193.897, -84.9566, 2.53072, 0, 0, 1, 0, 180, 180, 255, 1),
(82001, 176832, 249, 14.2998, -195.44, -86.0326, 0.436332, 0, 0, 1, 0, 180, 180, 255, 1),
(82002, 176833, 249, 17.0001, -204.313, -86.2168, -2.61799, 0, 0, 1, 0, 180, 180, 255, 1),
(82003, 176834, 249, 17.6418, -184.034, -86.1595, -1.309, 0, 0, 1, 0, 180, 180, 255, 1),
(82004, 176835, 249, 2.9536, -198.744, -87.0469, 1.48353, 0, 0, 1, 0, 180, 180, 255, 1),
(82005, 176836, 249, -0.404226, -189.264, -87.3524, -1.39626, 0, 0, 1, 0, 180, 180, 255, 1),
(82006, 176837, 249, 6.95027, -185.41, -86.9946, 2.70526, 0, 0, 1, 0, 180, 180, 255, 1),
(82007, 176838, 249, 8.01259, -175.786, -86.6082, 2.35619, 0, 0, 1, 0, 180, 180, 255, 1),
(82008, 176839, 249, -3.72498, -180.009, -85.9318, -0.95993, 0, 0, 1, 0, 180, 180, 255, 1),
(82009, 176840, 249, -12.9119, -183.545, -87.9905, 0.087266, 0, 0, 1, 0, 180, 180, 255, 1),
(82010, 176841, 249, -21.129, -174.709, -87.7823, 2.61799, 0, 0, 1, 0, 180, 180, 255, 1),
(82011, 176842, 249, -15.6717, -196.472, -89.0988, 1.0472, 0, 0, 1, 0, 180, 180, 255, 1),
(82012, 176908, 249, -47.9515, -193.888, -86.0046, -0.610865, 0, 0, 1, 0, 180, 180, 255, 1),
(82013, 176909, 249, -54.9718, -199.119, -85.4988, 1.5708, 0, 0, 1, 0, 180, 180, 255, 1),
(82014, 176910, 249, -64.1589, -196.123, -85.1125, 1.91986, 0, 0, 1, 0, 180, 180, 255, 1),
(82015, 176911, 249, -54.7977, -187.003, -85.6277, -1.0472, 0, 0, 1, 0, 180, 180, 255, 1),
(82016, 176912, 249, -62.8772, -213.235, -85.1575, 2.00712, 0, 0, 1, 0, 180, 180, 255, 1),
(82017, 176913, 249, -51.6644, -214.436, -86.1782, -2.53072, 0, 0, 1, 0, 180, 180, 255, 1),
(82018, 176914, 249, -45.1242, -220.161, -86.5697, 0.698129, 0, 0, 1, 0, 180, 180, 255, 1),
(82019, 176915, 249, -39.1131, -212.133, -87.1607, -1.39626, 0, 0, 1, 0, 180, 180, 255, 1),
(82020, 176916, 249, -78.5539, -210.417, -83.4326, 2.87979, 0, 0, 1, 0, 180, 180, 255, 1),
(82021, 176917, 249, -72.938, -201.879, -83.6438, -1.0472, 0, 0, 1, 0, 180, 180, 255, 1),
(82022, 176918, 249, -75.138, -224.652, -83.4944, 0.436332, 0, 0, 1, 0, 180, 180, 255, 1),
(82023, 176919, 249, -54.6915, -229.819, -85.889, -1.5708, 0, 0, 1, 0, 180, 180, 255, 1),
(82024, 176920, 249, -48.0902, -234.856, -86.2826, 0.610865, 0, 0, 1, 0, 180, 180, 255, 1),
(82025, 176921, 249, -55.075, -241.777, -85.3179, 1.0472, 0, 0, 1, 0, 180, 180, 255, 1),
(82026, 176922, 249, -63.8632, -232.924, -85.1124, -1.91986, 0, 0, 1, 0, 180, 180, 255, 1);

-- Delete text from custom table.
DELETE FROM `script_texts` WHERE `entry`=-1509002;

-- Remove Speed limit from Traces of Silithyst (29534)
DELETE FROM `spell_effect_mod` WHERE  `Id`=29534 AND `EffectIndex`=0;
-- Fix gameobjects
UPDATE `gameobject_template` SET `size`='0.3', `data10`='29518' WHERE `entry`=181597;
UPDATE `gameobject_template` SET `data10`='29518' WHERE `entry`=181598;

-- Use currect victim as target for Naxxramas Cultist and Acolyte AoE spells so that it fails if target is immune.
REPLACE INTO `creature_spells` (`entry`, `name`, `spellId_1`, `probability_1`, `castTarget_1`, `targetParam1_1`, `targetParam2_1`, `castFlags_1`, `delayInitialMin_1`, `delayInitialMax_1`, `delayRepeatMin_1`, `delayRepeatMax_1`, `scriptId_1`, `spellId_2`, `probability_2`, `castTarget_2`, `targetParam1_2`, `targetParam2_2`, `castFlags_2`, `delayInitialMin_2`, `delayInitialMax_2`, `delayRepeatMin_2`, `delayRepeatMax_2`, `scriptId_2`, `spellId_3`, `probability_3`, `castTarget_3`, `targetParam1_3`, `targetParam2_3`, `castFlags_3`, `delayInitialMin_3`, `delayInitialMax_3`, `delayRepeatMin_3`, `delayRepeatMax_3`, `scriptId_3`, `spellId_4`, `probability_4`, `castTarget_4`, `targetParam1_4`, `targetParam2_4`, `castFlags_4`, `delayInitialMin_4`, `delayInitialMax_4`, `delayRepeatMin_4`, `delayRepeatMax_4`, `scriptId_4`, `spellId_5`, `probability_5`, `castTarget_5`, `targetParam1_5`, `targetParam2_5`, `castFlags_5`, `delayInitialMin_5`, `delayInitialMax_5`, `delayRepeatMin_5`, `delayRepeatMax_5`, `scriptId_5`, `spellId_6`, `probability_6`, `castTarget_6`, `targetParam1_6`, `targetParam2_6`, `castFlags_6`, `delayInitialMin_6`, `delayInitialMax_6`, `delayRepeatMin_6`, `delayRepeatMax_6`, `scriptId_6`, `spellId_7`, `probability_7`, `castTarget_7`, `targetParam1_7`, `targetParam2_7`, `castFlags_7`, `delayInitialMin_7`, `delayInitialMax_7`, `delayRepeatMin_7`, `delayRepeatMax_7`, `scriptId_7`, `spellId_8`, `probability_8`, `castTarget_8`, `targetParam1_8`, `targetParam2_8`, `castFlags_8`, `delayInitialMin_8`, `delayInitialMax_8`, `delayRepeatMin_8`, `delayRepeatMax_8`, `scriptId_8`) VALUES (159800, 'Naxxramas - Naxxramas Cultist', 28447, 75, 1, 0, 0, 0, 3, 3, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `creature_spells` (`entry`, `name`, `spellId_1`, `probability_1`, `castTarget_1`, `targetParam1_1`, `targetParam2_1`, `castFlags_1`, `delayInitialMin_1`, `delayInitialMax_1`, `delayRepeatMin_1`, `delayRepeatMax_1`, `scriptId_1`, `spellId_2`, `probability_2`, `castTarget_2`, `targetParam1_2`, `targetParam2_2`, `castFlags_2`, `delayInitialMin_2`, `delayInitialMax_2`, `delayRepeatMin_2`, `delayRepeatMax_2`, `scriptId_2`, `spellId_3`, `probability_3`, `castTarget_3`, `targetParam1_3`, `targetParam2_3`, `castFlags_3`, `delayInitialMin_3`, `delayInitialMax_3`, `delayRepeatMin_3`, `delayRepeatMax_3`, `scriptId_3`, `spellId_4`, `probability_4`, `castTarget_4`, `targetParam1_4`, `targetParam2_4`, `castFlags_4`, `delayInitialMin_4`, `delayInitialMax_4`, `delayRepeatMin_4`, `delayRepeatMax_4`, `scriptId_4`, `spellId_5`, `probability_5`, `castTarget_5`, `targetParam1_5`, `targetParam2_5`, `castFlags_5`, `delayInitialMin_5`, `delayInitialMax_5`, `delayRepeatMin_5`, `delayRepeatMax_5`, `scriptId_5`, `spellId_6`, `probability_6`, `castTarget_6`, `targetParam1_6`, `targetParam2_6`, `castFlags_6`, `delayInitialMin_6`, `delayInitialMax_6`, `delayRepeatMin_6`, `delayRepeatMax_6`, `scriptId_6`, `spellId_7`, `probability_7`, `castTarget_7`, `targetParam1_7`, `targetParam2_7`, `castFlags_7`, `delayInitialMin_7`, `delayInitialMax_7`, `delayRepeatMin_7`, `delayRepeatMax_7`, `scriptId_7`, `spellId_8`, `probability_8`, `castTarget_8`, `targetParam1_8`, `targetParam2_8`, `castFlags_8`, `delayInitialMin_8`, `delayInitialMax_8`, `delayRepeatMin_8`, `delayRepeatMax_8`, `scriptId_8`) VALUES (159810, 'Naxxramas - Naxxramas Acolyte', 30096, 100, 1, 0, 0, 0, 7, 7, 7, 9, 0, 28448, 100, 1, 0, 0, 0, 1, 2, 7, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Bubbly Fissure should be type 8 (Spell Focus), yet has no linked trap assigned, so no way to trigger aura.
UPDATE `gameobject_template` SET `type` = 6, `faction`=14, `data1` = 0, `data2` = 10, `data3` = 17775, `data5`=1 WHERE `entry` = 177524;

-- Remove target hack from Earthgrab causing it to target friendlies.
DELETE FROM `spell_effect_mod` WHERE `Id`=8377;

-- Zul'Farrak zombies do not cast any spells.
DELETE FROM `creature_spells` WHERE `entry`=7286;
UPDATE `creature_template` SET `spell_list_id`=0 WHERE `entry`=7286;

-- Zum'rah encounter in progress (begins when area trigger makes him hostile).
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (298, 34, 4, 1, 0, 0, 0);

-- Events list for Zul'Farrak Zombie
DELETE FROM `creature_ai_events` WHERE `creature_id`=7286;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (728601, 7286, 298, 11, 2, 100, 0, 0, 0, 0, 0, 728601, 0, 0, 'Zul\'Farrak Zombie - Move to Zum\'rah on Spawn');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (728602, 7286, 4018, 1, 2, 100, 0, 0, 0, 0, 0, 728602, 0, 0, 'Zul\'Farrak Zombie - Set In Combat with Zone on Spawn (After 1.10)');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (728603, 7286, 4018, 4, 2, 100, 0, 0, 0, 0, 0, 728602, 0, 0, 'Zul\'Farrak Zombie - Set In Combat with Zone on Aggro (After 1.10)');
DELETE FROM `creature_ai_scripts` WHERE `id`=728601;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (728601, 0, 3, 2, 0, 69, 0, 81524, 0, 9, 0, 0, 0, 0, 0, 3, 0, 0, 6, 0, 'Zul\'Farrak Zombie - Move to Zum\'rah');
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (728601, 0, 44, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Zul\'Farrak Zombie - Set Phase to 1');

-- Events list for Zul'Farrak Dead Hero
DELETE FROM `creature_ai_events` WHERE `creature_id`=7276;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (727601, 7276, 298, 11, 2, 100, 0, 0, 0, 0, 0, 727601, 0, 0, 'Zul\'Farrak Dead Hero - Move to Zum\'rah on Spawn');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (727602, 7276, 4018, 1, 2, 100, 0, 0, 0, 0, 0, 727602, 0, 0, 'Zul\'Farrak Dead Hero - Set In Combat with Zone on Spawn (After 1.10)');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (727603, 7276, 4018, 4, 2, 100, 0, 0, 0, 0, 0, 727602, 0, 0, 'Zul\'Farrak Dead Hero - Set In Combat with Zone on Aggro (After 1.10)');
DELETE FROM `creature_ai_scripts` WHERE `id`=727601;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (727601, 0, 44, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Zul Farrak Dead Hero - Set Phase to 1');
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (727601, 0, 3, 2, 0, 69, 0, 81524, 0, 9, 0, 0, 0, 0, 0, 3, 0, 0, 6, 0, 'Zul Farrak Dead Hero - Assist Zum\'rah');

-- Events list for Witch Doctor Zum'rah
DELETE FROM `creature_ai_events` WHERE `creature_id`=7271;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (727101, 7271, 0, 4, 0, 100, 0, 0, 0, 0, 0, 727101, 0, 0, 'Witch Doctor Zum\'rah - Yell on Aggro');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (727102, 7271, 0, 5, 0, 100, 1, 10000, 10000, 1, 0, 727102, 0, 0, 'Witch Doctor Zum\'rah - Yell on Killed Player');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (727103, 7271, 125, 0, 0, 100, 1, 1000, 5000, 18000, 18000, 727103, 0, 0, 'Witch Doctor Zum\'rah - Summon Zombies');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (727104, 7271, 0, 6, 0, 100, 0, 0, 0, 0, 0, 727104, 0, 0, 'Witch Doctor Zum\'rah - Set Data on Death');
DELETE FROM `creature_ai_scripts` WHERE `id`=727104;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (727104, 0, 37, 4, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Witch Doctor Zum\'rah - Set Data');

-- Prevent Zum'rah from assisting zombies.
UPDATE `creature_template` SET `flags_extra` = `flags_extra` | 65536 WHERE `entry`=7271;

-- Human Male
UPDATE `creature_display_info_addon` SET `bounding_radius`=0.306, `combat_reach`=1.5 WHERE `display_id`=49;

-- Human Female
UPDATE `creature_display_info_addon` SET `bounding_radius`=0.208, `combat_reach`=1.5 WHERE `display_id`=50;

-- Orc Male
UPDATE `creature_display_info_addon` SET `bounding_radius`=0.372, `combat_reach`=1.5 WHERE `display_id`=51;

-- Orc Female
UPDATE `creature_display_info_addon` SET `bounding_radius`=0.236, `combat_reach`=1.5 WHERE `display_id`=52;

-- Dwarf Male
UPDATE `creature_display_info_addon` SET `bounding_radius`=0.347, `combat_reach`=1.5 WHERE `display_id`=53;

-- Dwarf Female
UPDATE `creature_display_info_addon` SET `bounding_radius`=0.347, `combat_reach`=1.5 WHERE `display_id`=54;

-- Night Elf Male
UPDATE `creature_display_info_addon` SET `bounding_radius`=0.389, `combat_reach`=1.5 WHERE `display_id`=55;

-- Night Elf Female
UPDATE `creature_display_info_addon` SET `bounding_radius`=0.306, `combat_reach`=1.5 WHERE `display_id`=56;

-- Undead Male
UPDATE `creature_display_info_addon` SET `bounding_radius`=0.383, `combat_reach`=1.5 WHERE `display_id`=57;

-- Undead Female
UPDATE `creature_display_info_addon` SET `bounding_radius`=0.383, `combat_reach`=1.5 WHERE `display_id`=58;

-- Tauren Male
UPDATE `creature_display_info_addon` SET `bounding_radius`=0.9747, `combat_reach`=4.05 WHERE `display_id`=59;

-- Tauren Female
UPDATE `creature_display_info_addon` SET `bounding_radius`=0.8725, `combat_reach`=3.75 WHERE `display_id`=60;

-- Gnome Male
UPDATE `creature_display_info_addon` SET `bounding_radius`=0.3519, `combat_reach`=1.725 WHERE `display_id`=1563;

-- Gnome Female
UPDATE `creature_display_info_addon` SET `bounding_radius`=0.3519, `combat_reach`=1.725 WHERE `display_id`=1564;

-- Troll Male
UPDATE `creature_display_info_addon` SET `bounding_radius`=0.306, `combat_reach`=1.5 WHERE `display_id`=1478;

-- Troll Female
UPDATE `creature_display_info_addon` SET `bounding_radius`=0.306, `combat_reach`=1.5 WHERE `display_id`=1479;

-- Add custom aura to enable seal twisting with seal of command.
INSERT INTO `spell_mod` (`Id`, `procChance`, `procFlags`, `procCharges`, `DurationIndex`, `Category`, `CastingTimeIndex`, `StackAmount`, `SpellIconID`, `activeIconID`, `manaCost`, `Attributes`, `AttributesEx`, `AttributesEx2`, `AttributesEx3`, `AttributesEx4`, `Custom`, `InterruptFlags`, `AuraInterruptFlags`, `ChannelInterruptFlags`, `Dispel`, `Stances`, `StancesNot`, `SpellVisual`, `ManaCostPercentage`, `StartRecoveryCategory`, `StartRecoveryTime`, `MaxAffectedTargets`, `MaxTargetLevel`, `DmgClass`, `rangeIndex`, `RecoveryTime`, `CategoryRecoveryTime`, `SpellFamilyName`, `SpellFamilyFlags`, `Mechanic`, `EquippedItemClass`, `Comment`) VALUES (33006, 100, 4, 1, 327, 0, 1, 0, 0, 0, 0, 328064, 1024, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 10, 0, 0, -1, 'Seal of Command: Seal Twisting Helper');
INSERT INTO `spell_effect_mod` (`Id`, `EffectIndex`, `Effect`, `EffectDieSides`, `EffectBaseDice`, `EffectDicePerLevel`, `EffectRealPointsPerLevel`, `EffectBasePoints`, `EffectAmplitude`, `EffectPointsPerComboPoint`, `EffectChainTarget`, `EffectMultipleValue`, `EffectMechanic`, `EffectImplicitTargetA`, `EffectImplicitTargetB`, `EffectRadiusIndex`, `EffectApplyAuraName`, `EffectItemType`, `EffectMiscValue`, `EffectTriggerSpell`, `Comment`) VALUES (33006, 0, 6, 1, 1, 0, 0, -1, 0, 0, 0, 0, 0, 1, 0, 0, 42, 0, 0, 20424, 'Seal of Command: Seal Twisting Helper');
-- Define proc chance for copy of Seal of Command used for seal twisting.
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`, `build_min`, `build_max`) VALUES (33006, 0, 0, 0, 0, 0, 0, 0, 7, 0, 1000, 0, 5875);

-- Prevent Archmage Arugal from evading while teleported to platform.
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|67108864 WHERE `entry`=4275;
