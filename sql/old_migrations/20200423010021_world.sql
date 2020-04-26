DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20200423010021');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20200423010021');
-- Add your query below.

replace into creature_template (
entry, patch, display_id1, display_id2, display_id3, display_id4, name, subname, gossip_menu_id, level_min, level_max,
health_min, health_max, mana_min, mana_max, armor, faction, npc_flags, speed_walk, speed_run, scale, detection_range,
call_for_help_range, leash_range, rank, xp_multiplier, dmg_min, dmg_max, dmg_school, attack_power, dmg_multiplier,
base_attack_time, ranged_attack_time, unit_class, unit_flags, dynamic_flags, beast_family, trainer_type, trainer_spell,
trainer_class, trainer_race, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, type_flags, loot_id,
pickpocket_loot_id, skinning_loot_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spell_id1,
spell_id2, spell_id3, spell_id4, spell_list_id, pet_spell_list_id, gold_min, gold_max, ai_name, movement_type,
inhabit_type, civilian, racial_leader, regeneration, equipment_id, trainer_id, vendor_id, mechanic_immune_mask,
school_immune_mask, flags_extra, script_name)
values
('51500', '0', '3374', '0', '0', '0', 'Teller Plushner', 'Guild Vault Administrator', '0', '60', '60',
'5000', '6000', '0', '0', '300', '31', '1', '1', '1.14286', '1', '20',
'5', '0', '0', '1', '0', '0', '0', '0', '1',
'0', '0', '1', '0', '0', '1', '0', '0',
'0', '0', '0', '0', '0', '1', '0', '0',
'0', '0', '0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0', '', '0',
'3', '0', '0', '1', '0', '0', '0', '0',
'0', '0', 'npc_guild_bank');

replace into broadcast_text (ID, MaleText) values ('90340', 'The Guild Vault is a storage space available for your guild members only.');
replace into npc_text (ID, BroadcastTextID0) values ('90340', '90340');

replace into creature_template (
entry, patch, display_id1, display_id2, display_id3, display_id4, name, subname, gossip_menu_id, level_min, level_max,
health_min, health_max, mana_min, mana_max, armor, faction, npc_flags, speed_walk, speed_run, scale, detection_range,
call_for_help_range, leash_range, rank, xp_multiplier, dmg_min, dmg_max, dmg_school, attack_power, dmg_multiplier,
base_attack_time, ranged_attack_time, unit_class, unit_flags, dynamic_flags, beast_family, trainer_type, trainer_spell,
trainer_class, trainer_race, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, type_flags, loot_id,
pickpocket_loot_id, skinning_loot_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spell_id1,
spell_id2, spell_id3, spell_id4, spell_list_id, pet_spell_list_id, gold_min, gold_max, ai_name, movement_type,
inhabit_type, civilian, racial_leader, regeneration, equipment_id, trainer_id, vendor_id, mechanic_immune_mask,
school_immune_mask, flags_extra, script_name)
values
('51501', '0', '3374', '0', '0', '0', 'Guild Vault', 'Turtle WoW Staff', '0', '60', '60',
'5000', '6000', '0', '0', '300', '35', '5', '1', '1.14286', '1', '20',
'5', '0', '0', '1', '0', '0', '0', '0', '1',
'0', '0', '1', '0', '0', '1', '0', '0',
'0', '0', '0', '0', '0', '1', '0', '0',
'0', '0', '0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0', '', '0',
'3', '0', '0', '1', '0', '0', '0', '0',
'0', '0', '');

delete from npc_vendor where entry = 51501;		
replace into npc_vendor (entry, item) values 
(51501, 11023),
(51501, 9312),
(51501, 9313),
(51501, 9318),
(51501, 9314),
(51501, 21738),
(51501, 21593),
(51501, 21595),
(51501, 21592),
(51501, 21719),
(51501, 21720),
(51501, 21717),
(51501, 21590),
(51501, 21718),
(51501, 21714),
(51501, 21716),
(51501, 21589);

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
