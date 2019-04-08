DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190408032755');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190408032755');
-- Add your query below.

replace into creature_template (entry, display_id1, name, subname, level_min, level_max, health_min, health_max, faction, script_name, scale) values
('50057', '16361', 'Son of Turtlhu', '', '1', '1', '64', '64', '35', '', 0.25);
replace into custom_pet_entry_relation (item_entry, creature_entry) values
('50202', '50057'); -- Son of Turtlhu

replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values
(50056, 20623, 4.76, 0, 1, 1),
(50056, 20622, 4.76, 0, 1, 1),
(50056, 20624, 4.76, 0, 1, 1),
(50056, 20621, 4.76, 0, 1, 1),
(50056, 20599, 4.76, 0, 1, 1),
(50056, 20628, 4.76, 0, 1, 1),
(50056, 20626, 4.76, 0, 1, 1),
(50056, 20630, 4.76, 0, 1, 1),
(50056, 20625, 4.76, 0, 1, 1),
(50056, 20627, 4.76, 0, 1, 1),
(50056, 20629, 4.76, 0, 1, 1),
(50056, 20633, 4.76, 0, 1, 1),
(50056, 20631, 4.76, 0, 1, 1),
(50056, 20634, 4.76, 0, 1, 1),
(50056, 20577, 4.76, 0, 1, 1),
(50056, 20637, 4.76, 0, 1, 1),
(50056, 20635, 4.76, 0, 1, 1),
(50056, 20638, 4.76, 0, 1, 1),
(50056, 20639, 4.76, 0, 1, 1),
(50056, 20636, 4.76, 0, 1, 1),
(50056, 20578, 4.76, 0, 1, 1),

(50056, 18665, 3.5, 1, 1, 1),

(50056, 50202, 100, 2, 1, 1),

(50056, 50203, 100, 3, 50, 100);

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
