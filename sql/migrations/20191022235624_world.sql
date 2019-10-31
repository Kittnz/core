replace into migrations values (20191022235624);

-- Turn off anniversary quests:
delete from creature_questrelation where quest in (60000, 60001, 60002, 60003);

-- Raven Trade Co. stuff:
replace into item_template (entry, name, inventory_type, display_id, quality, bonding, buy_price) values
(51030, 'Trade Co. Standard-Issue Breastplate', 5, 27389, 1, 1, 5000),
(51031, 'Trade Co. Standard-Issue Belt', 6, 27391, 1, 1, 5000),
(51032, 'Trade Co. Standard-Issue Leggings', 7, 27393, 1, 1, 5000),
(51033, 'Trade Co. Standard-Issue Greaves', 8, 27392, 1, 1, 5000),
(51034, 'Trade Co. Standard-Issue Gauntlets', 10, 27390, 1, 1, 5000),
(51035, 'Trade Co. Standard-Issue Pauldrons', 3, 27396, 1, 1, 5000),
(51037, 'Trade Co. Standard-Issue Vambraces', 9, 27394, 1, 1, 5000),
(51036, 'Trade Co. Standard-Issue Helmet', 1, 27395, 1, 1, 5000),
(51038, 'Trade Co. Standard-Issue Rifle', 21, 20729, 1, 1, 5000),
(51039, 'Trade Co. Standard-Issue Spear', 21, 5290, 1, 1, 5000);

delete from npc_vendor where entry = 50560;		
replace into npc_vendor (entry, item) values 
(50560, 5976), 
(50560, 51030),
(50560, 51031),
(50560, 51032),
(50560, 51033),
(50560, 51034),
(50560, 51035),
(50560, 51037),
(50560, 51038),
(50560, 51039),
(50560, 51036);

delete from npc_vendor where entry = 50559;		
replace into npc_vendor (entry, item) values 
(50559, 5976),
(50559, 159),
(50559, 1179),
(50559, 1205),
(50559, 1645),
(50559, 1708),
(50559, 4604),
(50559, 4605),
(50559, 4606),
(50559, 4607),
(50559, 4608),
(50559, 8766),
(50559, 8948),
(50559, 23002);

-- Knights of Templar stuff:

replace into item_template (entry, name, inventory_type, display_id, quality, bonding, buy_price) values
(51040, 'Claymore of the Templar', 17, 33033, 1, 1, 5000),
(51041, 'Falchion of the Templar', 21, 28527, 1, 1, 5000),
(51042, 'Heater Shield of the Templar', 14, 27415, 1, 1, 5000);

delete from npc_vendor where entry = 50539;		
replace into npc_vendor (entry, item) values 
(50539, 51013),
(50539, 51014),
(50539, 51015),
(50539, 51016),
(50539, 51017),
(50539, 51018),
(50539, 51019),
(50539, 51040),
(50539, 51041),
(50539, 51042),
(50539, 5976);

delete from npc_vendor where entry = 50520;		
replace into npc_vendor (entry, item) values 
(50520, 5976),
(50520, 159),
(50520, 1179),
(50520, 1205),
(50520, 1645),
(50520, 1708),
(50520, 4604),
(50520, 4605),
(50520, 4606),
(50520, 4607),
(50520, 4608),
(50520, 8766),
(50520, 8948),
(50520, 23002);

-- SWAG set:

replace into item_template (entry, name, inventory_type, display_id, quality, bonding, buy_price, description) values
(51050, 'S.W.A.G Goggles', 1, 10416, 1, 1, 5000, "I wear my goggles at night."),
(51051, 'Daisy Semi-Hot Pants', 7, 14967, 1, 1, 5000, "They patched hot pants out in 1.12."),
(51052, 'Random Scroll', 5, 5956, 1, 1, 5000, "");

-- SC Insignia fix:

replace into item_template (entry, name, inventory_type, display_id, quality, bonding, description, spellid_1, spelltrigger_1, allowable_race) values
(50440, 'Scarlet Crusade Insignia', 11, 9834, 2, 1, "This ring marks the bearer as a fully fledged member of the Scarlet Crusade.", 1, 1, 1);

replace into spell_template values (1, 5875, 0, 0, 0, 0, 0, 448, 268435456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 6, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 56, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'DummyFriendlyScarlet', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0);

