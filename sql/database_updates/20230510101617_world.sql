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

REPLACE INTO creature_template VALUES
(61489, 5561, 0, 0, 0, 0, 'Volatile Aqua Elemental', NULL, 0, 13, 13, 392, 392, 392, 392, 511, 14, 0, 1, 1.14286, 1.1, 20, 5, 40, 0, 1, 21, 27, 4, 76, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 27.2272, 37.4374, 100, 4, 0, 61489, 0, 0, 0, 0, 0, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61490, 616, 0, 0, 0, 0, 'Whitestripe Tiger', NULL, 0, 61, 61, 4244, 4244, 0, 0, 3500, 14, 0, 1, 1.14286, 1.5, 18, 5, 0, 2, 1, 110, 142, 0, 272, 1, 2000, 2000, 1, 0, 0, 2, 0, 0, 0, 0, 74.448, 102.366, 100, 1, 1, 61490, 0, 7443, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61491, 5083, 0, 0, 0, 0, 'Tanthos Everbreeze', 'Master of Dreamsteel', 0, 58, 58, 14355, 14355, 0, 0, 3379, 35, 3, 1, 1.14286, 1, 20, 5, 0, 1, 1, 455, 599, 0, 262, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 73.392, 100.914, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61492, 2788, 0, 0, 0, 0, 'Jancel Stardust', 'Master of Dreamthread', 0, 58, 58, 14355, 14355, 0, 0, 3379, 35, 3, 1, 1.14286, 1, 20, 5, 0, 1, 1, 455, 599, 0, 262, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 73.392, 100.914, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61493, 4265, 0, 0, 0, 0, 'Vannamyr Featherwind', 'Master of Dreamhide', 0, 58, 58, 14355, 14355, 0, 0, 3379, 35, 3, 1, 1.14286, 1, 20, 5, 0, 1, 1, 455, 599, 0, 262, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 73.392, 100.914, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61494, 621, 0, 0, 0, 0, 'Enthos', NULL, 0, 50, 50, 2990, 2990, 0, 0, 2958, 35, 3, 1, 1.14286, 1.1, 20, 5, 40, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61495, 623, 0, 0, 0, 0, 'Paranus', NULL, 0, 50, 50, 2990, 2990, 0, 0, 2958, 35, 3, 1, 1.14286, 0.8, 20, 5, 40, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61496, 10567, 0, 0, 0, 0, 'Everwyl Moonseeker', NULL, 0, 54, 54, 3292, 3292, 0, 0, 3216, 80, 3, 1, 1.14286, 1, 20, 5, 40, 0, 1, 106, 136, 0, 244, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.4704, 96.8968, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61497, 12044, 0, 0, 0, 0, 'Loremaster Taerlon', NULL, 0, 58, 58, 3875, 3875, 0, 0, 3435, 35, 3, 1, 1.14286, 1, 18, 5, 0, 0, 1, 154, 184, 0, 262, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.4704, 96.8968, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @equip_template = 20386; set @weapon_1 = 5956; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 61491;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @gossip_menu_id = 41470; set @magic_number = 61497;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'What is it you have come to search for here beneath the World Tree? Knowledge, power?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41469; set @magic_number = 61496;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'I always feel at ease here within Starfall Village.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41468; set @magic_number = 61494;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'My heart yearns to return to the dream. It calls me, and desires my presence, but I am a loyal servant of Ralathius. I am bound to service until my duties here in Hyjal are complete.$B$BAside, what could I do alone anyway? Look at me, I\'m small!');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41467; set @magic_number = 61493;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'You\'ve come to see my work with Dreamhide? I\'ll warn you, this material is not for the faint of heart. The most skilled leatherworkers have tried and failed to work with this elusive leather.$B$BMaybe you have the dedication and focus needed to master this material.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41466; set @magic_number = 61492;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Clear your mind, steady your hand. There are talents that you must master if you desire to begin weaving with Dreamthread. The properties of the material are extremely unique and almost tranquil to work with.$B$BI hope you are not just here to disturb me. What is it you need?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41465; set @magic_number = 61491;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'The secrets of Dreamsteel are elusive to even the most skilled blacksmiths. Do you have the potential to harness such technical precision and ability?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;


update creature set spawntimesecsmin = 18000, spawntimesecsmax = 36000 where id = 61490;
-- Loot table: Whitestripe Tiger.
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61490, 23712, 100, 10, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61490, 1688, 42.0356, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61490, 3821, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61490, 3914, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61490, 4500, 0.04, 0, 1, 1, 109);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61490, 4580, 40.6207, 0, 1, 2, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61490, 4581, 13.2816, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61490, 5759, 0.18, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61490, 7909, 0.08, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61490, 7910, 0.0913, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61490, 7911, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61490, 8146, 6.9831, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61490, 10620, 0.1, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61490, 12202, 45.6413, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61490, 12361, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61490, 12365, 0.04, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61490, 12683, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61490, 12691, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61490, 12693, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61490, 12694, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61490, 12695, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61490, 12697, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61490, 12713, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61490, 13465, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61490, 13490, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61490, 14478, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61490, 14489, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61490, 14491, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61490, 14492, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61490, 14494, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61490, 14496, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61490, 14498, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61490, 14499, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61490, 14504, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61490, 14506, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61490, 14508, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61490, 15743, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61490, 15745, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61490, 15746, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61490, 15757, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61490, 16051, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61490, 16220, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61490, 16245, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61490, 16251, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61490, 20400, 0.04, 0, 1, 1, 108);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61490, 24016, 0.5, 0, -24016, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61490, 30079, 0.01, 2, -30079, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61490, 30081, 0.5, 0, -30081, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61490, 30082, 0.0025, 0, -30082, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61490, 30083, 0.5, 3, -30083, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61490, 30084, 0.01, 4, -30084, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61490, 30086, 0.0025, 0, -30086, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61490, 30087, 0.0025, 0, -30087, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61490, 30088, 0.01, 0, -30088, 1, 0);

