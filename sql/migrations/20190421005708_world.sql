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
update item_template set description = 'If you have this, that means that someone loves you. It will have, exactly, the value that you want to give it.' where entry = 22130;
update creature_template set display_id1 = 11035 where entry = 351;
update creature_template set faction = 35 where entry in (50017, 50018, 50019, 50020, 50021, 50022, 50023, 50024, 50025);

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
