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

	replace into creature_loot_template values (91844, 83240, 1, 1, 1, 1, 0, 0, 10);
	replace into creature_loot_template values (91844, 83241, 1, 1, 1, 1, 0, 0, 10);
	replace into creature_loot_template values (91844, 83242, 1, 1, 1, 1, 0, 0, 10);
	replace into creature_loot_template values (91844, 83243, 1, 1, 1, 1, 0, 0, 10);
	replace into creature_loot_template values (91844, 83244, 1, 1, 1, 1, 0, 0, 10);
															  
	replace into creature_loot_template values (91845, 83240, 1, 1, 1, 1, 0, 0, 10);
	replace into creature_loot_template values (91845, 83241, 1, 1, 1, 1, 0, 0, 10);
	replace into creature_loot_template values (91845, 83242, 1, 1, 1, 1, 0, 0, 10);
	replace into creature_loot_template values (91845, 83243, 1, 1, 1, 1, 0, 0, 10);
	replace into creature_loot_template values (91845, 83244, 1, 1, 1, 1, 0, 0, 10);
															  
	replace into creature_loot_template values (91846, 83240, 1, 1, 1, 1, 0, 0, 10);
	replace into creature_loot_template values (91846, 83241, 1, 1, 1, 1, 0, 0, 10);
	replace into creature_loot_template values (91846, 83242, 1, 1, 1, 1, 0, 0, 10);
	replace into creature_loot_template values (91846, 83243, 1, 1, 1, 1, 0, 0, 10);
	replace into creature_loot_template values (91846, 83244, 1, 1, 1, 1, 0, 0, 10);
															  
	replace into creature_loot_template values (91847, 83240, 1, 1, 1, 1, 0, 0, 10);
	replace into creature_loot_template values (91847, 83241, 1, 1, 1, 1, 0, 0, 10);
	replace into creature_loot_template values (91847, 83242, 1, 1, 1, 1, 0, 0, 10);
	replace into creature_loot_template values (91847, 83243, 1, 1, 1, 1, 0, 0, 10);
	replace into creature_loot_template values (91847, 83244, 1, 1, 1, 1, 0, 0, 10);
															  
	replace into creature_loot_template values (92135, 83240, 1, 1, 1, 1, 0, 0, 10);
	replace into creature_loot_template values (92135, 83241, 1, 1, 1, 1, 0, 0, 10);
	replace into creature_loot_template values (92135, 83242, 1, 1, 1, 1, 0, 0, 10);
	replace into creature_loot_template values (92135, 83243, 1, 1, 1, 1, 0, 0, 10);
	replace into creature_loot_template values (92135, 83244, 1, 1, 1, 1, 0, 0, 10);
															  
	replace into creature_loot_template values (92136, 83240, 1, 1, 1, 1, 0, 0, 10);
	replace into creature_loot_template values (92136, 83241, 1, 1, 1, 1, 0, 0, 10);
	replace into creature_loot_template values (92136, 83242, 1, 1, 1, 1, 0, 0, 10);
	replace into creature_loot_template values (92136, 83243, 1, 1, 1, 1, 0, 0, 10);
	replace into creature_loot_template values (92136, 83244, 1, 1, 1, 1, 0, 0, 10);
															  
	replace into creature_loot_template values (92138, 83240, 1, 1, 1, 1, 0, 0, 10);
	replace into creature_loot_template values (92138, 83241, 1, 1, 1, 1, 0, 0, 10);
	replace into creature_loot_template values (92138, 83242, 1, 1, 1, 1, 0, 0, 10);
	replace into creature_loot_template values (92138, 83243, 1, 1, 1, 1, 0, 0, 10);
	replace into creature_loot_template values (92138, 83244, 1, 1, 1, 1, 0, 0, 10);
															  
	replace into creature_loot_template values (92139, 83240, 1, 1, 1, 1, 0, 0, 10);
	replace into creature_loot_template values (92139, 83241, 1, 1, 1, 1, 0, 0, 10);
	replace into creature_loot_template values (92139, 83242, 1, 1, 1, 1, 0, 0, 10);
	replace into creature_loot_template values (92139, 83243, 1, 1, 1, 1, 0, 0, 10);
	replace into creature_loot_template values (92139, 83244, 1, 1, 1, 1, 0, 0, 10);
															  
	replace into creature_loot_template values (92140, 83240, 1, 1, 1, 1, 0, 0, 10);
	replace into creature_loot_template values (92140, 83241, 1, 1, 1, 1, 0, 0, 10);
	replace into creature_loot_template values (92140, 83242, 1, 1, 1, 1, 0, 0, 10);
	replace into creature_loot_template values (92140, 83243, 1, 1, 1, 1, 0, 0, 10);
	replace into creature_loot_template values (92140, 83244, 1, 1, 1, 1, 0, 0, 10);

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
	 
	set @world_rare_id = 49007;
	update creature_template set loot_id = @world_rare_id where entry = @world_rare_id; 
	replace into creature_loot_template values 
	(@world_rare_id, 83257, 100, 1, 1, 1, 0, 0, 10),
	(@world_rare_id, 83258, 100, 1, 1, 1, 0, 0, 10),
	(@world_rare_id, 83259, 100, 1, 1, 1, 0, 0, 10),
	(@world_rare_id, 83260, 100, 1, 1, 1, 0, 0, 10);
	 
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
	 ('83258', '0', '4', '3', 'Coif of the Lost Soul', '', '15327', '3', '0', '1', '147256', '36815', '1', '-1', '-1', '61',
	 '56', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '15', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '324', '0', '0', '0',
	 '0', '5', '0', '14027', '1', '0', '0', '-1', '0', '-1', '13665', '1', '0', '0', '-1', '0', '-1', '0', '0',
	 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
	 '-1', '1', '0', '0', '0', '0', '0', '1', '1', '0', '0', '70', '0', '0', '0', '0', '48', '0', '0', '0',
	 '0', '1', NULL);
	 
	 replace into item_template values
	 ('83259', '0', '2', '7', 'Old Knighthood Blade', 'Put in service to the first Knight\'s of Lordaeron', '7313', '3', '0', '1', '274924', '68731', '21', '-1', '-1', '61',
	 '56', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '6', '5', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1900', '0',
	 '0', '58', '86', '0', '1', '4', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '9417', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
	 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
	 '-1', '1', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '90', '0', '48', '0', '0', '0',
	 '0', '1', NULL);
	 
	 replace into item_template values
	 ('83260', '0', '4', '3', 'Footman\'s Breastplate', '', '9403', '3', '0', '1', '160628', '40157', '5', '-1', '-1', '61',
	 '56', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '13', '7', '12',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '381', '0', '0', '0',
	 '0', '0', '0', '7517', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
	 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
	 '-1', '1', '0', '0', '0', '0', '0', '5', '1', '0', '0', '120', '0', '0', '0', '0', '48', '0', '0', '0',
	 '0', '1', NULL);
	 
	 -- Crusader Larsarius LOOT
	 
	set @world_rare_id = 49008;
	update creature_template set loot_id = @world_rare_id where entry = @world_rare_id; 
	replace into creature_loot_template values 
	(@world_rare_id, 83261, 100, 1, 1, 1, 0, 0, 10),
	(@world_rare_id, 83262, 100, 1, 1, 1, 0, 0, 10),
	(@world_rare_id, 83263, 100, 1, 1, 1, 0, 0, 10),
	(@world_rare_id, 83264, 100, 1, 1, 1, 0, 0, 10);
	 
	 replace into item_template values
	 ('83261', '0', '4', '0', 'Tome of the First Scripture', 'Contains many holy scriptures of the Light', '23171', '3', '0', '1', '186448', '46612', '23', '-1', '-1', '66',
	 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '10', '6', '3',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '10', '0', '0', '0',
	 '0', '0', '0', '9408', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
	 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
	 '-1', '1', '0', '0', '0', '0', '0', '0', '6', '0', '0', '0', '0', '0', '0', '0', '48', '0', '0', '0',
	 '0', '1', NULL);
	 
	 replace into item_template values
	 ('83262', '0', '2', '5', 'Scarlet Wanderer\'s Hammer', '', '22134', '3', '0', '1', '277140', '69285', '17', '-1', '-1', '65',
	 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '18', '5', '12',
	 '7', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3700', '0',
	 '0', '161', '242', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '21512', '1', '0', '0', '-1', '0', '-1', '9407', '1', '0', '0', '-1', '0', '-1', '0', '0',
	 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
	 '-1', '1', '0', '0', '0', '0', '0', '2', '1', '0', '0', '100', '0', '0', '0', '0', '48', '0', '0', '0',
	 '0', '1', NULL);
	 
	 replace into item_template values
	 ('83263', '0', '4', '2', 'Cuffs of the Justicar', 'Created with the purpose of dispensing justice', '34549', '3', '0', '1', '72976', '18244', '9', '-1', '-1', '65',
	 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '16', '3', '5',
	 '7', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '81', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
	 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
	 '-1', '1', '0', '0', '0', '0', '0', '8', '1', '0', '0', '35', '0', '0', '0', '0', '48', '0', '0', '0',
	 '0', '1', NULL);
	 
	 replace into item_template values
	 ('83264', '0', '4', '0', 'Ring of Sacrifice', 'A tribute to the lost souls', '24087', '3', '0', '1', '138496', '34624', '11', '-1', '-1', '65',
	 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '24', '6', '-20',
	 '4', '-10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '25', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
	 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
	 '-1', '1', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '48', '0', '0', '0',
	 '0', '1', NULL);
	 
	 -- Zareth Terrorblade LOOT
	 
	set @world_rare_id = 49009;
	update creature_template set loot_id = @world_rare_id where entry = @world_rare_id; 
	replace into creature_loot_template values 
	(@world_rare_id, 83265, 100, 1, 1, 1, 0, 0, 10),
	(@world_rare_id, 83266, 100, 1, 1, 1, 0, 0, 10),
	(@world_rare_id, 83267, 100, 1, 1, 1, 0, 0, 10),
	(@world_rare_id, 83268, 100, 1, 1, 1, 0, 0, 10),
	(@world_rare_id, 83269, 0.5, 2, 1, 1, 0, 0, 10);
	 
	 replace into item_template values
	 ('83265', '0', '4', '2', 'Demon Hunter\'s Blindfold', 'To become sightless, is to see the demonic', '5878', '3', '0', '1', '105952', '26488', '1', '-1', '-1', '62',
	 '57', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '10', '7', '6',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '62', '0', '5', '0',
	 '0', '5', '0', '10238', '0', '0', '0', '180000', '0', '-1', '7597', '1', '0', '0', '-1', '0', '-1', '15464', '1',
	 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
	 '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '60', '0', '0', '0', '0', '48', '0', '0', '0',
	 '0', '1', NULL);
	 
	 replace into item_template values
	 ('83266', '0', '4', '1', 'Sandals of the Demon Stalker', '', '16855', '3', '0', '1', '67364', '16841', '8', '-1', '-1', '62',
	 '57', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '9', '7', '6',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '59', '0', '5', '0',
	 '0', '5', '0', '17747', '1', '0', '0', '-1', '0', '-1', '9395', '1', '0', '0', '-1', '0', '-1', '0', '0',
	 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
	 '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '40', '0', '0', '0', '0', '48', '0', '0', '0',
	 '0', '1', NULL);
	 
	 replace into item_template values
	 ('83267', '0', '4', '3', 'Bracers of Demonic Hunt', 'Surging with the power to destroy', '17002', '3', '0', '1', '74968', '18742', '9', '-1', '-1', '62',
	 '57', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '7', '7', '3',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '160', '0', '3', '0',
	 '0', '3', '0', '21362', '1', '0', '0', '-1', '0', '-1', '9142', '1', '0', '0', '-1', '0', '-1', '4646', '1',
	 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
	 '-1', '1', '0', '0', '0', '0', '0', '5', '1', '0', '0', '40', '0', '0', '0', '0', '48', '0', '0', '0',
	 '0', '1', NULL);
	 
	 replace into item_template values
	 ('83268', '0', '4', '0', 'Demon Watcher\'s Ring', '', '35423', '3', '0', '1', '57156', '14289', '11', '-1', '-1', '61',
	 '57', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '10', '0',
	 '0', '10', '0', '15464', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
	 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
	 '-1', '1', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '48', '0', '0', '0',
	 '0', '1', NULL); 
	 
	 -- 0.5:
	 
	 replace into item_template values
	 ('83269', '0', '2', '7', 'Terrorblade Glaive', 'Crafted to destroy demonic corruption', '8376', '4', '0', '1', '357648', '89412', '21', '-1', '-1', '63',
	 '57', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2200', '0',
	 '0', '74', '121', '0', '5', '10', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '0',
	 '0', '5', '0', '20858', '1', '0', '0', '-1', '0', '-1', '15661', '2', '0', '0.65', '45000', '0', '-1', '7597', '1',
	 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
	 '-1', '1', '0', '0', '0', '0', '0', '1', '2', '0', '0', '105', '0', '0', '0', '0', '65', '0', '0', '0',
	 '0', '1', NULL);
	 
	 -- Jal'akar LOOT
	 
	 set @world_rare_id = 49010;
	update creature_template set loot_id = @world_rare_id where entry = @world_rare_id; 
	replace into creature_loot_template values 
	(@world_rare_id, 51023, 100, 1, 1, 1, 0, 0, 10),
	(@world_rare_id, 51024, 100, 1, 1, 1, 0, 0, 10),
	(@world_rare_id, 51024, 100, 1, 1, 1, 0, 0, 10),
	(@world_rare_id, 83273, 100, 1, 1, 1, 0, 0, 10),
	(@world_rare_id, 83274, 0.5, 2, 1, 1, 0, 0, 10);
	 
	 replace into item_template values
	 ('51023', '0', '4', '2', 'Vilebranch Grips', '', '16711', '3', '0', '1', '45832', '11458', '10', '-1', '-1', '55',
	 '50', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '8', '3', '6',
	 '6', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '109', '0', '0', '0',
	 '0', '0', '0', '9331', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
	 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
	 '-1', '1', '0', '0', '0', '0', '0', '8', '1', '0', '0', '35', '0', '0', '0', '0', '46', '0', '0', '0',
	 '0', '1', NULL);
	 
	 replace into item_template values
	 ('51024', '0', '4', '0', 'Cursed Idol', 'Laced with corrupting power', '1401', '3', '0', '1', '12976', '3244', '12', '-1', '-1', '52',
	 '50', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '10', '0', '20969', '1', '0', '0', '-1', '0', '-1', '21363', '1', '0', '0', '-1', '0', '-1', '0', '0',
	 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
	 '-1', '1', '0', '0', '0', '0', '0', '2', '1', '0', '0', '0', '0', '0', '0', '0', '46', '0', '0', '0',
	 '0', '1', NULL);
	 
	 replace into item_template values
	 ('51025', '0', '4', '1', 'Vilebranch Seer\'s Dress', 'Ceremonial and sacred leggings', '5928', '3', '0', '1', '55496', '13874', '7', '-1', '-1', '55',
	 '50', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '12', '3', '5',
	 '6', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '68', '0', '0', '0',
	 '0', '0', '0', '9318', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
	 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
	 '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '65', '0', '0', '0', '0', '46', '0', '0', '0',
	 '0', '1', NULL);
	 
	 replace into item_template values
	 ('83273', '0', '4', '3', 'The Dire Clasp', '', '9920', '3', '0', '1', '39948', '9987', '6', '-1', '-1', '55',
	 '50', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '8', '3', '5',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '178', '0', '0', '0',
	 '0', '0', '0', '7597', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
	 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
	 '-1', '1', '0', '0', '0', '0', '0', '5', '1', '0', '0', '40', '0', '0', '0', '0', '46', '0', '0', '0',
	 '0', '1', NULL);
	 
	 -- 0.5:
	 
	 replace into item_template values
	 ('83274', '0', '4', '0', 'Charmed Voodoo Collar', 'Swirling in Hoodoo Magics', '32326', '4', '0', '1', '85420', '21355', '2', '-1', '-1', '56',
	 '50', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '8', '6', '7',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '9408', '1', '0', '0', '-1', '0', '-1', '21361', '1', '0', '0', '-1', '0', '-1', '0', '0',
	 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
	 '-1', '1', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '65', '0', '0', '0',
	 '0', '1', NULL);
	 
	 -- Explorer Ashbeard LOOT
	 
	  set @world_rare_id = 49010;
	update creature_template set loot_id = @world_rare_id where entry = @world_rare_id; 
	replace into creature_loot_template values 
	(@world_rare_id, 83276, 100, 1, 1, 1, 0, 0, 10),
	(@world_rare_id, 83277, 100, 1, 1, 1, 0, 0, 10),
	(@world_rare_id, 83278, 100, 1, 1, 1, 0, 0, 10),
	(@world_rare_id, 83279, 100, 1, 1, 1, 0, 0, 10),
	(@world_rare_id, 83275, 0.5, 2, 1, 1, 0, 0, 10);
	 
	 -- 0.5:
	 
	 replace into item_template values
	 ('83275', '0', '4', '0', 'Ashbeard\'s Lucky Telescope', 'The telescope of a seasoned explorer', '4283', '4', '0', '1', '43456', '10864', '12', '-1', '-1', '54',
	 '49', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5',
	 '0', '0', '0', '13670', '1', '0', '0', '-1', '0', '-1', '12883', '0', '0', '0', '-1', '0', '-1', '0', '0',
	 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
	 '-1', '1', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '65', '0', '0', '0',
	 '0', '1', NULL);
	 
	 replace into item_template values
	 ('83276', '0', '4', '1', 'Lens of the Gorge Explorer', '', '32536', '3', '0', '1', '52976', '13244', '1', '-1', '-1', '54',
	 '49', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '15', '6', '6',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '63', '0', '5', '0',
	 '0', '0', '0', '23727', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
	 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
	 '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '50', '0', '0', '0', '0', '46', '0', '0', '0',
	 '0', '1', NULL);
	 
	 replace into item_template values
	 ('83277', '0', '4', '1', 'Dark Iron Adventurer Shawl', 'Tattered and worn, it has seen better days', '23140', '3', '0', '1', '38352', '9588', '16', '-1', '-1', '54',
	 '49', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '14', '7', '4',
	 '6', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '34', '0', '5', '0',
	 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
	 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
	 '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '0', '0', '0', '0', '0', '46', '0', '0', '0',
	 '0', '1', NULL);
	 
	 replace into item_template values
	 ('83278', '0', '4', '2', 'Ash Explorer Pauldrons', 'Covered in a heavy layer of ash', '27732', '3', '0', '1', '53944', '13486', '3', '-1', '-1', '54',
	 '49', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '12', '7', '11',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '117', '0', '5', '0',
	 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
	 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
	 '-1', '1', '0', '0', '0', '0', '0', '8', '1', '0', '0', '60', '0', '0', '0', '0', '46', '0', '0', '0',
	 '0', '1', NULL);
	 
	 replace into item_template values
	 ('83279', '0', '2', '4', 'Everflame Torch', 'It is always burning', '12236', '3', '0', '1', '98444', '24611', '13', '-1', '-1', '54',
	 '49', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '6', '20', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1800', '0',
	 '0', '47', '68', '0', '5', '10', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '0',
	 '0', '0', '0', '18543', '2', '0', '0.65', '75000', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
	 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
	 '-1', '1', '0', '0', '0', '0', '0', '2', '3', '0', '0', '90', '0', '0', '0', '0', '46', '0', '0', '0',
	 '0', '1', NULL);
	 
	 update item_template set display_id = 66131 where entry = 83244;
	 
	replace into gameobject_template (entry, patch, type, displayId, name, faction, flags, size, data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, mingold, maxgold, phase_quest_id, script_name) VALUES (3000512, 0, 8, 273, 'The Dark-Rune Anvil', 0, 0, 2, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

	update gameobject_template set name = 'Forgotten Tome', displayid = 2695 where entry = 2010823;

	delete from creature_template where entry = 11500;
	replace into creature_template (entry, patch, display_id1, display_id2, display_id3, display_id4, name, subname, gossip_menu_id, level_min, level_max, health_min, health_max, mana_min, mana_max, armor, faction, npc_flags, speed_walk, speed_run, scale, detection_range, call_for_help_range, leash_range, rank, xp_multiplier, dmg_min, dmg_max, dmg_school, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, unit_class, unit_flags, dynamic_flags, beast_family, trainer_type, trainer_spell, trainer_class, trainer_race, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, type_flags, loot_id, pickpocket_loot_id, skinning_loot_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spell_id1, spell_id2, spell_id3, spell_id4, spell_list_id, pet_spell_list_id, gold_min, gold_max, ai_name, movement_type, inhabit_type, civilian, racial_leader, regeneration, equipment_id, trainer_id, vendor_id, mechanic_immune_mask, school_immune_mask, flags_extra, phase_quest_id, script_name) VALUES (11500, 0, 18727, 0, 0, 0, 'Ganum Highmountain', 'Airship Engineer', 9106, 28, 28, 847, 947, 0, 0, 20, 83, 2, 1, 1.14286, 1.35, 20, 5, 0, 0, 1, 12, 14, 0, 66, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 19.9584, 27.4428, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 1, 0, 0, 3, 2987, 0, 0, 0, 0, 524298, 0, '');

	update creature_template set npc_flags = 1 where entry = 11500;

	replace into creature_display_info_addon (display_id) values (18720);
	replace into creature_display_info_addon (display_id) values (18721);
	replace into creature_display_info_addon (display_id) values (18722);
	replace into creature_display_info_addon (display_id) values (18723);
	replace into creature_display_info_addon (display_id) values (18724);
	replace into creature_display_info_addon (display_id) values (18725);
	replace into creature_display_info_addon (display_id) values (18726);
	replace into creature_display_info_addon (display_id) values (18727);


	set @gossip_menu_id = 51661; set @magic_number = 11500;
	replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0');
	replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Welcome, are you here to ride the Windstrider? She is Thunder Bluff\'s first airship made in collaboration with the Durotar Labor Union.\n\nI have had a lot of influence in the design, being a former Shaman I ensured that she received the blessing of the spirits, and that the material and methods used for her construction was not dangerous or harmful to the land.\n\nMy goblin colleagues wanted to cut corners but the Elders had very strict terms to allow this airship. Connecting our fair city to our Orcish allies is a great boon I am sure.\n\nThey all laughed at me, telling me a Tauren cannot be an Engineer, well look at me now!\n\nIn any case, I am sure she\'s due to arrive at any time. Unless you need something else I must be excused.');
	replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
	update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

	update creature_template set rank = 0, health_min = 2400, health_min = 2200 where entry = 91863;
	update creature_template set npc_flags = 8192 where entry = 92008;

	set @equip_template = 70; set @weapon_1 = 20069; set @weapon_2 = 0; set @creature = 92938;
	replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0); 
	update creature_template set equipment_id = @equip_template where entry = @creature;

	set @gossip_menu_id = 51569; set @magic_number = 92938;
	replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0');
	replace into broadcast_text (entry, Male_Text) values (@magic_number, 'I am Magus Valgon, citizen of Kul Tiras, and a wizard dedicated to both Hydromancy and Arcana.\n\nThere are many great mysteries lurking upon this island, I have dedicated myself to uncovering them.');
	replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
	update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

	replace into creature_template (entry, patch, display_id1, display_id2, display_id3, display_id4, name, subname, gossip_menu_id, level_min, level_max, health_min, health_max, mana_min, mana_max, armor, faction, npc_flags, speed_walk, speed_run, scale, detection_range, call_for_help_range, leash_range, rank, xp_multiplier, dmg_min, dmg_max, dmg_school, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, unit_class, unit_flags, dynamic_flags, beast_family, trainer_type, trainer_spell, trainer_class, trainer_race, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, type_flags, loot_id, pickpocket_loot_id, skinning_loot_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spell_id1, spell_id2, spell_id3, spell_id4, spell_list_id, pet_spell_list_id, gold_min, gold_max, ai_name, movement_type, inhabit_type, civilian, racial_leader, regeneration, equipment_id, trainer_id, vendor_id, mechanic_immune_mask, school_immune_mask, flags_extra, phase_quest_id, script_name) VALUES (9320, 0, 7990, 0, 0, 0, 'Pipoca the Searunner', 'Shanty Awares', 0, 55, 55, 3398, 3398, 0, 0, 4500, 104, 6, 1, 1.14286, 1.25, 20, 5, 0, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 4608, 0, 0, 2, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 2806, 0, 0, 0, 0, 524298, 0, '');

	update creature_template set faction = 35 where entry = 9320;

	replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) VALUES (9320, 159, 0, 0, 0, 0);
	replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) VALUES (9320, 1179, 0, 0, 0, 0);
	replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) VALUES (9320, 1205, 0, 0, 0, 0);
	replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) VALUES (9320, 1645, 0, 0, 0, 0);
	replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) VALUES (9320, 1708, 0, 0, 0, 0);
	replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) VALUES (9320, 2515, 0, 0, 0, 0);
	replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) VALUES (9320, 2519, 0, 0, 0, 0);
	replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) VALUES (9320, 2946, 0, 0, 0, 0);
	replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) VALUES (9320, 3030, 0, 0, 0, 0);
	replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) VALUES (9320, 3033, 0, 0, 0, 0);
	replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) VALUES (9320, 3107, 0, 0, 0, 0);
	replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) VALUES (9320, 3108, 0, 0, 0, 0);
	replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) VALUES (9320, 3131, 0, 0, 0, 0);
	replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) VALUES (9320, 3135, 0, 0, 0, 0);
	replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) VALUES (9320, 3137, 0, 0, 0, 0);
	replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) VALUES (9320, 4470, 0, 0, 0, 0);
	replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) VALUES (9320, 4471, 0, 0, 0, 0);
	replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) VALUES (9320, 4497, 0, 0, 0, 0);
	replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) VALUES (9320, 4498, 0, 0, 0, 0);
	replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) VALUES (9320, 6183, 0, 0, 0, 0);
	replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) VALUES (9320, 11284, 0, 0, 0, 0);
	replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) VALUES (9320, 11285, 0, 0, 0, 0);
	replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) VALUES (9320, 15326, 0, 0, 0, 0);
	replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) VALUES (9320, 15327, 0, 0, 0, 0);
	replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) VALUES (9320, 16110, 0, 0, 0, 0);

	update creature_template set display_id1 = 18702 where entry = 91401;
	update creature_template set display_id1 = 18704 where entry = 91405;
	update creature_template set display_id1 = 18711 where entry = 91402;
	update creature_template set display_id1 = 18712 where entry = 91413;
	update creature_template set display_id1 = 18715 where entry = 91414;

	update creature_template set display_id1 = 18716 where entry = 91400;
	update creature_template set display_id1 = 18718 where entry = 91404;
	update creature_template set display_id1 = 18720 where entry = 91411;

	update creature_template set display_id1 = 18721 where entry = 91415;
	update creature_template set display_id1 = 18723 where entry = 91407;
	update creature_template set display_id1 = 18724 where entry = 91408;

	update creature_template set display_id1 = 18725 where entry = 91409;
	update creature_template set display_id1 = 18726 where entry = 91410;

	replace into creature_display_info_addon (display_id) values (18700);
	replace into creature_display_info_addon (display_id) values (18701);
	replace into creature_display_info_addon (display_id) values (18702);
	replace into creature_display_info_addon (display_id) values (18703);
	replace into creature_display_info_addon (display_id) values (18704);
	replace into creature_display_info_addon (display_id) values (18705);
	replace into creature_display_info_addon (display_id) values (18706);
	replace into creature_display_info_addon (display_id) values (18707);
	replace into creature_display_info_addon (display_id) values (18708);
	replace into creature_display_info_addon (display_id) values (18709);
	replace into creature_display_info_addon (display_id) values (18710);
	replace into creature_display_info_addon (display_id) values (18711);
	replace into creature_display_info_addon (display_id) values (18712);
	replace into creature_display_info_addon (display_id) values (18713);
	replace into creature_display_info_addon (display_id) values (18714);
	replace into creature_display_info_addon (display_id) values (18715);
	replace into creature_display_info_addon (display_id) values (18716);
	replace into creature_display_info_addon (display_id) values (18717);
	replace into creature_display_info_addon (display_id) values (18718);
	replace into creature_display_info_addon (display_id) values (18719);

	replace into item_template values
	 ('83280', '0', '4', '1', 'Diviner\'s Pantaloons', '', '16709', '2', '0', '1', '30552', '7638', '7', '-1', '-1', '47',
	 '42', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '14', '6', '6',
	 '7', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '54', '0', '0', '0',
	 '0', '0', '0', '7676', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
	 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
	 '-1', '2', '0', '0', '0', '0', '0', '7', '1', '0', '0', '55', '0', '0', '0', '0', '27', '0', '0', '0',
	 '0', '1', NULL);
	 
	 replace into item_template values
	 ('83281', '0', '4', '1', 'Diviner\'s Robes', '', '66132', '3', '0', '1', '37632', '9408', '5', '-1', '-1', '49',
	 '44', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '6', '12', '5', '6',
	 '7', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '70', '0', '0', '0',
	 '0', '0', '0', '21625', '1', '0', '0', '-1', '0', '-1', '9407', '1', '0', '0', '-1', '0', '-1', '0', '0',
	 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
	 '-1', '2', '0', '0', '0', '0', '0', '7', '1', '0', '0', '80', '0', '0', '0', '0', '45', '0', '0', '0',
	 '0', '1', NULL);
	 
	 replace into item_template values
	 ('83282', '0', '4', '1', 'Diviner\'s Cowl', '', '15287', '2', '0', '1', '18924', '4731', '1', '-1', '-1', '47',
	 '42', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '14', '6', '7',
	 '7', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '51', '0', '0', '0',
	 '0', '0', '0', '21592', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
	 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
	 '-1', '2', '0', '0', '0', '0', '0', '7', '1', '0', '0', '45', '0', '0', '0', '0', '7', '0', '0', '0',
	 '0', '1', NULL);
	 
	 replace into item_template values
	 ('83283', '0', '4', '1', 'Diviner\'s Boots', '', '14403', '2', '0', '1', '19888', '4972', '8', '-1', '-1', '46',
	 '41', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '13', '6', '5',
	 '7', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '42', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
	 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
	 '-1', '2', '0', '0', '0', '0', '0', '7', '1', '0', '0', '35', '0', '0', '0', '0', '7', '0', '0', '0',
	 '0', '1', NULL);
	 
	 replace into item_template values
	 ('83284', '0', '4', '1', 'Diviner\'s Mitts', '', '14457', '2', '0', '1', '13084', '3271', '10', '-1', '-1', '46',
	 '41', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '6', '12', '5', '6',
	 '7', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '38', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
	 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
	 '-1', '2', '0', '0', '0', '0', '0', '7', '1', '0', '0', '25', '0', '0', '0', '0', '7', '0', '0', '0',
	 '0', '1', NULL);
	 
	 replace into item_template values
	 ('83285', '0', '4', '1', 'Diviner\'s Epaulets', '', '5928', '2', '0', '1', '24136', '6034', '3', '-1', '-1', '46',
	 '42', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '6', '9', '5', '5',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '47', '0', '0', '0',
	 '0', '0', '0', '7680', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
	 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
	 '-1', '2', '0', '0', '0', '0', '0', '7', '1', '0', '0', '45', '0', '0', '0', '0', '27', '0', '0', '0',
	 '0', '1', NULL);
	 
	 replace into item_template values
	 ('83286', '0', '4', '1', 'Augerer\'s Hat', '', '15910', '2', '0', '1', '16428', '4107', '1', '-1', '-1', '42',
	 '37', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '14', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '46', '0', '0', '0',
	 '0', '0', '0', '9395', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
	 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
	 '-1', '2', '0', '0', '0', '0', '0', '7', '1', '0', '0', '45', '0', '0', '0', '0', '26', '0', '0', '0',
	 '0', '1', NULL);
	 
	 replace into item_template values
	 ('83287', '0', '4', '1', 'Augerer\'s Robe', '', '66134', '3', '0', '1', '24852', '6213', '5', '-1', '-1', '43',
	 '38', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '9', '7', '4',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '62', '0', '0', '0',
	 '0', '0', '5', '23727', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
	 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
	 '-1', '2', '0', '0', '0', '0', '0', '7', '1', '0', '0', '80', '0', '0', '0', '0', '44', '0', '0', '0',
	 '0', '1', NULL);
	 
	 replace into item_template values
	 ('83288', '0', '4', '1', 'Augerer\'s Boots', '', '3757', '2', '0', '1', '14724', '3681', '8', '-1', '-1', '40',
	 '35', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '7', '5', '3',
	 '6', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '36', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
	 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
	 '-1', '2', '0', '0', '0', '0', '0', '7', '1', '0', '0', '35', '0', '0', '0', '0', '4', '0', '0', '0',
	 '0', '1', NULL);
	 
	 replace into item_template values
	 ('83289', '0', '4', '1', 'Augerer\'s Gloves', '', '17255', '2', '0', '1', '9084', '2271', '10', '-1', '-1', '40',
	 '35', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '3', '6', '2',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '34', '0', '0', '0',
	 '0', '0', '0', '9417', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
	 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
	 '-1', '2', '0', '0', '0', '0', '0', '7', '1', '0', '0', '25', '0', '0', '0', '0', '4', '0', '0', '0',
	 '0', '1', NULL);
	 
	 replace into item_template values
	 ('83290', '0', '4', '1', 'Augerer\'s Mantle', '', '21771', '2', '0', '1', '10936', '2734', '3', '-1', '-1', '41',
	 '36', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '6', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '38', '0', '0', '0',
	 '0', '0', '5', '9397', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
	 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
	 '-1', '2', '0', '0', '0', '0', '0', '7', '1', '0', '0', '45', '0', '0', '0', '0', '26', '0', '0', '0',
	 '0', '1', NULL);
	 
	 replace into item_template values
	 ('83291', '0', '4', '1', 'Augerer\'s Trousers', '', '24615', '2', '0', '1', '20048', '5012', '7', '-1', '-1', '41',
	 '36', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '8', '7', '3',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '47', '0', '0', '0',
	 '0', '0', '0', '9417', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
	 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
	 '-1', '2', '0', '0', '0', '0', '0', '7', '1', '0', '0', '55', '0', '0', '0', '0', '26', '0', '0', '0',
	 '0', '1', NULL);
	 
	 replace into item_template values
	 ('83292', '0', '4', '1', 'Pillager\'s Hood', '', '16823', '2', '0', '1', '38684', '9671', '1', '-1', '-1', '55',
	 '50', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '16', '7', '4',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '58', '0', '0', '0',
	 '0', '0', '0', '9417', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
	 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
	 '-1', '2', '0', '0', '0', '0', '0', '7', '1', '0', '0', '45', '0', '0', '0', '0', '28', '0', '0', '0',
	 '0', '1', NULL);
	 
	 replace into item_template values
	 ('83293', '0', '4', '1', 'Pillager\'s Amice', '', '26195', '2', '0', '1', '41608', '10402', '3', '-1', '-1', '55',
	 '50', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '9', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '55', '0', '0', '0',
	 '0', '0', '0', '18384', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
	 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
	 '-1', '2', '0', '0', '0', '0', '0', '7', '1', '0', '0', '45', '0', '0', '0', '0', '28', '0', '0', '0',
	 '0', '1', NULL);
	 
	 replace into item_template values
	 ('83294', '0', '4', '1', 'Pillager\'s Robes', '', '66133', '3', '0', '1', '64816', '16204', '5', '-1', '-1', '53',
	 '51', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '11', '5', '8',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '75', '0', '5', '0',
	 '0', '0', '0', '9417', '1', '0', '0', '-1', '0', '-1', '7597', '1', '0', '0', '-1', '0', '-1', '0', '0',
	 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
	 '-1', '2', '0', '0', '0', '0', '0', '7', '1', '0', '0', '80', '0', '0', '0', '0', '47', '0', '0', '0',
	 '0', '1', NULL);
	 
	 replace into item_template values
	 ('83295', '0', '4', '1', 'Pillager\'s Grips', '', '23732', '2', '0', '1', '25148', '6287', '10', '-1', '-1', '54',
	 '49', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '6', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '45', '0', '0', '0',
	 '0', '0', '0', '18379', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
	 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
	 '-1', '2', '0', '0', '0', '0', '0', '7', '1', '0', '0', '25', '0', '0', '0', '0', '8', '0', '0', '0',
	 '0', '1', NULL);
	 
	 replace into item_template values
	 ('83296', '0', '4', '1', 'Pillager\'s Shoes', '', '16703', '2', '0', '1', '35592', '8898', '8', '-1', '-1', '53',
	 '48', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '14', '7', '8',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '47', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
	 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
	 '-1', '2', '0', '0', '0', '0', '0', '7', '1', '0', '0', '35', '0', '0', '0', '0', '8', '0', '0', '0',
	 '0', '1', NULL);
	 
	 replace into item_template values
	 ('83297', '0', '4', '1', 'Pillager\'s Pantaloons', '', '14711', '2', '0', '1', '51456', '12864', '7', '-1', '-1', '54',
	 '49', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '14', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '60', '0', '0', '0',
	 '0', '0', '0', '18384', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
	 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
	 '-1', '2', '0', '0', '0', '0', '0', '7', '1', '0', '0', '55', '0', '0', '0', '0', '28', '0', '0', '0',
	 '0', '1', NULL);