REPLACE INTO creature_template VALUES
(61498, 6889, 0, 0, 0, 0, 'M-0L1Y', 'Weather Tracking Unit', 0, 47, 47, 2638, 2638, 0, 0, 3166, 90, 0, 1, 1.14286, 0.75, 18, 5, 0, 2, 1, 100, 125, 0, 208, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 3, 0, 61498, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 86, 118, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61499, 11396, 0, 0, 0, 0, 'Shade Mage', NULL, 0, 17, 17, 361, 361, 0, 0, 779, 21, 0, 1, 1.14286, 1, 18, 5, 0, 2, 1, 49, 56, 0, 74, 1, 1830, 2013, 1, 0, 0, 0, 0, 0, 0, 0, 25.7664, 35.4288, 100, 6, 0, 61499, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61500, 837, 0, 0, 0, 0, 'Highvale Silverback', NULL, 0, 58, 58, 4263, 4263, 0, 0, 3808, 72, 0, 1, 1.42857, 1, 18, 5, 0, 2, 1, 100, 125, 0, 268, 1, 1500, 2000, 1, 0, 0, 9, 0, 0, 0, 0, 72.9872, 100.357, 100, 1, 1, 61500, 0, 9164, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61501, 1248, 0, 0, 0, 0, 'Stoneshell', NULL, 0, 56, 56, 4007, 4007, 0, 0, 4360, 16, 0, 1, 1.14286, 1.15, 18, 5, 0, 2, 1, 129, 159, 0, 258, 1, 2000, 2000, 1, 0, 0, 20, 0, 0, 0, 0, 69.696, 95.832, 100, 7, 0, 61501, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 180074, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61502, 3995, 0, 0, 0, 0, 'Witch Doctor Tan\'zo', NULL, 0, 35, 35, 1520, 1520, 2253, 2362, 764, 654, 0, 1, 1.14286, 1.1, 18, 5, 0, 2, 1, 50, 63, 0, 128, 1, 2000, 2000, 8, 32768, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 7, 0, 61502, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 43, 61, 'EventAI', 0, 3, 0, 0, 3, 20425, 0, 0, 0, 0, 0, 0, ''),
(61503, 4607, 0, 0, 0, 0, 'Blazespark', NULL, 0, 24, 24, 730, 730, 0, 0, 1074, 16, 0, 1, 1.14286, 1.15, 18, 5, 0, 2, 1, 44, 56, 2, 104, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 35.6224, 48.9808, 100, 4, 0, 61503, 0, 0, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 31, 45, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61504, 4647, 0, 0, 0, 0, 'Earthcaller Rezengal', NULL, 0, 18, 18, 403, 403, 623, 623, 719, 16, 0, 1, 1.14286, 1, 18, 5, 0, 2, 1, 30, 39, 0, 80, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 28.6704, 39.4218, 100, 7, 0, 61504, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 18, 29, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

-- Earthcaller Rezengal
set @creature_entry = 61504;
set @description = ': Earthcaller Rezengal';
set @spell_list_id = 180187;

set @spellid_1 = 8045; -- Earth Shock
set @probability_1 = 100;
set @casttarget_1 = 1;
set @castflags_1 = 4;
set @delayinitialmin_1 = 0;
set @delayinitialmax_1 = 0;
set @delayrepeatmin_1 = 13;
set @delayrepeatmax_1 = 13;

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

-- Blazespark
set @creature_entry = 61503;
set @description = ': Blazespark';
set @spell_list_id = 180186;

set @spellid_1 = 2941; -- Immolate
set @probability_1 = 100;
set @casttarget_1 = 1;
set @castflags_1 = 4;
set @delayinitialmin_1 = 3;
set @delayinitialmax_1 = 3;
set @delayrepeatmin_1 = 18;
set @delayrepeatmax_1 = 18;

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

-- Witch Doctor Tan'zo
set @creature_entry = 61502;
set @description = ': Witch Doctor Tan\'zo';
set @spell_list_id = 180185;

set @spellid_1 = 4974; -- Wither Touch
set @probability_1 = 100;
set @casttarget_1 = 1;
set @castflags_1 = 4;
set @delayinitialmin_1 = 5;
set @delayinitialmax_1 = 5;
set @delayrepeatmin_1 = 120;
set @delayrepeatmax_1 = 120;

set @spellid_2 = 19285; -- Hex of Weakness
set @probability_2 = 100;
set @casttarget_2 = 1;
set @castflags_2 = 4;
set @delayinitialmin_2 = 3;
set @delayinitialmax_2 = 3;
set @delayrepeatmin_2 = 12;
set @delayrepeatmax_2 = 12;

set @spellid_3 = 45504; -- Hex
set @probability_3 = 100;
set @casttarget_3 = 4;
set @castflags_3 = 4;
set @delayinitialmin_3 = 0;
set @delayinitialmax_3 = 0;
set @delayrepeatmin_3 = 45;
set @delayrepeatmax_3 = 45;

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

-- Stoneshell
set @creature_entry = 61501;
set @description = ': Stoneshell';
set @spell_list_id = 180184;

set @spellid_1 = 10101; -- Knock Away
set @probability_1 = 100;
set @casttarget_1 = 1;
set @castflags_1 = 4;
set @delayinitialmin_1 = 5;
set @delayinitialmax_1 = 5;
set @delayrepeatmin_1 = 15;
set @delayrepeatmax_1 = 15;

set @spellid_2 = 22592; -- Knockdown
set @probability_2 = 100;
set @casttarget_2 = 1;
set @castflags_2 = 4;
set @delayinitialmin_2 = 0;
set @delayinitialmax_2 = 0;
set @delayrepeatmin_2 = 10;
set @delayrepeatmax_2 = 10;

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

-- Highvale Silverback
set @creature_entry = 61500;
set @description = ': Highvale Silverback';
set @spell_list_id = 180183;

set @spellid_1 = 26554; -- Thunderclap
set @probability_1 = 100;
set @casttarget_1 = 1;
set @castflags_1 = 4;
set @delayinitialmin_1 = 0;
set @delayinitialmax_1 = 0;
set @delayrepeatmin_1 = 12;
set @delayrepeatmax_1 = 12;

set @spellid_2 = 19730; -- Strike
set @probability_2 = 100;
set @casttarget_2 = 1;
set @castflags_2 = 4;
set @delayinitialmin_2 = 3;
set @delayinitialmax_2 = 3;
set @delayrepeatmin_2 = 10;
set @delayrepeatmax_2 = 10;

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

-- Shade Mage
set @creature_entry = 61499;
set @description = ': Shade Mage';
set @spell_list_id = 180182;

set @spellid_1 = 1106; -- Shadow Bolt
set @probability_1 = 100;
set @casttarget_1 = 1;
set @castflags_1 = 4;
set @delayinitialmin_1 = 0;
set @delayinitialmax_1 = 0;
set @delayrepeatmin_1 = 2.9;
set @delayrepeatmax_1 = 2.9;

set @spellid_2 = 120; -- Cone of Cold
set @probability_2 = 100;
set @casttarget_2 = 1;
set @castflags_2 = 4;
set @delayinitialmin_2 = 3;
set @delayinitialmax_2 = 3;
set @delayrepeatmin_2 = 15;
set @delayrepeatmax_2 = 15;

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

-- M-0L1Y
set @creature_entry = 61498;
set @description = ': M-0L1Y';
set @spell_list_id = 180181;

set @spellid_1 = 12553; -- Shock
set @probability_1 = 100;
set @casttarget_1 = 1;
set @castflags_1 = 4;
set @delayinitialmin_1 = 0;
set @delayinitialmax_1 = 0;
set @delayrepeatmin_1 = 10;
set @delayrepeatmax_1 = 10;

set @spellid_2 = 8398; -- Frostbolt Volley
set @probability_2 = 100;
set @casttarget_2 = 1;
set @castflags_2 = 4;
set @delayinitialmin_2 = 3;
set @delayinitialmax_2 = 3;
set @delayrepeatmin_2 = 16;
set @delayrepeatmax_2 = 16;

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

-- Volatile Aqua Elemental
set @creature_entry = 61489;
set @description = ': Volatile Aqua Elemental';
set @spell_list_id = 180180;

set @spellid_1 = 122; -- Frost Nova
set @probability_1 = 100;
set @casttarget_1 = 1;
set @castflags_1 = 4;
set @delayinitialmin_1 = 0;
set @delayinitialmax_1 = 0;
set @delayrepeatmin_1 = 20;
set @delayrepeatmax_1 = 20;

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
-- Link Greymane Set to the invidual pieces
update item_template set set_id = 622 where entry = 61313; -- Greymane Helmet
update item_template set set_id = 622 where entry = 61324; -- Greymane Shoulders
update item_template set set_id = 622 where entry = 61376; -- Greymane Gauntlets
update item_template set set_id = 622 where entry = 61378; -- Greymane Legplates
update item_template set set_id = 622 where entry = 61377; -- Greymane Sabatons
update item_template set set_id = 622 where entry = 61379; -- Greymane Vambraces
-- Quest Mastering the Formula III (Entry 40869) add the following item requirement : Volatile Aqua (Display ID 15794, quest item, stackable to 1, drops from Volatile Aqua Elemental).
update quest_template set reqitemid1 = 61408, reqitemcount1 = 1 where entry = 40869;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61408,7914,'Volatile Aqua',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(61489, 61408, -100, 0, 1, 1, 0);
-- Item 8546 Powerful Smelling Salts, add 1hr cooldown after use.
update item_template set spellcooldown_1 = 3600 where entry = 8546;
-- NPC Greymane Enforcer, change display ids to 20275, 20276 (display 20276 might be incorrect syntax, keeps showing up as another display)
REPLACE INTO `creature_display_info_addon` (`display_id`, `bounding_radius`, `combat_reach`, `gender`, `display_id_other_gender`) VALUES
(20275, 0, 0, 0, 0),
(20276, 0, 0, 0, 0);
update creature_template set display_id1 = 20275, display_id2 = 20276, display_id3 = 0, display_id4 = 0 where entry = 61397;
-- NPC Warlord Hanzento change display ID to 20297 (display 20297 might be incorrect syntax)
REPLACE INTO `creature_display_info_addon` (`display_id`, `bounding_radius`, `combat_reach`, `gender`, `display_id_other_gender`) VALUES
(20297, 0, 0, 0, 0);
update creature_template set display_id1 = 20297 where entry = 61360;
-- NPC Speaker Gan'hota change display ID to 20298 (Display 20298 might be incorrect syntax)
REPLACE INTO `creature_display_info_addon` (`display_id`, `bounding_radius`, `combat_reach`, `gender`, `display_id_other_gender`) VALUES
(20298, 0, 0, 0, 0);
update creature_template set display_id1 = 20298 where entry = 61361;
-- After running this query, change the displayid of npc entry 61469 to 20354
REPLACE INTO creature_display_info_addon (display_id, bounding_radius, combat_reach, gender, display_id_other_gender) VALUES (20354, 0, 0, 1, 0);
update creature_template set display_id1 = 20354 where entry = 61469;
-- NPC Barkskin Fisher needs to be only rare, remove elite status.
update creature_template set rank = 2 where entry = 61487;
-- Change Azurebeak's scale to 1.5
update creature_template set scale = 1.5 where entry = 61488;
-- GUID 2576943 should have a respawn time between 12 to 24 hours.
update creature set spawntimesecsmin = 43200, spawntimesecsmax = 86400 where guid = 2576943;
-- GUID 2576945 should have a respawn time between 12 to 24 hours.
update creature set spawntimesecsmin = 43200, spawntimesecsmax = 86400 where guid = 2576945;

-- Blooming Hyjalroot
delete from quest_template where entry = 40870;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40870,2,616,60,55,512,0,'Blooming Hyjalroot','You there! Yes you, mortal! I am in need of assistance. My friend has begun falling ill from the madness of the emerald dream and I require a cure before he is lost forever.$B$BI have heard from the Wardens of Nordrassil of a herb called Hyjalroot that can only be found around this region: it is somewhat scarce, but I require fifteen bundles of it in order to ease the pain of Paranus. I bid you to be quick and act with haste, or else I will lose my friend forever.$B$B<The whelp lets out a sad mewl of distress.>','Collect 15 Hyjalroot from around the region of Hyjal for Enthos at Nordanaar in Hyjal.','Paranus has a strong will, but it is only a matter of time before his strength is eroded.','You have done it. With this Hyjalroot I will be able to bring Paranus back from the edge, and guide him away from the dream. I must thank you $c. Without you, I would have been lost in grief.$B$BTake this Small Dreamshard, as thanks for everything you\'ve done.',61409,15,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,37200,6200,0,0,0,0,0,0,0,0,0,0,0, 61198,1,61410,1,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61494, 40870);
replace into creature_involvedrelation	(id, quest) values (61494, 40870);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61409,19497,'Hyjalroot',12,1,2048,1,-1,-1,1,15,-1,-1,-1,-1,4,'',0);

