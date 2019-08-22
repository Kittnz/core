DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190822222456');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190822222456');
-- Add your query below.

update creature_loot_template set patch_max = 10 where item = 17782;

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
