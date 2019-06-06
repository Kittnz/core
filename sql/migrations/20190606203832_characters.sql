DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190606203832');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190606203832');
-- Add your query below.

alter table characters add ignore_titles tinyint(3) not null default 0;

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
