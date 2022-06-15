-- Troll Hunter Penthar, display ID 18901, level 50, scale 1, humanoid, faction 12, greeting/quest flags, greeting text : "Arathor has long been at war with the trolls, and we shall be the ones to end it."
-- Darlen Darkgrin, display ID 18902, level 52 elite, scale 1, humanoid, faction 54, weapon 60552, (Has 18712 HP, deals 350-450 damage, casts 17915 every 10 seconds), drops the following loot 60552, 60553, 60554 under the same loot table , all with a 33% drop (Only 1 item of these can drop per death))
-- Corrosis, display ID 5497, level 52 elite, scale 1.8, elemental, faction 54 (Has 17903 HP, deals 550-650 Nature damage, casts 24099 every 2 minutes, casts 21971 every 10 seconds)
-- Hateforge Excavator, display ID 18903, 18904  level 47-48 elite, scale 1, humanoid, faction 54, weapon 2901
-- Hateforge Geologist, display ID 18905, 18906, level 49-51 elite, scale 1, humanoid, faction 54, weapon 15105, 2301 mana, casts 10150 every 10 seconds
-- Morgrim Firepike, display ID 18907, level 50, scale 1, humanoid, faction 35, weapon1 : 2901 greeting/quest flags, greeting text : "I put in a lot of work within Shadowforge, to think it all meant nothing."
-- Orvak Sternrock, display ID 18908, level 52 elite, scale 1, humanoid, faction 35, weapon1 : 1938, greeting/quest flags, greeting text: "Exiled, you believe that?!\n\n I was the foreman that looked after the Shadowforge Miner's Union. For years I carved the tunnels of the city itself and this is the thanks I get? They said I was lucky to have survived my failures. No doubt they expected me and my group to just die off to some Blackrock scum.\n\n They will pay for this." 
-- Radgan Deepblaze, display ID 18909, level 45, scale 1, humanoid, faction 35, weapon 0 , greeting/quest flags, greeting text : "Oh, been loyal to ol' Orvak' me whole life, they tossed me out with the others, and we're all that remain."
-- Raz'gol Deadtusk, display ID 18910, level 57, scale 1, humanoid, faction 40, weapon 12949
-- Slaver Vilegrip, display ID 18911, level 51 elite, scale 1, humanoid, faction 54, weapon1 : 1829, weapon2 852 (Has 7322 HP)
-- Ambassador Gessendar, display ID 8329, level 53 elite, scale 1.4, weapon1 : 11838, (Has 20133 HP, deals 300-450 fire damage, 4500 Mana, casts 2602 every 15 seconds, casts 18833 every 10 seconds, casts 18809 every 20 seconds, unstunnable, unslowable, unfearable, unpoly, ETC)
REPLACE INTO creature_template VALUES
(60827, 18901, 0, 0, 0, 'Troll Hunter Penthar', '', 0, 50, 50, 2990, 2990, 0, 0, 2958, 12, 3, 1, 1.14286, 0, 20, 5, 40, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 54, 0, 0, 0, 0, 0, 0, ''),
(60828, 18902, 0, 0, 0, 'Darlen Darkgrin', '', 0, 52, 52, 18712, 18712, 0, 0, 3140, 54, 0, 1, 1.14286, 0, 20, 5, 0, 1, 1, 350, 450, 0, 226, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 54.6056, 75.0827, 100, 7, 0, 60828, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 127, 155, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60829, 5497, 0, 0, 0, 'Corrosis', '', 0, 52, 52, 17903, 17903, 0, 0, 3140, 54, 0, 1, 1.14286, 1.8, 20, 5, 0, 1, 1, 550, 650, 4, 226, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 54.6056, 75.0827, 100, 4, 0, 60829, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 127, 155, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60830, 18903, 18904, 0, 0, 'Hateforge Excavator', '', 0, 47, 48, 4179, 4179, 0, 0, 2432, 54, 0, 1, 1.14286, 0, 20, 5, 0, 1, 1, 273, 338, 0, 226, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 54.6056, 75.0827, 100, 7, 0, 60830, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 127, 155, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60831, 18905, 18906, 0, 0, 'Hateforge Geologist', '', 0, 49, 51, 4179, 4400, 2301, 2301, 2432, 54, 0, 1, 1.14286, 0, 20, 5, 0, 1, 1, 364, 392, 0, 226, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 54.6056, 75.0827, 100, 7, 0, 60831, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 127, 155, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60832, 18907, 0, 0, 0, 'Morgrim Firepike', '', 0, 50, 50, 2990, 2990, 0, 0, 2958, 35, 3, 1, 1.14286, 0, 20, 5, 40, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60833, 18908, 0, 0, 0, 'Orvak Sternrock', '', 0, 52, 52, 6876, 6876, 0, 0, 2432, 35, 3, 1, 1.14286, 0, 20, 5, 40, 1, 1, 451, 501, 0, 226, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 54.6056, 75.0827, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 127, 155, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60834, 18909, 0, 0, 0, 'Radgan Deepblaze', '', 0, 45, 45, 2217, 2217, 0, 0, 2725, 35, 3, 1, 1.14714, 0, 20, 5, 40, 0, 1, 78, 95, 0, 204, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 84, 115, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60835, 18910, 0, 0, 0, 'Raz\'gol Deadtusk', '', 0, 57, 57, 3790, 3790, 0, 0, 1754, 40, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 101, 125, 0, 262, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 72.688, 99.946, 100, 7, 0, 60835, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 130, 175, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60836, 18911, 0, 0, 0, 'Slaver Vilegrip', '', 0, 51, 52, 7322, 7322, 2100, 2100, 2232, 54, 0, 1, 1.14286, 0, 20, 5, 0, 1, 1, 290, 301, 0, 226, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 54.6056, 75.0827, 100, 7, 0, 60836, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 127, 155, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60837, 8329, 0, 0, 0, 'Ambassador Gessendar', '', 0, 53, 53, 20133, 20133, 4500, 4500, 3650, 54, 0, 1, 1.14286, 1.4, 20, 5, 100, 1, 1, 300, 450, 2, 244, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 69.696, 95.832, 100, 7, 0, 60837, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 116, 157, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 2764783451, 0, 2654216, 0, '');

