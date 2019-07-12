DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190711171659');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190711171659');
-- Add your query below.

replace into `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) values ('50101', '0', '1516', '0', '0', '0', 'Terrance Merrygold', 'Campkeeper', '', '30', '30', '1605', '1605', '0', '0', '1200', '11', '135', '1.08', '1.14286', '0', '20', '5', '0', '0', '1', '42', '53', '0', '122', '1', '1000', '2000', '1', '4608', '0', '0', '0', '0', '0', '0', '45.144', '62.073', '100', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '0', '0', '3', '0', '0', '100', '0', '0', '10', '');
update creature_template set faction = 35, vendor_id = 0 where entry in (50101, 50078);
delete from npc_vendor_template where entry = 50078;
delete from npc_vendor where entry = 50078;
update item_template set required_reputation_rank = 6 where entry = 19319;
replace into npc_vendor (entry, item) values
(50078, 2287),
(50078, 9451),
(50078, 12763),
(50078, 19222),
(50078, 4595),
(50078, 6183),
(50078, 21833),
(50078, 21829),
(50078, 5976);
replace into npc_vendor (entry, item) values
(50101, 2287),
(50101, 9451),
(50101, 12763),
(50101, 19222),
(50101, 4595),
(50101, 6183),
(50101, 21833),
(50101, 21829),
(50101, 5976);

replace into creature_template (entry, name, display_id1, level_min, level_max, health_min, health_max, faction) values
(50102, 'Zebra', 1531, 5, 5, 100, 100, 35);

replace into custom_mount_entry_relation values
(50426, 50102);

replace into creature_template (entry, name, display_id1, level_min, level_max, health_min, health_max, faction, armor, dmg_min, dmg_max, attack_power, base_attack_time, rank, type, movement_type, regeneration, gold_min, gold_max, loot_id, script_name) values
(50103, 'Zebrian the Mad', 1508, 40, 40, 2854, 2854, 7, 3000, 80, 100, 220, 1800, 4, 7, 2, 2, 1314, 1921, 50103, 'zebrian_the_mad');
replace into creature_template_addon(entry, mount) values
(50103, 1531);
delete from creature_loot_template where entry = 50103;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, groupid) values
(50103, 50426, 10, 1, 1, 1),
(50103, 4338, 100, 1, 6, 2);


-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
