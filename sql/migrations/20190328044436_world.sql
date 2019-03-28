DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190328044436');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190328044436');
-- Add your query below.

-- Horde and Alliance barbers
replace into creature_template (entry, name, subname, scale, level_min, level_max, health_min, health_max, display_id1, faction, type, inhabit_type, npc_flags) values
(50053, 'Genevieve', 'Barber', 1, 20, 20, 1120, 1120, 3486, 35, 7, 3, 4),
(50054, 'Theresa Wilson',  'Barber', 1, 20, 20, 1120, 1120, 1592, 35, 7, 3, 4);

-- In Crossroads and Stromwind's Taverns
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50053, 0, -8624.2, 404.162, 103.703, 5.30495);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50054, 1, -395.705, -2657.17, 96.2232, 1.77392);

replace into npc_vendor (entry, item) values 
(50053, 50107),
(50053, 50108),
(50053, 50109),
(50053, 50110),
(50053, 50111),
(50053, 50112),
(50053, 50113),
(50053, 50114),

(50053, 50115),
(50053, 50116),
(50053, 50117),
(50053, 50118),
(50053, 50119),
(50053, 50120),
(50053, 50121),
(50053, 50123),
(50053, 50124),

(50053, 50125),
(50053, 50126),
(50053, 50127),
(50053, 50128),
(50053, 50129),
(50053, 50130),
(50053, 50131),
(50053, 50132),
(50053, 50133),

(50053, 50134),
(50053, 50135),
(50053, 50136),
(50053, 50137),
(50053, 50138),
(50053, 50139),
(50053, 50140),
(50053, 50141),
(50053, 50142),

(50054, 50143),
(50054, 50144),
(50054, 50145),
(50054, 50146),
(50054, 50147),
(50054, 50148),
(50054, 50149),
(50054, 50150),
(50054, 50151),
(50054, 50152),

(50054, 50153),
(50054, 50154),
(50054, 50155),
(50054, 50156),
(50054, 50157),
(50054, 50158),
(50054, 50159),
(50054, 50160),
	
(50054, 50161),
(50054, 50162),
(50054, 50163),
(50054, 50164),
(50054, 50165),
(50054, 50166),
(50054, 50167),
(50054, 50168),
(50054, 50169),
(50054, 50170),
(50054, 50171);

-- Remove cast time for SpellID 6755 (Tell Joke)
replace into spell_mod (id, CastingTimeIndex) values (6755, 0);

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
