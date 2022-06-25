delete from creature where id in (50530, 50760);

INSERT INTO `creature` (`id`, `id2`, `id3`, `id4`, `map`, `display_id`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`) VALUES (50530, 0, 0, 0, 1, 0, 0, 1660.54, -4432.37, 19.0627, 2.0997, 25, 25, 0, 100, 100, 0, 0, 0);
INSERT INTO `creature` (`id`, `id2`, `id3`, `id4`, `map`, `display_id`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`) VALUES (50760, 0, 0, 0, 0, 0, 0, -8842.73, 595.744, 94.1785, 2.40052, 25, 25, 0, 100, 100, 0, 0, 0);

update quest_template set reworreqmoney = -50, rewmoneymaxlevel = 0 where entry = 50315;

UPDATE `broadcast_text` SET `male_text` = 'The Gadgetzan Times, Volume Two, available now! Worth its weight in gold... metaphorically speaking!' WHERE `entry` = 90260