-- Fix Ironforge Guards Helmet:
update item_template set display_id = 21301 where entry = 50306;

-- Fix Aurrius weapons:

update item_template set dmg_min1 =1 , dmg_max1 = 2 where entry in (51041, 51040);
update item_template set class = 2, subclass = 7 where entry = 51041;
update item_template set class = 2, subclass = 8 where entry = 51040;

-- Fix GoL NPCs:

update creature_template set faction = 35 where entry in (50555, 50556, 50557);

-- Fix RP Horses names:

update creature_template set name = "Brown Riding Horse" where entry = 284;
update creature_template set name = "White Stallion" where entry  = 305;
update creature_template set name = "Black Stallion" where entry  = 308;

-- Transformation items:

delete from item_template where entry = 50499;

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
 ('51200', '0', '15', '0', 'Goblin\'s Pocket Watch', 'Transforms you into a goblin. Time is money, friend!', '2820', '1', '64', '1', '0', '0', '12', '-1', '-1', '50',
 '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '31726', '0', '0', '0', '100000', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', 'shop_morph_goblin');
 
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
 ('51201', '0', '15', '0', 'Worgen Claw Necklace', 'Transforms you into a worgen. Rawr!', '32297', '1', '64', '1', '0', '0', '12', '-1', '-1', '50',
 '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '31726', '0', '0', '0', '100000', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', 'shop_morph_worgen');
 
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
 ('51202', '0', '15', '0', 'Blood Elf Ancient Relic', 'Transforms you into a Blood Elf.', '9854', '1', '64', '1', '0', '0', '12', '-1', '-1', '50',
 '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '31726', '0', '0', '0', '100000', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', 'shop_morph_blood_elf');
 
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
 ('51203', '0', '15', '0', 'High Elf Ancient Relic', 'Transforms you into a High Elf.', '23715', '1', '64', '1', '0', '0', '12', '-1', '-1', '50',
 '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '31726', '0', '0', '0', '100000', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', 'shop_morph_high_elf');
 
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
 ('51204', '0', '15', '0', 'Dryad Magic Acorn', 'Transforms you into a Dryad.', '2641', '1', '64', '1', '0', '0', '12', '-1', '-1', '50',
 '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '31726', '0', '0', '0', '100000', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', 'shop_morph_dryad');
 
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
 ('51205', '0', '15', '0', 'Flash-Frozen Flower', 'Transforms you into a Ghost.', '24693', '1', '64', '1', '0', '0', '12', '-1', '-1', '50',
 '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '31726', '0', '0', '0', '100000', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', 'shop_morph_ghost');	
 
-- Mirage Raceway: * rewards
-- 51009 - Race Against Time
 
delete from item_loot_template where entry in (51009, 51004, 51005);
replace into item_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount) values

