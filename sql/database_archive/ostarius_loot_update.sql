-- Existing Item Updates
update item_template set spellid_2 = 15886, stat_value1 = 18, item_level = 75, armor = 529 where entry = 83485; -- Fists of the Makers

update item_template set spellid_1 = 15464, stat_value1 = 22, item_level = 75, armor = 57 where entry = 83486; -- Sandstalker's Shroud

update item_template set spellid_2 = 26700, item_level = 75 where entry = 83487; -- Blade of the Fallen Star

update item_template set spellid_3 = 13383, spelltrigger_3 = 1, stat_value2 = 30, item_level = 75, armor = 435 where entry = 83488; -- Uldum Construct Stompers

update item_template set spellid_1 = 18035, stat_value3 = 0, stat_type3 = 0, item_level = 75 where entry = 83480; -- Tome of Infalliable Truth

update item_template set stat_value2 = 16, item_level = 75 where entry = 83481; -- Failsafe Activation Key

update item_template set spellid_1 = 23729, spelltrigger_1 = 1, spellid_2 = 9416, spelltrigger_2 = 1, item_level = 75 where entry = 83482; -- Distress Signal Pulser

update item_template set stat_value2 = 16, stat_value1 = 20, item_level = 75 where entry = 83483; -- Crown of Divine Justice

update item_template set stat_value2 = 15, item_level = 75 where entry = 83484; -- Desert Wind Talisman

-- New Items 

replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, stat_type2, stat_value2, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, random_property, required_reputation_faction, required_reputation_rank) values (83530, 'Turban of Veiled Mists', '', 4, 1, 7, 4, 24942, 1, 60, 0, -1, -1, 173034, 43258, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 60, 93, 0, 0, 75, 0, 65, 0, 0, 0, 0, 0, 0, 5, 22, 7, 16, 18055, 1, 0, 0, -1, 0, -1, 23729, 1, 0, 0, -1, 0, -1, 0, 0, 0); -- Turban of Veiled Mists
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, random_property, required_reputation_faction, required_reputation_rank) values (83531, 'Clutch of Mending Winds', '', 4, 2, 8, 4, 17115, 1, 60, 0, -1, -1, 132673, 33168, 6, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 40, 125, 0, 0, 75, 0, 65, 0, 0, 0, 0, 0, 0, 5, 20, 7, 14, 6, 10, 18029, 1, 0, 0, -1, 0, -1, 21626, 1, 0, 0, -1, 0, -1, 0, 0, 0); -- Clutch of Mending Winds
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, stat_type2, stat_value2, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, spellid_3, spelltrigger_3, spellcharges_3, spellppmrate_3, spellcooldown_3, spellcategory_3, spellcategorycooldown_3, random_property, required_reputation_faction, required_reputation_rank) values (83532, 'Bracers of the Crescent Moon', '', 4, 2, 8, 4, 28286, 1, 60, 0, -1, -1, 139432, 34858, 9, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 40, 97, 0, 0, 75, 0, 65, 0, 0, 0, 0, 0, 0, 5, 12, 7, 10, 17987, 1, 0, 0, -1, 0, -1, 17821, 1, 0, 0, -1, 0, -1, 23727, 1, 0, 0, -1, 0, -1, 0, 0, 0); -- Bracers of the Crescent Moon

delete from creature_loot_template where entry = 80935;

replace into creature_loot_template values 
(80935, 17962, 25, 4, 1, 1, 0),
(80935, 17963, 25, 4, 1, 1, 0),
(80935, 17965, 25, 4, 1, 1, 0),
(80935, 17969, 25, 4, 1, 1, 0),

(80935, 83235, 100, 3, 1, 1, 0),

(80935, 83480, 16.6, 1, 1, 1, 0),
(80935, 83481, 16.6, 1, 1, 1, 0),
(80935, 83482, 16.6, 1, 1, 1, 0),
(80935, 83483, 16.6, 1, 1, 1, 0),
(80935, 83484, 16.6, 1, 1, 1, 0),
(80935, 83532, 16.6, 1, 1, 1, 0),

(80935, 83485, 16.6, 2, 1, 1, 0),
(80935, 83486, 16.6, 2, 1, 1, 0),
(80935, 83487, 16.6, 2, 1, 1, 0),
(80935, 83488, 16.6, 2, 1, 1, 0),
(80935, 83530, 16.6, 2, 1, 1, 0),
(80935, 83531, 16.6, 2, 1, 1, 0);
