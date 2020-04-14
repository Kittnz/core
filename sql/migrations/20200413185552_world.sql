DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20200413185552');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20200413185552');
-- Add your query below.

REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000250, 0, 5, 13, 'Blue Farm Door', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000251, 0, 5, 95, 'House Smoke', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000252, 0, 5, 445, 'Scrying Bowl', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000253, 0, 5, 684, 'Barrens Bush', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000254, 0, 5, 685, 'Barrens Bush', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000255, 0, 5, 730, 'Orc Brazier Lamppost', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000256, 0, 5, 1027, 'Shaman Stone', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000257, 0, 5, 1108, 'Lumber Pile Small', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000258, 0, 5, 1109, 'Lumber Pile Large', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000259, 0, 5, 1110, 'Log Machine', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000260, 0, 5, 1167, 'Stormwind Mage Porta', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000261, 0, 5, 1187, 'Duskwood Mausoleum', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000262, 0, 5, 1367, 'Little Bush 2', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000263, 0, 5, 1368, 'Little Bush 4', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000264, 0, 5, 1527, 'Statue Priest', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000265, 0, 5, 1569, 'Tauren Log Bench', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000266, 0, 5, 1647, 'Mana Rift', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000267, 0, 5, 1708, 'Bramble Staff', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000268, 0, 5, 1887, 'Cave Mine Car Wrecked', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000269, 0, 14, 2170, 'Holding Pen Bamboo Small', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000270, 0, 5, 2230, 'Cave', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000271, 0, 5, 2290, 'G_VOODOOTROLLFORCEFIELD', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000272, 0, 5, 2311, 'Bush Blindweed', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000273, 0, 5, 2350, 'Karazahn Crate', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000274, 0, 5, 2354, 'Gnome Structural SpotLight', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000275, 0, 14, 2410, 'Landing Pad', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000276, 0, 5, 2474, 'Deadwind Pass Tree', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000277, 0, 5, 2616, 'Outland Monolith', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000278, 0, 5, 2652, 'Runed Tablet', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000279, 0, 5, 2730, 'River Wheel', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000280, 0, 5, 2934, 'Ruin 01', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000281, 0, 5, 2935, 'Ruin 02', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000282, 0, 5, 2936, 'Ruin 03', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000283, 0, 5, 2937, 'Night Elf Ruins 04', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000284, 0, 5, 2971, 'Blue Crystal', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000285, 0, 5, 4052, 'GM Island Bell', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000286, 0, 5, 5691, 'CORRUPTED CRYSTAL VINE', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000287, 0, 5, 5692, 'Force Field (collision problems)', 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000289, 0, 5, 5693, 'Magic Vortex', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000288, 0, 5, 6663, 'Arena Flag', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000290, 0, 5, 6664, 'Lightshaft Large', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000291, 0, 5, 6666, 'Night Elf Lantern Hanging', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000292, 0, 5, 6667, 'Hive Fireflie', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000293, 0, 5, 6668, 'Emerald Dream Catcher', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000294, 0, 5, 7359, 'Altar Of Souls', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000295, 0, 1, 330, 'Dwarven Flying Machine NX-001', 0, 0, 0.8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000296, 0, 14, 2170, 'Holding Pen Bamboo large', 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- Add missing target for Test Ribbon Pole Channel.
REPLACE INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (29705, 1, 17066);

