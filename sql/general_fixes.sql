-- Risen Crypt Guard
set @creature_entry = 91925;
set @description = 'Karazhan Crypt: Risen Crypt Guard';
set @spell_list_id = 201080;

set @spellid_1 = 11976; -- Strike
set @probability_1 = 100; 
set @casttarget_1 = 1; 
set @castflags_1 = 12;
set @delayinitialmin_1 = 6; 
set @delayinitialmax_1 = 6; 
set @delayrepeatmin_1 = 10; 
set @delayrepeatmax_1 = 12;

set @spellid_2 = 0;
set @probability_2 = 0; 
set @casttarget_2 = 0; 
set @castflags_2 = 0;
set @delayinitialmin_2 = 0; 
set @delayinitialmax_2 = 0; 
set @delayrepeatmin_2 = 0; 
set @delayrepeatmax_2 = 0;

set @spellid_3 = 0;
set @probability_3 = 0; 
set @casttarget_3 = 0; 
set @castflags_3 = 0;
set @delayinitialmin_3 = 0; 
set @delayinitialmax_3 = 0; 
set @delayrepeatmin_3 = 0; 
set @delayrepeatmax_3 = 0;

set @spellid_4 = 0;
set @probability_4 = 0; 
set @casttarget_4 = 0; 
set @castflags_4 = 0;
set @delayinitialmin_4 = 0; 
set @delayinitialmax_4 = 0; 
set @delayrepeatmin_4 = 0; 
set @delayrepeatmax_4 = 0;

set @spellid_5 = 0; 
set @probability_5 = 0; 
set @casttarget_5 = 0; 
set @castflags_5 = 0;
set @delayinitialmin_5 = 0; 
set @delayinitialmax_5 = 0; 
set @delayrepeatmin_5 = 0; 
set @delayrepeatmax_5 = 0;

set @spellid_6 = 0; 
set @probability_6 = 0; 
set @casttarget_6 = 0; 
set @castflags_6 = 0;
set @delayinitialmin_6 = 0; 
set @delayinitialmax_6 = 0; 
set @delayrepeatmin_6 = 0; 
set @delayrepeatmax_6 = 0;

set @spellid_7 = 0; 
set @probability_7 = 0; 
set @casttarget_7 = 0; 
set @castflags_7 = 0;
set @delayinitialmin_7 = 0; 
set @delayinitialmax_7 = 0; 
set @delayrepeatmin_7 = 0; 
set @delayrepeatmax_7 = 0;

set @spellid_8 = 0; 
set @probability_8 = 0; 
set @casttarget_8 = 0; 
set @castflags_8 = 0;
set @delayinitialmin_8 = 0; 
set @delayinitialmax_8 = 0; 
set @delayrepeatmin_8 = 0; 
set @delayrepeatmax_8 = 0;

-- Do not touch this part:
update creature_template set spell_list_id = @spell_list_id, ai_name = '', script_name = '', spell_id1 = 0, spell_id2 = 0, spell_id3 = 0 
where entry = @creature_entry;
replace into creature_spells (entry, name, 
spellid_1, probability_1, casttarget_1, castflags_1, delayinitialmin_1, delayinitialmax_1, delayrepeatmin_1, delayrepeatmax_1, 
spellid_2, probability_2, casttarget_2, castflags_2, delayinitialmin_2, delayinitialmax_2, delayrepeatmin_2, delayrepeatmax_2, 
spellid_3, probability_3, casttarget_3, castflags_3, delayinitialmin_3, delayinitialmax_3, delayrepeatmin_3, delayrepeatmax_3, 
spellid_4, probability_4, casttarget_4, castflags_4, delayinitialmin_4, delayinitialmax_4, delayrepeatmin_4, delayrepeatmax_4, 
spellid_5, probability_5, casttarget_5, castflags_5, delayinitialmin_5, delayinitialmax_5, delayrepeatmin_5, delayrepeatmax_5, 
spellid_6, probability_6, casttarget_6, castflags_6, delayinitialmin_6, delayinitialmax_6, delayrepeatmin_6, delayrepeatmax_6, 
spellid_7, probability_7, casttarget_7, castflags_7, delayinitialmin_7, delayinitialmax_7, delayrepeatmin_7, delayrepeatmax_7, 
spellid_8, probability_8, casttarget_8, castflags_8, delayinitialmin_8, delayinitialmax_8, delayrepeatmin_8, delayrepeatmax_8) 
values (@spell_list_id, @description,
@spellid_1, @probability_1, @casttarget_1, @castflags_1, @delayinitialmin_1, @delayinitialmax_1, @delayrepeatmin_1, @delayrepeatmax_1,
@spellid_2, @probability_2, @casttarget_2, @castflags_2, @delayinitialmin_2, @delayinitialmax_2, @delayrepeatmin_2, @delayrepeatmax_2,
@spellid_3, @probability_3, @casttarget_3, @castflags_3, @delayinitialmin_3, @delayinitialmax_3, @delayrepeatmin_3, @delayrepeatmax_3,
@spellid_4, @probability_4, @casttarget_4, @castflags_4, @delayinitialmin_4, @delayinitialmax_4, @delayrepeatmin_4, @delayrepeatmax_4,
@spellid_5, @probability_5, @casttarget_5, @castflags_5, @delayinitialmin_5, @delayinitialmax_5, @delayrepeatmin_5, @delayrepeatmax_5,
@spellid_6, @probability_6, @casttarget_6, @castflags_6, @delayinitialmin_6, @delayinitialmax_6, @delayrepeatmin_6, @delayrepeatmax_6,
@spellid_7, @probability_7, @casttarget_7, @castflags_7, @delayinitialmin_7, @delayinitialmax_7, @delayrepeatmin_7, @delayrepeatmax_7,
@spellid_8, @probability_8, @casttarget_8, @castflags_8, @delayinitialmin_8, @delayinitialmax_8, @delayrepeatmin_8, @delayrepeatmax_8);