REPLACE INTO gameobject_template VALUES
(2020023, 3, 28255, 'Hyjalroot', 0, 4, 1, 43, 2020023, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template values
(2020023,61409,-100,0,1,1,0);

replace into item_template values
 ('61410', '4', '0', 'Favor of Enthos', '', '22651', '2', '0', '1', '23568', '5892', '2', '-1', '-1', '62',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '6', '7', '2',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '9357', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '30', '0', '0', '0',
 '0', '1', NULL);

-- Stockpiling Hyjalroot
delete from quest_template where entry = 40871;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40870,40871,2,616,60,55,0,1,'Stockpiling Hyjalroot','I am eternally thankful for your efforts in saving Paranus, but I have been thinking. When this conflict is all over and the Emerald Dream is restored, there will be many that require Hyjalroot in order to be brought back into the fold.$B$BI believe it is time to begin stockpiling Hyjalroot now in order to save those affected. If you so happen to collect fifteen Hyjalroot, return to me, and I will bestow upon you a Small Dream Shard for your efforts.','Collect 15 Hyjalroot from around the region of Hyjal for Enthos at Nordanaar in Hyjal.','Have you returned with the Hyjalroot?','More for my stockpile! Thank you again for your efforts $c. Please, once again, take this Small Dream Shard as a token of my thanks.',61409,15,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,250,0,0,0,0,0,0,0,0,0,0,0, 61198,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61494, 40871);
replace into creature_involvedrelation	(id, quest) values (61494, 40871);

-- Companion : Little Fawn
delete from quest_template where entry = 40872;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40872,2,616,60,55,0,0,'Companion : Little Fawn','During one of my visits around Nordrassil I came to find an unusual guest. I was approached by a small fawn, one of the local wildlife in the region. As a reward for your efforts upon Hyjal itself, I could see to it that this creature becomes a loyal companion of yours.','Gather 50 Bright Dreamshard\'s for Evandil Nightwind at Nordanaar in Hyjal.','So, have you made your choice?','It is said to be lucky to have gained the confidence of the wildlife around the World Tree.',61199,50,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,250,0,0,0,0,0,0,0,0,0,0,0, 51433,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61485, 40872);
replace into creature_involvedrelation	(id, quest) values (61485, 40872);

-- The Recipe of Dreamshard Elixir
delete from quest_template where entry = 40873;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40873,2,616,60,55,0,0,'The Recipe of Dreamshard Elixir','If you are seeking to gain knowledge of our most vital and rare elixirs then you have come to the right place. For your efforts upon Hyjal, I could bestow upon you the knowledge of my forbearers. The Dreamshard Elixir is a rather potent and powerful alchemical mixture.$B$B It could be used to turn the tide of a conflict in your favor.','Gather 50 Bright Dream Shard\'s for Evandil Nightwind at Nordanaar in Hyjal.','So, have you made your choice?','I must warn you, use this recipe wisely. A misuse of the materials can create the counter opposite of the Dreamshard Elixir.$B$BI suggest you follow this recipe closely.',61199,50,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,250,0,0,0,0,0,0,0,0,0,0,0, 61222,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61485, 40873);
replace into creature_involvedrelation	(id, quest) values (61485, 40873);

-- The Recipe of Lucidity Potion
delete from quest_template where entry = 40874;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40874,2,616,60,55,0,0,'The Recipe of Lucidity Potion','The druids of Hyjal long ago learned to master a potion of lucidity, able to keep the drinker awake and immune from the pull of the Emerald Dream. I am willing to offer you this formula for your deeds and actions upon Hyjal itself.$B$BGather me Bright Dream Shards, and you too can stay lucid and awake from the pull of nightmare.','Gather 50 Bright Dream Shard\'s for Evandil Nightwind at Nordanaar in Hyjal.','So, have you made your choice?','One sip, and you will remain awake, even from some powerful forces that draw you to slumber.$B$BI advise you not to overuse the Lucidity Potion, a known few have been known to go mad from the lack of sleep.',61199,50,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,250,0,0,0,0,0,0,0,0,0,0,0, 61223,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61485, 40874);
replace into creature_involvedrelation	(id, quest) values (61485, 40874);

-- The Recipe of Powerful Smelling Salts
delete from quest_template where entry = 40875;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40875,2,616,60,55,0,0,'The Recipe of Powerful Smelling Salts','Long ago the druids of Hyjal devised a way to draw the slumbering druids from the early slumber of the dream. A concoction of powerful salts could rouse those before they were lost into deep slumber.$B$BIf you desire, I could give you this formula in exchange for your efforts to assist us in Nordanaar. It could be a powerful tool to assist you and your allies.','Gather 50 Bright Dream Shard\'s for Evandil Nightwind at Nordanaar in Hyjal.','So, have you made your choice?','A wise decision $c. I would recommend using these smelling salts with care. They are extremely strong and should not be used for any sort of practical joking.',61199,50,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,250,0,0,0,0,0,0,0,0,0,0,0, 8547,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61485, 40875);
replace into creature_involvedrelation	(id, quest) values (61485, 40875);

-- The Horn of Binding
delete from quest_template where entry = 40876;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40876,2,616,60,55,512,0,'The Horn of Binding','I was once a trainee with the druids of Hyjal long before the Third War scarred the land. I had the chance to learn much of the more nuanced teachings of druidic magic, and it is there I learned to craft an item called \'The Horn of Binding\'.$B$BI have been working to craft a new horn and bind it to the natural energies here in Winterspring, but I require more materials from across these lands and Hyjal both.$B$BI require: the beaks of Greathorn Owls native to Hyjal, a Vilemusk Horn from the Satyr that also dwell there, a book titled \'Bracing of Nature\' which can be found at Nordanaar, and finally a Moontouched Amulet from the local Owlbeasts here in Winterspring.','Gather 6 Greathorn Beaks, 1 Vilemusk Horn, the book \'Bracing of Nature\', and a Moontouched Amulet to Everwyl Moonseeker at Starfall Village in Winterspring.','These materials will be dangerous to obtain, so I implore you to use caution when searching for them.','The creation of the Horn of Binding shall finally begin, in no small part thanks to your courageous and selfless efforts, $N. It will no doubt take me many days, or even weeks, to read through this old book and remember the steps necessary to finish this ordeal.$B$BI must thank you for what you have done for me. Please, take these items. They are tokens of my time spent in Hyjal, many long years ago... May they serve you better than collecting dust here with me at Starfall Village.',61412,6,61413,1,61414,1,61415,1, 0,0,0,0,0,0,0,0, 0,0, 0,42600,7100,69,300,0,0,0,0,0,0,0,0,0, 61199,1,61411,1,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61496, 40876);
replace into creature_involvedrelation	(id, quest) values (61496, 40876);

replace into item_template values
 ('61411', '2', '10', 'Moonseeker Staff', '', '12286', '2', '0', '1', '226956', '56739', '17', '-1', '-1', '62',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '16', '6', '9',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2300', '0',
 '0', '69', '151', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '13679', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '2', '0', '0', '85', '0', '0', '0', '0', '30', '0', '0', '0',
 '0', '1', NULL);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61412,1294,'Greathorn Beaks',12,1,2048,1,-1,-1,1,6,-1,-1,-1,-1,4,'',0),
