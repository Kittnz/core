replace into item_template (entry, class, subclass, name, description, display_id, quality, flags, buy_count, buy_price, sell_price, inventory_type, allowable_class, allowable_race, item_level, required_level, required_skill, required_skill_rank, required_spell, required_honor_rank, required_city_rank, required_reputation_faction, required_reputation_rank, max_count, stackable, container_slots, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3, stat_type4, stat_value4, stat_type5, stat_value5, stat_type6, stat_value6, stat_type7, stat_value7, stat_type8, stat_value8, stat_type9, stat_value9, stat_type10, stat_value10, delay, range_mod, ammo_type, dmg_min1, dmg_max1, dmg_type1, dmg_min2, dmg_max2, dmg_type2, dmg_min3, dmg_max3, dmg_type3, dmg_min4, dmg_max4, dmg_type4, dmg_min5, dmg_max5, dmg_type5, block, armor, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, spellid_3, spelltrigger_3, spellcharges_3, spellppmrate_3, spellcooldown_3, spellcategory_3, spellcategorycooldown_3, spellid_4, spelltrigger_4, spellcharges_4, spellppmrate_4, spellcooldown_4, spellcategory_4, spellcategorycooldown_4, spellid_5, spelltrigger_5, spellcharges_5, spellppmrate_5, spellcooldown_5, spellcategory_5, spellcategorycooldown_5, bonding, page_text, page_language, page_material, start_quest, lock_id, material, sheath, random_property, set_id, max_durability, area_bound, map_bound, duration, bag_family, disenchant_id, food_type, min_money_loot, max_money_loot, extra_flags, other_team_entry, script_name) values

(80175, 4, 0, 'Chromie\'s Pocket Watch', 'Time works differently in Azeroth. It might be a good idea to check the time.', 6540, 2, 0, 1, 0, 0, 12, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46003, 0, 0, 0, 10, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

update item_template set spellid_1 = 46003, script_name = NULL where name like '%Illusion:%';

replace into spell_mod (id, castingtimeindex) values (46003, 5); 

update item_template set max_count = 1 where entry = 80175;

-- It appears that Chromie has found her favorite time-spending players and has decided to gift them all an item, so they do not lose track of time!
-- For our top ten players with the highest play-time, we will be giving out an interactive cosmetic trinket with sound effects to celebrate their dedication and passion for Turtle WoW!

-- In-game mail text: To my buddy, so you do not lose yourself in the time loop. Chromie

-- Fix some startup errors:

update creature set wander_distance = 0 where guid in (2571579, 2571580, 2571581);

-- Item fixes from Dragu:

-- Adds some heal power back to Pally T1
update item_template set spellid_2 = 7677, spelltrigger_2 = 1 where entry = 16858; -- Lawbringer Belt
update item_template set spellid_3 = 7677, spelltrigger_3 = 1 where entry = 16859; -- Lawbringer Boots
update item_template set spellid_2 = 7678, spelltrigger_2 = 1 where entry = 16853; -- Lawbringer Chestguard
update item_template set spellid_3 = 7677, spellid_1 = 21361, spellid_2 = 9416, spelltrigger_3 = 1, spelltrigger_2 = 1 where entry = 16860; -- Lawbringer Gauntlets
update item_template set spellid_3 = 7678, spelltrigger_3 = 1 where entry = 16854; -- Lawbringer Helm
update item_template set spellid_3 = 7678, spelltrigger_3 = 1 where entry = 16855; -- Lawbringer Legplates
update item_template set spellid_2 = 7677, spelltrigger_2 = 1 where entry = 16856; -- Lawbringer Spaulders
-- Dragonslayer Signet Bugfix
update item_template set stat_type2 = 7, spellid_1 = 18384, spellid_2 = 9346 where entry = 18403; -- Dragonslayer's Signet
-- Paladin Rage
update item_template set stat_type1 = 7, stat_type2 = 5, stat_type3 = 3, stat_type4 = 4, spellid_2 = 9408 where entry = 21683; -- Mantle of the Desert Crusade
update item_template set spellid_2 = 7677 where entry = 19827; -- Zandalar Freethinker's Armguards
update item_template set spellid_2 = 7681 where entry = 19826; -- Zandalar Freethinker's Belt
-- Prevent Racechange Abuse on UBRS Trinkets
update item_template set max_count = 1 where entry = 13966; -- Mark of Tyranny
update item_template set max_count = 1 where entry = 13968; -- Eye of the Beast
update item_template set max_count = 1 where entry = 13965; -- Blackhand's Breadth
