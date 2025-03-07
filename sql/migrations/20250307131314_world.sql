DROP PROCEDURE IF EXISTS add_migration;
DELIMITER ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20250307131314');
IF v = 0 THEN
INSERT INTO `migrations` VALUES ('20250307131314');
-- Add your query below.

ALTER TABLE `characters`
	ADD COLUMN `total_deaths` INT(11) NULL DEFAULT '0' AFTER `world_phase_mask`;

-- End of migration.
END IF;
END??
DELIMITER ;
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