set @equip_template = 20129; set @weapon_1 = 11838; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60837;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20128; set @weapon_1 = 1829; set @weapon_2 = 852; set @weapon_3 = 0; set @creature = 60836;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20127; set @weapon_1 = 12949; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60835;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20126; set @weapon_1 = 1938; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60833;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20125; set @weapon_1 = 2901; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60832;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20124; set @weapon_1 = 15105; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60831;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20123; set @weapon_1 = 2901; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60830;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20122; set @weapon_1 = 60552; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60828;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @gossip_menu_id = 41153; set @magic_number = 60834;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Oh, been loyal to ol\' Orvak\' me whole life, they tossed me out with the others, and we\'re all that remain.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41152; set @magic_number = 60833;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Exiled, you believe that?!\n\nI was the foreman that looked after the Shadowforge Miner\'s Union. For years I carved the tunnels of the city itself and this is the thanks I get? They said I was lucky to have survived my failures. No doubt they expected me and my group to just die off to some Blackrock scum.\n\nThey will pay for this.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41151; set @magic_number = 60832;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'I put in a lot of work within Shadowforge, to think it all meant nothing.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41150; set @magic_number = 60827;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Arathor has long been at war with the trolls, and we shall be the ones to end it.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

-- Ambassador Gessendar
set @creature_entry = 60837;
set @description = 'HATEFORGE QUARRY: Ambassador Gessendar';
set @spell_list_id = 180038;

set @spellid_1 = 2602; -- Fire Shield IV
set @probability_1 = 100; 
set @casttarget_1 = 17;
set @castflags_1 = 0;
set @delayinitialmin_1 = 0; 
set @delayinitialmax_1 = 0; 
set @delayrepeatmin_1 = 15; 
set @delayrepeatmax_1 = 15;