(51004, 2459, 0, 1, 1, 3), -- Swiftness Potion
(51004, 13457, 0, 1, 1, 1), -- Greater Fire Protection Potion
(51004, 13458, 0, 1, 1, 1), -- Greater Nature Protection Potion
(51004, 13446, 0, 1, 1, 2), -- Major Healing Potion
(51004, 13444, 0, 1, 1, 2), -- Major Healing Potion
(51004, 4354, 0, 1, 1, 1), -- Pattern: Rich Purple Silk Shirt
(51004, 22780, 0, 1, 1, 1), -- White Murloc Egg
(51004, 20031, 0, 1, 1, 10), -- Essence Mango
(51004, 10606, 0, 1, 1, 1), -- Schematic: Parachute Cloak
(51004, 10683, 0, 1, 1, 1), -- Explorer's Knapsack
(51004, 9653, 0, 1, 1, 1), -- Speedy Racer Goggles
(51004, 50524, 0, 1, 1, 1), -- Gnome Car Key
(51004, 50525, 0, 1, 1, 1), -- Goblin Car Key
(51004, 51050, 0, 1, 1, 1), -- S.W.A.G Goggles
(51004, 50079, 0, 1, 1, 1), -- Island Frog Box
(51004, 50062, 0, 1, 1, 1), -- Half-Eaten Mutton Chop
(51004, 50058, 0, 1, 1, 1), -- Black Piglet
(51004, 50021, 0, 1, 1, 5), -- Strange Bottle
(51004, 50020, 0, 1, 1, 5), -- Magic Muffin
(51004, 13454, 0, 1, 1, 1), -- Greater Arcane Elixir
(51004, 9264, 0, 1, 1, 1), -- Elixir of Shadow Power
(51004, 13453, 0, 1, 1, 1), -- Elixir of Brute Force
(51004, 13447, 0, 1, 1, 1), -- Elixir of the Sages
(51004, 13445, 0, 1, 1, 1), -- Elixir of Superior Defense
(51004, 18229, 0, 1, 1, 1), -- Nat Pagle's Guide to Extreme Anglin'
(51004, 13610, 0, 1, 1, 1), -- Square Lantern
(51004, 50048, 0, 1, 1, 1), -- Right Juggling Torch
(51004, 3829, 0, 1, 1, 2), -- Frost Oil
(51004, 20750, 0, 1, 1, 2), -- Wizard Oil
(51004, 6522, 0, 1, 1, 2), -- Deviate Fish
(51004, 6366, 0, 1, 1, 1), -- Darkwood Fishing Pole
(51004, 9318, 0, 1, 1, 10), -- Red Firework
(51004, 9315, 0, 1, 1, 10), -- Yellow Rose Firework
(51004, 19026, 0, 1, 1, 10), -- Snake Burst Firework
(51004, 9313, 0, 1, 1, 10), -- Green Firework
(51004, 7338, 0, 1, 1, 1), -- Mood Ring
(51004, 12048, 0, 1, 1, 1), -- Prismatic Pendant
(51004, 12035, 0, 1, 1, 1), -- Obsidian Pendant
(51004, 12022, 0, 1, 1, 1), -- Iridium Chain
(51004, 12039, 0, 1, 1, 1), -- Tundra Necklace
(51004, 12047, 0, 1, 1, 1), -- Spectral Necklace
(51004, 12030, 0, 1, 1, 1), -- Jet Chain
(51004, 12017, 0, 1, 1, 1), -- Prismatic Band
(51004, 11990, 0, 1, 1, 1), -- Selenium Loop
(51004, 11989, 0, 1, 1, 1), -- Vanadium Loop
(51004, 11988, 0, 1, 1, 1), -- Tellurium Band
(51004, 6589, 0, 1, 1, 1), -- Viridian Band
(51004, 10249, 0, 1, 1, 1), -- Master's Cloak
(51004, 10159, 0, 1, 1, 1), -- Mercurial Cloak
(51004, 14313, 0, 1, 1, 1), -- Celestial Cape
(51004, 15392, 0, 1, 1, 1), -- Jadefire Cloak
(51004, 15519, 0, 1, 1, 1), -- Spiked Chain Cloak
(51004, 9822, 0, 1, 1, 1), -- Durable Cape
(51004, 51052, 0, 1, 1, 1), -- Random Scroll
(51004, 10310, 0, 1, 1, 5), -- Random Scroll
(51004, 10309, 0, 1, 1, 5), -- Random Scroll
(51004, 10308, 0, 1, 1, 5), -- Random Scroll
(51004, 10307, 0, 1, 1, 5), -- Random Scroll
(51004, 10306, 0, 1, 1, 5), -- Random Scroll
(51004, 10305, 0, 1, 1, 5), -- Random Scroll
(51004, 4426, 0, 1, 1, 5), -- Random Scroll
(51004, 4425, 0, 1, 1, 5), -- Random Scroll
(51004, 4424, 0, 1, 1, 5), -- Random Scroll
(51004, 4422, 0, 1, 1, 5), -- Random Scroll
(51004, 4421, 0, 1, 1, 5), -- Random Scroll
(51004, 4419, 0, 1, 1, 5), -- Random Scroll
(51004, 3013, 0, 1, 1, 5), -- Random Scroll
(51004, 3012, 0, 1, 1, 5), -- Random Scroll
(51004, 2290, 0, 1, 1, 5), -- Random Scroll
(51004, 2289, 0, 1, 1, 5), -- Random Scroll
(51004, 1712, 0, 1, 1, 5), -- Random Scroll
(51004, 1711, 0, 1, 1, 5), -- Random Scroll
(51004, 1478, 0, 1, 1, 5), -- Random Scroll
(51004, 1477, 0, 1, 1, 5), -- Random Scroll

