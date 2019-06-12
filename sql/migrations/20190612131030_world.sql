DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190612131030');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190612131030');
-- Add your query below.

update creature_template set faction = 35 where entry in (50078, 50079);
update creature set spawntimesecsmin = 600, spawntimesecsmax = 600 where id in (50078, 50079);

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
