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