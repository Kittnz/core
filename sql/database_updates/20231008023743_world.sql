-- Add areatrigger to Nordanaar Inn to enable rested xp.
INSERT INTO `areatrigger_template` (`id`, `map_id`, `x`, `y`, `z`, `radius`, `box_x`, `box_y`, `box_z`, `box_orientation`) VALUES (5020, 1, 5502.06, -3806.16, 1619.6, 18, 0, 0, 0, 0);
INSERT INTO `areatrigger_tavern` (`id`, `name`) VALUES (5020, 'Hyjal - Nordanaar Inn');

-- Mark Gnomeregan Reclamation Facility as an alliance capital city so it gives rested xp.
UPDATE `area_template` SET `zone_id`=0, `flags`=312, `area_level`=10, `team`=2 WHERE `entry`=5211;
