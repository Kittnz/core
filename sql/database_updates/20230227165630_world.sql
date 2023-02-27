-- Change mulgore wyvern hatchling quests (https://database.turtle-wow.org/?quest=40535) into proper quest chain
update `quest_template` set `NextQuestInChain` = 40536, `NextQuestId` = 0 where `entry` = 40535;
update `quest_template` set `NextQuestInChain` = 40537, `NextQuestId` = 0 where `entry` = 40536;

-- Change mulgore centaur quests (https://database.turtle-wow.org/?quest=40363) into proper quest chain
update `quest_template` set `NextQuestInChain` = 40364, `NextQuestId` = 0 where `entry` = 40363;
update `quest_template` set `NextQuestInChain` = 40365, `NextQuestId` = 0 where `entry` = 40364;
update `quest_template` set `NextQuestInChain` = 40366, `NextQuestId` = 0 where `entry` = 40365;

-- Change mulgore mysterious leaf quests (https://database.turtle-wow.org/?quest=40583) into proper quest chain
update `quest_template` set `NextQuestInChain` = 40584, `NextQuestId` = 0 where `entry` = 40583;
update `quest_template` set `NextQuestInChain` = 40585, `NextQuestId` = 0 where `entry` = 40584;
update `quest_template` set `NextQuestInChain` = 40586, `NextQuestId` = 0 where `entry` = 40585;
update `quest_template` set `NextQuestInChain` = 40587, `NextQuestId` = 0 where `entry` = 40586;
update `quest_template` set `NextQuestInChain` = 40588, `NextQuestId` = 0 where `entry` = 40587;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2910
UPDATE `item_template` SET `item_level` = 68 WHERE `entry` = 83461;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2906
DELETE FROM `creature` WHERE `id` = 4158;
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`) VALUES (21548, 4158, 0, 0, 0, 1, -6041.31, -4138.35, -58.625, 6.28054, 300, 300, 30, 100, 0, 1, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`) VALUES (21547, 4158, 0, 0, 0, 1, -6176.85, -3557.04, -58.625, 4.43404, 300, 300, 30, 100, 0, 1, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`) VALUES (21546, 4158, 0, 0, 0, 1, -6602.18, -3865.56, -58.7499, -2.61482, 300, 300, 0, 100, 0, 0, 0, 0);

-- INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`) VALUES (32583, 4158, 0, 0, 0, 1, -6040.3, -4084.69, -58.625, 2.36436, 300, 300, 30, 100, 0, 1, 0, 0);
-- INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`) VALUES (32584, 4158, 0, 0, 0, 1, -6290.34, -3564.31, -58.625, 0.90427, 300, 300, 30, 100, 0, 1, 0, 0);
-- INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`) VALUES (32585, 4158, 0, 0, 0, 1, -6582.02, -3923.57, -58.625, 5.82247, 300, 300, 0, 100, 0, 0, 0, 0);