(61413,2598,'Vilemusk Horn',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0),
(61414,9657,'Moontouched Amulet',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0),
(61415,1134,'Bracing of Nature',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(61336,61412,-52,0,1,1,0),
(61337,61412,-52,0,1,1,0),
(61340,61413,-28,0,1,1,0),
(61339,61413,-28,0,1,1,0),
(61341,61413,-28,0,1,1,0),
(61338,61413,-28,0,1,1,0),
(7453,61414,-22,0,1,1,0);

update creature_template set script_name = 'npc_loremaster_taerlon' where entry = 61497;

-- Dead Until Dark
delete from quest_template where entry = 40877;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40877,2,5179,42,35,0,0,'Dead Until Dark','Listen, $r. We face no shortage of troubles here, but I shan\'t waste your time with mindless errands. Dealing with the pests and beasts that torment our camp is a task I can handle myself.$B$BHowever, I do require your aid in a matter of greater importance. One of our own, Orvan Darkeye, came to Gilneas in search of the lost tomes of Archmage Ur. Yet, the irony of it all - he himself became lost. $B$B<Deathstalker Alynna\'s twisted smile conveys her amusement at the situation.>$B$BYour mission is clear: find him, or what little is left of him. Last we heard, he was headed towards Greyshire.','Find Orvan Darkeye for Deathstalker Alynna. He is rumored to be somewhere close to the ruins of Greyshire.','What?','What? That mindless rotbrain thinks I got lost?$B$B<Orvan chuckles darkly>$B$BHow amusing. One less pathetic cur to deal with. As you can see, I am perfectly capable of taking care of myself. But it seems fate has brought you here, and I must admit, I have a need for a servant. And you, my dear, look like a perfect specimen for the job.',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,3900,650,68,100,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61282, 40877);
replace into creature_involvedrelation	(id, quest) values (61286, 40877);

-- All We Need is Blood
delete from quest_template where entry = 40878;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40877,40878,2,5179,42,35,0,0,'All We Need is Blood','I have come to this land in search of a particular book - a tome I have sought for ages: \'On the Powers of Blood\' by Archmage Ur. Oh, how it eluded me! But now, I have reason to believe that it may be hidden within Gilneas. $B$BThe knowledge contained within those pages could be invaluable to furthering both the goals of the Forsaken and the Horde. I am close to discovering its whereabouts, very close, but in the meantime I require your assistance. Take these vials and collect the blood of bats. We will need them for our plans, yes. Do not disappoint me.','Bring 10 Vilewing Blood Vials for Orvan Darkeye at the Ruins of Greyshire in Gilneas.','Have you collected the blood already? I need ten full vials.','Ah, excellent. You have brought me what I needed.$B$B<Orvan takes the vials, inspects them with a sinister smile and abruptly tosses them behind him.>$B$BThese will be invaluable, truly invaluable.',61416,10,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,22500,3750,68,100,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61286, 40878);
replace into creature_involvedrelation	(id, quest) values (61286, 40878);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61416,1215,'Vilewing Blood Vial',12,1,2048,1,-1,-1,1,10,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(61230,61416,-60,0,1,1,0),
(61231,61416,-60,0,1,1,0),
(61401,61416,-60,0,1,1,0);

-- Last of the Living Dead
delete from quest_template where entry = 40879;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40877,40879,2,5179,42,35,0,0,'Last of the Living Dead','Greymane may have thought himself safe behind these walls, but he was foolish to believe he could hide from Death. Now, his incompetence comes back to haunt him, and by extension, me. The Scourge still lurk in these lands, constantly interrupting my research and slowing it down considerably. It is time to take matters into our own hands.$B$BI command you to eliminate the remaining Scourge forces in Greyshire.$B$BDo not fail me, for failure is not an option.$B$B<The Forsaken\'s eyes narrow with a cold, calculating intensity.>','Slay 8 Shambling Dead and 8 Lingering Skeletons for Orvan Darkeye at the Ruins of Greyshire in Gilneas.','What are you waiting for? Root them out, destroy them utterly. Their presence here is an affront to the Forsaken and a threat to our operations.','It seems that not all of the Scourge forces were eradicated, but I must commend you for your work nonetheless. Your efforts have weakened their hold on this land and that will have to be enough for now. We cannot afford to underestimate our enemies, especially not the Scourge. They are a relentless force, serving their vile Lich King until the end.$B$BSpeaking of which, what became of the commander of the Scourge invasion here, I wonder? Was he defeated, or is he in hiding, waiting for the Lich King\'s command to resume his invasion of Gilneas?',0,0,0,0,0,0,0,0, 61234,8,61235,8,0,0,0,0, 0,0, 0,22500,3650,68,100,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61286, 40879);
replace into creature_involvedrelation	(id, quest) values (61286, 40879);

-- We Take It From The Living
delete from quest_template where entry = 40880;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40878,40880,2,5179,43,35,0,0,'We Take It From The Living','I must say, you have proven to be a useful servant, and your mindless loyalty is a rare sight indeed in these times. But I must confess, I wasn\'t exactly truthful with you in the beginning. While my personal pursuit is the search for the works of Ur, I am also here on a mission from the Royal Apothecary Society. We believe that Gilneas is the perfect place to perfect our new weapon against the enemies of the Horde.$B$BBut to do so, I require more blood. Human blood, and worgen blood. It\'s a delicate balance. Take these vials and head south of Stillward Church. There you will find Greymane\'s forces. It shouldn\'t be too difficult to get the blood we need from them. As for the worgen blood... well, they will come to you, one way or another. Just be ready for them when they do.','Bring 15 Gilnean Blood Vials and 15 Worgen Blood Vials to Orvan Darkeye in the Ruins of Grayshire.','Be quick about it, my servant.','Now that is impressive. Let us see how this blood will react with my concoction. If my calculations are correct...',61417,15,61418,15,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,24500,3980,68,100,0,0,0,0,0,0,0,0,0, 61419,1,61420,1,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61286, 40880);
replace into creature_involvedrelation	(id, quest) values (61286, 40880);

update quest_template set exclusivegroup = -40878 where entry in (40878,40879);

update creature_template set script_name = 'npc_orvan_darkeye' where entry = 61286;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61417,4134,'Gilnean Blood Vial',12,1,2048,1,-1,-1,1,15,-1,-1,-1,-1,4,'',0),
(61418,15741,'Worgen Blood Vial',12,1,2048,1,-1,-1,1,15,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(61366,61417,-90,0,1,1,0),
(61363,61417,-90,0,1,1,0),
(61397,61417,-90,0,1,1,0),
(61237,61418,-90,0,1,1,0),
(61238,61418,-90,0,1,1,0),
(61236,61418,-90,0,1,1,0),
(61252,61418,-90,0,1,1,0),
(61253,61418,-90,0,1,1,0),
(61251,61418,-90,0,1,1,0);

replace into item_template values
 ('61419', '4', '1', 'Sash of Innocent Blood', '', '9907', '2', '0', '1', '14004', '3501', '6', '-1', '-1', '42',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '6', '3', '3',
 '4', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '31', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '25', '0', '0', '0', '0', '7', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61420', '4', '3', 'Wreath of Worgen Blood', '', '25904', '2', '0', '1', '27588', '6897', '1', '-1', '-1', '42',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '10', '4', '5',
 '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '194', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '5', '0', '0', '0', '60', '0', '0', '0', '0', '26', '0', '0', '0',
 '0', '1', NULL);

-- The Evil Made Me Do It
delete from quest_template where entry = 40881;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40880,40881,2,5179,46,35,0,0,'The Evil Made Me Do It','I may have... miscalculated a bit. It seems without the knowledge held in the \'Powers of Blood\', I cannot stabilize the mix. I need that book.$B$BI scoured every corner of this land with no success. It can only mean one thing: The book is hidden in the city of Gilneas itself. It looms like an impenetrable fortress, and the thought of trying to find a single book within its walls is overwhelming.$B$BThe city is heavily fortified, and the human forces stationed there are not to be trifled with. They are determined to hold onto what little they have left, and they will stop at nothing to keep their city safe. It will take all of your cunning and stealth to even attempt getting past their defenses.$B$BIf, however, you do manage to locate the book... I will reward you beyond measure.','Find \'On the Powers of Blood\' in Gilneas City, then return to Orvan Darkeye at the Ruins of Greyshire in Gilneas.','Has everything I\'ve done been in vain?','Ah, finally! After all the obstacles and setbacks, I have obtained Ur\'s masterpiece. The secrets of blood magic, and the power to control the very essence of life itself! With this book, I will be unstoppable, and the enemies of the Forsaken will tremble before me.$B$B<The Forsaken flips through the pages, cackling with excitement.>$B$BIt is clear that Ur was a master of his craft. But even he did not fully comprehend the true potential of blood magic. With the knowledge contained in this tome, I will surpass him and become the greatest bloodmage the world has ever known.$B$B<The Forsaken looks up with a wicked grin.>$B$BYou have served me well, my faithful minion. And for that, I will grant you a small taste of the power we will soon wield.',61421,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,22500,5150,68,250,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61286, 40881);
replace into creature_involvedrelation	(id, quest) values (61286, 40881);

update quest_template set type = 81 where entry = 40881;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61421,34959,'\'On the Powers of Blood\'',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',50642);

