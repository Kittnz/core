-- Anchor's Edge (ALL OF THESE NPCS BELOW should have no PVP flags)
-- Expedition Commando <Kul Tiras>, display IDs 18961 + 18962, level 9-11, faction 1693, humanoid, weapon 12247
-- Expedition Cleric <Kul Tiras>, display IDs 18959 + 18960 , level 15-17, faction 1693, humanoid, weapon 767, has 300 mana, casts 2053 on friendly targets every 8 seconds (Requires script)
-- Expedition Sailor <Kul Tiras>, display IDs 18965 + 18966 , level 14-16, faction 1693, humanoid, weapon 2263
-- Expedition Officer <Kul Tiras>, display IDs 18963 + 18964 , level 18, faction 1693, humanoid, weapon 9602, (deals 1.5x damage)
-- Expedition Soldier <Kul Tiras>, display IDs 18969 + 18970 , level 15-17, faction 1693, humanoid, weapon 1 4560, weapon 2 4130
-- Expedition Scout <Kul Tiras>, display IDs 18967 + 18968 , level 8-10, faction 1693, humanoid, weapon 852
-- Aquamancer Shaleborn <Kul Tiras>, display ID 18956, level 17, faction 1693, humanoid, weapon 9452, has 500 mana, casts 837 every 6 seconds, (has 1.3x extra hp), quest/greeting flags. "What brings you to Anchor's Edge of all places?"
-- Deckmaster Darkhollow <Kul Tiras>, display ID 18958, level 19, faction 1693, humanoid, weapon 1296 (Has 1.3x extra hp) (Deals 1.25x damage), quest/greeting flags : "The Deep Tide has been a loyal vessel to Kul Tiras for many years."
-- Paladin Danuvis <Kul Tiras>, display ID 18957, level 18 elite, faction 1693, humanoid, weapon 7730, has 750 mana, (casts 5588 every 30 seconds, casts 1866 every 15 seconds) quest/greeting flags, greeting text : "Keep your faith in the light, and all shall reveal itself."
-- Lieutenant Alverold <Kul Tiras>, display ID 18971 , level 20 elite, faction 1693, humanoid, weapon 4560, (casts 28131 at 50% hp, casts 15652 every 20 seconds) , quest/greeting flags, greeting text : "Our journey has taken much longer then expected, it is about time we bring our efforts against the Horde."
REPLACE INTO creature_template VALUES
(60893, 18961, 18962, 0, 0, 0, 'Expedition Commando', 'Kul Tiras', 0, 9, 11, 198, 198, 0, 0, 455, 1693, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 13, 17, 0, 62, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 15.048, 20.691, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 9, 17, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60894, 18959, 18960, 0, 0, 0, 'Expedition Cleric', 'Kul Tiras', 0, 15, 17, 331, 341, 300, 300, 660, 1693, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 21, 27, 0, 74, 1, 2000, 2000, 8, 0, 0, 0, 2, 0, 0, 0, 21.2784, 29.2578, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 15, 20, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60895, 18965, 18966, 0, 0, 0, 'Expedition Sailor', 'Kul Tiras', 0, 14, 16, 328, 335, 0, 0, 660, 1693, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 21, 27, 0, 74, 1, 2000, 2000, 1, 0, 0, 0, 2, 0, 0, 0, 21.2784, 29.2578, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 15, 20, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60896, 18963, 18964, 0, 0, 0, 'Expedition Officer', 'Kul Tiras', 0, 18, 18, 417, 417, 0, 0, 765, 1693, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 41, 51, 0, 84, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 28.6704, 39.4218, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 18, 23, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60897, 18969, 18970, 0, 0, 0, 'Expedition Soldier', 'Kul Tiras', 0, 15, 17, 331, 341, 0, 0, 660, 1693, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 21, 27, 0, 74, 1, 2000, 2000, 1, 0, 0, 0, 2, 0, 0, 0, 21.2784, 29.2578, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 15, 20, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60898, 18967, 18968, 0, 0, 0, 'Expedition Scout', 'Kul Tiras', 0, 8, 10, 170, 189, 0, 0, 406, 1693, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 11, 15, 0, 60, 1, 1900, 2090, 1, 0, 0, 0, 0, 0, 0, 0, 15.2064, 20.9088, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7371, 0, 0, 0, 180041, 0, NULL, 9, 17, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60899, 18956, 0, 0, 0, 0, 'Aquamancer Shaleborn', 'Kul Tiras', 0, 17, 17, 502, 502, 500, 500, 432, 1693, 3, 1, 1.14286, 0, 20, 5, 0, 0, 1, 27, 34, 0, 84, 1, 2000, 2000, 8, 0, 0, 0, 0, 0, 0, 0, 28.6704, 39.4218, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 18, 23, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60900, 18958, 0, 0, 0, 0, 'Deckmaster Darkhollow', 'Kul Tiras', 0, 19, 19, 510, 510, 0, 0, 765, 1693, 3, 1, 1.14286, 0, 20, 5, 0, 0, 1, 36, 44, 0, 88, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 28.6704, 39.4218, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 21, 32, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60901, 18971, 0, 0, 0, 0, 'Lieutenant Alverold', 'Kul Tiras', 0, 20, 20, 2904, 2904, 0, 0, 852, 1693, 3, 1, 1.14286, 0, 20, 5, 0, 1, 1, 85, 110, 0, 90, 1, 2000, 2000, 1, 32832, 0, 0, 0, 0, 0, 0, 26.24, 36.08, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 102, 130, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60902, 18957, 0, 0, 0, 0, 'Paladin Danuvis', 'Kul Tiras', 0, 18, 18, 1212, 1212, 750, 750, 683, 1693, 3, 1, 1.14286, 0, 20, 5, 0, 1, 1, 89, 115, 0, 90, 1, 2000, 2000, 2, 64, 0, 0, 0, 0, 0, 0, 27.4008, 37.6761, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 85, 115, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO creature_display_info_addon VALUES (18956, 0, 0, 0, 0);
REPLACE INTO creature_display_info_addon VALUES (18957, 0, 0, 0, 0);
REPLACE INTO creature_display_info_addon VALUES (18958, 0, 0, 0, 0);
REPLACE INTO creature_display_info_addon VALUES (18959, 0, 0, 0, 0);
REPLACE INTO creature_display_info_addon VALUES (18960, 0, 0, 0, 0);
REPLACE INTO creature_display_info_addon VALUES (18961, 0, 0, 0, 0);
REPLACE INTO creature_display_info_addon VALUES (18962, 0, 0, 0, 0);
REPLACE INTO creature_display_info_addon VALUES (18963, 0, 0, 0, 0);
REPLACE INTO creature_display_info_addon VALUES (18964, 0, 0, 0, 0);
REPLACE INTO creature_display_info_addon VALUES (18965, 0, 0, 0, 0);
REPLACE INTO creature_display_info_addon VALUES (18966, 0, 0, 0, 0);
REPLACE INTO creature_display_info_addon VALUES (18967, 0, 0, 0, 0);
REPLACE INTO creature_display_info_addon VALUES (18968, 0, 0, 0, 0);
REPLACE INTO creature_display_info_addon VALUES (18970, 0, 0, 0, 0);
REPLACE INTO creature_display_info_addon VALUES (18971, 0, 0, 0, 0);

set @equip_template = 20158; set @weapon_1 = 7730; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60902;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20157; set @weapon_1 = 4560; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60901;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20156; set @weapon_1 = 1296; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60900;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20155; set @weapon_1 = 9452; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60899;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20154; set @weapon_1 = 852; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60898;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20153; set @weapon_1 = 4560; set @weapon_2 = 4130; set @weapon_3 = 0; set @creature = 60897;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20152; set @weapon_1 = 9602; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60896;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20151; set @weapon_1 = 2263; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60895;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20150; set @weapon_1 = 767; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60894;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20149; set @weapon_1 = 12247; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60893;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @gossip_menu_id = 41191; set @magic_number = 60902;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Keep your faith in the light, and all shall reveal itself.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41190; set @magic_number = 60901;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Our journey has taken much longer then expected, it is about time we bring our efforts against the Horde.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41189; set @magic_number = 60900;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'The Deep Tide has been a loyal vessel to Kul Tiras for many years.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41188; set @magic_number = 60899;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'What brings you to Anchor\'s Edge of all places?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

-- Paladin Danuvis
set @creature_entry = 60902;
set @description = 'Anchor\'s Edge: Paladin Danuvis';
set @spell_list_id = 180047;

set @spellid_1 = 1866; -- Holy Strike
set @probability_1 = 100; 
set @casttarget_1 = 1; 
set @castflags_1 = 4;
set @delayinitialmin_1 = 0; 
set @delayinitialmax_1 = 0; 
set @delayrepeatmin_1 = 15; 
set @delayrepeatmax_1 = 15;

set @spellid_2 = 5588; -- Hammer of Justice
set @probability_2 = 100; 
set @casttarget_2 = 1; 
set @castflags_2 = 4;
set @delayinitialmin_2 = 3; 
set @delayinitialmax_2 = 5; 
set @delayrepeatmin_2 = 30; 
set @delayrepeatmax_2 = 30;

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

-- Lieutenant Alverold
set @creature_entry = 60901;
set @description = 'Anchor\'s Edge: Lieutenant Alverold';
set @spell_list_id = 180046;

set @spellid_1 = 15652; -- Head Smash
set @probability_1 = 100; 
set @casttarget_1 = 1; 
set @castflags_1 = 4;
set @delayinitialmin_1 = 2; 
set @delayinitialmax_1 = 4; 
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

-- Aquamancer Shaleborn
set @creature_entry = 60899;
set @description = 'Anchor\'s Edge: Aquamancer Shaleborn';
set @spell_list_id = 180045;

set @spellid_1 = 837; -- Frost Bolt
set @probability_1 = 100; 
set @casttarget_1 = 1; 
set @castflags_1 = 4;
set @delayinitialmin_1 = 1; 
set @delayinitialmax_1 = 2; 
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

-- Expedition Cleric
set @creature_entry = 60894;
set @description = 'Anchor\'s Edge: Expedition Cleric';
set @spell_list_id = 180044;

set @spellid_1 = 2053; -- Lesser Heal
set @probability_1 = 100; 
set @casttarget_1 = 15; 
set @castflags_1 = 0;
set @delayinitialmin_1 = 2; 
set @delayinitialmax_1 = 3; 
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
-- Shadowforge Skinner, display ID 18953, level 41-42, faction 54, scale 1, humanoid, weapon 2092
-- Shadowforge Trapper, display ID 18954, level 41-42, faction 54, scale 1, humanoid, weapon 4126 , casts 13608 every 20 seconds
-- Shadowforge Wyrm Hunter, display ID 18955, level 42-44, faction 54, scale 1, humanoid, weapon1 : 9416, ranged weapon : 2781, casts 16100 every 2 second from range
-- Kegdesh Foulmantle, display ID 18952, level 44 elite, faction 54, scale 1, humanoid, weapon1: 2532, weapon2: 27754 (Attacks 30% faster then normal), casts 17547 every 30 seconds
-- Shadowforge Excavator, display ID 18843, level 36-37, faction 54, scale 1, humanoid, weapon: 2901
-- Borrin Gloombeard, display ID 18945, level 41, faction 54, scale 1, humanoid, weapon 2226, has 2000 mana, casts 10148 every 6 seconds
-- Azurescale Whelp, display ID 10584, level 37-38, faction 103, scale 1, dragonkin, no weapon
-- Azurescale Manaweaver, display ID 6761, level 39-41, faction 103, scale 1, dragonkin, weapon 16894,  has 3000 mana, casts 10201 every 5 seconds
-- Drathos Runebreaker, display ID 6762, level 44, faction 103, scale 1.2, dragonkin, weapon 1406 casts 15584 every 10 seconds
REPLACE INTO creature_template VALUES
(60903, 18953, 0, 0, 0, 0, 'Shadowforge Skinner', '', 0, 41, 42, 1981, 2059, 0, 0, 2397, 54, 0, 1, 1.14286, 0, 18, 5, 0, 0, 1, 76, 97, 0, 182, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 60.984, 83.853, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 75, 103, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60904, 18954, 0, 0, 0, 0, 'Shadowforge Trapper', '', 0, 41, 42, 1981, 2059, 0, 0, 2397, 54, 0, 1, 1.14286, 0, 18, 5, 0, 0, 1, 76, 91, 0, 182, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 60.984, 83.853, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 75, 103, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60905, 18955, 0, 0, 0, 0, 'Shadowforge Wyrm Hunter', '', 0, 44, 44, 2059, 2117, 0, 0, 2625, 54, 0, 1, 1.14714, 0, 18, 5, 0, 0, 1, 78, 95, 0, 204, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 84, 115, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60906, 18952, 0, 0, 0, 0, 'Kegdesh Foulmantle', '', 0, 44, 44, 4278, 4278, 0, 0, 2082, 54, 0, 1, 1.14286, 0, 18, 5, 0, 1, 1, 269, 346, 0, 194, 1, 1400, 1400, 1, 0, 0, 0, 0, 0, 0, 0, 53.1456, 73.0752, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 259, 343, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60907, 18843, 0, 0, 0, 0, 'Shadowforge Excavator', '', 0, 36, 37, 1468, 1536, 0, 0, 1480, 54, 0, 1, 1.14286, 0, 18, 5, 0, 0, 1, 51, 62, 0, 140, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 59, 83, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60908, 18945, 0, 0, 0, 0, 'Borrin Gloombeard', '', 0, 41, 41, 1981, 1981, 2000, 2000, 2397, 54, 0, 1, 1.14286, 0, 18, 5, 0, 0, 1, 85, 109, 0, 162, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 66, 91, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60909, 10584, 0, 0, 0, 0, 'Azurescale Whelp', '', 0, 37, 38, 1536, 1604, 0, 0, 1664, 103, 0, 1, 1.14286, 0, 18, 5, 0, 0, 1, 92, 109, 0, 148, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 29, 145, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60910, 6761, 0, 0, 0, 0, 'Azurescale Manaweaver', '', 0, 39, 41, 1828, 1902, 3000, 3000, 2033, 103, 0, 1, 1.14286, 0, 18, 5, 0, 0, 1, 72, 93, 0, 162, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 59.0304, 81.1668, 100, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 71, 98, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60911, 6762, 0, 0, 0, 0, 'Drathos Runebreaker', '', 0, 44, 44, 2117, 2117, 0, 0, 2625, 103, 0, 1, 1.14714, 1.2, 18, 5, 0, 0, 1, 78, 95, 0, 204, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 84, 115, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO creature_display_info_addon VALUES (18843, 0, 0, 0, 0);
REPLACE INTO creature_display_info_addon VALUES (18945, 0, 0, 0, 0);
REPLACE INTO creature_display_info_addon VALUES (18952, 0, 0, 0, 0);
REPLACE INTO creature_display_info_addon VALUES (18953, 0, 0, 0, 0);
REPLACE INTO creature_display_info_addon VALUES (18954, 0, 0, 0, 0);
REPLACE INTO creature_display_info_addon VALUES (18955, 0, 0, 0, 0);

set @equip_template = 20166; set @weapon_1 = 1406; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60911;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20165; set @weapon_1 = 16894; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60910;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20164; set @weapon_1 = 2226; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60908;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20163; set @weapon_1 = 2901; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60907;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20162; set @weapon_1 = 2532; set @weapon_2 = 27754; set @weapon_3 = 0; set @creature = 60906;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20161; set @weapon_1 = 9416; set @weapon_2 = 0; set @weapon_3 = 2781; set @creature = 60905;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20160; set @weapon_1 = 4126; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60904;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20159; set @weapon_1 = 2092; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60903;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

-- Drathos Runebreaker
set @creature_entry = 60911;
set @description = ': Drathos Runebreaker';
set @spell_list_id = 180053;

set @spellid_1 = 15584; -- Cleave
set @probability_1 = 100; 
set @casttarget_1 = 1; 
set @castflags_1 = 4;
set @delayinitialmin_1 = 0; 
set @delayinitialmax_1 = 0; 
set @delayrepeatmin_1 = 10; 
set @delayrepeatmax_1 = 10;

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

-- Azurescale Manaweaver
set @creature_entry = 60910;
set @description = ': Azurescale Manaweaver';
set @spell_list_id = 180052;

set @spellid_1 = 10201; -- Arcane Explosion
set @probability_1 = 100; 
set @casttarget_1 = 1; 
set @castflags_1 = 4;
set @delayinitialmin_1 = 0; 
set @delayinitialmax_1 = 0; 
set @delayrepeatmin_1 = 5; 
set @delayrepeatmax_1 = 5;

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

-- Borrin Gloombeard
set @creature_entry = 60908;
set @description = 'Hateforge Quarry: Borrin Gloombeard';
set @spell_list_id = 180051;

set @spellid_1 = 10148; -- Fireball
set @probability_1 = 100; 
set @casttarget_1 = 1; 
set @castflags_1 = 4;
set @delayinitialmin_1 = 1; 
set @delayinitialmax_1 = 3; 
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

-- Kegdesh Foulmantle
set @creature_entry = 60906;
set @description = 'Hateforge Quarry: Kegdesh Foulmantle';
set @spell_list_id = 180050;

set @spellid_1 = 17547; -- Mortal Strike
set @probability_1 = 100; 
set @casttarget_1 = 1; 
set @castflags_1 = 4;
set @delayinitialmin_1 = 1; 
set @delayinitialmax_1 = 2; 
set @delayrepeatmin_1 = 30; 
set @delayrepeatmax_1 = 30;

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

-- Shadowforge Wyrm Hunter
set @creature_entry = 60905;
set @description = 'Hateforge Quarry: Shadowforge Wyrm Hunter';
set @spell_list_id = 180049;

set @spellid_1 = 16100; -- Shoot
set @probability_1 = 100; 
set @casttarget_1 = 1; 
set @castflags_1 = 8;
set @delayinitialmin_1 = 0; 
set @delayinitialmax_1 = 0; 
set @delayrepeatmin_1 = 0; 
set @delayrepeatmax_1 = 0;

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

-- Shadowforge Trapper
set @creature_entry = 60904;
set @description = 'Hateforge Quarry: Shadowforge Trapper';
set @spell_list_id = 180048;

set @spellid_1 = 13608; -- Hooked Net
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
-- Ancient Warrior, display ID 18939, level 36-39, faction 21, scale 1, undead, weapon1 : 10571, weapon 2 : 2210
-- Ancient Warrior, display ID 18940, level 36-39, faction 21, scale 1, undead, weapon1 : 3779
-- Ancient Warrior, display ID 18941, level 36-39, faction 21, scale 1, undead, weapon1: 852, weapon2 : 6692
-- Ancient Warrior, display ID 18942, level 36-39, faction 21, scale 1, undead, weapon1 : 5040 , ranged weapon: 11303, casts 15620 every 2 seconds from range
-- Forgotten Keeper, display ID 18944, level 50, faction 21, scale 1, undead, no weapon
-- Marauder King Corthan, display ID 18943, level 48 elite, faction 35 scale 1, undead, weapon : 10758, has quest/gossip flags, gossip text : "
-- Stonevault Brute, display ID 1193, level 41-42, faction 90, scale 1.3, humanoid , weapon 1385
-- Stonevault Pillager, display ID 726, level 43-44, faction 90, scale 1, humanoid, weapon 12943, has 1431 mana, casts 8402 every 7 seconds
REPLACE INTO creature_template VALUES
(60912, 18939, 0, 0, 0, 0, 'Ancient Warrior', NULL, 0, 36, 39, 1536, 1604, 0, 0, 1664, 21, 0, 1, 1.14286, 0, 18, 5, 0, 0, 1, 92, 109, 0, 148, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9617, 29, 145, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60913, 18940, 0, 0, 0, 0, 'Ancient Warrior', NULL, 0, 36, 39, 1536, 1604, 0, 0, 1664, 21, 0, 1, 1.14286, 0, 18, 5, 0, 0, 1, 92, 109, 0, 148, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9617, 29, 145, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60914, 18941, 0, 0, 0, 0, 'Ancient Warrior', NULL, 0, 36, 39, 1536, 1604, 0, 0, 1664, 21, 0, 1, 1.14286, 0, 18, 5, 0, 0, 1, 92, 109, 0, 148, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9617, 29, 145, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60915, 18942, 0, 0, 0, 0, 'Ancient Warrior', NULL, 0, 36, 39, 1536, 1604, 0, 0, 1664, 21, 0, 1, 1.14286, 0, 18, 5, 0, 0, 1, 92, 109, 0, 148, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9617, 29, 145, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60916, 18944, 0, 0, 0, 0, 'Forgotten Keeper', NULL, 0, 50, 50, 2990, 2990, 0, 0, 2958, 35, 3, 1, 1.14286, 0, 18, 5, 0, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9617, 103, 140, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60917, 18943, 0, 0, 0, 0, 'Marauder King Corthan', NULL, 0, 48, 48, 4179, 4179, 0, 0, 2432, 35, 3, 1, 1.14286, 0, 18, 5, 0, 1, 1, 273, 338, 0, 226, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 54.6056, 75.0827, 100, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9617, 127, 155, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60918, 1193, 0, 0, 0, 0, 'Stonevault Brute', '', 0, 41, 42, 1981, 2059, 0, 0, 2397, 90, 0, 1, 1.14286, 0, 18, 5, 0, 0, 1, 76, 97, 0, 182, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 60.984, 83.853, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 75, 103, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60919, 726, 0, 0, 0, 0, 'Stonevault Pillager', NULL, 0, 43, 44, 2059, 2138, 1431, 1431, 2557, 90, 0, 1, 1.14286, 0, 18, 5, 0, 0, 1, 68, 88, 0, 194, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 78, 107, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO creature_display_info_addon VALUES (18939, 0, 0, 0, 0);
REPLACE INTO creature_display_info_addon VALUES (18940, 0, 0, 0, 0);
REPLACE INTO creature_display_info_addon VALUES (18941, 0, 0, 0, 0);
REPLACE INTO creature_display_info_addon VALUES (18942, 0, 0, 0, 0);
REPLACE INTO creature_display_info_addon VALUES (18943, 0, 0, 0, 0);
REPLACE INTO creature_display_info_addon VALUES (18944, 0, 0, 0, 0);

set @equip_template = 20173; set @weapon_1 = 12943; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60919;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20172; set @weapon_1 = 920; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60918;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20171; set @weapon_1 = 10758; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60917;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20170; set @weapon_1 = 5040; set @weapon_2 = 0; set @weapon_3 = 11303; set @creature = 60915;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20169; set @weapon_1 = 852; set @weapon_2 = 6692; set @weapon_3 = 0; set @creature = 60914;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20168; set @weapon_1 = 3779; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60913;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20167; set @weapon_1 = 10571; set @weapon_2 = 2210; set @weapon_3 = 0; set @creature = 60912;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

-- Stonevault Pillager
set @creature_entry = 60919;
set @description = ': Stonevault Pillager';
set @spell_list_id = 180055;

set @spellid_1 = 8402; -- Fireball
set @probability_1 = 100; 
set @casttarget_1 = 1; 
set @castflags_1 = 4;
set @delayinitialmin_1 = 0; 
set @delayinitialmax_1 = 0; 
set @delayrepeatmin_1 = 7; 
set @delayrepeatmax_1 = 7;

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

-- Ancient Warrior
set @creature_entry = 60915;
set @description = ': Ancient Warrior';
set @spell_list_id = 180054;

set @spellid_1 = 15620; -- Shoot
set @probability_1 = 100; 
set @casttarget_1 = 1; 
set @castflags_1 = 8;
set @delayinitialmin_1 = 0; 
set @delayinitialmax_1 = 0; 
set @delayrepeatmin_1 = 3; 
set @delayrepeatmax_1 = 3;

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
-- Earthen Curator, display ID 18946, level 41-42 ,faction 415, scale 1, humanoid, weapon 11857 has 1782 mana, casts 10391 every 5 seconds,
-- Earthen Rockshaper, display ID 18947, level 39-41 ,faction 415, scale 1, humanoid, weapon 25129
-- Orthal the Steward, display ID 18948, level 45 ,faction 415, scale 1, humanoid, weapon 5541, weapon2 12868
-- Surveyor Bronzehorn <Redbrand Estate>, display ID 18950 , level 42, faction 55, scale 1, humanoid, weapon 1: 1906, quest flags
-- Torlig Redbrand <Redbrand Estate>, display ID 18951 , level 36, faction 55, scale 1, humanoid, no weapon, quest/gossip flags, gossip text: "We Redbrand fought alongside the king in the war of the beard ages ago, we hold a proud legacy and should not be judged lightly."
-- Lord Nazgrim Redbrand <Redbrand Estate>, display ID 18949, level 51, faction 55, scale 1, humanoid, weapon1 5541, quest/gossip flags, gossip text: "We have suffered many tragedies of late, with our namesake crumbling around before us. I will not live to see my families legacy dwindle before my eyes.\n\n The reputation of a dwarf means something within Khaz Modan and the Redbrand family shall not fade away while I am leading it.\n\n My name is Nazgrim, if you haven't heard my name, I am the head of a noble family, what is it I can do for you $C?"
REPLACE INTO creature_template VALUES
(60920, 18946, 0, 0, 0, 0, 'Earthen Curator', '', 0, 41, 42, 1981, 2059, 1782, 1782, 2397, 415, 0, 1, 1.14286, 0, 18, 5, 0, 0, 1, 76, 97, 0, 182, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 60.984, 83.853, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 75, 103, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60921, 18947, 0, 0, 0, 0, 'Earthen Rockshaper', '', 0, 39, 41, 1828, 1902, 0, 0, 2033, 415, 0, 1, 1.14286, 0, 18, 5, 0, 0, 1, 72, 93, 0, 162, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 59.0304, 81.1668, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 71, 98, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60922, 18948, 0, 0, 0, 0, 'Orthal the Steward', '', 0, 45, 45, 2217, 2217, 0, 0, 2725, 415, 0, 1, 1.14714, 0, 18, 5, 0, 0, 1, 78, 95, 0, 204, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 84, 115, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60923, 18950, 0, 0, 0, 0, 'Surveyor Bronzehorn', 'Redbrand Estate', 0, 42, 42, 1981, 1981, 0, 0, 2246, 55, 2, 1, 1.14286, 0, 18, 5, 0, 0, 1, 64, 79, 0, 172, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 58.7664, 80.8038, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60924, 18951, 0, 0, 0, 0, 'Torlig Redbrand', 'Redbrand Estate', 0, 36, 36, 1468, 1468, 0, 0, 1420, 55, 3, 1, 1.14286, 0, 18, 5, 0, 0, 1, 92, 109, 0, 140, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 29, 145, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60925, 18949, 0, 0, 0, 0, 'Lord Nazgrim Redbrand', 'Redbrand Estate', 0, 51, 51, 2979, 2979, 0, 0, 3052, 55, 3, 1, 1.14286, 0, 20, 5, 40, 0, 1, 87, 107, 0, 230, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 67.32, 92.565, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 101, 137, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO creature_display_info_addon VALUES (18946, 0, 0, 0, 0);
REPLACE INTO creature_display_info_addon VALUES (18947, 0, 0, 0, 0);
REPLACE INTO creature_display_info_addon VALUES (18948, 0, 0, 0, 0);
REPLACE INTO creature_display_info_addon VALUES (18949, 0, 0, 0, 0);
REPLACE INTO creature_display_info_addon VALUES (18950, 0, 0, 0, 0);
REPLACE INTO creature_display_info_addon VALUES (18951, 0, 0, 0, 0);

set @equip_template = 20178; set @weapon_1 = 5541; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60925;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20177; set @weapon_1 = 1906; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60923;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20176; set @weapon_1 = 5541; set @weapon_2 = 12868; set @weapon_3 = 0; set @creature = 60922;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20175; set @weapon_1 = 5491; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60921;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20174; set @weapon_1 = 11857; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60920;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @gossip_menu_id = 41193; set @magic_number = 60925;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'We have suffered many tragedies of late, with our namesake crumbling around before us. I will not live to see my families legacy dwindle before my eyes.\n\nThe reputation of a dwarf means something within Khaz Modan and the Redbrand family shall not fade away while I am leading it.\n\nMy name is Nazgrim, if you haven\'t heard my name, I am the head of a noble family, what is it I can do for you $C?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41192; set @magic_number = 60924;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'We Redbrand fought alongside the king in the War of Three Hammers ages ago. We hold a proud legacy and should not be judged lightly.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

-- Earthen Curator
set @creature_entry = 60920;
set @description = ': Earthen Curator';
set @spell_list_id = 180056;

set @spellid_1 = 10391; -- Lightning Bolt
set @probability_1 = 100; 
set @casttarget_1 = 1; 
set @castflags_1 = 4;
set @delayinitialmin_1 = 0; 
set @delayinitialmax_1 = 0; 
set @delayrepeatmin_1 = 5; 
set @delayrepeatmax_1 = 5;

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
-- DAVENBURG NPC LIST
-- Commando Harwall <Kul Tiras> , display ID 18972 , level 51 elite, faction 1693, humanoid, weapon1 : 7327, quest/greeting flags, greeting text : "My job is to understand the enemy, and to find their weakpoints.\n\n I could comment on the many flaws of Stormwind but that is not why I am here.\n\n What is it I can do for you $R?
-- Darwin Holdfall <Kul Tiras>, display ID 18973 , level 45, faction 1693, humanoid, no weapon, quest/greeting flags, greeting text : "Stormwind was kind enough to offer us accomodations and a place to hold our Embassy. I feel it will be quite a while until the two kingdoms see eye to eye to stand together."
-- Kelly Vaulstone <Fisherman>, display ID 18975 , level 30, faction 1693, humanoid, weapon: 6256, quest/greeting flags, greeting text : "This harbor aint too shabby for fishing!"
-- Petty Officer Milldough <Kul Tiras>, display ID 18976 , level 50, faction 1693, humanoid, no weapon, quest/greeting flags, greeting text : "It can be difficult to control the rabble of sailors and the animosity between them and the marines.\n\n It is where Petty Officers like myself come in."
-- Quartermaster Alden <Kul Tiras>, display ID 18977 , level 52, faction 1693, humanoid, no weapon, quest/greeting/VENDOR flags, greeting text : "The Nation of Kul Tiras is generous to its loyal subjects and those that swear fealty.\n\n Our loyalties and dedication lay with the Kingdom of Lordaeron, and that of the Old Alliance.\n\n Where do your loyalties lay?
-- Sailor Borus <Kul Tiras>, display ID 18978 , level 41, faction 1693, humanoid, weapon 5392, quest/greeting flags, greeting text : "Stormwind, it isn't as bad as those in Boralus make it out to be."
-- Sailor Shalwynd <Kul Tiras>, display ID 18979 , level 41, faction 1693, humanoid, weapon 3368, quest/greeting flags, greeting text : "You do not know the sheer pleasure of being able to stretch your legs on dry land after such a long expedition."
-- Sailor Valia <Kul Tiras>, display ID 18980 , level 40, faction 1693, humanoid, no weapon, quest/greeting flags, greeting text : "What can I do for you mainlander?"
-- Vice Admiral Renhoff <Kul Tiras>, display ID 18981 , level 60 elite, faction 1693, humanoid, weapon 23505, weapon2 15335, quest/greeting flags, greeting text : "I have been sent on behalf of the Lord Admiral to engage in diplomacy with our southern neighbors.\n\n I have been curious to see if the nobility here are true to the old ways, and to see what respect they hold for the fallen sister kingdoms to the north.\n\n If Kul Tiras and Stormwind are to ever stand side by side then brutal truths must be laid out for all to understand bluntly.\n\n There is no truces to be had with Blackbloods, and no honor to be made standing alongside those that destroyed what once was."
-- Marine Dalus, display ID 18656, level 55, faction 1693, humanoid, weapon1 :4560, weapon 2: 4130, quest/greeting flags, greeting text : "It is not often I get to speak with a Mainlander."
-- Marine Hornby, display ID 18652, level 55, faction 1693, humanoid, weapon1 :4560, weapon 2: 4130, quest/greeting flags, greeting text : "The sea is harsh and filled with secrets, there is still more for us to explore, and more for expeditions to chart on maps.\n\n You can count on us finding the unveiled of this world."
-- Marine Larwell, display ID 18653, level 55, faction 1693, humanoid, weapon1 :4560, weapon 2: 4130, quest/greeting flags, greeting text : "I haven't been to Stormwind in a long time, its nice to see how much it has changed."
-- Deckmaster Javin, dispaly ID 18974, level 48, faction 1693, humanoid, weapon1 :1296, quest/greeting flags, greeting text : "You be standing on the Old Tide, ship of Kul Tiras, and I am the Deskmaster here.\n\n Do not cause me any issues on the boat, $C."
REPLACE INTO creature_template VALUES
(60926, 18972, 0, 0, 0, 0, 'Commando Harwall', 'Kul Tiras', 0, 51, 51, 7322, 7322, 2100, 0, 0, 1693, 3, 1, 1.14286, 0, 20, 5, 0, 1, 1, 290, 301, 0, 226, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 54.6056, 75.0827, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 127, 155, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60927, 18973, 0, 0, 0, 0, 'Darwin Holdfall', 'Kul Tiras', 0, 45, 45, 2217, 2217, 0, 0, 2725, 1693, 3, 1, 1.14714, 0, 18, 5, 0, 0, 1, 78, 95, 0, 204, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 84, 115, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60928, 18975, 0, 0, 0, 0, 'Kelly Vaulstone', 'Fisherman', 0, 30, 30, 1179, 1179, 0, 0, 1240, 1693, 3, 1, 1.14286, 0, 18, 5, 0, 0, 1, 47, 60, 0, 134, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 53, 74, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60929, 18976, 0, 0, 0, 0, 'Petty Officer Milldough', 'Kul Tiras', 0, 50, 50, 2990, 2990, 0, 0, 2958, 1693, 3, 1, 1.14286, 0, 18, 5, 0, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 103, 140, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60930, 18977, 0, 0, 0, 0, 'Quartermaster Alden', 'Kul Tiras', 0, 52, 52, 3082, 3082, 0, 0, 2669, 1693, 7, 1, 1.14286, 0, 20, 5, 0, 0, 1, 106, 136, 0, 234, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.4704, 96.8968, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 104, 141, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60931, 18978, 0, 0, 0, 0, 'Sailor Borus', 'Kul Tiras', 0, 41, 41, 1981, 1981, 0, 0, 2397, 1693, 3, 1, 1.14286, 0, 18, 5, 0, 0, 1, 85, 109, 0, 162, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 66, 91, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60932, 18979, 0, 0, 0, 0, 'Sailor Shalwynd', 'Kul Tiras', 0, 41, 41, 1981, 1981, 0, 0, 2397, 1693, 3, 1, 1.14286, 0, 18, 5, 0, 0, 1, 85, 109, 0, 162, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 66, 91, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60933, 18980, 0, 0, 0, 0, 'Sailor Valia', 'Kul Tiras', 0, 40, 40, 1752, 1752, 0, 0, 1890, 1693, 3, 1, 1.14286, 0, 18, 5, 0, 0, 1, 61, 78, 0, 156, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 56.672, 77.924, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60934, 18981, 0, 0, 0, 0, 'Vice Admiral Renhoff', 'Kul Tiras', 0, 60, 60, 7326, 7326, 0, 0, 3075, 1693, 3, 1, 1.14286, 0, 20, 5, 0, 1, 1, 789, 840, 0, 272, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 59.9488, 82.4296, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 416, 548, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60935, 18656, 0, 0, 0, 0, 'Marine Dalus', 'Kul Tiras', 0, 55, 55, 3643, 3643, 0, 0, 3272, 1693, 3, 1, 1.14286, 0, 20, 5, 0, 0, 1, 94, 118, 0, 254, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 71.2272, 97.9374, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 104, 141, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60936, 18652, 0, 0, 0, 0, 'Marine Hornby', 'Kul Tiras', 0, 55, 55, 3643, 3643, 0, 0, 3272, 1693, 3, 1, 1.14286, 0, 20, 5, 0, 0, 1, 94, 118, 0, 254, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 71.2272, 97.9374, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 104, 141, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60937, 18653, 0, 0, 0, 0, 'Marine Larwell', 'Kul Tiras', 0, 55, 55, 3643, 3643, 0, 0, 3272, 1693, 3, 1, 1.14286, 0, 20, 5, 0, 0, 1, 94, 118, 0, 254, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 71.2272, 97.9374, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 104, 141, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60938, 18974, 0, 0, 0, 0, 'Deckmaster Javin', '', 41107, 48, 48, 2800, 2800, 0, 0, 2386, 1693, 3, 1, 1.14286, 0, 18, 5, 0, 0, 1, 77, 96, 0, 220, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 62.8672, 86.4424, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 104, 141, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO creature_display_info_addon VALUES (18972, 0, 0, 0, 0);
REPLACE INTO creature_display_info_addon VALUES (18973, 0, 0, 0, 0);
REPLACE INTO creature_display_info_addon VALUES (18975, 0, 0, 0, 0);
REPLACE INTO creature_display_info_addon VALUES (18976, 0, 0, 0, 0);
REPLACE INTO creature_display_info_addon VALUES (18977, 0, 0, 0, 0);
REPLACE INTO creature_display_info_addon VALUES (18978, 0, 0, 0, 0);
REPLACE INTO creature_display_info_addon VALUES (18979, 0, 0, 0, 0);
REPLACE INTO creature_display_info_addon VALUES (18980, 0, 0, 0, 0);
REPLACE INTO creature_display_info_addon VALUES (18981, 0, 0, 0, 0);
REPLACE INTO creature_display_info_addon VALUES (18974, 0, 0, 0, 0);

set @equip_template = 20187; set @weapon_1 = 1296; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60938;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20186; set @weapon_1 = 4560; set @weapon_2 = 4130; set @weapon_3 = 0; set @creature = 60937;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20185; set @weapon_1 = 4560; set @weapon_2 = 4130; set @weapon_3 = 0; set @creature = 60936;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20184; set @weapon_1 = 4560; set @weapon_2 = 4130; set @weapon_3 = 0; set @creature = 60935;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20183; set @weapon_1 = 23505; set @weapon_2 = 15335; set @weapon_3 = 0; set @creature = 60934;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20182; set @weapon_1 = 3368; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60932;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20181; set @weapon_1 = 5392; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60931;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20180; set @weapon_1 = 6256; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60928;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20179; set @weapon_1 = 7327; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60926;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @gossip_menu_id = 41206; set @magic_number = 60938;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'You be standing on the Old Tide, ship of Kul Tiras, and I am the Deskmaster here.\n\nDo not cause me any issues on the boat, $C.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41205; set @magic_number = 60937;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'I haven\'t been to Stormwind in a long time, its nice to see how much it has changed.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41204; set @magic_number = 60936;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'The sea is harsh and filled with secrets, there is still more for us to explore, and more for expeditions to chart on maps.\n\nYou can count on us finding the unveiled of this world.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41203; set @magic_number = 60935;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'It is not often I get to speak with a Mainlander.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41202; set @magic_number = 60934;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'I have been sent on behalf of the Lord Admiral to engage in diplomacy with our southern neighbors.\n\nI have been curious to see if the nobility here are true to the old ways, and to see what respect they hold for the fallen sister kingdoms to the north.\n\nIf Kul Tiras and Stormwind are to ever stand side by side then brutal truths must be laid out for all to understand bluntly.\n\nThere is no truces to be had with Blackbloods, and no honor to be made standing alongside those that destroyed what once was.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41201; set @magic_number = 60933;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'What can I do for you mainlander?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41200; set @magic_number = 60932;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'You do not know the sheer pleasure of being able to stretch your legs on dry land after such a long expedition.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41199; set @magic_number = 60931;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Stormwind, it isn\'t as bad as those in Boralus make it out to be.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41198; set @magic_number = 60930;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'The Nation of Kul Tiras is generous to its loyal subjects and those that swear fealty.\n\nOur loyalties and dedication lay with the Kingdom of Lordaeron, and that of the Old Alliance.\n\nWhere do your loyalties lay?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41197; set @magic_number = 60929;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'It can be difficult to control the rabble of sailors and the animosity between them and the marines.\n\n It is where Petty Officers like myself come in.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41196; set @magic_number = 60928;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'This harbor aint too shabby for fishing!');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41195; set @magic_number = 60927;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Stormwind was kind enough to offer us accomodations and a place to hold our Embassy. I feel it will be quite a while until the two kingdoms see eye to eye to stand together.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41194; set @magic_number = 60926;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'My job is to understand the enemy, and to find their weakpoints.\n\nI could comment on the many flaws of Stormwind but that is not why I am here.\n\nWhat is it I can do for you $R?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;
-- Dustwallow NPC LIST
-- Deserter Exile <Daelin's Brigade> , display IDs 18934 + 18935, level 39-41, faction 16, humanoid, scale 1, weapon1 : 852, weapon2 : 6182 
-- Deserter Turncoat <Daelin's Brigade>, display ID 18936, level 40-42, faction 16, humanoid, scale 1, weapon 1 :4560, weapon2 : 18661 (Has 3420 Armor) 
-- Sellick Voss <Daelin's Brigade>, display ID 18937, level 43, faction 16, humanoid, scale 1, weapon 1 :1493, weapon2 7786 (has a 1.3x faster attack speed), on pull, say the following line. "Theramore was weak, to side with the Horde is betrayal after all who died! We will not be stopped so easily, the Vengeful Mariner will not forget!
-- Blackhorn Mystic, display ID 18930 + 18931 level 36-37, faction 16, humanoid, scale 1.3, weapon1 : 2013, has 1631 mana, casts 930 every 9 seconds
-- Blackhorn Warrior, display ID 18932 + 18933 level 37-38, faction 16, humanoid, scale 1.3, weapon1 : 11964
-- Targos Hatewind, display ID 18938, level 41, faction 16, humanoid, scale 1.45, weapon 5300
-- Asza , display ID 10584, level 32, faction 35, scale 1, dragonkin, no weapon, gossip/quest flags, greeting text : "<The whelp looks at you curiously.>"
-- Murloc Tadpole, display ID 15984, level 10, faction 35, humanoid, scale 0.5, quest/greeting flags, greeting text "Mmrmmgl"
-- Kraul Lookout, display ID 1963, level 37-38, faction 16, humanoid,  weapon 6333
-- Chieftain Razortusk, display id 6108, level 40, faction 16, humanoid, weapon 7873
-- Private Talmand, display id 11037, level 45, faction 894, humanoid, weapon 5085, gossip flags, gossip text: “We stand watch.”
-- Private Sleightor , display id 18807, level 45, faction 894, humanoid, weapon 4560, gossip flags, gossip text: "Oh, the things I would do for a bottle of Dalaran Red…"
-- Private Valnor, display id 3137, level 45, faction 894, humanoid, weapon 4560, gossip flags, gossip text: "I hate this swamp."
-- Disturbed Ghost, display ID 14594, level 35, faction 16, undead, scale 1, had ghost effect
-- Hedania Level 25 elite, faction 21, undead, display ID 8782
REPLACE INTO creature_template VALUES
(60939, 18934, 18935, 0, 0, 0, 'Deserter Exile', 'Daelin\'s Brigade', 0, 39, 41, 1828, 1902, 0, 0, 2033, 16, 0, 1, 1.14286, 0, 18, 5, 0, 0, 1, 72, 93, 0, 162, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 59.0304, 81.1668, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 71, 98, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60940, 18936, 0, 0, 0, 0, 'Deserter Turncoat', 'Daelin\'s Brigade', 0, 40, 42, 1902, 1981, 0, 0, 3420, 16, 0, 1, 1.14286, 0, 18, 5, 0, 0, 1, 77, 101, 0, 172, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 61.9344, 85.1598, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 74, 102, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60941, 18937, 0, 0, 0, 0, 'Sellick Voss', 'Daelin\'s Brigade', 0, 43, 43, 5148, 5148, 0, 0, 2414, 16, 0, 1, 1.14286, 0, 20, 5, 0, 1, 1, 153, 203, 0, 162, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 60.8462, 82.5551, 122, 7, 0, 60941, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 107, 534, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 'npc_sellick_voss'),
(60942, 18930, 18931, 0, 0, 0, 'Blackhorn Mystic', '', 0, 36, 37, 1468, 1536, 1631, 1631, 1480, 16, 0, 1, 1.14286, 1.3, 18, 5, 0, 0, 1, 51, 62, 0, 140, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 59, 83, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60943, 18932, 18933, 0, 0, 0, 'Blackhorn Warrior', '', 0, 37, 38, 1536, 1604, 0, 0, 1664, 16, 0, 1, 1.14286, 1.3, 18, 5, 0, 0, 1, 92, 109, 0, 148, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 29, 145, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60944, 18938, 0, 0, 0, 0, 'Targos Hatewind', '', 0, 41, 41, 1981, 1981, 0, 0, 2397, 16, 0, 1, 1.14286, 1.45, 18, 5, 0, 0, 1, 85, 109, 0, 162, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 66, 91, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60945, 10584, 0, 0, 0, 0, 'Asza', '', 0, 32, 32, 1743, 1743, 0, 0, 1304, 35, 3, 1, 1.14286, 0, 18, 5, 0, 0, 1, 51, 62, 0, 140, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 50, 70, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60946, 15984, 0, 0, 0, 0, 'Murloc Tadpole', '', 0, 10, 10, 198, 198, 0, 0, 455, 35, 3, 1, 1.14286, 0.5, 20, 5, 0, 0, 1, 13, 17, 0, 62, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 15.048, 20.691, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 9, 17, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60947, 1963, 0, 0, 0, 0, 'Kraul Lookout', '', 0, 37, 38, 1536, 1604, 0, 0, 1651, 16, 0, 1, 1.14286, 0, 18, 5, 0, 0, 1, 52, 65, 0, 148, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 7, 0, 60947, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 62, 86, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60948, 6108, 0, 0, 0, 0, 'Chieftain Razortusk', '', 0, 40, 40, 1752, 1752, 0, 0, 1890, 16, 0, 1, 1.14286, 0, 18, 5, 0, 0, 1, 61, 78, 0, 156, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 8, 0, 56.672, 77.924, 100, 7, 0, 60948, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 75, 97, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60949, 11037, 0, 0, 0, 0, 'Private Talmand', '', 0, 45, 45, 2217, 2217, 0, 0, 2725, 894, 1, 1, 1.14714, 0, 18, 5, 0, 0, 1, 78, 95, 0, 204, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 84, 115, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 'npc_private_q_shields_owner'),
(60950, 18807, 0, 0, 0, 0, 'Private Sleightor', '', 0, 45, 45, 2217, 2217, 0, 0, 2725, 894, 1, 1, 1.14714, 0, 18, 5, 0, 0, 1, 78, 95, 0, 204, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 84, 115, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 'npc_private_q_shields_owner'),
(60951, 3137, 0, 0, 0, 0, 'Private Valnor', '', 0, 45, 45, 2217, 2217, 0, 0, 2725, 894, 1, 1, 1.14714, 0, 18, 5, 0, 0, 1, 78, 95, 0, 204, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 84, 115, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 'npc_private_q_shields_owner'),
(60952, 14594, 0, 0, 0, 0, 'Disturbed Ghost', '', 0, 35, 35, 1342, 1342, 0, 0, 1373, 16, 0, 1, 1.14286, 0, 20, 5, 40, 0, 1, 51, 65, 0, 138, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 51.128, 70.301, 100, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9617, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60953, 2976, 0, 0, 0, 0, 'Paval Reethe', '', 0, 35, 35, 1342, 1342, 0, 0, 1149, 35, 0, 1, 1.14286, 0, 18, 5, 0, 0, 1, 51, 65, 0, 138, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 51.128, 70.301, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9617, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 4980, 0, 0, 0, 0, 2, 0, ''),
(60954, 8782, 0, 0, 0, 0, 'Hedania', '', 0, 25, 25, 2097, 2097, 0, 0, 1026, 21, 0, 1, 1.14286, 0, 20, 5, 0, 1, 1, 129, 166, 0, 110, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 35.1008, 48.2636, 100, 6, 0, 60954, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 137, 184, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO creature_display_info_addon VALUES (18931, 0, 0, 0, 0);
REPLACE INTO creature_display_info_addon VALUES (18933, 0, 0, 0, 0);
REPLACE INTO creature_display_info_addon VALUES (18934, 0, 0, 0, 0);
REPLACE INTO creature_display_info_addon VALUES (18935, 0, 0, 0, 0);
REPLACE INTO creature_display_info_addon VALUES (18936, 0, 0, 0, 0);
REPLACE INTO creature_display_info_addon VALUES (18937, 0, 0, 0, 0);
REPLACE INTO creature_display_info_addon VALUES (18930, 0, 0, 0, 0);
REPLACE INTO creature_display_info_addon VALUES (18932, 0, 0, 0, 0);
REPLACE INTO creature_display_info_addon VALUES (18938, 0, 0, 0, 0);

set @equip_template = 20198; set @weapon_1 = 4560; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60951;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20197; set @weapon_1 = 4560; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60950;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20196; set @weapon_1 = 5085; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60949;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20195; set @weapon_1 = 7873; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60948;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20194; set @weapon_1 = 6333; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60947;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20193; set @weapon_1 = 5300; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60944;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20192; set @weapon_1 = 11964; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60943;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20191; set @weapon_1 = 2013; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60942;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20190; set @weapon_1 = 1493; set @weapon_2 = 7786; set @weapon_3 = 0; set @creature = 60941;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20189; set @weapon_1 = 4560; set @weapon_2 = 18661; set @weapon_3 = 0; set @creature = 60940;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20188; set @weapon_1 = 852; set @weapon_2 = 6182; set @weapon_3 = 0; set @creature = 60939;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @gossip_menu_id = 41213; set @magic_number = 60916;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Long has it been since anyone has ventured to this place.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41212; set @magic_number = 60951;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'I hate this swamp.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41211; set @magic_number = 60950;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Oh, the things I would do for a bottle of Dalaran Red...');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41210; set @magic_number = 60949;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'We stand watch.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41208; set @magic_number = 60946;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Mmrmmgl?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41207; set @magic_number = 60945;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, '<The whelp looks at you curiously.>');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

-- Blackhoof Mystic
set @creature_entry = 60942;
set @description = ': Blackhoof Mystic';
set @spell_list_id = 180057;

set @spellid_1 = 930; -- Chain Lightning
set @probability_1 = 100; 
set @casttarget_1 = 1; 
set @castflags_1 = 4;
set @delayinitialmin_1 = 0; 
set @delayinitialmax_1 = 0; 
set @delayrepeatmin_1 = 9; 
set @delayrepeatmax_1 = 9;

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
-- Loot for Chieftain Razortusk.
REPLACE INTO creature_loot_template VALUES (60948, 1477, 0.28, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 1529, 0.4244, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 1705, 0.195, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 1708, 2.1906, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 1710, 1.491, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 1711, 0.46, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 1725, 0.0918, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 2289, 0.4, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 2290, 0.5, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 2592, 7.54, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 3396, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 3611, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 3612, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 3827, 0.5964, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 3830, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 3831, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 3832, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 3864, 0.1491, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 3866, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 3867, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 3868, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 3869, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 3870, 0.06, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 3872, 0.04, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 3873, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 3874, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 4297, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 4299, 0.04, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 4300, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 4306, 29.3268, 0, 1, 4, 0);
REPLACE INTO creature_loot_template VALUES (60948, 4338, 2.14, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 4350, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 4351, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 4352, 0.06, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 4353, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 4412, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 4414, 0.04, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 4416, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 4417, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 4539, 4.7483, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 4614, 0.0459, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 4634, 0.5276, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 5543, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 5774, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 5974, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 6044, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 6045, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 6211, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 6454, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 7084, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 7085, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 7086, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 7090, 0.04, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 7091, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 7092, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 7363, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 7364, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 7449, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 7450, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 7453, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 10424, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 10571, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 10573, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 10582, 0.0115, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 10584, 0.0229, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 10601, 0.04, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 11098, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 11164, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 11165, 0.04, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 11167, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 30031, 1, 0, -30031, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 30032, 0.025, 0, -30032, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 30033, 1, 0, -30033, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 30039, 5, 0, -30039, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 30040, 5, 0, -30040, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 30054, 1, 0, -30054, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 30055, 0.025, 0, -30055, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 30056, 1, 0, -30056, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 30057, 0.025, 0, -30057, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 30058, 1, 0, -30058, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 30059, 0.025, 0, -30059, 1, 0);
REPLACE INTO creature_loot_template VALUES (60948, 60810, -100, 0, 1, 1, 0);
-- Loot for Chieftain Razortusk Kraul Lookout.
REPLACE INTO creature_loot_template VALUES (60947, 1477, 0.28, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 1529, 0.4244, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 1705, 0.195, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 1708, 2.1906, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 1710, 1.491, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 1711, 0.46, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 1725, 0.0918, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 2289, 0.4, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 2290, 0.5, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 2592, 7.54, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 3396, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 3611, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 3612, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 3827, 0.5964, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 3830, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 3831, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 3832, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 3864, 0.1491, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 3866, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 3867, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 3868, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 3869, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 3870, 0.06, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 3872, 0.04, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 3873, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 3874, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 4297, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 4299, 0.04, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 4300, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 4306, 29.3268, 0, 1, 4, 0);
REPLACE INTO creature_loot_template VALUES (60947, 4338, 2.14, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 4350, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 4351, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 4352, 0.06, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 4353, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 4412, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 4414, 0.04, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 4416, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 4417, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 4539, 4.7483, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 4614, 0.0459, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 4634, 0.5276, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 5543, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 5774, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 5974, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 6044, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 6045, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 6211, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 6454, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 7084, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 7085, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 7086, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 7090, 0.04, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 7091, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 7092, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 7363, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 7364, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 7449, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 7450, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 7453, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 10424, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 10571, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 10573, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 10582, 0.0115, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 10584, 0.0229, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 10601, 0.04, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 11098, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 11164, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 11165, 0.04, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 11167, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 30031, 1, 0, -30031, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 30032, 0.025, 0, -30032, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 30033, 1, 0, -30033, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 30039, 5, 0, -30039, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 30040, 5, 0, -30040, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 30054, 1, 0, -30054, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 30055, 0.025, 0, -30055, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 30056, 1, 0, -30056, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 30057, 0.025, 0, -30057, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 30058, 1, 0, -30058, 1, 0);
REPLACE INTO creature_loot_template VALUES (60947, 30059, 0.025, 0, -30059, 1, 0);
-- Sellick Voss's loot.
REPLACE INTO creature_loot_template VALUES (60941, 60817, -100, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 1645, 2.409, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 1685, 0.0077, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 1710, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 1725, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 2772, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 2775, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 2838, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 3357, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 3818, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 3827, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 3832, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 3858, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 3864, 0.0193, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 3869, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 3874, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 3914, 0.06, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 3927, 4.7872, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 3928, 1.2912, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 4300, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 4305, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 4306, 9.7441, 0, 1, 2, 0);
REPLACE INTO creature_loot_template VALUES (60941, 4338, 23.8784, 0, 1, 2, 0);
REPLACE INTO creature_loot_template VALUES (60941, 4339, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 4416, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 4417, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 4419, 0.34, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 4421, 0.48, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 4422, 0.38, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 4424, 0.52, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 4599, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 4601, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 4602, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 4608, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 4625, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 4637, 0.1041, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 5974, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 6149, 1.32, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 7084, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 7085, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 7086, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 7453, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 7909, 0.054, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 7910, 0.0116, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 7911, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 7912, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 7971, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 7975, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 7976, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 7989, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 7990, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 7991, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 7992, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 7993, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 8029, 0.05, 0, 1, 1, 4);
REPLACE INTO creature_loot_template VALUES (60941, 8385, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 8386, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 8387, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 8389, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 8390, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 8831, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 9293, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 9295, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 9298, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 10300, 0.04, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 10301, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 10302, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 10312, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 10315, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 10320, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 10603, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 10604, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 10605, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 10606, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 11167, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 11202, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 11204, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 11208, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 11225, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 13068, 0.0039, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 30025, 0.5, 0, -30025, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 30026, 0.01, 0, -30026, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 30027, 0.5, 0, -30027, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 30028, 0.01, 0, -30028, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 30029, 0.5, 0, -30029, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 30030, 0.01, 0, -30030, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 30036, 0.0025, 0, -30036, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 30048, 2.5, 0, -30048, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 30049, 0.5, 0, -30049, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 30072, 0.5, 0, -30072, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 30073, 0.0025, 0, -30073, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 30074, 0.01, 0, -30074, 1, 0);
REPLACE INTO creature_loot_template VALUES (60941, 30075, 0.0025, 0, -30075, 1, 0);
