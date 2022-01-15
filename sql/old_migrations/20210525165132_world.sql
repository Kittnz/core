DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20210525165132');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20210525165132');
-- Add your query below.


-- Remove disabled spawns from db.
DELETE FROM `gameobject` WHERE `spawn_flags` & 2;


-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
