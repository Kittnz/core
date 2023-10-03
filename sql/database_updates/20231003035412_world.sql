-- Fix graveyards.

UPDATE `game_graveyard_zone` SET `ghost_zone` = 5179 WHERE `id` = 936 AND `ghost_zone` = 267;
UPDATE `map_template` SET `linked_zone` = 5179 WHERE `entry` = 815;

REPLACE INTO `game_graveyard_zone` (`id`, `ghost_zone`, `faction`) VALUES (936, 5180, 0);
REPLACE INTO `game_graveyard_zone` (`id`, `ghost_zone`, `faction`) VALUES (936, 5208, 0);
