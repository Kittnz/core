-- Apply New Set to Items
update item_template set set_id = 612 where entry = 60568;
update item_template set set_id = 612 where entry = 60572;
update item_template set set_id = 612 where entry = 60582;
-- New Incendosaur Skin Gloves for 3 Set
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, random_property, required_reputation_faction, required_reputation_rank) values (60582, 'Incendosaur Skin Gloves', '', 4, 2, 8, 3, 3992, 2, 49, 0, -1, -1, 50389, 12597, 10, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 35, 97, 0, 0, 54, 0, 47, 0, 0, 0, 0, 0, 0, 7, 12, 9336, 1, 0, 0, -1, 0, -1, 7711, 1, 0, 0, 0, 0, 0, 0, 0, 0);
-- Mini Rebalance
update item_template set stat_value1 = 14 where entry = 60572;

-- REMEMBER THAT THE LATEST ItemSet.dbc NEEDS TO BE APPLIED FOR THE SET TO WORK