REPLACE INTO gameobject_template VALUES
(2020024, 3, 24016, '\'On the Powers of Blood\'', 0, 4, 1, 43, 2020024, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template values
(2020024,61421,-100,0,1,1,0);

REPLACE INTO `page_text` (`entry`, `text`, `next_page`) VALUES
(50642, 'Through decades of intensive research, it has become irrefutable that what is conventionally known as Blood Magic does not originate from our World. Those who profess to have attained mastery in this form of spellcasting are, in essence, akin to orcish warlocks, harnessing their abilities from the Twisting Nether itself.', 50643),
(50643, 'The task that consumed many challenging years was discovering the source of this type of magic. It was evident that it necessitated fuel, in the form of blood, and granted spellcasters access to extraplanar powers. What was unclear, however, was how the link to this "Blood Dimension" was established.', 50644),
(50644, 'Initially, I delved into the practices of the Gurubashi Trolls and their Blooddrinkers, but their methods proved to be different. Their magic was not connected to this Blood Dimension, as it derived its potency from their Blood God, much like most of the troll magicks. Hence, I quickly abandoned this line of inquiry.', 50645),
(50645, 'As always, our High Elven comrades proved invaluable. Their ancient manuscripts, predating the legendary Sundering - if one chooses to believe such lore - detailed their spellcasters drawing power from the Blood Dimension, referred to as Vorgendor in their language. The rites mentioned appeared to align with my quest. The use of prodigious amounts of blood could heighten physical strength, intellect, and agility of the practitioner. However, according to the manuscripts, these rituals carried many deleterious effects, including but not limited to madness, visions, and transforming into wolf-like creatures.', 50646),
(50646, 'Over time, their experiments led to disastrous consequences, as their bodies and minds were twisted and corrupted by the dark energies they had unleashed. The survivors were hunted down and banished from their homeland, their knowledge of Blood Magic lost to the ages.', 50647),
(50647, 'It was apparent that I had to undertake the investigation myself. The specifics of how I acquired the necessary blood for the rituals need not concern the reader, other than to note that it was accomplished without harm to innocent individuals. <The book now describes Blood Magic rituals with detail.>', 50648),
(50648, 'It is imperative to emphasize that these practices should be banished and proscribed. The agony I endured was indescribable, and the benefits meager, not to mention the grotesque visions of a world consumed by the Emerald Flame. I have documented this knowledge purely to caution future generations from engaging in these activities, and I fervently hope that the Kirin Tor will forever safeguard these secrets.', 0);

-- Blood for Blood
delete from quest_template where entry = 40882;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40881,40882,2,5179,46,35,512,0,'Blood for Blood','Behold the new age of the Forsaken! With this tome as my guide, I will unlock the secrets of the Blood Dimension and harness its power for our cause.$B$B<Orvan Darkeye mixes blood with a slimy, green concoction, following the steps described in the tome with meticulous precision. After a while, he turns to you, a wicked grin on his face.>$B$BNow, we must find a test subject for my latest creation. I had planned to force it down your throat, but you have been a faithful servant, and I will spare you this time. Instead, I have a better idea. There is a nearby camp of human mercenaries who are loyal to our cause. I wonder if this concoction will make them even more devoted to our mission.$B$BBefore I can proceed, I require one final favor from you. Report to Master Apothecary Faranell in Undercity. Tell him that the mission was a success.','Report to Master Apothecary Faranell in Undercity.','Yes?','So Orvan was successful after all. Great. You have done a great favor to the Forsaken and to the Horde this day, so you shall be rewarded. Take this vial, my friend. It contains a potent concoction that will enhance your strength simply by breathing in its fumes. Of course, there may be some minor side effects, such as headaches, vomiting, madness, or even death, but I\'m sure you\'ll be fine. After all, what is a little risk compared to the power it can provide?',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 35000,0,950,68,250,0,0,0,0,0,0,0,0,0, 61422,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61286, 40882);
replace into creature_involvedrelation	(id, quest) values ( 2055, 40882);

replace into item_template values
 ('61422', '4', '0', 'Pure Bloodvial Pendant', '', '609', '3', '0', '1', '39032', '9758', '2', '-1', '-1', '45',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '9', '7', '5',
 '5', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '44', '0', '0', '0',
 '0', '1', NULL);

-- Talona Gladeheart <Dream Alchemist> , display ID 20257, faction 35, level 58, humanoid, scale 1, quest/gossip flags, gossip text : "I am charged with managing our supplies of rare potions and elixirs.$B$BI was taught by the most talented druidic alchemist years ago, and work to continue his vast research."
REPLACE INTO `creature_display_info_addon` (`display_id`, `bounding_radius`, `combat_reach`, `gender`, `display_id_other_gender`) VALUES
(20257, 0, 0, 0, 0);

REPLACE INTO creature_template VALUES
(61505, 20257, 0, 0, 0, 0, 'Talona Gladeheart', 'Dream Alchemist', 0, 58, 58, 3875, 3875, 0, 0, 3435, 35, 3, 1, 1.14286, 1, 18, 5, 0, 0, 1, 154, 184, 0, 262, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.4704, 96.8968, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @gossip_menu_id = 41471; set @magic_number = 61505;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'I am charged with managing our supplies of rare potions and elixirs.$B$BI was taught by the most talented druidic alchemist years ago, and work to continue his vast research.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

-- Enchant Boots: Greater Spirit
delete from quest_template where entry = 40883;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40883,2,616,60,55,0,0,'Enchant Boots: Greater Spirit','The enchantments known to us here are vast. Though we cannot share all of our secrets, we are willing to pass on certain enchanting formulas as a token of our gratitude for helping us in Hyjal. One such pattern is for a strong boots enchantment if you are interested.','Gather 50 Bright Dream Shard\'s for Evandil Nightwind at Nordanaar in Hyjal.','So, have you made your choice?','May this enchantment be a boon to you and your allies. Its power may just turn the tide in a difficult conflict.',61199,50,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,250,0,0,0,0,0,0,0,0,0,0,0, 61220,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61485, 40883);
replace into creature_involvedrelation	(id, quest) values (61485, 40883);

-- Enchant Bracer: Greater Deflection
delete from quest_template where entry = 40884;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40884,2,616,60,55,0,0,'Enchant Bracer: Greater Deflection','The enchantments known to us here are vast. Though we cannot share all of our secrets, we are willing to pass on certain enchanting formulas as a token of our gratitude for helping us in Hyjal. One such pattern is for a strong bracers enchantment if you are interested.','Gather 50 Bright Dream Shard\'s for Evandil Nightwind at Nordanaar in Hyjal.','So, have you made your choice?','The properties of deflection are well known to us here. I am certain you will make good use it.',61199,50,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,250,0,0,0,0,0,0,0,0,0,0,0, 61221,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61485, 40884);
replace into creature_involvedrelation	(id, quest) values (61485, 40884);

-- Dreamtonic
delete from quest_template where entry = 40885;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40885,2,616,60,55,0,1,'Dreamtonic','I am afraid I cannot offer you our Dreamtonic recipe to be crafted independently. It was discovered by one that is no longer with us, and I do not have their permission to share such secrets to outsiders.$B$BI can however, offer Dreamtonic that was created by myself in exchange for your efforts here in Hyjal. Bring me a single Small Dream Shard in exchange for a single Dreamtonic. That should be a fair trade.','Gather 1 Small Dream Shard for Evandil Nightwind at Nordanaar in Hyjal.','So, do you have a Small Dream Shard?','The effects of this mixture are intense, pace yourself.',61198,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,250,0,0,0,0,0,0,0,0,0,0,0, 61423,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61505, 40885);
replace into creature_involvedrelation	(id, quest) values (61505, 40885);