set @spellid_2 = 18833; -- Firebolt
set @probability_2 = 100;
set @casttarget_2 = 1; 
set @castflags_2 = 4;
set @delayinitialmin_2 = 2; 
set @delayinitialmax_2 = 2; 
set @delayrepeatmin_2 = 10; 
set @delayrepeatmax_2 = 10;

set @spellid_3 = 18809; -- Pyroblast
set @probability_3 = 100; 
set @casttarget_3 = 1; 
set @castflags_3 = 4;
set @delayinitialmin_3 = 6; 
set @delayinitialmax_3 = 6; 
set @delayrepeatmin_3 = 20; 
set @delayrepeatmax_3 = 20;

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
update creature_template set spell_list_id = @spell_list_id, ai_name = 'EventAI', script_name = '', spell_id1 = 2602, spell_id2 = 18833, spell_id3 = 18809 
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
update creature_spells set targetparam2_1 = 2602 where entry = 180038;

-- Hateforge Geologist
set @creature_entry = 60831;
set @description = 'HATEFORGE QUARRY: Hateforge Geologist';
set @spell_list_id = 180037;

set @spellid_1 = 10150; -- Fireball
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
update creature_template set spell_list_id = @spell_list_id, ai_name = 'EventAI', script_name = '', spell_id1 = 10150, spell_id2 = 0, spell_id3 = 0 
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

-- Corrosis
set @creature_entry = 60829;
set @description = 'HATEFORGE QUARRY: Corrosis';
set @spell_list_id = 180036;

set @spellid_1 = 24099; -- Poison Bolt Volley
set @probability_1 = 100; 
set @casttarget_1 = 1; 
set @castflags_1 = 4;
set @delayinitialmin_1 = 0; 
set @delayinitialmax_1 = 0; 
set @delayrepeatmin_1 = 120; 
set @delayrepeatmax_1 = 120;

set @spellid_2 = 21971; -- Poison Bolt
set @probability_2 = 100;
set @casttarget_2 = 1; 
set @castflags_2 = 4;
set @delayinitialmin_2 = 3; 
set @delayinitialmax_2 = 5; 
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
update creature_template set spell_list_id = @spell_list_id, ai_name = 'EventAI', script_name = '', spell_id1 = 24099, spell_id2 = 21971, spell_id3 = 0 
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

-- Darlen Darkgrin
set @creature_entry = 60828;
set @description = 'HATEFORGE QUARRY: Darlen Darkgrin';
set @spell_list_id = 180035;

set @spellid_1 = 17915; -- Decrease Mana Cost - Arcane
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
update creature_template set spell_list_id = @spell_list_id, ai_name = 'EventAI', script_name = '', spell_id1 = 17915, spell_id2 = 0, spell_id3 = 0 
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

REPLACE INTO creature_loot_template VALUES
(60828, 60552, 33, 0, 1, 1, 0),
(60828, 60553, 33, 0, 1, 1, 0),
(60828, 60554, 33, 0, 1, 1, 0);

