DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190707183451');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190707183451');
-- Add your query below.

update creature_template set gold_min = 0, gold_max = 0, mechanic_immune_mask = 617299931 where entry = 50080;
update creature_template set gold_min = 33403, gold_max = 63403 where entry = 50080;

replace into creature_template (entry, name, display_id1, level_min, level_max, health_min, health_max, faction) values
(50100, 'Riding Frayfeather Hippogryph', 3210, 5, 5, 100, 100, 35);

replace into custom_mount_entry_relation values
(50419, 50100);

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