-- Correct walk speed for some creatures.
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=122;
UPDATE `creature_template` SET `speed_walk`=1.2 WHERE `entry`=124;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=193;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=232;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=288;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=412;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=452;
UPDATE `creature_template` SET `speed_walk`=0.777776 WHERE `entry`=604;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=616;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=628;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=689;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=750;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=751;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=759;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=761;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=762;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=765;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=857;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=889;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1028;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1088;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1095;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=1106;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1203;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1204;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1258;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1327;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1356;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1380;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1436;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1439;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1466;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1471;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1703;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1747;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1749;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1751;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1752;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1754;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=1776;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1785;
UPDATE `creature_template` SET `speed_walk`=0.777776 WHERE `entry`=1793;
UPDATE `creature_template` SET `speed_walk`=0.777776 WHERE `entry`=1796;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1806;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1808;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=1812;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=1813;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1826;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1833;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1845;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1884;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1972;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1981;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2163;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2274;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2285;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2319;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2330;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2331;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2439;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2440;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2481;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2600;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2608;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2644;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2649;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2650;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2657;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2700;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2737;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=5977;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2786;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2788;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2789;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2796;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2808;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2810;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2812;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2814;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2816;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2835;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2912;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2916;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2918;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2923;
UPDATE `creature_template` SET `speed_walk`=1.38889 WHERE `entry`=2962;
UPDATE `creature_template` SET `speed_walk`=1.38889 WHERE `entry`=2963;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2991;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3106;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3111;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3140;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3147;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3155;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3156;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5756;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=3275;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3385;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3386;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3388;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=3395;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3398;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5056;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3435;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3454;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3457;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3459;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3465;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3467;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3504;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3517;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3561;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3562;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3636;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3637;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3640;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3653;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3655;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3663;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3669;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3670;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3671;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3673;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3674;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3678;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3679;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=3750;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=5977;
UPDATE `creature_template` SET `speed_walk`=0.8 WHERE `entry`=3816;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3840;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3842;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3847;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=3924;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=3925;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3979;
UPDATE `creature_template` SET `speed_walk`=1.38889 WHERE `entry`=4022;
UPDATE `creature_template` SET `speed_walk`=1.38889 WHERE `entry`=4023;
UPDATE `creature_template` SET `speed_walk`=1.38889 WHERE `entry`=4024;
UPDATE `creature_template` SET `speed_walk`=1.38889 WHERE `entry`=4025;
UPDATE `creature_template` SET `speed_walk`=1.38889 WHERE `entry`=4026;
UPDATE `creature_template` SET `speed_walk`=1.38889 WHERE `entry`=4027;
UPDATE `creature_template` SET `speed_walk`=1.55556 WHERE `entry`=4035;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=4041;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=4042;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4090;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4091;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4092;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4138;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4146;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4156;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4159;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4161;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4163;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4165;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4167;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4168;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4169;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4171;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4172;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4173;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4175;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4177;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4180;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4204;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4205;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4210;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4211;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4212;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4213;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4214;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4215;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4216;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4217;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4218;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4219;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4220;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4221;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4222;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4223;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4225;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4226;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4228;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4229;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4231;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4232;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4233;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4234;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4235;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4236;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4240;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4242;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4244;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4254;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4256;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4258;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4259;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=4409;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4423;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4484;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4521;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=4655;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=4656;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=4657;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=4658;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=4659;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4667;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4682;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4684;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4686;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=5974;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4730;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4753;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4782;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4783;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4784;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4786;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4845;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4851;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4856;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=4863;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4872;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4960;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5048;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5053;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5055;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5081;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5113;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5115;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5127;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5128;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5147;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5148;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5149;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5153;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5154;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5155;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5156;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5159;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5160;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5161;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5162;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5163;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5164;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5165;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5166;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5169;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5170;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5191;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5229;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5353;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5387;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5389;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5391;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=5421;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5424;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5427;
UPDATE `creature_template` SET `speed_walk`=1.4 WHERE `entry`=5430;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5441;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5450;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5451;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5452;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5453;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5454;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5455;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5456;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5457;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5458;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5459;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5460;
UPDATE `creature_template` SET `speed_walk`=1.55556 WHERE `entry`=5465;
UPDATE `creature_template` SET `speed_walk`=0.777776 WHERE `entry`=5469;
UPDATE `creature_template` SET `speed_walk`=0.777776 WHERE `entry`=5470;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=5471;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=5472;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=5473;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=5474;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=5475;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=5481;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5482;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5483;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=5485;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=5490;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5615;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=5622;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5623;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5635;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5637;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5643;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5644;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5755;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=5761;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5763;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5771;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=5775;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5863;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5901;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5908;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5914;
UPDATE `creature_template` SET `speed_walk`=1.38889 WHERE `entry`=5930;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5955;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=5974;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=5975;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=5976;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=5978;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=5979;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=5981;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5982;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5984;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5985;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5988;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=5990;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=5991;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5992;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5993;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5999;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6004;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6005;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6006;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6007;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6008;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6009;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6010;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6011;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6015;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6031;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6034;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6073;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6090;
UPDATE `creature_template` SET `speed_walk`=2 WHERE `entry`=6109;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6114;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6115;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=6118;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6120;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=6129;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=6130;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=6131;
UPDATE `creature_template` SET `speed_walk`=1.4 WHERE `entry`=6147;
UPDATE `creature_template` SET `speed_walk`=1.2 WHERE `entry`=6146;
UPDATE `creature_template` SET `speed_walk`=1.2 WHERE `entry`=6146;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6236;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6248;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6249;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6291;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6292;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6294;
UPDATE `creature_template` SET `speed_walk`=1.2 WHERE `entry`=6379;
UPDATE `creature_template` SET `speed_walk`=1.2 WHERE `entry`=6380;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6382;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6501;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6502;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6503;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6504;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=6505;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=6506;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=6507;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=6508;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6513;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6514;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6520;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6521;
UPDATE `creature_template` SET `speed_walk`=1.4 WHERE `entry`=6551;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6552;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6553;
UPDATE `creature_template` SET `speed_walk`=1.4 WHERE `entry`=6554;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6555;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6582;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=6584;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6735;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6912;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7029;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=7042;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=7043;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7050;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7057;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7078;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7106;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7109;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7132;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7138;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7175;
UPDATE `creature_template` SET `speed_walk`=0.8 WHERE `entry`=7269;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7296;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7313;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=7363;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=7369;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=7371;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=7372;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=7379;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=7438;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=7439;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7505;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7506;
UPDATE `creature_template` SET `speed_walk`=0.8 WHERE `entry`=7572;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=7665;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7668;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7669;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7670;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7671;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7740;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7744;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7771;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7775;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7778;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7847;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7848;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7855;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7856;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7857;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7858;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7865;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7866;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7873;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7881;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7882;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7883;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7884;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7936;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7978;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=8095;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=8120;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=8130;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8137;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=8138;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8139;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8160;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8161;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8236;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8256;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8276;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8277;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8507;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8521;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=8527;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8539;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8544;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8545;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8546;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8547;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8550;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8555;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8557;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8558;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8560;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8561;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8562;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8579;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8667;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8675;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8681;
UPDATE `creature_template` SET `speed_walk`=2 WHERE `entry`=8716;
UPDATE `creature_template` SET `speed_walk`=2 WHERE `entry`=8717;
UPDATE `creature_template` SET `speed_walk`=2 WHERE `entry`=8718;
UPDATE `creature_template` SET `speed_walk`=0.8 WHERE `entry`=8760;
UPDATE `creature_template` SET `speed_walk`=0.8 WHERE `entry`=8761;
UPDATE `creature_template` SET `speed_walk`=1.4 WHERE `entry`=8763;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8766;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=8816;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8886;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8907;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=8924;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9047;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9099;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9117;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=9176;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9299;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9376;
UPDATE `creature_template` SET `speed_walk`=1.55556 WHERE `entry`=9453;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9467;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9550;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9619;
UPDATE `creature_template` SET `speed_walk`=2 WHERE `entry`=9623;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9660;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=9684;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9698;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9706;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9999;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10056;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10061;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10089;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10276;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10277;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10302;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=10394;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10398;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10400;
UPDATE `creature_template` SET `speed_walk`=0.777776 WHERE `entry`=10406;
UPDATE `creature_template` SET `speed_walk`=0.777776 WHERE `entry`=10407;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10412;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10413;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10416;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10417;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10436;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10438;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10439;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10460;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10463;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10464;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10482;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10541;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10580;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10663;
UPDATE `creature_template` SET `speed_walk`=1.4 WHERE `entry`=10664;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10684;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=10738;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10739;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10778;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10816;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10877;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10897;
UPDATE `creature_template` SET `speed_walk`=1.38889 WHERE `entry`=10986;
UPDATE `creature_template` SET `speed_walk`=0.777776 WHERE `entry`=11030;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11041;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11042;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11050;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11070;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=11077;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=11078;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11081;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11083;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11097;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11145;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11146;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=11198;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11219;
UPDATE `creature_template` SET `speed_walk`=1.55556 WHERE `entry`=11256;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11290;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11401;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11406;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=11440;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11441;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=11442;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=11443;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11444;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11445;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11491;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11610;
UPDATE `creature_template` SET `speed_walk`=1.38889 WHERE `entry`=11675;
UPDATE `creature_template` SET `speed_walk`=1.38889 WHERE `entry`=11678;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11682;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11684;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=11685;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=11686;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=11687;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11697;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11701;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11709;
UPDATE `creature_template` SET `speed_walk`=1.55556 WHERE `entry`=11777;
UPDATE `creature_template` SET `speed_walk`=1.55556 WHERE `entry`=11778;
UPDATE `creature_template` SET `speed_walk`=1.55556 WHERE `entry`=11781;
UPDATE `creature_template` SET `speed_walk`=1.55556 WHERE `entry`=11782;
UPDATE `creature_template` SET `speed_walk`=1.55556 WHERE `entry`=11783;
UPDATE `creature_template` SET `speed_walk`=1.55556 WHERE `entry`=11784;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=11785;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=11786;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11787;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11788;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11789;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11790;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11791;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11793;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11794;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11802;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11806;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11810;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11812;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11813;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=11874;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11956;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11957;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12023;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=12046;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12051;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12201;
UPDATE `creature_template` SET `speed_walk`=0.777776 WHERE `entry`=12203;
UPDATE `creature_template` SET `speed_walk`=0.777776 WHERE `entry`=12206;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12207;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12216;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12217;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12218;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12219;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12220;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12221;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=12223;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=12224;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=12225;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=12238;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=12239;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=12240;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=12241;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=12243;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12245;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12246;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12249;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=12250;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12253;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12255;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12258;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12263;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12277;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12337;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12352;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=12377;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=12378;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1365;
UPDATE `creature_template` SET `speed_walk`=1.2 WHERE `entry`=12381;
UPDATE `creature_template` SET `speed_walk`=1.2 WHERE `entry`=12382;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12387;
UPDATE `creature_template` SET `speed_walk`=2 WHERE `entry`=12396;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12418;
UPDATE `creature_template` SET `speed_walk`=1.38889 WHERE `entry`=12579;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1365;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12676;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=12836;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=12976;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=12977;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=13021;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13036;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13141;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13160;
UPDATE `creature_template` SET `speed_walk`=4.8 WHERE `entry`=13178;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13219;
UPDATE `creature_template` SET `speed_walk`=4 WHERE `entry`=13256;
UPDATE `creature_template` SET `speed_walk`=1.55556 WHERE `entry`=13280;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13282;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13323;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13331;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13332;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13359;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13358;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=13396;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13418;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13420;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13429;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13430;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13431;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13432;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13433;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13434;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13435;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13436;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13444;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13445;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13533;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13596;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13599;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13601;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=13716;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=13718;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13743;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13756;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13776;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13778;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13796;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13817;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13840;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13959;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14026;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14027;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14028;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14030;
UPDATE `creature_template` SET `speed_walk`=1.55556 WHERE `entry`=14269;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14270;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14283;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14284;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14285;
UPDATE `creature_template` SET `speed_walk`=2 WHERE `entry`=14321;
UPDATE `creature_template` SET `speed_walk`=2 WHERE `entry`=14322;
UPDATE `creature_template` SET `speed_walk`=2 WHERE `entry`=14323;
UPDATE `creature_template` SET `speed_walk`=2 WHERE `entry`=14324;
UPDATE `creature_template` SET `speed_walk`=2 WHERE `entry`=14325;
UPDATE `creature_template` SET `speed_walk`=2 WHERE `entry`=14326;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14353;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14355;
UPDATE `creature_template` SET `speed_walk`=4 WHERE `entry`=14386;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14395;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=14445;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14463;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14508;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14723;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14725;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14822;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14823;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14827;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14828;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14829;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14832;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14833;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14841;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14843;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14844;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14845;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14846;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14847;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14848;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14849;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14864;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14867;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14868;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14869;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14871;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14875;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14910;
UPDATE `creature_template` SET `speed_walk`=4.8 WHERE `entry`=14943;
UPDATE `creature_template` SET `speed_walk`=4.8 WHERE `entry`=14944;
UPDATE `creature_template` SET `speed_walk`=4.8 WHERE `entry`=14945;
UPDATE `creature_template` SET `speed_walk`=4.8 WHERE `entry`=14947;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14962;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14983;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14984;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15080;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15124;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15127;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15130;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15165;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15218;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15303;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=16045;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15592;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15598;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15602;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15871;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15580;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15579;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15576;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15568;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15566;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15565;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15564;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15562;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15561;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10668;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2909;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=17698;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5047;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10445;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15732;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15760;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15764;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15891;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15892;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15895;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15898;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=16117;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=16229;
UPDATE `creature_template` SET `speed_walk`=2 WHERE `entry`=15481;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15694;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15719;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15864;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15905;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15906;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15907;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15908;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15909;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15961;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=16001;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=16002;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=16003;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=16004;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=16005;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=16007;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=16008;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=16009;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=16105;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=16106;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=16108;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=16109;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15467;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15745;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15746;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=16075;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13601;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4753;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=8120;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=8095;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=8138;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=16117;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12263;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=5471;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1806;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5763;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8766;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12387;
UPDATE `creature_template` SET `speed_walk`=1.4 WHERE `entry`=6147;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13282;
UPDATE `creature_template` SET `speed_walk`=0.8 WHERE `entry`=12222;
UPDATE `creature_template` SET `speed_walk`=0.8 WHERE `entry`=12222;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13697;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13697;
UPDATE `creature_template` SET `speed_walk`=2 WHERE `entry`=6109;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5056;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5756;

