DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190328210745');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190328210745');
-- Add your query below.

update quest_template set rewitemid2 = 18807, rewitemcount2 = 1 where entry = 8258;

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
