DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190312003506');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190312003506');
-- Add your query below.

INSERT INTO `command` (`name`, `security`, `help`, `flags`) VALUES ('reload custom_pets', '5', 'Syntax: .reload custom_pets.', '0');

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