-- Steamwheedle quartermaster:

replace into creature_template (entry, patch, display_id1, display_id2, display_id3, display_id4, name, subname, gossip_menu_id, level_min, level_max, health_min, health_max, mana_min, mana_max, armor, faction, npc_flags, speed_walk, speed_run, scale, detection_range, call_for_help_range, leash_range, rank, xp_multiplier, dmg_min, dmg_max, dmg_school, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, unit_class, unit_flags, dynamic_flags, beast_family, trainer_type, trainer_spell, trainer_class, trainer_race, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, type_flags, loot_id, pickpocket_loot_id, skinning_loot_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spell_id1, spell_id2, spell_id3, spell_id4, spell_list_id, pet_spell_list_id, gold_min, gold_max, ai_name, movement_type, inhabit_type, civilian, racial_leader, regeneration, equipment_id, trainer_id, vendor_id, mechanic_immune_mask, school_immune_mask, flags_extra, phase_quest_id, script_name) VALUES (40049, 0, 18670, 0, 0, 0, 'Vizlow', 'Blood Ring', 0, 11, 11, 456, 456, 0, 0, 20, 12, 16388, 1.1, 1.14286, 0, 20, 5, 0, 0, 1, 12, 14, 0, 64, 1, 2000, 2090, 1, 4864, 0, 0, 0, 0, 0, 0, 18.392, 25.289, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 524298, 0, '');

