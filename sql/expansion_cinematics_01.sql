ALTER TABLE `cinematic_waypoints` 
ADD COLUMN `id` INT(11) NOT NULL AUTO_INCREMENT AFTER `comment`,
ADD PRIMARY KEY (`id`);
;


INSERT INTO `cinematic_waypoints` (`cinematic`, `timer`, `position_x`, `position_y`, `position_z`, `comment`) VALUES ('166', '0', '1017', '61', '19', 'Goblin 1');
INSERT INTO `cinematic_waypoints` (`cinematic`, `timer`, `position_x`, `position_y`, `position_z`, `comment`) VALUES ('166', '5000', '1043', '39', '17', 'Goblin 2');
INSERT INTO `cinematic_waypoints` (`cinematic`, `timer`, `position_x`, `position_y`, `position_z`, `comment`) VALUES ('166', '10000', '1085', '10', '14', 'Goblin 3');
INSERT INTO `cinematic_waypoints` (`cinematic`, `timer`, `position_x`, `position_y`, `position_z`, `comment`) VALUES ('166', '15000', '1154', '2', '10', 'Goblin 4');
INSERT INTO `cinematic_waypoints` (`cinematic`, `timer`, `position_x`, `position_y`, `position_z`, `comment`) VALUES ('166', '20000', '1210', '21', '8', 'Goblin 5');
INSERT INTO `cinematic_waypoints` (`cinematic`, `timer`, `position_x`, `position_y`, `position_z`, `comment`) VALUES ('166', '25000', '1219', '50', '8', 'Goblin 6');
INSERT INTO `cinematic_waypoints` (`cinematic`, `timer`, `position_x`, `position_y`, `position_z`, `comment`) VALUES ('166', '30000', '1216', '143', '20', 'Goblin 7');
INSERT INTO `cinematic_waypoints` (`cinematic`, `timer`, `position_x`, `position_y`, `position_z`, `comment`) VALUES ('166', '35000', '1294', '328', '107', 'Goblin 8');
INSERT INTO `cinematic_waypoints` (`cinematic`, `timer`, `position_x`, `position_y`, `position_z`, `comment`) VALUES ('166', '40000', '1402', '566', '254', 'Goblin 9');
INSERT INTO `cinematic_waypoints` (`cinematic`, `timer`, `position_x`, `position_y`, `position_z`, `comment`) VALUES ('166', '45000', '1586', '869', '184', 'Goblin 10');
INSERT INTO `cinematic_waypoints` (`cinematic`, `timer`, `position_x`, `position_y`, `position_z`, `comment`) VALUES ('166', '50000', '1637', '1036', '222', 'Goblin 11');
INSERT INTO `cinematic_waypoints` (`cinematic`, `timer`, `position_x`, `position_y`, `position_z`, `comment`) VALUES ('166', '55000', '1683', '1246', '290', 'Goblin 12');
INSERT INTO `cinematic_waypoints` (`cinematic`, `timer`, `position_x`, `position_y`, `position_z`, `comment`) VALUES ('166', '60000', '1725', '1321', '252', 'Goblin 13');
INSERT INTO `cinematic_waypoints` (`cinematic`, `timer`, `position_x`, `position_y`, `position_z`, `comment`) VALUES ('166', '71000', '1814', '1391', '154', 'Goblin 14');


INSERT INTO `cinematic_waypoints` (`cinematic`, `timer`, `position_x`, `position_y`, `position_z`, `comment`) VALUES ('164', '0', '-4662', '-3242', '289', 'Elf 1');
INSERT INTO `cinematic_waypoints` (`cinematic`, `timer`, `position_x`, `position_y`, `position_z`, `comment`) VALUES ('164', '0', '-4723', '-3383', '360', 'Elf 2');
INSERT INTO `cinematic_waypoints` (`cinematic`, `timer`, `position_x`, `position_y`, `position_z`, `comment`) VALUES ('164', '0', '-4876', '-3543', '305', 'Elf 3');
INSERT INTO `cinematic_waypoints` (`cinematic`, `timer`, `position_x`, `position_y`, `position_z`, `comment`) VALUES ('164', '0', '-4984', '-3675', '356', 'Elf 4');
INSERT INTO `cinematic_waypoints` (`cinematic`, `timer`, `position_x`, `position_y`, `position_z`, `comment`) VALUES ('164', '0', '-5082', '-3881', '407', 'Elf 5');
INSERT INTO `cinematic_waypoints` (`cinematic`, `timer`, `position_x`, `position_y`, `position_z`, `comment`) VALUES ('164', '0', '-5231', '-3991', '411', 'Elf 6');
INSERT INTO `cinematic_waypoints` (`cinematic`, `timer`, `position_x`, `position_y`, `position_z`, `comment`) VALUES ('164', '0', '-5344', '-4136', '456', 'Elf 7');
INSERT INTO `cinematic_waypoints` (`cinematic`, `timer`, `position_x`, `position_y`, `position_z`, `comment`) VALUES ('164', '0', '-5414', '-4203', '501', 'Elf 8');
INSERT INTO `cinematic_waypoints` (`cinematic`, `timer`, `position_x`, `position_y`, `position_z`, `comment`) VALUES ('164', '0', '-5480', '-4281', '499', 'Elf 9');
INSERT INTO `cinematic_waypoints` (`cinematic`, `timer`, `position_x`, `position_y`, `position_z`, `comment`) VALUES ('164', '0', '-5628', '-4327', '418', 'Elf 10');
INSERT INTO `cinematic_waypoints` (`cinematic`, `timer`, `position_x`, `position_y`, `position_z`, `comment`) VALUES ('164', '0', '-5630', '-4333', '406', 'Elf 11');

UPDATE `cinematic_waypoints` SET `timer` = '4400' WHERE (`id` = '63');
UPDATE `cinematic_waypoints` SET `timer` = '8800' WHERE (`id` = '64');
UPDATE `cinematic_waypoints` SET `timer` = '13200' WHERE (`id` = '65');
UPDATE `cinematic_waypoints` SET `timer` = '17600' WHERE (`id` = '66');
UPDATE `cinematic_waypoints` SET `timer` = '22000' WHERE (`id` = '67');
UPDATE `cinematic_waypoints` SET `timer` = '26400' WHERE (`id` = '68');
UPDATE `cinematic_waypoints` SET `timer` = '30800' WHERE (`id` = '69');
UPDATE `cinematic_waypoints` SET `timer` = '35200' WHERE (`id` = '70');
UPDATE `cinematic_waypoints` SET `timer` = '44000' WHERE (`id` = '71');
UPDATE `cinematic_waypoints` SET `timer` = '53000' WHERE (`id` = '72');
