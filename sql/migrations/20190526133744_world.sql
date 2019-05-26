DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190526133744');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190526133744');
-- Add your query below.

UPDATE `quest_template` SET `ZoneOrSort`='33' WHERE `entry`='50230';

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