update creature_template set faction = 1008, npc_flags = 7 where entry = 40049;
replace into creature_display_info_addon (display_id) values (18670);



replace item_template (entry, patch, class, subclass, name, description, display_id, quality, flags, buy_count, buy_price, sell_price, inventory_type, allowable_class, allowable_race, item_level, required_level, required_skill, required_skill_rank, required_spell, required_honor_rank, required_city_rank, required_reputation_faction, required_reputation_rank, max_count, stackable, container_slots, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3, stat_type4, stat_value4, stat_type5, stat_value5, stat_type6, stat_value6, stat_type7, stat_value7, stat_type8, stat_value8, stat_type9, stat_value9, stat_type10, stat_value10, delay, range_mod, ammo_type, dmg_min1, dmg_max1, dmg_type1, dmg_min2, dmg_max2, dmg_type2, dmg_min3, dmg_max3, dmg_type3, dmg_min4, dmg_max4, dmg_type4, dmg_min5, dmg_max5, dmg_type5, block, armor, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, spellid_3, spelltrigger_3, spellcharges_3, spellppmrate_3, spellcooldown_3, spellcategory_3, spellcategorycooldown_3, spellid_4, spelltrigger_4, spellcharges_4, spellppmrate_4, spellcooldown_4, spellcategory_4, spellcategorycooldown_4, spellid_5, spelltrigger_5, spellcharges_5, spellppmrate_5, spellcooldown_5, spellcategory_5, spellcategorycooldown_5, bonding, page_text, page_language, page_material, start_quest, lock_id, material, sheath, random_property, set_id, max_durability, area_bound, map_bound, duration, bag_family, disenchant_id, food_type, min_money_loot, max_money_loot, extra_flags, other_team_entry, script_name) VALUES (83270, 0, 15, 0, 'Anniversary Gift', 'It\'s Turtle WoW\'s 3rd anniversary! Many thanks for being the best gaming community in the world!', 29445, 1, 4, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

replace into item_template (entry, patch, class, subclass, name, description, display_id, quality, flags, buy_count, buy_price, sell_price, inventory_type, allowable_class, allowable_race, item_level, required_level, required_skill, required_skill_rank, required_spell, required_honor_rank, required_city_rank, required_reputation_faction, required_reputation_rank, max_count, stackable, container_slots, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3, stat_type4, stat_value4, stat_type5, stat_value5, stat_type6, stat_value6, stat_type7, stat_value7, stat_type8, stat_value8, stat_type9, stat_value9, stat_type10, stat_value10, delay, range_mod, ammo_type, dmg_min1, dmg_max1, dmg_type1, dmg_min2, dmg_max2, dmg_type2, dmg_min3, dmg_max3, dmg_type3, dmg_min4, dmg_max4, dmg_type4, dmg_min5, dmg_max5, dmg_type5, block, armor, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, spellid_3, spelltrigger_3, spellcharges_3, spellppmrate_3, spellcooldown_3, spellcategory_3, spellcategorycooldown_3, spellid_4, spelltrigger_4, spellcharges_4, spellppmrate_4, spellcooldown_4, spellcategory_4, spellcategorycooldown_4, spellid_5, spelltrigger_5, spellcharges_5, spellppmrate_5, spellcooldown_5, spellcategory_5, spellcategorycooldown_5, bonding, page_text, page_language, page_material, start_quest, lock_id, material, sheath, random_property, set_id, max_durability, area_bound, map_bound, duration, bag_family, disenchant_id, food_type, min_money_loot, max_money_loot, extra_flags, other_team_entry, script_name) VALUES (83271, 6, 0, 0, 'Delicious Birthday Cake', 'Happy Birthday, Turtle WoW!', 34581, 1, 0, 5, 4000, 0, 0, 32767, -1, 65, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25990, 0, -1, 0, 0, 11, 1000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

replace into item_template values (83272, 0, 15, 0, 'Mr. Tails', 'Save up on acorns along the way and share some undivided attention & love with Mr.Tails and he\'ll be the best companion on your long journey through Azeroth.',  6417, 1, 0, 1, 6000, 1500, 0, -1, -1, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28505, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, null);
replace into creature_template values (70019, 0, 18376, 0, 0, 0, 'Mr. Tails', '', 0, 1, 1, 64, 64, 0, 0, 0, 35, 0, 1, 1.14286, 2, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');
replace into custom_pet_entry_relation values (83272, 70019); 

replace into creature_display_info_addon (display_id) values (18376);

update item_template set bonding = 1, quality = 3 where entry = 83270;
update item_template set bonding = 1, quality = 3 where entry = 83271;
update item_template set bonding = 1, quality = 3 where entry = 83272;
update item_template set name = 'Strawberry Schnapps', description = 'Party means presents! Also party means a lot of joy. What joy is there with no schnapps?' where entry = 51020;

update item_template set sell_price = 0, buy_price = 0 where entry = 83270;
update item_template set sell_price = 0, buy_price = 0 where entry = 83271;
update item_template set sell_price = 0, buy_price = 0 where entry = 83272;
update item_template set sell_price = 0, buy_price = 0 where entry = 51020;

replace into item_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount, condition_id, patch_min, patch_max) values 

(83270, 9312, 100, 1, 1, 1, 0, 0, 10),   
(83270, 9313, 100, 1, 1, 1, 0, 0, 10),   
(83270, 9318, 100, 1, 1, 1, 0, 0, 10),  
(83270, 51020, 100, 2, 1, 1, 0, 0, 10),  
(83270, 83271, 100, 3, 1, 1, 0, 0, 10),   
(83270, 83272, 100, 4, 1, 1, 0, 0, 10),
(83270, 83272, 100, 4, 1, 1, 0, 0, 10);

update item_template set max_count = 1 where entry = 83270;
update item_template set max_count = 1 where entry = 83271;
update item_template set max_count = 1 where entry = 83272;

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (0,39000,977,60,50,0,0,'Goblin Brainwashing Device','Come on up folks and behold, Vizlows magical ahm... MIST machine!\n\n<Vizlow sizes you up and down.>\n\nAh, a potential customer! You must have come from across the world to see the wonders that my machines do.\n\nNo? Oh well, it doesn\'t matter, THEN, it must be fate or whatever deity you believe in that has brought you to me. Listen, this machine can do wonders kid, it can expand your physical and mental capabilities!\n\nAnd all you need to do is insert gold in it to make it work, so what do you say pay 10 gold to activate it and of course, I will need 340, for ahm... materials, yes materials!','Give Vizlow 350 gold coins to buy and activate the mysterious machine.','Got the gold yet?','You actually want to buy it?!\n\nI mean of course you do it\'s a great oportunity. Oh and sign this paper, it\'s just say that you own the machine now, and uhm...\n\n<Vizlow mumbles.>\n\nThat you are aware of the risks.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-3500000,1040,0,0,0,0,0,0,0,0,0,0,0,51715,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (40049, 39000);
replace into creature_involvedrelation (id, quest) values (40049, 39000);

-- Curiosity Leads Us Forward

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (0,39001,1,11,6,0,0,'Curiosity Leads Us Forward','This modish Senator over there won\'t fool anyone! Part of Explorers\' League, sure thing! Bah! What a bluster!\n\nTell ya what, ye can never call yerself an Explorer unless ya go and check every nook \'n cranny by yerself!\n\nOf course he never gone any farther than this quarry here. But I see I won\'t hafta talk ye down fer some poking around and find things out by yerself, eh?\n\nGood. I\'d like ya ta tell me what you\'ll find out in that cave with all those troggs.\n\nThey must\'ve come from somewhere, right?','Explore the cave of Gol\'bolar Quarry.','If only we had some mages cooperating with our reasearch here instead of fiddling with all those trinkets they seem to be glued to like a goblin to gold!\n\nBah… Frustrations won\'t bring us anywhere, right? So… be sure to have your rest once you\'re done \'ere.','Do tell! Were there any signes of where they come from? Any artifacts?\n\nTools they might\'ve used? Anything? Wha… That\'s it?\n\nJust a cave?? This is time wasted then I guess. Let me give ya sum coins though, you did the job well no matter what.\n\nHere, not much, but it is a good start, kid.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1650,475,47,125,54,75,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (1255, 39001);
replace into creature_involvedrelation (id, quest) values (1255, 39001);

update quest_template set objectivetext1 = 'Explore the cave of Gol\'bolar Quarry', reqcreatureorgoid1 = 20120, reqcreatureorgocount1 = 1 where entry = 39001;
update creature_template set npc_flags = 3 where entry = 1255;

REPLACE INTO creature_template (entry, name, display_id1) VALUES
(20120, 'Quest 39001 Custom Trigger', 328);

set @gossip_menu_id = 53118; set @magic_number = 1255;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0');
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Exploring is like tasting a new ale or a fresh brew! Of course you get drunk eventually.\n\nExploring is way more healthy though. Unless you get some troggs intead of a good grog.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

replace into gameobject_template (entry, patch, type, displayId, name, faction, flags, size, data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, mingold, maxgold, phase_quest_id, script_name) VALUES (3000102, 0, 5, 381, 'Quest 39001 Custom Trigger', 0, 0, 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'custom_exploration_trigger');

update item_template set script_name = '' where entry = 50056;
update item_template set spellid_1 = 46035 where entry = 50056;

delete from gameobject_template where script_name = 'go_orb_of_the_bronze_dragonflight';

replace into creature_template (entry, patch, display_id1, display_id2, display_id3, display_id4, name, subname, gossip_menu_id, level_min, level_max, health_min, health_max, mana_min, mana_max, armor, faction, npc_flags, speed_walk, speed_run, scale, detection_range, call_for_help_range, leash_range, rank, xp_multiplier, dmg_min, dmg_max, dmg_school, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, unit_class, unit_flags, dynamic_flags, beast_family, trainer_type, trainer_spell, trainer_class, trainer_race, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, type_flags, loot_id, pickpocket_loot_id, skinning_loot_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spell_id1, spell_id2, spell_id3, spell_id4, spell_list_id, pet_spell_list_id, gold_min, gold_max, ai_name, movement_type, inhabit_type, civilian, racial_leader, regeneration, equipment_id, trainer_id, vendor_id, mechanic_immune_mask, school_immune_mask, flags_extra, phase_quest_id, script_name) VALUES (80269, 0, 4582, 0, 0, 0, 'Kin\'Tozo', 'Exiled Bloodscalp Warlord', 0, 45, 45, 18480, 18480, 0, 0, 2725, 35, 1, 1, 1.14286, 0, 20, 5, 0, 1, 1, 269, 346, 0, 204, 1, 2000, 1384, 1, 32768, 0, 0, 0, 0, 0, 0, 53.1456, 73.0752, 100, 7, 0, 7604, 7604, 0, 0, 0, 0, 0, 0, 0, 21949, 27991, 0, 0, 0, 0, 839, 1100, '', 1, 3, 0, 0, 0, 7604, 0, 0, 646659935, 0, 1048576, 0, '');

update creature_template set scale = 1.8, equipment_id = 1061 where entry = 80269;