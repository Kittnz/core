DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190712192737');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190712192737');
-- Add your query below.

-- Godrick Bell, set faction later!
replace into creature_template (entry, name, subname, scale, level_min, level_max, health_min, health_max, display_id1, faction, type, inhabit_type, npc_flags) values
(50104, 'Godrick Bell', 'Scarlet Crusade Emissary', 1, 4, 7, 978, 987, 10343, 35, 7, 3, 1);

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
