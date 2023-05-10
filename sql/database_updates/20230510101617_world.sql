-- Mastering the Formula III
delete from quest_template where entry = 40869;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40868,40869,2,1,14,6,512,0,'Mastering the Formula III','An idea has come to my mind, while you were busy helping! With these elements as a base, I have discovered that I require a more volatile aqua in the formula. With a more potent chemical reaction, it is theoretically possible to disperse the toxins from the air.$B$BNow that is compelling, isn\'t it?$B$BI have done the math, and all I require is a sample of Volatile Aqua.$B$BI have heard rumors of a rather hostile aqua elemental out near the Helm\'s Bed Lake in eastern Dun Morogh.','Gather a Volatile Aqua sample for Master Chemist Volterwhite at the Gnomeregan Reclamation Facility in Dun Morogh.','My work is almost complete, we are on the precipice of a great breakthrough here.','<Master Chemist Volterwhite looks upon the Volatile Aqua with a look of determination, beginning the synthesizing process at once.>$B$BStep back, this should only take a moment.$B$B<A smirk spreads across the gnome\'s face.>$B$BIt would appear that my theorizing has been succesful, for I have been able to replicate my design and expunge the radiation from the nominal air in my samples!$B$BWith your help my theory has been put to the test, and without that I am unsure where we would be. Now the real work can begin.$B$BFor your help, I have prepared a gift. Pick one, and may it serve you well.',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,4920,820,54,300,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61404,1,61405,1,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61436, 40869);
replace into creature_involvedrelation	(id, quest) values (61436, 40869);

replace into item_template values
 ('61404', '4', '0', 'Corrosion Resistant Ring', '', '23728', '2', '0', '1', '812', '203', '11', '-1', '-1', '15',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '1', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '21', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61405', '4', '0', 'Rust Resistant Ring', '', '24087', '2', '0', '1', '812', '203', '11', '-1', '-1', '15',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '1', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '21', '0', '0', '0',
 '0', '1', NULL);

-- Object 'Alpha Channel Valve' change greeting text to 'The large valve hisses steam with intensity.'
replace into broadcast_text (entry, Male_Text) values (30113, 'The large valve hisses steam with intensity.');
replace into npc_text (ID, BroadcastTextID0) values (30113, 30113);
-- Object 'Reserve Pump Lever' change greeting text to "An old lever with the following letters etched at the base$B$B'Reserve Pump Lever.'
replace into broadcast_text (entry, Male_Text) values (30114, 'An old lever with the following letters etched at the base$B$B\'Reserve Pump Lever.');
replace into npc_text (ID, BroadcastTextID0) values (30114, 30114);

-- Blue Dragonscale Boots for 4 Set
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, random_property, required_reputation_faction, required_reputation_rank) values (65015, 'Blue Dragonscale Boots', '', 4, 3, 5, 3, 34333, 1, 53, 0, -1, -1, 79415, 19853, 8, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 60, 236, 0, 0, 58, 0, 48, 0, 0, 0, 0, 0, 6, 5, 16, 9345, 1, 0, 0, -1, 0, -1, 0, 0, 0);
-- Mark of the Worgen for Shang
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, spellid_3, spelltrigger_3, spellcharges_3, spellppmrate_3, spellcooldown_3, spellcategory_3, spellcategorycooldown_3, random_property, required_reputation_faction, required_reputation_rank) values (61406, 'Mark of the Worgen', 'By fang and claw, you are reborn.', 4, 0, 1, 4, 32297, 1, 46, 1, -1, -1, 69216, 17304, 11, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51, 0, 63, 0, 0, 0, 0, 0, 0, 48035, 1, 0, 0, 0, 0, 0, 9331, 1, 0, 0, -1, 0, -1, 45449, 0, 0, 0, 900000, 0, 0, 0, 0, 0);

REPLACE INTO creature_template VALUES
(61485, 11900, 0, 0, 0, 0, 'Evandil Nightwind', 'Quartermaster of Nordanaar', 0, 63, 63, 32033, 32033, 0, 0, 5044, 35, 3, 1, 1.14286, 1, 20, 5, 0, 1, 1, 906, 1182, 0, 284, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 203.77, 289.86, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61486, 13969, 0, 0, 0, 0, 'Clemence the Counter', NULL, 0, 55, 55, 3643, 3643, 0, 0, 3272, 35, 3, 1, 1.14286, 1, 20, 5, 0, 0, 1, 94, 118, 0, 254, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 71.2272, 97.9374, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61487, 18745, 0, 0, 0, 0, 'Barkskin Fisher', NULL, 0, 60, 60, 4944, 4944, 0, 0, 3500, 82, 0, 1, 1.14286, 1, 18, 5, 0, 2, 1, 138, 176, 0, 272, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 74.448, 102.366, 100, 7, 0, 61487, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '16563', 111, 150, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61488, 6298, 0, 0, 0, 0, 'Azurebeak', NULL, 0, 60, 60, 19543, 19543, 0, 0, 3059, 7, 0, 1, 1.14286, 0, 18, 5, 0, 2, 1, 722, 821, 0, 272, 1, 2000, 2000, 1, 0, 0, 26, 0, 0, 0, 0, 65.7432, 90.3969, 100, 1, 1, 61488, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 1, 0, 0, 0, '');

