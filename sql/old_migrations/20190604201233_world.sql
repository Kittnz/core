DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190604201233');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190604201233');
-- Add your query below.

UPDATE `battleground_template` SET `min_level` = '0' WHERE (`id` = '2') and (`patch` = '3');
UPDATE `battleground_template` SET `min_level` = '0' WHERE (`id` = '3') and (`patch` = '5');
UPDATE `battleground_template` SET `min_level` = '0' WHERE (`id` = '2') and (`patch` = '5');
UPDATE `battleground_template` SET `min_level` = '0' WHERE (`id` = '2') and (`patch` = '6');
UPDATE `battleground_template` SET `min_level` = '0' WHERE (`id` = '3') and (`patch` = '6');

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