-- Correct run speed for some creatures.
UPDATE `creature_template` SET `speed_run`=1.14286 WHERE `entry`=412;
UPDATE `creature_template` SET `speed_run`=1.19048 WHERE `entry`=452;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1981;
UPDATE `creature_template` SET `speed_run`=1.71429 WHERE `entry`=2657;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=2962;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=2963;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=3106;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=3111;
UPDATE `creature_template` SET `speed_run`=0.992063 WHERE `entry`=3750;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=3816;
UPDATE `creature_template` SET `speed_run`=0.992063 WHERE `entry`=3924;
UPDATE `creature_template` SET `speed_run`=0.992063 WHERE `entry`=3925;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=4011;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=4035;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=4242;
UPDATE `creature_template` SET `speed_run`=1 WHERE `entry`=4484;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=4655;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=4656;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=4657;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=4658;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=4659;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=5430;
UPDATE `creature_template` SET `speed_run`=1.14286 WHERE `entry`=5756;
UPDATE `creature_template` SET `speed_run`=1.14286 WHERE `entry`=5756;
UPDATE `creature_template` SET `speed_run`=1.28571 WHERE `entry`=5914;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=5982;
UPDATE `creature_template` SET `speed_run`=1.19048 WHERE `entry`=5993;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=6011;
UPDATE `creature_template` SET `speed_run`=1.71429 WHERE `entry`=6109;
UPDATE `creature_template` SET `speed_run`=1.71429 WHERE `entry`=6109;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=6146;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=6146;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=6147;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=6147;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=6379;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=6380;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=6506;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=6551;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=6554;
UPDATE `creature_template` SET `speed_run`=1.71429 WHERE `entry`=6584;
UPDATE `creature_template` SET `speed_run`=2.14286 WHERE `entry`=6907;
UPDATE `creature_template` SET `speed_run`=1.14286 WHERE `entry`=7136;
UPDATE `creature_template` SET `speed_run`=1 WHERE `entry`=7269;
UPDATE `creature_template` SET `speed_run`=0.992063 WHERE `entry`=7438;
UPDATE `creature_template` SET `speed_run`=0.992063 WHERE `entry`=7439;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=7883;
UPDATE `creature_template` SET `speed_run`=1.71429 WHERE `entry`=8276;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=8716;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=8717;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=8718;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=8760;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=8761;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=8763;
UPDATE `creature_template` SET `speed_run`=1.19048 WHERE `entry`=9467;
UPDATE `creature_template` SET `speed_run`=1.21429 WHERE `entry`=9684;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=10664;
UPDATE `creature_template` SET `speed_run`=0.992063 WHERE `entry`=10738;
UPDATE `creature_template` SET `speed_run`=2.57143 WHERE `entry`=10981;
UPDATE `creature_template` SET `speed_run`=2.57143 WHERE `entry`=10990;
UPDATE `creature_template` SET `speed_run`=2.14286 WHERE `entry`=11460;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=11492;
UPDATE `creature_template` SET `speed_run`=1.71429 WHERE `entry`=11501;
UPDATE `creature_template` SET `speed_run`=0.285714 WHERE `entry`=12222;
UPDATE `creature_template` SET `speed_run`=0.285714 WHERE `entry`=12222;
UPDATE `creature_template` SET `speed_run`=0.885714 WHERE `entry`=12245;
UPDATE `creature_template` SET `speed_run`=0.885714 WHERE `entry`=12246;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=12337;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=12352;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=12358;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=12359;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=12360;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=12381;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=12382;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=12396;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=12418;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=12976;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=12977;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=13036;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=13137;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=13138;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=13143;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=13144;
UPDATE `creature_template` SET `speed_run`=1.28968 WHERE `entry`=13147;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=13152;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=13160;
UPDATE `creature_template` SET `speed_run`=4.28571 WHERE `entry`=13178;
UPDATE `creature_template` SET `speed_run`=1.14286 WHERE `entry`=13179;
UPDATE `creature_template` SET `speed_run`=4 WHERE `entry`=13236;
UPDATE `creature_template` SET `speed_run`=2.14286 WHERE `entry`=13256;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=13296;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=13297;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=13298;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=13299;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=13300;
UPDATE `creature_template` SET `speed_run`=0.571429 WHERE `entry`=13318;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=13577;
UPDATE `creature_template` SET `speed_run`=1.14286 WHERE `entry`=13596;
UPDATE `creature_template` SET `speed_run`=0.714286 WHERE `entry`=13756;
UPDATE `creature_template` SET `speed_run`=0.714286 WHERE `entry`=13778;
UPDATE `creature_template` SET `speed_run`=0.714286 WHERE `entry`=13796;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=14324;
UPDATE `creature_template` SET `speed_run`=2.57143 WHERE `entry`=14354;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=14380;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=14386;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=14555;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=14556;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=14602;
UPDATE `creature_template` SET `speed_run`=1.14286 WHERE `entry`=14762;
UPDATE `creature_template` SET `speed_run`=1.14286 WHERE `entry`=14763;
UPDATE `creature_template` SET `speed_run`=1.14286 WHERE `entry`=14764;
UPDATE `creature_template` SET `speed_run`=1.14286 WHERE `entry`=14765;
UPDATE `creature_template` SET `speed_run`=1.14286 WHERE `entry`=14766;
UPDATE `creature_template` SET `speed_run`=1.14286 WHERE `entry`=14767;
UPDATE `creature_template` SET `speed_run`=1 WHERE `entry`=14860;
UPDATE `creature_template` SET `speed_run`=2.57143 WHERE `entry`=14864;
UPDATE `creature_template` SET `speed_run`=4.28571 WHERE `entry`=14943;
UPDATE `creature_template` SET `speed_run`=4.28571 WHERE `entry`=14944;
UPDATE `creature_template` SET `speed_run`=4.28571 WHERE `entry`=14945;
UPDATE `creature_template` SET `speed_run`=4.28571 WHERE `entry`=14947;
UPDATE `creature_template` SET `speed_run`=1.71429 WHERE `entry`=15481;
UPDATE `creature_template` SET `speed_run`=1.71429 WHERE `entry`=15961;
UPDATE `creature_template` SET `speed_run`=1 WHERE `entry`=16075;

-- Correct melee attack time.
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=2742;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=2928;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11023;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11355;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12057;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12860;
UPDATE `creature_template` SET `base_attack_time`=2700 WHERE `entry`=193;
UPDATE `creature_template` SET `base_attack_time`=3000 WHERE `entry`=412;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=709;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=857;
UPDATE `creature_template` SET `base_attack_time`=1300 WHERE `entry`=1061;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=1095;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=1203;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=1204;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=1365;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=1365;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=1380;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=1436;
UPDATE `creature_template` SET `base_attack_time`=3000 WHERE `entry`=1493;
UPDATE `creature_template` SET `base_attack_time`=2400 WHERE `entry`=1844;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=1981;
UPDATE `creature_template` SET `base_attack_time`=1000 WHERE `entry`=2600;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=2644;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=2835;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=2918;
UPDATE `creature_template` SET `base_attack_time`=1500 WHERE `entry`=3395;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=3398;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=3454;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=3652;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=3654;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=3655;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=3672;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=4004;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=4050;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=4052;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=4061;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=4255;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=4257;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=4409;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=4423;
UPDATE `creature_template` SET `base_attack_time`=3000 WHERE `entry`=4686;
UPDATE `creature_template` SET `base_attack_time`=2300 WHERE `entry`=4845;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=4850;
UPDATE `creature_template` SET `base_attack_time`=2500 WHERE `entry`=4851;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=4852;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=4856;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=4863;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=4872;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5081;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5134;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5135;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5139;
UPDATE `creature_template` SET `base_attack_time`=2500 WHERE `entry`=5441;
UPDATE `creature_template` SET `base_attack_time`=2400 WHERE `entry`=5469;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5470;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5762;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5763;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5763;
UPDATE `creature_template` SET `base_attack_time`=1600 WHERE `entry`=5835;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5863;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5914;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5930;
UPDATE `creature_template` SET `base_attack_time`=2400 WHERE `entry`=5931;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5981;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=6109;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=6109;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=6118;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=6129;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=6130;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=6131;
UPDATE `creature_template` SET `base_attack_time`=2500 WHERE `entry`=6146;
UPDATE `creature_template` SET `base_attack_time`=2500 WHERE `entry`=6146;
UPDATE `creature_template` SET `base_attack_time`=2500 WHERE `entry`=6147;
UPDATE `creature_template` SET `base_attack_time`=2500 WHERE `entry`=6147;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=6501;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=6502;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=6503;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=6504;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=6582;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=6906;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=6907;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=6908;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=6910;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=6912;
UPDATE `creature_template` SET `base_attack_time`=2900 WHERE `entry`=7042;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=7043;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=7057;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=7135;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=7175;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=7665;
UPDATE `creature_template` SET `base_attack_time`=2500 WHERE `entry`=7848;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=7873;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=8138;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=8138;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=8199;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=8200;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=8277;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=8518;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=8716;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=8717;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=8718;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=8907;
UPDATE `creature_template` SET `base_attack_time`=2800 WHERE `entry`=8924;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9299;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9376;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9453;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9522;
UPDATE `creature_template` SET `base_attack_time`=1500 WHERE `entry`=9684;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10082;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10394;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10398;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10399;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10400;
UPDATE `creature_template` SET `base_attack_time`=1400 WHERE `entry`=10406;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10407;
UPDATE `creature_template` SET `base_attack_time`=1600 WHERE `entry`=10408;
UPDATE `creature_template` SET `base_attack_time`=1600 WHERE `entry`=10409;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10412;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10413;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10416;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10417;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10436;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10437;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10438;
UPDATE `creature_template` SET `base_attack_time`=2500 WHERE `entry`=10439;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10440;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10463;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10464;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10663;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10664;
UPDATE `creature_template` SET `base_attack_time`=2800 WHERE `entry`=10738;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10817;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10897;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10981;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10986;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10990;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11030;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11076;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11077;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11078;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11256;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11346;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11383;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11440;
UPDATE `creature_template` SET `base_attack_time`=2500 WHERE `entry`=11441;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11442;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11443;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11444;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11445;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11446;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11448;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11448;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11451;
UPDATE `creature_template` SET `base_attack_time`=1500 WHERE `entry`=11452;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11453;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11454;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11455;
UPDATE `creature_template` SET `base_attack_time`=1500 WHERE `entry`=11456;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11457;
UPDATE `creature_template` SET `base_attack_time`=800 WHERE `entry`=11460;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11461;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11462;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11464;
UPDATE `creature_template` SET `base_attack_time`=2500 WHERE `entry`=11465;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11490;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11491;
UPDATE `creature_template` SET `base_attack_time`=1300 WHERE `entry`=11492;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11605;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11675;
UPDATE `creature_template` SET `base_attack_time`=1700 WHERE `entry`=11678;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11701;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11777;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11778;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11782;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11787;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11788;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11948;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11997;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11998;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12050;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12051;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12053;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12096;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12127;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12197;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12238;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12239;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12240;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12241;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12263;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12263;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12337;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12352;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12381;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12382;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12396;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12579;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12836;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12976;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12977;
UPDATE `creature_template` SET `base_attack_time`=2500 WHERE `entry`=13021;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13022;
UPDATE `creature_template` SET `base_attack_time`=1500 WHERE `entry`=13036;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13079;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13081;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13088;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13097;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13099;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13137;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13138;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13139;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13143;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13144;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13145;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13146;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13147;
UPDATE `creature_template` SET `base_attack_time`=1500 WHERE `entry`=13160;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13178;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13196;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13197;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13219;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13256;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13276;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13280;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13285;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13296;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13297;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13298;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13299;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13300;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13316;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13326;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13331;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13332;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13358;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13359;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13397;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13431;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13432;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13444;
UPDATE `creature_template` SET `base_attack_time`=2800 WHERE `entry`=13535;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13538;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13541;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13544;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13552;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13555;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13697;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13697;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13716;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13718;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13797;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13840;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13959;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14187;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14188;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14269;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14270;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14282;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14283;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14321;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14322;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14323;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14324;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14325;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14326;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14327;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14338;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14344;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14345;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14349;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14353;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14354;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14380;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14386;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14445;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14762;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14763;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14764;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14765;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14766;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14767;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14843;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14848;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14865;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14875;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14876;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14910;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14911;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14912;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14943;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14944;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14945;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14947;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14982;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14982;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=15080;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=15561;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=15565;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=15568;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=15598;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=15730;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=15745;
UPDATE `creature_template` SET `base_attack_time`=1500 WHERE `entry`=16001;
UPDATE `creature_template` SET `base_attack_time`=1500 WHERE `entry`=16002;
UPDATE `creature_template` SET `base_attack_time`=1500 WHERE `entry`=16003;
UPDATE `creature_template` SET `base_attack_time`=1500 WHERE `entry`=16004;
UPDATE `creature_template` SET `base_attack_time`=1500 WHERE `entry`=16005;
UPDATE `creature_template` SET `base_attack_time`=1500 WHERE `entry`=16007;
UPDATE `creature_template` SET `base_attack_time`=1500 WHERE `entry`=16008;
UPDATE `creature_template` SET `base_attack_time`=1500 WHERE `entry`=16009;
UPDATE `creature_template` SET `base_attack_time`=1500 WHERE `entry`=16105;
UPDATE `creature_template` SET `base_attack_time`=1500 WHERE `entry`=16106;
UPDATE `creature_template` SET `base_attack_time`=1500 WHERE `entry`=16108;
UPDATE `creature_template` SET `base_attack_time`=1500 WHERE `entry`=16109;

