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