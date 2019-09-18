replace into migrations values (20190919003740);

replace into creature_template (entry, patch, display_id1, display_id2, display_id3, display_id4, name, subname, gossip_menu_id, level_min, level_max, health_min, health_max, mana_min, mana_max, armor, faction, npc_flags, speed_walk, speed_run, scale, detection_range, call_for_help_range, leash_range, rank, xp_multiplier, dmg_min, dmg_max, dmg_school, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, unit_class, unit_flags, dynamic_flags, beast_family, trainer_type, trainer_spell, trainer_class, trainer_race, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, type_flags, loot_id, pickpocket_loot_id, skinning_loot_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spell_id1, spell_id2, spell_id3, spell_id4, spell_list_id, pet_spell_list_id, gold_min, gold_max, ai_name, movement_type, inhabit_type, civilian, racial_leader, regeneration, equipment_id, trainer_id, vendor_id, mechanic_immune_mask, school_immune_mask, flags_extra, script_name) values
(50534, 0, 7195, 0, 0, 0, 'Greenix Oiljuices', 'Exotic Drinks & Co', 0, 30, 30, 1605, 1605, 0, 0, 1200, 35, 4, 1.08, 1.14286, 0, 20, 5, 0, 0, 1, 42, 53, 0, 122, 1, 1000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 45.144, 62.073, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 100, 0, 0, 10, ''),
(50535, 0, 5433, 0, 0, 0, 'Mek Sparkshake', 'Exotic Drinks & Co', 0, 30, 30, 1605, 1605, 0, 0, 1200, 35, 4, 1.08, 1.14286, 0, 20, 5, 0, 0, 1, 42, 53, 0, 122, 1, 1000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 45.144, 62.073, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 100, 0, 0, 10, '');

update item_template set buy_price = 5, sell_price = 1 where entry = 5265;

replace into npc_vendor_template (entry, item, maxcount, incrtime) values
(50534, 23176, 20, 21600),
(50534, 19299, 0, 0),
(50534, 23161, 0, 0),
(50534, 5265, 0, 0),
(50534, 18300, 0, 0),
(50534, 4600, 0, 0),
(50534, 17405, 0, 0),
(50534, 19300, 0 ,0);

update creature_template set vendor_id = 50534 where entry in (50534, 50535);
