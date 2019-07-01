DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190701130447');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190701130447');
-- Add your query below.

-- Custom Rested GO for Custom Inn:
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES 
(1000024, 0, 5, 381, 'Custom Rested Bonus', 0, 0, 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_custom_rested');

update creature_template set health_min = 60437, health_max = 60437, mana_min = 20312, mana_max = 20312, unit_class = 2 where entry = 50080;

replace into creature_equip_template (entry, equipentry1) values (50088, 50243);
replace into creature_template_addon (entry, auras, b2_0_sheath) values (50088, 22650, 1);
replace into creature_template (entry, display_id1, name, subname, level_min, level_max, health_min, health_max, mana_min, mana_max, armor, faction, speed_walk, speed_run, scale, detection_range, rank, dmg_min, dmg_max, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, type_flags, loot_id, gold_min, gold_max, movement_type, inhabit_type, regeneration, equipment_id, mechanic_immune_mask, flags_extra, script_name) values
(50088, 14357, 'Echo of Gerastrasz', '', 63, 63, 10632, 10632, 20312, 20312, 4490, 103, 1, 1.14286, 3, 20, 3, 1130, 1500, 285, 1, 2200, 1500, 600, 825, 100, 2, 76, 0, 27809, 43403, 0, 1, 3, 50080, 2764783455, 33025, '');

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
