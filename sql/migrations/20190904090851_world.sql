DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190904090851');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190904090851');
-- Add your query below.

replace into `creature_template` (`entry`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `MechanicImmuneMask`, `SchoolImmuneMask`, `flags_extra`, `ScriptName`) 
values
(50513,3019, 0, 0, 0, 'Expert Training Dummy', '', 0, 60, 60, 1000000, 1000000, 0, 0, 3000, 914, 914, 0, 0.91, 1.14286, 2, 0, 1, 2, 0, 0, 1, 2000, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 100, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, 17, 0, 64, 'custom_npc_training_dummy'),
(50514,3019, 0, 0, 0, 'Heroic Training Dummy', '', 0, 63, 63, 1000000, 1000000, 0, 0, 5000, 914, 914, 0, 0.91, 1.14286, 2, 3, 1, 2, 0, 0, 1, 2000, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 100, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, 17, 0, 64, 'custom_npc_training_dummy'),
(50515, 3019, 0, 0, 0, 'Apprentice Training Dummy', '', 0, 1, 1, 1000000, 1000000, 0, 0, 100, 914, 914, 0, 0.91, 1.14286, 2, 0, 1, 2, 0, 0, 1, 2000, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 100, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, 17, 0, 64, 'custom_npc_training_dummy');

UPDATE `creature_template` SET `mechanic_immune_mask` = '2793635679' WHERE entry in (50513, 50514, 50515);


50521


-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
