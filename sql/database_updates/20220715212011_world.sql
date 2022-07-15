update item_template set display_id = 4738 where entry = 51282;

update item_template set display_id = 23177 where entry = 83575;
update item_template set spellid_1 = 17991 where entry = 65006;
update item_template set name = 'Grimoire: Demon Portal', description = 'Dark rituals locked inside shadowy books.' where entry = 83572;
update item_template set name = 'Codex: Grace of the Sunwell' where entry = 81012;

-- New Hargesh Doomcaller Drops
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, random_property, required_reputation_faction, required_reputation_rank) values (83580, 'Toxic Talisman', '', 4, 0, 1, 3, 66201, 1, 54, 0, -1, -1, 51502, 12875, 2, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 59, 0, 48, 0, 0, 10, 0, 0, 0, 5, 9, 9357, 1, 0, 0, -1, 0, -1, 21623, 1, 0, 0, -1, 0, -1, 0, 0, 0);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, random_property, required_reputation_faction, required_reputation_rank) values (83581, 'Call of Shadow', '', 2, 7, 1, 3, 0, 1, 54, 0, -1, -1, 196412, 49103, 21, 3, 0, 0, 1, 1, 0, 74, 112, 2400, 0, 0, 90, 0, 0, 0, 59, 0, 48, 0, 0, 0, 0, 0, 0, 7, 8, 9413, 1, 0, 0, -1, 0, -1, 16409, 2, 0, 1.2, 3000, 0, -1, 0, 0, 0);
replace into item_template values
 ('83582', '4', '1', 'Sacrosanct Epaulets', '', '26504', '3', '0', '1', '67408', '16852', '3', '-1', '-1', '59',
 '54', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '6', '11', '5', '3',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '66', '0', '0', '0',
 '0', '0', '0', '9406', '1', '0', '0', '-1', '0', '-1', '21360', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '50', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('83583', '4', '0', 'The Veil of Hatred', '', '66247', '3', '0', '1', '63860', '15965', '16', '-1', '-1', '59',
 '54', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '4', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '42', '0', '0', '0',
 '0', '0', '0', '9326', '1', '0', '0', '-1', '0', '-1', '9296', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('83584', '9', '0', 'Grimoire: Avoidance', '', '1246', '1', '0', '1', '20000', '4000', '0', '256', '-1', '40',
 '40', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '47310', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
replace into spell_chain (spell_id, prev_spell, first_spell, rank, req_spell) VALUES (45967, 9912, 5176, 9, 0); -- Wrath Rank 9
replace into spell_chain (spell_id, prev_spell, first_spell, rank, req_spell) VALUES (45969, 9830, 5221, 6, 0); -- Shred VI
replace into spell_chain (spell_id, prev_spell, first_spell, rank, req_spell) VALUES (45968, 10934, 585, 9, 0); -- Smite IX

update creature_template set faction = 64 where entry = 60872;

update item_template set required_level = 54, item_level = 64 where entry = 60546;

-- set the respawn timer of the following creatures to 3hrs

-- Hateforge Chemist (60717)
-- Hateforge Cleric (60718)
-- Hateforge Craftsman (60719)
-- Hateforge Engineer (60720)
-- Hateforge Miner (60721)
-- Hateforge Overseer (60722)
-- Hateforge Taskmaster (60723)
-- Hateforge Warden (60724)

update creature set spawntimesecsmin = 10800, spawntimesecsmax = 10800 where id in (60717, 60718, 60719, 60720, 60721, 60722, 60723, 60724);

-- set the respawn timer of the following creatures to 48hrs

-- Engineer Figgles (60736)
-- High Foreman Bargul Blackhammer (60735)
-- Har'gesh Doomcaller (60737)
-- Hatereaver Annihilator (60734)
-- Corrosis (60829)

update creature set spawntimesecsmin = 172800, spawntimesecsmax = 172800 where id in (60736, 60735, 60737, 60734, 60829);

-- set the respawn timer of the following creatures to 8 minutes

-- Hateforge Excavator (60830)
-- Hateforge Geologist (60831)
-- Hateforge Watcher (60816) 

update creature set spawntimesecsmin = 480, spawntimesecsmax = 480 where id in (60830, 60831, 60816);