replace into item_template values
 ('61423', '0', '0', 'Dreamtonic', '', '2797', '1', '0', '1', '3400', '850', '0', '-1', '-1', '55',
 '50', '0', '0', '0', '0', '0', '0', '0', '0', '10', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

-- Change item 8547 , Formula: Powerful Smelling Salts to be bind on pickup.
update item_template set bonding = 1 where entry = 8547;
-- Item White Tiger Cub (entry 23712) change description text to the following : "It is said no one has laid their eyes upon a White Tiger Cub given the sheer rarity of this species."
update item_template set description = 'It is said no one has laid their eyes upon a White Tiger Cub given the sheer rarity of this species.' where entry = 23712;
-- Item 'Volatile Aqua' (entry 61408) needs to drop from NPC Volatile Aqua Elemental (Entry 61489) for the quest 'Mastering the Formula III' (Entry 40869) at 100% drop chance.
update quest_template set reqitemid1 = 61408, reqitemcount1 = 1 where entry = 40869;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61408,7914,'Volatile Aqua',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(61489, 61408, -100, 0, 1, 1, 0);
-- NPC Paranus (entry 61495) remove gossip flags.
update creature_template set npc_flags = 2 where entry = 61495;
-- Item entry 61412 rename to Greathorn Beak.
update item_template set name = 'Greathorn Beak' where entry = 61412;
-- Object 'Hyjalroot' entry 2020023 , set respawn timer to 10 minutes.
update gameobject set spawntimesecsmin = 600, spawntimesecsmax = 600 where ID = 2020023;
-- NPC Vannamyr Featherwind (entry 61493) change display ID to 4243.
update creature_template set display_id1 = 4243 where entry = 61493;
-- Quest Blooming Hyjalroot, quest completion text, change the text 'Small Dreamshard' to 'Small Dream Shard'.
update quest_template set offerrewardtext = 'You have done it. With this Hyjalroot I will be able to bring Paranus back from the edge, and guide him away from the dream. I must thank you $c. Without you, I would have been lost in grief.$B$BTake this Small Dream Shard, as thanks for everything you\'ve done.' where entry = 40870;
-- NPC ID 61487 should only be a rare and not rare elite.
-- NPC ID 61487 should cast its spells at its target and not itself.
update creature_template set rank = 4 where entry = 61487;
-- Change NPC GUID 2576992 to respawn every 12-24 hours.
-- NPC ID 61498 should only be a rare and not rare elite.
-- NPC ID 61498 should cast its spells at its target and not itself.
-- NPC ID 61498 should be Mechanical creature type.
update creature set spawntimesecsmin = 43200, spawntimesecsmax = 86400 where guid = 2576992;
update creature_template set rank = 4, type = 9 where entry = 61498;
-- Change NPC GUID 2576993 to respawn every 12-24 hours.
-- NPC ID 61499 should only be a rare and not rare elite.
-- NPC ID 61499 should cast its spells at its target and not itself.
update creature set spawntimesecsmin = 43200, spawntimesecsmax = 86400 where guid = 2576993;
update creature_template set rank = 4 where entry = 61499;
-- Change NPC GUID 2576990 to respawn every 12-24 hours.
-- NPC ID 61500 should only be a rare and not rare elite.
-- NPC ID 61500 should cast its spells at its target and not itself.
update creature set spawntimesecsmin = 43200, spawntimesecsmax = 86400 where guid = 2576990;
update creature_template set rank = 4 where entry = 61500;
-- Change NPC GUID 2576994 to respawn every 12-24 hours.
-- NPC ID 61501 should only be a rare and not rare elite.
-- NPC ID 61501 should cast its spells at its target and not itself.
update creature set spawntimesecsmin = 43200, spawntimesecsmax = 86400 where guid = 2576994;
update creature_template set rank = 4 where entry = 61501;
-- Change NPC GUID 2576981 to respawn every 12-24 hours.
-- NPC ID 61502 should only be a rare and not elite.
-- NPC ID 61502 should cast its spells at its target and not itself.
update creature set spawntimesecsmin = 43200, spawntimesecsmax = 86400 where guid = 2576981;
update creature_template set rank = 4 where entry = 61502;
-- Change NPC GUID 2576979 to respawn every 12-24 hours.
-- NPC ID 61503 should only be a rare and not rare elite.
-- NPC ID 61503 should cast its spells at its target and not itself.
update creature set spawntimesecsmin = 43200, spawntimesecsmax = 86400 where guid = 2576979;
update creature_template set rank = 4 where entry = 61503;
-- Change NPC GUID 2576974 to respawn every 12-24 hours.
-- NPC ID 61504 should only be a rare and not rare elite.
-- NPC ID 61504 should cast its spells at its target and not itself.
update creature set spawntimesecsmin = 43200, spawntimesecsmax = 86400 where guid = 2576974;
update creature_template set rank = 4 where entry = 61504;
-- NPC Barkskin Ursa set HP to 11891.
update creature_template set health_min = 11891, health_max = 11891 where entry = 61342;
-- NPC Barkskin Windtalker set HP to 10403.
update creature_template set health_min = 10403, health_max = 10403 where entry = 61347;

replace into item_template values
 ('61424', '0', '0', 'Plans: Dreamsteel Mantle', '', '1097', '4', '0', '1', '100000', '25000', '0', '-1', '-1', '65',
 '0', '164', '300', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61425', '0', '0', 'Plans: Dreamsteel Leggings', '', '1097', '4', '0', '1', '100000', '25000', '0', '-1', '-1', '65',
 '0', '164', '300', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61426', '0', '0', 'Plans: Dreamsteel Bracers', '', '1097', '4', '0', '1', '100000', '25000', '0', '-1', '-1', '65',
 '0', '164', '300', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61427', '0', '0', 'Plans: Dreamsteel Boots', '', '1097', '4', '0', '1', '100000', '25000', '0', '-1', '-1', '65',
 '0', '164', '300', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61428', '0', '0', 'Pattern: Dreamhide Mantle', '', '1097', '4', '0', '1', '100000', '25000', '0', '-1', '-1', '65',
 '0', '165', '300', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61429', '0', '0', 'Pattern: Dreamhide Bracers', '', '1097', '4', '0', '1', '100000', '25000', '0', '-1', '-1', '65',
 '0', '165', '300', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61430', '0', '0', 'Pattern: Dreamhide Leggings', '', '1097', '4', '0', '1', '100000', '25000', '0', '-1', '-1', '65',
 '0', '165', '300', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61431', '0', '0', 'Pattern: Dreamhide Belt', '', '1097', '4', '0', '1', '100000', '25000', '0', '-1', '-1', '65',
 '0', '165', '300', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61432', '0', '0', 'Pattern: Dreamthread Mantle', '', '1097', '4', '0', '1', '100000', '25000', '0', '-1', '-1', '65',
 '0', '197', '300', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61433', '0', '0', 'Pattern: Dreamthread Kilt', '', '1097', '4', '0', '1', '100000', '25000', '0', '-1', '-1', '65',
 '0', '197', '300', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61434', '0', '0', 'Pattern: Dreamthread Bracers', '', '1097', '4', '0', '1', '100000', '25000', '0', '-1', '-1', '65',
 '0', '197', '300', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61435', '0', '0', 'Pattern: Dreamthread Gloves', '', '1097', '4', '0', '1', '100000', '25000', '0', '-1', '-1', '65',
 '0', '197', '300', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61436', '0', '0', 'Sigil of Leeching', '', '20774', '3', '0', '1', '30000', '7500', '0', '-1', '-1', '55',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61437', '0', '0', 'Sigil of Quickness', '', '23292', '3', '0', '1', '30000', '7500', '0', '-1', '-1', '55',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61438', '0', '0', 'Sigil of Penetration', '', '20984', '3', '0', '1', '30000', '7500', '0', '-1', '-1', '55',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

REPLACE INTO creature_template VALUES
(61506, 18738, 0, 0, 0, 0, 'Elder Barkmaw', 'Barkskin Remnants', 0, 61, 61, 11891, 11891, 0, 0, 3900, 35, 3, 1, 1.14286, 1.4, 20, 5, 0, 1, 1, 751, 809, 0, 284, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 203.77, 289.86, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61507, 1999, 0, 0, 0, 0, 'Nargg', 'Barkskin Remnants', 0, 57, 57, 3758, 3758, 0, 0, 3334, 35, 3, 1, 1.14286, 1.6, 18, 5, 0, 0, 1, 102, 131, 0, 258, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 72.2304, 99.3168, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61508, 2003, 0, 0, 0, 0, 'Belgrashh', 'Fruit Vendor', 0, 57, 57, 3758, 3758, 0, 0, 3334, 35, 4, 1, 1.14286, 1.4, 18, 5, 0, 0, 1, 102, 131, 0, 258, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 72.2304, 99.3168, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61509, 6825, 0, 0, 0, 0, 'Speaker Frulgg', 'Timbermaw Envoy', 0, 55, 55, 3643, 3643, 0, 0, 3272, 35, 3, 1, 1.14286, 1.3, 20, 5, 0, 0, 1, 94, 118, 0, 254, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 71.2272, 97.9374, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61510, 6828, 0, 0, 0, 0, 'Winterfall Envoy', NULL, 0, 61, 61, 11891, 11891, 4920, 4920, 3900, 82, 3, 1, 1.14286, 1.5, 20, 5, 0, 1, 1, 751, 809, 0, 284, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 203.77, 289.86, 100, 7, 0, 61510, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 503, 2517, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61511, 1012, 0, 0, 0, 0, 'Deadwood Envoy', NULL, 0, 61, 61, 11891, 11891, 4920, 4920, 3900, 82, 3, 1, 1.14286, 1.5, 20, 5, 0, 1, 1, 751, 809, 0, 284, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 203.77, 289.86, 100, 7, 0, 61511, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 503, 2517, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @equip_template = 20389; set @weapon_1 = 15863; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 61511;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20388; set @weapon_1 = 15863; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 61510;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20387; set @weapon_1 = 15863; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 61509;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @gossip_menu_id = 41474; set @magic_number = 61509;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'The downfall of the Barkskin is a devastating loss to us Furbolg. As time passes, I fear we may be the only tribe to withstand the growing corruption.$B$B I have come representing the Timbermaw seeking to bring all those uncorrupted into our fold. If that is not possible, offer council to prevent madness from becoming rampant.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41473; set @magic_number = 61507;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'The Barkskin Tribe has been lost to aggression. The corruption of Hyjal has taken a toll on my people, and we are all that is left here. It would appear that our sad and tragic downfall is common amongst the other tribes as well.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41472; set @magic_number = 61506;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Nargg is loyal, Nargg is strong!$B$BYou threaten Elder Barkmaw, Nargg threaten you! You hurt Elder Barkmaw, Nargg hurt you!');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

-- Vendor list: Belgrashh.
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61508, 4536, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61508, 4537, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61508, 4538, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61508, 4539, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61508, 4602, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61508, 8953, 0, 0, 0, 0);

-- Deadwood Envoy
set @creature_entry = 61511;
set @description = ': Deadwood Envoy';
set @spell_list_id = 180189;

set @spellid_1 = 11661; -- Shadow Bolt
set @probability_1 = 100;
set @casttarget_1 = 1;
set @castflags_1 = 4;
set @delayinitialmin_1 = 0;
set @delayinitialmax_1 = 0;
set @delayrepeatmin_1 = 6;
set @delayrepeatmax_1 = 6;

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

-- Winterfall Envoy
set @creature_entry = 61510;
set @description = ': Winterfall Envoy';
set @spell_list_id = 180188;

set @spellid_1 = 11971; -- Sunder Armor
set @probability_1 = 100;
set @casttarget_1 = 1;
set @castflags_1 = 4;
set @delayinitialmin_1 = 0;
set @delayinitialmax_1 = 0;
set @delayrepeatmin_1 = 8;
set @delayrepeatmax_1 = 8;

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

-- Smelting Dreamsteel
delete from quest_template where entry = 40886;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40886,2,616,60,55,0,0,'Smelting Dreamsteel','The ability to smelt Dreamsteel is an art all in itself. Whilst the difficulty to actually create patterns using Dreamsteel Bars is complicated, it does not overshadow the smelting process.$B$BIf you wish to learn how to create your own Dreamsteel Bars and not rely on others, gather for me fifteen Bright Dream Shards as a showing of your loyalty to the World Tree.','Gather 15 Bright Dream Shards for Tanthos Everbreeze at Nordanaar in Hyjal.','Have you brought the Dream Shards adventurer?','Now then, this is the book that should teach you all that you need to know. Study it carefully, and apply the techniques as written in the text.',61199,15,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,250,0,0,0,0,0,0,0,0,0,0,0, 61226,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61491, 40886);
replace into creature_involvedrelation	(id, quest) values (61491, 40886);

-- Dreamsteel Mantle
delete from quest_template where entry = 40887;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40887,2,616,60,55,0,0,'Dreamsteel Mantle','The mastery of Dreamsteel is a complicated art, one that requires extreme amounts of patience in order to perfect.$B$BIf you wish to take this challenge, I can offer you the plans to create the Dreamsteel Mantle. Though, I do require some evidence of your services in the name of Nordrassil. Seventy-five Bright Dream Shards should do. Bring them to me, and you shall be rewarded.','Gather 75 Bright Dream Shards for Tanthos Everbreeze at Nordanaar in Hyjal.','Have you brought the Dream Shards adventurer?','I remember the day I first learned to craft and create Dreamsteel, it was a most rewarding experience.$B$BMay this recipe serve you well, $N.',61199,75,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,250,0,0,0,0,0,0,0,0,0,0,0, 61424,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61491, 40887);
replace into creature_involvedrelation	(id, quest) values (61491, 40887);

