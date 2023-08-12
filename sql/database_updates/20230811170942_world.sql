UPDATE `item_template` SET `name` = 'Twilight' WHERE `entry` = 50536;
UPDATE `spell_template` SET `name` = 'Twilight' WHERE `entry` = 33396;

UPDATE `item_template` SET `allowable_race` = 1 WHERE `entry` = 61106;

UPDATE `spell_template` SET `name` = 'Blackwald\'s Boon', `description` = 'Reduces the stats of nearby enemies by $s1%.' WHERE `entry` = 57073;
UPDATE `spell_template` SET `name` = 'Blackwald\'s Blessing', `description` = 'Increases your attack and casting speed by $s1% and increases size by $s3%. Stacks $u times.' WHERE `entry` = 57074;

-- QA reported issues in Kara 10:

UPDATE `map_template` SET `reset_delay` = 5 WHERE `entry` = 532;

UPDATE `map_template` SET `linked_zone` = 3457 WHERE `entry` = 532;
REPLACE INTO `game_graveyard_zone` (`id`, `ghost_zone`, `faction`) VALUES (36, 3457, 0);
UPDATE `map_template` SET `ghost_entrance_map` = 0, `ghost_entrance_x` = -11104.3, `ghost_entrance_y` = -1999.42 WHERE `entry` = 532;

-- Link the following GUIDS together

REPLACE INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES (2574397, 2574395, 3073);
REPLACE INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES (2574396, 2574395, 3073);
REPLACE INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES (2574398, 2574395, 3073);
REPLACE INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES (2574400, 2574395, 3073);

REPLACE INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES (2574315, 2574314, 3073);
REPLACE INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES (2574300, 2574301, 3073);
REPLACE INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES (2574357, 2574364, 3073);

REPLACE INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES (2574273, 2574276, 3073);

-- Quest The Key to Karazhan I (40817) needs to be marked as RAID

UPDATE `quest_template` SET `Type` = 62, `QuestFlags` = 64 WHERE `entry` = 40817;