DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20180611005735');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20180611005735');
-- Add your query below.

DELETE FROM `gameobject` WHERE `guid` IN (20959, 20960, 21114, 21115, 21116, 21156, 22022, 22023, 22030, 22031, 22032, 22033, 29194, 29204, 29659, 29805, 31986, 31987, 35461, 35475, 35789, 35791, 35796, 35835, 35836, 35837, 35838, 35839, 35840, 35841, 35842, 35843, 35844, 35845, 35846, 35847, 35849, 35850, 35851, 35852, 35853, 35854, 35855, 35856, 35857, 35858, 35859, 35867, 42059, 42060, 42450, 42453, 42455, 42464, 42882, 42883, 42884, 42885, 42886, 42887);
DELETE FROM `pool_gameobject` WHERE `guid` IN (20959, 20960, 21114, 21115, 21116, 21156, 22022, 22023, 22030, 22031, 22032, 22033, 29194, 29204, 29659, 29805, 31986, 31987, 35461, 35475, 35789, 35791, 35796, 35835, 35836, 35837, 35838, 35839, 35840, 35841, 35842, 35843, 35844, 35845, 35846, 35847, 35849, 35850, 35851, 35852, 35853, 35854, 35855, 35856, 35857, 35858, 35859, 35867, 42059, 42060, 42450, 42453, 42455, 42464, 42882, 42883, 42884, 42885, 42886, 42887);

DELETE FROM `gameobject_scripts` WHERE `id` IN (35843, 35844, 35845, 35846, 35847); -- ?????

UPDATE `gameobject` SET `patch_min`='8' WHERE `id`='181085';

DELETE FROM `gameobject` WHERE `guid` IN (398037, 399037, 398038, 399038, 398036, 399036);
DELETE FROM `pool_gameobject` WHERE `pool_entry` IN (32960, 32965, 32969);
DELETE FROM `pool_template` WHERE `entry` IN (32960, 32965, 32969);

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
