DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190604002111');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190604002111');
-- Add your query below.

update item_template set name = 'White Tabard of Stormwind' where entry = 50090;

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
