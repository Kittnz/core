-- Survival overhaul:

update quest_template set rewspell = 46050, rewspellcast = 46051 where entry = 50230;

-- Tent:

update item_template set required_skill_rank = 50, spellid_1 = 46059 where entry = 50234; -- Outline: Tent

replace into item_template (entry, class, subclass, name, description, display_id, quality, flags, buy_count, buy_price, sell_price, inventory_type, allowable_class, allowable_race, item_level, required_level, required_skill, required_skill_rank, required_spell, required_honor_rank, required_city_rank, required_reputation_faction, required_reputation_rank, max_count, stackable, container_slots, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3, stat_type4, stat_value4, stat_type5, stat_value5, stat_type6, stat_value6, stat_type7, stat_value7, stat_type8, stat_value8, stat_type9, stat_value9, stat_type10, stat_value10, delay, range_mod, ammo_type, dmg_min1, dmg_max1, dmg_type1, dmg_min2, dmg_max2, dmg_type2, dmg_min3, dmg_max3, dmg_type3, dmg_min4, dmg_max4, dmg_type4, dmg_min5, dmg_max5, dmg_type5, block, armor, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, spellid_3, spelltrigger_3, spellcharges_3, spellppmrate_3, spellcooldown_3, spellcategory_3, spellcategorycooldown_3, spellid_4, spelltrigger_4, spellcharges_4, spellppmrate_4, spellcooldown_4, spellcategory_4, spellcategorycooldown_4, spellid_5, spelltrigger_5, spellcharges_5, spellppmrate_5, spellcooldown_5, spellcategory_5, spellcategorycooldown_5, bonding, page_text, page_language, page_material, start_quest, lock_id, material, sheath, random_property, set_id, max_durability, area_bound, map_bound, duration, bag_family, disenchant_id, food_type, min_money_loot, max_money_loot, extra_flags, other_team_entry, script_name) values (51283, 9, 6, 'Traveler\'s Tent', '', 66152, 2, 64, 1, 0, 0, 0, -1, -1, 55, 0, 142, 50, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46058, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

-- Boat:

update item_template set required_skill_rank = 75, spellid_1 = 46061 where entry = 50235; -- Outline: Boat

replace into item_template (entry, class, subclass, name, description, display_id, quality, flags, buy_count, buy_price, sell_price, inventory_type, allowable_class, allowable_race, item_level, required_level, required_skill, required_skill_rank, required_spell, required_honor_rank, required_city_rank, required_reputation_faction, required_reputation_rank, max_count, stackable, container_slots, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3, stat_type4, stat_value4, stat_type5, stat_value5, stat_type6, stat_value6, stat_type7, stat_value7, stat_type8, stat_value8, stat_type9, stat_value9, stat_type10, stat_value10, delay, range_mod, ammo_type, dmg_min1, dmg_max1, dmg_type1, dmg_min2, dmg_max2, dmg_type2, dmg_min3, dmg_max3, dmg_type3, dmg_min4, dmg_max4, dmg_type4, dmg_min5, dmg_max5, dmg_type5, block, armor, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, spellid_3, spelltrigger_3, spellcharges_3, spellppmrate_3, spellcooldown_3, spellcategory_3, spellcategorycooldown_3, spellid_4, spelltrigger_4, spellcharges_4, spellppmrate_4, spellcooldown_4, spellcategory_4, spellcategorycooldown_4, spellid_5, spelltrigger_5, spellcharges_5, spellppmrate_5, spellcooldown_5, spellcategory_5, spellcategorycooldown_5, bonding, page_text, page_language, page_material, start_quest, lock_id, material, sheath, random_property, set_id, max_durability, area_bound, map_bound, duration, bag_family, disenchant_id, food_type, min_money_loot, max_money_loot, extra_flags, other_team_entry, script_name) values (51282, 9, 6, 'Fishing Boat', '', 66246, 2, 64, 1, 0, 0, 0, -1, -1, 55, 0, 142, 75, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46060, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

-- Planter

replace into item_template (entry, class, subclass, name, description, display_id, quality, flags, buy_count, buy_price, sell_price, inventory_type, allowable_class, allowable_race, item_level, required_level, required_skill, required_skill_rank, required_spell, required_honor_rank, required_city_rank, required_reputation_faction, required_reputation_rank, max_count, stackable, container_slots, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3, stat_type4, stat_value4, stat_type5, stat_value5, stat_type6, stat_value6, stat_type7, stat_value7, stat_type8, stat_value8, stat_type9, stat_value9, stat_type10, stat_value10, delay, range_mod, ammo_type, dmg_min1, dmg_max1, dmg_type1, dmg_min2, dmg_max2, dmg_type2, dmg_min3, dmg_max3, dmg_type3, dmg_min4, dmg_max4, dmg_type4, dmg_min5, dmg_max5, dmg_type5, block, armor, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, spellid_3, spelltrigger_3, spellcharges_3, spellppmrate_3, spellcooldown_3, spellcategory_3, spellcategorycooldown_3, spellid_4, spelltrigger_4, spellcharges_4, spellppmrate_4, spellcooldown_4, spellcategory_4, spellcategorycooldown_4, spellid_5, spelltrigger_5, spellcharges_5, spellppmrate_5, spellcooldown_5, spellcategory_5, spellcategorycooldown_5, bonding, page_text, page_language, page_material, start_quest, lock_id, material, sheath, random_property, set_id, max_durability, area_bound, map_bound, duration, bag_family, disenchant_id, food_type, min_money_loot, max_money_loot, extra_flags, other_team_entry, script_name) values (81187, 9, 6, 'Outline: Gardening Planter', 'Specially handcrafted planter with fertile and watered soil.', 6270, 2, 64, 1, 25000, 3750, 0, -1, -1, 55, 0, 142, 75, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46063, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

update item_template set required_skill_rank = 75 where entry = 51705;

update npc_vendor set item = 81187 where item = 51705;

-- Lantern

replace into item_template (entry, class, subclass, name, description, display_id, quality, flags, buy_count, buy_price, sell_price, inventory_type, allowable_class, allowable_race, item_level, required_level, required_skill, required_skill_rank, required_spell, required_honor_rank, required_city_rank, required_reputation_faction, required_reputation_rank, max_count, stackable, container_slots, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3, stat_type4, stat_value4, stat_type5, stat_value5, stat_type6, stat_value6, stat_type7, stat_value7, stat_type8, stat_value8, stat_type9, stat_value9, stat_type10, stat_value10, delay, range_mod, ammo_type, dmg_min1, dmg_max1, dmg_type1, dmg_min2, dmg_max2, dmg_type2, dmg_min3, dmg_max3, dmg_type3, dmg_min4, dmg_max4, dmg_type4, dmg_min5, dmg_max5, dmg_type5, block, armor, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, spellid_3, spelltrigger_3, spellcharges_3, spellppmrate_3, spellcooldown_3, spellcategory_3, spellcategorycooldown_3, spellid_4, spelltrigger_4, spellcharges_4, spellppmrate_4, spellcooldown_4, spellcategory_4, spellcategorycooldown_4, spellid_5, spelltrigger_5, spellcharges_5, spellppmrate_5, spellcooldown_5, spellcategory_5, spellcategorycooldown_5, bonding, page_text, page_language, page_material, start_quest, lock_id, material, sheath, random_property, set_id, max_durability, area_bound, map_bound, duration, bag_family, disenchant_id, food_type, min_money_loot, max_money_loot, extra_flags, other_team_entry, script_name) values (2714, 4, 0, 'Iron Lantern', 'Bright enough to not get lost in the woods.', 7461, 1, 0, 1, 950, 238, 23, -1, -1, 8, 10, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 1, NULL);

replace into item_template (entry, class, subclass, name, description, display_id, quality, flags, buy_count, buy_price, sell_price, inventory_type, allowable_class, allowable_race, item_level, required_level, required_skill, required_skill_rank, required_spell, required_honor_rank, required_city_rank, required_reputation_faction, required_reputation_rank, max_count, stackable, container_slots, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3, stat_type4, stat_value4, stat_type5, stat_value5, stat_type6, stat_value6, stat_type7, stat_value7, stat_type8, stat_value8, stat_type9, stat_value9, stat_type10, stat_value10, delay, range_mod, ammo_type, dmg_min1, dmg_max1, dmg_type1, dmg_min2, dmg_max2, dmg_type2, dmg_min3, dmg_max3, dmg_type3, dmg_min4, dmg_max4, dmg_type4, dmg_min5, dmg_max5, dmg_type5, block, armor, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, spellid_3, spelltrigger_3, spellcharges_3, spellppmrate_3, spellcooldown_3, spellcategory_3, spellcategorycooldown_3, spellid_4, spelltrigger_4, spellcharges_4, spellppmrate_4, spellcooldown_4, spellcategory_4, spellcategorycooldown_4, spellid_5, spelltrigger_5, spellcharges_5, spellppmrate_5, spellcooldown_5, spellcategory_5, spellcategorycooldown_5, bonding, page_text, page_language, page_material, start_quest, lock_id, material, sheath, random_property, set_id, max_durability, area_bound, map_bound, duration, bag_family, disenchant_id, food_type, min_money_loot, max_money_loot, extra_flags, other_team_entry, script_name) values (81187, 9, 6, 'Outline: Iron Lantern', '', 15274, 2, 64, 1, 5000, 1750, 0, -1, -1, 55, 0, 142, 30, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46076, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

update item_template set bonding = 0, quality = 2 where entry = 2714;

-- Sturdy rope:

replace into item_template (entry, class, subclass, name, description, display_id, quality, flags, buy_count, buy_price, sell_price, inventory_type, allowable_class, allowable_race, item_level, required_level, required_skill, required_skill_rank, required_spell, required_honor_rank, required_city_rank, required_reputation_faction, required_reputation_rank, max_count, stackable, container_slots, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3, stat_type4, stat_value4, stat_type5, stat_value5, stat_type6, stat_value6, stat_type7, stat_value7, stat_type8, stat_value8, stat_type9, stat_value9, stat_type10, stat_value10, delay, range_mod, ammo_type, dmg_min1, dmg_max1, dmg_type1, dmg_min2, dmg_max2, dmg_type2, dmg_min3, dmg_max3, dmg_type3, dmg_min4, dmg_max4, dmg_type4, dmg_min5, dmg_max5, dmg_type5, block, armor, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, spellid_3, spelltrigger_3, spellcharges_3, spellppmrate_3, spellcooldown_3, spellcategory_3, spellcategorycooldown_3, spellid_4, spelltrigger_4, spellcharges_4, spellppmrate_4, spellcooldown_4, spellcategory_4, spellcategorycooldown_4, spellid_5, spelltrigger_5, spellcharges_5, spellppmrate_5, spellcooldown_5, spellcategory_5, spellcategorycooldown_5, bonding, page_text, page_language, page_material, start_quest, lock_id, material, sheath, random_property, set_id, max_durability, area_bound, map_bound, duration, bag_family, disenchant_id, food_type, min_money_loot, max_money_loot, extra_flags, other_team_entry, script_name) values (50231, 7, 0, 'Sturdy Rope', 'A strong, braided leather rope.', 10301, 1, 0, 1, 100, 25, 0, -1, -1, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) values (777, 50231, 0, 0, 0, 0), (843, 50231, 0, 0, 0, 0), (960, 50231, 0, 0, 0, 0), (989, 50231, 0, 0, 0, 0), (1148, 50231, 0, 0, 0, 0), (1286, 50231, 0, 0, 0, 0), (1347, 50231, 0, 0, 0, 0), (1454, 50231, 0, 0, 0, 0), (1456, 50231, 0, 0, 0, 0), (1465, 50231, 0, 0, 0, 0), (1474, 50231, 0, 0, 0, 0), (1672, 50231, 0, 0, 0, 0), (2381, 50231, 0, 0, 0, 0), (2393, 50231, 0, 0, 0, 0), (2394, 50231, 0, 0, 0, 0), (2668, 50231, 0, 0, 0, 0), (2669, 50231, 0, 0, 0, 0), (2670, 50231, 0, 0, 0, 0), (2672, 50231, 0, 0, 0, 0), (2697, 50231, 0, 0, 0, 0), (2698, 50231, 0, 0, 0, 0), (2699, 50231, 0, 0, 0, 0), (2810, 50231, 0, 0, 0, 0), (2816, 50231, 0, 0, 0, 0), (2819, 50231, 0, 0, 0, 0), (2821, 50231, 0, 0, 0, 0), (2846, 50231, 0, 0, 0, 0), (3005, 50231, 0, 0, 0, 0), (3091, 50231, 0, 0, 0, 0), (3096, 50231, 0, 0, 0, 0), (3364, 50231, 0, 0, 0, 0), (3366, 50231, 0, 0, 0, 0), (3367, 50231, 0, 0, 0, 0), (3482, 50231, 0, 0, 0, 0), (3485, 50231, 0, 0, 0, 0), (3499, 50231, 0, 0, 0, 0), (3556, 50231, 0, 0, 0, 0), (3779, 50231, 0, 0, 0, 0), (3954, 50231, 0, 0, 0, 0), (3955, 50231, 0, 0, 0, 0), (3958, 50231, 0, 0, 0, 0), (4168, 50231, 0, 0, 0, 0), (4189, 50231, 0, 0, 0, 0), (4194, 50231, 0, 0, 0, 0), (4225, 50231, 0, 0, 0, 0), (4229, 50231, 0, 0, 0, 0), (4561, 50231, 0, 0, 0, 0), (4577, 50231, 0, 0, 0, 0), (4589, 50231, 0, 0, 0, 0), (4775, 50231, 0, 0, 0, 0), (4877, 50231, 0, 0, 0, 0), (4897, 50231, 0, 0, 0, 0), (5100, 50231, 0, 0, 0, 0), (5128, 50231, 0, 0, 0, 0), (5154, 50231, 0, 0, 0, 0), (5163, 50231, 0, 0, 0, 0), (5565, 50231, 0, 0, 0, 0), (5783, 50231, 0, 0, 0, 0), (5817, 50231, 0, 0, 0, 0), (5944, 50231, 0, 0, 0, 0), (6301, 50231, 0, 0, 0, 0), (6567, 50231, 0, 0, 0, 0), (6568, 50231, 0, 0, 0, 0), (6574, 50231, 0, 0, 0, 0), (6576, 50231, 0, 0, 0, 0), (6731, 50231, 0, 0, 0, 0), (7852, 50231, 0, 0, 0, 0), (7854, 50231, 0, 0, 0, 0), (7940, 50231, 0, 0, 0, 0), (7947, 50231, 0, 0, 0, 0), (8145, 50231, 0, 0, 0, 0), (8160, 50231, 0, 0, 0, 0), (8363, 50231, 0, 0, 0, 0), (8681, 50231, 0, 0, 0, 0), (8934, 50231, 0, 0, 0, 0), (9636, 50231, 0, 0, 0, 0), (11189, 50231, 0, 0, 0, 0), (11557, 50231, 0, 0, 0, 0), (12022, 50231, 0, 0, 0, 0), (12028, 50231, 0, 0, 0, 0), (12043, 50231, 0, 0, 0, 0), (12245, 50231, 0, 0, 0, 0), (12941, 50231, 0, 0, 0, 0), (12942, 50231, 0, 0, 0, 0), (12943, 50231, 0, 0, 0, 0), (12956, 50231, 0, 0, 0, 0), (12957, 50231, 0, 0, 0, 0), (12958, 50231, 0, 0, 0, 0), (15179, 50231, 0, 0, 0, 0), (5135, 50231, 0, 0, 0, 0), (2225, 50231, 0, 0, 0, 0), (52128, 50231, 0, 0, 0, 0), (91247, 50231, 0, 0, 0, 0), (11874, 50231, 0, 0, 0, 0), (91983, 50231, 0, 0, 0, 0), (92020, 50231, 0, 0, 0, 0), (92195, 50231, 0, 0, 0, 0), (91882, 50231, 0, 0, 0, 0), (60637, 50231, 0, 0, 0, 0), (60771, 50231, 0, 0, 0, 0), (60800, 50231, 0, 0, 0, 0), (60808, 50231, 0, 0, 0, 0);
delete from npc_vendor where entry = 2483 and item = 50231;

-- Flipper

replace into item_template (entry, class, subclass, name, description, display_id, quality, flags, buy_count, buy_price, sell_price, inventory_type, allowable_class, allowable_race, item_level, required_level, required_skill, required_skill_rank, required_spell, required_honor_rank, required_city_rank, required_reputation_faction, required_reputation_rank, max_count, stackable, container_slots, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3, stat_type4, stat_value4, stat_type5, stat_value5, stat_type6, stat_value6, stat_type7, stat_value7, stat_type8, stat_value8, stat_type9, stat_value9, stat_type10, stat_value10, delay, range_mod, ammo_type, dmg_min1, dmg_max1, dmg_type1, dmg_min2, dmg_max2, dmg_type2, dmg_min3, dmg_max3, dmg_type3, dmg_min4, dmg_max4, dmg_type4, dmg_min5, dmg_max5, dmg_type5, block, armor, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, spellid_3, spelltrigger_3, spellcharges_3, spellppmrate_3, spellcooldown_3, spellcategory_3, spellcategorycooldown_3, spellid_4, spelltrigger_4, spellcharges_4, spellppmrate_4, spellcooldown_4, spellcategory_4, spellcategorycooldown_4, spellid_5, spelltrigger_5, spellcharges_5, spellppmrate_5, spellcooldown_5, spellcategory_5, spellcategorycooldown_5, bonding, page_text, page_language, page_material, start_quest, lock_id, material, sheath, random_property, set_id, max_durability, area_bound, map_bound, duration, bag_family, disenchant_id, food_type, min_money_loot, max_money_loot, extra_flags, other_team_entry, script_name) values 
(65029, 9, 6, 'Outline: Murloc Flippers', 'These things really make you swim fast!', 6270, 2, 64, 1, 25000, 11750, 0, -1, -1, 55, 0, 142, 75, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46067, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

-- All should be misc type:

update item_template set class = 4, subclass = 0 where entry in (51705, 51282, 51283);

-- Murloc Flippers and Repaired Electro-Lantern
replace into item_template values
 ('65028', '4', '1', 'Murloc\'s Flippers', '', '16820', '2', '0', '1', '2020', '404', '8', '-1', '-1', '20',
 '15', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '2', '4', '2',
 '5', '2', '7', '2', '6', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '23', '0', '0', '0',
 '0', '0', '0', '48015', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '2', '0', '0', '0', '0', '0', '2', '1', '0', '0', '30', '0', '0', '0', '0', '1', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('65030', '4', '0', 'Repaired Electro-Lantern', '', '7461', '3', '0', '1', '13012', '3253', '23', '-1', '-1', '35',
 '30', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '6', '8', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '7363', '1', '0', '0', '-1', '0', '-1', '16615', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '43', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('65031', '9', '0', 'Outline: Repaired Electro-Lantern', 'Your savior when the oil runs out.', '6270', '3', '0', '1', '50000', '12500', '0', '-1', '-1', '35',
 '0', '51', '60', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '46077', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

-- Custom skins handling in 1.16.1:
update item_template set description = '', spellid_1 = 56053, script_name = '' where name like '%Skin Change Token%';

-- Adds missing Remove Lesser Curse to a mage trainer in Stormwind

set @trainer = 331;
set @spell = 1176;
set @spellcost = 1800; 
set @reqskill = 0; 
set @reqskillvalue = 0; 
set @player_level = 18; 

replace into npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) values (@trainer,@spell,@spellcost,@reqskill,@reqskillvalue,@player_level);

-- Totemic Recall Learning

set @trainer = 3157;
set @spell = 47268;
set @spellcost = 8000; -- in copper
set @reqskill = 0; -- not needed for class spells
set @reqskillvalue = 0; -- not needed for class spells
set @player_level = 30; 

replace into npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) values (@trainer,@spell,@spellcost,@reqskill,@reqskillvalue,@player_level);

set @trainer = 3173;
set @spell = 47268;
set @spellcost = 8000; -- in copper
set @reqskill = 0; -- not needed for class spells
set @reqskillvalue = 0; -- not needed for class spells
set @player_level = 30; 

replace into npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) values (@trainer,@spell,@spellcost,@reqskill,@reqskillvalue,@player_level);

set @trainer = 3062;
set @spell = 47340;
set @spellcost = 22000; -- in copper
set @reqskill = 0; -- not needed for class spells
set @reqskillvalue = 0; -- not needed for class spells
set @player_level = 40; 

replace into npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) values (@trainer,@spell,@spellcost,@reqskill,@reqskillvalue,@player_level);

set @trainer = 3066;
set @spell = 47340;
set @spellcost = 22000; -- in copper
set @reqskill = 0; -- not needed for class spells
set @reqskillvalue = 0; -- not needed for class spells
set @player_level = 40; 

replace into npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) values (@trainer,@spell,@spellcost,@reqskill,@reqskillvalue,@player_level);

set @trainer = 3344;
set @spell = 47340;
set @spellcost = 22000; -- in copper
set @reqskill = 0; -- not needed for class spells
set @reqskillvalue = 0; -- not needed for class spells
set @player_level = 40; 

replace into npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) values (@trainer,@spell,@spellcost,@reqskill,@reqskillvalue,@player_level);

set @trainer = 13417;
set @spell = 47340;
set @spellcost = 22000; -- in copper
set @reqskill = 0; -- not needed for class spells
set @reqskillvalue = 0; -- not needed for class spells
set @player_level = 40; 

replace into npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) values (@trainer,@spell,@spellcost,@reqskill,@reqskillvalue,@player_level);

set @trainer = 3403;
set @spell = 47340;
set @spellcost = 22000; -- in copper
set @reqskill = 0; -- not needed for class spells
set @reqskillvalue = 0; -- not needed for class spells
set @player_level = 40; 

replace into npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) values (@trainer,@spell,@spellcost,@reqskill,@reqskillvalue,@player_level);