set @equip_template = 20384; set @weapon_1 = 6365; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 61487;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20383; set @weapon_1 = 12744; set @weapon_2 = 12858; set @weapon_3 = 0; set @creature = 61486;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20382; set @weapon_1 = 15444; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 61485;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @gossip_menu_id = 41464; set @magic_number = 61486;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Time is money, friend, and my time is very valuable.$B$BGivin\' we both have better things to be doing, how about you tell me what business you have here? Keep your eyes off the coinage. Understand?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41463; set @magic_number = 61485;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Looking to gain rewards for your efforts here beneath the blessing of Nordrassil? If that is the case, you have come to the right person.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

-- Azurebeak
set @creature_entry = 61488;
set @description = ': Azurebeak';
set @spell_list_id = 180179;

set @spellid_1 = 24579; -- Screech
set @probability_1 = 100;
set @casttarget_1 = 1;
set @castflags_1 = 4;
set @delayinitialmin_1 = 0;
set @delayinitialmax_1 = 0;
set @delayrepeatmin_1 = 5; 
set @delayrepeatmax_1 = 5;

set @spellid_2 = 30112; -- Frenzied Dive
set @probability_2 = 100; 
set @casttarget_2 = 4; 
set @castflags_2 = 4;
set @delayinitialmin_2 = 0; 
set @delayinitialmax_2 = 0; 
set @delayrepeatmin_2 = 10; 
set @delayrepeatmax_2 = 12;

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

-- Barkskin Fisher
set @creature_entry = 61487;
set @description = ': Barkskin Fisher';
set @spell_list_id = 180178;

set @spellid_1 = 10987; -- Geyser
set @probability_1 = 100;
set @casttarget_1 = 1;
set @castflags_1 = 4;
set @delayinitialmin_1 = 0;
set @delayinitialmax_1 = 0;
set @delayrepeatmin_1 = 15; 
set @delayrepeatmax_1 = 15;

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