-- Guard Captain Gort
set @creature_entry = 92925;
set @description = 'Karazhan Crypt: Guard Captain Gort';
set @spell_list_id = 201081;

set @spellid_1 = 11976; -- Strike
set @probability_1 = 100; 
set @casttarget_1 = 1; 
set @castflags_1 = 12;
set @delayinitialmin_1 = 6; 
set @delayinitialmax_1 = 6; 
set @delayrepeatmin_1 = 10; 
set @delayrepeatmax_1 = 12;

set @spellid_2 = 16431; -- Bone Armor
set @probability_2 = 100; 
set @casttarget_2 = 0; 
set @castflags_2 = 4;
set @delayinitialmin_2 = 4; 
set @delayinitialmax_2 = 4; 
set @delayrepeatmin_2 = 24; 
set @delayrepeatmax_2 = 26;

set @spellid_3 = 8255; -- Strong Cleave
set @probability_3 = 100; 
set @casttarget_3 = 1; 
set @castflags_3 = 4;
set @delayinitialmin_3 = 12; 
set @delayinitialmax_3 = 12; 
set @delayrepeatmin_3 = 18; 
set @delayrepeatmax_3 = 18;

set @spellid_4 = 0;
set @probability_4 = 0; 
set @casttarget_4 = 0; 
set @castflags_4 = 0;
set @delayinitialmin_4 = 0; 
set @delayinitialmax_4 = 0; 
set @delayrepeatmin_4 = 0; 
set @delayrepeatmax_4 = 0;

set @spellid_5 = 0; 
set @probability_5 = 0; 
set @casttarget_5 = 0; 
set @castflags_5 = 0;
set @delayinitialmin_5 = 0; 
set @delayinitialmax_5 = 0; 
set @delayrepeatmin_5 = 0; 
set @delayrepeatmax_5 = 0;

set @spellid_6 = 0; 
set @probability_6 = 0; 
set @casttarget_6 = 0; 
set @castflags_6 = 0;
set @delayinitialmin_6 = 0; 
set @delayinitialmax_6 = 0; 
set @delayrepeatmin_6 = 0; 
set @delayrepeatmax_6 = 0;

set @spellid_7 = 0; 
set @probability_7 = 0; 
set @casttarget_7 = 0; 
set @castflags_7 = 0;
set @delayinitialmin_7 = 0; 
set @delayinitialmax_7 = 0; 
set @delayrepeatmin_7 = 0; 
set @delayrepeatmax_7 = 0;

set @spellid_8 = 0; 
set @probability_8 = 0; 
set @casttarget_8 = 0; 
set @castflags_8 = 0;
set @delayinitialmin_8 = 0; 
set @delayinitialmax_8 = 0; 
set @delayrepeatmin_8 = 0; 
set @delayrepeatmax_8 = 0;

-- Do not touch this part:
update creature_template set spell_list_id = @spell_list_id, ai_name = '', script_name = '', spell_id1 = 0, spell_id2 = 0, spell_id3 = 0 
where entry = @creature_entry;
replace into creature_spells (entry, name, 
spellid_1, probability_1, casttarget_1, castflags_1, delayinitialmin_1, delayinitialmax_1, delayrepeatmin_1, delayrepeatmax_1, 
spellid_2, probability_2, casttarget_2, castflags_2, delayinitialmin_2, delayinitialmax_2, delayrepeatmin_2, delayrepeatmax_2, 
spellid_3, probability_3, casttarget_3, castflags_3, delayinitialmin_3, delayinitialmax_3, delayrepeatmin_3, delayrepeatmax_3, 
spellid_4, probability_4, casttarget_4, castflags_4, delayinitialmin_4, delayinitialmax_4, delayrepeatmin_4, delayrepeatmax_4, 
spellid_5, probability_5, casttarget_5, castflags_5, delayinitialmin_5, delayinitialmax_5, delayrepeatmin_5, delayrepeatmax_5, 
spellid_6, probability_6, casttarget_6, castflags_6, delayinitialmin_6, delayinitialmax_6, delayrepeatmin_6, delayrepeatmax_6, 
spellid_7, probability_7, casttarget_7, castflags_7, delayinitialmin_7, delayinitialmax_7, delayrepeatmin_7, delayrepeatmax_7, 
spellid_8, probability_8, casttarget_8, castflags_8, delayinitialmin_8, delayinitialmax_8, delayrepeatmin_8, delayrepeatmax_8) 
values (@spell_list_id, @description,
@spellid_1, @probability_1, @casttarget_1, @castflags_1, @delayinitialmin_1, @delayinitialmax_1, @delayrepeatmin_1, @delayrepeatmax_1,
@spellid_2, @probability_2, @casttarget_2, @castflags_2, @delayinitialmin_2, @delayinitialmax_2, @delayrepeatmin_2, @delayrepeatmax_2,
@spellid_3, @probability_3, @casttarget_3, @castflags_3, @delayinitialmin_3, @delayinitialmax_3, @delayrepeatmin_3, @delayrepeatmax_3,
@spellid_4, @probability_4, @casttarget_4, @castflags_4, @delayinitialmin_4, @delayinitialmax_4, @delayrepeatmin_4, @delayrepeatmax_4,
@spellid_5, @probability_5, @casttarget_5, @castflags_5, @delayinitialmin_5, @delayinitialmax_5, @delayrepeatmin_5, @delayrepeatmax_5,
@spellid_6, @probability_6, @casttarget_6, @castflags_6, @delayinitialmin_6, @delayinitialmax_6, @delayrepeatmin_6, @delayrepeatmax_6,
@spellid_7, @probability_7, @casttarget_7, @castflags_7, @delayinitialmin_7, @delayinitialmax_7, @delayrepeatmin_7, @delayrepeatmax_7,
@spellid_8, @probability_8, @casttarget_8, @castflags_8, @delayinitialmin_8, @delayinitialmax_8, @delayrepeatmin_8, @delayrepeatmax_8);

