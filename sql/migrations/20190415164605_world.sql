DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190415164605');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190415164605');
-- Add your query below.

update creature_template set health_min = 398562, health_max = 398562 where entry = 50056;
update gameobject set spawntimesecsmin = 7200, spawntimesecsmax = 7200 where guid = 3998716;

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
