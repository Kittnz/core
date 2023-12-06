-- Bloody Belt Buckle fix:
UPDATE `item_template` SET `class` = 7 WHERE `entry` = 61810;

-- Transport, Alah'Thalas to Auberdine.

DELETE FROM `transports` WHERE `guid` = 13;
-- REPLACE INTO `transports` (`guid`, `entry`, `name`, `period`) VALUES (13, 176250, 'Alah\'Thalas and Auberdine', 329313);
REPLACE INTO `transports` (`guid`, `entry`, `name`, `period`) VALUES (13, 176250, 'Alah\'Thalas and Auberdine', 199313);

REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `phase_quest_id`, `script_name`) VALUES (176250, 15, 7087, 'Windrunner', 0, 40, 1, 1636, 30, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `taxi_nodes` (`id`, `map_id`, `x`, `y`, `z`, `name`, `mount_creature_id1`, `mount_creature_id2`) VALUES (301, 0, 0, 0, 0, 'Boat: Auberdine to Alahthalas', 0, 0);
REPLACE INTO `taxi_nodes` (`id`, `map_id`, `x`, `y`, `z`, `name`, `mount_creature_id1`, `mount_creature_id2`) VALUES (302, 1, 6550.405, 938.192, 100, 'Boat: Alahthalas to Auberdine', 0, 0);
