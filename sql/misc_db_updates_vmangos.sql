

-- remove lvl 50 scrolls from wendigos
DELETE FROM `creature_loot_template` WHERE `entry`=1135 && `item`=10306 && `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=1135 && `item`=10308 && `groupid`=0;

-- deviate lurkers shouldn't drop crisp spider meat
DELETE FROM `creature_loot_template` WHERE  `entry`=3641 && `item`=1081 && `groupid`=0;

-- deviate lurkers should drop Threshadon Fang
INSERT INTO `creature_loot_template` VALUES (3641, 5516, 19, 0, 1, 1, 0, 0, 10);

-- defias cutpurse drop stacks of 3 inen instead of 2
UPDATE `creature_loot_template` SET `maxcount`=2 WHERE `entry`=94 && `item`=2589;

-- defias bandit drops 4 linen instead of 2
UPDATE `creature_loot_template` SET `maxcount`=2 WHERE `entry`=116 && `item`=2589;

-- riverpaw gnoll shouldn't drop wool
DELETE FROM `creature_loot_template` WHERE `entry`=117 && `item`=2592 && `groupid`=0;

-- slightly increased drop rate of linen for riverpaw gnoll
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=45 WHERE `entry`=117 && `item`=2589;

-- remove all loot from stratholme phantoms
DELETE FROM `creature_loot_template` WHERE entry = 10389;
UPDATE `creature_template` SET `loot_id`=0 WHERE `entry`=10389;
DELETE FROM `creature_loot_template` WHERE entry = 10388;
UPDATE `creature_template` SET `loot_id`=0 WHERE `entry`=10388;





-- Kolkar Wrangler should run away from rooted target.
DELETE FROM `creature_ai_events` WHERE `creature_id`=3272;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (327201, 3272, 0, 2, 0, 100, 0, 15, 0, 0, 0, 327201, 0, 0, 'Kolkar Wrangler - Flee at 15\% HP');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (327202, 3272, 0, 33, 0, 100, 1, 20000, 20000, 0, 0, 327202, 0, 0, 'Kolkar Wrangler - Run Away from Target when Rooted');
DELETE FROM `creature_ai_scripts` WHERE `id`=327202;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (327202, 0, 20, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 0, 0, 0, 2428, 'Kolkar Wrangler - Move Away from Target');

-- Moonkins should not be skinnable.
UPDATE `creature_template` SET `skinning_loot_id`=0 WHERE `entry` IN (2927, 2928, 2929, 8210, 10157, 10158, 10159, 10160);

-- Move wolf stuck in statue in Ashenvale.
UPDATE `creature` SET `position_x`=2719.96, `position_y`=-99.9314, `position_z`=94.7723 WHERE `guid`=34977;

-- Remove Mulgore Spice Bread from Riverpaw Gnoll.
DELETE FROM `creature_loot_template` WHERE `item`=4544 && `entry`=117;

-- Mossy Tumor drop chance should be around 50%.
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=-50 WHERE `item`=5170;

-- Correct drop chance of Thresher Eye.
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=-40 WHERE `item`=5412 && `entry`=2185;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=-10 WHERE `item`=5412 && `entry`=2187;



-- Quest Proof of Demise should require At War With The Scarlet Crusade Part 1.
UPDATE `quest_template` SET `PrevQuestId`=427 WHERE `entry`=374;

-- Move wolves spawned too close to tree.
UPDATE `creature` SET `position_x`=-9368.2, `position_y`=-229.018, `position_z`=65.965 WHERE `guid`=81096;
UPDATE `creature` SET `position_x`=-9356.6, `position_y`=-217.255, `position_z`=66.484 WHERE `guid`=81097;
UPDATE `creature` SET `position_x`=-8863.68, `position_y`=-301.456, `position_z`=77.612 WHERE `guid`=80134;

-- Fix Cannon for quest Death From Below.
INSERT INTO `spell_mod` (`Id`, `AttributesEx2`, `Comment`) VALUES (4170, 4, 'Quest Death From Below: Cannon Ball - Ignore LoS');

-- Events list for Rot Hide Mystic
DELETE FROM `creature_ai_events` WHERE `creature_id`=1773;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (177301, 1773, 0, 6, 0, 20, 0, 0, 0, 0, 0, 177301, 0, 0, 'Rot Hide Mystic - Spawn Nightlash on death');
DELETE FROM `creature_ai_scripts` WHERE `id` IN (177301, 177302, 177303);
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (177301, 0, 10, 1983, 150000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1078.49, 1541.23, 28.9379, 0.113425, 0, 'Rot Hide Mystic - Summon Creature Nightlash');
REPLACE INTO `creature_spells` (`entry`, `name`, `spellId_1`, `probability_1`, `castTarget_1`, `targetParam1_1`, `targetParam2_1`, `castFlags_1`, `delayInitialMin_1`, `delayInitialMax_1`, `delayRepeatMin_1`, `delayRepeatMax_1`, `scriptId_1`, `spellId_2`, `probability_2`, `castTarget_2`, `targetParam1_2`, `targetParam2_2`, `castFlags_2`, `delayInitialMin_2`, `delayInitialMax_2`, `delayRepeatMin_2`, `delayRepeatMax_2`, `scriptId_2`, `spellId_3`, `probability_3`, `castTarget_3`, `targetParam1_3`, `targetParam2_3`, `castFlags_3`, `delayInitialMin_3`, `delayInitialMax_3`, `delayRepeatMin_3`, `delayRepeatMax_3`, `scriptId_3`, `spellId_4`, `probability_4`, `castTarget_4`, `targetParam1_4`, `targetParam2_4`, `castFlags_4`, `delayInitialMin_4`, `delayInitialMax_4`, `delayRepeatMin_4`, `delayRepeatMax_4`, `scriptId_4`, `spellId_5`, `probability_5`, `castTarget_5`, `targetParam1_5`, `targetParam2_5`, `castFlags_5`, `delayInitialMin_5`, `delayInitialMax_5`, `delayRepeatMin_5`, `delayRepeatMax_5`, `scriptId_5`, `spellId_6`, `probability_6`, `castTarget_6`, `targetParam1_6`, `targetParam2_6`, `castFlags_6`, `delayInitialMin_6`, `delayInitialMax_6`, `delayRepeatMin_6`, `delayRepeatMax_6`, `scriptId_6`, `spellId_7`, `probability_7`, `castTarget_7`, `targetParam1_7`, `targetParam2_7`, `castFlags_7`, `delayInitialMin_7`, `delayInitialMax_7`, `delayRepeatMin_7`, `delayRepeatMax_7`, `scriptId_7`, `spellId_8`, `probability_8`, `castTarget_8`, `targetParam1_8`, `targetParam2_8`, `castFlags_8`, `delayInitialMin_8`, `delayInitialMax_8`, `delayRepeatMin_8`, `delayRepeatMax_8`, `scriptId_8`) VALUES (17730, 'Silverpine Forest - Rot Hide Mystic', 3237, 100, 1, 0, 0, 0, 2, 12, 30, 45, 0, 332, 100, 15, 0, 0, 0, 14, 22, 14, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `spell_list_id`=17730 WHERE `entry`=1773;

-- Lady Vespia should drop Ring of Zoram.
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES (10559, 5445, -100, 0, 1, 1, 0, 0, 10);

-- Correct drop chance for Pridewing Venom Sac.
DELETE FROM `creature_loot_template` WHERE `item`=5808;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES (5928, 5808, -5, 0, 1, 1, 0, 0, 10);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES (4011, 5808, -30, 0, 1, 1, 0, 0, 10);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES (4012, 5808, -35, 0, 1, 1, 0, 0, 10);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES (4013, 5808, -35, 0, 1, 1, 0, 0, 10);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES (4014, 5808, -35, 0, 1, 1, 0, 0, 10);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES (4015, 5808, -15, 0, 1, 1, 0, 0, 10);
UPDATE `creature_template` SET `loot_id`=0 WHERE `entry`=6141;

-- Quest Supplies for the Crossroads should require completing Disrupt the Attacks first.
UPDATE `quest_template` SET `PrevQuestId`=871 WHERE `entry`=5041;

-- Correct drop chances for Magic Dust.
DELETE FROM `creature_loot_template` WHERE `item`=2091;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES (99, 2091, 2, 0, 1, 1, 0, 0, 10);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES (5809, 2091, 2, 0, 1, 1, 0, 0, 10);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES (1936, 2091, 5, 0, 1, 1, 0, 0, 10);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES (832, 2091, 15, 0, 1, 1, 0, 0, 10);

-- Fix target for script to despawn ooze for quest A Little Slime Goes a Long Way Part 2.
DELETE FROM `spell_scripts` WHERE `id`=15702;
INSERT INTO `spell_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (15702, 0, 17, 11954, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty Pure Sample Jar - Create Item Filled Pure Sample Jar');
INSERT INTO `spell_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (15702, 0, 18, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty Pure Sample Jar - Despawn Creature');

-- Correct unit flags for White Kitten.
UPDATE `creature_template` SET `unit_flags`=768 WHERE `entry`=7386;

-- Remove custom version of following gameobjects:
-- Quilboar Watering Hole, Spring Well, Ruins of Stardust Fountain
DELETE FROM `gameobject_template` WHERE `entry` IN (300146, 300147, 300148);
DELETE FROM `gameobject` WHERE `id` IN (300146, 300147, 300148);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `script_name`) VALUES (107045, 8, 299, 'Spring Well', 1, 226, 5, 0, 1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `script_name`) VALUES (107046, 8, 299, 'Quilboar Watering Hole', 1, 224, 25, 0, 1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `script_name`) VALUES (107047, 8, 299, 'Ruins of Stardust Fountain', 1, 223, 5, 0, 1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `state`) VALUES (99863, 107045, 0, -43.4367, -923.198, 55.8714, 5.75401, 0, 0, 0.261511, -0.9652, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `state`) VALUES (99864, 107046, 1, -3573.24, -1864.45, 82.4975, 4.13904, 0, 0, 0.878194, -0.478305, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `state`) VALUES (99862, 107047, 1, 2079.39, -234.624, 98.9194, 6.04, 0, 0, 0.121293, -0.992617, 1);

-- Correct drop chance for Highborne Relic.
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=-40 WHERE `item`=5360;

-- Correct drop chance for Fine Crab Chunks.
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=-40 WHERE `item`=12237;

-- Correct drop chance for Worn Parchment.
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=-45 WHERE `item`=5348;

-- Correct drop chance for Top of Gelkak's Key.
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=-20 WHERE `item`=7498;

-- Correct drop chance for Middle of Gelkak's Key.
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=-10 WHERE `item`=7499 && `entry` IN (2208, 2207);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=-1 WHERE `item`=7499 && `entry` NOT IN (2208, 2207);

-- Correct drop chance for Bottom of Gelkak's Key.
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=-20 WHERE `item`=7500 && `entry`=2236;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=-5 WHERE `item`=7500 && `entry`=2233;

-- Correct drop chance for Fine Moonstalker Pelt.
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=-40 WHERE `item`=5386;



-- Imp Minion should say text on aggro.
DELETE FROM `creature_ai_events` WHERE `creature_id`=12922;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1292201, 12922, 0, 4, 0, 10, 2, 0, 0, 0, 0, 1292201, 1292202, 0, 'Imp Minion - Say Text on Aggro');
DELETE FROM `creature_ai_scripts` WHERE `id`=1292201;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1292201, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 746, 747, 749, 750, 0, 0, 0, 0, 0, 'Imp Minion - Say Text');
DELETE FROM `creature_ai_scripts` WHERE `id`=1292202;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1292202, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 751, 752, 753, 754, 0, 0, 0, 0, 0, 'Imp Minion - Say Text');



-- Add missing coordinates for Coarse Dynamite.
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`) VALUES (9002, 0, -2625, -2423, 79);
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`) VALUES (9003, 0, -2607, -2434, 80);
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`) VALUES (9004, 0, -2634, -2411, 81);

