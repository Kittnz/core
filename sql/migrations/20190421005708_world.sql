DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190421005708');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190421005708');
-- Add your query below.

update creature_template set regeneration = 3, health_min = 364578, health_max = 364578 where entry = 50056;
update creature_template set detection_range = 5 where entry = 3581;
update creature_template set detection_range = 10 where entry = 8901;
update creature_template set flags_extra = 128 where entry = 11500;

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
