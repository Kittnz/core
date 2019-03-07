DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190307222504');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190307222504');
-- Add your query below.

DELETE FROM `command` WHERE `name` = 'reload shop';
INSERT INTO `command` (`name`, `security`, `help`, `flags`) VALUES ('reload shop', '5', 'Syntax: .reload shop.', '0');

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
