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
(60943, 18932, 18933, 0, 0, 0, 'Blackhorn Warrior', '', 0, 37, 38, 1536, 1604, 0, 0, 1664, 16, 0, 1, 1.14286, 1.3, 18, 5, 0, 0, 1, 92, 109, 0, 148, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 29, 145, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
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
-- Gelweg Darkbrow, display ID 18906, faction 35, level 46, humanoid, weapon 5291, vendor/quest/greeting flags, greeting text : "The desert be rife with opportunities, and chances to gain a little coin. I represent some interests across the ocean that are looking for rare and unique goods.\n\nPerhaps we can help eachother out, aye?\n\nOh, and uh, if you're looking for some cheddar, I got a bunch of it, they took my letter way too seriously." (Sells Fine Aged Cheddar)
-- Curator Fizwhizzle, display ID 16023, faction 474, level 50, humanoid, no weapon, quest/greeting flags, greeting text: Hello there, and welcome to the Steamwheedle Art Museum, make yourself right at home, and enjoy a few fine works from the community. (This npc needs a clickable box that says the following "Tell me more about the Art Museum.", when clicked, he will open the following pagetext : Ahem, I've been told to read this out to anyone inquiring further, some if it might make no sense, at least it doesn't to me, so here we go...\n\n "The Art located here is created by players on the server, and is a community outlet to host more in the future, the museum may expand or grow depending on contributions made! We would like to thank each and every person who has contributed or submitted such fabulous artwork. ~ Turtle Staff"\n\n See, it doesn't make much sense to me either.
-- Baggle Hackrust, display ID 7157, faction 474, level 44, humanoid, no weapon, quest flags
-- Ginlo Taxxo , display ID 7164, faction 474, level 49, humanoid, no weapon, quest flags
-- Technician Tixx, display ID 7109, level 25, faction 1682, weapon : 5956 ((IN THE MINING ANIMATION))
-- Technician Steelbolt, display ID 7192, level 25, faction 1682, quest/greeting flags, greeting text : "Can you believe the luck, the only two shredders we had working out in this neck of the woods went and broke down!\n\n Now I'm stuck here repairing with hardly any parts to speak of." ((THIS NPC NEEDS TO BE IN THE USE/CRAFT ANIMATION))
-- Head Technician Klazfit , display ID 7179, level 45, faction 1682, quest/greeting flags, greeting text : "I got sent from Sparkwater to look after this place, We got a lot of projects on the go around here, and us technician's make sure all the parts keep in working order.\n\n Anyway, what can I do for you?"
-- Fusemaster Blammo, display ID 7338, level 50, faction 1682, humanoid, quest/greeting flags, greeting text : "Boy howdy, have you ever seen anything so magnificient, so beautiful? This baby could blow a crater the size of Sparkwater wherever we light this fuse, and its my job to make sure we don't blow ourselves into smithereens!\n\n Oh, I anticipate the day Nazz gives the thumbs up to use this thing, it'll be the greatest explosion ever seen on Azeroth!"
-- Salrog, display ID 3744, level 36, faction 29, humanoid, quest flags, weapon : 11762
-- Artemus Halloway, display ID 4107, faction 68 , humanoid,  quest/greeting flags, greeting text : "This is the last place I thought I would end up, believe me, but the goblins spend well, and I have business here."
-- Shali Nosewrench <Trade Supplies> , display ID 10745, level 25, faction 1682, humanoid, VENDOR FLAGS, ((SELLS TRADE SUPPLIES))
-- Tanzig Wexlight <General Goods>, display ID 7058, level 25, faction 1682, humanoid, VENDOR FLAGS ((SELLS GENERAL GOODS))
-- Gig Xevno <Local Drunk>, display ID 7051, level 21, faction 1682, humanoid, greeting flags, greeting text : "Move it on pal, before you get me angry."
-- Treenza Fastfeet, display ID 11388, level 39, faction 1682, humanoid, quest/greeting flags, greeting text : "Hope you're enjoying the town, its much better to be working with the Durotar Labor Union then those goons at Venture Co."
-- Neekik Wazfinger <Innkeeper> , display ID 7130, level 22, faction 1682, humanoid, greeting flags, greeting text : "Welcome to Powder Town, hope you find whatever you're looking for here, or are just around to help out, make yourself comfortable." ((IS AN INNKEEPER))
-- Security Officer Mort Tozzlefume, display ID 7171, level 55, faction 1682, humanoid, greeting/quest flags, weapon : 10761, greeting text : "Why hello there, I got problems that need fixed, you look like someone that might be able to fix problems.\n\n Perhaps there is something we can do to help eachother out yeah?"
-- Powder Town Bruiser, display ID 11377, level 55, faction 1682, humanoid, weapon1 : 7945, weapon2 : 11586 ((IS A GUARD))
-- Bogpaw Truthsay, display ID 3197, level 22, faction 35, humanoid, scale 1 weapon: 35, quest/greeting flags, greeting text : "You help-help us yes? Bogpaw see that you help us with many problem-problem!"
-- Dagdag Mossbelt, display ID 714, level 19, faction 35, humanoid, scale 1.1, weapon 8196, quest/greeting flags : "No cause-cause trouble or me cut you!\n\n Me cut good, me cut best!"
-- Ikk-ikk Fenfur <Leatherworking Supplies>, display ID 714, level 20, faction 35 , humanoid, scale 1.2, weapon 5956, vendor/repair flags ((SELLS LEATHERWORKING SUPPLIES))
-- Rekk , display ID 714, level 8, faction 35, humanoid, scale 0.7, weapon 6256, vendor, ((SELLS Raw Bristle Whisker Catfish (6308))
-- Muckhowl , display ID 714, level 9, faction 35, humanoid, scale 0.8, quest/greeting flags, greeting text : "You there, yes yes, I come from swamp called wetlands, you heard of yes yes?\n\n Big leader Gowlfang used to stay here, look for help help, but now he is fighting to become leader of Mosshide!\n\n I here to help guide people to him."
-- NPC Gowlfang, make level 26 elite, equip with weapon1: 15231, change greeting text to the following : "Yes yes? What does $R want with Gowlfang?\n\n Gowlfang returns to Wetlands, Gowlfang be big-big leader here, and will reunite Mosshide yes yes!\n\n Gowlfang make strong tribe of gnoll-gnoll and you help-help!\n\n We do good yes yes!"
-- Melyndella , display ID 13672, faction 635, level 8, humanoid, scale 1, quest flags, has 452 mana
-- Kaylee , display ID 13672, faction 635, level 6, humanoid, scale 0.7, quest flags 
REPLACE INTO creature_template VALUES
(60955, 18906, 0, 0, 0, 0, 'Gelweg Darkbrow', NULL, 0, 46, 46, 2398, 2398, 0, 0, 2780, 35, 7, 1, 1.14286, 0, 18, 5, 0, 0, 1, 78, 95, 0, 208, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 87, 119, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '0'),
(60956, 16023, 0, 0, 0, 0, 'Curator Fizwhizzle', NULL, 0, 50, 50, 2990, 2990, 0, 0, 2958, 474, 3, 1, 1.14286, 0, 20, 5, 40, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60957, 7157, 0, 0, 0, 0, 'Baggle Hackrust', NULL, 0, 44, 44, 2117, 2117, 0, 0, 2625, 474, 2, 1, 1.14714, 0, 18, 5, 0, 0, 1, 78, 95, 0, 204, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 84, 115, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60958, 7164, 0, 0, 0, 0, 'Ginlo Taxxo', NULL, 0, 49, 49, 2672, 2672, 0, 0, 2944, 474, 2, 1, 1.14286, 0, 18, 5, 0, 0, 1, 85, 104, 0, 220, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 62.8672, 86.4424, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 98, 133, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60959, 7109, 0, 0, 0, 0, 'Technician Tixx', NULL, 0, 25, 25, 712, 712, 0, 0, 1026, 1682, 0, 1, 1.14286, 0, 18, 5, 0, 0, 1, 37, 46, 0, 106, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 39.5824, 54.4258, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 34, 50, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60960, 7192, 0, 0, 0, 0, 'Technician Steelbolt', NULL, 0, 25, 25, 712, 712, 0, 0, 1026, 1682, 3, 1, 1.14286, 0, 18, 5, 0, 0, 1, 37, 46, 0, 106, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 39.5824, 54.4258, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 34, 50, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60961, 7179, 0, 0, 0, 0, 'Head Technician Klazfit', NULL, 0, 45, 45, 2217, 2217, 0, 0, 2725, 1682, 3, 1, 1.14714, 0, 18, 5, 0, 0, 1, 78, 95, 0, 204, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 84, 115, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60962, 7338, 0, 0, 0, 0, 'Fusemaster Blammo', NULL, 0, 50, 50, 2990, 2990, 0, 0, 2958, 1682, 3, 1, 1.14286, 0, 20, 5, 40, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60963, 3744, 0, 0, 0, 0, 'Salrog', NULL, 0, 36, 36, 1468, 1468, 0, 0, 1480, 29, 2, 1, 1.14286, 0, 18, 5, 0, 0, 1, 51, 62, 0, 140, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 59, 83, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60964, 4107, 0, 0, 0, 0, 'Artemus Halloway', NULL, 0, 36, 36, 1468, 1468, 0, 0, 1480, 68, 3, 1, 1.14286, 0, 18, 5, 0, 0, 1, 51, 62, 0, 140, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 59, 83, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60965, 10745, 0, 0, 0, 0, 'Shali Nosewrench', 'Trade Supplies', 0, 25, 25, 712, 712, 0, 0, 1026, 1682, 4, 1, 1.14286, 0, 18, 5, 0, 0, 1, 37, 46, 0, 106, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 39.5824, 54.4258, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 34, 50, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60966, 7058, 0, 0, 0, 0, 'Tanzig Wexlight', 'General Goods', 0, 25, 25, 712, 712, 0, 0, 1026, 1682, 4, 1, 1.14286, 0, 18, 5, 0, 0, 1, 37, 46, 0, 106, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 39.5824, 54.4258, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 34, 50, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60967, 7051, 0, 0, 0, 0, 'Gig Xevno', 'Local Drunk', 0, 21, 21, 547, 547, 0, 0, 872, 1682, 1, 1, 1.14286, 0, 18, 5, 0, 0, 1, 27, 34, 0, 94, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 34, 49, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60968, 11388, 0, 0, 0, 0, 'Treenza Fastfeet', NULL, 0, 39, 39, 1677, 1677, 0, 0, 1834, 1682, 3, 1, 1.14286, 0, 18, 5, 0, 0, 1, 56, 69, 0, 152, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 66, 91, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60969, 7130, 0, 0, 0, 0, 'Neekik Wazfinger', 'Innkeeper', 0, 22, 22, 573, 573, 0, 0, 922, 1682, 133, 1, 1.14286, 0, 18, 5, 0, 0, 1, 70, 86, 0, 98, 1, 2500, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 35.6224, 48.9808, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 28, 42, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60970, 7171, 0, 0, 0, 0, 'Security Officer Mort Tozzlefume', NULL, 0, 55, 55, 3398, 3398, 0, 0, 4500, 1682, 3, 1, 1.14286, 0, 18, 5, 40, 0, 1, 141, 170, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60971, 11377, 0, 0, 0, 0, 'Powder Town Bruiser', NULL, 0, 55, 55, 3398, 3398, 0, 0, 4500, 1682, 0, 1, 1.14286, 0, 18, 5, 0, 0, 1, 141, 170, 0, 248, 1, 2000, 2000, 1, 36864, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 1, 714, 'EventAI', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60972, 3197, 0, 0, 0, 0, 'Bogpaw Truthsay', NULL, 0, 22, 22, 573, 573, 0, 0, 922, 35, 3, 1, 1.14286, 0, 18, 5, 0, 0, 1, 70, 86, 0, 98, 1, 2500, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 35.6224, 48.9808, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 28, 42, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60973, 714, 0, 0, 0, 0, 'Dagdag Mossbelt', NULL, 0, 19, 19, 510, 510, 0, 0, 765, 35, 3, 1, 1.14286, 1.1, 20, 5, 0, 0, 1, 36, 44, 0, 88, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 28.6704, 39.4218, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 21, 32, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60974, 714, 0, 0, 0, 0, 'Ikk-ikk Fenfur', 'Leatherworking Supplies', 0, 20, 20, 580, 580, 2000, 2000, 852, 35, 16388, 1, 1.14286, 1.2, 18, 5, 0, 0, 1, 37, 45, 0, 90, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 32.8944, 45.2298, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 27, 40, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60975, 714, 0, 0, 0, 0, 'Rekk', NULL, 0, 8, 8, 170, 170, 0, 0, 406, 35, 4, 1, 1.14286, 0.7, 20, 5, 0, 0, 1, 11, 15, 0, 60, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 15.2064, 20.9088, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 9, 17, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60976, 714, 0, 0, 0, 0, 'Muckhowl', NULL, 0, 9, 9, 176, 176, 0, 0, 20, 35, 3, 1, 1.14286, 0.8, 18, 5, 0, 0, 1, 9, 13, 0, 60, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 15.2064, 20.9088, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'eventai', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(91243, 3199, 0, 0, 0, 0, 'Gowlfang', '', 60018, 26, 26, 2250, 2250, 0, 0, 1574, 1682, 3, 1, 1.14286, 1.3, 20, 5, 0, 1, 1, 129, 166, 0, 110, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 35.1008, 48.2636, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 139, 186, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 10, 0, ''),
(60977, 13672, 0, 0, 0, 0, 'Melyndella', NULL, 0, 8, 8, 170, 170, 452, 452, 406, 635, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 11, 15, 0, 60, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 15.2064, 20.9088, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 9, 17, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60978, 13672, 0, 0, 0, 0, 'Kaylee', NULL, 0, 6, 6, 120, 120, 452, 452, 20, 635, 2, 1, 1.14286, 0.7, 20, 5, 0, 0, 1, 6, 8, 0, 54, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 10.296, 14.157, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 9, 17, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @equip_template = 20208; set @weapon_1 = 15231; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 91243;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20207; set @weapon_1 = 6256; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60975;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20206; set @weapon_1 = 5956; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60974;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20205; set @weapon_1 = 8196; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60973;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20204; set @weapon_1 = 35; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60972;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20203; set @weapon_1 = 7945; set @weapon_2 = 11586; set @weapon_3 = 0; set @creature = 60971;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20202; set @weapon_1 = 10761; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60970;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20201; set @weapon_1 = 11762; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60963;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20200; set @weapon_1 = 5956; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60959;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20199; set @weapon_1 = 5291; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60955;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @gossip_menu_id = 41227; set @magic_number = 60976;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'You there, yes yes, I come from swamp called wetlands, you heard of yes yes?\n\nBig leader Gowlfang used to stay here, look for help help, but now he is fighting to become leader of Mosshide!\n\nI here to help guide people to him.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41226; set @magic_number = 60973;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'No cause-cause trouble or me cut you!\n\nMe cut good, me cut best!');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41225; set @magic_number = 60972;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'You help-help us yes? Bogpaw see that you help us with many problem-problem!');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41224; set @magic_number = 60970;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Why hello there, I got problems that need fixed, you look like someone that might be able to fix problems.\n\nPerhaps there is something we can do to help eachother out yeah?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41223; set @magic_number = 60969;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Welcome to Powder Town, hope you find whatever you\'re looking for here, or are just around to help out, make yourself comfortable.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41222; set @magic_number = 60968;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Hope you\'re enjoying the town, its much better to be working with the Durotar Labor Union then those goons at Venture Co.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41221; set @magic_number = 60967;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Move it on pal, before you get me angry.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41220; set @magic_number = 60964;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'This is the last place I thought I would end up, believe me, but the goblins spend well, and I have business here.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41219; set @magic_number = 60962;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Boy howdy, have you ever seen anything so magnificient, so beautiful? This baby could blow a crater the size of Sparkwater wherever we light this fuse, and its my job to make sure we don\'t blow ourselves into smithereens!\n\nOh, I anticipate the day Nazz gives the thumbs up to use this thing, it\'ll be the greatest explosion ever seen on Azeroth!');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41218; set @magic_number = 60961;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'I got sent from Sparkwater to look after this place, We got a lot of projects on the go around here, and us technician\'s make sure all the parts keep in working order.\n\nAnyway, what can I do for you?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41217; set @magic_number = 60960;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Can you believe the luck, the only two shredders we had working out in this neck of the woods went and broke down!\n\nNow I\'m stuck here repairing with hardly any parts to speak of.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41215; set @magic_number = 60956;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Hello there, and welcome to the Steamwheedle Art Museum, make yourself right at home, and enjoy a few fine works from the community.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

replace into gossip_menu (entry, text_id, condition_id) VALUES (41216, 609560, '0'); 
replace into broadcast_text (entry, Male_Text) values (30036, 'Ahem, I\'ve been told to read this out to anyone inquiring further, some if it might make no sense, at least it doesn\'t to me, so here we go...\n\n"The Art located here is created by players on the server, and is a community outlet to host more in the future, the museum may expand or grow depending on contributions made! We would like to thank each and every person who has contributed or submitted such fabulous artwork. ~ Turtle Staff"\n\nSee, it doesn\'t make much sense to me either.');
replace into npc_text (ID, BroadcastTextID0) values (609560, 30036);

REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`, `condition_id`) VALUES (41215, 4, 0, 'Tell me more about the Art Museum.', 0, 1, 3, 41216, 0, 0, 0, 0, '', 0, 0);

set @gossip_menu_id = 41214; set @magic_number = 60955;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'The desert be rife with opportunities, and chances to gain a little coin. I represent some interests across the ocean that are looking for rare and unique goods.\n\nPerhaps we can help each other out, aye?\n\nOh, and uh, if you\'re looking for some cheddar, I got a bunch of it, they took my letter way too seriously.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

REPLACE INTO broadcast_text VALUES (91243, 'Yes yes? What does $R want with Gowlfang?\n\nGowlfang returns to Wetlands, Gowlfang be big-big leader here, and will reunite Mosshide yes yes!\n\nGowlfang make strong tribe of gnoll-gnoll and you help-help!\n\nWe do good yes yes!', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);
-- Rekk
REPLACE INTO npc_vendor VALUES (60975, 6308, 0, 0, 0, 0);
-- Ikk-ikk Fenfur
REPLACE INTO npc_vendor VALUES (60974, 2320, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60974, 2321, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60974, 2325, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60974, 2604, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60974, 2605, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60974, 4289, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60974, 4291, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60974, 4340, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60974, 4341, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60974, 4342, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60974, 6260, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60974, 6261, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60974, 7005, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60974, 8343, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60974, 10290, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60974, 14341, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60974, 50231, 0, 0, 0, 0);
-- Neekik Wazfinger
REPLACE INTO npc_vendor VALUES (60969, 159, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60969, 414, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60969, 422, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60969, 1179, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60969, 1205, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60969, 1645, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60969, 1707, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60969, 1708, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60969, 2070, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60969, 3927, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60969, 8766, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60969, 8932, 0, 0, 0, 0);
-- Tanzig Wexlight
REPLACE INTO npc_vendor VALUES (60966, 159, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60966, 1179, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60966, 1205, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60966, 2515, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60966, 2519, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60966, 2946, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60966, 3030, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60966, 3033, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60966, 3107, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60966, 3108, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60966, 3131, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60966, 3135, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60966, 3137, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60966, 4470, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60966, 4471, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60966, 4497, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60966, 4498, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60966, 6183, 0, 0, 0, 0);
-- Gelweg Darkbrow
REPLACE INTO npc_vendor VALUES (60955, 3927, 0, 0, 0, 0);
-- Shali Nosewrench
REPLACE INTO npc_vendor VALUES (60965, 2320, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60965, 2321, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60965, 2324, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60965, 2678, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60965, 2692, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60965, 2880, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60965, 2901, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60965, 3371, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60965, 3372, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60965, 3466, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60965, 3713, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60965, 3857, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60965, 4289, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60965, 4291, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60965, 4399, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60965, 4400, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60965, 5956, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60965, 6183, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60965, 6217, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60965, 6530, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60965, 6532, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60965, 50231, 0, 0, 0, 0);
-- Remove the following quests from the game: Kill-Kill Sagepaw!, Kill-Kill Mosshides!
delete from quest_template where entry in (55033,55034);
-- Carver Molsen
update creature_template set loot_id = 60878 where entry = 60878;
REPLACE INTO creature_loot_template VALUES (60878, 60840, -100, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 414, 5.156, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 818, 0.31, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 856, 0.023, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 858, 1.3892, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 915, -80, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 954, 0.17, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 955, 0.25, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 1179, 2.4363, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 1180, 0.24, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 1206, 1.126, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 1210, 1.05, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 1529, 0.27, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 1705, 0.987, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 1951, 3.5, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 2406, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 2409, 0.03, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 2455, 0.7789, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 2555, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 2589, 14.2832, 0, 1, 5, 0);
REPLACE INTO creature_loot_template VALUES (60878, 2592, 18.4202, 0, 1, 4, 0);
REPLACE INTO creature_loot_template VALUES (60878, 2601, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 2657, 0.0332, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 2771, 99.345, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 2836, 45.108, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 2881, 0.04, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 2882, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 2883, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 3012, 0.17, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 3610, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 4292, 0.03, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 4293, 0.03, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 4294, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 4345, 0.04, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 4346, 0.03, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 4347, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 4348, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 4349, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 4409, 0.04, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 4410, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 4694, 0.0383, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 4698, 0.07, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 4700, 0.0664, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 5498, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 5503, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 5504, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 5573, 0.046, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 5574, 0.0204, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 5578, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 5786, 1.03, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 5972, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 6344, 0.04, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 6347, 0.03, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 6348, 0.03, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 6375, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 6390, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 6391, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 6588, 0.0128, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 6716, 0.04, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 7997, 2.2856, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 10316, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 10405, 0.046, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 10407, 0.05, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 11038, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 11039, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 11081, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 14170, 0.04, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 30009, 1, 0, -30009, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 30010, 0.025, 0, -30010, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 30011, 1, 0, -30011, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 30012, 0.025, 0, -30012, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 30022, 1, 0, -30022, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 30023, 0.025, 0, -30023, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 30024, 1, 0, -30024, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 30037, 5, 0, -30037, 1, 0);
REPLACE INTO creature_loot_template VALUES (60878, 30038, 1, 0, -30038, 1, 0);
-- Bramblethorn Quilboar, display ID 6093, level 15-16, faction 16, humanoid, scale 1.1, weapon1 : 13820
-- Bramblethorn Boar, display ID 3027, level 15-16, faction 16, beast, scale 1, casts 7371 at start of fight
-- Bramblethorn Thornweaver, display ID 6077, level 16-17, humanoid, scale 1.1 , waepon1 14706 (Has 623 mana, casts 782 on self at start of fight, casts 5178 every 3 seconds)
-- Bramblethorn Trapper, display ID 1274, level 16-18, humanoid, scale 1.2, weapon1 : 15396 , casts 13608 every 10 seconds
-- Bramblethorn Quilguard, display ID 6109 level 17-19, scale 1.4 humanoid weapon1 : 11763, casts 13737 every 12 seconds
-- Bramblethorn Spirit, display ID 6114 level 16-18, undead, weapon1 : 23556, casts 6909 every 12 seconds)
-- Bramblethorn Haunted, display ID 6105 level 16-18, undead, weapon1 : 1010  (Has 490 mana, casts 705 every 3 seconds)
-- Gorras Thorncrusher, display ID 6115 level 20, scale 1.5, undead, weapon1 : 15418 , casts 19632 every 8 seconds, casts 15716 every 30 seconds
-- Hemnock the Wise, display ID 6116, level 20, scale 1.3 humanoid, weapon1 : 15444 (Has 1026 mana, casts 23206 every 8 seconds, casts 8045 every 7 seconds)
REPLACE INTO creature_template VALUES
(60979, 6093, 0, 0, 0, 0, 'Bramblethorn Quilboar', NULL, 0, 15, 16, 328, 356, 0, 0, 689, 16, 0, 1, 1.14286, 1.1, 18, 5, 0, 0, 1, 23, 30, 0, 76, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 27.2272, 37.4374, 100, 7, 0, 60979, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 17, 27, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60980, 3027, 0, 0, 0, 0, 'Bramblethorn Boar', NULL, 0, 15, 16, 328, 356, 0, 0, 689, 16, 0, 1, 1.14286, 0, 18, 5, 0, 0, 1, 23, 30, 0, 76, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 27.2272, 37.4374, 100, 1, 0, 60980, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 17, 27, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60981, 6077, 0, 0, 0, 0, 'Bramblethorn Thornweaver', NULL, 0, 16, 17, 325, 350, 623, 623, 625, 16, 0, 1, 1.14286, 1.1, 18, 5, 0, 0, 1, 23, 30, 0, 80, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 28.6704, 39.4218, 100, 7, 0, 60981, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 18, 29, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60982, 1274, 0, 0, 0, 0, 'Bramblethorn Trapper', NULL, 0, 16, 18, 386, 417, 0, 0, 782, 16, 0, 1, 1.14286, 1.2, 18, 5, 0, 0, 1, 27, 34, 0, 84, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 28.6704, 39.4218, 100, 7, 0, 60982, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 20, 31, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60983, 6109, 0, 0, 0, 0, 'Bramblethorn Quilguard', NULL, 0, 17, 19, 417, 449, 0, 0, 800, 16, 0, 1, 1.14286, 1.4, 18, 5, 0, 0, 1, 27, 34, 0, 88, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 28.6704, 39.4218, 100, 7, 0, 60983, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 24, 36, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60984, 6114, 0, 0, 0, 0, 'Bramblethorn Spirit', NULL, 0, 16, 18, 386, 417, 0, 0, 782, 16, 0, 1, 1.14286, 0, 18, 5, 0, 0, 1, 27, 34, 0, 84, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 28.6704, 39.4218, 100, 6, 0, 60984, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9617, 20, 31, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60985, 6105, 0, 0, 0, 0, 'Bramblethorn Haunted', NULL, 0, 16, 18, 386, 417, 490, 490, 782, 16, 0, 1, 1.14286, 0, 18, 5, 0, 0, 1, 27, 34, 0, 84, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 28.6704, 39.4218, 100, 6, 0, 60985, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 20, 31, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60986, 6115, 0, 0, 0, 0, 'Gorras Thorncrusher', NULL, 0, 20, 20, 629, 629, 0, 0, 852, 16, 0, 1, 1.14286, 1.5, 18, 5, 0, 0, 1, 26, 22, 0, 90, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 30.096, 41.382, 100, 6, 0, 60986, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 28, 41, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60987, 6116, 0, 0, 0, 0, 'Hemnock the Wise', NULL, 0, 20, 20, 629, 629, 1026, 1026, 852, 16, 0, 1, 1.14286, 1.3, 18, 5, 0, 0, 1, 26, 22, 0, 90, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 30.096, 41.382, 100, 7, 0, 60987, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 28, 41, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @equip_template = 20216; set @weapon_1 = 15444; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60987;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20215; set @weapon_1 = 15418; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60986;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20214; set @weapon_1 = 1010; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60985;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20213; set @weapon_1 = 23556; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60984;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20212; set @weapon_1 = 11763; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60983;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20211; set @weapon_1 = 15396; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60982;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20210; set @weapon_1 = 14706; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60981;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20209; set @weapon_1 = 13820; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60979;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

-- Hemnock the Wise
set @creature_entry = 60987;
set @description = 'Bramblethorn: Hemnock the Wise';
set @spell_list_id = 180065;

set @spellid_1 = 23206; -- Chain Lightning
set @probability_1 = 100; 
set @casttarget_1 = 1; 
set @castflags_1 = 4;
set @delayinitialmin_1 = 0; 
set @delayinitialmax_1 = 0; 
set @delayrepeatmin_1 = 8; 
set @delayrepeatmax_1 = 8;

set @spellid_2 = 8045; -- Earth Shock
set @probability_2 = 100; 
set @casttarget_2 = 1; 
set @castflags_2 = 4;
set @delayinitialmin_2 = 3; 
set @delayinitialmax_2 = 3; 
set @delayrepeatmin_2 = 7; 
set @delayrepeatmax_2 = 7;

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


-- Gorras Thorncrusher
set @creature_entry = 60986;
set @description = 'Bramblethorn: Gorras Thorncrusher';
set @spell_list_id = 180064;

set @spellid_1 = 19632; -- Cleave
set @probability_1 = 100; 
set @casttarget_1 = 1; 
set @castflags_1 = 4;
set @delayinitialmin_1 = 0; 
set @delayinitialmax_1 = 0; 
set @delayrepeatmin_1 = 8; 
set @delayrepeatmax_1 = 8;

set @spellid_2 = 15716; -- Enrage
set @probability_2 = 100; 
set @casttarget_2 = 1; 
set @castflags_2 = 4;
set @delayinitialmin_2 = 5; 
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

-- Bramblethorn Haunted
set @creature_entry = 60985;
set @description = 'Bramblethorn: Bramblethorn Haunted';
set @spell_list_id = 180063;

set @spellid_1 = 705; -- Shadow Bolt
set @probability_1 = 100; 
set @casttarget_1 = 1; 
set @castflags_1 = 4;
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

-- Bramblethorn Spirit
set @creature_entry = 60984;
set @description = 'Bramblethorn: Bramblethorn Spirit';
set @spell_list_id = 180062;

set @spellid_1 = 6909; -- Curse of Thorns
set @probability_1 = 100; 
set @casttarget_1 = 1; 
set @castflags_1 = 4;
set @delayinitialmin_1 = 0; 
set @delayinitialmax_1 = 0; 
set @delayrepeatmin_1 = 12; 
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

-- Bramblethorn Quilguard
set @creature_entry = 60983;
set @description = 'Bramblethorn: Bramblethorn Quilguard';
set @spell_list_id = 180061;

set @spellid_1 = 13737; -- Mortal Strike
set @probability_1 = 100; 
set @casttarget_1 = 1; 
set @castflags_1 = 4;
set @delayinitialmin_1 = 0; 
set @delayinitialmax_1 = 0; 
set @delayrepeatmin_1 = 12; 
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

-- Bramblethorn Trapper
set @creature_entry = 60982;
set @description = 'Bramblethorn: Bramblethorn Trapper';
set @spell_list_id = 180060;

set @spellid_1 = 13608; -- Hooked Net
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

-- Bramblethorn Thornweaver
set @creature_entry = 60981;
set @description = 'Bramblethorn: Bramblethorn Thornweaver';
set @spell_list_id = 180059;

set @spellid_1 = 782; -- Thorns
set @probability_1 = 100; 
set @casttarget_1 = 0; 
set @castflags_1 = 0;
set @delayinitialmin_1 = 0; 
set @delayinitialmax_1 = 0; 
set @delayrepeatmin_1 = 600; 
set @delayrepeatmax_1 = 600;

set @spellid_2 = 5178; -- Wrath
set @probability_2 = 100; 
set @casttarget_2 = 1; 
set @castflags_2 = 4;
set @delayinitialmin_2 = 1; 
set @delayinitialmax_2 = 1; 
set @delayrepeatmin_2 = 3; 
set @delayrepeatmax_2 = 3;

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

-- Bramblethorn Boar
set @creature_entry = 60980;
set @description = 'Bramblethorn: Bramblethorn Boar';
set @spell_list_id = 180058;

set @spellid_1 = 7371; -- Boar Charge
set @probability_1 = 100; 
set @casttarget_1 = 1; 
set @castflags_1 = 4;
set @delayinitialmin_1 = 0; 
set @delayinitialmax_1 = 0; 
set @delayrepeatmin_1 = 600; 
set @delayrepeatmax_1 = 600;

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
-- Hemnock the Wise
REPLACE INTO creature_loot_template VALUES (60987, 6661, 0.01, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60987, 30010, 0.01, 0, -30010, 1, 0);
REPLACE INTO creature_loot_template VALUES (60987, 30012, 0.01, 0, -30012, 1, 0);
REPLACE INTO creature_loot_template VALUES (60987, 30023, 0.01, 0, -30023, 1, 0);
REPLACE INTO creature_loot_template VALUES (60987, 804, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60987, 857, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60987, 2449, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60987, 2453, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60987, 2881, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60987, 2883, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60987, 3356, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60987, 4293, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60987, 4294, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60987, 4349, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60987, 5543, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60987, 5575, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60987, 5972, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60987, 6211, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60987, 6391, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60987, 6454, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60987, 6663, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60987, 7364, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60987, 11038, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60987, 15313, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60987, 14169, 0.04, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60987, 15496, 0.0633, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60987, 1705, 0.08, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60987, 14368, 0.08, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60987, 1206, 0.18, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60987, 15019, 0.1898, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60987, 1478, 0.32, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60987, 954, 0.42, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60987, 1712, 0.46, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60987, 30009, 0.5, 0, -30009, 1, 0);
REPLACE INTO creature_loot_template VALUES (60987, 30011, 0.5, 0, -30011, 1, 0);
REPLACE INTO creature_loot_template VALUES (60987, 30022, 0.5, 0, -30022, 1, 0);
REPLACE INTO creature_loot_template VALUES (60987, 30024, 0.5, 0, -30024, 1, 0);
REPLACE INTO creature_loot_template VALUES (60987, 3012, 0.54, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60987, 3385, 0.9488, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60987, 929, 1.3915, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60987, 30008, 2.5, 0, -30008, 1, 0);
REPLACE INTO creature_loot_template VALUES (60987, 1205, 2.6565, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60987, 4306, 3.8583, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60987, 4538, 4.2378, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60987, 2589, 11.3219, 0, 1, 3, 0);
REPLACE INTO creature_loot_template VALUES (60987, 2592, 23.7824, 0, 1, 2, 0);
-- Gorras Thorncrusher
REPLACE INTO creature_loot_template VALUES (60986, 6661, 0.01, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60986, 30010, 0.01, 0, -30010, 1, 0);
REPLACE INTO creature_loot_template VALUES (60986, 30012, 0.01, 0, -30012, 1, 0);
REPLACE INTO creature_loot_template VALUES (60986, 30023, 0.01, 0, -30023, 1, 0);
REPLACE INTO creature_loot_template VALUES (60986, 804, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60986, 857, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60986, 2449, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60986, 2453, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60986, 2881, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60986, 2883, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60986, 3356, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60986, 4293, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60986, 4294, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60986, 4349, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60986, 5543, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60986, 5575, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60986, 5972, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60986, 6211, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60986, 6391, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60986, 6454, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60986, 6663, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60986, 7364, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60986, 11038, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60986, 15313, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60986, 14169, 0.04, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60986, 15496, 0.0633, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60986, 1705, 0.08, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60986, 14368, 0.08, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60986, 1206, 0.18, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60986, 15019, 0.1898, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60986, 1478, 0.32, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60986, 954, 0.42, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60986, 1712, 0.46, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60986, 30009, 0.5, 0, -30009, 1, 0);
REPLACE INTO creature_loot_template VALUES (60986, 30011, 0.5, 0, -30011, 1, 0);
REPLACE INTO creature_loot_template VALUES (60986, 30022, 0.5, 0, -30022, 1, 0);
REPLACE INTO creature_loot_template VALUES (60986, 30024, 0.5, 0, -30024, 1, 0);
REPLACE INTO creature_loot_template VALUES (60986, 3012, 0.54, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60986, 3385, 0.9488, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60986, 929, 1.3915, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60986, 30008, 2.5, 0, -30008, 1, 0);
REPLACE INTO creature_loot_template VALUES (60986, 1205, 2.6565, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60986, 4306, 3.8583, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60986, 4538, 4.2378, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60986, 2589, 11.3219, 0, 1, 3, 0);
REPLACE INTO creature_loot_template VALUES (60986, 2592, 23.7824, 0, 1, 2, 0);
-- Bramblethorn Haunted
REPLACE INTO creature_loot_template VALUES (60985, 414, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 774, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 785, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 818, 0.12, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 856, 0.0121, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 858, 1.2506, 0, 1, 2, 0);
REPLACE INTO creature_loot_template VALUES (60985, 954, 0.38, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 955, 0.56, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 1179, 2.4525, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 1180, 0.54, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 1206, 0.12, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 1210, 0.38, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 2287, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 2406, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 2407, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 2408, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 2409, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 2447, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 2449, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 2450, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 2452, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 2455, 0.6637, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 2553, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 2555, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 2589, 18.5358, 0, 1, 3, 0);
REPLACE INTO creature_loot_template VALUES (60985, 2592, 19.2885, 0, 1, 2, 0);
REPLACE INTO creature_loot_template VALUES (60985, 2601, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 2657, 0.0202, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 2770, 0.08, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 2771, 0.06, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 2835, 0.06, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 2836, 0.04, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 2881, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 2882, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 2883, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 2996, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 3012, 0.36, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 3311, 0.0243, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 3356, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 3393, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 3394, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 3610, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 4292, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 4293, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 4294, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 4345, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 4346, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 4347, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 4348, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 4349, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 4408, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 4409, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 4410, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 4537, 9.18, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 4541, 0.004, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 4605, 0.04, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 5498, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 5503, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 5573, 0.0202, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 5574, 0.0121, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 5578, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 5972, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 6271, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 6342, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 6344, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 6347, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 6348, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 6375, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 6390, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 6391, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 6661, 0.01, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 6663, 0.06, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 6716, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 7288, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 10316, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 11038, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 11039, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 30020, 0.5, 0, -30020, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 30021, 0.5, 0, -30021, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 30022, 0.5, 0, -30022, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 30024, 0.5, 0, -30024, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 30037, 2.5, 0, -30037, 1, 0);
REPLACE INTO creature_loot_template VALUES (60985, 30038, 0.5, 0, -30038, 1, 0);
-- Bramblethorn Spirit
REPLACE INTO creature_loot_template VALUES (60984, 414, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 774, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 785, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 818, 0.12, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 856, 0.0121, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 858, 1.2506, 0, 1, 2, 0);
REPLACE INTO creature_loot_template VALUES (60984, 954, 0.38, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 955, 0.56, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 1179, 2.4525, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 1180, 0.54, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 1206, 0.12, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 1210, 0.38, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 2287, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 2406, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 2407, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 2408, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 2409, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 2447, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 2449, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 2450, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 2452, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 2455, 0.6637, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 2553, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 2555, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 2589, 18.5358, 0, 1, 3, 0);
REPLACE INTO creature_loot_template VALUES (60984, 2592, 19.2885, 0, 1, 2, 0);
REPLACE INTO creature_loot_template VALUES (60984, 2601, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 2657, 0.0202, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 2770, 0.08, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 2771, 0.06, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 2835, 0.06, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 2836, 0.04, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 2881, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 2882, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 2883, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 2996, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 3012, 0.36, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 3311, 0.0243, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 3356, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 3393, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 3394, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 3610, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 4292, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 4293, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 4294, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 4345, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 4346, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 4347, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 4348, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 4349, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 4408, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 4409, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 4410, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 4537, 9.18, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 4541, 0.004, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 4605, 0.04, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 5498, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 5503, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 5573, 0.0202, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 5574, 0.0121, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 5578, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 5972, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 6271, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 6342, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 6344, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 6347, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 6348, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 6375, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 6390, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 6391, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 6661, 0.01, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 6663, 0.06, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 6716, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 7288, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 10316, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 11038, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 11039, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 30020, 0.5, 0, -30020, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 30021, 0.5, 0, -30021, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 30022, 0.5, 0, -30022, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 30024, 0.5, 0, -30024, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 30037, 2.5, 0, -30037, 1, 0);
REPLACE INTO creature_loot_template VALUES (60984, 30038, 0.5, 0, -30038, 1, 0);
-- Bramblethorn Quilguard
REPLACE INTO creature_loot_template VALUES (60983, 414, 0.0035, 0, 3, 3, 0);
REPLACE INTO creature_loot_template VALUES (60983, 14169, 0.0035, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 14728, 0.007, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 856, 0.0105, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 5573, 0.014, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 5574, 0.014, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 2657, 0.0175, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 15496, 0.0175, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 765, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 785, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 2287, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 2406, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 2407, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 2408, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 2409, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 2447, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 2449, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 2450, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 2452, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 2453, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 2553, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 2555, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 2601, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 2775, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 2836, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 2881, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 2882, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 2883, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 2996, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 3355, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 3356, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 3393, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 3394, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 3610, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 4292, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 4293, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 4294, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 4345, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 4346, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 4347, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 4348, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 4349, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 4408, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 4409, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 4410, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 4541, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 4592, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 4605, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 4957, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 5498, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 5503, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 5578, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 5972, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 6271, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 6342, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 6344, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 6347, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 6348, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 6375, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 6390, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 6391, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 6716, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 7288, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 10316, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 11038, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 11039, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 11081, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 14368, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 15019, 0.028, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 2771, 0.04, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 6661, 0.04, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 6663, 0.04, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 2835, 0.08, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 818, 0.12, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 2770, 0.12, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 1206, 0.18, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 3012, 0.34, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 954, 0.38, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 1210, 0.4, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 30009, 0.5, 0, -30009, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 30022, 0.5, 0, -30022, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 30024, 0.5, 0, -30024, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 30038, 0.5, 0, -30038, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 955, 0.52, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 1180, 0.54, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 2455, 0.6953, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 858, 1.429, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 1179, 2.3339, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 30037, 2.5, 0, -30037, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 4537, 9.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60983, 2589, 18.0386, 0, 1, 3, 0);
REPLACE INTO creature_loot_template VALUES (60983, 2592, 19.3697, 0, 1, 2, 0);
-- Bramblethorn Trapper
REPLACE INTO creature_loot_template VALUES (60982, 414, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 774, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 785, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 818, 0.12, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 856, 0.0121, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 858, 1.2506, 0, 1, 2, 0);
REPLACE INTO creature_loot_template VALUES (60982, 954, 0.38, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 955, 0.56, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 1179, 2.4525, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 1180, 0.54, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 1206, 0.12, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 1210, 0.38, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 2287, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 2406, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 2407, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 2408, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 2409, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 2447, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 2449, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 2450, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 2452, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 2455, 0.6637, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 2553, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 2555, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 2589, 18.5358, 0, 1, 3, 0);
REPLACE INTO creature_loot_template VALUES (60982, 2592, 19.2885, 0, 1, 2, 0);
REPLACE INTO creature_loot_template VALUES (60982, 2601, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 2657, 0.0202, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 2770, 0.08, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 2771, 0.06, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 2835, 0.06, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 2836, 0.04, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 2881, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 2882, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 2883, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 2996, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 3012, 0.36, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 3311, 0.0243, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 3356, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 3393, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 3394, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 3610, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 4292, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 4293, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 4294, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 4345, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 4346, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 4347, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 4348, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 4349, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 4408, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 4409, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 4410, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 4537, 9.18, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 4541, 0.004, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 4605, 0.04, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 5498, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 5503, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 5573, 0.0202, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 5574, 0.0121, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 5578, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 5972, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 6271, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 6342, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 6344, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 6347, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 6348, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 6375, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 6390, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 6391, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 6661, 0.01, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 6663, 0.06, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 6716, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 7288, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 10316, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 11038, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 11039, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 30020, 0.5, 0, -30020, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 30021, 0.5, 0, -30021, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 30022, 0.5, 0, -30022, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 30024, 0.5, 0, -30024, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 30037, 2.5, 0, -30037, 1, 0);
REPLACE INTO creature_loot_template VALUES (60982, 30038, 0.5, 0, -30038, 1, 0);
-- Bramblethorn Thornweaver
REPLACE INTO creature_loot_template VALUES (60981, 414, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 774, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 785, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 818, 0.12, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 856, 0.0121, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 858, 1.2506, 0, 1, 2, 0);
REPLACE INTO creature_loot_template VALUES (60981, 954, 0.38, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 955, 0.56, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 1179, 2.4525, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 1180, 0.54, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 1206, 0.12, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 1210, 0.38, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 2287, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 2406, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 2407, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 2408, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 2409, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 2447, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 2449, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 2450, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 2452, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 2455, 0.6637, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 2553, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 2555, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 2589, 18.5358, 0, 1, 3, 0);
REPLACE INTO creature_loot_template VALUES (60981, 2592, 19.2885, 0, 1, 2, 0);
REPLACE INTO creature_loot_template VALUES (60981, 2601, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 2657, 0.0202, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 2770, 0.08, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 2771, 0.06, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 2835, 0.06, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 2836, 0.04, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 2881, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 2882, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 2883, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 2996, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 3012, 0.36, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 3311, 0.0243, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 3356, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 3393, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 3394, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 3610, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 4292, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 4293, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 4294, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 4345, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 4346, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 4347, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 4348, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 4349, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 4408, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 4409, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 4410, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 4537, 9.18, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 4541, 0.004, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 4605, 0.04, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 5498, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 5503, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 5573, 0.0202, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 5574, 0.0121, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 5578, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 5972, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 6271, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 6342, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 6344, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 6347, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 6348, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 6375, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 6390, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 6391, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 6661, 0.01, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 6663, 0.06, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 6716, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 7288, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 10316, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 11038, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 11039, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 30020, 0.5, 0, -30020, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 30021, 0.5, 0, -30021, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 30022, 0.5, 0, -30022, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 30024, 0.5, 0, -30024, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 30037, 2.5, 0, -30037, 1, 0);
REPLACE INTO creature_loot_template VALUES (60981, 30038, 0.5, 0, -30038, 1, 0);
-- Bramblethorn Boar
REPLACE INTO creature_loot_template VALUES (60980, 768, 0.12, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 769, 81.626, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 771, 25.6911, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 774, 0.88, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 805, 0.25, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 818, 0.64, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 828, 0.25, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 856, 0.75, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 1210, 0.12, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 2406, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 2447, 0.12, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 2449, 0.06, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 2553, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 2555, 0.06, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 2598, 0.18, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 2770, 0.26, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 2835, 0.14, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 3171, 40.813, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 3279, 0.08, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 3280, 0.3252, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 3281, 0.3252, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 3284, 0.4878, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 3285, 0.1626, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 3286, 0.1626, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 3289, 0.1626, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 3290, 0.06, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 3303, 0.06, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 3609, 0.2, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 3642, 0.14, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 3644, 0.08, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 3649, 0.1626, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 3650, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 4292, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 4408, 0.06, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 4563, 0.18, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 4668, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 4669, 0.1626, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 4671, 0.08, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 4672, 0.24, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 4674, 0.12, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 4675, 0.3252, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 4680, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 4686, 0.14, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 4687, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 4692, 0.08, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 5571, 0.25, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 5572, 0.25, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 5573, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 5574, 0.08, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 6271, 0.06, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 6342, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 7288, 0.06, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 8181, 0.08, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 14086, 0.4878, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 14089, 0.26, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 14093, 0.1626, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 14095, 0.24, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 14098, 0.12, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 14099, 0.18, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 14102, 0.12, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 14110, 0.08, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 14115, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 14116, 0.1626, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 15004, 0.12, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 15005, 0.18, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 15006, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 15008, 0.2, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 15013, 0.1626, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 15015, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 15297, 0.38, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 15299, 0.12, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 15300, 0.06, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 15301, 0.1626, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 15302, 0.1626, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 15472, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 15473, 0.14, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 15476, 0.18, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 15478, 0.18, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 15480, 0.12, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 15481, 0.1626, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 15482, 0.08, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 15483, 0.14, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 15484, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 30019, 0.5, 0, -30019, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 30020, 0.5, 0, -30020, 1, 0);
REPLACE INTO creature_loot_template VALUES (60980, 30021, 0.5, 0, -30021, 1, 0);		 
-- Bramblethorn Quilboar
REPLACE INTO creature_loot_template VALUES (60979, 2406, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60979, 2408, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60979, 2447, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60979, 2553, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60979, 2555, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60979, 2598, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60979, 2996, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60979, 3610, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60979, 4409, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60979, 4541, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60979, 4605, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60979, 5573, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60979, 5574, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60979, 6271, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60979, 6342, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60979, 6344, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60979, 6347, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60979, 6518, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60979, 2775, 0.03, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60979, 6661, 0.03, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60979, 118, 0.06, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60979, 4408, 0.06, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60979, 4681, 0.06, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60979, 3311, 0.0615, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60979, 14116, 0.0615, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60979, 2287, 0.08, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60979, 2657, 0.08, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60979, 6663, 0.08, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60979, 774, 0.12, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60979, 3304, 0.12, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60979, 14115, 0.12, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60979, 15013, 0.12, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60979, 15300, 0.12, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60979, 15490, 0.12, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60979, 4693, 0.1229, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60979, 4687, 0.16, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60979, 1210, 0.26, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60979, 3013, 0.28, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60979, 955, 0.3, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60979, 2835, 0.34, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60979, 2770, 0.38, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60979, 1180, 0.42, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60979, 1181, 0.46, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60979, 30020, 0.5, 0, -30020, 1, 0);
REPLACE INTO creature_loot_template VALUES (60979, 30021, 0.5, 0, -30021, 1, 0);
REPLACE INTO creature_loot_template VALUES (60979, 30024, 0.5, 0, -30024, 1, 0);
REPLACE INTO creature_loot_template VALUES (60979, 30038, 0.5, 0, -30038, 1, 0);
REPLACE INTO creature_loot_template VALUES (60979, 2455, 0.5532, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60979, 818, 0.64, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60979, 856, 0.75, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60979, 858, 1.1678, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60979, 1179, 1.7824, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60979, 30018, 2.5, 0, -30018, 1, 0);
REPLACE INTO creature_loot_template VALUES (60979, 4537, 7.84, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60979, 2589, 32.6982, 0, 1, 3, 0);
-- Bael Hardul Mountaineer <Explorer's League> , display ID 3870, level 55 guard, faction 55, humanoid, weapon1 : 12776
-- 
-- Borrin Dustshoulder <General Goods>, display ID 3432, level 20, faction 55, humanoid, weapon 1 : 12862
-- 
-- Darrak Redbrand <Redbrand Estate>, display ID 1400 , level 36, faction 55, humanoid, weapon1 : 1938, weapon 2 : 2081, quest/greeting flags, greeting text : "There is always adventure to be had, especially out in the far frontiers."
-- 
-- Brundah Cliffbrow <Innkeeper>, display ID 1841 , level 20, faction 55, humanoid, quest/greeting/vendor flags , greeting text : "Welcome, make yourself comfortable and at home, we have plenty of ale and lodging should you need a rest." ((SELLS COMMON FOOD/WATER ITEMS))
-- 
-- Throki Cliffbrow <Barkeep>, display ID 10693 , level 20, faction 55, humanoid, vendor flags ((SELLS ALE/ALCHOHOL) 
-- 
-- Grumnir Battlebeard <Explorers' League>, display ID 18986 , level 46, faction 55, quest/greeting flags, greeting text : "I've known Whitepeak ever since my time serving Ironforge.\n\n I'm certain he could use my experience and expertise out here, especially so far from home."
-- 
-- Mountaineer Truthforge <Explorers' League>, display ID 18992 , level 58, faction 55, humanoid, weapon1 : 60719, quest/greeting flags, greeting text : "We are far in hostile territory, practically surrounded by enemies. It is best to keep our whits about us and be ready for a fight.\n\n Are you looking to assist us here in Bael Hardul?"
-- 
-- Unilda Thunderstone <Explorers' League>, display ID 3063 , level 26, faction 55
-- 
-- Prospector Flinthammer <Explorers' League>, display ID 4595, level 37, faction 55, humanoid, weapon1 : 2901, quest/greeting flags, greeting text : "Kalimdor is surely to be full of rich and rare minerals that we don't often see on the Eastern Kingdoms and I'm sure of it, I just need to find what I'm looking for, that's all."
REPLACE INTO creature_template VALUES
(60988, 3870, 0, 0, 0, 0, 'Bael Hardul Mountaineer', 'Explorer\'s League', 3356, 55, 55, 4667, 4667, 0, 0, 4292, 55, 1, 1, 1.14286, 0, 18, 5, 0, 0, 1, 240, 260, 0, 90, 1, 2000, 2000, 1, 36864, 0, 0, 0, 0, 0, 0, 31.504, 43.318, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'GuardAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 525312, 0, '');

set @equip_template = 20217; set @weapon_1 = 12776; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60988;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

-- Lead Explorer Whitepeak <Explorers' League>, display ID 18989 , level 50, faction 55, humanoid, weapon1 : 60522, quest/greeting flags, greeting text : "Welcome to Bael Hardul, this place was left here from the time of the Third War.\n\n Us dwarves contributed to help the Alliance during those times, battling against orc and demon alike until the unification and the battle at Mount Hyjal.\n\n This place was left abandoned, we've only just recently arrived to call it home for our future expeditions.\n\n We could certainly use the help if you're willing to offer assistance."

-- Maloran Oakbranch, display ID 4180, level 23, faction 80, humanoid, quest/greeting flags, greeting text : "I am an emissary from Stonetalon Peak, and something of a guide to help Whitepeak and his kin traverse these lands without disturbing the natural order."
-- 
-- Spigol Kneebolt, display ID 3607, level 24, faction 64, humanoid, quest/greeting flags, greeting text : "I haven't ever been this far west! I'm excited to try some of my long time experiments now that I am free from scrutiny."
-- 
-- Engineer Tansi Sparkfuse, display ID 10569, level 35, faction 64, humanoid, weapon1 : 60544, quest/greeting flags, greeting text : "The life of an engineer, I thought I would be doing invention, but I mostly am a glorified mechanic helping fix broken devices and machinery.\n\n Oh well, atleast I'm working with tools."
-- 
-- Farmer Segwar Ironback, display ID 1849, level 17, faction 55, humanoid, weapon : 1485 quest/greeting flags, greeting text : "Do you know how long that farm took to fertilize?!\n\n <The dwarf is visibly upset>\n\n All that preparation just for some vultures to come and ruin everything. 
-- ---
-- Orman Granitemantle <Trade Supplies>, display ID 3434, level 20, faction 55, humanoid, weapon1 : 12856 vendor flags ((SELLS TRADE SUPPLIES))
-- 
-- Dugin Coalborn <Blacksmith> , display ID 3513, level 18, faction 55, humanoid, weapon1 : 5956, vendor/repair flags, ((Sells basic armor))
-- 
-- Garwen Loadstone <Explorers' League>, display ID 18984, level 25, faction 55, humanoid, quest/greeting flags, greeting text : "The Explorers' League is always looking for help, we are often stretched too thin to carry out our motivations and goals."
-- 
-- Begwynn Blackmallet <Leatherworking Supplies> , display ID 18982, level 30 , faction 55, humanoid, vendor flags, ((SELLS LEATHERWORKING SUPPLIES))
-- 
-- Harlek Vaultshield <Gyrocopter Pilot> , display ID 18988, level 32, faction 55, humanoid,  quest/greeting flags, greeting text : "The skies be calling my name but I can't be answering!\n\n The bloody flying machine went and broke down, and now I'm grounded like the rest of the peasantry.\n\n You know a thing about Gyrocranked Fizz-wobbled engines?"
-- 
-- Tarlegg Redbrand <Redbrand Estate>, display ID 18998, level 41, faction 55, humanoid, quest flags
-- 
-- Belwyth Redbrand <Redbrand Estate>, display ID 3313, level 50, faction 55, humanoid, quest/greeting flags, greeting text : "Why hello there, is there anything I can do for you?"
-- 
-- Gimle Redbrand <Redbrand Estate> , display ID 18985, level 56 elite, faction 55, humanoid, weapon1 : 15271, quest/greeting flags, greeting text : "I wouldn't mess with the Redbrand if I were ye."
-- 
-- Torwyn Battlebeard <Redbrand Historian> - display ID 18999, level 44, faction 55, humanoid, weapon1 : 12742, quest/greeting flags, greeting text : "Our history is rich and full of many tales, we once served as the right hand to the Bronzebeard, but there have been many terrible occurances as of the past generations.\n\n I have been looking for assistance on collecting many of our lost chronicles, do you think you can help us?"
-- 
-- Halfdan Coalborn <Redbrand Estate> , display ID 18987, level 56 elite, faction 55, humanoid, weapon1 : 14874, quest/greeting flags, greeting text : "I have been chosen as a champion to the Redbrand, to defend their kin and fight on their behalf.\n\n I suggest you do not cross in their path $C."
-- 
-- Magna Runecleave <Redbrand Estate> , display ID 18990, level 56 elite, faction 55, humanoid, weapon : 12883, quest/greeting flags, greeting text : "I am solemnly sworn to defend the interests of my lord."
-- 
-- Sailor Hylreth <Kul Tiras>, display ID 18994, level 15, faction 1693, humanoid ,  quest/greeting flags , greeting text : "The south isn't so bad after all, good ale, and a chance to stretch my weary sea legs from the long journey.\n\n What can I do for you mainlander?"
-- 
-- Sailor Capewind <Kul Tiras>, display ID 18995, level 12, faction 1693, humanoid, quest/greeting flags, greeting text : "<Sailor Capewind looks over you curiously>\n\n Is there something that you need, or are you just intrigued by the tabard.\n\n Never seen an islander before?
-- 
-- Sailor Brewen <Kul Tiras> display ID 18996, level 14, faction 1693, humanoid,  quest/greeting flags, greeting text : "All this money I've saved up, no better time to spend it then right now aye?" \n\n <Sailor Brewen laughs>
-- 
-- Sailor Pardol <Kul Tiras> display ID 18997, level 13, faction 1693, humanoid,  quest/greeting flags, greeting text : "You better back off before we have a problem, understood?
-- 
-- Emissary Godwin Valorcall <Kul Tiras Diplomat> , display ID 18983, level 50, faction 1693, humanoid,  quest/greeting flags, greeting text : "The ambitions and desires of Kul Tiras are a complicated matter, our goal here is to determine the true value of these southereners, and to see if mainlanders can truly be trusted.\n\n Should the nobility from Stormwind prove themselves loyal to the old ways and old causes, then perhaps there may be a future of cooperation.\n\n We shall see in time where the heart of Stormwind is rightly at."

-- set @gossip_menu_id = 41227; set @magic_number = 60976;
-- replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
-- replace into broadcast_text (entry, Male_Text) values (@magic_number, 'You there, yes yes, I come from swamp called wetlands, you heard of yes yes?\n\nBig leader Gowlfang used to stay here, look for help help, but now he is fighting to become leader of Mosshide!\n\nI here to help guide people to him.');
-- replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
-- update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;