set @trainer = 986;
set @spell = 47340;
set @spellcost = 22000; -- in copper
set @reqskill = 0; -- not needed for class spells
set @reqskillvalue = 0; -- not needed for class spells
set @player_level = 40; 

replace into npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) values (@trainer,@spell,@spellcost,@reqskill,@reqskillvalue,@player_level);

set @trainer = 3032;
set @spell = 47340;
set @spellcost = 22000; -- in copper
set @reqskill = 0; -- not needed for class spells
set @reqskillvalue = 0; -- not needed for class spells
set @player_level = 40; 

replace into npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) values (@trainer,@spell,@spellcost,@reqskill,@reqskillvalue,@player_level);

set @trainer = 3030;
set @spell = 47340;
set @spellcost = 22000; -- in copper
set @reqskill = 0; -- not needed for class spells
set @reqskillvalue = 0; -- not needed for class spells
set @player_level = 40;  

replace into npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) values (@trainer,@spell,@spellcost,@reqskill,@reqskillvalue,@player_level);

set @trainer = 3031;
set @spell = 47340;
set @spellcost = 22000; -- in copper
set @reqskill = 0; -- not needed for class spells
set @reqskillvalue = 0; -- not needed for class spells
set @player_level = 40; 

replace into npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) values (@trainer,@spell,@spellcost,@reqskill,@reqskillvalue,@player_level);

update item_template set description = '', spell_id1 = 56053, script_name = '' where name like '%Skin Change Token%';