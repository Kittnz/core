DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190329162356');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190329162356');
-- Add your query below.

update item_template set delay = 2000, dmg_min1 = 70, dmg_max1 = 90 where entry = 50094;
update item_template set bonding = 0 where entry in (50026, 50027);
update item_template set inventory_type = 4 where entry = 50027;
update item_template set class = 13, subclass = 0 where entry in (18250, 11078, 13304);

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
