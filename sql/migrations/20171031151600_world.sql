DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20171031151600');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20171031151600');
-- Add your query below.

DELETE FROM `gameobject_loot_template` WHERE `item` IN (2160,3591,2156,3592,2158,2159);

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