-- Hivaxxis
set @creature_entry = 91928;
set @description = 'Karazhan Crypt: Alarus';
set @spell_list_id = 201054;

set @spellid_1 = 16431; -- Bone Armor
set @probability_1 = 100; 
set @casttarget_1 = 0; 
set @castflags_1 = 4;
set @delayinitialmin_1 = 6; 
set @delayinitialmax_1 = 6; 
set @delayrepeatmin_1 = 12; 
set @delayrepeatmax_1 = 12;

set @spellid_2 = 17738; -- Curse of the Plague Rat
set @probability_2 = 100; 
set @casttarget_2 = 2; 
set @castflags_2 = 4;
set @delayinitialmin_2 = 16; 
set @delayinitialmax_2 = 16; 
set @delayrepeatmin_2 = 28; 
set @delayrepeatmax_2 = 30;

set @spellid_3 = 15232; -- Shadow Bolt
set @probability_3 = 100; 
set @casttarget_3 = 1; 
set @castflags_3 = 12;
set @delayinitialmin_3 = 1; 
set @delayinitialmax_3 = 1; 
set @delayrepeatmin_3 = 3.5; 
set @delayrepeatmax_3 = 3.5;

set @spellid_4 = 0;
set @probability_4 = 0; 
set @casttarget_4 = 0; 
set @castflags_4 = 0;
set @delayinitialmin_4 = 0; 
set @delayinitialmax_4 = 0; 
set @delayrepeatmin_4 = 0; 
set @delayrepeatmax_4 = 0;

set @spellid_5 = 0; 
set @probability_5 = 0; 
set @casttarget_5 = 0; 
set @castflags_5 = 0;
set @delayinitialmin_5 = 0; 
set @delayinitialmax_5 = 0; 
set @delayrepeatmin_5 = 0; 
set @delayrepeatmax_5 = 0;

set @spellid_6 = 0; 
set @probability_6 = 0; 
set @casttarget_6 = 0; 
set @castflags_6 = 0;
set @delayinitialmin_6 = 0; 
set @delayinitialmax_6 = 0; 
set @delayrepeatmin_6 = 0; 
set @delayrepeatmax_6 = 0;

set @spellid_7 = 0; 
set @probability_7 = 0; 
set @casttarget_7 = 0; 
set @castflags_7 = 0;
set @delayinitialmin_7 = 0; 
set @delayinitialmax_7 = 0; 
set @delayrepeatmin_7 = 0; 
set @delayrepeatmax_7 = 0;

set @spellid_8 = 0; 
set @probability_8 = 0; 
set @casttarget_8 = 0; 
set @castflags_8 = 0;
set @delayinitialmin_8 = 0; 
set @delayinitialmax_8 = 0; 
set @delayrepeatmin_8 = 0; 
set @delayrepeatmax_8 = 0;

