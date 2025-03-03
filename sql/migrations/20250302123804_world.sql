DROP PROCEDURE IF EXISTS add_migration;
DELIMITER ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20250302123804');
IF v = 0 THEN
INSERT INTO `migrations` VALUES ('20250302123804');
-- Add your query below.

UPDATE `item_template` SET `spellcooldown_1`=3600000 WHERE  `entry`=83000;
UPDATE `item_template` SET `spellid_1`=21342, `spellcooldown_1`=3600000 WHERE  `entry`=83001;

-- End of migration.
END IF;
END??
DELIMITER ;
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
