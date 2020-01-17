	replace into migrations values (20200116191319);

	replace into item_template (
	entry, patch, class, subclass, name,description, display_id, quality, flags, buy_count,
	buy_price, sell_price, inventory_type, allowable_class, allowable_race, item_level,
	required_level, required_skill, required_skill_rank, required_spell, required_honor_rank,
	required_city_rank, required_reputation_faction, required_reputation_rank, max_count, stackable,
	container_slots, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3,
	stat_type4, stat_value4, stat_type5, stat_value5, stat_type6, stat_value6, stat_type7,
	stat_value7, stat_type8, stat_value8, stat_type9, stat_value9, stat_type10, stat_value10,
	delay, range_mod, ammo_type, dmg_min1, dmg_max1, dmg_type1, dmg_min2, dmg_max2, dmg_type2,
	dmg_min3, dmg_max3, dmg_type3, dmg_min4, dmg_max4, dmg_type4, dmg_min5, dmg_max5, dmg_type5, block,
	armor, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1,
	spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2,
	spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2,
	spellid_3, spelltrigger_3, spellcharges_3, spellppmrate_3, spellcooldown_3, spellcategory_3,
	spellcategorycooldown_3, spellid_4, spelltrigger_4, spellcharges_4, spellppmrate_4, spellcooldown_4,
	spellcategory_4, spellcategorycooldown_4, spellid_5, spelltrigger_5, spellcharges_5, spellppmrate_5,
	spellcooldown_5, spellcategory_5, spellcategorycooldown_5, bonding, page_text, page_language, page_material,
	start_quest, lock_id, material, sheath, random_property, set_id, max_durability, area_bound, map_bound,
	duration, bag_family, disenchant_id, food_type, min_money_loot, max_money_loot, extra_flags, other_team_entry,
	script_name)
	values
	 ('51270', '0', '0', '0', 'Libram: Holy Strike II', '', '1155', '1', '0', '1', '1200', '1000', '0', '2', '-1', '12',
	 '12', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '1889', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
	 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
	 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '1', NULL);
	 
	 replace into item_template (
	entry, patch, class, subclass, name,description, display_id, quality, flags, buy_count,
	buy_price, sell_price, inventory_type, allowable_class, allowable_race, item_level,
	required_level, required_skill, required_skill_rank, required_spell, required_honor_rank,
	required_city_rank, required_reputation_faction, required_reputation_rank, max_count, stackable,
	container_slots, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3,
	stat_type4, stat_value4, stat_type5, stat_value5, stat_type6, stat_value6, stat_type7,
	stat_value7, stat_type8, stat_value8, stat_type9, stat_value9, stat_type10, stat_value10,
	delay, range_mod, ammo_type, dmg_min1, dmg_max1, dmg_type1, dmg_min2, dmg_max2, dmg_type2,
	dmg_min3, dmg_max3, dmg_type3, dmg_min4, dmg_max4, dmg_type4, dmg_min5, dmg_max5, dmg_type5, block,
	armor, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1,
	spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2,
	spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2,
	spellid_3, spelltrigger_3, spellcharges_3, spellppmrate_3, spellcooldown_3, spellcategory_3,
	spellcategorycooldown_3, spellid_4, spelltrigger_4, spellcharges_4, spellppmrate_4, spellcooldown_4,
	spellcategory_4, spellcategorycooldown_4, spellid_5, spelltrigger_5, spellcharges_5, spellppmrate_5,
	spellcooldown_5, spellcategory_5, spellcategorycooldown_5, bonding, page_text, page_language, page_material,
	start_quest, lock_id, material, sheath, random_property, set_id, max_durability, area_bound, map_bound,
	duration, bag_family, disenchant_id, food_type, min_money_loot, max_money_loot, extra_flags, other_team_entry,
	script_name)
	values
	 ('51271', '0', '0', '0', 'Libram: Holy Strike III', '', '1155', '1', '0', '1', '2400', '2000', '0', '2', '-1', '22',
	 '22', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '1890', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
	 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
	 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '1', NULL);
	 
	 replace into item_template (
	entry, patch, class, subclass, name,description, display_id, quality, flags, buy_count,
	buy_price, sell_price, inventory_type, allowable_class, allowable_race, item_level,
	required_level, required_skill, required_skill_rank, required_spell, required_honor_rank,
	required_city_rank, required_reputation_faction, required_reputation_rank, max_count, stackable,
	container_slots, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3,
	stat_type4, stat_value4, stat_type5, stat_value5, stat_type6, stat_value6, stat_type7,
	stat_value7, stat_type8, stat_value8, stat_type9, stat_value9, stat_type10, stat_value10,
	delay, range_mod, ammo_type, dmg_min1, dmg_max1, dmg_type1, dmg_min2, dmg_max2, dmg_type2,
	dmg_min3, dmg_max3, dmg_type3, dmg_min4, dmg_max4, dmg_type4, dmg_min5, dmg_max5, dmg_type5, block,
	armor, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1,
	spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2,
	spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2,
	spellid_3, spelltrigger_3, spellcharges_3, spellppmrate_3, spellcooldown_3, spellcategory_3,
	spellcategorycooldown_3, spellid_4, spelltrigger_4, spellcharges_4, spellppmrate_4, spellcooldown_4,
	spellcategory_4, spellcategorycooldown_4, spellid_5, spelltrigger_5, spellcharges_5, spellppmrate_5,
	spellcooldown_5, spellcategory_5, spellcategorycooldown_5, bonding, page_text, page_language, page_material,
	start_quest, lock_id, material, sheath, random_property, set_id, max_durability, area_bound, map_bound,
	duration, bag_family, disenchant_id, food_type, min_money_loot, max_money_loot, extra_flags, other_team_entry,
	script_name)
	values
	 ('51272', '0', '0', '0', 'Libram: Holy Strike IV', '', '1155', '1', '0', '1', '4800', '4000', '0', '2', '-1', '34',
	 '34', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '1891', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
	 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
	 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '1', NULL);
	 
	 replace into item_template (
	entry, patch, class, subclass, name,description, display_id, quality, flags, buy_count,
	buy_price, sell_price, inventory_type, allowable_class, allowable_race, item_level,
	required_level, required_skill, required_skill_rank, required_spell, required_honor_rank,
	required_city_rank, required_reputation_faction, required_reputation_rank, max_count, stackable,
	container_slots, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3,
	stat_type4, stat_value4, stat_type5, stat_value5, stat_type6, stat_value6, stat_type7,
	stat_value7, stat_type8, stat_value8, stat_type9, stat_value9, stat_type10, stat_value10,
	delay, range_mod, ammo_type, dmg_min1, dmg_max1, dmg_type1, dmg_min2, dmg_max2, dmg_type2,
	dmg_min3, dmg_max3, dmg_type3, dmg_min4, dmg_max4, dmg_type4, dmg_min5, dmg_max5, dmg_type5, block,
	armor, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1,
	spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2,
	spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2,
	spellid_3, spelltrigger_3, spellcharges_3, spellppmrate_3, spellcooldown_3, spellcategory_3,
	spellcategorycooldown_3, spellid_4, spelltrigger_4, spellcharges_4, spellppmrate_4, spellcooldown_4,
	spellcategory_4, spellcategorycooldown_4, spellid_5, spelltrigger_5, spellcharges_5, spellppmrate_5,
	spellcooldown_5, spellcategory_5, spellcategorycooldown_5, bonding, page_text, page_language, page_material,
	start_quest, lock_id, material, sheath, random_property, set_id, max_durability, area_bound, map_bound,
	duration, bag_family, disenchant_id, food_type, min_money_loot, max_money_loot, extra_flags, other_team_entry,
	script_name)
	values
	 ('51273', '0', '0', '0', 'Libram: Holy Strike V', '', '1155', '1', '0', '1', '8600', '8000', '0', '2', '-1', '42',
	 '42', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '2496', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
	 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
	 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '1', NULL);
	 
	 replace into item_template (
	entry, patch, class, subclass, name,description, display_id, quality, flags, buy_count,
	buy_price, sell_price, inventory_type, allowable_class, allowable_race, item_level,
	required_level, required_skill, required_skill_rank, required_spell, required_honor_rank,
	required_city_rank, required_reputation_faction, required_reputation_rank, max_count, stackable,
	container_slots, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3,
	stat_type4, stat_value4, stat_type5, stat_value5, stat_type6, stat_value6, stat_type7,
	stat_value7, stat_type8, stat_value8, stat_type9, stat_value9, stat_type10, stat_value10,
	delay, range_mod, ammo_type, dmg_min1, dmg_max1, dmg_type1, dmg_min2, dmg_max2, dmg_type2,
	dmg_min3, dmg_max3, dmg_type3, dmg_min4, dmg_max4, dmg_type4, dmg_min5, dmg_max5, dmg_type5, block,
	armor, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1,
	spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2,
	spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2,
	spellid_3, spelltrigger_3, spellcharges_3, spellppmrate_3, spellcooldown_3, spellcategory_3,
	spellcategorycooldown_3, spellid_4, spelltrigger_4, spellcharges_4, spellppmrate_4, spellcooldown_4,
	spellcategory_4, spellcategorycooldown_4, spellid_5, spelltrigger_5, spellcharges_5, spellppmrate_5,
	spellcooldown_5, spellcategory_5, spellcategorycooldown_5, bonding, page_text, page_language, page_material,
	start_quest, lock_id, material, sheath, random_property, set_id, max_durability, area_bound, map_bound,
	duration, bag_family, disenchant_id, food_type, min_money_loot, max_money_loot, extra_flags, other_team_entry,
	script_name)
	values
	 ('51274', '0', '0', '0', 'Libram: Holy Strike VI', '', '1155', '1', '0', '1', '18000', '10000', '0', '2', '-1', '48',
	 '48', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '5571', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
	 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
	 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '1', NULL);
	 
	 replace into item_template (
	entry, patch, class, subclass, name,description, display_id, quality, flags, buy_count,
	buy_price, sell_price, inventory_type, allowable_class, allowable_race, item_level,
	required_level, required_skill, required_skill_rank, required_spell, required_honor_rank,
	required_city_rank, required_reputation_faction, required_reputation_rank, max_count, stackable,
	container_slots, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3,
	stat_type4, stat_value4, stat_type5, stat_value5, stat_type6, stat_value6, stat_type7,
	stat_value7, stat_type8, stat_value8, stat_type9, stat_value9, stat_type10, stat_value10,
	delay, range_mod, ammo_type, dmg_min1, dmg_max1, dmg_type1, dmg_min2, dmg_max2, dmg_type2,
	dmg_min3, dmg_max3, dmg_type3, dmg_min4, dmg_max4, dmg_type4, dmg_min5, dmg_max5, dmg_type5, block,
	armor, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1,
	spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2,
	spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2,
	spellid_3, spelltrigger_3, spellcharges_3, spellppmrate_3, spellcooldown_3, spellcategory_3,
	spellcategorycooldown_3, spellid_4, spelltrigger_4, spellcharges_4, spellppmrate_4, spellcooldown_4,
	spellcategory_4, spellcategorycooldown_4, spellid_5, spelltrigger_5, spellcharges_5, spellppmrate_5,
	spellcooldown_5, spellcategory_5, spellcategorycooldown_5, bonding, page_text, page_language, page_material,
	start_quest, lock_id, material, sheath, random_property, set_id, max_durability, area_bound, map_bound,
	duration, bag_family, disenchant_id, food_type, min_money_loot, max_money_loot, extra_flags, other_team_entry,
	script_name)
	values
	 ('51275', '0', '0', '0', 'Libram: Holy Strike VII', '', '1155', '1', '0', '1', '24000', '20000', '0', '2', '-1', '52',
	 '52', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '10334', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
	 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
	 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '1', NULL);
	 
	 replace into item_template (
	entry, patch, class, subclass, name,description, display_id, quality, flags, buy_count,
	buy_price, sell_price, inventory_type, allowable_class, allowable_race, item_level,
	required_level, required_skill, required_skill_rank, required_spell, required_honor_rank,
	required_city_rank, required_reputation_faction, required_reputation_rank, max_count, stackable,
	container_slots, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3,
	stat_type4, stat_value4, stat_type5, stat_value5, stat_type6, stat_value6, stat_type7,
	stat_value7, stat_type8, stat_value8, stat_type9, stat_value9, stat_type10, stat_value10,
	delay, range_mod, ammo_type, dmg_min1, dmg_max1, dmg_type1, dmg_min2, dmg_max2, dmg_type2,
	dmg_min3, dmg_max3, dmg_type3, dmg_min4, dmg_max4, dmg_type4, dmg_min5, dmg_max5, dmg_type5, block,
	armor, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1,
	spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2,
	spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2,
	spellid_3, spelltrigger_3, spellcharges_3, spellppmrate_3, spellcooldown_3, spellcategory_3,
	spellcategorycooldown_3, spellid_4, spelltrigger_4, spellcharges_4, spellppmrate_4, spellcooldown_4,
	spellcategory_4, spellcategorycooldown_4, spellid_5, spelltrigger_5, spellcharges_5, spellppmrate_5,
	spellcooldown_5, spellcategory_5, spellcategorycooldown_5, bonding, page_text, page_language, page_material,
	start_quest, lock_id, material, sheath, random_property, set_id, max_durability, area_bound, map_bound,
	duration, bag_family, disenchant_id, food_type, min_money_loot, max_money_loot, extra_flags, other_team_entry,
	script_name)
	values
	 ('51276', '0', '0', '0', 'Libram: Holy Strike VIII', '', '1155', '1', '0', '1', '38000', '30000', '0', '2', '-1', '58',
	 '58', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '10335', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
	 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
	 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '1', NULL);
	 
	update item_template set description = "Teaches Holy Strike (Rank 2)." where entry = 51270;
	update item_template set description = "Teaches Holy Strike (Rank 3)." where entry = 51271;
	update item_template set description = "Teaches Holy Strike (Rank 4)." where entry = 51272;
	update item_template set description = "Teaches Holy Strike (Rank 5)." where entry = 51273;
	update item_template set description = "Teaches Holy Strike (Rank 6)." where entry = 51274;
	update item_template set description = "Teaches Holy Strike (Rank 7)." where entry = 51275;
	update item_template set description = "Teaches Holy Strike (Rank 8)." where entry = 51276;

	update item_template set buy_price = 3000 where entry = 51270;
	update item_template set buy_price = 6000 where entry = 51271;
	update item_template set buy_price = 12000 where entry = 51272;
	update item_template set buy_price = 24000 where entry = 51273;
	update item_template set buy_price = 30000 where entry = 51274;
	update item_template set buy_price = 35000 where entry = 51275;
	update item_template set buy_price = 48000 where entry = 51276;
	
	update item_template set required_spell = 679 where entry = 51270;
	update item_template set required_spell = 678 where entry = 51271;
	update item_template set required_spell = 1866 where entry = 51272;
	update item_template set required_spell = 680 where entry = 51273;
	update item_template set required_spell = 2495 where entry = 51274;
	update item_template set required_spell = 5569 where entry = 51275;
	update item_template set required_spell = 10332 where entry = 51276;
	
	update item_template set spellid_1 = 31726 where entry = 51270;
	update item_template set spellid_1 = 31726 where entry = 51271;
	update item_template set spellid_1 = 31726 where entry = 51272;
	update item_template set spellid_1 = 31726 where entry = 51273;
	update item_template set spellid_1 = 31726 where entry = 51274;
	update item_template set spellid_1 = 31726 where entry = 51275;
	update item_template set spellid_1 = 31726 where entry = 51276;
	
    update item_template set spellcooldown_1 = 40000 where entry = 51270;
    update item_template set spellcooldown_1 = 40000 where entry = 51271;
    update item_template set spellcooldown_1 = 40000 where entry = 51272;
    update item_template set spellcooldown_1 = 40000 where entry = 51273;
    update item_template set spellcooldown_1 = 40000 where entry = 51274;
    update item_template set spellcooldown_1 = 40000 where entry = 51275;
    update item_template set spellcooldown_1 = 40000 where entry = 51276;
	
    update item_template set spellcharges_1 = -1 where entry = 51270;
    update item_template set spellcharges_1 = -1 where entry = 51271;
    update item_template set spellcharges_1 = -1 where entry = 51272;
    update item_template set spellcharges_1 = -1 where entry = 51273;
    update item_template set spellcharges_1 = -1 where entry = 51274;
    update item_template set spellcharges_1 = -1 where entry = 51275;
    update item_template set spellcharges_1 = -1 where entry = 51276;
	
    update item_template set script_name = 'item_holy_strike_book' where entry = 51270;
    update item_template set script_name = 'item_holy_strike_book' where entry = 51271;
    update item_template set script_name = 'item_holy_strike_book' where entry = 51272;
    update item_template set script_name = 'item_holy_strike_book' where entry = 51273;
    update item_template set script_name = 'item_holy_strike_book' where entry = 51274;
    update item_template set script_name = 'item_holy_strike_book' where entry = 51275;
    update item_template set script_name = 'item_holy_strike_book' where entry = 51276;
	 
