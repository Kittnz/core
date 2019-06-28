DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190627185832');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190627185832');
-- Add your query below.

update map_template set level_min=60, level_max=60, player_limit=5 WHERE entry=269;
replace into creature_equip_template (entry, equipentry1) values (50080, 50243);
replace into creature_template_addon (entry, auras, b2_0_sheath) values (50080, 28126, 1);
replace into creature_template (entry, display_id1, name, subname, level_min, level_max, health_min, health_max, armor, faction, speed_walk, speed_run, scale, detection_range, rank, dmg_min, dmg_max, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, type_flags, loot_id, gold_min, gold_max, movement_type, inhabit_type, regeneration, equipment_id, mechanic_immune_mask, flags_extra, script_name) values
(50080, 14357, 'Commander Gerastrasz', 'Corrupted Red Dragonflight', 63, 63, 80132, 80132, 4490, 103, 1, 1.14286, 3, 20, 3, 1130, 1500, 285, 1, 2200, 1500, 600, 825, 100, 2, 76, 0, 27809, 43403, 0, 1, 3, 50080, 2764783455, 33025, 'boss_gerastrasz');

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