-- Do not touch this part:
update creature_template set spell_list_id = @spell_list_id, ai_name = '', script_name = '', spell_id1 = 0, spell_id2 = 0, spell_id3 = 0 
where entry = @creature_entry;
replace into creature_spells (entry, name, 
spellid_1, probability_1, casttarget_1, castflags_1, delayinitialmin_1, delayinitialmax_1, delayrepeatmin_1, delayrepeatmax_1, 
spellid_2, probability_2, casttarget_2, castflags_2, delayinitialmin_2, delayinitialmax_2, delayrepeatmin_2, delayrepeatmax_2, 
spellid_3, probability_3, casttarget_3, castflags_3, delayinitialmin_3, delayinitialmax_3, delayrepeatmin_3, delayrepeatmax_3, 
spellid_4, probability_4, casttarget_4, castflags_4, delayinitialmin_4, delayinitialmax_4, delayrepeatmin_4, delayrepeatmax_4, 
spellid_5, probability_5, casttarget_5, castflags_5, delayinitialmin_5, delayinitialmax_5, delayrepeatmin_5, delayrepeatmax_5, 
spellid_6, probability_6, casttarget_6, castflags_6, delayinitialmin_6, delayinitialmax_6, delayrepeatmin_6, delayrepeatmax_6, 
spellid_7, probability_7, casttarget_7, castflags_7, delayinitialmin_7, delayinitialmax_7, delayrepeatmin_7, delayrepeatmax_7, 
spellid_8, probability_8, casttarget_8, castflags_8, delayinitialmin_8, delayinitialmax_8, delayrepeatmin_8, delayrepeatmax_8) 
values (@spell_list_id, @description,
@spellid_1, @probability_1, @casttarget_1, @castflags_1, @delayinitialmin_1, @delayinitialmax_1, @delayrepeatmin_1, @delayrepeatmax_1,
@spellid_2, @probability_2, @casttarget_2, @castflags_2, @delayinitialmin_2, @delayinitialmax_2, @delayrepeatmin_2, @delayrepeatmax_2,
@spellid_3, @probability_3, @casttarget_3, @castflags_3, @delayinitialmin_3, @delayinitialmax_3, @delayrepeatmin_3, @delayrepeatmax_3,
@spellid_4, @probability_4, @casttarget_4, @castflags_4, @delayinitialmin_4, @delayinitialmax_4, @delayrepeatmin_4, @delayrepeatmax_4,
@spellid_5, @probability_5, @casttarget_5, @castflags_5, @delayinitialmin_5, @delayinitialmax_5, @delayrepeatmin_5, @delayrepeatmax_5,
@spellid_6, @probability_6, @casttarget_6, @castflags_6, @delayinitialmin_6, @delayinitialmax_6, @delayrepeatmin_6, @delayrepeatmax_6,
@spellid_7, @probability_7, @casttarget_7, @castflags_7, @delayinitialmin_7, @delayinitialmax_7, @delayrepeatmin_7, @delayrepeatmax_7,
@spellid_8, @probability_8, @casttarget_8, @castflags_8, @delayinitialmin_8, @delayinitialmax_8, @delayrepeatmin_8, @delayrepeatmax_8);

update creature_template set name = 'Sergeant Blackwell' where entry = 92005;
update item_template set display_id = 24022 where entry = 83217;
update creature_template set health_min = 23451, health_max = 23451 where entry = 91839;

