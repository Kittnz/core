DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190330163706');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190330163706');
-- Add your query below.

replace into creature_equip_template (entry, equipentry1) values
(50037, 1822);
update creature_template set equipment_id = 50037 where entry = 50037;

replace into creature_equip_template (entry, equipentry1) values
(50053, 13262);
replace into creature_template (entry, display_id1, name, level_min, level_max, health_min, health_max, mana_min, mana_max, armor, faction, speed_walk, speed_run, scale, rank, dmg_min, dmg_max,
attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, unit_class, beast_family, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, type_flags, loot_id, holy_res, fire_res, nature_res,
frost_res, shadow_res, arcane_res, gold_min, gold_max, movement_type, inhabit_type, regeneration, equipment_id, mechanic_immune_mask, script_name) values
(50053, 40, 'Avatar of Pompa', 63, 63, 512000, 512000, 120000, 120000, 5120, 31, 1, 1.14286, 2, 3, 2617, 2818, 312, 1, 1800, 1000, 1, 0, 400, 550, 100, 10, 4, 0, 30, 30, 30, 30,
30, 30, 0, 0, 1, 3, 1, 50053, 617299803, 'boss_avatar_of_pompa');

replace into creature_template (entry, display_id1, name, subname, level_min, level_max, health_min, health_max, mana_min, mana_max, armor, faction, speed_walk, speed_run, scale, rank, dmg_min, dmg_max,
attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, unit_class, beast_family, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, type_flags, loot_id, holy_res, fire_res, nature_res,
frost_res, shadow_res, arcane_res, gold_min, gold_max, movement_type, inhabit_type, regeneration, equipment_id, mechanic_immune_mask, script_name) values
(50054, 16361, 'Turtlhu, the Black Turtle of Doom', 'Servant of N\'Zoth', 63, 63, 348293, 348293, 128821, 128821, 4120, 14, 1, 1.14286, 4.2, 3, 1468, 1926, 312, 1, 2400, 2000, 8, 17, 400, 550, 100, 10, 4, 0, 30, 30, 30, 30,
30, 30, 324687, 561234, 1, 3, 1, 0, 2798337883, 'boss_turtlhu');

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
