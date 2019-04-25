DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190425113759');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190425113759');
-- Add your query below.

-- Childern's Week monthly:

UPDATE game_event SET occurence = 42480 WHERE entry = 10;

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