-- Dreamsteel Leggings
delete from quest_template where entry = 40888;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40888,2,616,60,55,0,0,'Dreamsteel Leggings','The mastery of Dreamsteel is a complicated art, one that requires extreme amounts of patience in order to perfect.$B$BIf you wish to take this challenge, I can offer you the plans to create the Dreamsteel Leggings. Though, I do require some evidence of your services in the name of Nordrassil. Seventy-five Bright Dream Shards should do. Bring them to me, and you shall be rewarded.','Gather 75 Bright Dream Shards for Tanthos Everbreeze at Nordanaar in Hyjal.','Have you brought the Dream Shards adventurer?','I remember the day I first learned to craft and create Dreamsteel, it was a most rewarding experience.$B$BMay this recipe serve you well, $N.',61199,75,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,250,0,0,0,0,0,0,0,0,0,0,0, 61425,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61491, 40888);
replace into creature_involvedrelation	(id, quest) values (61491, 40888);

-- Dreamsteel Bracers
delete from quest_template where entry = 40889;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40889,2,616,60,55,0,0,'Dreamsteel Bracers','The mastery of Dreamsteel is a complicated art, one that requires extreme amounts of patience in order to perfect.$B$BIf you wish to take this challenge, I can offer you the plans to create the Dreamsteel Bracers. Though, I do require some evidence of your services in the name of Nordrassil. Seventy-five Bright Dream Shards should do. Bring them to me, and you shall be rewarded.','Gather 75 Bright Dream Shards for Tanthos Everbreeze at Nordanaar in Hyjal.','Have you brought the Dream Shards adventurer?','I remember the day I first learned to craft and create Dreamsteel, it was a most rewarding experience.$B$BMay this recipe serve you well, $N.',61199,75,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,250,0,0,0,0,0,0,0,0,0,0,0, 61426,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61491, 40889);
replace into creature_involvedrelation	(id, quest) values (61491, 40889);

-- Dreamsteel Boots
delete from quest_template where entry = 40890;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40890,2,616,60,55,0,0,'Dreamsteel Boots','The mastery of Dreamsteel is a complicated art, one that requires extreme amounts of patience in order to perfect.$B$BIf you wish to take this challenge, I can offer you the plans to create the Dreamsteel Boots. Though, I do require some evidence of your services in the name of Nordrassil. Seventy-five Bright Dream Shards should do. Bring them to me, and you shall be rewarded.','Gather 75 Bright Dream Shards for Tanthos Everbreeze at Nordanaar in Hyjal.','Have you brought the Dream Shards adventurer?','I remember the day I first learned to craft and create Dreamsteel, it was a most rewarding experience.$B$BMay this recipe serve you well, $N.',61199,75,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,250,0,0,0,0,0,0,0,0,0,0,0, 61427,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61491, 40890);
replace into creature_involvedrelation	(id, quest) values (61491, 40890);

-- The Corruption of the Barkskin Tribe
delete from quest_template where entry = 40891;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40891,2,616,60,55,512,0,'The Corruption of the Barkskin Tribe','The Barkskin Tribe was ruled by two elders. Myself, and Elder Barkmaw, a rather seasoned and old warrior who rose to prominence from his aggressive nature and impactful speeches.$B$BI do not blame the corruption of the Barkskin Tribe on any of its warriors, gardeners, or ursa. I blame it solely on Elder Growlheart. During his reign, he grew more and more hostile, leading to a culling of many I would have called dearest friends.$B$BElder Growlheart must be killed if there is even a minor chance the Barkskin tribe can be recovered. You will notice him by his discolored fur, he acquired this look from his addiction to a tainted sap him and his most loyal consume.$B$BYou can find Barkskin village to the southwest, near the bottom of the Hyjal itself.','Find and slay Elder Growlheart deep within Barkskin Village for Elder Barkmaw at Nordassil Glade in Hyjal.','I would advise caution, Barkskin Village is a place of great hostility and skilled ursa.','I can feel a weight leaving my shoulders knowing justice has been brought after so much horror. I have no doubt in my mind his most loyal allies fought and died alongside him.$B$BWords enough cannot express my thanks to you. Please, take these items as a token of appreciation from myself.',0,0,0,0,0,0,0,0, 61348,1,0,0,0,0,0,0, 0,0, 7500,43200,7200,0,0,0,0,0,0,0,0,0,0,0, 61198,1,61199,1,0,0,0,0, 61439,1,61440,1,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61506, 40891);
replace into creature_involvedrelation	(id, quest) values (61506, 40891);

update quest_template set type = 1 where entry = 40891;

replace into item_template values
 ('61439', '4', '0', 'Rod of Nargg', '', '66429', '3', '0', '1', '61632', '15408', '23', '-1', '-1', '64',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '10',
 '0', '0', '0', '45433', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61440', '4', '1', 'Barkskin Elder Cuffs', '', '6738', '3', '0', '1', '43444', '10861', '9', '-1', '-1', '64',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '4', '7', '4',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '36', '0', '0', '0',
 '0', '0', '0', '9395', '1', '0', '0', '-1', '0', '-1', '45420', '1', '0', '0', '-1', '0', '-1', '21361', '1',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '30', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);