-- Correct ranged attack time.
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=412;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=588;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=597;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=660;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=671;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=689;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=699;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=709;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=765;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=814;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=921;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=939;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=942;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1061;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1062;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1088;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1095;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1203;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1204;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1380;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1436;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1844;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1981;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=2918;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3106;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3111;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3140;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3147;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3155;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3156;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3257;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3395;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3454;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3652;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3654;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3672;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=4255;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=4257;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=4850;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=4852;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=4863;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5081;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5134;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5135;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5139;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5470;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5648;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5649;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5650;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5762;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5763;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5914;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5981;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=6499;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=6912;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=7078;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=7135;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=7175;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=7246;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=7247;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=7268;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=7269;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=7271;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=7272;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=7848;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=8095;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=8120;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=8127;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=8130;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=8138;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=8199;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=8200;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=8924;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9299;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9453;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9522;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9684;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10082;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10394;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10398;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10399;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10400;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10406;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10407;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10408;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10409;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10412;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10413;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10416;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10417;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10436;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10437;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10438;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10439;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10440;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10463;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10464;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10817;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10981;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10982;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10986;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10987;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10990;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11030;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11076;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11077;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11078;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11256;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11383;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11441;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11444;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11445;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11446;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11448;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11450;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11451;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11452;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11453;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11454;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11455;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11456;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11457;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11460;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11461;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11462;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11464;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11465;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11490;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11491;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11492;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11600;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11602;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11603;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11604;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11605;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11657;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11675;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11678;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11701;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11947;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11948;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11949;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11997;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11998;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=12050;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=12051;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=12053;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=12096;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=12127;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=12238;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=12352;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1365;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=12381;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=12382;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1365;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=12976;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=12977;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13021;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13022;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13036;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13078;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13079;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13080;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13081;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13088;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13097;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13098;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13099;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13116;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13117;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13137;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13138;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13139;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13140;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13143;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13144;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13145;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13146;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13147;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13152;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13154;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13160;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13178;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13179;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13180;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13181;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13196;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13197;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13216;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13236;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13256;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13257;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13276;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13280;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13284;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13285;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13296;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13297;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13298;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13299;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13300;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13316;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13318;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13319;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13320;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13326;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13331;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13332;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13359;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13358;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13396;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13397;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13431;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13432;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13437;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13438;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13442;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13443;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13444;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13447;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13535;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13538;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13541;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13544;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13552;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13555;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13577;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13617;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13716;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13756;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13778;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13796;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13797;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13959;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14026;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14027;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14028;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14030;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14187;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14188;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14269;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14279;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14282;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14283;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14321;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14322;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14323;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14324;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14325;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14326;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14327;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14338;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14344;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14345;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14349;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14353;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14354;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14386;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14445;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14762;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14763;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14764;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14765;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14766;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14767;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14843;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14848;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14875;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14876;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14910;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14911;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14912;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14943;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14944;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14945;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14947;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14994;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=15080;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=15218;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=15598;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=15568;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=15565;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=15561;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=6907;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=6906;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=6908;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=6910;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=15745;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=15730;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=8120;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=8095;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=8138;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5763;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11450;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11448;


