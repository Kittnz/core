DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190717222942');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190717222942');
-- Add your query below.

update creature_template set movement_type = 1, display_id1 = 16162 where entry = 50106;
delete from creature_template_addon where entry = 50088;
replace into creature_template_addon (entry, auras, b2_0_sheath) values (50088, 22650, 1);
replace into creature_template_addon (entry, auras) values (50106, 22650);
replace into creature_template (entry, display_id1, name, subname, level_min, level_max, health_min, health_max, mana_min, mana_max, armor, faction, speed_walk, speed_run, scale, detection_range, rank, dmg_min, dmg_max, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, type_flags, loot_id, gold_min, gold_max, movement_type, inhabit_type, regeneration, equipment_id, mechanic_immune_mask, flags_extra, spell_list_id, frost_res) values
(50107, 6372, 'Albino Drake', '', 61, 61, 26734, 26734, 8712, 8712, 2831, 103, 2, 3, 1.6, 20, 1, 558, 728, 286, 1, 1267, 1500, 600, 825, 100, 2, 8, 50107, 17161, 21453, 0, 1, 3, 0, 617299675, 0, 50107, 30);
REPLACE INTO `creature_spells` (`entry`, `name`, `spellId_1`, `probability_1`, `castTarget_1`, `targetParam1_1`, `targetParam2_1`, `castFlags_1`, `delayInitialMin_1`, `delayInitialMax_1`, `delayRepeatMin_1`, `delayRepeatMax_1`, `scriptId_1`, `spellId_2`, `probability_2`, `castTarget_2`, `targetParam1_2`, `targetParam2_2`, `castFlags_2`, `delayInitialMin_2`, `delayInitialMax_2`, `delayRepeatMin_2`, `delayRepeatMax_2`, `scriptId_2`, `spellId_3`, `probability_3`, `castTarget_3`, `targetParam1_3`, `targetParam2_3`, `castFlags_3`, `delayInitialMin_3`, `delayInitialMax_3`, `delayRepeatMin_3`, `delayRepeatMax_3`, `scriptId_3`, `spellId_4`, `probability_4`, `castTarget_4`, `targetParam1_4`, `targetParam2_4`, `castFlags_4`, `delayInitialMin_4`, `delayInitialMax_4`, `delayRepeatMin_4`, `delayRepeatMax_4`, `scriptId_4`, `spellId_5`, `probability_5`, `castTarget_5`, `targetParam1_5`, `targetParam2_5`, `castFlags_5`, `delayInitialMin_5`, `delayInitialMax_5`, `delayRepeatMin_5`, `delayRepeatMax_5`, `scriptId_5`, `spellId_6`, `probability_6`, `castTarget_6`, `targetParam1_6`, `targetParam2_6`, `castFlags_6`, `delayInitialMin_6`, `delayInitialMax_6`, `delayRepeatMin_6`, `delayRepeatMax_6`, `scriptId_6`, `spellId_7`, `probability_7`, `castTarget_7`, `targetParam1_7`, `targetParam2_7`, `castFlags_7`, `delayInitialMin_7`, `delayInitialMax_7`, `delayRepeatMin_7`, `delayRepeatMax_7`, `scriptId_7`, `spellId_8`, `probability_8`, `castTarget_8`, `targetParam1_8`, `targetParam2_8`, `castFlags_8`, `delayInitialMin_8`, `delayInitialMax_8`, `delayRepeatMin_8`, `delayRepeatMax_8`, `scriptId_8`) VALUES (50107, 'Albino Drake', 21099, 100, 1, 0, 0, 0, 5, 5, 12, 16, 0, 15847, 100, 0, 0, 0, 0, 5, 5, 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, groupid) values
(50107, 50203, 100, 8, 18, 1),
(50107, 14634, 20, 1, 1, 2);
update creature_template set movement_type = 2 where entry = 50107;
replace INTO `creature_movement_template` VALUES (50107,1,-1454.78,6968.17,-232.439,0,0,0,0,0,0,0,0,0,100,0,0),(50107,2,-1484.56,6927.34,-232.553,0,0,0,0,0,0,0,0,0,100,0,0),(50107,3,-1509.19,6893.45,-232.598,0,0,0,0,0,0,0,0,0,100,0,0),(50107,4,-1533.47,6860.06,-232.598,0,0,0,0,0,0,0,0,0,100,0,0),(50107,5,-1557.92,6826.34,-232.598,0,0,0,0,0,0,0,0,0,100,0,0),(50107,6,-1583.73,6790.69,-232.49,0,0,0,0,0,0,0,0,0,100,0,0),(50107,7,-1557.74,6826.01,-232.598,0,0,0,0,0,0,0,0,0,100,0,0),(50107,8,-1533.19,6859.36,-232.598,0,0,0,0,0,0,0,0,0,100,0,0),(50107,9,-1508.43,6893,-232.598,0,0,0,0,0,0,0,0,0,100,0,0),(50107,10,-1483.5,6926.88,-232.553,0,0,0,0,0,0,0,0,0,100,0,0);
replace into gameobject_template (entry, name, size, displayid) values
(1000027, 'Big Fire', 2.4, 4251);
replace into creature_equip_template (entry, equipentry1) values
(50108, 50429);
replace into creature_template_addon (entry, auras, b2_0_sheath) values (50108, 28126, 1);
replace into creature_template (entry, display_id1, name, subname, level_min, level_max, health_min, health_max, mana_min, mana_max, armor, faction, speed_walk, speed_run, scale, detection_range, rank, dmg_min, dmg_max, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, type_flags, loot_id, gold_min, gold_max, movement_type, inhabit_type, regeneration, equipment_id, mechanic_immune_mask, flags_extra, spell_list_id, frost_res) values
(50108, 182, 'Albino Dragonspawn', '', 61, 61, 11079, 11079, 0, 0, 2231, 103, 1, 1.14286, 1.6, 20, 1, 558, 728, 286, 1, 2100, 1500, 600, 825, 100, 2, 8, 50108, 1216, 1645, 0, 1, 2, 50108, 0, 0, 50108, 15);
REPLACE INTO `creature_spells` (`entry`, `name`, `spellId_1`, `probability_1`, `castTarget_1`, `targetParam1_1`, `targetParam2_1`, `castFlags_1`, `delayInitialMin_1`, `delayInitialMax_1`, `delayRepeatMin_1`, `delayRepeatMax_1`, `scriptId_1`, `spellId_2`, `probability_2`, `castTarget_2`, `targetParam1_2`, `targetParam2_2`, `castFlags_2`, `delayInitialMin_2`, `delayInitialMax_2`, `delayRepeatMin_2`, `delayRepeatMax_2`, `scriptId_2`, `spellId_3`, `probability_3`, `castTarget_3`, `targetParam1_3`, `targetParam2_3`, `castFlags_3`, `delayInitialMin_3`, `delayInitialMax_3`, `delayRepeatMin_3`, `delayRepeatMax_3`, `scriptId_3`, `spellId_4`, `probability_4`, `castTarget_4`, `targetParam1_4`, `targetParam2_4`, `castFlags_4`, `delayInitialMin_4`, `delayInitialMax_4`, `delayRepeatMin_4`, `delayRepeatMax_4`, `scriptId_4`, `spellId_5`, `probability_5`, `castTarget_5`, `targetParam1_5`, `targetParam2_5`, `castFlags_5`, `delayInitialMin_5`, `delayInitialMax_5`, `delayRepeatMin_5`, `delayRepeatMax_5`, `scriptId_5`, `spellId_6`, `probability_6`, `castTarget_6`, `targetParam1_6`, `targetParam2_6`, `castFlags_6`, `delayInitialMin_6`, `delayInitialMax_6`, `delayRepeatMin_6`, `delayRepeatMax_6`, `scriptId_6`, `spellId_7`, `probability_7`, `castTarget_7`, `targetParam1_7`, `targetParam2_7`, `castFlags_7`, `delayInitialMin_7`, `delayInitialMax_7`, `delayRepeatMin_7`, `delayRepeatMax_7`, `scriptId_7`, `spellId_8`, `probability_8`, `castTarget_8`, `targetParam1_8`, `targetParam2_8`, `castFlags_8`, `delayInitialMin_8`, `delayInitialMax_8`, `delayRepeatMin_8`, `delayRepeatMax_8`, `scriptId_8`) VALUES (50108, 'Albino Dragonspawn', 22582, 100, 4, 0, 0, 0, 2, 2, 8, 8, 0, 17963, 100, 1, 0, 0, 0, 1, 1, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, groupid) values
(50108, 50203, 100, 4, 8, 1),
(50108, 14047, 100, 1, 6, 2),
(50108, 14552, 0.8, 1, 1, 3),
(50108, 10379, 3.2, 1, 1, 3);
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount) values
(50109, 14047, 100, 1, 4);
replace into creature_onkill_reputation (creature_id, rewonkillrepfaction1, rewonkillrepvalue1) values
(50109, 910, 8);
replace into creature_template_addon (entry, auras) values (50109, 22576);
replace into creature_template (entry, display_id1, name, subname, level_min, level_max, health_min, health_max, mana_min, mana_max, armor, faction, speed_walk, speed_run, scale, detection_range, rank, dmg_min, dmg_max, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, type_flags, loot_id, gold_min, gold_max, movement_type, inhabit_type, regeneration, equipment_id, mechanic_immune_mask, flags_extra, spell_list_id, script_name) values
(50109, 4494, 'Frostbitten Bronze Soldier', '', 55, 61, 3412, 3412, 0, 0, 2831, 7, 2, 3, 1, 20, 1, 558, 728, 286, 1, 1267, 6000, 600, 825, 100, 2, 8, 50109, 1216, 1843, 0, 1, 0, 0, 0, 0, 0, 'frostbitten_bronze_soldier');
-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