(51005, 2459, 0, 1, 1, 5), -- Swiftness Potion
(51005, 13457, 0, 1, 1, 1), -- Greater Fire Protection Potion
(51005, 13458, 0, 1, 1, 1), -- Greater Nature Protection Potion
(51005, 13446, 0, 1, 1, 3), -- Major Healing Potion
(51005, 13444, 0, 1, 1, 3), -- Major Healing Potion
(51005, 4354, 0, 1, 1, 1), -- Pattern: Rich Purple Silk Shirt
(51005, 22780, 0, 1, 1, 1), -- White Murloc Egg
(51005, 20031, 0, 1, 1, 15), -- Essence Mango
(51005, 10606, 0, 1, 1, 1), -- Schematic: Parachute Cloak
(51005, 10683, 0, 1, 1, 1), -- Explorer's Knapsack
(51005, 9653, 0, 1, 1, 1), -- Speedy Racer Goggles
(51005, 50524, 0, 1, 1, 1), -- Gnome Car Key
(51005, 50525, 0, 1, 1, 1), -- Goblin Car Key
(51005, 51050, 0, 1, 1, 1), -- S.W.A.G Goggles
(51005, 50079, 0, 1, 1, 1), -- Island Frog Box
(51005, 50062, 0, 1, 1, 1), -- Half-Eaten Mutton Chop
(51005, 50058, 0, 1, 1, 1), -- Black Piglet
(51005, 50021, 0, 1, 1, 5), -- Strange Bottle
(51005, 50020, 0, 1, 1, 5), -- Magic Muffin
(51005, 13454, 0, 1, 1, 1), -- Greater Arcane Elixir
(51005, 9264, 0, 1, 1, 1), -- Elixir of Shadow Power
(51005, 13453, 0, 1, 1, 1), -- Elixir of Brute Force
(51005, 13447, 0, 1, 1, 1), -- Elixir of the Sages
(51005, 13445, 0, 1, 1, 1), -- Elixir of Superior Defense
(51005, 18229, 0, 1, 1, 1), -- Nat Pagle's Guide to Extreme Anglin'
(51005, 13610, 0, 1, 1, 1), -- Square Lantern
(51005, 50048, 0, 1, 1, 1), -- Right Juggling Torch
(51005, 3829, 0, 1, 1, 2), -- Frost Oil
(51005, 20750, 0, 1, 1, 2), -- Wizard Oil
(51005, 6522, 0, 1, 1, 2), -- Deviate Fish
(51005, 6366, 0, 1, 1, 1), -- Darkwood Fishing Pole
(51005, 9318, 0, 1, 1, 10), -- Red Firework
(51005, 9315, 0, 1, 1, 10), -- Yellow Rose Firework
(51005, 19026, 0, 1, 1, 10), -- Snake Burst Firework
(51005, 9313, 0, 1, 1, 10), -- Green Firework
(51005, 7338, 0, 1, 1, 1), -- Mood Ring
(51005, 12048, 0, 1, 1, 1), -- Prismatic Pendant
(51005, 12035, 0, 1, 1, 1), -- Obsidian Pendant
(51005, 12022, 0, 1, 1, 1), -- Iridium Chain
(51005, 12039, 0, 1, 1, 1), -- Tundra Necklace
(51005, 12047, 0, 1, 1, 1), -- Spectral Necklace
(51005, 12030, 0, 1, 1, 1), -- Jet Chain
(51005, 12017, 0, 1, 1, 1), -- Prismatic Band
(51005, 11990, 0, 1, 1, 1), -- Selenium Loop
(51005, 11989, 0, 1, 1, 1), -- Vanadium Loop
(51005, 11988, 0, 1, 1, 1), -- Tellurium Band
(51005, 6589, 0, 1, 1, 1), -- Viridian Band
(51005, 10249, 0, 1, 1, 1), -- Master's Cloak
(51005, 10159, 0, 1, 1, 1), -- Mercurial Cloak
(51005, 14313, 0, 1, 1, 1), -- Celestial Cape
(51005, 15392, 0, 1, 1, 1), -- Jadefire Cloak
(51005, 15519, 0, 1, 1, 1), -- Spiked Chain Cloak
(51005, 9822, 0, 1, 1, 1), -- Durable Cape
(51005, 51052, 0, 1, 1, 1), -- Random Scroll
(51005, 10310, 0, 1, 1, 5), -- Random Scroll
(51005, 10309, 0, 1, 1, 5), -- Random Scroll
(51005, 10308, 0, 1, 1, 5), -- Random Scroll
(51005, 10307, 0, 1, 1, 5), -- Random Scroll
(51005, 10306, 0, 1, 1, 5), -- Random Scroll
(51005, 10305, 0, 1, 1, 5), -- Random Scroll
(51005, 4426, 0, 1, 1, 5), -- Random Scroll
(51005, 4425, 0, 1, 1, 5), -- Random Scroll
(51005, 4424, 0, 1, 1, 5), -- Random Scroll
(51005, 4422, 0, 1, 1, 5), -- Random Scroll
(51005, 4421, 0, 1, 1, 5), -- Random Scroll
(51005, 4419, 0, 1, 1, 5), -- Random Scroll
(51005, 3013, 0, 1, 1, 5), -- Random Scroll
(51005, 3012, 0, 1, 1, 5), -- Random Scroll
(51005, 2290, 0, 1, 1, 5), -- Random Scroll
(51005, 2289, 0, 1, 1, 5), -- Random Scroll
(51005, 1712, 0, 1, 1, 5), -- Random Scroll
(51005, 1711, 0, 1, 1, 5), -- Random Scroll
(51005, 1478, 0, 1, 1, 5), -- Random Scroll
(51005, 1477, 0, 1, 1, 5), -- Random Scroll

