-- Fix graveyards.

UPDATE `game_graveyard_zone` SET `ghost_zone` = 5179 WHERE `id` = 936 AND `ghost_zone` = 267;
UPDATE `map_template` SET `linked_zone` = 5179 WHERE `entry` = 815;

