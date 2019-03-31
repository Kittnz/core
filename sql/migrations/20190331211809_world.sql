DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190331211809');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190331211809');
-- Add your query below.

replace into creature_equip_template (entry, equipentry1) values (50055, 13262);
update creature_template set equipment_id = 50055 where entry = 50055;

replace into creature_template_addon(entry, auras) values (50056, 28126);

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
