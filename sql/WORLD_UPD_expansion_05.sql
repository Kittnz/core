update gameobject_template set displayid = 29624, size = 0.8 where entry = 3000220;
delete from gameobject where guid = 4004347;
update gameobject_template set displayid = 22748, size = 1 where entry = 3000204;

update item_template set spellid_1 = 46033 where entry = 80878;

REPLACE INTO `creature_template` VALUES (80920, 0, 18338, 0, 0, 0, 'Amani Eagle', '', 0, 1, 1, 64, 64, 0, 0, 0, 35, 0, 1, 1.14286, 0.7, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, '');

-- Revantusk Trolls Armor Quartermaster

REPLACE INTO `creature_template` VALUES (80915, 0, 14768, 0, 0, 0, 'Tan\'Pogo', 'Revantusk Trolls Armor Quartermaster', 0, 11, 11, 456, 456, 0, 0, 20, 1494, 16388, 1.1, 1.14286, 0, 20, 5, 0, 0, 1, 12, 14, 0, 64, 1, 2000, 2090, 1, 4864, 0, 0, 0, 0, 0, 0, 18.392, 25.289, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 524298, '');

-- Goblin racials:

REPLACE INTO `playercreateinfo_spell` VALUES

(9, 1, 46015, 0, 5875, 'Chemical Superfreak'),
(9, 3, 46015, 0, 5875, 'Chemical Superfreak'),
(9, 4, 46015, 0, 5875, 'Chemical Superfreak'),
(9, 8, 46015, 0, 5875, 'Chemical Superfreak'),
(9, 9, 46015, 0, 5875, 'Chemical Superfreak'),

(9, 1, 46016, 0, 5875, 'Prospecting'),
(9, 3, 46016, 0, 5875, 'Prospecting'),
(9, 4, 46016, 0, 5875, 'Prospecting'),
(9, 8, 46016, 0, 5875, 'Prospecting'),
(9, 9, 46016, 0, 5875, 'Prospecting'),

(9, 1, 46017, 0, 5875, 'Aggressive Negotiations'),
(9, 3, 46017, 0, 5875, 'Aggressive Negotiations'),
(9, 4, 46017, 0, 5875, 'Aggressive Negotiations'),
(9, 8, 46017, 0, 5875, 'Aggressive Negotiations'),
(9, 9, 46017, 0, 5875, 'Aggressive Negotiations'),

(9, 1, 46018, 0, 5875, 'Exit Strategy'),
(9, 3, 46018, 0, 5875, 'Exit Strategy'),
(9, 4, 46018, 0, 5875, 'Exit Strategy'),
(9, 8, 46018, 0, 5875, 'Exit Strategy'),
(9, 9, 46018, 0, 5875, 'Exit Strategy');

-- High Els racials: 

REPLACE INTO `playercreateinfo_spell` VALUES

(10, 1, 46022, 0, 5875, 'Enchanting Specialization'),
(10, 2, 46022, 0, 5875, 'Enchanting Specialization'),
(10, 3, 46022, 0, 5875, 'Enchanting Specialization'),
(10, 4, 46022, 0, 5875, 'Enchanting Specialization'),
(10, 5, 46022, 0, 5875, 'Enchanting Specialization'),
(10, 8, 46022, 0, 5875, 'Enchanting Specialization'),

(10, 1, 46021, 0, 5875, 'Enchanting Specialization'),
(10, 2, 46021, 0, 5875, 'Enchanting Specialization'),
(10, 3, 46021, 0, 5875, 'Enchanting Specialization'),
(10, 4, 46021, 0, 5875, 'Enchanting Specialization'),
(10, 5, 46021, 0, 5875, 'Enchanting Specialization'),
(10, 8, 46021, 0, 5875, 'Enchanting Specialization');