-- Barkskin Ursa
delete from quest_template where entry = 40892;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40892,2,616,60,55,0,0,'Barkskin Ursa','The Barkskin Ursa were a group of the most loyal and fearsome warriors within the Tribe. It is they who gravitated to Growlheart and did his bidding.$B$BThe purge led to many deaths, and much suffering. All at the actions of the ursa, who carried out the desires of their master with little care for repercussions.$B$BI bid you to travel to Barkskin Village, and hunt those that dispensed mindless murder. You can find Barkskin Village far to the south, near the foot of Hyjal.$B$BBring me four Ursa Battlehammers as proof of your deed, and you will be rewarded.','Gather 4 Ursa Battlehammers from Barkskin Ursa for Elder Barkmaw at Nordassil Glade in Hyjal.','The ursa should not be taken easily $c. Take your time, and prepare for the coming battle with diligence.','It eases an old mind to know such murderers have met their end, and paid for their actions. I wish I could have seen it myself.$B$BFor your efforts, I offer you one Bright Dream Shard, once highly valued amongst my kind. May you find some use for it.',61441,4,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,43200,7200,0,0,0,0,0,0,0,0,0,0,0, 61199,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61506, 40892);
replace into creature_involvedrelation	(id, quest) values (61506, 40892);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61441,8285,'Ursa Battlehammer',12,1,2048,1,-1,-1,1,4,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(61342,61441,-38,0,1,1,0);

-- Barkskin Vengeance
delete from quest_template where entry = 40893;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40893,2,616,60,55,0,0,'Barkskin Vengeance','Nargg seeks vengeance upon other Barkskin for evil deeds. Barkskin slay many friends of Nargg, including father.$B$BTribe no longer what it was, it angry, and it evil. Nargg asks you to do what Nargg cannot do. Slay Barkskin and reclaim Barkskin Pendants, they can be found on any Barkskin Furbolg.','Gather 10 Barkskin Pendants for Nargg at Nordassil Glade in Hyjal.','You do what Nargg ask, you bring death to evil Barkskin?','Nargg is pleased, Nargg is happy.$B$BA fire still burns deep within, anger not sated. Take this, as thanks from Nargg.',61442,10,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 8500,39600,6600,0,0,0,0,0,0,0,0,0,0,0, 61198,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61507, 40893);
replace into creature_involvedrelation	(id, quest) values (61507, 40893);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61442,32073,'Barkskin Pendant',12,1,2048,1,-1,-1,1,10,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(61343,61442,-35,0,1,1,0),
(61344,61442,-35,0,1,1,0),
(61345,61442,-35,0,1,1,0),
(61346,61442,-35,0,1,1,0),
(61342,61442,-70,0,1,1,0),
(61347,61442,-70,0,1,1,0);

-- Continued Barkskin Vengeance
delete from quest_template where entry = 40894;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40893,40894,2,616,60,55,0,1,'Continued Barkskin Vengeance','Nargg still seeks vengeance upon the Barkskin for what they have done. Barkskin slayed many friends of Nargg, and must pay!$B$BTribe no longer what it was, it angry, and it evil. Nargg ask you to do what Nargg cannot do. Slay Barkskin and reclaim Barkskin Pendants, they can be found on any Barkskin Furbolg.','Gather 10 Barkskin Pendants for Nargg at Nordassil Glade in Hyjal.','You do what Nargg ask, you bring death to evil Barkskin?','Nargg is pleased, Nargg is happy.$B$BA fire still burns deep within, anger not sated. Take this, as thanks from Nargg.',61442,10,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,250,0,0,0,0,0,0,0,0,0,0,0, 61198,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61507, 40894);
replace into creature_involvedrelation	(id, quest) values (61507, 40894);

-- NPC Loremaster Taerlon add subname <Wardens of Nordrassil>.
update creature_template set subname = 'Wardens of Nordrassil' where entry = 61497;

-- Crafting Dreamhide
delete from quest_template where entry = 40895;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40895,2,616,60,55,0,0,'Crafting Dreamhide','Coming to admire my work, are you? I commend your efforts in travelling so far to see such elusive leather, but...$B$BWhat? You\'ve come to learn my secrets? Hmm... Perhaps. I have prepared a book to teach those loyal to our causes how to work with Dreamhide, but I require Bright Dream Shards from you in order to offer it.','Gather 15 Bright Dream Shards for Jancel Stardust at Nordanaar in Hyjal.','Have you brought the Dream Shards adventurer?','Now then, this is the book that should teach you all that you need to know. Study it carefully, and apply the techniques as written in the text.',61199,15,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,250,0,0,0,0,0,0,0,0,0,0,0, 61228,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61493, 40895);
replace into creature_involvedrelation	(id, quest) values (61493, 40895);

-- Dreamhide Mantle
delete from quest_template where entry = 40896;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40896,2,616,60,55,0,0,'Dreamhide Mantle','I am not looking to give my most precious patterns to the unworthy wretches who call themselves leatherworkers. I require a showing of dedication and willpower to offer apprentices a chance to craft my great work.$B$BIf you desire to learn the Dreamhide Mantle pattern, bring me 75 Bright Dream Shards.','Gather 75 Bright Dream Shards for Jancel Stardust at Nordanaar in Hyjal.','Have you brought the Dream Shards adventurer?','I remember the day I first learned to craft and create Dreamhide, it was a most rewarding experience.$B$BMay this recipe serve you well, $N.',61199,75,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,250,0,0,0,0,0,0,0,0,0,0,0, 61428,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61493, 40896);
replace into creature_involvedrelation	(id, quest) values (61493, 40896);

-- Dreamhide Bracers
delete from quest_template where entry = 40897;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40897,2,616,60,55,0,0,'Dreamhide Bracers','I am not looking to give my most precious patterns to the unworthy wretches who call themselves leatherworkers. I require a showing of dedication and willpower to offer apprentices a chance to craft my great work.$B$BIf you desire to learn the Dreamhide Bracers pattern, bring me 75 Bright Dream Shards.','Gather 75 Bright Dream Shards for Jancel Stardust at Nordanaar in Hyjal.','Have you brought the Dream Shards adventurer?','I remember the day I first learned to craft and create Dreamhide, it was a most rewarding experience.$B$BMay this recipe serve you well, $N.',61199,75,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,250,0,0,0,0,0,0,0,0,0,0,0, 61429,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61493, 40897);
replace into creature_involvedrelation	(id, quest) values (61493, 40897);

-- Dreamhide Leggings
delete from quest_template where entry = 40898;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40898,2,616,60,55,0,0,'Dreamhide Leggings','I am not looking to give my most precious patterns to the unworthy wretches who call themselves leatherworkers. I require a showing of dedication and willpower to offer apprentices a chance to craft my great work.$B$BIf you desire to learn the Dreamhide Leggings pattern, bring me 75 Bright Dream Shards.','Gather 75 Bright Dream Shards for Jancel Stardust at Nordanaar in Hyjal.','Have you brought the Dream Shards adventurer?','I remember the day I first learned to craft and create Dreamhide, it was a most rewarding experience.$B$BMay this recipe serve you well, $N.',61199,75,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,250,0,0,0,0,0,0,0,0,0,0,0, 61430,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61493, 40898);
replace into creature_involvedrelation	(id, quest) values (61493, 40898);

-- Dreamhide Belt
delete from quest_template where entry = 40899;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40899,2,616,60,55,0,0,'Dreamhide Belt','I am not looking to give my most precious patterns to the unworthy wretches who call themselves leatherworkers. I require a showing of dedication and willpower to offer apprentices a chance to craft my great work.$B$BIf you desire to learn the Dreamhide Belt pattern, bring me 75 Bright Dream Shards.','Gather 75 Bright Dream Shards for Jancel Stardust at Nordanaar in Hyjal.','Have you brought the Dream Shards adventurer?','I remember the day I first learned to craft and create Dreamhide, it was a most rewarding experience.$B$BMay this recipe serve you well, $N.',61199,75,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,250,0,0,0,0,0,0,0,0,0,0,0, 61431,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61493, 40899);
replace into creature_involvedrelation	(id, quest) values (61493, 40899);

-- Crafting Dreamthread
delete from quest_template where entry = 40900;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40900,2,616,60,55,0,0,'Crafting Dreamthread','It has been many long years that I have practiced my skills beneath the World Tree. A clear mind guides the fingers and sets the imagination at task.$B$BFor your efforts in helping Hyjal I can offer a book containing all of my knowledge. Bring me fifteen Bright Dream Shards and you can also learn my techniques.','Gather 15 Bright Dream Shards for Jancel Stardust at Nordanaar in Hyjal.','Have you brought the Dream Shards adventurer?','Now then, this is the book that should teach you all that you need to know. Study it carefully, and apply the techniques as written in the text.',61199,15,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,250,0,0,0,0,0,0,0,0,0,0,0, 61227,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61492, 40900);
replace into creature_involvedrelation	(id, quest) values (61492, 40900);

