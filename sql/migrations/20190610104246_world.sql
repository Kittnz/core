DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190610104246');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190610104246');
-- Add your query below.

-- Graysteel Company Innkeeper

replace into `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) values ('50078', '0', '1513', '0', '0', '0', 'Innkeeper Finster', 'The Greysteel Company', '90200', '30', '30', '1605', '1605', '0', '0', '1200', '11', '135', '1.08', '1.14286', '0', '20', '5', '0', '0', '1', '42', '53', '0', '122', '1', '1000', '2000', '1', '4608', '0', '0', '0', '0', '0', '0', '45.144', '62.073', '100', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '0', '0', '3', '0', '0', '100', '0', '0', '10', '');

-- TODO: Replace greeting's text with: 
-- 'I don\'t know about the others, but I sure am glad to see a fresh face down here.\n\nThis used to be packed every night with the boys from the town, now look at it, we could use extra hands... even if they look like yours.\n\nCheck with Blackmoore or the others if you want work 

update quest_template set ReqItemCount1 = 1 where entry = 50210;

replace into `broadcast_text` (`ID`, `MaleText`) values
('90200', 'Tha last person that made trouble for Tha’ Greysteels ended up floating in tha canal... catch my drift?');
replace into `npc_text` (`ID`, `BroadcastTextID0`) values ('90200', '90200');

replace into creature_template (entry, name, subname, display_id1, level_min, level_max, health_min, health_max, scale, faction, script_name, npc_flags, equipment_id) values
(50079, 'Dirge', 'The Bouncer', 3101, 60, 60, 12761, 12761, 1.25, 11, 'npc_dirge_the_bouncer', 1, 6182);

replace into `creature_template_addon` (`entry`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values
('50079', '0', '0', '0', '1', '0', '0', '0', '');

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