replace into item_template values
 ('80526', '0', '4', '3', 'Quel\'dorei Ranger\'s Legguards', '', '5928', '3', '0', '1', '41074', '10269', '7', '4', '-1', '65',
 '60', '0', '0', '0', '0', '0', '269', '6', '0', '1', '0', '3', '13', '5', '11',
 '7', '13', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '9334', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '5', '1', '0', '0', '90', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('80626', '0', '4', '3', 'Revantusk Shadow Hunter\'s Legguards', '', '5928', '3', '0', '1', '41074', '10269', '7', '68', '-1', '65',
 '60', '0', '0', '0', '0', '0', '893', '6', '0', '1', '0', '3', '13', '5', '11',
 '7', '13', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '9334', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '5', '1', '0', '0', '90', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

update item_template set name = 'Crude Channeling Staff' where entry = 80602;
update item_template set name = 'Quel\'dorei Magister\'s Focus' where entry = 80539;
update item_template set name = 'Quel\'dorei Defender\'s Deflector"' where entry = 80535;

update item_template set display_id = 60725 where entry = 80529;
update item_template set display_id = 40048 where entry = 80502;
update item_template set display_id = 36958 where entry = 80535;
update item_template set display_id = 36387 where entry = 80512;
update item_template set display_id = 60666 where entry = 80606;
update item_template set display_id = 60670 where entry = 80505;
update item_template set display_id = 60669 where entry = 80527;
update item_template set display_id = 60667 where entry = 80506;
update item_template set display_id = 40102 where entry = 80626;

update item_template set display_id = 50543 where entry = 80630;
update item_template set display_id = 50544 where entry = 80632;

update item_template set display_id = 50555 where entry = 80646;
update item_template set display_id = 50549 where entry = 80640;

update item_template set display_id = 50584 where entry = 80644;
update item_template set display_id = 50580 where entry = 80645;

UPDATE `item_template` SET `stat_value3`='5' WHERE (`entry`='80528') AND (`patch`='0');
UPDATE `item_template` SET `stat_value3`='5' WHERE (`entry`='80628') AND (`patch`='0');
UPDATE `item_template` SET `inventory_type`='17' WHERE (`entry`='80860') AND (`patch`='0');

update creature_template set subname = 'Mage Trainer' where entry = 5498;

UPDATE `quest_template` SET `Objectives`='Speak to Elsharin, she can be found beyond the portal in the Mage Tower in Stormwind.' WHERE (`entry`='80251') AND (`patch`='0');

UPDATE `quest_template` SET `Details`='Now that you know what we’re dealing with and our history...\n\nThe time has come to act. If you’re truly interested in helping us, then this is the way.\n\nOne of our most talented mages has established a leyline connection to Alah\'thalas.\n\nGo to the Mage Tower in the Mage District, and speak to Elsharin. She will be able to take you there, once you arrive I am sure someone will tend to you.' WHERE (`entry`='80251') AND (`patch`='0');

REPLACE INTO `gameobject_template` VALUES 
(3000325, 0, 5, 32876, 'BE_Tent_Red_01', 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into creature_involvedrelation (id, quest, patch_min, patch_max) values (80925, 80265, '0','10');

REPLACE INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (80925, 0, 2973, 0, 0, 0, 'Elise Laughlin', 'Visitor\'s Center Administrator', 9067, 45, 45, 2972, 2972, 0, 0, 2725, 12, 3, 1, 1.14286, 0, 20, 5, 0, 0, 1, 72, 93, 0, 204, 1, 2000, 2000, 1, 4096, 0, 0, 0, 0, 0, 0, 61.776, 84.942, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 1432, 0, 0, 0, 0, 524298, '');

REPLACE INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (80926, 0, 2971, 0, 0, 0, 'Goroth', 'Fight Promoter', 0, 60, 60, 12298, 12298, 0, 0, 0, 35, 1, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 'npc_arena_ambassador');

update creature_template set faction = 29 where entry = 80926;

REPLACE INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (80927, 0, 2963, 0, 0, 0, 'Fergus', 'Fight Promoter', 0, 60, 60, 12298, 12298, 0, 0, 0, 35, 1, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 'npc_arena_ambassador');

update creature_template set faction = 12 where entry = 80927;

replace into broadcast_text (ID, MaleText) values
('90004', 'Even the best blade will rust and grow dull unless it is cared for. You have chosen your weapon, so fight!');

update item_template set sheath = 1 where entry = 51849;
update item_template set sell_price = 152, buy_price = 152 where entry = 51817;
update item_template set sell_price = 221, buy_price = 221 where entry = 51816 ;
