DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20200419213418');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20200419213418');
-- Add your query below.

UPDATE `gameobject_template` SET `name`='Survival Tent (Alliance)' WHERE (`entry`='1000001') AND (`patch`='0');
UPDATE `gameobject_template` SET `name`='Survival Tent (Horde)' WHERE (`entry`='1000236') AND (`patch`='0');
UPDATE `gameobject_template` SET `script_name`='go_survival_tent' WHERE (`entry`='1000236') AND (`patch`='0');

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