-- Object title: "The Raven's Sentence and the First Rebellion"
REPLACE INTO item_template VALUES
(61407, 12, 0, 'The Raven\'s Sentence and the First Rebellion', '', 4049, 1, 0, 1, 3600, 900, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 50631, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

REPLACE INTO `page_text` (`entry`, `text`, `next_page`) VALUES
(50631, 'The sky darkened over the lands of Gilneas. Lord Darius summoned all the minor nobles that were loyal to him at his court. A visit from Gilneas City was soon due.', 50632),
(50632, 'Much had changed in our lands since death claimed our Queen, Mia. The Alteraci parasites have spit poison in the ears of the King, claiming it was Lord Ravenwood who pulled the nefarious strings.$B$BAnd yet, it was also by their treacherous deeds that Ravenwood\'s name was cleared in the blood of betrayers.', 50633),
(50633, '"Are you certain, my lord? Would the Harlows really be the head of this vicious plot?"$B$B"Without a doubt, my dear Caliban. It seems that through their malice they have come to thieve the governing of these lands. They must have taken advantage of Genn\'s broken heart and twisted his mind, perhaps even his body. There is no telling what this illness they claim hit the King truly is."$B$BA silence, a sister with death herself claimed the lord\'s grand hall.$B$BRegan Willowfield, messenger of the new Harlow Regent-Lords, had arrived.', 50634),
(50634, 'The cold gates of the keep opened to the prideful messenger. His head did not bow, he offered no greeting, he sneered before the seat of the lord "Lord Darius Ravenwood, master of Ravenwood Keep and the lands of Ravenshire. I, Regan Willowfield, have come to relay a message from the new rulers of Gilneas."$B$B"And to what do we owe this honor, unlanded lord and honorless knight?"$B$BRegan frowned, "How tall you stand in your chair, Ravenwood. And yet the message I bring is higher than both your hubris and vanity."', 50635),
(50635, 'Murmurs of disdain rose from the court.$B$B"And what message has the filth of Alterac bid you here relay, proud Regan?"$B$B"I\'d measure my words, Lord."$B$B"I shall measure your neck with this sword were you to mutter another slight towards my liege." One of the courtiers claimed.$B$BDarius raised his hand to bid calm to his loyal friend.$B$B"Apologies for my man\'s boldness. Fealty and friendship binds us, I am sure you understand. I yearn to hear the gracious words of the Regent-Lords."', 50636),
(50636, 'Regan cleared his throat: "Their Highnesses wish to express their displeasure towards your absence at their naming ceremony. They wish nothing but peace with the Shield of Gilneas. They claim that in these harsh times we must not be at odds."$B$B"And what of the army within my lands? I doubt they are here to serve me."$B$B"Precisely that, my Lord. They are a gift from Lord Mortimer, were you to accept his request to offer your daughter\'s hand to him."$B$BLord Darius\' silence froze the blood inside Regan\'s veins.', 50637),
(50637, 'Before either could speak, Viscount Laurion came before Darius, kneeling and offering him a bloodied sword. "This blade was stained by their army\'s commander."$B$BDarius eyed Laurion: "And what of the others?"$B$B"Those that surrendered were taken to the cellars. The others were chained and beaten for blood."$B$BRegan shook: "My Lo- Lord, what is the meaning of this?"', 50638),
(50638, 'Darius claimed the sword from Laurion\'s hands and pointed it at Regan: "Take the two at his side and those chained to the walls of the keep and hang them. Had you come to me with humility, Regan, I would\'ve spared your life, but alas. Laurion, find a post, three nails and a hammer, then crucify this mouthpiece. The Harlows will feel fear and even the Light itself shall tremble at my fury!"', 50639),
(50639, 'And so the First Rebellion began. Darius gathered all the soldiers he had left. The common folk under his rule were both inspired by his love for his lands and fearful of his brutality. Yet beyond fear laid respect. They knew and know that desperate times call for desperate deeds.', 50640),
(50640, 'The battle was won by the righteous rebels. But with a heavy toll. Ravenwood Keep was destroyed, and all who died on its soil could never recognize ally from foe, cursed into vengeful wraiths by the dark magics of the Alteraci Harlow scum.', 50641),
(50641, 'A treaty was signed between Lord Ravenwood and the Harlows. One in which Darius surrendered his daughter, Elena, to marry the Harlow lordling. Elena sacrificed herself so that Darius could purchase a tenuous truce to bide his time.$B$BBut Greymane shall always sit upon our throne, we will make sure of it. The Gate will fall, and we shall find aid in old allegiances. We will never surrender our country.$B$BFind with your eyes the tallest tree in the land. That, is how tall our great people stand.', 0);

-- NPC Repusing Ooze (61334), change name to Repulsing Ooze.
update creature_template set name = 'Repulsing Ooze' where entry = 61334;
-- NPC Speaker Gan'hota (entry 61361) change display ID to 20298.
update creature_template set display_id1 = 20298 where entry = 61361;
-- NPC Warlord Hanzento (Entry 61360) change display ID to 20297.
update creature_template set display_id1 = 20297 where entry = 61360;
-- NPC Misthoof Sprinter (Entry 61333) change scale to 1.3
update creature_template set scale = 1.3 where entry = 61333;
-- NPC Misthoof Stag (Entry 61332) change scale to 1.5
update creature_template set scale = 1.5 where entry = 61332;
-- NPC Shadeflayer Shadowhunter (61357), Speaker Gan'hota (61361), Warlord Hanzento (61360): Set scale to 1.
update creature_template set scale = 1 where entry in (61357,61361,61360);
-- NPC Barkskin Windtalker (Entry 61347) make elite, and change stats to reflect it.
update creature_template set rank = 1, health_min = 17088, health_max = 18088, dmg_min = 751, dmg_max = 809, attack_power = 284, ranged_dmg_min = 203.77, ranged_dmg_max = 289.86 where entry = 61347;
-- NPC Barkskin Ursa (entry 61342) give weapon 15464.
set @equip_template = 20385; set @weapon_1 = 15464; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 61342;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;
-- NPC Barkskin Pathfinder, change spell casted to 18561.
update creature_spells set spellid_1 = 18561 where entry = 180131;
-- Change display ID of item High Energy Regulator to 811.
update item_template set display_id = 811 where entry = 61392;
-- Rename item High Energy Regulator to Schematic: High Energy Regulator.
update item_template set name = 'Schematic: High Energy Regulator' where entry = 61392;
-- Item Dreamsteel Bar, set material to metal when moving around in bags.
update item_template set material = 1 where entry = 61216;
-- Item Powerful Smelling Salts (entry 8546), remove unique, make the item be consumed upon use, set stack limit to 5.
update item_template set flags = 0, max_count = 0, stackable = 5 where entry = 8546;
