-- Apply new itemsets to items.
update item_template set set_id = 616 where entry = 15059;
update item_template set set_id = 616 where entry = 15060;
update item_template set set_id = 616 where entry = 15061;

update item_template set set_id = 617 where entry = 15064;
update item_template set set_id = 617 where entry = 15065;

update item_template set set_id = 618 where entry = 8347;
update item_template set set_id = 618 where entry = 8367;
update item_template set set_id = 618 where entry = 65019;

update item_template set set_id = 619 where entry = 60579;
update item_template set set_id = 619 where entry = 60580;
update item_template set set_id = 619 where entry = 60581;

update item_template set set_id = 612 where entry = 60582;

update item_template set set_id = 621 where entry = 60558;
update item_template set set_id = 621 where entry = 60557;
update item_template set set_id = 621 where entry = 60556;
update item_template set set_id = 621 where entry = 60555;
-- Recipe Item Adjustments
update item_template set stat_value1 = 22, spellid_2 = 23727, stat_value2 = 0, spellid_1 = 18056, spellid_3 = 48002, spellcooldown_3 = 900000 where entry = 65003; -- Robe of Sacrifice
update item_template set stat_value2 = 12, spellid_1 = 16638 where entry = 65006; -- Stormscale Leggings
update item_template set spellcharges_1 = 10 where entry = 9449; -- Manual Crowd Pummeler
update item_template set spellid_2 = 13679 where entry = 60577; -- Hateforge Grips
update item_template set spellid_1 = 48008 where entry = 65005; -- Bloodletter Razor
update item_template set spellid_1 = 48005 where entry = 65013; -- Frostbound Slasher
update item_template set dmg_min1 = 58, dmg_max1 = 109 where entry = 65008; -- Dream's Herald
-- Recipe Items for Hateforge Items
replace into item_template values
 ('83562', '9', '4', 'Plans: Hateforge Belt', '', '6270', '3', '0', '1', '12000', '3000', '0', '-1', '-1', '55',
 '0', '164', '275', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '47334', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
replace into item_template values
 ('83563', '9', '4', 'Plans: Hateforge Boots', '', '6270', '3', '0', '1', '12000', '3000', '0', '-1', '-1', '55',
 '0', '164', '275', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '47336', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
replace into item_template values
 ('83564', '9', '4', 'Plans: Hateforge Grips', '', '1096', '4', '0', '1', '14000', '3500', '0', '-1', '-1', '57',
 '0', '164', '285', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '47335', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
replace into item_template values
 ('83566', '9', '4', 'Plans: Hateforge Cuirass', '', '6270', '3', '0', '1', '14000', '3500', '0', '-1', '-1', '58',
 '0', '164', '290', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '47332', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
replace into item_template values
 ('83565', '9', '4', 'Plans: Hateforge Helmet', '', '6270', '3', '0', '1', '14000', '3500', '0', '-1', '-1', '58',
 '0', '164', '290', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '47331', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
replace into item_template values
 ('83566', '9', '4', 'Plans: Hateforge Leggings', '', '6270', '3', '0', '1', '14000', '3500', '0', '-1', '-1', '58',
 '0', '164', '290', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '47333', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
-- Convergence of the Elements and Verdant Dreamer Items
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, random_property, required_reputation_faction, required_reputation_rank) values (65025, 'Flamewrath Leggings', '', 4, 2, 8, 4, 17137, 1, 60, 0, -1, -1, 172385, 43096, 7, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 90, 175, 0, 0, 66, 0, 65, 0, 10, 0, 0, 0, 0, 4, 25, 3, 18, 7, 18, 7597, 1, 0, 0, -1, 0, -1, 15464, 1, 0, 0, -1, 0, -1, 0, 0, 0); -- Flamewrath Leggings
update item_template set set_id = 620 where entry = 65025;
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, random_property, required_reputation_faction, required_reputation_rank) values (65024, 'Earthguard Tunic', '', 4, 2, 8, 4, 17099, 1, 60, 0, -1, -1, 172356, 43089, 5, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 120, 275, 0, 0, 66, 0, 65, 0, 0, 10, 0, 0, 0, 3, 10, 4, 6, 7, 25, 13670, 1, 0, 0, 0, 0, -1, 15464, 1, 0, 0, -1, 0, -1, 0, 0, 0); -- Earthguard Tunic
update item_template set set_id = 620 where entry = 65024;
replace into item_template values -- Depthstalker Helm
 ('65026', '4', '2', 'Depthstalker Helm', '', '35095', '4', '0', '1', '160981', '32076', '1', '-1', '-1', '66',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '14', '4', '14',
 '5', '14', '7', '14', '6', '14', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '163', '0', '0', '0',
 '10', '0', '0', '7597', '1', '0', '0', '-1', '0', '-1', '15464', '1', '0', '0', '-1', '0', '-1', '13669', '1',
 '0', '0', '-1', '0', '-1', '21361', '1', '0', '0', '-1', '0', '-1', '11789', '1', '0', '0', '-1', '0',
 '-1', '2', '0', '0', '0', '0', '0', '8', '1', '0', '620', '70', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values -- Windwalker Boots
 ('65027', '4', '2', 'Windwalker Boots', '', '25703', '4', '0', '1', '160214', '31814', '8', '-1', '-1', '66',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '22', '7', '10',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '138', '0', '0', '0',
 '0', '0', '0', '13669', '1', '0', '0', '-1', '0', '-1', '8815', '1', '0', '0', '-1', '0', '-1', '23990', '1',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '2', '0', '0', '0', '0', '0', '8', '1', '0', '620', '60', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('65021', '4', '2', 'Verdant Dreamer\'s Breastplate', '', '83547', '4', '0', '1', '250745', '50109', '5', '-1', '-1', '68',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '18', '7', '12',
 '6', '20', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '246', '0', '0', '0',
 '0', '0', '0', '18039', '1', '0', '0', '-1', '0', '-1', '14521', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '2', '0', '0', '0', '0', '0', '8', '1', '0', '0', '100', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);
-- Recipe Items for My Crafted Epics
replace into item_template values
 ('83544', '9', '1', 'Pattern: Stormscale Leggings', '', '1096', '4', '0', '1', '40000', '10000', '0', '-1', '-1', '66',
 '0', '165', '300', '10656', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '47238', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('83545', '9', '2', 'Pattern: Robe of Sacrifice', '', '1096', '4', '0', '1', '40000', '10000', '0', '-1', '-1', '66',
 '0', '197', '300', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '47238', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('83546', '9', '1', 'Pattern: Verdant Dreamer\'s Breastplate', '', '1096', '1', '0', '1', '60000', '15000', '0', '-1', '-1', '66',
 '0', '165', '300', '0', '0', '0', '609', '7', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '47330', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('83547', '9', '4', 'Plans: Pauldron of Deflection', '', '1096', '4', '0', '1', '40000', '10000', '0', '-1', '-1', '66',
 '0', '164', '300', '9788', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '47246', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('83548', '9', '4', 'Plans: Dream\'s Herald', '', '1096', '1', '0', '1', '40000', '10000', '0', '-1', '-1', '66',
 '0', '164', '300', '17039', '0', '0', '609', '7', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '47240', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('83549', '9', '4', 'Plans: Frostbound Slasher', '', '6270', '3', '0', '1', '4000', '1000', '0', '-1', '-1', '36',
 '0', '164', '180', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '47245', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
-- Convergence of the Elements Secret Acquisition Items
replace into item_template values
 ('83550', '15', '0', 'Primordial Flame', 'The flame flickers constantly.', '31282', '4', '0', '1', '80000', '20000', '0', '-1', '-1', '66',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('83551', '15', '0', 'Evershifting Stone', 'Its as if the stone has a life of its own.', '24019', '4', '0', '1', '80000', '20000', '0', '-1', '-1', '66',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('83552', '15', '0', 'Unmelting Ice', 'The ice chunk seems to get colder as it gets closer to heat.', '19800', '4', '0', '1', '80000', '20000', '0', '-1', '-1', '66',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('83553', '15', '0', 'Unyielding Gust', 'By some force unknown, it feels as if the winds are solid enough to grasp.', '13687', '4', '0', '1', '80000', '20000', '0', '-1', '-1', '66',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('83554', '15', '0', 'Abyssal Flame', 'Some otherworldly essence lingers around the flame, bending it in mysterious ways.', '29722', '4', '0', '1', '80000', '20000', '0', '-1', '-1', '66',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('83555', '15', '0', 'Abyssal Slate', 'The mere sight of it tells you something is terribly wrong about this.', '34543', '4', '0', '1', '80000', '20000', '0', '-1', '-1', '66',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('83556', '15', '0', 'Abyssal Wind', 'Holding the unusually heavy orb dulls your senses.', '23755', '4', '0', '1', '80000', '20000', '0', '-1', '-1', '66',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('83557', '15', '0', 'Abyssal Wave', 'The liquid seems to be flowing up, as if its trying to break free.', '33283', '4', '0', '1', '80000', '20000', '0', '-1', '-1', '66',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('83558', '15', '0', 'Rage of the Elements', 'Molding the azerothian flame with the abyssal fire increased its heat tenfold, its true form is unleashed.', '35596', '4', '0', '1', '200000', '50000', '0', '-1', '-1', '66',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('83559', '15', '0', 'Endurance of the Elements', 'Molding the azerothian rock with the abyssal slate increased its toughness tenfold, its true form is unleashed.', '35596', '4', '0', '1', '200000', '50000', '0', '-1', '-1', '66',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('83560', '15', '0', 'Swiftness of the Elements', 'Combining the azerothian and abyssal winds changed it from a gentle gust to a relentless storm, its true form is unleashed.', '23284', '4', '0', '1', '200000', '50000', '0', '-1', '-1', '66',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('83561', '15', '0', 'Insight of the Elements', 'Shaping the abyssal wave around the unmelting ice calmed down the waves, filling your head untold knowledge, its true form is unleashed.', '27227', '4', '0', '1', '200000', '50000', '0', '-1', '-1', '66',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

-- Corossis Items
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, random_property, required_reputation_faction, required_reputation_rank) values (80670, 'Sludge-drenched Sabatons', '', 4, 4, 6, 2, 27419, 0, 48, 0, -1, -1, 32942, 8235, 13, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 55, 348, 0, 0, 53, 0, 9, 0, 0, 15, 0, 0, 0, 7, 12, 0, 0, 0);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, random_property, required_reputation_faction, required_reputation_rank) values (80671, 'Toxic Ripper', '', 2, 15, 1, 2, 20598, 1, 48, 0, -1, -1, 116423, 29105, 13, 3, 0, 0, 1, 1, 0, 36, 67, 1600, 0, 0, 55, 0, 0, 0, 53, 0, 9, 0, 0, 0, 0, 0, 0, 17511, 2, 0, 1, -1, 0, -1, 0, 0, 0);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, stat_type2, stat_value2, random_property, required_reputation_faction, required_reputation_rank) values (80672, 'Venomsight Mask', '', 4, 2, 8, 2, 26305, 1, 48, 0, -1, -1, 41529, 10382, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 50, 113, 0, 0, 54, 0, 9, 0, 0, 0, 0, 0, 0, 3, 18, 7, 11, 0, 0, 0);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, stat_type2, stat_value2, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, random_property, required_reputation_faction, required_reputation_rank) values (80673, 'Murkwater Leggings', '', 4, 3, 5, 2, 25820, 1, 48, 0, -1, -1, 66475, 16618, 7, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 75, 252, 0, 0, 53, 0, 9, 0, 0, 0, 0, 0, 0, 5, 8, 7, 10, 17988, 1, 0, 0, -1, 0, -1, 0, 0, 0);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, random_property, required_reputation_faction, required_reputation_rank) values (80674, 'Corossive Core', '', 4, 0, 1, 3, 33203, 1, 48, 0, -1, -1, 42671, 10667, 12, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, -150, 0, 0, 53, 0, 47, 0, 0, 10, 0, 0, 0, 48038, 1, 0, 0, -1, 0, -1, 15464, 1, 0, 0, -1, 0, -1, 0, 0, 0);


-- Rebalance High Council Epics
update item_template set stat_value3 = 10, spellid_1 = 13679, spelltrigger_1 = 1, item_level = 68, armor = 53 where entry = 20691; -- Windshear Cape
update item_template set spellid_1 = 24595, item_level = 68 where entry = 20682; -- Elemental Focus Band
update item_template set spellid_1 = 13674, spellid_2 = 13386, spellid_3 = 23515, spelltrigger_3 = 1, item_level = 68, armor = 2575, block = 47 where entry = 20688; -- Earthen Guard
update item_template set item_level = 68 where entry = 20685; -- Wavefront Necklace
-- New High Council Drops
replace into item_template values
 ('83562', '2', '6', 'Skaldrenox\'s Rage', '', '66242', '4', '0', '1', '494420', '123605', '17', '-1', '-1', '68',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3800', '0',
 '0', '196', '295', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '15592', '2', '0', '1.75', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '2', '0', '0', '120', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('83563', '4', '0', 'Pearl of the Tides', '', '13103', '4', '0', '1', '415016', '103754', '12', '-1', '-1', '68',
 '60', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '17367', '1', '0', '0', '-1', '0', '-1', '18379', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('83564', '2', '7', 'Tempest\'s Rage', '', '66243', '4', '0', '1', '414248', '103562', '13', '-1', '-1', '68',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1700', '0',
 '0', '59', '110', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '28701', '2', '1.1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '1', '0', '0', '105', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('83565', '4', '3', 'Blackstone Crown', '', '66244', '4', '0', '1', '179492', '44873', '1', '-1', '-1', '68',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '15', '4', '10',
 '7', '34', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '473', '0', '0', '0',
 '0', '0', '0', '13669', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '1', '0', '0', '85', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);
 

-- Faerie Fire (Feral) Learning

set @trainer = 12042;
set @spell = 47329;
set @spellcost = 6000; -- in copper
set @reqskill = 0; -- not needed for class spells
set @reqskillvalue = 0; -- not needed for class spells
set @player_level = 30;

replace into npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) values (@trainer,@spell,@spellcost,@reqskill,@reqskillvalue,@player_level);

set @trainer = 4217;
set @spell = 47329;
set @spellcost = 6000; -- in copper
set @reqskill = 0; -- not needed for class spells
set @reqskillvalue = 0; -- not needed for class spells
set @player_level = 30;

replace into npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) values (@trainer,@spell,@spellcost,@reqskill,@reqskillvalue,@player_level);

set @trainer = 3033;
set @spell = 47329;
set @spellcost = 6000; -- in copper
set @reqskill = 0; -- not needed for class spells
set @reqskillvalue = 0; -- not needed for class spells
set @player_level = 30;

replace into npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) values (@trainer,@spell,@spellcost,@reqskill,@reqskillvalue,@player_level);

set @trainer = 4218;
set @spell = 47329;
set @spellcost = 6000; -- in copper
set @reqskill = 0; -- not needed for class spells
set @reqskillvalue = 0; -- not needed for class spells
set @player_level = 30;

replace into npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) values (@trainer,@spell,@spellcost,@reqskill,@reqskillvalue,@player_level);

set @trainer = 3602;
set @spell = 47329;
set @spellcost = 6000; -- in copper
set @reqskill = 0; -- not needed for class spells
set @reqskillvalue = 0; -- not needed for class spells
set @player_level = 30;

replace into npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) values (@trainer,@spell,@spellcost,@reqskill,@reqskillvalue,@player_level);

set @trainer = 5506;
set @spell = 47329;
set @spellcost = 6000; -- in copper
set @reqskill = 0; -- not needed for class spells
set @reqskillvalue = 0; -- not needed for class spells
set @player_level = 30;

replace into npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) values (@trainer,@spell,@spellcost,@reqskill,@reqskillvalue,@player_level);

set @trainer = 5504;
set @spell = 47329;
set @spellcost = 6000; -- in copper
set @reqskill = 0; -- not needed for class spells
set @reqskillvalue = 0; -- not needed for class spells
set @player_level = 30;

replace into npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) values (@trainer,@spell,@spellcost,@reqskill,@reqskillvalue,@player_level);

set @trainer = 9465;
set @spell = 47329;
set @spellcost = 6000; -- in copper
set @reqskill = 0; -- not needed for class spells
set @reqskillvalue = 0; -- not needed for class spells
set @player_level = 30;

replace into npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) values (@trainer,@spell,@spellcost,@reqskill,@reqskillvalue,@player_level);

set @trainer = 3064;
set @spell = 47329;
set @spellcost = 6000; -- in copper
set @reqskill = 0; -- not needed for class spells
set @reqskillvalue = 0; -- not needed for class spells
set @player_level = 30;

replace into npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) values (@trainer,@spell,@spellcost,@reqskill,@reqskillvalue,@player_level);

set @trainer = 5505;
set @spell = 47329;
set @spellcost = 6000; -- in copper
set @reqskill = 0; -- not needed for class spells
set @reqskillvalue = 0; -- not needed for class spells
set @player_level = 30;

replace into npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) values (@trainer,@spell,@spellcost,@reqskill,@reqskillvalue,@player_level);

set @trainer = 3036;
set @spell = 47329;
set @spellcost = 6000; -- in copper
set @reqskill = 0; -- not needed for class spells
set @reqskillvalue = 0; -- not needed for class spells
set @player_level = 30;

replace into npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) values (@trainer,@spell,@spellcost,@reqskill,@reqskillvalue,@player_level);

set @trainer = 3597;
set @spell = 47329;
set @spellcost = 6000; -- in copper
set @reqskill = 0; -- not needed for class spells
set @reqskillvalue = 0; -- not needed for class spells
set @player_level = 30;

replace into npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) values (@trainer,@spell,@spellcost,@reqskill,@reqskillvalue,@player_level);

set @trainer = 4219;
set @spell = 47329;
set @spellcost = 6000; -- in copper
set @reqskill = 0; -- not needed for class spells
set @reqskillvalue = 0; -- not needed for class spells
set @player_level = 30;

replace into npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) values (@trainer,@spell,@spellcost,@reqskill,@reqskillvalue,@player_level);

set @trainer = 3060;
set @spell = 47329;
set @spellcost = 6000; -- in copper
set @reqskill = 0; -- not needed for class spells
set @reqskillvalue = 0; -- not needed for class spells
set @player_level = 30;

replace into npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) values (@trainer,@spell,@spellcost,@reqskill,@reqskillvalue,@player_level);

set @trainer = 8142;
set @spell = 47329;
set @spellcost = 6000; -- in copper
set @reqskill = 0; -- not needed for class spells
set @reqskillvalue = 0; -- not needed for class spells
set @player_level = 30;

replace into npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) values (@trainer,@spell,@spellcost,@reqskill,@reqskillvalue,@player_level);

set @trainer = 3034;
set @spell = 47329;
set @spellcost = 6000; -- in copper
set @reqskill = 0; -- not needed for class spells
set @reqskillvalue = 0; -- not needed for class spells
set @player_level = 30;

replace into npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) values (@trainer,@spell,@spellcost,@reqskill,@reqskillvalue,@player_level);


-- Hateforge Trash Items
replace into item_template values
 ('60700', '15', '0', 'Singed Cloth', '', '21470', '0', '0', '1', '6736', '1684', '0', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '20', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('60701', '15', '0', 'Chipped Miner\'s Union Badge', '', '31499', '0', '0', '1', '9224', '2306', '0', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '20', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('60702', '15', '0', 'Broken Flask', 'Has an acidic scent.', '6530', '0', '0', '1', '5932', '1483', '0', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '20', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '3', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('60703', '15', '0', 'Torn Union Flyer', 'Depicts a miner pointing at you, urging you to join the union.', '7695', '0', '0', '1', '11832', '2958', '0', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '20', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('60704', '15', '0', 'Worn Gear', '', '1221', '0', '0', '1', '3928', '982', '0', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '20', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('60705', '15', '0', 'Cracked Power Core', 'A green liquid is slowly oozing out of the crack.', '17923', '0', '0', '1', '4212', '1053', '0', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '20', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('60706', '15', '0', 'Ash-Covered Scroll', 'Contains hymns praising Ragnaros.', '1093', '0', '0', '1', '8624', '2156', '0', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '20', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('60707', '15', '0', 'Ashen Tinderbox', '', '12333', '0', '0', '1', '7528', '1882', '0', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '20', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('60708', '15', '0', 'Battered Horn', '', '6338', '0', '0', '1', '11452', '2863', '0', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '20', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

update item_template set display_id = 12943 where entry = 60632;
update item_template set display_id = 28742 where entry = 60611;

update gameobject set spawntimesecsmin = 259200, spawntimesecsmax = 259200 where guid in (5008121, 5008122, 5008115, 5008113, 5008108, 5008107, 5008106, 5008112, 5008105, 5008111 );

-- Tavern areatriggers:

replace into areatrigger_tavern values (206, 'Dustwallow Marsh - Mudsprocket');
replace into areatrigger_template values (206, 1, -4623.519, -3172.25, 34.81, 15, 0, 0, 0, 0);

replace into areatrigger_tavern values (210, 'Durotar - Sparkwater Port');
replace into areatrigger_template values (210, 1, 921.139, -5064.1, 8.02415, 15, 0, 0, 0, 0);

replace into areatrigger_tavern values (1, 'Wetlands - Hawk\'s Vigil');
replace into areatrigger_template values (1, 0, -3860.25, -1870.37, 142.278, 15, 0, 0, 0, 0);

replace into areatrigger_tavern values (2, 'Tirisfal Uplands - Glenshire');
replace into areatrigger_template values (2, 0, 1793.062, 2044.352, 120.885, 8, 0, 0, 0, 0);

replace into areatrigger_tavern values (3, 'Quel\'Thalas - Alah\'Thalas');
replace into areatrigger_template values (3, 0, 4232.658, -2778.113, 97.471, 40, 0, 0, 0, 0);

replace into areatrigger_tavern values (4, 'Lapidis Isle - Caelan\'s Rest');
replace into areatrigger_template values (4, 0, -11886.57, 3161.767, 16.511, 30, 0, 0, 0, 0);

replace into areatrigger_tavern values (5, 'Gillijim\'s Isle - Maul\'ogg Refuge');
replace into areatrigger_template values (5, 0, -14014.179, 2329.316, 60.123, 30, 0, 0, 0, 0);