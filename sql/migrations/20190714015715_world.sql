DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190714015715');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190714015715');
-- Add your query below.

update creature set position_x = -11017.14, position_y = -1884.88, position_z = 49.83, orientation = 2.37 where guid = 4008;
update creature set position_x = -11002.20, position_y = -1913.02, position_z = 49.95, orientation = 4.57 where guid = 4007;
update creature set position_x = -11984.88, position_y = -1958.80, position_z = 42.14, orientation = 0.42 where guid = 4148;

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