-- Remove Eranikus texts from custom table.
DELETE FROM `script_texts` WHERE `entry` IN (-1001012, -1001013, -1001014, -1001015, -1001016, -1001017, -1001018, 1001019);


-- Make Wizzlecrank's Shredder an active object so he can respawn in original grid.
UPDATE `creature` SET `spawn_flags`=1 WHERE `id`=3439;



-- Events list for Mottled Boar
DELETE FROM `creature_ai_events` WHERE `creature_id`=3098;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (309801, 3098, 3098, 10, 0, 100, 1, 1, 5, 10000, 10000, 309801, 0, 0, 'Mottled Boar - Run Away on Player In Combat Approaching');
DELETE FROM `creature_ai_scripts` WHERE `id`=309801;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (309801, 0, 3, 2, 1000, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 'Mottled Boar - Run Away');
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (3098, -1, 85, 119, 0, 0, 0);
UPDATE `creature_template` SET `ai_name`='EventAI' WHERE `entry`=3098;



-- Gilthares Firebough is immune to both players and npcs by default.
UPDATE `creature_template` SET `unit_flags`=768 WHERE `entry`=3465;




-- Correct bounding radius.
UPDATE `creature_model_info` SET `bounding_radius`=0.9135 WHERE `modelid`=110;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=1569;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=1570;
UPDATE `creature_model_info` SET `bounding_radius`=0.214 WHERE `modelid`=1643;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=1891;
UPDATE `creature_model_info` SET `bounding_radius`=1.15 WHERE `modelid`=3216;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=3424;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=3426;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=3922;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=3930;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=4470;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=4592;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=4890;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=4956;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=4957;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=5550;
UPDATE `creature_model_info` SET `bounding_radius`=1.56 WHERE `modelid`=6085;
UPDATE `creature_model_info` SET `bounding_radius`=0.214 WHERE `modelid`=6546;
UPDATE `creature_model_info` SET `bounding_radius`=0.214 WHERE `modelid`=6548;
UPDATE `creature_model_info` SET `bounding_radius`=0.575 WHERE `modelid`=7853;
UPDATE `creature_model_info` SET `bounding_radius`=0.3672 WHERE `modelid`=11081;
UPDATE `creature_model_info` SET `bounding_radius`=3 WHERE `modelid`=11380;
UPDATE `creature_model_info` SET `bounding_radius`=0.214 WHERE `modelid`=11671;
UPDATE `creature_model_info` SET `bounding_radius`=0.372 WHERE `modelid`=11894;
UPDATE `creature_model_info` SET `bounding_radius`=0.214 WHERE `modelid`=13150;
UPDATE `creature_model_info` SET `bounding_radius`=0.372 WHERE `modelid`=13278;
UPDATE `creature_model_info` SET `bounding_radius`=0.236 WHERE `modelid`=13279;
UPDATE `creature_model_info` SET `bounding_radius`=0.372 WHERE `modelid`=13280;
UPDATE `creature_model_info` SET `bounding_radius`=0.9747 WHERE `modelid`=13281;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=13316;
UPDATE `creature_model_info` SET `bounding_radius`=0.372 WHERE `modelid`=13322;
UPDATE `creature_model_info` SET `bounding_radius`=0.236 WHERE `modelid`=13323;
UPDATE `creature_model_info` SET `bounding_radius`=0.9747 WHERE `modelid`=13325;
UPDATE `creature_model_info` SET `bounding_radius`=0.372 WHERE `modelid`=13330;
UPDATE `creature_model_info` SET `bounding_radius`=0.4092 WHERE `modelid`=13415;
UPDATE `creature_model_info` SET `bounding_radius`=0.383 WHERE `modelid`=13537;
UPDATE `creature_model_info` SET `bounding_radius`=0.383 WHERE `modelid`=13540;
UPDATE `creature_model_info` SET `bounding_radius`=0.8725 WHERE `modelid`=13562;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=13670;
UPDATE `creature_model_info` SET `bounding_radius`=1.95 WHERE `modelid`=14012;
UPDATE `creature_model_info` SET `bounding_radius`=2.35375 WHERE `modelid`=14497;
UPDATE `creature_model_info` SET `bounding_radius`=2.0835 WHERE `modelid`=14511;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=14530;
UPDATE `creature_model_info` SET `bounding_radius`=0.4284 WHERE `modelid`=15218;
UPDATE `creature_model_info` SET `bounding_radius`=0.612 WHERE `modelid`=15267;
UPDATE `creature_model_info` SET `bounding_radius`=0.612 WHERE `modelid`=15268;
UPDATE `creature_model_info` SET `bounding_radius`=3 WHERE `modelid`=15288;
UPDATE `creature_model_info` SET `bounding_radius`=0.383 WHERE `modelid`=16007;
UPDATE `creature_model_info` SET `bounding_radius`=0.208 WHERE `modelid`=16010;
UPDATE `creature_model_info` SET `bounding_radius`=0.830407 WHERE `modelid`=957;
UPDATE `creature_model_info` SET `bounding_radius`=0.2784 WHERE `modelid`=1236;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=1864;
UPDATE `creature_model_info` SET `bounding_radius`=0.389 WHERE `modelid`=2595;
UPDATE `creature_model_info` SET `bounding_radius`=1 WHERE `modelid`=2702;
UPDATE `creature_model_info` SET `bounding_radius`=0.208 WHERE `modelid`=3901;
UPDATE `creature_model_info` SET `bounding_radius`=0.50915 WHERE `modelid`=4535;
UPDATE `creature_model_info` SET `bounding_radius`=0.0875 WHERE `modelid`=6192;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=7050;
UPDATE `creature_model_info` SET `bounding_radius`=0.4 WHERE `modelid`=9572;
UPDATE `creature_model_info` SET `bounding_radius`=0.389 WHERE `modelid`=10858;
UPDATE `creature_model_info` SET `bounding_radius`=0.0875 WHERE `modelid`=10992;
UPDATE `creature_model_info` SET `bounding_radius`=0.236 WHERE `modelid`=11441;
UPDATE `creature_model_info` SET `bounding_radius`=0.51 WHERE `modelid`=12194;
UPDATE `creature_model_info` SET `bounding_radius`=0.145 WHERE `modelid`=15992;
UPDATE `creature_model_info` SET `bounding_radius`=0.522 WHERE `modelid`=314;
UPDATE `creature_model_info` SET `bounding_radius`=0.7 WHERE `modelid`=2420;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=4451;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=4460;
UPDATE `creature_model_info` SET `bounding_radius`=0.3519 WHERE `modelid`=4493;
UPDATE `creature_model_info` SET `bounding_radius`=1.5 WHERE `modelid`=4910;
UPDATE `creature_model_info` SET `bounding_radius`=0.652 WHERE `modelid`=6633;
UPDATE `creature_model_info` SET `bounding_radius`=0.3519 WHERE `modelid`=6974;
UPDATE `creature_model_info` SET `bounding_radius`=0.389 WHERE `modelid`=6991;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=7210;
UPDATE `creature_model_info` SET `bounding_radius`=1.3275 WHERE `modelid`=7350;
UPDATE `creature_model_info` SET `bounding_radius`=0.3519 WHERE `modelid`=7952;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=12933;
UPDATE `creature_model_info` SET `bounding_radius`=0.63 WHERE `modelid`=15363;
UPDATE `creature_model_info` SET `bounding_radius`=0.75 WHERE `modelid`=15700;
UPDATE `creature_model_info` SET `bounding_radius`=0.2 WHERE `modelid`=15785;
UPDATE `creature_model_info` SET `bounding_radius`=0.7 WHERE `modelid`=1421;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=1923;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=2045;
UPDATE `creature_model_info` SET `bounding_radius`=1.593 WHERE `modelid`=2303;
UPDATE `creature_model_info` SET `bounding_radius`=0.7 WHERE `modelid`=2419;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=3933;
UPDATE `creature_model_info` SET `bounding_radius`=0.245 WHERE `modelid`=3956;
UPDATE `creature_model_info` SET `bounding_radius`=0.389 WHERE `modelid`=4161;
UPDATE `creature_model_info` SET `bounding_radius`=0.9932 WHERE `modelid`=4427;
UPDATE `creature_model_info` SET `bounding_radius`=0.372 WHERE `modelid`=4428;
UPDATE `creature_model_info` SET `bounding_radius`=0.278 WHERE `modelid`=4465;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=4597;
UPDATE `creature_model_info` SET `bounding_radius`=1.176 WHERE `modelid`=4716;
UPDATE `creature_model_info` SET `bounding_radius`=0.3825 WHERE `modelid`=4961;
UPDATE `creature_model_info` SET `bounding_radius`=0.208 WHERE `modelid`=4968;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=4969;
UPDATE `creature_model_info` SET `bounding_radius`=0.372 WHERE `modelid`=4970;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=4971;
UPDATE `creature_model_info` SET `bounding_radius`=1 WHERE `modelid`=5047;
UPDATE `creature_model_info` SET `bounding_radius`=0.3672 WHERE `modelid`=5534;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=6127;
UPDATE `creature_model_info` SET `bounding_radius`=0.139 WHERE `modelid`=6288;
UPDATE `creature_model_info` SET `bounding_radius`=0.139 WHERE `modelid`=6290;
UPDATE `creature_model_info` SET `bounding_radius`=0.2625 WHERE `modelid`=6589;
UPDATE `creature_model_info` SET `bounding_radius`=1.5 WHERE `modelid`=6763;
UPDATE `creature_model_info` SET `bounding_radius`=0.208 WHERE `modelid`=6792;
UPDATE `creature_model_info` SET `bounding_radius`=0.3519 WHERE `modelid`=6926;
UPDATE `creature_model_info` SET `bounding_radius`=0.8725 WHERE `modelid`=7376;
UPDATE `creature_model_info` SET `bounding_radius`=0.145 WHERE `modelid`=7920;
UPDATE `creature_model_info` SET `bounding_radius`=0.214 WHERE `modelid`=7922;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=8706;
UPDATE `creature_model_info` SET `bounding_radius`=0.795 WHERE `modelid`=9230;
UPDATE `creature_model_info` SET `bounding_radius`=0.275 WHERE `modelid`=9749;
UPDATE `creature_model_info` SET `bounding_radius`=0.3 WHERE `modelid`=9903;
UPDATE `creature_model_info` SET `bounding_radius`=0.564407 WHERE `modelid`=9913;
UPDATE `creature_model_info` SET `bounding_radius`=0.75 WHERE `modelid`=10046;
UPDATE `creature_model_info` SET `bounding_radius`=0.372 WHERE `modelid`=10071;
UPDATE `creature_model_info` SET `bounding_radius`=0.214 WHERE `modelid`=10199;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=10249;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=10250;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=10251;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=10252;
UPDATE `creature_model_info` SET `bounding_radius`=0.25 WHERE `modelid`=10269;
UPDATE `creature_model_info` SET `bounding_radius`=0.6 WHERE `modelid`=10283;
UPDATE `creature_model_info` SET `bounding_radius`=0.6 WHERE `modelid`=10284;
UPDATE `creature_model_info` SET `bounding_radius`=0.208 WHERE `modelid`=10334;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=10340;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=10402;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=10460;
UPDATE `creature_model_info` SET `bounding_radius`=0.372 WHERE `modelid`=10461;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=10462;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=10641;
UPDATE `creature_model_info` SET `bounding_radius`=0.1 WHERE `modelid`=10753;
UPDATE `creature_model_info` SET `bounding_radius`=0.3068 WHERE `modelid`=10819;
UPDATE `creature_model_info` SET `bounding_radius`=0.6 WHERE `modelid`=10919;
UPDATE `creature_model_info` SET `bounding_radius`=0.725 WHERE `modelid`=10983;
UPDATE `creature_model_info` SET `bounding_radius`=0.0875 WHERE `modelid`=10990;
UPDATE `creature_model_info` SET `bounding_radius`=0.105 WHERE `modelid`=10993;
UPDATE `creature_model_info` SET `bounding_radius`=0.45 WHERE `modelid`=11009;
UPDATE `creature_model_info` SET `bounding_radius`=1.5 WHERE `modelid`=11011;
UPDATE `creature_model_info` SET `bounding_radius`=1.59 WHERE `modelid`=11029;
UPDATE `creature_model_info` SET `bounding_radius`=0.35 WHERE `modelid`=11105;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=11272;
UPDATE `creature_model_info` SET `bounding_radius`=0.208 WHERE `modelid`=11300;
UPDATE `creature_model_info` SET `bounding_radius`=0.383 WHERE `modelid`=11303;
UPDATE `creature_model_info` SET `bounding_radius`=0.383 WHERE `modelid`=11307;
UPDATE `creature_model_info` SET `bounding_radius`=0.816949 WHERE `modelid`=11411;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=11442;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=11443;
UPDATE `creature_model_info` SET `bounding_radius`=0.208 WHERE `modelid`=11477;
UPDATE `creature_model_info` SET `bounding_radius`=1.75 WHERE `modelid`=11572;
UPDATE `creature_model_info` SET `bounding_radius`=0.236 WHERE `modelid`=11589;
UPDATE `creature_model_info` SET `bounding_radius`=0.9747 WHERE `modelid`=11590;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=11591;
UPDATE `creature_model_info` SET `bounding_radius`=0.389 WHERE `modelid`=11592;
UPDATE `creature_model_info` SET `bounding_radius`=0.383 WHERE `modelid`=11593;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=11594;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=11595;
UPDATE `creature_model_info` SET `bounding_radius`=0.533 WHERE `modelid`=11731;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=11749;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=11750;
UPDATE `creature_model_info` SET `bounding_radius`=0.43375 WHERE `modelid`=11830;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=11831;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=11832;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=11833;
UPDATE `creature_model_info` SET `bounding_radius`=0.2832 WHERE `modelid`=11978;
UPDATE `creature_model_info` SET `bounding_radius`=0.4464 WHERE `modelid`=11979;
UPDATE `creature_model_info` SET `bounding_radius`=0.2832 WHERE `modelid`=11980;
UPDATE `creature_model_info` SET `bounding_radius`=0.4464 WHERE `modelid`=11981;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=12169;
UPDATE `creature_model_info` SET `bounding_radius`=0.05 WHERE `modelid`=12191;
UPDATE `creature_model_info` SET `bounding_radius`=0.85 WHERE `modelid`=12196;
UPDATE `creature_model_info` SET `bounding_radius`=1.15 WHERE `modelid`=12234;
UPDATE `creature_model_info` SET `bounding_radius`=0.383 WHERE `modelid`=12329;
UPDATE `creature_model_info` SET `bounding_radius`=0.9747 WHERE `modelid`=12969;
UPDATE `creature_model_info` SET `bounding_radius`=0.3519 WHERE `modelid`=13260;
UPDATE `creature_model_info` SET `bounding_radius`=0.3519 WHERE `modelid`=13261;
UPDATE `creature_model_info` SET `bounding_radius`=0.372 WHERE `modelid`=13361;
UPDATE `creature_model_info` SET `bounding_radius`=0.236 WHERE `modelid`=13362;
UPDATE `creature_model_info` SET `bounding_radius`=0.372 WHERE `modelid`=13363;
UPDATE `creature_model_info` SET `bounding_radius`=0.9747 WHERE `modelid`=13364;
UPDATE `creature_model_info` SET `bounding_radius`=0.75 WHERE `modelid`=13509;
UPDATE `creature_model_info` SET `bounding_radius`=0.372 WHERE `modelid`=13590;
UPDATE `creature_model_info` SET `bounding_radius`=0.236 WHERE `modelid`=13591;
UPDATE `creature_model_info` SET `bounding_radius`=0.372 WHERE `modelid`=13592;
UPDATE `creature_model_info` SET `bounding_radius`=0.236 WHERE `modelid`=13593;
UPDATE `creature_model_info` SET `bounding_radius`=0.372 WHERE `modelid`=13598;
UPDATE `creature_model_info` SET `bounding_radius`=0.236 WHERE `modelid`=13599;
UPDATE `creature_model_info` SET `bounding_radius`=0.372 WHERE `modelid`=13600;
UPDATE `creature_model_info` SET `bounding_radius`=0.236 WHERE `modelid`=13601;
UPDATE `creature_model_info` SET `bounding_radius`=0.372 WHERE `modelid`=13769;
UPDATE `creature_model_info` SET `bounding_radius`=0.236 WHERE `modelid`=13770;
UPDATE `creature_model_info` SET `bounding_radius`=0.383 WHERE `modelid`=13772;
UPDATE `creature_model_info` SET `bounding_radius`=0.383 WHERE `modelid`=13776;
UPDATE `creature_model_info` SET `bounding_radius`=0.372 WHERE `modelid`=13777;
UPDATE `creature_model_info` SET `bounding_radius`=0.236 WHERE `modelid`=13778;
UPDATE `creature_model_info` SET `bounding_radius`=0.383 WHERE `modelid`=13779;
UPDATE `creature_model_info` SET `bounding_radius`=0.383 WHERE `modelid`=13780;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=13785;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=13786;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=13787;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=13788;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=13799;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=13800;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=13801;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=13802;
UPDATE `creature_model_info` SET `bounding_radius`=1.75 WHERE `modelid`=14152;
UPDATE `creature_model_info` SET `bounding_radius`=1.125 WHERE `modelid`=14352;
UPDATE `creature_model_info` SET `bounding_radius`=0.75 WHERE `modelid`=14379;
UPDATE `creature_model_info` SET `bounding_radius`=2.832 WHERE `modelid`=14522;
UPDATE `creature_model_info` SET `bounding_radius`=1.392 WHERE `modelid`=14528;
UPDATE `creature_model_info` SET `bounding_radius`=1 WHERE `modelid`=14542;
UPDATE `creature_model_info` SET `bounding_radius`=0.75 WHERE `modelid`=14888;
UPDATE `creature_model_info` SET `bounding_radius`=0.75 WHERE `modelid`=14889;
UPDATE `creature_model_info` SET `bounding_radius`=0.3 WHERE `modelid`=14932;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=15172;
UPDATE `creature_model_info` SET `bounding_radius`=0.208 WHERE `modelid`=15173;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=15174;
UPDATE `creature_model_info` SET `bounding_radius`=0.208 WHERE `modelid`=15175;
UPDATE `creature_model_info` SET `bounding_radius`=0.383 WHERE `modelid`=15176;
UPDATE `creature_model_info` SET `bounding_radius`=0.383 WHERE `modelid`=15177;
UPDATE `creature_model_info` SET `bounding_radius`=0.383 WHERE `modelid`=15178;
UPDATE `creature_model_info` SET `bounding_radius`=0.383 WHERE `modelid`=15179;
UPDATE `creature_model_info` SET `bounding_radius`=0.153 WHERE `modelid`=15181;
UPDATE `creature_model_info` SET `bounding_radius`=0.383 WHERE `modelid`=15189;
UPDATE `creature_model_info` SET `bounding_radius`=0.208 WHERE `modelid`=15193;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=15194;
UPDATE `creature_model_info` SET `bounding_radius`=0.383 WHERE `modelid`=15197;
UPDATE `creature_model_info` SET `bounding_radius`=0.383 WHERE `modelid`=15199;
UPDATE `creature_model_info` SET `bounding_radius`=0.3213 WHERE `modelid`=15201;
UPDATE `creature_model_info` SET `bounding_radius`=0.4 WHERE `modelid`=15204;
UPDATE `creature_model_info` SET `bounding_radius`=0.383 WHERE `modelid`=15206;
UPDATE `creature_model_info` SET `bounding_radius`=0.383 WHERE `modelid`=15207;
UPDATE `creature_model_info` SET `bounding_radius`=0.383 WHERE `modelid`=15208;
UPDATE `creature_model_info` SET `bounding_radius`=0.383 WHERE `modelid`=15209;
UPDATE `creature_model_info` SET `bounding_radius`=0.4284 WHERE `modelid`=15233;
UPDATE `creature_model_info` SET `bounding_radius`=1.5 WHERE `modelid`=15291;
UPDATE `creature_model_info` SET `bounding_radius`=1.5 WHERE `modelid`=15292;
UPDATE `creature_model_info` SET `bounding_radius`=2.8525 WHERE `modelid`=15334;
UPDATE `creature_model_info` SET `bounding_radius`=2.832 WHERE `modelid`=15335;
UPDATE `creature_model_info` SET `bounding_radius`=1.5 WHERE `modelid`=15336;
UPDATE `creature_model_info` SET `bounding_radius`=3.54 WHERE `modelid`=15338;
UPDATE `creature_model_info` SET `bounding_radius`=0.8 WHERE `modelid`=15340;
UPDATE `creature_model_info` SET `bounding_radius`=1.25 WHERE `modelid`=15343;
UPDATE `creature_model_info` SET `bounding_radius`=2 WHERE `modelid`=15345;
UPDATE `creature_model_info` SET `bounding_radius`=1.5 WHERE `modelid`=15346;
UPDATE `creature_model_info` SET `bounding_radius`=2.5 WHERE `modelid`=15347;
UPDATE `creature_model_info` SET `bounding_radius`=2.25 WHERE `modelid`=15351;
UPDATE `creature_model_info` SET `bounding_radius`=2 WHERE `modelid`=15354;
UPDATE `creature_model_info` SET `bounding_radius`=4.4825 WHERE `modelid`=15355;
UPDATE `creature_model_info` SET `bounding_radius`=4.425 WHERE `modelid`=15356;
UPDATE `creature_model_info` SET `bounding_radius`=1.5 WHERE `modelid`=15357;
UPDATE `creature_model_info` SET `bounding_radius`=2.5 WHERE `modelid`=15359;
UPDATE `creature_model_info` SET `bounding_radius`=1 WHERE `modelid`=15360;
UPDATE `creature_model_info` SET `bounding_radius`=0.575 WHERE `modelid`=15362;
UPDATE `creature_model_info` SET `bounding_radius`=1.6 WHERE `modelid`=15376;
UPDATE `creature_model_info` SET `bounding_radius`=2.5 WHERE `modelid`=15392;
UPDATE `creature_model_info` SET `bounding_radius`=0.778 WHERE `modelid`=15399;
UPDATE `creature_model_info` SET `bounding_radius`=1 WHERE `modelid`=15412;
UPDATE `creature_model_info` SET `bounding_radius`=1 WHERE `modelid`=15413;
UPDATE `creature_model_info` SET `bounding_radius`=1 WHERE `modelid`=15414;
UPDATE `creature_model_info` SET `bounding_radius`=0.3519 WHERE `modelid`=15418;
UPDATE `creature_model_info` SET `bounding_radius`=0.389 WHERE `modelid`=15419;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=15420;
UPDATE `creature_model_info` SET `bounding_radius`=0.4668 WHERE `modelid`=15421;
UPDATE `creature_model_info` SET `bounding_radius`=0.389 WHERE `modelid`=15427;
UPDATE `creature_model_info` SET `bounding_radius`=0.389 WHERE `modelid`=15428;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=15429;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=15430;
UPDATE `creature_model_info` SET `bounding_radius`=1 WHERE `modelid`=15431;
UPDATE `creature_model_info` SET `bounding_radius`=1.25 WHERE `modelid`=15432;
UPDATE `creature_model_info` SET `bounding_radius`=1 WHERE `modelid`=15434;
UPDATE `creature_model_info` SET `bounding_radius`=0.6 WHERE `modelid`=15437;
UPDATE `creature_model_info` SET `bounding_radius`=3.26 WHERE `modelid`=15439;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=15460;
UPDATE `creature_model_info` SET `bounding_radius`=0.383 WHERE `modelid`=15461;
UPDATE `creature_model_info` SET `bounding_radius`=0.372 WHERE `modelid`=15462;
UPDATE `creature_model_info` SET `bounding_radius`=0.5 WHERE `modelid`=15464;
UPDATE `creature_model_info` SET `bounding_radius`=1.75 WHERE `modelid`=15465;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=15466;
UPDATE `creature_model_info` SET `bounding_radius`=0.05 WHERE `modelid`=15467;
UPDATE `creature_model_info` SET `bounding_radius`=0.05 WHERE `modelid`=15468;
UPDATE `creature_model_info` SET `bounding_radius`=0.8725 WHERE `modelid`=15472;
UPDATE `creature_model_info` SET `bounding_radius`=0.3519 WHERE `modelid`=15480;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=15481;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=15482;
UPDATE `creature_model_info` SET `bounding_radius`=0.875 WHERE `modelid`=15483;
UPDATE `creature_model_info` SET `bounding_radius`=0.575 WHERE `modelid`=15487;
UPDATE `creature_model_info` SET `bounding_radius`=0.5 WHERE `modelid`=15488;
UPDATE `creature_model_info` SET `bounding_radius`=0.35 WHERE `modelid`=15489;
UPDATE `creature_model_info` SET `bounding_radius`=0.575 WHERE `modelid`=15490;
UPDATE `creature_model_info` SET `bounding_radius`=1.63 WHERE `modelid`=15491;
UPDATE `creature_model_info` SET `bounding_radius`=2.445 WHERE `modelid`=15492;
UPDATE `creature_model_info` SET `bounding_radius`=1.8745 WHERE `modelid`=15493;
UPDATE `creature_model_info` SET `bounding_radius`=0.5 WHERE `modelid`=15494;
UPDATE `creature_model_info` SET `bounding_radius`=1.593 WHERE `modelid`=15495;
UPDATE `creature_model_info` SET `bounding_radius`=1.3275 WHERE `modelid`=15496;
UPDATE `creature_model_info` SET `bounding_radius`=2.0355 WHERE `modelid`=15497;
UPDATE `creature_model_info` SET `bounding_radius`=0.885 WHERE `modelid`=15498;
UPDATE `creature_model_info` SET `bounding_radius`=1.5 WHERE `modelid`=15499;
UPDATE `creature_model_info` SET `bounding_radius`=1 WHERE `modelid`=15500;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=15502;
UPDATE `creature_model_info` SET `bounding_radius`=0.383 WHERE `modelid`=15503;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=15508;
UPDATE `creature_model_info` SET `bounding_radius`=1.5 WHERE `modelid`=15512;
UPDATE `creature_model_info` SET `bounding_radius`=2 WHERE `modelid`=15533;
UPDATE `creature_model_info` SET `bounding_radius`=0.236 WHERE `modelid`=15535;
UPDATE `creature_model_info` SET `bounding_radius`=0.383 WHERE `modelid`=15536;
UPDATE `creature_model_info` SET `bounding_radius`=0.9747 WHERE `modelid`=15537;
UPDATE `creature_model_info` SET `bounding_radius`=0.383 WHERE `modelid`=15539;
UPDATE `creature_model_info` SET `bounding_radius`=0.8725 WHERE `modelid`=15541;
UPDATE `creature_model_info` SET `bounding_radius`=0.236 WHERE `modelid`=15542;
UPDATE `creature_model_info` SET `bounding_radius`=0.9747 WHERE `modelid`=15544;
UPDATE `creature_model_info` SET `bounding_radius`=0.4 WHERE `modelid`=15545;
UPDATE `creature_model_info` SET `bounding_radius`=1 WHERE `modelid`=15546;
UPDATE `creature_model_info` SET `bounding_radius`=1.05 WHERE `modelid`=15547;
UPDATE `creature_model_info` SET `bounding_radius`=0.6 WHERE `modelid`=15554;
UPDATE `creature_model_info` SET `bounding_radius`=1 WHERE `modelid`=15556;
UPDATE `creature_model_info` SET `bounding_radius`=3 WHERE `modelid`=15582;
UPDATE `creature_model_info` SET `bounding_radius`=2.75 WHERE `modelid`=15583;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=15585;
UPDATE `creature_model_info` SET `bounding_radius`=0.372 WHERE `modelid`=15650;
UPDATE `creature_model_info` SET `bounding_radius`=0.372 WHERE `modelid`=15651;
UPDATE `creature_model_info` SET `bounding_radius`=0.236 WHERE `modelid`=15653;
UPDATE `creature_model_info` SET `bounding_radius`=3 WHERE `modelid`=15655;
UPDATE `creature_model_info` SET `bounding_radius`=2.5 WHERE `modelid`=15656;
UPDATE `creature_model_info` SET `bounding_radius`=2 WHERE `modelid`=15657;
UPDATE `creature_model_info` SET `bounding_radius`=1.5 WHERE `modelid`=15658;
UPDATE `creature_model_info` SET `bounding_radius`=0.4092 WHERE `modelid`=15661;
UPDATE `creature_model_info` SET `bounding_radius`=0.8725 WHERE `modelid`=15664;
UPDATE `creature_model_info` SET `bounding_radius`=0.383 WHERE `modelid`=15665;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=15666;
UPDATE `creature_model_info` SET `bounding_radius`=1.5 WHERE `modelid`=15686;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=15688;
UPDATE `creature_model_info` SET `bounding_radius`=0.389 WHERE `modelid`=15689;
UPDATE `creature_model_info` SET `bounding_radius`=0.389 WHERE `modelid`=15690;
UPDATE `creature_model_info` SET `bounding_radius`=0.389 WHERE `modelid`=15691;
UPDATE `creature_model_info` SET `bounding_radius`=0.389 WHERE `modelid`=15692;
UPDATE `creature_model_info` SET `bounding_radius`=12 WHERE `modelid`=15693;
UPDATE `creature_model_info` SET `bounding_radius`=10 WHERE `modelid`=15695;
UPDATE `creature_model_info` SET `bounding_radius`=4 WHERE `modelid`=15696;
UPDATE `creature_model_info` SET `bounding_radius`=0.8 WHERE `modelid`=15697;
UPDATE `creature_model_info` SET `bounding_radius`=0.3 WHERE `modelid`=15699;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=15702;
UPDATE `creature_model_info` SET `bounding_radius`=0.4 WHERE `modelid`=15703;
UPDATE `creature_model_info` SET `bounding_radius`=1 WHERE `modelid`=15704;
UPDATE `creature_model_info` SET `bounding_radius`=0.5 WHERE `modelid`=15705;
UPDATE `creature_model_info` SET `bounding_radius`=1.25 WHERE `modelid`=15706;
UPDATE `creature_model_info` SET `bounding_radius`=0.6 WHERE `modelid`=15709;
UPDATE `creature_model_info` SET `bounding_radius`=1.75 WHERE `modelid`=15710;
UPDATE `creature_model_info` SET `bounding_radius`=0.236 WHERE `modelid`=15717;
UPDATE `creature_model_info` SET `bounding_radius`=0.9747 WHERE `modelid`=15720;
UPDATE `creature_model_info` SET `bounding_radius`=0.8725 WHERE `modelid`=15721;
UPDATE `creature_model_info` SET `bounding_radius`=0.383 WHERE `modelid`=15722;
UPDATE `creature_model_info` SET `bounding_radius`=0.8 WHERE `modelid`=15738;
UPDATE `creature_model_info` SET `bounding_radius`=1 WHERE `modelid`=15739;
UPDATE `creature_model_info` SET `bounding_radius`=0.6 WHERE `modelid`=15741;
UPDATE `creature_model_info` SET `bounding_radius`=1.5 WHERE `modelid`=15742;
UPDATE `creature_model_info` SET `bounding_radius`=2 WHERE `modelid`=15743;
UPDATE `creature_model_info` SET `bounding_radius`=0.3519 WHERE `modelid`=15775;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=15776;
UPDATE `creature_model_info` SET `bounding_radius`=0.208 WHERE `modelid`=15777;
UPDATE `creature_model_info` SET `bounding_radius`=1.5 WHERE `modelid`=15778;
UPDATE `creature_model_info` SET `bounding_radius`=1 WHERE `modelid`=15787;
UPDATE `creature_model_info` SET `bounding_radius`=1.6 WHERE `modelid`=15794;
UPDATE `creature_model_info` SET `bounding_radius`=0.372 WHERE `modelid`=15811;
UPDATE `creature_model_info` SET `bounding_radius`=0.208 WHERE `modelid`=15812;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=15813;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=15814;
UPDATE `creature_model_info` SET `bounding_radius`=0.8725 WHERE `modelid`=15815;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=15818;
UPDATE `creature_model_info` SET `bounding_radius`=0.389 WHERE `modelid`=15819;
UPDATE `creature_model_info` SET `bounding_radius`=0.372 WHERE `modelid`=15821;
UPDATE `creature_model_info` SET `bounding_radius`=0.372 WHERE `modelid`=15823;
UPDATE `creature_model_info` SET `bounding_radius`=0.236 WHERE `modelid`=15824;
UPDATE `creature_model_info` SET `bounding_radius`=0.372 WHERE `modelid`=15825;
UPDATE `creature_model_info` SET `bounding_radius`=0.236 WHERE `modelid`=15826;
UPDATE `creature_model_info` SET `bounding_radius`=0.9747 WHERE `modelid`=15827;
UPDATE `creature_model_info` SET `bounding_radius`=0.8725 WHERE `modelid`=15828;
UPDATE `creature_model_info` SET `bounding_radius`=0.9747 WHERE `modelid`=15829;
UPDATE `creature_model_info` SET `bounding_radius`=0.8725 WHERE `modelid`=15830;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=15831;
UPDATE `creature_model_info` SET `bounding_radius`=0.208 WHERE `modelid`=15832;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=15833;
UPDATE `creature_model_info` SET `bounding_radius`=0.208 WHERE `modelid`=15834;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=15835;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=15836;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=15837;
UPDATE `creature_model_info` SET `bounding_radius`=0.372 WHERE `modelid`=15838;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=15839;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=15840;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=15841;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=15842;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=15843;
UPDATE `creature_model_info` SET `bounding_radius`=0.9747 WHERE `modelid`=15844;
UPDATE `creature_model_info` SET `bounding_radius`=0.4164 WHERE `modelid`=15845;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=15847;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=15848;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=15849;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=15850;
UPDATE `creature_model_info` SET `bounding_radius`=0.372 WHERE `modelid`=15851;
UPDATE `creature_model_info` SET `bounding_radius`=0.236 WHERE `modelid`=15852;
UPDATE `creature_model_info` SET `bounding_radius`=0.372 WHERE `modelid`=15853;
UPDATE `creature_model_info` SET `bounding_radius`=0.236 WHERE `modelid`=15854;
UPDATE `creature_model_info` SET `bounding_radius`=0.372 WHERE `modelid`=15855;
UPDATE `creature_model_info` SET `bounding_radius`=0.9747 WHERE `modelid`=15856;
UPDATE `creature_model_info` SET `bounding_radius`=0.8725 WHERE `modelid`=15857;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=15858;
UPDATE `creature_model_info` SET `bounding_radius`=0.208 WHERE `modelid`=15859;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=15860;
UPDATE `creature_model_info` SET `bounding_radius`=0.208 WHERE `modelid`=15861;
UPDATE `creature_model_info` SET `bounding_radius`=1 WHERE `modelid`=15866;
UPDATE `creature_model_info` SET `bounding_radius`=0.208 WHERE `modelid`=15967;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=15982;
UPDATE `creature_model_info` SET `bounding_radius`=0.208 WHERE `modelid`=15999;
UPDATE `creature_model_info` SET `bounding_radius`=0.75 WHERE `modelid`=17251;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=2388;
UPDATE `creature_model_info` SET `bounding_radius`=2.5 WHERE `modelid`=7691;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=8591;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=8597;
UPDATE `creature_model_info` SET `bounding_radius`=0.225 WHERE `modelid`=8909;
UPDATE `creature_model_info` SET `bounding_radius`=0.3475 WHERE `modelid`=12489;
UPDATE `creature_model_info` SET `bounding_radius`=1.2 WHERE `modelid`=14428;
UPDATE `creature_model_info` SET `bounding_radius`=4 WHERE `modelid`=15296;
UPDATE `creature_model_info` SET `bounding_radius`=1.5 WHERE `modelid`=15297;
UPDATE `creature_model_info` SET `bounding_radius`=1.5 WHERE `modelid`=15761;
UPDATE `creature_model_info` SET `bounding_radius`=1.75 WHERE `modelid`=15932;
UPDATE `creature_model_info` SET `bounding_radius`=0.383 WHERE `modelid`=6878;
UPDATE `creature_model_info` SET `bounding_radius`=0.75 WHERE `modelid`=7906;
UPDATE `creature_model_info` SET `bounding_radius`=0.75 WHERE `modelid`=10812;
UPDATE `creature_model_info` SET `bounding_radius`=0.383 WHERE `modelid`=14913;
UPDATE `creature_model_info` SET `bounding_radius`=0.2 WHERE `modelid`=14392;
UPDATE `creature_model_info` SET `bounding_radius`=0.236 WHERE `modelid`=15652;
UPDATE `creature_model_info` SET `bounding_radius`=10 WHERE `modelid`=15694;
UPDATE `creature_model_info` SET `bounding_radius`=0.372 WHERE `modelid`=15716;
UPDATE `creature_model_info` SET `bounding_radius`=0.383 WHERE `modelid`=15723;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=15816;
UPDATE `creature_model_info` SET `bounding_radius`=0.389 WHERE `modelid`=15820;

