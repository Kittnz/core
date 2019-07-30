
-- Door Sign:

replace into gameobject_template (entry, patch, type, displayid, name, faction, flags, size, data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, mingold, maxgold, script_name) values (1000028, 0, 5, 3671, 'The Red Fist', 0, 0, 0.3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- Quartermaster:

replace into `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) values ('50512', '0', '3644', '0', '0', '0', 'Quartermaster Braden', 'The Red Fist', '90200', '30', '30', '1605', '1605', '0', '0', '1200', '11', '135', '1.08', '1.14286', '0', '20', '5', '0', '0', '1', '42', '53', '0', '122', '1', '1000', '2000', '1', '4608', '0', '0', '0', '0', '0', '0', '45.144', '62.073', '100', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '0', '0', '3', '0', '0', '100', '0', '0', '10', '');

-- Vendor

replace into creature_template (entry, name, subname, scale, level_min, level_max, health_min, health_max, display_id1, faction, type, inhabit_type, npc_flags) values
(50511, 'Cameron Hildom', 'Supplies & Repair', 1, 30, 36, 2978, 2997, 4139, 11, 7, 3, 16388);

delete from npc_vendor where entry = 50511;		
replace into npc_vendor (entry, item) values 
(50511, 50331),
(50511, 50332),
(50511, 2575),
(50511, 13610),
(50511, 4497),
(50511, 6183),
(50511, 19222),
(50511, 50378);

update item_template set buy_price = 5000 where entry in (50330, 50331, 50332, 50333, 50334, 50335, 50336, 50378, 13610);

update item_template set name = 'Square Lantern' where entry = 13610;