-- Update faction for more creatures.
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=288;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=340;
UPDATE `creature_template` SET `faction`=93 WHERE `entry`=412;
UPDATE `creature_template` SET `faction`=43 WHERE `entry`=604;
UPDATE `creature_template` SET `faction`=53 WHERE `entry`=888;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1327;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1356;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1439;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1440;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1466;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1471;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1573;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1703;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1747;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1749;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1750;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1751;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1754;
UPDATE `creature_template` SET `faction`=67 WHERE `entry`=1844;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=2285;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=2330;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=2331;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=2439;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=2504;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=2600;
UPDATE `creature_template` SET `faction`=123 WHERE `entry`=2608;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=2700;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=2737;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=2786;
UPDATE `creature_template` SET `faction`=1078 WHERE `entry`=2788;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=2789;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=2796;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=2808;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=2810;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=2812;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=2814;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=2816;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=2835;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=2912;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=2916;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=2918;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=2991;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=3395;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=3504;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=3516;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=3517;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=3561;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=3562;
UPDATE `creature_template` SET `faction`=14 WHERE `entry`=3652;
UPDATE `creature_template` SET `faction`=123 WHERE `entry`=3663;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=3842;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=3847;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=3979;
UPDATE `creature_template` SET `faction`=124 WHERE `entry`=4050;
UPDATE `creature_template` SET `faction`=124 WHERE `entry`=4052;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4090;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4091;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4092;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4138;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4146;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4156;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4159;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4160;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4161;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4163;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4165;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4167;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4168;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4169;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4171;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4172;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4173;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4175;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4177;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4180;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4204;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4205;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4210;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4211;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4212;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4213;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4214;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4215;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4216;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4217;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4218;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4219;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4220;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4221;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4222;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4223;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4225;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4226;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4228;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4229;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4231;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4232;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4233;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4234;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4235;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4236;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4240;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4242;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4243;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4244;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=4254;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=4256;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=4258;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=4259;
UPDATE `creature_template` SET `faction`=123 WHERE `entry`=4484;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=4489;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4521;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4730;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4753;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=4960;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=5081;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5113;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5115;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5128;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5146;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5147;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5148;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5149;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5153;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5154;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5155;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5156;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5159;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5160;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5161;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5164;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5165;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5166;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5170;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5171;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5173;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=5191;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5387;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5389;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=5482;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=5483;
UPDATE `creature_template` SET `faction`=122 WHERE `entry`=5637;
UPDATE `creature_template` SET `faction`=14 WHERE `entry`=5676;
UPDATE `creature_template` SET `faction`=14 WHERE `entry`=5763;
UPDATE `creature_template` SET `faction`=1575 WHERE `entry`=5999;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=6031;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=6034;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=6090;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=6114;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=6291;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=6292;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=6294;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=6735;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=7296;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=7313;
UPDATE `creature_template` SET `faction`=1216 WHERE `entry`=7410;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=7740;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=7848;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=7866;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=7936;
UPDATE `creature_template` SET `faction`=124 WHERE `entry`=7999;
UPDATE `creature_template` SET `faction`=37 WHERE `entry`=8199;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=8256;
UPDATE `creature_template` SET `faction`=124 WHERE `entry`=8396;
UPDATE `creature_template` SET `faction`=122 WHERE `entry`=8507;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=9047;
UPDATE `creature_template` SET `faction`=14 WHERE `entry`=9453;
UPDATE `creature_template` SET `faction`=40 WHERE `entry`=9522;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=9550;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=10056;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=10089;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=10276;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=10277;
UPDATE `creature_template` SET `faction`=974 WHERE `entry`=10394;
UPDATE `creature_template` SET `faction`=21 WHERE `entry`=10398;
UPDATE `creature_template` SET `faction`=21 WHERE `entry`=10399;
UPDATE `creature_template` SET `faction`=21 WHERE `entry`=10400;
UPDATE `creature_template` SET `faction`=21 WHERE `entry`=10406;
UPDATE `creature_template` SET `faction`=21 WHERE `entry`=10407;
UPDATE `creature_template` SET `faction`=21 WHERE `entry`=10408;
UPDATE `creature_template` SET `faction`=21 WHERE `entry`=10409;
UPDATE `creature_template` SET `faction`=21 WHERE `entry`=10412;
UPDATE `creature_template` SET `faction`=21 WHERE `entry`=10413;
UPDATE `creature_template` SET `faction`=21 WHERE `entry`=10416;
UPDATE `creature_template` SET `faction`=21 WHERE `entry`=10417;
UPDATE `creature_template` SET `faction`=21 WHERE `entry`=10436;
UPDATE `creature_template` SET `faction`=21 WHERE `entry`=10437;
UPDATE `creature_template` SET `faction`=21 WHERE `entry`=10438;
UPDATE `creature_template` SET `faction`=21 WHERE `entry`=10439;
UPDATE `creature_template` SET `faction`=21 WHERE `entry`=10440;
UPDATE `creature_template` SET `faction`=21 WHERE `entry`=10463;
UPDATE `creature_template` SET `faction`=21 WHERE `entry`=10464;
UPDATE `creature_template` SET `faction`=124 WHERE `entry`=10684;
UPDATE `creature_template` SET `faction`=1055 WHERE `entry`=10817;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=10877;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=10897;
UPDATE `creature_template` SET `faction`=21 WHERE `entry`=11030;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=11041;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=11042;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=11050;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=11070;
UPDATE `creature_template` SET `faction`=21 WHERE `entry`=11078;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=11081;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=11083;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=11145;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=11146;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=11219;
UPDATE `creature_template` SET `faction`=1076 WHERE `entry`=11401;
UPDATE `creature_template` SET `faction`=122 WHERE `entry`=11406;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=11460;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=11461;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=11462;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=11464;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=11465;
UPDATE `creature_template` SET `faction`=26 WHERE `entry`=11605;
UPDATE `creature_template` SET `faction`=514 WHERE `entry`=11678;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=11709;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=11947;
UPDATE `creature_template` SET `faction`=1216 WHERE `entry`=11948;
UPDATE `creature_template` SET `faction`=1216 WHERE `entry`=11949;
UPDATE `creature_template` SET `faction`=1335 WHERE `entry`=11998;
UPDATE `creature_template` SET `faction`=1216 WHERE `entry`=12050;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=12051;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=12053;
UPDATE `creature_template` SET `faction`=1216 WHERE `entry`=12127;
UPDATE `creature_template` SET `faction`=1216 WHERE `entry`=12197;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1365;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=12636;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1365;
UPDATE `creature_template` SET `faction`=1097 WHERE `entry`=12676;
UPDATE `creature_template` SET `faction`=124 WHERE `entry`=12836;
UPDATE `creature_template` SET `faction`=130 WHERE `entry`=12976;
UPDATE `creature_template` SET `faction`=130 WHERE `entry`=12977;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=13021;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=13022;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=13137;
UPDATE `creature_template` SET `faction`=1216 WHERE `entry`=13138;
UPDATE `creature_template` SET `faction`=1216 WHERE `entry`=13139;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=13140;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=13143;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=13144;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=13145;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=13146;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=13147;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=13152;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=13154;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=13178;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=13196;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=13197;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=13236;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=13256;
UPDATE `creature_template` SET `faction`=1216 WHERE `entry`=13257;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=13276;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=13280;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=13284;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=13285;
UPDATE `creature_template` SET `faction`=1216 WHERE `entry`=13296;
UPDATE `creature_template` SET `faction`=1216 WHERE `entry`=13297;
UPDATE `creature_template` SET `faction`=1216 WHERE `entry`=13298;
UPDATE `creature_template` SET `faction`=1216 WHERE `entry`=13299;
UPDATE `creature_template` SET `faction`=1216 WHERE `entry`=13300;
UPDATE `creature_template` SET `faction`=1216 WHERE `entry`=13318;
UPDATE `creature_template` SET `faction`=1216 WHERE `entry`=13319;
UPDATE `creature_template` SET `faction`=1216 WHERE `entry`=13320;
UPDATE `creature_template` SET `faction`=1216 WHERE `entry`=13326;
UPDATE `creature_template` SET `faction`=1216 WHERE `entry`=13331;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=13332;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=13359;
UPDATE `creature_template` SET `faction`=1216 WHERE `entry`=13358;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=13431;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=13432;
UPDATE `creature_template` SET `faction`=1216 WHERE `entry`=13442;
UPDATE `creature_template` SET `faction`=1216 WHERE `entry`=13443;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=13444;
UPDATE `creature_template` SET `faction`=1216 WHERE `entry`=13447;
UPDATE `creature_template` SET `faction`=1216 WHERE `entry`=13577;
UPDATE `creature_template` SET `faction`=1216 WHERE `entry`=13617;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=13756;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=13776;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=13778;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=13796;
UPDATE `creature_template` SET `faction`=1216 WHERE `entry`=13797;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=13817;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=13959;
UPDATE `creature_template` SET `faction`=1594 WHERE `entry`=14187;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=14282;
UPDATE `creature_template` SET `faction`=1216 WHERE `entry`=14283;
UPDATE `creature_template` SET `faction`=1216 WHERE `entry`=14284;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=14285;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=14327;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=14338;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=14349;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=14723;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=14725;
UPDATE `creature_template` SET `faction`=1534 WHERE `entry`=14762;
UPDATE `creature_template` SET `faction`=1534 WHERE `entry`=14763;
UPDATE `creature_template` SET `faction`=1534 WHERE `entry`=14764;
UPDATE `creature_template` SET `faction`=1534 WHERE `entry`=14765;
UPDATE `creature_template` SET `faction`=1534 WHERE `entry`=14766;
UPDATE `creature_template` SET `faction`=1534 WHERE `entry`=14767;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=14943;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=14944;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=14945;
UPDATE `creature_template` SET `faction`=1216 WHERE `entry`=14947;
UPDATE `creature_template` SET `faction`=114 WHERE `entry`=16045;
UPDATE `creature_template` SET `faction`=122 WHERE `entry`=6907;
UPDATE `creature_template` SET `faction`=122 WHERE `entry`=6906;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=2909;
UPDATE `creature_template` SET `faction`=122 WHERE `entry`=6908;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=5047;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=15764;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=16001;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=16002;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=16003;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=16004;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=16005;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=16008;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=16009;
UPDATE `creature_template` SET `faction`=114 WHERE `entry`=16100;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=16105;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=16106;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=16108;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=16109;
UPDATE `creature_template` SET `faction`=120 WHERE `entry`=15724;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=15745;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4753;
UPDATE `creature_template` SET `faction`=14 WHERE `entry`=5763;

-- Remove not used db script.
DELETE FROM `event_scripts` WHERE `id`=8420;

-- Correct type of dreadstead ritual circle. This fixes the animation.
UPDATE `gameobject_template` SET `type`=0, `flags`=20 WHERE `entry`=179668;

-- Fix scale of Orb of Domination.
UPDATE `creature_template` SET `scale`=1 WHERE `entry`=14453;

-- Correct givers for quest Cenarion Aid.
DELETE FROM `creature_questrelation` WHERE `quest`=8254;
INSERT INTO `creature_questrelation` (`id`, `quest`, `patch_min`, `patch_max`) VALUES (5489, 8254, 5, 10);
INSERT INTO `creature_questrelation` (`id`, `quest`, `patch_min`, `patch_max`) VALUES (6018, 8254, 5, 10);
INSERT INTO `creature_questrelation` (`id`, `quest`, `patch_min`, `patch_max`) VALUES (11406, 8254, 5, 10);

-- Quest 5663 should be started by Miles Welsh.
UPDATE `creature_questrelation` SET `id`=3044 WHERE `id`=2129 && `quest`=5663;

-- Quest 5661 should not by started by anyone. It's unobtainable.
DELETE FROM `creature_questrelation` WHERE `id`=3044 && `quest`=5661;

-- <NYI> Touch of Weakness should not be a prerequisite of 5658.
UPDATE `quest_template` SET `NextQuestInChain`=0, `RewMoneyMaxLevel`=120, `RewSpell`=19318 WHERE `entry`=5659;

-- Quest 5644 should be started by Miles Welsh.
UPDATE `creature_questrelation` SET `id`=3044 WHERE `id`=5994 && `quest`=5644;

-- Quest 5646 should be started by Ur'kyo.
UPDATE `creature_questrelation` SET `id`=6018 WHERE `id`=3046 && `quest`=5646;


-- Quest 5643 should be started by Aelthalyste.
UPDATE `creature_questrelation` SET `id`=4606 WHERE `id`=4607 && `quest`=5643;

-- Add missing relations for quest 5654.
INSERT INTO `creature_questrelation` (`id`, `quest`, `patch_min`, `patch_max`) VALUES (3706, 5654, 0, 10);
INSERT INTO `creature_involvedrelation` (`id`, `quest`, `patch_min`, `patch_max`) VALUES (6018, 5654, 0, 10);

-- Quests 5657, 5656, 5655 are unobtainable.
DELETE FROM `creature_questrelation` WHERE `quest` IN (5657, 5656, 5655);