-- Correct combat reach.
UPDATE `creature_model_info` SET `combat_reach`=2.25 WHERE `modelid`=110;
UPDATE `creature_model_info` SET `combat_reach`=10 WHERE `modelid`=800;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=1569;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=1570;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=1891;
UPDATE `creature_model_info` SET `combat_reach`=2.3 WHERE `modelid`=3216;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=3424;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=3426;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=4470;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=4592;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=4890;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=4956;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=4957;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=5550;
UPDATE `creature_model_info` SET `combat_reach`=2.275 WHERE `modelid`=6085;
UPDATE `creature_model_info` SET `combat_reach`=1.725 WHERE `modelid`=7853;
UPDATE `creature_model_info` SET `combat_reach`=1.8 WHERE `modelid`=11081;
UPDATE `creature_model_info` SET `combat_reach`=20 WHERE `modelid`=11380;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=11894;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=13278;
UPDATE `creature_model_info` SET `combat_reach`=4.05 WHERE `modelid`=13281;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=13322;
UPDATE `creature_model_info` SET `combat_reach`=4.05 WHERE `modelid`=13325;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=13330;
UPDATE `creature_model_info` SET `combat_reach`=1.65 WHERE `modelid`=13415;
UPDATE `creature_model_info` SET `combat_reach`=3.75 WHERE `modelid`=13562;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=13670;
UPDATE `creature_model_info` SET `combat_reach`=3.9 WHERE `modelid`=14012;
UPDATE `creature_model_info` SET `combat_reach`=2.625 WHERE `modelid`=14497;
UPDATE `creature_model_info` SET `combat_reach`=2.25 WHERE `modelid`=14511;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=14530;
UPDATE `creature_model_info` SET `combat_reach`=2.1 WHERE `modelid`=15218;
UPDATE `creature_model_info` SET `combat_reach`=3 WHERE `modelid`=15267;
UPDATE `creature_model_info` SET `combat_reach`=3 WHERE `modelid`=15268;
UPDATE `creature_model_info` SET `combat_reach`=15 WHERE `modelid`=15288;
UPDATE `creature_model_info` SET `combat_reach`=0.666102 WHERE `modelid`=957;
UPDATE `creature_model_info` SET `combat_reach`=0.8 WHERE `modelid`=1236;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=1864;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=2595;
UPDATE `creature_model_info` SET `combat_reach`=1 WHERE `modelid`=2702;
UPDATE `creature_model_info` SET `combat_reach`=1.0625 WHERE `modelid`=4535;
UPDATE `creature_model_info` SET `combat_reach`=0.25 WHERE `modelid`=6192;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=7050;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=10858;
UPDATE `creature_model_info` SET `combat_reach`=0.25 WHERE `modelid`=10992;
UPDATE `creature_model_info` SET `combat_reach`=1.275 WHERE `modelid`=12194;
UPDATE `creature_model_info` SET `combat_reach`=1.25 WHERE `modelid`=15992;
UPDATE `creature_model_info` SET `combat_reach`=0 WHERE `modelid`=16257;
UPDATE `creature_model_info` SET `combat_reach`=0 WHERE `modelid`=16259;
UPDATE `creature_model_info` SET `combat_reach`=0 WHERE `modelid`=16587;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=314;
UPDATE `creature_model_info` SET `combat_reach`=0.7 WHERE `modelid`=2420;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=4451;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=4460;
UPDATE `creature_model_info` SET `combat_reach`=1.725 WHERE `modelid`=4493;
UPDATE `creature_model_info` SET `combat_reach`=2.25 WHERE `modelid`=4910;
UPDATE `creature_model_info` SET `combat_reach`=0.6 WHERE `modelid`=6633;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=6991;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=7210;
UPDATE `creature_model_info` SET `combat_reach`=1.125 WHERE `modelid`=7350;
UPDATE `creature_model_info` SET `combat_reach`=1.725 WHERE `modelid`=7952;
UPDATE `creature_model_info` SET `combat_reach`=18 WHERE `modelid`=15363;
UPDATE `creature_model_info` SET `combat_reach`=1.125 WHERE `modelid`=15700;
UPDATE `creature_model_info` SET `combat_reach`=0.75 WHERE `modelid`=15785;
UPDATE `creature_model_info` SET `combat_reach`=0.7 WHERE `modelid`=1421;
UPDATE `creature_model_info` SET `combat_reach`=0 WHERE `modelid`=1555;
UPDATE `creature_model_info` SET `combat_reach`=10 WHERE `modelid`=1772;
UPDATE `creature_model_info` SET `combat_reach`=2 WHERE `modelid`=1923;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=2045;
UPDATE `creature_model_info` SET `combat_reach`=1.35 WHERE `modelid`=2303;
UPDATE `creature_model_info` SET `combat_reach`=0.7 WHERE `modelid`=2419;
UPDATE `creature_model_info` SET `combat_reach`=0.7 WHERE `modelid`=2420;
UPDATE `creature_model_info` SET `combat_reach`=1.05 WHERE `modelid`=3956;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=4161;
UPDATE `creature_model_info` SET `combat_reach`=1.95 WHERE `modelid`=4427;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=4460;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=4597;
UPDATE `creature_model_info` SET `combat_reach`=1 WHERE `modelid`=4716;
UPDATE `creature_model_info` SET `combat_reach`=1.875 WHERE `modelid`=4961;
UPDATE `creature_model_info` SET `combat_reach`=2 WHERE `modelid`=5047;
UPDATE `creature_model_info` SET `combat_reach`=1.8 WHERE `modelid`=5534;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=6127;
UPDATE `creature_model_info` SET `combat_reach`=0.625 WHERE `modelid`=6288;
UPDATE `creature_model_info` SET `combat_reach`=0.625 WHERE `modelid`=6290;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=6589;
UPDATE `creature_model_info` SET `combat_reach`=0.6 WHERE `modelid`=6633;
UPDATE `creature_model_info` SET `combat_reach`=2.25 WHERE `modelid`=6763;
UPDATE `creature_model_info` SET `combat_reach`=1.725 WHERE `modelid`=6926;
UPDATE `creature_model_info` SET `combat_reach`=1.125 WHERE `modelid`=7350;
UPDATE `creature_model_info` SET `combat_reach`=1 WHERE `modelid`=7920;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=8706;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=9230;
UPDATE `creature_model_info` SET `combat_reach`=0.5 WHERE `modelid`=9903;
UPDATE `creature_model_info` SET `combat_reach`=0.564407 WHERE `modelid`=9913;
UPDATE `creature_model_info` SET `combat_reach`=1.25 WHERE `modelid`=10046;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=10071;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=10249;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=10252;
UPDATE `creature_model_info` SET `combat_reach`=0.375 WHERE `modelid`=10269;
UPDATE `creature_model_info` SET `combat_reach`=3.75 WHERE `modelid`=10283;
UPDATE `creature_model_info` SET `combat_reach`=3.75 WHERE `modelid`=10284;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=10340;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=10402;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=10641;
UPDATE `creature_model_info` SET `combat_reach`=0.625 WHERE `modelid`=10753;
UPDATE `creature_model_info` SET `combat_reach`=1.3 WHERE `modelid`=10819;
UPDATE `creature_model_info` SET `combat_reach`=1.45 WHERE `modelid`=10983;
UPDATE `creature_model_info` SET `combat_reach`=0.25 WHERE `modelid`=10990;
UPDATE `creature_model_info` SET `combat_reach`=0.25 WHERE `modelid`=10993;
UPDATE `creature_model_info` SET `combat_reach`=0.45 WHERE `modelid`=11009;
UPDATE `creature_model_info` SET `combat_reach`=3 WHERE `modelid`=11011;
UPDATE `creature_model_info` SET `combat_reach`=3 WHERE `modelid`=11029;
UPDATE `creature_model_info` SET `combat_reach`=1.02119 WHERE `modelid`=11411;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=11442;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=11443;
UPDATE `creature_model_info` SET `combat_reach`=2.625 WHERE `modelid`=11572;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=11589;
UPDATE `creature_model_info` SET `combat_reach`=4.05 WHERE `modelid`=11590;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=11592;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=11731;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=11749;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=11750;
UPDATE `creature_model_info` SET `combat_reach`=1.875 WHERE `modelid`=11830;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=11831;
UPDATE `creature_model_info` SET `combat_reach`=1.8 WHERE `modelid`=11978;
UPDATE `creature_model_info` SET `combat_reach`=1.8 WHERE `modelid`=11979;
UPDATE `creature_model_info` SET `combat_reach`=1.8 WHERE `modelid`=11980;
UPDATE `creature_model_info` SET `combat_reach`=1.8 WHERE `modelid`=11981;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=12169;
UPDATE `creature_model_info` SET `combat_reach`=0.5 WHERE `modelid`=12191;
UPDATE `creature_model_info` SET `combat_reach`=0.85 WHERE `modelid`=12196;
UPDATE `creature_model_info` SET `combat_reach`=1.725 WHERE `modelid`=12234;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=12329;
UPDATE `creature_model_info` SET `combat_reach`=4.05 WHERE `modelid`=12969;
UPDATE `creature_model_info` SET `combat_reach`=1.725 WHERE `modelid`=13260;
UPDATE `creature_model_info` SET `combat_reach`=1.725 WHERE `modelid`=13261;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=13361;
UPDATE `creature_model_info` SET `combat_reach`=4.05 WHERE `modelid`=13364;
UPDATE `creature_model_info` SET `combat_reach`=1.25 WHERE `modelid`=13509;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=13590;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=13598;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=13769;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=13777;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=13785;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=13799;
UPDATE `creature_model_info` SET `combat_reach`=3.5 WHERE `modelid`=14152;
UPDATE `creature_model_info` SET `combat_reach`=3.75 WHERE `modelid`=14352;
UPDATE `creature_model_info` SET `combat_reach`=0.75 WHERE `modelid`=14379;
UPDATE `creature_model_info` SET `combat_reach`=2.4 WHERE `modelid`=14522;
UPDATE `creature_model_info` SET `combat_reach`=2 WHERE `modelid`=14528;
UPDATE `creature_model_info` SET `combat_reach`=0 WHERE `modelid`=14541;
UPDATE `creature_model_info` SET `combat_reach`=2.5 WHERE `modelid`=14888;
UPDATE `creature_model_info` SET `combat_reach`=2.5 WHERE `modelid`=14889;
UPDATE `creature_model_info` SET `combat_reach`=0 WHERE `modelid`=14932;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=15172;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=15176;
UPDATE `creature_model_info` SET `combat_reach`=1 WHERE `modelid`=15181;
UPDATE `creature_model_info` SET `combat_reach`=1.575 WHERE `modelid`=15201;
UPDATE `creature_model_info` SET `combat_reach`=0.5 WHERE `modelid`=15204;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=15206;
UPDATE `creature_model_info` SET `combat_reach`=2.1 WHERE `modelid`=15233;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=15291;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=15292;
UPDATE `creature_model_info` SET `combat_reach`=2.625 WHERE `modelid`=15334;
UPDATE `creature_model_info` SET `combat_reach`=2.4 WHERE `modelid`=15335;
UPDATE `creature_model_info` SET `combat_reach`=3 WHERE `modelid`=15336;
UPDATE `creature_model_info` SET `combat_reach`=3 WHERE `modelid`=15338;
UPDATE `creature_model_info` SET `combat_reach`=3 WHERE `modelid`=15340;
UPDATE `creature_model_info` SET `combat_reach`=5 WHERE `modelid`=15343;
UPDATE `creature_model_info` SET `combat_reach`=12 WHERE `modelid`=15345;
UPDATE `creature_model_info` SET `combat_reach`=6 WHERE `modelid`=15346;
UPDATE `creature_model_info` SET `combat_reach`=3.75 WHERE `modelid`=15347;
UPDATE `creature_model_info` SET `combat_reach`=3.375 WHERE `modelid`=15351;
UPDATE `creature_model_info` SET `combat_reach`=3 WHERE `modelid`=15354;
UPDATE `creature_model_info` SET `combat_reach`=4.125 WHERE `modelid`=15355;
UPDATE `creature_model_info` SET `combat_reach`=3.75 WHERE `modelid`=15356;
UPDATE `creature_model_info` SET `combat_reach`=4.5 WHERE `modelid`=15357;
UPDATE `creature_model_info` SET `combat_reach`=3.75 WHERE `modelid`=15359;
UPDATE `creature_model_info` SET `combat_reach`=6 WHERE `modelid`=15360;
UPDATE `creature_model_info` SET `combat_reach`=1.725 WHERE `modelid`=15362;
UPDATE `creature_model_info` SET `combat_reach`=6 WHERE `modelid`=15376;
UPDATE `creature_model_info` SET `combat_reach`=10 WHERE `modelid`=15392;
UPDATE `creature_model_info` SET `combat_reach`=3 WHERE `modelid`=15399;
UPDATE `creature_model_info` SET `combat_reach`=10 WHERE `modelid`=15412;
UPDATE `creature_model_info` SET `combat_reach`=10 WHERE `modelid`=15413;
UPDATE `creature_model_info` SET `combat_reach`=10 WHERE `modelid`=15414;
UPDATE `creature_model_info` SET `combat_reach`=1.725 WHERE `modelid`=15418;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=15419;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=15420;
UPDATE `creature_model_info` SET `combat_reach`=1.8 WHERE `modelid`=15421;
UPDATE `creature_model_info` SET `combat_reach`=3 WHERE `modelid`=15431;
UPDATE `creature_model_info` SET `combat_reach`=12.5 WHERE `modelid`=15432;
UPDATE `creature_model_info` SET `combat_reach`=3 WHERE `modelid`=15434;
UPDATE `creature_model_info` SET `combat_reach`=0 WHERE `modelid`=15435;
UPDATE `creature_model_info` SET `combat_reach`=2.25 WHERE `modelid`=15437;
UPDATE `creature_model_info` SET `combat_reach`=3 WHERE `modelid`=15439;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=15464;
UPDATE `creature_model_info` SET `combat_reach`=2.625 WHERE `modelid`=15465;
UPDATE `creature_model_info` SET `combat_reach`=3.75 WHERE `modelid`=15472;
UPDATE `creature_model_info` SET `combat_reach`=1.725 WHERE `modelid`=15480;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=15481;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=15482;
UPDATE `creature_model_info` SET `combat_reach`=2.625 WHERE `modelid`=15483;
UPDATE `creature_model_info` SET `combat_reach`=1.725 WHERE `modelid`=15487;
UPDATE `creature_model_info` SET `combat_reach`=1.05 WHERE `modelid`=15489;
UPDATE `creature_model_info` SET `combat_reach`=1.725 WHERE `modelid`=15490;
UPDATE `creature_model_info` SET `combat_reach`=2.25 WHERE `modelid`=15492;
UPDATE `creature_model_info` SET `combat_reach`=1.725 WHERE `modelid`=15493;
UPDATE `creature_model_info` SET `combat_reach`=1.35 WHERE `modelid`=15495;
UPDATE `creature_model_info` SET `combat_reach`=1.125 WHERE `modelid`=15496;
UPDATE `creature_model_info` SET `combat_reach`=1.725 WHERE `modelid`=15497;
UPDATE `creature_model_info` SET `combat_reach`=0.75 WHERE `modelid`=15498;
UPDATE `creature_model_info` SET `combat_reach`=2.25 WHERE `modelid`=15499;
UPDATE `creature_model_info` SET `combat_reach`=10 WHERE `modelid`=15500;
UPDATE `creature_model_info` SET `combat_reach`=5 WHERE `modelid`=15512;
UPDATE `creature_model_info` SET `combat_reach`=4 WHERE `modelid`=15533;
UPDATE `creature_model_info` SET `combat_reach`=4.05 WHERE `modelid`=15537;
UPDATE `creature_model_info` SET `combat_reach`=3.75 WHERE `modelid`=15541;
UPDATE `creature_model_info` SET `combat_reach`=4.05 WHERE `modelid`=15544;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=15545;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=15546;
UPDATE `creature_model_info` SET `combat_reach`=7.5 WHERE `modelid`=15547;
UPDATE `creature_model_info` SET `combat_reach`=1 WHERE `modelid`=15554;
UPDATE `creature_model_info` SET `combat_reach`=3 WHERE `modelid`=15582;
UPDATE `creature_model_info` SET `combat_reach`=4.125 WHERE `modelid`=15583;
UPDATE `creature_model_info` SET `combat_reach`=2.25 WHERE `modelid`=15655;
UPDATE `creature_model_info` SET `combat_reach`=3.75 WHERE `modelid`=15656;
UPDATE `creature_model_info` SET `combat_reach`=2.25 WHERE `modelid`=15658;
UPDATE `creature_model_info` SET `combat_reach`=1.65 WHERE `modelid`=15661;
UPDATE `creature_model_info` SET `combat_reach`=3.75 WHERE `modelid`=15664;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=15666;
UPDATE `creature_model_info` SET `combat_reach`=12 WHERE `modelid`=15686;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=15688;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=15689;
UPDATE `creature_model_info` SET `combat_reach`=18 WHERE `modelid`=15693;
UPDATE `creature_model_info` SET `combat_reach`=15 WHERE `modelid`=15695;
UPDATE `creature_model_info` SET `combat_reach`=6 WHERE `modelid`=15696;
UPDATE `creature_model_info` SET `combat_reach`=3 WHERE `modelid`=15697;
UPDATE `creature_model_info` SET `combat_reach`=1.125 WHERE `modelid`=15699;
UPDATE `creature_model_info` SET `combat_reach`=1.125 WHERE `modelid`=15700;
UPDATE `creature_model_info` SET `combat_reach`=1.875 WHERE `modelid`=15705;
UPDATE `creature_model_info` SET `combat_reach`=1.875 WHERE `modelid`=15706;
UPDATE `creature_model_info` SET `combat_reach`=2.25 WHERE `modelid`=15709;
UPDATE `creature_model_info` SET `combat_reach`=2.625 WHERE `modelid`=15710;
UPDATE `creature_model_info` SET `combat_reach`=4.05 WHERE `modelid`=15720;
UPDATE `creature_model_info` SET `combat_reach`=3.75 WHERE `modelid`=15721;
UPDATE `creature_model_info` SET `combat_reach`=3 WHERE `modelid`=15738;
UPDATE `creature_model_info` SET `combat_reach`=3 WHERE `modelid`=15739;
UPDATE `creature_model_info` SET `combat_reach`=3 WHERE `modelid`=15740;
UPDATE `creature_model_info` SET `combat_reach`=2.25 WHERE `modelid`=15741;
UPDATE `creature_model_info` SET `combat_reach`=6 WHERE `modelid`=15742;
UPDATE `creature_model_info` SET `combat_reach`=8 WHERE `modelid`=15743;
UPDATE `creature_model_info` SET `combat_reach`=1.725 WHERE `modelid`=15775;
UPDATE `creature_model_info` SET `combat_reach`=4.5 WHERE `modelid`=15778;
UPDATE `creature_model_info` SET `combat_reach`=0.75 WHERE `modelid`=15785;
UPDATE `creature_model_info` SET `combat_reach`=0 WHERE `modelid`=15787;
UPDATE `creature_model_info` SET `combat_reach`=6 WHERE `modelid`=15794;
UPDATE `creature_model_info` SET `combat_reach`=3.75 WHERE `modelid`=15815;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=15821;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=15823;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=15825;
UPDATE `creature_model_info` SET `combat_reach`=4.05 WHERE `modelid`=15827;
UPDATE `creature_model_info` SET `combat_reach`=3.75 WHERE `modelid`=15828;
UPDATE `creature_model_info` SET `combat_reach`=4.05 WHERE `modelid`=15829;
UPDATE `creature_model_info` SET `combat_reach`=3.75 WHERE `modelid`=15830;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=15831;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=15833;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=15837;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=15842;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=15843;
UPDATE `creature_model_info` SET `combat_reach`=4.05 WHERE `modelid`=15844;
UPDATE `creature_model_info` SET `combat_reach`=1.8 WHERE `modelid`=15845;
UPDATE `creature_model_info` SET `combat_reach`=4.05 WHERE `modelid`=15856;
UPDATE `creature_model_info` SET `combat_reach`=3.75 WHERE `modelid`=15857;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=15860;
UPDATE `creature_model_info` SET `combat_reach`=0 WHERE `modelid`=15866;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=15967;
UPDATE `creature_model_info` SET `combat_reach`=9.75 WHERE `modelid`=17251;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=2388;
UPDATE `creature_model_info` SET `combat_reach`=2.5 WHERE `modelid`=7691;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=8591;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=8597;
UPDATE `creature_model_info` SET `combat_reach`=0.3 WHERE `modelid`=8909;
UPDATE `creature_model_info` SET `combat_reach`=1.5625 WHERE `modelid`=12489;
UPDATE `creature_model_info` SET `combat_reach`=3 WHERE `modelid`=14428;
UPDATE `creature_model_info` SET `combat_reach`=6 WHERE `modelid`=15296;
UPDATE `creature_model_info` SET `combat_reach`=3.75 WHERE `modelid`=15297;
UPDATE `creature_model_info` SET `combat_reach`=4.5 WHERE `modelid`=15761;
UPDATE `creature_model_info` SET `combat_reach`=26.25 WHERE `modelid`=15932;
UPDATE `creature_model_info` SET `combat_reach`=4.86 WHERE `modelid`=2026;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=6878;
UPDATE `creature_model_info` SET `combat_reach`=0.75 WHERE `modelid`=7906;
UPDATE `creature_model_info` SET `combat_reach`=1.125 WHERE `modelid`=10812;
UPDATE `creature_model_info` SET `combat_reach`=0.3 WHERE `modelid`=14392;
UPDATE `creature_model_info` SET `combat_reach`=15 WHERE `modelid`=15694;