(51009, 2459, 0, 1, 1, 3), -- Swiftness Potion
(51009, 3928, 0, 1, 1, 2), -- Superior Healing Potion
(51009, 13446, 0, 1, 1, 2), -- Major Healing Potion
(51009, 21114, 0, 1, 1, 5), -- Rumsey Rum Dark
(51009, 9318, 0, 1, 1, 10), -- Red Firework
(51009, 9315, 0, 1, 1, 10), -- Yellow Rose Firework
(51009, 19026, 0, 1, 1, 10), -- Snake Burst Firework
(51009, 9313, 0, 1, 1, 10), -- Green Firework
(51009, 3419, 0, 1, 1, 10), -- Red Rose
(51009, 3420, 0, 1, 1, 10), -- Black Rose
(51009, 21718, 0, 1, 1, 10), -- FW
(51009, 21590, 0, 1, 1, 10), -- FW
(51009, 21717, 0, 1, 1, 10), -- FW
(51009, 21591, 0, 1, 1, 10), -- FW
(51009, 21719, 0, 1, 1, 10), -- FW
(51009, 21720, 0, 1, 1, 10), -- FW
(51009, 21592, 0, 1, 1, 10), -- FW
(51009, 21593, 0, 1, 1, 10), -- FW
(51009, 21829, 0, 1, 1, 10); -- Perfume Bottle

-- Fix work for food quest:

update `quest_template` set `rewitemid1`='2888' where (`entry`='814') and (`patch`='0');

-- Update quest timer:

update quest_template set limittime = 115 where entry = 50316;

-- Speed Boosters Adjustements:

delete from spell_effect_mod where id = 454;
replace into `spell_effect_mod` (`Id`, `EffectIndex`, `Effect`, `EffectDieSides`, `EffectBaseDice`, `EffectDicePerLevel`, `EffectRealPointsPerLevel`, `EffectBasePoints`, `EffectAmplitude`, `EffectPointsPerComboPoint`, `EffectChainTarget`, `EffectMultipleValue`, `EffectMechanic`, `EffectImplicitTargetA`, `EffectImplicitTargetB`, `EffectRadiusIndex`, `EffectApplyAuraName`, `EffectItemType`, `EffectMiscValue`, `EffectTriggerSpell`) values ('454', '0', '-1', '-1', '-1', '-1', '-1', '8', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');


delete from npc_vendor where entry = 6548;		
replace into npc_vendor (entry, item) values 
(6548, 11023),
(6548, 21593),
(6548, 21595),
(6548, 21592),
(6548, 21590),
(6548, 21718),
(6548, 21714),
(6548, 21716),
(6548, 21589);

update creature_template set subname = "Firework Vendor" where entry = 6548;
