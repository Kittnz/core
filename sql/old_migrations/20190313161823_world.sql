DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190313161823');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190313161823');
-- Add your query below.

/* Skill fixes */
insert ignore into creature_template (entry, display_id1, name, level_min, level_max, health_min, health_max, armor, faction, scale, detection_range, call_for_help_range, xp_multiplier, dmg_min, dmg_max, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, gold_max, inhabit_type, regeneration, flags_extra) values
(14756, 14779, 'Tiny Red Dragon', 1, 1, 64, 64, 20, 188, 0.25, 20, 5, 1, 11, 11, 44, 1, 2000, 2200, 1, 1, 100, 1, 1, 3, 1, 2),
(14755, 14778, 'Tiny Green Dragon', 1, 1, 64, 64, 20, 188, 0.25, 20, 5, 1, 11, 11, 44, 1, 2000, 2200, 1, 1, 100, 1, 1, 3, 1, 2),
(15661, 15595, 'Baby Shark', 1, 1, 64, 64, 20, 188, 0.25, 20, 5, 1, 11, 11, 44, 1, 2000, 2200, 1, 1, 100, 1, 1, 3, 1, 2),
(16456, 16189, 'Poley', 1, 1, 64, 64, 20, 188, 0.25, 20, 5, 1, 11, 11, 44, 1, 2000, 2200, 1, 1, 100, 1, 1, 3, 1, 2),
(17254, 16942, 'White Tiger Cub', 1, 1, 64, 64, 20, 188, 0.5, 20, 5, 1, 11, 11, 44, 1, 2000, 2200, 1, 1, 100, 1, 1, 3, 1, 2),
(16445, 15398, 'Terky', 1, 1, 64, 64, 20, 188, 0.65, 20, 5, 1, 11, 11, 44, 1, 2000, 2200, 1, 1, 100, 1, 1, 3, 1, 2);
insert ignore into creature_template (entry, name, display_id1) values
(351, 'Peasant', 87),
(17258, 'Purple Ogre Costume', 17273);
/* Fixing pet scales */
update creature_template set scale = 0.35 where entry >= 14629 and entry <= 14633;
update creature_template set scale = 0.25 where entry = 7554 or entry = 7556;

update item_template set name = "Darkmoon Faire Tabard" where entry = 23710;

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
