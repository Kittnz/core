DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20230813191030');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20230813191030');
-- Add your query below.

UPDATE `warden_scans` SET `build_max` = 6141 WHERE `id` IN (74, 75, 76, 77, 78);

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
