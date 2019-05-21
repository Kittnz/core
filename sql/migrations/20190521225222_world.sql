DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190521225222');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190521225222');
-- Add your query below.

replace into creature_template (entry, name, subname, display_id1, level_min, level_max, health_min, health_max, scale, faction, npc_flags, script_name) values
(50071, 'Daenerys', 'The True Queen', 3323, 60, 60, 12761, 12761, 1.25, 35, 1, 'daenerys');

replace into creature_template (entry, name, subname, display_id1, level_min, level_max, health_min, health_max, scale, rank, faction, script_name) values
(50072, 'Drogon', '', 6377, 63, 63, 998712, 998712, 4, 3, 31, 'drogon');

replace into broadcast_text (ID, MaleText) values
('90002', 'What... What is this place? Am I alive? I need time to think.\n\nWe had everything, J...');
replace into npc_text (ID, BroadcastTextID0) values ('90002', '90002');

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