-- Ur'dan should only sell items after quest Ulathek the Traitor is completed.
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (7624, 8, 7624, 0, 0, 0, 0);
INSERT INTO `gossip_menu` VALUES (5864, 7037, 0);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`, `condition_id`) VALUES (5864, 0, 1, 'I wish to purchase from you.', 9734, 3, 4, 0, 0, 0, 0, 0, NULL, 0, 7624);
UPDATE `creature_template` SET `gossip_menu_id`=5864, `npc_flags`=5 WHERE `entry`=14522;

-- Cultist near Rakaiah should not be moving.
UPDATE `creature` SET `wander_distance`=0, `movement_type`=0 WHERE `guid` IN (40659, 40665);
UPDATE `creature` SET `position_x`=5210.24, `position_y`=-573.692, `position_z`=287.41, `orientation`=2.74017 WHERE `guid`=40659;
UPDATE `creature` SET `position_x`=5205.97, `position_y`=-564.198, `position_z`=287.41, `orientation`=4.08407 WHERE `guid`=40665;


-- Add missing completion text for Summon Felsteed quests.
UPDATE `quest_template` SET `OfferRewardText`='So, you\'ve decided to grace my presence again. How kind of you.$B$BMy acolytes wondered if you\'d ever show up. I told them there was no doubt. When power is concerned, you are drawn in like a moth to the flame.' WHERE `entry` IN (3631, 4487, 4488);


-- Aelthalyste
DELETE FROM `npc_trainer` WHERE `entry`=4606;
INSERT INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES 
(4606, 1252, 800, 12),
(4606, 1253, 10000, 30),
(4606, 1254, 18000, 40),
(4606, 1255, 10, 1),
(4606, 1256, 800, 12),
(4606, 1257, 5000, 24),
(4606, 1258, 100, 4),
(4606, 1259, 300, 10),
(4606, 1260, 2000, 18),
(4606, 1261, 6000, 26),
(4606, 1265, 200, 8),
(4606, 1268, 1200, 14),
(4606, 1269, 11000, 32),
(4606, 1275, 100, 6),
(4606, 1276, 1200, 14),
(4606, 1277, 800, 12),
(4606, 1278, 2000, 18),
(4606, 1279, 10000, 30),
(4606, 1280, 22000, 42),
(4606, 1283, 2000, 18),
(4606, 1284, 14000, 36),
(4606, 1287, 10000, 30),
(4606, 1288, 18000, 40),
(4606, 1293, 10000, 30),
(4606, 1298, 5000, 24),
(4606, 1300, 4000, 22),
(4606, 1301, 10000, 30),
(4606, 1425, 3000, 20),
(4606, 2013, 300, 10),
(4606, 2016, 4000, 22),
(4606, 2049, 30000, 50),
(4606, 2056, 100, 4),
(4606, 2057, 300, 10),
(4606, 2058, 1600, 16),
(4606, 2059, 4000, 22),
(4606, 2065, 18000, 40),
(4606, 2066, 3000, 20),
(4606, 2067, 38000, 52),
(4606, 2068, 44000, 58),
(4606, 2069, 26000, 46),
(4606, 2097, 4000, 22),
(4606, 2793, 14000, 36),
(4606, 2799, 12000, 34),
(4606, 2851, 100, 6),
(4606, 3046, 400, 28),
(4606, 6062, 16000, 38),
(4606, 6067, 10000, 30),
(4606, 6068, 14000, 36),
(4606, 6071, 8000, 28),
(4606, 6072, 12000, 34),
(4606, 6073, 200, 8),
(4606, 6079, 1200, 14),
(4606, 6080, 3000, 20),
(4606, 6081, 6000, 26),
(4606, 6082, 11000, 32),
(4606, 6083, 16000, 38),
(4606, 6386, 900, 40),
(4606, 6492, 12000, 34),
(4606, 7130, 3000, 20),
(4606, 7378, 400, 28),
(4606, 8093, 300, 10),
(4606, 8107, 1600, 16),
(4606, 8108, 4000, 22),
(4606, 8109, 8000, 28),
(4606, 8110, 12000, 34),
(4606, 8111, 18000, 40),
(4606, 8123, 1200, 14),
(4606, 8125, 8000, 28),
(4606, 8126, 3000, 20),
(4606, 8130, 5000, 24),
(4606, 8132, 11000, 32),
(4606, 8193, 14000, 36),
(4606, 9475, 6000, 26),
(4606, 9476, 11000, 32),
(4606, 9477, 16000, 38),
(4606, 9486, 18000, 40),
(4606, 9580, 3000, 20),
(4606, 9581, 10000, 30),
(4606, 9593, 18000, 40),
(4606, 10877, 18000, 40),
(4606, 10878, 28000, 48),
(4606, 10879, 42000, 56),
(4606, 10882, 12000, 34),
(4606, 10883, 26000, 46),
(4606, 10889, 22000, 42),
(4606, 10891, 42000, 56),
(4606, 10895, 22000, 42),
(4606, 10896, 30000, 50),
(4606, 10897, 44000, 58),
(4606, 10902, 22000, 42),
(4606, 10903, 28000, 48),
(4606, 10904, 40000, 54),
(4606, 10905, 46000, 60),
(4606, 10910, 24000, 44),
(4606, 10913, 24000, 44),
(4606, 10914, 44000, 58),
(4606, 10918, 24000, 44),
(4606, 10919, 30000, 50),
(4606, 10920, 42000, 56),
(4606, 10930, 24000, 44),
(4606, 10931, 30000, 50),
(4606, 10932, 42000, 56),
(4606, 10935, 26000, 46),
(4606, 10936, 40000, 54),
(4606, 10939, 28000, 48),
(4606, 10940, 46000, 60),
(4606, 10943, 30000, 50),
(4606, 10944, 46000, 60),
(4606, 10948, 26000, 46),
(4606, 10949, 38000, 52),
(4606, 10950, 44000, 58),
(4606, 10954, 38000, 52),
(4606, 10956, 46000, 60),
(4606, 10959, 42000, 56),
(4606, 10962, 46000, 60),
(4606, 11025, 30000, 50),
(4606, 11026, 46000, 60),
(4606, 14820, 1500, 50),
(4606, 15434, 700, 36),
(4606, 15452, 5000, 24),
(4606, 15454, 10000, 30),
(4606, 15455, 14000, 36),
(4606, 15457, 22000, 42),
(4606, 15459, 28000, 48),
(4606, 15460, 40000, 54),
(4606, 17316, 700, 36),
(4606, 17317, 1200, 44),
(4606, 17318, 1900, 52),
(4606, 18806, 46000, 60),
(4606, 18808, 2300, 60),
(4606, 19313, 400, 28),
(4606, 19314, 700, 36),
(4606, 19315, 1200, 44),
(4606, 19316, 1900, 52),
(4606, 19317, 2300, 60),
(4606, 19320, 150, 20),
(4606, 19321, 500, 30),
(4606, 19322, 900, 40),
(4606, 19323, 1500, 50),
(4606, 19324, 2300, 60),
(4606, 20771, 44000, 58),
(4606, 27796, 3000, 20),
(4606, 27821, 1200, 44),
(4606, 27822, 1900, 52),
(4606, 27823, 2300, 60),
(4606, 27843, 2300, 60),
(4606, 27845, 2300, 60),
(4606, 27875, 1200, 50),
(4606, 27876, 1500, 60);
DELETE FROM `npc_trainer` WHERE `entry`=4606 && `spell` IN (19313, 19315, 19316, 19317, 19323, 19324, 19329, 19330, 19334, 19335, 19336, 19342, 19343, 19344, 19354, 19355, 19356, 19360, 19361);
INSERT INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES 
(4606, 19313, 2000, 0, 0, 28, 0, 5086),
(4606, 19313, 400, 0, 0, 28, 5302, 5875),
(4606, 19315, 5400, 0, 0, 44, 0, 5086),
(4606, 19315, 1200, 0, 0, 44, 5302, 5875),
(4606, 19316, 9500, 0, 0, 52, 0, 5086),
(4606, 19316, 1900, 0, 0, 52, 5302, 5875),
(4606, 19317, 11500, 0, 0, 60, 0, 5086),
(4606, 19317, 2300, 0, 0, 60, 5302, 5875),
(4606, 19323, 7500, 0, 0, 50, 0, 5086),
(4606, 19323, 1500, 0, 0, 50, 5302, 5875),
(4606, 19324, 11500, 0, 0, 60, 0, 5086),
(4606, 19324, 2070, 0, 0, 60, 5302, 5875),
(4606, 19329, 7500, 0, 0, 50, 0, 5086),
(4606, 19329, 1500, 0, 0, 50, 5302, 5875),
(4606, 19330, 11500, 0, 0, 60, 0, 5086),
(4606, 19330, 2300, 0, 0, 60, 5302, 5875),
(4606, 19334, 7000, 0, 0, 0, 0, 5086),
(4606, 19334, 1000, 0, 0, 0, 5302, 5875),
(4606, 19335, 9500, 0, 0, 0, 0, 5086),
(4606, 19335, 1200, 0, 0, 0, 5302, 5875),
(4606, 19336, 11500, 0, 0, 60, 0, 5086),
(4606, 19336, 2300, 0, 0, 60, 5302, 5875),
(4606, 19342, 4950, 0, 0, 42, 0, 5086),
(4606, 19342, 1100, 0, 0, 42, 5302, 5875),
(4606, 19343, 6750, 0, 0, 50, 0, 5086),
(4606, 19343, 1500, 0, 0, 50, 5302, 5875),
(4606, 19344, 9900, 0, 0, 58, 0, 5086),
(4606, 19344, 2200, 0, 0, 58, 5302, 5875),
(4606, 19354, 5500, 0, 0, 42, 0, 5086),
(4606, 19354, 1100, 0, 0, 42, 5302, 5875),
(4606, 19355, 7500, 0, 0, 50, 0, 5086),
(4606, 19355, 1500, 0, 0, 50, 5302, 5875),
(4606, 19356, 47000, 0, 0, 58, 0, 5086),
(4606, 19356, 2200, 0, 0, 58, 5302, 5875),
(4606, 19360, 7500, 0, 0, 50, 0, 5086),
(4606, 19360, 1500, 0, 0, 50, 5302, 5875),
(4606, 19361, 11500, 0, 0, 60, 0, 5086),
(4606, 19361, 2070, 0, 0, 60, 5302, 5875);
-- Father Lankester
DELETE FROM `npc_trainer` WHERE `entry`=4607;
INSERT INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES 
(4607, 1252, 800, 12),
(4607, 1253, 10000, 30),
(4607, 1254, 18000, 40),
(4607, 1255, 10, 1),
(4607, 1256, 800, 12),
(4607, 1257, 5000, 24),
(4607, 1258, 100, 4),
(4607, 1259, 300, 10),
(4607, 1260, 2000, 18),
(4607, 1261, 6000, 26),
(4607, 1265, 200, 8),
(4607, 1268, 1200, 14),
(4607, 1269, 11000, 32),
(4607, 1275, 100, 6),
(4607, 1276, 1200, 14),
(4607, 1277, 800, 12),
(4607, 1278, 2000, 18),
(4607, 1279, 10000, 30),
(4607, 1280, 22000, 42),
(4607, 1283, 2000, 18),
(4607, 1284, 14000, 36),
(4607, 1287, 10000, 30),
(4607, 1288, 18000, 40),
(4607, 1293, 10000, 30),
(4607, 1298, 5000, 24),
(4607, 1300, 4000, 22),
(4607, 1301, 10000, 30),
(4607, 1425, 3000, 20),
(4607, 2013, 300, 10),
(4607, 2016, 4000, 22),
(4607, 2049, 30000, 50),
(4607, 2056, 100, 4),
(4607, 2057, 300, 10),
(4607, 2058, 1600, 16),
(4607, 2059, 4000, 22),
(4607, 2065, 18000, 40),
(4607, 2066, 3000, 20),
(4607, 2067, 38000, 52),
(4607, 2068, 44000, 58),
(4607, 2069, 26000, 46),
(4607, 2097, 4000, 22),
(4607, 2793, 14000, 36),
(4607, 2799, 12000, 34),
(4607, 2851, 100, 6),
(4607, 3046, 400, 28),
(4607, 6062, 16000, 38),
(4607, 6067, 10000, 30),
(4607, 6068, 14000, 36),
(4607, 6071, 8000, 28),
(4607, 6072, 12000, 34),
(4607, 6073, 200, 8),
(4607, 6079, 1200, 14),
(4607, 6080, 3000, 20),
(4607, 6081, 6000, 26),
(4607, 6082, 11000, 32),
(4607, 6083, 16000, 38),
(4607, 6386, 900, 40),
(4607, 6492, 12000, 34),
(4607, 7130, 3000, 20),
(4607, 7378, 400, 28),
(4607, 8093, 300, 10),
(4607, 8107, 1600, 16),
(4607, 8108, 4000, 22),
(4607, 8109, 8000, 28),
(4607, 8110, 12000, 34),
(4607, 8111, 18000, 40),
(4607, 8123, 1200, 14),
(4607, 8125, 8000, 28),
(4607, 8126, 3000, 20),
(4607, 8130, 5000, 24),
(4607, 8132, 11000, 32),
(4607, 8193, 14000, 36),
(4607, 9475, 6000, 26),
(4607, 9476, 11000, 32),
(4607, 9477, 16000, 38),
(4607, 9486, 18000, 40),
(4607, 9580, 3000, 20),
(4607, 9581, 10000, 30),
(4607, 9593, 18000, 40),
(4607, 10877, 18000, 40),
(4607, 10878, 28000, 48),
(4607, 10879, 42000, 56),
(4607, 10882, 12000, 34),
(4607, 10883, 26000, 46),
(4607, 10889, 22000, 42),
(4607, 10891, 42000, 56),
(4607, 10895, 22000, 42),
(4607, 10896, 30000, 50),
(4607, 10897, 44000, 58),
(4607, 10902, 22000, 42),
(4607, 10903, 28000, 48),
(4607, 10904, 40000, 54),
(4607, 10905, 46000, 60),
(4607, 10910, 24000, 44),
(4607, 10913, 24000, 44),
(4607, 10914, 44000, 58),
(4607, 10918, 24000, 44),
(4607, 10919, 30000, 50),
(4607, 10920, 42000, 56),
(4607, 10930, 24000, 44),
(4607, 10931, 30000, 50),
(4607, 10932, 42000, 56),
(4607, 10935, 26000, 46),
(4607, 10936, 40000, 54),
(4607, 10939, 28000, 48),
(4607, 10940, 46000, 60),
(4607, 10943, 30000, 50),
(4607, 10944, 46000, 60),
(4607, 10948, 26000, 46),
(4607, 10949, 38000, 52),
(4607, 10950, 44000, 58),
(4607, 10954, 38000, 52),
(4607, 10956, 46000, 60),
(4607, 10959, 42000, 56),
(4607, 10962, 46000, 60),
(4607, 11025, 30000, 50),
(4607, 11026, 46000, 60),
(4607, 14820, 1500, 50),
(4607, 15434, 700, 36),
(4607, 15452, 5000, 24),
(4607, 15454, 10000, 30),
(4607, 15455, 14000, 36),
(4607, 15457, 22000, 42),
(4607, 15459, 28000, 48),
(4607, 15460, 40000, 54),
(4607, 17316, 700, 36),
(4607, 17317, 1200, 44),
(4607, 17318, 1900, 52),
(4607, 18806, 46000, 60),
(4607, 18808, 2300, 60),
(4607, 19313, 400, 28),
(4607, 19314, 700, 36),
(4607, 19315, 1200, 44),
(4607, 19316, 1900, 52),
(4607, 19317, 2300, 60),
(4607, 19320, 150, 20),
(4607, 19321, 500, 30),
(4607, 19322, 900, 40),
(4607, 19323, 1500, 50),
(4607, 19324, 2300, 60),
(4607, 20771, 44000, 58),
(4607, 27796, 3000, 20),
(4607, 27821, 1200, 44),
(4607, 27822, 1900, 52),
(4607, 27823, 2300, 60),
(4607, 27843, 2300, 60),
(4607, 27845, 2300, 60),
(4607, 27875, 1200, 50),
(4607, 27876, 1500, 60);
DELETE FROM `npc_trainer` WHERE `entry`=4607 && `spell` IN (19313, 19314, 19315, 19316, 19317, 19320, 19321, 19322, 19323, 19324, 27796, 27821, 27822, 27823, 27843, 27845, 27875, 27876);
INSERT INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES 
(4607, 19313, 2000, 0, 0, 28, 0, 5086),
(4607, 19313, 400, 0, 0, 28, 5302, 5875),
(4607, 19314, 3500, 0, 0, 36, 0, 5086),
(4607, 19314, 700, 0, 0, 36, 5302, 5875),
(4607, 19315, 5400, 0, 0, 44, 0, 5086),
(4607, 19315, 1200, 0, 0, 44, 5302, 5875),
(4607, 19316, 9500, 0, 0, 52, 0, 5086),
(4607, 19316, 1900, 0, 0, 52, 5302, 5875),
(4607, 19317, 11500, 0, 0, 60, 0, 5086),
(4607, 19317, 2300, 0, 0, 60, 5302, 5875),
(4607, 19320, 750, 0, 0, 20, 0, 5086),
(4607, 19320, 200, 0, 0, 20, 5302, 5875),
(4607, 19321, 2500, 0, 0, 30, 0, 5086),
(4607, 19321, 500, 0, 0, 30, 5302, 5875),
(4607, 19322, 4500, 0, 0, 40, 0, 5086),
(4607, 19322, 900, 0, 0, 40, 5302, 5875),
(4607, 19323, 7500, 0, 0, 50, 0, 5086),
(4607, 19323, 1500, 0, 0, 50, 5302, 5875),
(4607, 19324, 11500, 0, 0, 60, 0, 5086),
(4607, 19324, 2070, 0, 0, 60, 5302, 5875),
(4607, 27796, 3000, 0, 0, 20, 5302, 5875),
(4607, 27821, 1200, 0, 0, 44, 5302, 5875),
(4607, 27822, 1900, 0, 0, 52, 5302, 5875),
(4607, 27823, 2300, 0, 0, 60, 5302, 5875),
(4607, 27843, 2300, 0, 0, 60, 5302, 5875),
(4607, 27845, 2300, 0, 0, 60, 5302, 5875),
(4607, 27875, 1200, 0, 0, 50, 5302, 5875),
(4607, 27876, 1500, 0, 0, 60, 5302, 5875);
-- Father Lazarus
DELETE FROM `npc_trainer` WHERE `entry`=4608;
INSERT INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES 
(4608, 1252, 800, 12),
(4608, 1253, 10000, 30),
(4608, 1254, 18000, 40),
(4608, 1255, 10, 1),
(4608, 1256, 800, 12),
(4608, 1257, 5000, 24),
(4608, 1258, 100, 4),
(4608, 1259, 300, 10),
(4608, 1260, 2000, 18),
(4608, 1261, 6000, 26),
(4608, 1265, 200, 8),
(4608, 1268, 1200, 14),
(4608, 1269, 11000, 32),
(4608, 1275, 100, 6),
(4608, 1276, 1200, 14),
(4608, 1277, 800, 12),
(4608, 1278, 2000, 18),
(4608, 1279, 10000, 30),
(4608, 1280, 22000, 42),
(4608, 1283, 2000, 18),
(4608, 1284, 14000, 36),
(4608, 1287, 10000, 30),
(4608, 1288, 18000, 40),
(4608, 1293, 10000, 30),
(4608, 1298, 5000, 24),
(4608, 1300, 4000, 22),
(4608, 1301, 10000, 30),
(4608, 1425, 3000, 20),
(4608, 2013, 300, 10),
(4608, 2016, 4000, 22),
(4608, 2049, 30000, 50),
(4608, 2056, 100, 4),
(4608, 2057, 300, 10),
(4608, 2058, 1600, 16),
(4608, 2059, 4000, 22),
(4608, 2065, 18000, 40),
(4608, 2066, 3000, 20),
(4608, 2067, 38000, 52),
(4608, 2068, 44000, 58),
(4608, 2069, 26000, 46),
(4608, 2097, 4000, 22),
(4608, 2793, 14000, 36),
(4608, 2799, 12000, 34),
(4608, 2851, 100, 6),
(4608, 3046, 400, 28),
(4608, 6062, 16000, 38),
(4608, 6067, 10000, 30),
(4608, 6068, 14000, 36),
(4608, 6071, 8000, 28),
(4608, 6072, 12000, 34),
(4608, 6073, 200, 8),
(4608, 6079, 1200, 14),
(4608, 6080, 3000, 20),
(4608, 6081, 6000, 26),
(4608, 6082, 11000, 32),
(4608, 6083, 16000, 38),
(4608, 6386, 900, 40),
(4608, 6492, 12000, 34),
(4608, 7130, 3000, 20),
(4608, 7378, 400, 28),
(4608, 8093, 300, 10),
(4608, 8107, 1600, 16),
(4608, 8108, 4000, 22),
(4608, 8109, 8000, 28),
(4608, 8110, 12000, 34),
(4608, 8111, 18000, 40),
(4608, 8123, 1200, 14),
(4608, 8125, 8000, 28),
(4608, 8126, 3000, 20),
(4608, 8130, 5000, 24),
(4608, 8132, 11000, 32),
(4608, 8193, 14000, 36),
(4608, 9475, 6000, 26),
(4608, 9476, 11000, 32),
(4608, 9477, 16000, 38),
(4608, 9486, 18000, 40),
(4608, 9580, 3000, 20),
(4608, 9581, 10000, 30),
(4608, 9593, 18000, 40),
(4608, 10877, 18000, 40),
(4608, 10878, 28000, 48),
(4608, 10879, 42000, 56),
(4608, 10882, 12000, 34),
(4608, 10883, 26000, 46),
(4608, 10889, 22000, 42),
(4608, 10891, 42000, 56),
(4608, 10895, 22000, 42),
(4608, 10896, 30000, 50),
(4608, 10897, 44000, 58),
(4608, 10902, 22000, 42),
(4608, 10903, 28000, 48),
(4608, 10904, 40000, 54),
(4608, 10905, 46000, 60),
(4608, 10910, 24000, 44),
(4608, 10913, 24000, 44),
(4608, 10914, 44000, 58),
(4608, 10918, 24000, 44),
(4608, 10919, 30000, 50),
(4608, 10920, 42000, 56),
(4608, 10930, 24000, 44),
(4608, 10931, 30000, 50),
(4608, 10932, 42000, 56),
(4608, 10935, 26000, 46),
(4608, 10936, 40000, 54),
(4608, 10939, 28000, 48),
(4608, 10940, 46000, 60),
(4608, 10943, 30000, 50),
(4608, 10944, 46000, 60),
(4608, 10948, 26000, 46),
(4608, 10949, 38000, 52),
(4608, 10950, 44000, 58),
(4608, 10954, 38000, 52),
(4608, 10956, 46000, 60),
(4608, 10959, 42000, 56),
(4608, 10962, 46000, 60),
(4608, 11025, 30000, 50),
(4608, 11026, 46000, 60),
(4608, 14820, 1500, 50),
(4608, 15434, 700, 36),
(4608, 15452, 5000, 24),
(4608, 15454, 10000, 30),
(4608, 15455, 14000, 36),
(4608, 15457, 22000, 42),
(4608, 15459, 28000, 48),
(4608, 15460, 40000, 54),
(4608, 17316, 700, 36),
(4608, 17317, 1200, 44),
(4608, 17318, 1900, 52),
(4608, 18806, 46000, 60),
(4608, 18808, 2300, 60),
(4608, 19313, 400, 28),
(4608, 19314, 700, 36),
(4608, 19315, 1200, 44),
(4608, 19316, 1900, 52),
(4608, 19317, 2300, 60),
(4608, 19320, 150, 20),
(4608, 19321, 500, 30),
(4608, 19322, 900, 40),
(4608, 19323, 1500, 50),
(4608, 19324, 2300, 60),
(4608, 20771, 44000, 58),
(4608, 27796, 3000, 20),
(4608, 27821, 1200, 44),
(4608, 27822, 1900, 52),
(4608, 27823, 2300, 60),
(4608, 27843, 2300, 60),
(4608, 27845, 2300, 60),
(4608, 27875, 1200, 50),
(4608, 27876, 1500, 60);
DELETE FROM `npc_trainer` WHERE `entry`=4608 && `spell` IN (19313, 19314, 19315, 19316, 19317, 19320, 19321, 19322, 19323, 19324, 27796, 27821, 27822, 27823, 27843, 27845, 27875, 27876);
INSERT INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES 
(4608, 19313, 2000, 0, 0, 28, 0, 5086),
(4608, 19313, 400, 0, 0, 28, 5302, 5875),
(4608, 19314, 3500, 0, 0, 36, 0, 5086),
(4608, 19314, 700, 0, 0, 36, 5302, 5875),
(4608, 19315, 5400, 0, 0, 44, 0, 5086),
(4608, 19315, 1200, 0, 0, 44, 5302, 5875),
(4608, 19316, 9500, 0, 0, 52, 0, 5086),
(4608, 19316, 1900, 0, 0, 52, 5302, 5875),
(4608, 19317, 11500, 0, 0, 60, 0, 5086),
(4608, 19317, 2300, 0, 0, 60, 5302, 5875),
(4608, 19320, 750, 0, 0, 20, 0, 5086),
(4608, 19320, 200, 0, 0, 20, 5302, 5875),
(4608, 19321, 2500, 0, 0, 30, 0, 5086),
(4608, 19321, 500, 0, 0, 30, 5302, 5875),
(4608, 19322, 4500, 0, 0, 40, 0, 5086),
(4608, 19322, 900, 0, 0, 40, 5302, 5875),
(4608, 19323, 7500, 0, 0, 50, 0, 5086),
(4608, 19323, 1500, 0, 0, 50, 5302, 5875),
(4608, 19324, 11500, 0, 0, 60, 0, 5086),
(4608, 19324, 2070, 0, 0, 60, 5302, 5875),
(4608, 27796, 3000, 0, 0, 20, 5302, 5875),
(4608, 27821, 1200, 0, 0, 44, 5302, 5875),
(4608, 27822, 1900, 0, 0, 52, 5302, 5875),
(4608, 27823, 2300, 0, 0, 60, 5302, 5875),
(4608, 27843, 2300, 0, 0, 60, 5302, 5875),
(4608, 27845, 2300, 0, 0, 60, 5302, 5875),
(4608, 27875, 1200, 0, 0, 50, 5302, 5875),
(4608, 27876, 1500, 0, 0, 60, 5302, 5875);

-- Add missing completion text for Summon Felsteed quests.
UPDATE `quest_template` SET `OfferRewardText`='So, you\'ve decided to grace my presence again. How kind of you.$B$BMy acolytes wondered if you\'d ever show up. I told them there was no doubt. When power is concerned, you are drawn in like a moth to the flame.' WHERE `entry` IN (3631, 4487, 4488);



-- Fix requirements for The Completed Orb of Dar'Orahil and Noh'Orahil.
UPDATE `quest_template` SET `ExclusiveGroup`=0, `PrevQuestId`=4962 WHERE `entry`=4964;
UPDATE `quest_template` SET `ExclusiveGroup`=0, `PrevQuestId`=4963 WHERE `entry`=4975;

-- Improved script for quest Cleansing of the Orb of Orahil.
DELETE FROM `quest_start_scripts` WHERE `id`=4961;
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (4961, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2629, 0, 0, 0, 0, 0, 0, 0, 0, 'Cleansing of the Orb of Orahil: Tabetha - Say Text');
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (4961, 0, 60, 3, 0, 0, 0, 0, 0, 0, 4, 0, 4961, 0, 0, 0, 0, 0, 0, 0, 'Cleansing of the Orb of Orahil: Tabetha - Start Waypoints');
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (4961, 0, 4, 147, 3, 2, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cleansing of the Orb of Orahil: Tabetha - Remove Quest Giver Flag');

-- Waypoints for Tabetha when quest Cleansing of the Orb of Orahil is started.
INSERT INTO `creature_movement_special` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES 
(4961, 1, -4035.85, -3384.24, 38.9959, 100, 0, 0, 0),
(4961, 2, -4037.6, -3381.32, 37.9133, 100, 0, 0, 0),
(4961, 3, -4037.38, -3378.67, 37.7076, 100, 0, 0, 0),
(4961, 4, -4033.77, -3376.26, 38.0439, 100, 0, 0, 0),
(4961, 5, -4027.12, -3377.37, 38.1654, 100, 0, 0, 0),
(4961, 6, -4020.59, -3382, 38.1995, 100, 6000, 0, 496106),
(4961, 7, -4026.94, -3377.41, 38.1672, 100, 0, 0, 0),
(4961, 8, -4034.27, -3376.6, 37.9825, 100, 0, 0, 0),
(4961, 9, -4038.45, -3380.05, 37.733, 100, 0, 0, 0),
(4961, 10, -4035.32, -3384.92, 38.9973, 100, 0, 0, 0),
(4961, 11, -4031.56, -3392.97, 38.9974, 2.1293, 1000, 0, 496111),
(4961, 12, -4031.56, -3392.97, 38.9974, 2.1293, 0, 0, 0);

-- Waypoint scripts for Tabetha.
DELETE FROM `creature_movement_scripts` WHERE `id`=496106;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (496106, 0, 15, 9097, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cleansing of the Orb of Orahil: Tabetha - Cast Spell Summon Demon of the Orb');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (496106, 0, 25, 1, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cleansing of the Orb of Orahil: Tabetha - Set Run');
DELETE FROM `creature_movement_scripts` WHERE `id`=496111;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (496111, 0, 4, 147, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cleansing of the Orb of Orahil: Tabetha - Add Quest Giver Flag');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (496111, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cleansing of the Orb of Orahil: Tabetha - Set Walk');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (496111, 0, 20, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cleansing of the Orb of Orahil: Tabetha - Move Idle');

-- Missing weapon used by Demon of the Orb.
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES (6549, 5747, 0, 0);
UPDATE `creature_template` SET `equipment_id`=6549 WHERE `entry`=6549;




-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