REPLACE INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (51270, 0, 1500, 0, 0, 0, 'William Halford', 'Librarian', 9015, 50, 50, 10605, 10605, 0, 0, 1200, 11, 5, 1.08, 1.14286, 0, 20, 5, 0, 0, 1, 42, 53, 0, 122, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 45.144, 62.073, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 1285, 0, 0, 0, 0, 524298, '');

REPLACE INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (51271, 0, 3089, 0, 0, 0, 'Braelnor', 'Librarian', 9015, 50, 50, 10605, 10605, 0, 0, 1200, 11, 5, 1.08, 1.14286, 0, 20, 5, 0, 0, 1, 42, 53, 0, 122, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 45.144, 62.073, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 1285, 0, 0, 0, 0, 524298, '');

update creature_template set faction = 57 where entry = 51271;
update creature_template set gossip_menu_id = 2304 where entry = 51271;
update creature_template set gossip_menu_id = 2304 where entry = 51270;
	 
	set @HumanVendorId  = 51270;
	set @DwarfVendorId  = 51271;
	 
	delete from npc_vendor where entry = @HumanVendorId;		
	replace into npc_vendor (entry, item) values 
	(@HumanVendorId, 51270),
	(@HumanVendorId, 51271),
	(@HumanVendorId, 51272),
	(@HumanVendorId, 51273),
	(@HumanVendorId, 51274),
	(@HumanVendorId, 51275),
	(@HumanVendorId, 51276);

	delete from npc_vendor where entry = @DwarfVendorId;		
	replace into npc_vendor (entry, item) values 
	(@DwarfVendorId, 51270),
	(@DwarfVendorId, 51271),
	(@DwarfVendorId, 51272),
	(@DwarfVendorId, 51273),
	(@DwarfVendorId, 51274),
	(@DwarfVendorId, 51275),
	(@DwarfVendorId, 51276);
	
	update creature_template set npc_flags = 4 where entry = 51270;
	update creature_template set npc_flags = 4 where entry = 51271;

	replace into quest_template (
	entry, patch, Method, ZoneOrSort, MinLevel, QuestLevel, MaxLevel, Type, RequiredClasses, RequiredRaces, RequiredSkill,
	RequiredSkillValue, RepObjectiveFaction, RepObjectiveValue, RequiredMinRepFaction, RequiredMinRepValue,RequiredMaxRepFaction,
	RequiredMaxRepValue, SuggestedPlayers, LimitTime, QuestFlags, SpecialFlags, PrevQuestId, NextQuestId, ExclusiveGroup, NextQuestInChain,
	SrcItemId, SrcItemCount, SrcSpell, Title, Details, Objectives, OfferRewardText, RequestItemsText, EndText, ObjectiveText1, ObjectiveText2,
	ObjectiveText3, ObjectiveText4, ReqItemId1, ReqItemId2, ReqItemId3, ReqItemId4, ReqItemCount1, ReqItemCount2, ReqItemCount3,
	ReqItemCount4, ReqSourceId1, ReqSourceId2, ReqSourceId3, ReqSourceId4, ReqSourceCount1, ReqSourceCount2, ReqSourceCount3,
	ReqSourceCount4, ReqCreatureOrGOId1, ReqCreatureOrGOId2, ReqCreatureOrGOId3, ReqCreatureOrGOId4, ReqCreatureOrGOCount1,
	ReqCreatureOrGOCount2, ReqCreatureOrGOCount3, ReqCreatureOrGOCount4, ReqSpellCast1, ReqSpellCast2, ReqSpellCast3,
	ReqSpellCast4, RewChoiceItemId1, RewChoiceItemId2, RewChoiceItemId3, RewChoiceItemId4, RewChoiceItemId5, RewChoiceItemId6,
	RewChoiceItemCount1, RewChoiceItemCount2, RewChoiceItemCount3, RewChoiceItemCount4, RewChoiceItemCount5, RewChoiceItemCount6,
	RewItemId1, RewItemId2, RewItemId3, RewItemId4, RewItemCount1, RewItemCount2, RewItemCount3, RewItemCount4, RewRepFaction1,
	RewRepFaction2, RewRepFaction3, RewRepFaction4, RewRepFaction5, RewRepValue1, RewRepValue2, RewRepValue3, RewRepValue4,
	RewRepValue5, RewOrReqMoney, RewMoneyMaxLevel, RewSpell, RewSpellCast, RewMailTemplateId, RewMailMoney, RewMailDelaySecs,
	PointMapId, PointX, PointY, PointOpt, DetailsEmote1, DetailsEmote2, DetailsEmote3, DetailsEmote4, DetailsEmoteDelay1,
	DetailsEmoteDelay2, DetailsEmoteDelay3, DetailsEmoteDelay4, IncompleteEmote, CompleteEmote, OfferRewardEmote1, OfferRewardEmote2,
	OfferRewardEmote3, OfferRewardEmote4, OfferRewardEmoteDelay1, OfferRewardEmoteDelay2, OfferRewardEmoteDelay3,OfferRewardEmoteDelay4,
	StartScript, CompleteScript)
			 values
	 ('60011', '0', '2', '12', '4', '15', '0', '0', '2', '0', '0',
	'0', '0', '0', '0', '0','0',
	'0', '0', '0', '0', '0', '0', '0', '0', '0',
	'0', '0', '0', 'Piercing Light', 'Paladin! It is a great responsibility protecting the weak and cast Justice upon the wicked. There\'s a special case when you will face very powerful and too fierce enemies who rage, anger and determination might bring a downfall to either you or your company, and there is such a foe.\n\nHe\'s known as Hogger.\n\nTo know the weaknesses of the enemies and bringing Justice you will need all prowess you can muster. Above all else you will need your faith in the Light more than ever and the Light shall grant you the strength.', 'Defeat Hogger in Elwynn Forest\'s Edge.', 'There\'s only one passion we paladins are allowed to foster. Passion to serve and protect.', 'To know the weaknesses of the enemies and bringing Justice you will need all prowess you can muster. Above all else you will need your faith in the Light more than ever and the Light shall grant you the strength.', '', '', '',
	'', '', '0', '0', '0', '0', '0', '0', '0',
	'0', '0', '0', '0', '0', '0', '0', '0',
	'0', '448', '0', '0', '0', '1',
	'0', '0', '0', '0', '0', '0',
	'0', '0', '0', '0', '0', '0', '0',
	'0', '0', '0', '0', '0', '0',
	'0', '0', '0', '0', '0', '0', '0', '0', '0',
	'0', '0', '0', '0', '0', '0', '0', '0',
	'0', '0', '0', '1888', '0', '0', '0', '0',
	'0', '0', '0', '0', '0', '0', '0', '0', '0',
	'0', '0', '0', '0', '0', '0', '0',
	'0', '0', '0', '0', '0','0',
	0, 0);
	 replace into creature_questrelation (id, quest, patch_min, patch_max)
		  values
		  ('928','60011','10','10');
		  
		  replace into creature_involvedrelation (id, quest, patch_min, patch_max)
		  values
		  ('928','60011','10','10');
		   
		  replace into quest_template (
	entry, patch, Method, ZoneOrSort, MinLevel, QuestLevel, MaxLevel, Type, RequiredClasses, RequiredRaces, RequiredSkill,
	RequiredSkillValue, RepObjectiveFaction, RepObjectiveValue, RequiredMinRepFaction, RequiredMinRepValue,RequiredMaxRepFaction,
	RequiredMaxRepValue, SuggestedPlayers, LimitTime, QuestFlags, SpecialFlags, PrevQuestId, NextQuestId, ExclusiveGroup, NextQuestInChain,
	SrcItemId, SrcItemCount, SrcSpell, Title, Details, Objectives, OfferRewardText, RequestItemsText, EndText, ObjectiveText1, ObjectiveText2,
	ObjectiveText3, ObjectiveText4, ReqItemId1, ReqItemId2, ReqItemId3, ReqItemId4, ReqItemCount1, ReqItemCount2, ReqItemCount3,
	ReqItemCount4, ReqSourceId1, ReqSourceId2, ReqSourceId3, ReqSourceId4, ReqSourceCount1, ReqSourceCount2, ReqSourceCount3,
	ReqSourceCount4, ReqCreatureOrGOId1, ReqCreatureOrGOId2, ReqCreatureOrGOId3, ReqCreatureOrGOId4, ReqCreatureOrGOCount1,
	ReqCreatureOrGOCount2, ReqCreatureOrGOCount3, ReqCreatureOrGOCount4, ReqSpellCast1, ReqSpellCast2, ReqSpellCast3,
	ReqSpellCast4, RewChoiceItemId1, RewChoiceItemId2, RewChoiceItemId3, RewChoiceItemId4, RewChoiceItemId5, RewChoiceItemId6,
	RewChoiceItemCount1, RewChoiceItemCount2, RewChoiceItemCount3, RewChoiceItemCount4, RewChoiceItemCount5, RewChoiceItemCount6,
	RewItemId1, RewItemId2, RewItemId3, RewItemId4, RewItemCount1, RewItemCount2, RewItemCount3, RewItemCount4, RewRepFaction1,
	RewRepFaction2, RewRepFaction3, RewRepFaction4, RewRepFaction5, RewRepValue1, RewRepValue2, RewRepValue3, RewRepValue4,
	RewRepValue5, RewOrReqMoney, RewMoneyMaxLevel, RewSpell, RewSpellCast, RewMailTemplateId, RewMailMoney, RewMailDelaySecs,
	PointMapId, PointX, PointY, PointOpt, DetailsEmote1, DetailsEmote2, DetailsEmote3, DetailsEmote4, DetailsEmoteDelay1,
	DetailsEmoteDelay2, DetailsEmoteDelay3, DetailsEmoteDelay4, IncompleteEmote, CompleteEmote, OfferRewardEmote1, OfferRewardEmote2,
	OfferRewardEmote3, OfferRewardEmote4, OfferRewardEmoteDelay1, OfferRewardEmoteDelay2, OfferRewardEmoteDelay3,OfferRewardEmoteDelay4,
	StartScript, CompleteScript)
			 values
	 ('60012', '0', '2', '1', '4', '15', '0', '0', '2', '0', '0',
	'0', '0', '0', '0', '0','0',
	'0', '0', '0', '0', '0', '0', '0', '0', '0',
	'0', '0', '0', 'Piercing Light', 'Paladin! It is a great responsibility protecting the weak and cast Justice upon the wicked. There\'s a special case when you will face very powerful and too fierce enemies who rage, anger and determination might bring a downfall to either you or your company, and there is such a foe.\n\nHe\'s known as Old Icebeard.\n\nTo know the weaknesses of the enemies and bringing Justice you will need all prowess you can muster. Above all else you will need your faith in the Light more than ever and the Light shall grant you the strength.', 'Defeat Old Icebeard west from Kharanos.', 'There\'s only one passion we paladins are allowed to foster. Passion to serve and protect.', 'To know the weaknesses of the enemies and bringing Justice you will need all prowess you can muster. Above all else you will need your faith in the Light more than ever and the Light shall grant you the strength.', '', '', '',
	'', '', '0', '0', '0', '0', '0', '0', '0',
	'0', '0', '0', '0', '0', '0', '0', '0',
	'0', '1271', '0', '0', '0', '1',
	'0', '0', '0', '0', '0', '0',
	'0', '0', '0', '0', '0', '0', '0',
	'0', '0', '0', '0', '0', '0',
	'0', '0', '0', '0', '0', '0', '0', '0', '0',
	'0', '0', '0', '0', '0', '0', '0', '0',
	'0', '0', '0', '1888', '0', '0', '0', '0',
	'0', '0', '0', '0', '0', '0', '0', '0', '0',
	'0', '0', '0', '0', '0', '0', '0',
	'0', '0', '0', '0', '0','0',
	0, 0);
	 replace into creature_questrelation (id, quest, patch_min, patch_max)
		  values
		  ('5149','60012','10','10');
		  
		  replace into creature_involvedrelation (id, quest, patch_min, patch_max)
		  values
		  ('5149','60012','10','10'); 
		  
		  UPDATE `quest_template` SET `RewMoneyMaxLevel`='610' WHERE (`entry`='60011') AND (`patch`='0');
		  UPDATE `quest_template` SET `RewMoneyMaxLevel`='610' WHERE (`entry`='60012') AND (`patch`='0');





