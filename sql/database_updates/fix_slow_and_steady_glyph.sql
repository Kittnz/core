update item_template set name = 'Deprecated Glyph of the Turtle', quality = 0, description = '', sell_price = 5, buy_price = 25 where entry = 50010;

delete from quest_template where entry = 60118;

replace into item_template (entry, class, subclass, name, description, display_id, quality, flags, buy_count, buy_price, sell_price, inventory_type, allowable_class, allowable_race, item_level, required_level, required_skill, required_skill_rank, required_spell, required_honor_rank, required_city_rank, required_reputation_faction, required_reputation_rank, max_count, stackable, container_slots, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3, stat_type4, stat_value4, stat_type5, stat_value5, stat_type6, stat_value6, stat_type7, stat_value7, stat_type8, stat_value8, stat_type9, stat_value9, stat_type10, stat_value10, delay, range_mod, ammo_type, dmg_min1, dmg_max1, dmg_type1, dmg_min2, dmg_max2, dmg_type2, dmg_min3, dmg_max3, dmg_type3, dmg_min4, dmg_max4, dmg_type4, dmg_min5, dmg_max5, dmg_type5, block, armor, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, spellid_3, spelltrigger_3, spellcharges_3, spellppmrate_3, spellcooldown_3, spellcategory_3, spellcategorycooldown_3, spellid_4, spelltrigger_4, spellcharges_4, spellppmrate_4, spellcooldown_4, spellcategory_4, spellcategorycooldown_4, spellid_5, spelltrigger_5, spellcharges_5, spellppmrate_5, spellcooldown_5, spellcategory_5, spellcategorycooldown_5, bonding, page_text, page_language, page_material, start_quest, lock_id, material, sheath, random_property, set_id, max_durability, area_bound, map_bound, duration, bag_family, disenchant_id, food_type, min_money_loot, max_money_loot, extra_flags, other_team_entry, script_name) values (51230, 0, 0, 'Glyph of Long Journey', 'You lose 5% of your experience on death and you get half experience from creature kills.', 7694, 1, 0, 1, 5, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50017, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

update item_template set spellid_1 = 50017, spellcharges_1 = -1, class = 0, bag_family = 0, description = 'You lose 5% of your experience on death and you get half experience from creature kills.' where entry = 51230;

delete from npc_vendor where item = 50010;
delete from npc_vendor where item = 51230;

replace into conditions (condition_entry, type, value1, value2) VALUES (80000, 15, 5, 2);

replace into npc_vendor values (51540, 51230, 0, 0, 0, 80000);
replace into npc_vendor values (51541, 51230, 0, 0, 0, 80000);
replace into npc_vendor values (51542, 51230, 0, 0, 0, 80000);
replace into npc_vendor values (51543, 51230, 0, 0, 0, 80000);
replace into npc_vendor values (51544, 51230, 0, 0, 0, 80000);
replace into npc_vendor values (51545, 51230, 0, 0, 0, 80000);
replace into npc_vendor values (51546, 51230, 0, 0, 0, 80000);
replace into npc_vendor values (51547, 51230, 0, 0, 0, 80000);