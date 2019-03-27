DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190327215150');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190327215150');
-- Add your query below.

replace into creature_template (entry, display_id1, name, subname, level_min, level_max, health_min, health_max, faction, script_name, scale) values
('50050', '15381', 'Darkmoon Steam Tonk', '', '1', '1', '64', '64', '35', '', 1),

replace into custom_pet_entry_relation (item_entry, creature_entry) values
('50200', '50050'), -- Darkmoon Steam Tonk

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