replace into item_template (entry, patch, class, subclass, name, description, display_id, quality, flags, buy_count, buy_price, sell_price, inventory_type, allowable_class, allowable_race, item_level, required_level, required_skill, required_skill_rank, required_spell, required_honor_rank, required_city_rank, required_reputation_faction, required_reputation_rank, max_count, stackable, container_slots, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3, stat_type4, stat_value4, stat_type5, stat_value5, stat_type6, stat_value6, stat_type7, stat_value7, stat_type8, stat_value8, stat_type9, stat_value9, stat_type10, stat_value10, delay, range_mod, ammo_type, dmg_min1, dmg_max1, dmg_type1, dmg_min2, dmg_max2, dmg_type2, dmg_min3, dmg_max3, dmg_type3, dmg_min4, dmg_max4, dmg_type4, dmg_min5, dmg_max5, dmg_type5, block, armor, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, spellid_3, spelltrigger_3, spellcharges_3, spellppmrate_3, spellcooldown_3, spellcategory_3, spellcategorycooldown_3, spellid_4, spelltrigger_4, spellcharges_4, spellppmrate_4, spellcooldown_4, spellcategory_4, spellcategorycooldown_4, spellid_5, spelltrigger_5, spellcharges_5, spellppmrate_5, spellcooldown_5, spellcategory_5, spellcategorycooldown_5, bonding, page_text, page_language, page_material, start_quest, lock_id, material, sheath, random_property, set_id, max_durability, area_bound, map_bound, duration, bag_family, disenchant_id, food_type, min_money_loot, max_money_loot, extra_flags, other_team_entry, script_name) VALUES (23325, 10, 4, 1, 'Shangtest Test Helmet', '',  5325, 1, 0, 1, 5, 1, 1, 32767, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

set @gossip_menu_id = 53116; set @magic_number = 91854;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0');
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Many of the Gor\'dosh have lost their way following the Tyrant King, my visions have only seen the collapse of my people, but few listen.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

replace into creature_loot_template values (91844, 83240, 3, 1, 1, 1, 0, 0, 10);
replace into creature_loot_template values (91844, 83241, 3, 1, 1, 1, 0, 0, 10);
replace into creature_loot_template values (91844, 83242, 3, 1, 1, 1, 0, 0, 10);
replace into creature_loot_template values (91844, 83243, 3, 1, 1, 1, 0, 0, 10);
replace into creature_loot_template values (91844, 83244, 3, 1, 1, 1, 0, 0, 10);

replace into creature_loot_template values (91845, 83240, 3, 1, 1, 1, 0, 0, 10);
replace into creature_loot_template values (91845, 83241, 3, 1, 1, 1, 0, 0, 10);
replace into creature_loot_template values (91845, 83242, 3, 1, 1, 1, 0, 0, 10);
replace into creature_loot_template values (91845, 83243, 3, 1, 1, 1, 0, 0, 10);
replace into creature_loot_template values (91845, 83244, 3, 1, 1, 1, 0, 0, 10);

replace into creature_loot_template values (91846, 83240, 3, 1, 1, 1, 0, 0, 10);
replace into creature_loot_template values (91846, 83241, 3, 1, 1, 1, 0, 0, 10);
replace into creature_loot_template values (91846, 83242, 3, 1, 1, 1, 0, 0, 10);
replace into creature_loot_template values (91846, 83243, 3, 1, 1, 1, 0, 0, 10);
replace into creature_loot_template values (91846, 83244, 3, 1, 1, 1, 0, 0, 10);

replace into creature_loot_template values (91847, 83240, 3, 1, 1, 1, 0, 0, 10);
replace into creature_loot_template values (91847, 83241, 3, 1, 1, 1, 0, 0, 10);
replace into creature_loot_template values (91847, 83242, 3, 1, 1, 1, 0, 0, 10);
replace into creature_loot_template values (91847, 83243, 3, 1, 1, 1, 0, 0, 10);
replace into creature_loot_template values (91847, 83244, 3, 1, 1, 1, 0, 0, 10);

replace into creature_loot_template values (92135, 83240, 3, 1, 1, 1, 0, 0, 10);
replace into creature_loot_template values (92135, 83241, 3, 1, 1, 1, 0, 0, 10);
replace into creature_loot_template values (92135, 83242, 3, 1, 1, 1, 0, 0, 10);
replace into creature_loot_template values (92135, 83243, 3, 1, 1, 1, 0, 0, 10);
replace into creature_loot_template values (92135, 83244, 3, 1, 1, 1, 0, 0, 10);

replace into creature_loot_template values (92136, 83240, 3, 1, 1, 1, 0, 0, 10);
replace into creature_loot_template values (92136, 83241, 3, 1, 1, 1, 0, 0, 10);
replace into creature_loot_template values (92136, 83242, 3, 1, 1, 1, 0, 0, 10);
replace into creature_loot_template values (92136, 83243, 3, 1, 1, 1, 0, 0, 10);
replace into creature_loot_template values (92136, 83244, 3, 1, 1, 1, 0, 0, 10);

replace into creature_loot_template values (92138, 83240, 3, 1, 1, 1, 0, 0, 10);
replace into creature_loot_template values (92138, 83241, 3, 1, 1, 1, 0, 0, 10);
replace into creature_loot_template values (92138, 83242, 3, 1, 1, 1, 0, 0, 10);
replace into creature_loot_template values (92138, 83243, 3, 1, 1, 1, 0, 0, 10);
replace into creature_loot_template values (92138, 83244, 3, 1, 1, 1, 0, 0, 10);

replace into creature_loot_template values (92139, 83240, 3, 1, 1, 1, 0, 0, 10);
replace into creature_loot_template values (92139, 83241, 3, 1, 1, 1, 0, 0, 10);
replace into creature_loot_template values (92139, 83242, 3, 1, 1, 1, 0, 0, 10);
replace into creature_loot_template values (92139, 83243, 3, 1, 1, 1, 0, 0, 10);
replace into creature_loot_template values (92139, 83244, 3, 1, 1, 1, 0, 0, 10);

replace into creature_loot_template values (92140, 83240, 3, 1, 1, 1, 0, 0, 10);
replace into creature_loot_template values (92140, 83241, 3, 1, 1, 1, 0, 0, 10);
replace into creature_loot_template values (92140, 83242, 3, 1, 1, 1, 0, 0, 10);
replace into creature_loot_template values (92140, 83243, 3, 1, 1, 1, 0, 0, 10);
replace into creature_loot_template values (92140, 83244, 3, 1, 1, 1, 0, 0, 10);



set @creature_loot_id = 91844; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;
set @creature_loot_id = 91845; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;
set @creature_loot_id = 91846; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;
set @creature_loot_id = 91847; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;
set @creature_loot_id = 92135; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;
set @creature_loot_id = 92136; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;
set @creature_loot_id = 92138; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;
set @creature_loot_id = 92139; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;
set @creature_loot_id = 92140; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;

replace into gameobject_template (entry, patch, type, displayId, name, faction, flags, size, data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, mingold, maxgold, phase_quest_id, script_name) VALUES (175325, 0, 2, 2491, 'Caelan\'s Rest Wanted Board', 80, 4, 1, 0, 3991, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- Bone Golem
set @item = 50013; set @spell = 46461;
delete from custom_pet_entry_relation where item_entry = @item; update item_template set spellid_1 = @spell where entry = @item;
-- Mini Krampus
set @item = 50006; set @spell = 46458;
delete from custom_pet_entry_relation where item_entry = @item; update item_template set spellid_1 = @spell where entry = @item;
-- Blitzen
set @item = 50014; set @spell = 46462;
delete from custom_pet_entry_relation where item_entry = @item; update item_template set spellid_1 = @spell where entry = @item;
-- Moonkin Hatchling
set @item = 50019; set @spell = 46463;
delete from custom_pet_entry_relation where item_entry = @item; update item_template set spellid_1 = @spell where entry = @item;
-- Black Piglet
set @item = 50058; set @spell = 46464;
delete from custom_pet_entry_relation where item_entry = @item; update item_template set spellid_1 = @spell where entry = @item;
-- Kirin Tor Familiar
set @item = 50084; set @spell = 46465;
delete from custom_pet_entry_relation where item_entry = @item; update item_template set spellid_1 = @spell where entry = @item;
-- Darkmoon Tonk
set @item = 50200; set @spell = 46467;
delete from custom_pet_entry_relation where item_entry = @item; update item_template set spellid_1 = @spell where entry = @item;
-- Egg of Turtlhu
set @item = 50202; set @spell = 46468;
delete from custom_pet_entry_relation where item_entry = @item; update item_template set spellid_1 = @spell where entry = @item;
-- DELETED
set @item = 50240; set @spell = 0;
delete from custom_pet_entry_relation where item_entry = @item; update item_template set spellid_1 = @spell where entry = @item;
-- DELETED
set @item = 50600; set @spell = 0;
delete from custom_pet_entry_relation where item_entry = @item; update item_template set spellid_1 = @spell where entry = @item;
-- DELETED
set @item = 50601; set @spell = 0;
delete from custom_pet_entry_relation where item_entry = @item; update item_template set spellid_1 = @spell where entry = @item;
-- Green Steam Tonk
set @item = 51002; set @spell = 46473;
delete from custom_pet_entry_relation where item_entry = @item; update item_template set spellid_1 = @spell where entry = @item;
-- Purple Steam Tonk
set @item = 51003; set @spell = 46474;
delete from custom_pet_entry_relation where item_entry = @item; update item_template set spellid_1 = @spell where entry = @item;
-- Teldrassil Sproutling
set @item = 51007; set @spell = 46475;
delete from custom_pet_entry_relation where item_entry = @item; update item_template set spellid_1 = @spell where entry = @item;
-- Lost Farm Sheep
set @item = 51220; set @spell = 46476;
delete from custom_pet_entry_relation where item_entry = @item; update item_template set spellid_1 = @spell where entry = @item;
-- Master Dragonslayer\'s Shirt
set @item = 51240; set @spell = 46478;
delete from custom_pet_entry_relation where item_entry = @item; update item_template set spellid_1 = @spell where entry = @item;
-- Little Pony
set @item = 51259; set @spell = 46480;
delete from custom_pet_entry_relation where item_entry = @item; update item_template set spellid_1 = @spell where entry = @item;
-- Prince Herman II
set @item = 51260; set @spell = 46481;
delete from custom_pet_entry_relation where item_entry = @item; update item_template set spellid_1 = @spell where entry = @item;
-- Little Cow
set @item = 51261; set @spell = 46482;
delete from custom_pet_entry_relation where item_entry = @item; update item_template set spellid_1 = @spell where entry = @item;
-- DELETED
set @item = 51420; set @spell = 0;
delete from custom_pet_entry_relation where item_entry = @item; update item_template set spellid_1 = @spell where entry = @item;
-- Little Fawn
set @item = 51433; set @spell = 46848;
delete from custom_pet_entry_relation where item_entry = @item; update item_template set spellid_1 = @spell where entry = @item;
-- Little Ball of Spider Web
set @item = 51739; set @spell = 46486;
delete from custom_pet_entry_relation where item_entry = @item; update item_template set spellid_1 = @spell where entry = @item;
-- DELETED
set @item = 51760; set @spell = 0;
delete from custom_pet_entry_relation where item_entry = @item; update item_template set spellid_1 = @spell where entry = @item;
-- Blackrock\'s Lord Shirt
set @item = 51857; set @spell = 46488;
delete from custom_pet_entry_relation where item_entry = @item; update item_template set spellid_1 = @spell where entry = @item;

-- Quest Rewards for "The First Opening of The Dark Portal" (Choose One)
replace into item_template values
 ('82950', '0', '4', '1', 'X-51 Arcane Ocular Implants', '', '40077', '3', '0', '1', '103284', '25821', '1', '-1', '-1', '63',
 '58', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '15', '7', '18',
 '6', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '75', '0', '0', '0',
 '0', '0', '0', '18384', '1', '0', '0', '-1', '0', '-1', '12883', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '1', '0', '0', '50', '0', '0', '0', '0', '49', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('82951', '0', '4', '2', 'X-52 Stealth Ocular Implants', '', '40077', '3', '0', '1', '103284', '25821', '1', '-1', '-1', '63',
 '58', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '15', '4', '10',
 '7', '18', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '143', '0', '0', '0',
 '0', '0', '0', '7597', '1', '0', '0', '-1', '0', '-1', '17746', '1', '0', '0', '-1', '0', '-1', '12883', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '1', '0', '0', '60', '0', '0', '0', '0', '49', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('82952', '0', '4', '3', 'X-53 Ranger Ocular Implants', '', '40077', '3', '0', '1', '103284', '25821', '1', '-1', '-1', '63',
 '58', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '15', '5', '10',
 '7', '18', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '301', '0', '0', '0',
 '0', '0', '0', '15464', '1', '0', '0', '-1', '0', '-1', '12883', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '1', '0', '0', '70', '0', '0', '0', '0', '49', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('82953', '0', '4', '4', 'X-54 Guardian Ocular Implants', '', '40077', '3', '0', '1', '103284', '25821', '1', '-1', '-1', '63',
 '58', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '15', '7', '22',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '534', '0', '0', '0',
 '0', '0', '0', '13665', '1', '0', '0', '-1', '0', '-1', '12883', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '1', '0', '0', '80', '0', '0', '0', '0', '49', '0', '0', '0',
 '0', '1', NULL);
-- Quest Rewards for Explorer Quest
replace into item_template values
 ('82954', '0', '4', '0', 'Explorer\'s League Signet Ring', '', '23728', '2', '0', '1', '3564', '891', '11', '-1', '-1', '25',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '3', '7', '3',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '3', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('82955', '0', '4', '2', 'Explorer\'s League Cinch', '', '16938', '2', '0', '1', '1236', '309', '6', '-1', '-1', '25',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '3', '7', '5',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '1', '0', '0', '30', '0', '0', '0', '0', '3', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('83256', '0', '4', '3', 'Explorer\'s League Wristprotectors', '', '27324', '2', '0', '1', '3244', '811', '9', '-1', '-1', '25',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '3', '7', '3',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '80', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '5', '1', '0', '0', '30', '0', '0', '0', '0', '3', '0', '0', '0',
 '0', '1', NULL);
 
 update quest_template set 
 rewchoiceitemid1 = 82950, 
 rewchoiceitemcount1 = 1, 
 rewchoiceitemid2 = 82951, 
 rewchoiceitemcount2 = 1,
 rewchoiceitemid3 = 82952, 
 rewchoiceitemcount3 = 1, 
 rewchoiceitemid4 = 82953, 
 rewchoiceitemcount4 = 1
 where entry = 80605;
 
 -- The Wandering Knight LOOT
 
 replace into item_template values
 ('83257', '0', '2', '3', 'Caer Darrow Reserve Rifle', '', '28206', '3', '0', '1', '170752', '42688', '15', '-1', '-1', '62',
 '56', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2600', '0',
 '0', '76', '94', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '7597', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '75', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('0', '0', '4', '3', 'Coif of the Lost Soul', '', '15327', '3', '0', '1', '147256', '36815', '1', '-1', '-1', '61',
 '56', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '15', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '324', '0', '0', '0',
 '0', '5', '0', '14027', '1', '0', '0', '-1', '0', '-1', '13665', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '1', '0', '0', '70', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('0', '0', '2', '7', 'Old Knighthood Blade', 'Put in service to the first Knight\'s of Lordaeron', '7313', '3', '0', '1', '274924', '68731', '21', '-1', '-1', '61',
 '56', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '6', '5', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1900', '0',
 '0', '58', '86', '0', '1', '4', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '9417', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '90', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('0', '0', '4', '3', 'Footman\'s Breastplate', '', '9403', '3', '0', '1', '160628', '40157', '5', '-1', '-1', '61',
 '56', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '13', '7', '12',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '381', '0', '0', '0',
 '0', '0', '0', '7517', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '5', '1', '0', '0', '120', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 
 -- Crusader Larsarius LOOT
 
 replace into item_template values
 ('0', '0', '4', '0', 'Tome of the First Scripture', 'Contains many holy scriptures of the Light', '23171', '3', '0', '1', '186448', '46612', '23', '-1', '-1', '66',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '10', '6', '3',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '10', '0', '0', '0',
 '0', '0', '0', '9408', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '6', '0', '0', '0', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('0', '0', '2', '5', 'Scarlet Wanderer\'s Hammer', '', '22134', '3', '0', '1', '277140', '69285', '17', '-1', '-1', '65',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '18', '5', '12',
 '7', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3700', '0',
 '0', '161', '242', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '21512', '1', '0', '0', '-1', '0', '-1', '9407', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '2', '1', '0', '0', '100', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('0', '0', '4', '2', 'Cuffs of the Justicar', 'Created with the purpose of dispensing justice', '34549', '3', '0', '1', '72976', '18244', '9', '-1', '-1', '65',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '16', '3', '5',
 '7', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '81', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '1', '0', '0', '35', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('0', '0', '4', '0', 'Ring of Sacrifice', 'A tribute to the lost souls', '24087', '3', '0', '1', '138496', '34624', '11', '-1', '-1', '65',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '24', '6', '-20',
 '4', '-10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '25', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 
 -- Zareth Terrorblade LOOT
 
 replace into item_template values
 ('0', '0', '4', '2', 'Demon Hunter\'s Blindfold', 'To become sightless, is to see the demonic', '5878', '3', '0', '1', '105952', '26488', '1', '-1', '-1', '62',
 '57', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '10', '7', '6',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '62', '0', '5', '0',
 '0', '5', '0', '10238', '0', '0', '0', '180000', '0', '-1', '7597', '1', '0', '0', '-1', '0', '-1', '15464', '1',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '60', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('0', '0', '4', '1', 'Sandals of the Demon Stalker', '', '16855', '3', '0', '1', '67364', '16841', '8', '-1', '-1', '62',
 '57', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '9', '7', '6',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '59', '0', '5', '0',
 '0', '5', '0', '17747', '1', '0', '0', '-1', '0', '-1', '9395', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '40', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('0', '0', '4', '3', 'Bracers of Demonic Hunt', 'Surging with the power to destroy', '17002', '3', '0', '1', '74968', '18742', '9', '-1', '-1', '62',
 '57', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '7', '7', '3',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '160', '0', '3', '0',
 '0', '3', '0', '21362', '1', '0', '0', '-1', '0', '-1', '9142', '1', '0', '0', '-1', '0', '-1', '4646', '1',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '5', '1', '0', '0', '40', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('0', '0', '4', '0', 'Demon Watcher\'s Ring', '', '35423', '3', '0', '1', '57156', '14289', '11', '-1', '-1', '61',
 '57', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '10', '0',
 '0', '10', '0', '15464', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL); 
 
 -- 0.5:
 
 replace into item_template values
 ('0', '0', '2', '7', 'Terrorblade Glaive', 'Crafted to destroy demonic corruption', '8376', '4', '0', '1', '357648', '89412', '21', '-1', '-1', '63',
 '57', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2200', '0',
 '0', '74', '121', '0', '5', '10', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '0',
 '0', '5', '0', '20858', '1', '0', '0', '-1', '0', '-1', '15661', '2', '0', '0.65', '45000', '0', '-1', '7597', '1',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '2', '0', '0', '105', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);
 
 -- Jal'akar LOOT
 
 replace into item_template values
 ('0', '0', '4', '2', 'Vilebranch Grips', '', '16711', '3', '0', '1', '45832', '11458', '10', '-1', '-1', '55',
 '50', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '8', '3', '6',
 '6', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '109', '0', '0', '0',
 '0', '0', '0', '9331', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '1', '0', '0', '35', '0', '0', '0', '0', '46', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('0', '0', '4', '0', 'Cursed Idol', 'Laced with corrupting power', '1401', '3', '0', '1', '12976', '3244', '12', '-1', '-1', '52',
 '50', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '10', '0', '20969', '1', '0', '0', '-1', '0', '-1', '21363', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '2', '1', '0', '0', '0', '0', '0', '0', '0', '46', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('0', '0', '4', '1', 'Vilebranch Seer\'s Dress', 'Ceremonial and sacred leggings', '5928', '3', '0', '1', '55496', '13874', '7', '-1', '-1', '55',
 '50', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '12', '3', '5',
 '6', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '68', '0', '0', '0',
 '0', '0', '0', '9318', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '65', '0', '0', '0', '0', '46', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('0', '0', '4', '3', 'The Dire Clasp', '', '9920', '3', '0', '1', '39948', '9987', '6', '-1', '-1', '55',
 '50', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '8', '3', '5',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '178', '0', '0', '0',
 '0', '0', '0', '7597', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '5', '1', '0', '0', '40', '0', '0', '0', '0', '46', '0', '0', '0',
 '0', '1', NULL);
 
 -- 0.5:
 
 replace into item_template values
 ('0', '0', '4', '0', 'Charmed Voodoo Collar', 'Swirling in Hoodoo Magics', '32326', '4', '0', '1', '85420', '21355', '2', '-1', '-1', '56',
 '50', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '8', '6', '7',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '9408', '1', '0', '0', '-1', '0', '-1', '21361', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);
 
 -- Explorer Ashbeard LOOT
 
 -- 0.5:
 
 replace into item_template values
 ('0', '0', '4', '0', 'Ashbeard\'s Lucky Telescope', 'The telescope of a seasoned explorer', '4283', '4', '0', '1', '43456', '10864', '12', '-1', '-1', '54',
 '49', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5',
 '0', '0', '0', '13670', '1', '0', '0', '-1', '0', '-1', '12883', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('0', '0', '4', '1', 'Lens of the Gorge Explorer', '', '32536', '3', '0', '1', '52976', '13244', '1', '-1', '-1', '54',
 '49', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '15', '6', '6',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '63', '0', '5', '0',
 '0', '0', '0', '23727', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '50', '0', '0', '0', '0', '46', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('0', '0', '4', '1', 'Dark Iron Adventurer Shawl', 'Tattered and worn, it has seen better days', '23140', '3', '0', '1', '38352', '9588', '16', '-1', '-1', '54',
 '49', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '14', '7', '4',
 '6', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '34', '0', '5', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '0', '0', '0', '0', '0', '46', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('0', '0', '4', '2', 'Ash Explorer Pauldrons', 'Covered in a heavy layer of ash', '27732', '3', '0', '1', '53944', '13486', '3', '-1', '-1', '54',
 '49', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '12', '7', '11',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '117', '0', '5', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '1', '0', '0', '60', '0', '0', '0', '0', '46', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('0', '0', '2', '4', 'Everflame Torch', 'It is always burning', '12236', '3', '0', '1', '98444', '24611', '13', '-1', '-1', '54',
 '49', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '6', '20', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1800', '0',
 '0', '47', '68', '0', '5', '10', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '0',
 '0', '0', '0', '18543', '2', '0', '0.65', '75000', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '2', '3', '0', '0', '90', '0', '0', '0', '0', '46', '0', '0', '0',
 '0', '1', NULL);
 
 update item_template set display_id = 66131 where entry = 83244;