REPLACE INTO creature_display_info_addon VALUES
(18901, 0, 0, 0, 0),
(18902, 0, 0, 0, 0),
(18903, 0, 0, 0, 0),
(18904, 0, 0, 0, 0),
(18905, 0, 0, 0, 0),
(18906, 0, 0, 0, 0),
(18907, 0, 0, 0, 0),
(18908, 0, 0, 0, 0),
(18909, 0, 0, 0, 0),
(18910, 0, 0, 0, 0),
(18911, 0, 0, 0, 0);
-- Ahnja Summerwind <General Goods>, display ID 18889, level 20, scale 1.25, humanoid, faction 104, vendor/greeting/quest flags, greeting text : "May your journies guide you to interesting places, what can I do for you?" (please have her sell general goods)
-- Brave Cloudhorn, display ID 18890, level 55, scale 1.35, humanoid, faction 104, weapon1 : 80814
-- Brave Runebrace, display ID 18891, level 55, scale 1.35, humanoid, faction 104, weapon1 : 80814
-- Kolgo Highmane <Roost Master> , display ID 18892, level 40, scale 1.35, humanoid, faction 104, weapon1 : 13338 , greeting/quest flags, greeting text : "Welcome to Red Cloud Roost, It is here we prepare many of the new and young wyvern to live as loyal companions to the Horde. If they are not trained properly they can become unruly, and savage. \n\n You may find many untamed wyvern within Stonetalon Mountains if you desire to see just how vicious they can become."
-- Trainer Sinopa, display ID 18893, level 25, scale 1.25, humanoid, faction 104, weapon1 : 5306, greeting/quest flags, greeting text : "I have been training the wyvern here for some time now, making sure that they keep their primal instincts in check."
-- Trainer Tokala, display ID 18894, level 25, scale 1.35, humanoid, faction 104, weapon1 : 5306, greeting/quest flags, greeting text : "Being new around here certainly has its ups and downs, at the least I learn from the best."
-- Skyrider , display ID 2298, scale 0.6, beast , faction 104
-- Bluffclaw, display ID 2298, scale 1.1 , beast , faction 104
-- Sunchaser, display ID 2298, scale 1.3, beast , faction 104
-- Brave Proudspear, display ID 18895, level 50, scale 1.35, humanoid, faction 104, weapon 12986, greeting/quest flags, greeting text : "These damned Quillboar are always stronger than I anticipate, never underestimate a foe."
-- Elder Pyrestrider <Spirit Walker>, display ID 18896 , level 40, scale 1.35, humanoid,  faction 104, greeting/quest flags, greeting text : "It is up to us to ensure that the spirits transition to the world beyond. We are to watch over them, and to keep their memories and experiences passed down from generation, to generation. In a way, we are the keepers of the past, and the present."
-- Kiona Stonefeather <Spirit Walker>, display ID 18897, level 35, scale 1.25, humanoid, faction 104, greeting/quest flags, greeting text : "You can always feel the spirits no matter where you are, take comfort in knowing that your ancestors will guide the path ahead."
-- Metahnze Hawkdreamer <Spirit Walker>, display ID 18898, level 35, scale 1.35, humanoid, faction 104, greeting/quest flags, greeting text : "Too see, is to believe."
-- Sokahn Truthwalker <Spirit Walker>, display ID -18899, level 35, scale 1.35, humanoid, faction 104, greeting/quest flags, greeting text : "Do not fear what comes next, rejoice to share this experience with those around you."
REPLACE INTO creature_template VALUES
(60813, 18889, 0, 0, 0, 'Ahnja Summerwind', 'General Goods', 0, 20, 20, 629, 629, 0, 0, 852, 104, 7, 1, 1.14286, 1.25, 20, 5, 40, 0, 1, 26, 22, 0, 90, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 30.096, 41.382, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60814, 18890, 0, 0, 0, 'Brave Cloudhorn', '', 0, 55, 55, 3643, 3643, 0, 0, 3272, 104, 0, 1, 1.14286, 1.35, 20, 5, 40, 0, 1, 94, 118, 0, 254, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 71.2272, 97.9374, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60815, 18891, 0, 0, 0, 'Brave Runebrace', '', 0, 55, 55, 3643, 3643, 0, 0, 3272, 104, 0, 1, 1.14286, 1.35, 20, 5, 40, 0, 1, 94, 118, 0, 254, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 71.2272, 97.9374, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60816, 18892, 0, 0, 0, 'Kolgo Highmane', 'Roost Master', 0, 40, 40, 2628, 2628, 0, 0, 1964, 104, 3, 1, 1.14286, 1.35, 20, 5, 40, 0, 1, 57, 70, 0, 156, 1, 1600, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 67, 93, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60817, 18893, 0, 0, 0, 'Trainer Sinopa', '', 0, 25, 25, 712, 712, 0, 0, 1009, 104, 3, 1, 1.14286, 1.25, 18, 5, 40, 0, 1, 31, 40, 0, 106, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 38.72, 53.24, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60818, 18894, 0, 0, 0, 'Trainer Tokala', '', 0, 25, 25, 712, 712, 0, 0, 1009, 104, 3, 1, 1.14286, 1.35, 18, 5, 40, 0, 1, 31, 40, 0, 106, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 38.72, 53.24, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60819, 2298, 0, 0, 0, 'Skyrider', '', 0, 25, 25, 712, 712, 0, 0, 1009, 104, 0, 1, 1.14286, 0.6, 18, 5, 40, 0, 1, 31, 40, 0, 106, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 38.72, 53.24, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60820, 2298, 0, 0, 0, 'Bluffclaw', '', 0, 25, 25, 712, 712, 0, 0, 1009, 104, 0, 1, 1.14286, 1.1, 18, 5, 40, 0, 1, 31, 40, 0, 106, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 38.72, 53.24, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60821, 2298, 0, 0, 0, 'Sunchaser', '', 0, 25, 25, 712, 712, 0, 0, 1009, 104, 0, 1, 1.14286, 1.3, 18, 5, 40, 0, 1, 31, 40, 0, 106, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 38.72, 53.24, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60822, 18895, 0, 0, 0, 'Brave Proudspear', '', 0, 50, 50, 2990, 2990, 0, 0, 2958, 104, 3, 1, 1.14286, 1.35, 20, 5, 40, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 54, 0, 0, 0, 0, 0, 0, ''),
(60823, 18896, 0, 0, 0, 'Elder Pyrestrider', 'Spirit Walker', 0, 40, 40, 2628, 2628, 0, 0, 1964, 104, 3, 1, 1.14286, 1.35, 20, 5, 40, 0, 1, 57, 70, 0, 156, 1, 1600, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 67, 93, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60824, 18897, 0, 0, 0, 'Kiona Stonefeather', 'Spirit Walker', 0, 35, 35, 1403, 1403, 0, 0, 1427, 104, 3, 1, 1.14286, 1.25, 18, 5, 0, 0, 1, 50, 62, 0, 140, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60825, 18898, 0, 0, 0, 'Metahnze Hawkdreamer', 'Spirit Walker', 0, 35, 35, 1403, 1403, 0, 0, 1427, 104, 3, 1, 1.14286, 1.35, 18, 5, 0, 0, 1, 50, 62, 0, 140, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60826, 18899, 0, 0, 0, 'Sokahn Truthwalker', 'Spirit Walker', 0, 35, 35, 1403, 1403, 0, 0, 1427, 104, 3, 1, 1.14286, 1.35, 18, 5, 0, 0, 1, 50, 62, 0, 140, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @equip_template = 20121; set @weapon_1 = 12986; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60822;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20120; set @weapon_1 = 5306; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60818;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20119; set @weapon_1 = 5306; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60817;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20118; set @weapon_1 = 13338; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60816;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20117; set @weapon_1 = 80814; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60815;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20116; set @weapon_1 = 80814; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60814;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @gossip_menu_id = 41149; set @magic_number = 60826;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Do not fear what comes next, rejoice to share this experience with those around you.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41148; set @magic_number = 60825;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Too see, is to believe.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41147; set @magic_number = 60824;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'You can always feel the spirits no matter where you are, take comfort in knowing that your ancestors will guide the path ahead.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41146; set @magic_number = 60823;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'It is up to us to ensure that the spirits transition to the world beyond. We are to watch over them, and to keep their memories and experiences passed down from generation, to generation. In a way, we are the keepers of the past, and the present.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41145; set @magic_number = 60822;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'These damned Quillboar are always stronger than I anticipate, never underestimate a foe.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41144; set @magic_number = 60818;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Being new around here certainly has its ups and downs, at the least I learn from the best.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41143; set @magic_number = 60817;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'I have been training the wyvern here for some time now, making sure that they keep their primal instincts in check.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41142; set @magic_number = 60816;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Welcome to Red Cloud Roost, It is here we prepare many of the new and young wyvern to live as loyal companions to the Horde. If they are not trained properly they can become unruly, and savage.\n\nYou may find many untamed wyvern within Stonetalon Mountains if you desire to see just how vicious they can become.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41141; set @magic_number = 60813;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'May your journies guide you to interesting places, what can I do for you?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

REPLACE INTO npc_vendor VALUES
-- Ahnja Summerwind tradelist:
(60813, 159, 0, 0, 0, 0),
(60813, 1179, 0, 0, 0, 0),
(60813, 1205, 0, 0, 0, 0),
(60813, 2515, 0, 0, 0, 0),
(60813, 2519, 0, 0, 0, 0),
(60813, 2946, 0, 0, 0, 0),
(60813, 3030, 0, 0, 0, 0),
(60813, 3033, 0, 0, 0, 0),
(60813, 3107, 0, 0, 0, 0),
(60813, 3108, 0, 0, 0, 0),
(60813, 3131, 0, 0, 0, 0),
(60813, 3135, 0, 0, 0, 0),
(60813, 3137, 0, 0, 0, 0),
(60813, 4470, 0, 0, 0, 0),
(60813, 4471, 0, 0, 0, 0),
(60813, 4497, 0, 0, 0, 0),
(60813, 4498, 0, 0, 0, 0),
(60813, 6183, 0, 0, 0, 0);

REPLACE INTO creature_display_info_addon VALUES
(18889, 0, 0, 0, 0),
(18890, 0, 0, 0, 0),
(18891, 0, 0, 0, 0),
(18892, 0, 0, 0, 0),
(18893, 0, 0, 0, 0),
(18894, 0, 0, 0, 0),
(18895, 0, 0, 0, 0),
(18896, 0, 0, 0, 0),
(18897, 0, 0, 0, 0),
(18898, 0, 0, 0, 0),
(18899, 0, 0, 0, 0);
-- name = 'Arcane Golem', subname = 'Thalassian Alliance', level = 55, display_id1 = 18019. Faction 269 and PvP-flagged. 
-- name = 'Pathstrider Protector', subname = 'Thalassian Alliance', level = 55, display_id1 = 18221, display_id2 = 18223, equipment_id = 80216.  Faction 269 and PvP-flagged.
-- name = 'Quartermaster Anvilward', subname = 'Thalassian Alliance', level = 35, display_id1 = 5570, equipment_id = 1472. Faction 47 and PvP-flagged. Repair vendor. Copy vendor menu from creature_template 3477 
REPLACE INTO creature_template VALUES
(60810, 18019, 0, 0, 0, 'Arcane Golem', 'Thalassian Alliance', 0, 55, 55, 3643, 3643, 0, 0, 3272, 269, 0, 1, 1.14286, 0, 20, 5, 40, 0, 1, 94, 118, 0, 254, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 71.2272, 97.9374, 100, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60811, 18221, 18223, 0, 0, 'Pathstrider Protector', 'Thalassian Alliance', 0, 55, 55, 3643, 3643, 0, 0, 3272, 269, 0, 1, 1.14286, 0, 20, 5, 40, 0, 1, 94, 118, 0, 254, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 71.2272, 97.9374, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 80216, 0, 0, 0, 0, 0, 0, ''),
(60812, 5570, 0, 0, 0, 'Quartermaster Anvilward', 'Thalassian Alliance', 0, 35, 35, 1342, 1342, 0, 0, 1373, 47, 16388, 1, 1.14286, 1.3, 20, 5, 40, 0, 1, 51, 65, 0, 138, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 51.128, 70.301, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 1472, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO npc_vendor VALUES
(60812, 2880, 0, 0, 0, 0),
(60812, 2901, 0, 0, 0, 0),
(60812, 3466, 0, 0, 0, 0),
(60812, 3857, 0, 0, 0, 0),
(60812, 5956, 0, 0, 0, 0),
(60812, 18567, 0, 0, 0, 0);