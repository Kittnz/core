-- Change NPC ID 81034's faction to Durotar Labor Union.
update creature_template set faction = 1001 where entry = 81034;

-- New item 'The Golden Goblet'.
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, random_property, required_reputation_faction, required_reputation_rank) values
(55146, 'The Golden Goblet', '', 4, 0, 1, 2, 66212, 2, 33, 0, -1, -1, 12000, 3000, 12, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 38, 0, 26, 0, 0, 0, 0, 0, 0, 7, 5, 21507, 1, 0, 0, -1, 0, -1, 0, 0, 0);
