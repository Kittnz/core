DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190507235735');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190507235735');
-- Add your query below.

update creature_template set inhabit_type = 2 where entry = 3581;
update item_template set bonding = 1 where entry in (18963, 18964, 18965, 18966, 18967);

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
