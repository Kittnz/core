-- name = 'Hertha', subname = 'Schmetterlingsbrigade', level = 15, display_id1 = 2959 Has the following gossip: You are surely wondering what we are doing here…\n\nUnderstand me correctly, we do not like the war.\n\nWe do not go into battle for pride or honor. We don\'t care about the squabble between the Alliance and the Horde.\n\nEach side has its children and each child should be able to grow up happily.\n\nThe brigade wants to preserve this world and protect their children.\n\nSo, now it\'s up to you to decide. If you join us, take this butterfly. It will sit on your heart and on your tabard. Then you will begin to understand.
-- name = 'Jurag', subname = 'Schmetterlingsbrigade', level = 35, display_id1 = 10704, scale = 2.0 Copy vendor menu from https://database.turtle-wow.org/?npc=8934. Please also add Blank Parchment (https://database.turtle-wow.org/?item=10648)  to the vendor menu. Also mark as repair NPC.
-- name = 'Nelly', subname = 'Schmetterlingsbrigade', level = 20, display_id1 = 4085 Copy vendor menu from https://database.turtle-wow.org/?npc=60705. 
-- name = 'Mushu', subname = 'The Blackwing Guard', level = 5, display_id = 956 Has the following gossip: Greetings, soldier. Have you come to fend off the nefarious black dragonflight? There’s tension in the air... I can feel it. The closer we get to taking down the new leaders of the flight, the closer we get to feeling safe again.
-- name = 'Tyrion Bouden', subname = 'The Blackwing Guard', level = 50, display_id1 = 1299, equipment_id = 54 Make repair vendor and copy vendor ID from https://database.turtle-wow.org/?npc=1294
-- name = 'Dragonsworn Lookout', subname = 'The Blackwing Guard', level = 50, display_id1 = 1710, equipment_id = 7315 If possible, make her stealthed.
-- name = 'Blackwing Guard', subname = 'The Blackwing Guard', display_id1 = 14885, level = 55, equipment_id = 12461
REPLACE INTO creature_template VALUES
(60799, 2959, 0, 0, 0, 'Hertha', 'Schmetterlingsbrigade', 0, 15, 15, 328, 328, 0, 0, 660, 290, 1, 1, 1.14286, 0, 20, 5, 40, 0, 1, 21, 27, 0, 74, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 21.2784, 29.2578, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60800, 10704, 0, 0, 0, 'Jurag', 'Schmetterlingsbrigade', 0, 35, 35, 1342, 1342, 0, 0, 1373, 290, 16388, 1, 1.14286, 1.3, 20, 5, 40, 0, 1, 51, 65, 0, 138, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 51.128, 70.301, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60801, 4085, 0, 0, 0, 'Nelly', 'Schmetterlingsbrigade', 0, 20, 20, 629, 629, 0, 0, 852, 290, 4, 1, 1.14286, 0, 20, 5, 40, 0, 1, 26, 22, 0, 90, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 30.096, 41.382, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60802, 956, 0, 0, 0, 'Mushu', 'The Blackwing Guard', 0, 5, 5, 102, 102, 0, 0, 145, 290, 1, 1, 1.14286, 0, 20, 5, 40, 0, 1, 7, 10, 0, 54, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60803, 1299, 0, 0, 0, 'Tyrion Bouden', 'The Blackwing Guard', 0, 50, 50, 2990, 2990, 0, 0, 2958, 290, 16388, 1, 1.14286, 0, 20, 5, 40, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 54, 0, 0, 0, 0, 0, 0, ''),
(60804, 1710, 0, 0, 0, 'Dragonsworn Lookout', 'The Blackwing Guard', 0, 50, 50, 2990, 2990, 0, 0, 2958, 290, 0, 1, 1.14286, 0, 20, 5, 40, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 7315, 0, 0, 0, 0, 0, 0, ''),
(60805, 14885, 0, 0, 0, 'Blackwing Guard', 'The Blackwing Guard', 0, 55, 55, 3643, 3643, 0, 0, 3272, 290, 0, 1, 1.14286, 0, 20, 5, 40, 0, 1, 94, 118, 0, 254, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 71.2272, 97.9374, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 12461, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO creature_template_addon VALUES (60804, 0, 0, 0, 0, 0, 0, '0');

set @gossip_menu_id = 41139; set @magic_number = 60802;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Greetings, soldier. Have you come to fend off the nefarious black dragonflight? There’s tension in the air... I can feel it. The closer we get to taking down the new leaders of the flight, the closer we get to feeling safe again.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41138; set @magic_number = 60799;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'You are surely wondering what we are doing here.\n\nUnderstand me correctly, we do not like the war.\n\nWe do not go into battle for pride or honor. We don\'t care about the squabble between the Alliance and the Horde.\n\nEach side has its children and each child should be able to grow up happily.\n\nThe brigade wants to preserve this world and protect their children.\n\nSo, now it\'s up to you to decide. If you join us, take this butterfly. It will sit on your heart and on your tabard. Then you will begin to understand.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

REPLACE INTO npc_vendor VALUES
(60801, 1708, 0, 0, 0, 0),
(60801, 2723, 0, 0, 0, 0),
(60801, 4600, 0, 0, 0, 0),
(60801, 2594, 0, 0, 0, 0),
(60801, 2593, 0, 0, 0, 0),
(60801, 1179, 0, 0, 0, 0),
(60801, 2595, 0, 0, 0, 0),
(60801, 1205, 0, 0, 0, 0),
(60801, 1645, 0, 0, 0, 0),
(60801, 8766, 0, 0, 0, 0),
(60801, 159, 0, 0, 0, 0),
(60801, 2596, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES
(60803, 285, 0, 0, 0, 0),
(60803, 286, 0, 0, 0, 0),
(60803, 287, 0, 0, 0, 0),
(60803, 718, 0, 0, 0, 0),
(60803, 847, 0, 0, 0, 0),
(60803, 848, 0, 0, 0, 0),
(60803, 849, 0, 0, 0, 0),
(60803, 850, 0, 0, 0, 0),
(60803, 1845, 0, 0, 0, 0),
(60803, 1846, 0, 0, 0, 0),
(60803, 1852, 0, 0, 0, 0),
(60803, 1853, 0, 0, 0, 0),
(60803, 2392, 0, 0, 0, 0),
(60803, 2393, 0, 0, 0, 0),
(60803, 2394, 0, 0, 0, 0),
(60803, 2395, 0, 0, 0, 0),
(60803, 2396, 0, 0, 0, 0),
(60803, 2397, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES
(60800, 10648, 0, 0, 0, 0),
(60800, 2320, 0, 0, 0, 0),
(60800, 2321, 0, 0, 0, 0),
(60800, 2324, 0, 0, 0, 0),
(60800, 2325, 0, 0, 0, 0),
(60800, 2604, 0, 0, 0, 0),
(60800, 2605, 0, 0, 0, 0),
(60800, 2678, 0, 0, 0, 0),
(60800, 2692, 0, 0, 0, 0),
(60800, 2880, 0, 0, 0, 0),
(60800, 2901, 0, 0, 0, 0),
(60800, 2928, 0, 0, 0, 0),
(60800, 3371, 0, 0, 0, 0),
(60800, 3372, 0, 0, 0, 0),
(60800, 3466, 0, 0, 0, 0),
(60800, 3713, 0, 0, 0, 0),
(60800, 3777, 0, 0, 0, 0),
(60800, 3857, 0, 0, 0, 0),
(60800, 4289, 0, 0, 0, 0),
(60800, 4291, 0, 0, 0, 0),
(60800, 4340, 0, 0, 0, 0),
(60800, 4341, 0, 0, 0, 0),
(60800, 4342, 0, 0, 0, 0),
(60800, 4399, 0, 0, 0, 0),
(60800, 4400, 0, 0, 0, 0),
(60800, 5956, 0, 0, 0, 0),
(60800, 6183, 0, 0, 0, 0),
(60800, 6217, 0, 0, 0, 0),
(60800, 6256, 0, 0, 0, 0),
(60800, 6260, 0, 0, 0, 0),
(60800, 6529, 0, 0, 0, 0),
(60800, 6530, 0, 0, 0, 0),
(60800, 6532, 0, 0, 0, 0),
(60800, 7005, 0, 0, 0, 0),
(60800, 8343, 0, 0, 0, 0),
(60800, 8925, 0, 0, 0, 0),
(60800, 14341, 0, 0, 0, 0),
(60800, 18256, 5, 43200, 0, 0);
-- Adjutant Scheer <Kirin Tor> , Faction 76, display ID 18797, level 52, Quest/Greeting flags, weapon 1: 16894 , greeting text : "Welcome, I hope you can find some rest within this hellish place.\n\n This is Nethergarde Keep, established once the Dark Portal opened and the First War had begun years ago. We have been assigned to watch over it, and report magical irregularities should they arise.\n\n If you see anything unusual, let us know."
-- Sergeant Burnside <Kirin Tor> , Faction 76, display ID 18799, level 54 elite, quest/greeting flags, weapon 1: 80817, greeting text : "We've seen all manner of foe out there, from ogre, to orc, to demon. It is only a matter of time before they grow bold enough to strike at us.\n\n We will be more then prepared for when they make such an action."
-- Captain Baelos <Kirin Tor>, Faction 76, Display ID 18798, level 56 elite, quest/greeting flags, weapon1: 7945, greeting text : "Make sure you don't cause any trouble here, we have more then enough problems with all of the fel-warped beasts lurking in the wasteland. \n\n Or maybe you've come to this frontier in order to offer assistance."
-- Engineer Wigglestip <Head Analyst> , Faction 76, display ID 18800, level 48, quest/greeting flags, no weapon, greeting text : "So many magical fluctuations, so much warping of genetics, it almost makes a gnomes head spin with the possibilities of it all!\n\n There's research to be done $R , Research to be done! \n\n Oh, right. I'm Wigglestip, Lead Analyst at Nethergarde, a pleasure to make your acquaintance."
-- Harguf <Kirin Tor> , Faction 76, display ID 18801, level 54 elite, weapon : 18481, quest/greeting flags, greeting text : "I'm growing restless behind these blasted stone walls, I've crushed too many demon skulls to be wasting away here.\n\n Names Harguf, I've been here quite a long time, what can I do for you?"
-- 'Sugarcoat' X00 Prototype, display ID 3886, scale 0.6, faction 35, mechanical
-- 'Nugget' D01 Battle Chicken, display ID 7920, scale 1.5, faction 35, mechanical
-- 'Buttercup' X01 Prototype , display ID 3886, scale 0.6, faction 35
REPLACE INTO creature_template VALUES
(60791, 18797, 0, 0, 0, 'Adjutant Scheer', 'Kirin Tor', 0, 52, 52, 3082, 3082, 0, 0, 2669, 76, 3, 1, 1.14286, 0, 20, 5, 40, 0, 1, 106, 136, 0, 234, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.4704, 96.8968, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 104, 141, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60792, 18799, 0, 0, 0, 'Sergeant Burnside', 'Kirin Tor', 0, 54, 54, 8190, 8190, 0, 0, 3400, 76, 3, 1, 1.14286, 0, 20, 5, 40, 1, 1, 354, 454, 0, 244, 1, 1300, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 69.696, 95.832, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 116, 157, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60793, 18798, 0, 0, 0, 'Captain Baelos', 'Kirin Tor', 0, 56, 56, 8397, 8397, 0, 0, 3271, 76, 3, 1, 1.14286, 0, 20, 5, 40, 1, 1, 367, 469, 0, 254, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 61.152, 84.084, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 439, 578, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60794, 18800, 0, 0, 0, 'Engineer Wigglestip', 'Head Analyst', 0, 48, 48, 2398, 2398, 0, 0, 2753, 76, 3, 1, 1.14286, 0, 20, 5, 40, 0, 1, 74, 96, 0, 208, 1, 1000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 62.744, 86.273, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60795, 18801, 0, 0, 0, 'Harguf', 'Kirin Tor', 0, 54, 54, 8190, 8190, 0, 0, 3400, 76, 3, 1, 1.14286, 0, 20, 5, 40, 1, 1, 354, 454, 0, 244, 1, 1300, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 69.696, 95.832, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 116, 157, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60796, 3886, 0, 0, 0, '\'Sugarcoat\' X00 Prototype', NULL, 0, 50, 50, 2990, 2990, 0, 0, 2958, 35, 2, 1, 1.14286, 0.6, 20, 5, 40, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60797, 7920, 0, 0, 0, '\'Nugget\' D01 Battle Chicken', NULL, 0, 50, 50, 2990, 2990, 0, 0, 2958, 35, 2, 1, 1.14286, 1.5, 20, 5, 40, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60798, 3886, 0, 0, 0, '\'Buttercup\' X01 Prototype', NULL, 0, 50, 50, 2990, 2990, 0, 0, 2958, 35, 2, 1, 1.14286, 0.6, 20, 5, 40, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @equip_template = 20115; set @weapon_1 = 18481; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60795;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20114; set @weapon_1 = 7945; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60793;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20113; set @weapon_1 = 80817; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60792;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20112; set @weapon_1 = 16894; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60791;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @gossip_menu_id = 41137; set @magic_number = 60795;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'I\'m growing restless behind these blasted stone walls, I\'ve crushed too many demon skulls to be wasting away here.\n\nNames Harguf, I\'ve been here quite a long time, what can I do for you?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41136; set @magic_number = 60794;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'So many magical fluctuations, so much warping of genetics, it almost makes a gnomes head spin with the possibilities of it all!\n\nThere\'s research to be done $R, Research to be done!\n\nOh, right. I\'m Wigglestip, Lead Analyst at Nethergarde, a pleasure to make your acquaintance.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41135; set @magic_number = 60793;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Make sure you don\'t cause any trouble here, we have more then enough problems with all of the fel-warped beasts lurking in the wasteland.\n\nOr maybe you\'ve come to this frontier in order to offer assistance.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41134; set @magic_number = 60792;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'We\'ve seen all manner of foe out there, from ogre, to orc, to demon. It is only a matter of time before they grow bold enough to strike at us.\n\nWe will be more then prepared for when they make such an action.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41133; set @magic_number = 60791;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Welcome, I hope you can find some rest within this hellish place.\n\nThis is Nethergarde Keep, established once the Dark Portal opened and the First War had begun years ago. We have been assigned to watch over it, and report magical irregularities should they arise.\n\nIf you see anything unusual, let us know.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

REPLACE INTO creature_display_info_addon VALUES
(18797, 0, 0, 0, 0),
(18799, 0, 0, 0, 0),
(18798, 0, 0, 0, 0),
(18800, 0, 0, 0, 0),
(18801, 0, 0, 0, 0);
-- 'Chaser' display ID 514, scale 0.7, faction 12, quest flags, mechanical
-- Annabelle Livingstone, display ID 18857 , scale 1, faction 12, quest flags/gossip, humanoid, greeting text : "Why hello there, and welcome to Livingstone Croft, make yourself at home, the only thing I ask is that you wipe your feet off outside before you come in!"
-- Oswald Livingstone, display ID 18862 , scale 1, faction 12, quest flags/gossip, humanoid, weapon : 1485, greeting text : "So many damned critters around here, keep disturbing the crops and making our lives even more difficult then it needs to be...\n\n Ahh , sorry about that, what can I do for you?"
-- Brian Livingstone, display ID 251, scale 1, faction 12, quest/gossip flags, humanoid,  greeting text : "All of this work being done, its exciting, I can't wait to see the whole city finished!"
-- Marjorie Natheldon , display ID 18860 , scale 1, faction 12, quest/gossip flags, humanoid
-- Bart Natheldon, display ID 18858 , scale 1, faction 12, quest/gossip flags, humanoid
-- Eperius , display ID 2404 , scale 1, faction 12, beast 
-- Tarral Holk <Horse Master> , display ID 18866 , scale 1, selling, quest, and gossip flags, humanoid, weapon1 12801, gossip text : "I look after a lot of the horses for the Stromgarde Cavalrymen, no doubt you've seen them around, they often keep the main road between here and Refuge Pointe secured, as much as they can, anyway."
-- Peter Yarrel, display ID 18864 , scale 1, quest/gossip flags, humanoid, no weapon, gossip text : "It is only a matter of time until things get much better."
-- Sergeant Karster, display ID 18865 , scale 1, quest/gossip flags, humanoid, weapon1 15212, gossip text : "Welcome to Gallant Square, our section of the city. Don't let your guard down, for as much progress as we are making it can all be destroyed within a matter of minutes.\n\n The Ogres and Syndicate still lurk within other parts of the city, and cause us much nuisance, so keep your wits about you on the way in and out.\n\n So, what can I do for you?"
-- Hazel Luppel <Alchemy Supplies>, displayID 18859 , scale 1, vendor, quest, and gossip flags, humanoid, gossip text: "Don't be scared, come come! I sell all sorts of magical supplies and stuff, perhaps you're looking for what I'm selling!"
-- Mathilda Beckett <General Goods>, display ID 18861 , scale 1, vendor, quest, and gossip flags, humanoid, gossip text: "No need to be shy, look around, and buy what you need."
REPLACE INTO creature_template VALUES
(60779, 514, 0, 0, 0, '\'Chaser\'', NULL, 0, 50, 50, 2990, 2990, 0, 0, 2958, 12, 2, 1, 1.14286, 0.7, 20, 5, 40, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60780, 18857, 0, 0, 0, 'Annabelle Livingstone', NULL, 0, 50, 50, 2990, 2990, 0, 0, 2958, 12, 3, 1, 1.14286, 0, 20, 5, 40, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60781, 18862, 0, 0, 0, 'Oswald Livingstone', NULL, 0, 50, 50, 2990, 2990, 0, 0, 2958, 12, 3, 1, 1.14286, 0, 20, 5, 40, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60782, 251, 0, 0, 0, 'Brian Livingstone', NULL, 0, 50, 50, 2990, 2990, 0, 0, 2958, 12, 3, 1, 1.14286, 0, 20, 5, 40, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60783, 18860, 0, 0, 0, 'Marjorie Natheldon', NULL, 0, 50, 50, 2990, 2990, 0, 0, 2958, 12, 3, 1, 1.14286, 0, 20, 5, 40, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60784, 18858, 0, 0, 0, 'Bart Natheldon', NULL, 0, 50, 50, 2990, 2990, 0, 0, 2958, 12, 3, 1, 1.14286, 0, 20, 5, 40, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60785, 2404, 0, 0, 0, 'Eperius', NULL, 0, 50, 50, 2990, 2990, 0, 0, 2958, 12, 0, 1, 1.14286, 0, 20, 5, 40, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60786, 18866, 0, 0, 0, 'Tarral Holk', 'Horse Master', 0, 50, 50, 2990, 2990, 0, 0, 2958, 12, 7, 1, 1.14286, 0, 20, 5, 40, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60787, 18864, 0, 0, 0, 'Peter Yarrel', NULL, 0, 50, 50, 2990, 2990, 0, 0, 2958, 12, 3, 1, 1.14286, 0, 20, 5, 40, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60788, 18865, 0, 0, 0, 'Sergeant Karster', NULL, 0, 50, 50, 2990, 2990, 0, 0, 2958, 12, 3, 1, 1.14286, 0, 20, 5, 40, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60789, 18859, 0, 0, 0, 'Hazel Luppel', 'Alchemy Supplies', 0, 50, 50, 2990, 2990, 0, 0, 2958, 12, 7, 1, 1.14286, 0, 20, 5, 40, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60790, 18861, 0, 0, 0, 'Mathilda Beckett', 'General Goods', 0, 50, 50, 2990, 2990, 0, 0, 2958, 12, 7, 1, 1.14286, 0, 20, 5, 40, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @equip_template = 20111; set @weapon_1 = 15212; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60788;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20110; set @weapon_1 = 12801; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60786;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20109; set @weapon_1 = 1485; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60781;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @gossip_menu_id = 41132; set @magic_number = 60790;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'No need to be shy, look around, and buy what you need.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41131; set @magic_number = 60789;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Don\'t be scared, come come! I sell all sorts of magical supplies and stuff, perhaps you\'re looking for what I\'m selling!');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41130; set @magic_number = 60788;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Welcome to Gallant Square, our section of the city. Don\'t let your guard down, for as much progress as we are making it can all be destroyed within a matter of minutes.\n\nThe Ogres and Syndicate still lurk within other parts of the city, and cause us much nuisance, so keep your wits about you on the way in and out.\n\nSo, what can I do for you?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41129; set @magic_number = 60787;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'It is only a matter of time until things get much better.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41128; set @magic_number = 60786;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'I look after a lot of the horses for the Stromgarde Cavalrymen, no doubt you\'ve seen them around, they often keep the main road between here and Refuge Pointe secured, as much as they can, anyway.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41127; set @magic_number = 60782;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'All of this work being done, its exciting, I can\'t wait to see the whole city finished!');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41126; set @magic_number = 60781;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'So many damned critters around here, keep disturbing the crops and making our lives even more difficult then it needs to be...\n\nAhh, sorry about that, what can I do for you?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41125; set @magic_number = 60780;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Why hello there, and welcome to Livingstone Croft, make yourself at home, the only thing I ask is that you wipe your feet off outside before you come in!');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

REPLACE INTO npc_vendor VALUES
(60789, 858, 3, 7200, 0, 0),
(60789, 1710, 3, 7200, 0, 0),
(60789, 3371, 0, 0, 0, 0),
(60789, 3372, 0, 0, 0, 0),
(60789, 3385, 3, 7200, 0, 0),
(60789, 3827, 3, 7200, 0, 0),
(60789, 8925, 0, 0, 0, 0),
(60789, 14634, 1, 7200, 3, 0),
(60789, 18256, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES
(60790, 159, 0, 0, 0, 0),
(60790, 1179, 0, 0, 0, 0),
(60790, 1205, 0, 0, 0, 0),
(60790, 1645, 0, 0, 0, 0),
(60790, 1708, 0, 0, 0, 0),
(60790, 2515, 0, 0, 0, 0),
(60790, 2519, 0, 0, 0, 0),
(60790, 2946, 0, 0, 0, 0),
(60790, 3030, 0, 0, 0, 0),
(60790, 3033, 0, 0, 0, 0),
(60790, 3107, 0, 0, 0, 0),
(60790, 3108, 0, 0, 0, 0),
(60790, 3131, 0, 0, 0, 0),
(60790, 3135, 0, 0, 0, 0),
(60790, 3137, 0, 0, 0, 0),
(60790, 4470, 0, 0, 0, 0),
(60790, 4471, 0, 0, 0, 0),
(60790, 4497, 0, 0, 0, 0),
(60790, 4498, 0, 0, 0, 0),
(60790, 4604, 0, 0, 0, 0),
(60790, 4605, 0, 0, 0, 0),
(60790, 4606, 0, 0, 0, 0),
(60790, 4607, 0, 0, 0, 0),
(60790, 4608, 0, 0, 0, 0),
(60790, 6183, 0, 0, 0, 0),
(60790, 8766, 0, 0, 0, 0),
(60790, 8948, 0, 0, 0, 0),
(60790, 11284, 0, 0, 0, 0),
(60790, 11285, 0, 0, 0, 0),
(60790, 15326, 0, 0, 0, 0),
(60790, 15327, 0, 0, 0, 0),
(60790, 16110, 0, 0, 0, 0);

REPLACE INTO creature_display_info_addon VALUES
(18871, 0, 0, 0, 0),
(18869, 0, 0, 0, 0),
(18870, 0, 0, 0, 0),
(18872, 0, 0, 0, 0),
(18873, 0, 0, 0, 0),
(18874, 0, 0, 0, 0),
(18875, 0, 0, 0, 0),
(18876, 0, 0, 0, 0),
(18879, 0, 0, 0, 0),
(18877, 0, 0, 0, 0),
(18882, 0, 0, 0, 0),
(18878, 0, 0, 0, 0),
(18883, 0, 0, 0, 0),
(18884, 0, 0, 0, 0),
(18885, 0, 0, 0, 0),
(18886, 0, 0, 0, 0),
(18887, 0, 0, 0, 0),
(18868, 0, 0, 0, 0);

REPLACE INTO creature_display_info_addon VALUES
(18857, 0, 0, 0, 0),
(18862, 0, 0, 0, 0),
(18860, 0, 0, 0, 0),
(18858, 0, 0, 0, 0),
(18866, 0, 0, 0, 0),
(18864, 0, 0, 0, 0),
(18865, 0, 0, 0, 0),
(18859, 0, 0, 0, 0),
(18861, 0, 0, 0, 0);
-- Sorlugg, display ID 18871 , level 58 , faction 29, weapon 15424, quest/gossip flags, greeting text : "Our mission here is of an utmost importance. The Dark Portal radiates with fel energy, who knows if it is even still active."
-- Bagaroh, display ID 18869, level 54, faction 29, weapon 80814 , quest/gossip flags, greeting text : "I hate ogres."
-- Jaiymu, display ID 18870, level 54, faction 29, weapon 20647, quest/gossip flags, greeting text : "I am Jaiymu, son of Taiymu. What do you need friend?"
-- Blacksmith Torren <Weapons and Armor>, display ID 18872 , level 51, scale 1, faction 29 , vendor/gossip/repair flags, humanoid, greeting text : "I am well versed crafting in the old methods, perhaps you could use a repair to let me refine my skills."
-- Darkseer Geshtol, display ID 18873 , level 52, faction 29 , quest/gossip flags, humanoid, weapon 22215, greeting text : "Dark magic aids us in battle, and empowers our spirits. The Blood Fury that flows through our veins is a resource that can be tapped, and aided by the powers I can conjure."
-- Dagesh the Evoker, display ID 18874 , level 51, faction 29 , quest/gossip flags, humanoid, no weapon, greeting text : "There are darker powers at play, always, do not think yourself as smart enough to avoid their tricks, be wary, for you never know who, or what might be watching."
-- Raider Fargosh , display ID 18875 , level 53 elite, faction 29 , quest/gossip flags, humanoid, weapon : 4826, greeting text : "I have ridden across many battle fields, and slain many foes, but it is only now that I feel caution for what lies ahead. I trust Karfang with every ounce of my blood, but I do not know if we share the same values with this 'New Horde' across the world.\n\n Perhaps it is truly for the best, and perhaps it may be our downfall, we shall see in time." (Should be riding a worg)
-- Golsh <General Goods> , display ID 18876, level 50, faction 29, gossip/vendor flags, Greeting text: "What are you looking for outsider?" (SELLS GENERAL GOODS)
-- Karfang Grunt, display ID 18879, 18880, 18881 , level 55 elite, faction 29, humanoid, weapon :5289
-- Herekk <Stable Master> , display ID 18877 , level 48, faction - 29, STABLEMASTER FLAGS
-- Molk <Strategist> , display ID 18882 , level 54, faction 29, quest/gossip flags, humanoid, weapon1: 13822, gossip text : "What is it that you want, can you not see that I am busy whelpling?"
-- Karfang <Warleader>, display ID 18878 , level 57 elite, quest/gossip flags, humanoid, weapon : 11042, weapon2 : 11042, gossip text: "My name is Karfang, I am leader here, my people should cause you no harm, lest you insult or bother them to much. There is many things to discuss, and many things to do for us to secure our place in the world.\n\n The Blackrock find themselves now within the mountain, manipulated by greater forces, I would not have my people follow that same madness that drives the Old Horde now."
-- Sarkensh <Trade Supplies> , display ID 18883 , level 47 faction 29, vendor flags, humanoid ((Sells Trade SUPPLIES))
-- Councillor Vargek, display ID 18884 , level 54, faction - 29, quest/gossip flags, humanoid, weapon 51764, gossip text: "I am Councillor to Karfang, I advice him on all matters, both internal, and foreign, perhaps you bring news from beyond this charred valley?"
-- Soresh <Innkeeper> , display ID 18885 , level 49, faction 29, quest/gossip/vendor flags, humanoid, no weapon, gossip text : "We have ale if you need it, or food if you need that, so , what will it be?"
-- Taskmaster Ok'gog , display ID 18886 , level 52, faction 29 , quest/gossip flags, humanoid. "You are lucky we are on good terms outsider, hold your tongue and your ill words, I am used to killing those outside of the clan."
-- Mistress Katalla <Wolf Master>, display ID 18887, level 54 elite, faction 29 , quest/gossip flags, humanoid, gossip text : "I am the one that trains the worgs for hunting, killing, and roaming.\n\n I am responsible for our best specimens, and our most useful allies. Now, what is it you want outsider?"
-- Valril the Seeker, display ID 9562, level 52, faction 29, scale 1.1, beast
-- Gazush the Rabid, display ID 9371, level 55, faction 29, scale 1.7, beast
-- Yur Dragonfist, display ID 18868, level 55, faction 35, gossip/quest flags, greeting text : "A clenched fist speaks louder than a hundred words."

REPLACE INTO creature_template VALUES
(60759, 18871, 0, 0, 0, 'Sorlugg', NULL, 0, 58, 58, 3875, 3875, 0, 0, 3408, 29, 3, 1, 1.14286, 0, 20, 5, 40, 0, 1, 106, 136, 0, 262, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 72.9872, 100.357, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 113, 153, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60760, 18869, 0, 0, 0, 'Bagaroh', NULL, 0, 54, 54, 3292, 3292, 0, 0, 3216, 29, 3, 1, 1.14286, 0, 20, 5, 40, 0, 1, 106, 136, 0, 244, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.4704, 96.8968, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 113, 153, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60761, 18870, 0, 0, 0, 'Jaiymu', NULL, 0, 54, 54, 3292, 3292, 0, 0, 3216, 29, 3, 1, 1.14286, 0, 20, 5, 40, 0, 1, 106, 136, 0, 244, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.4704, 96.8968, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 113, 153, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60762, 18872, 0, 0, 0, 'Blacksmith Torren', 'Weapons and Armor', 0, 51, 51, 2979, 2979, 0, 0, 3052, 29, 16389, 1, 1.14286, 1, 20, 5, 40, 0, 1, 87, 107, 0, 230, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 67.32, 92.565, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 101, 137, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60763, 18873, 0, 0, 0, 'Darkseer Geshtol', NULL, 0, 52, 52, 3082, 3082, 0, 0, 2669, 29, 3, 1, 1.14286, 0, 20, 5, 40, 0, 1, 106, 136, 0, 234, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.4704, 96.8968, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 104, 141, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60764, 18874, 0, 0, 0, 'Dagesh the Evoker', NULL, 0, 51, 51, 2979, 2979, 0, 0, 3052, 29, 3, 1, 1.14286, 1, 20, 5, 40, 0, 1, 87, 107, 0, 230, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 67.32, 92.565, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 101, 137, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60765, 18875, 0, 0, 0, 'Raider Fargosh', NULL, 0, 53, 53, 8100, 8100, 0, 0, 3400, 29, 3, 1, 1.14286, 0, 20, 5, 40, 1, 1, 344, 444, 0, 244, 1, 1300, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 69.696, 95.832, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 116, 157, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60766, 18876, 0, 0, 0, 'Golsh', 'General Goods', 0, 50, 50, 2990, 2990, 0, 0, 2958, 29, 5, 1, 1.14286, 0, 20, 5, 40, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60767, 18879, 0, 0, 0, 'Karfang Grunt', NULL, 4342, 55, 55, 7842, 7842, 0, 0, 4500, 29, 0, 1, 1.14286, 0, 20, 5, 40, 1, 1, 310, 400, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 58.872, 80.949, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60768, 18877, 0, 0, 0, 'Herekk', 'Stable Master', 0, 48, 48, 2398, 2398, 0, 0, 2753, 29, 8192, 1, 1.14286, 0, 20, 5, 40, 0, 1, 74, 96, 0, 208, 1, 1000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 62.744, 86.273, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60769, 18882, 0, 0, 0, 'Molk', 'Strategist', 0, 54, 54, 3292, 3292, 0, 0, 3216, 29, 3, 1, 1.14286, 0, 20, 5, 40, 0, 1, 106, 136, 0, 244, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.4704, 96.8968, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 113, 153, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60770, 18878, 0, 0, 0, 'Karfang', 'Warleader', 0, 57, 57, 7842, 7842, 0, 0, 4822, 29, 3, 1.2, 1.14286, 0, 20, 5, 40, 1, 1, 344, 444, 0, 248, 1, 2500, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 59.3, 81.57, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 425, 559, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60771, 18883, 0, 0, 0, 'Sarkensh', 'Trade Supplies', 0, 47, 47, 2487, 2487, 0, 0, 2246, 29, 4, 1, 1.14286, 0, 20, 5, 40, 0, 1, 76, 98, 0, 212, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.6944, 87.5798, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60772, 18884, 0, 0, 0, 'Councillor Vargek', NULL, 0, 54, 54, 3292, 3292, 0, 0, 3216, 29, 3, 1, 1.14286, 0, 20, 5, 40, 0, 1, 106, 136, 0, 244, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.4704, 96.8968, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 113, 153, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60773, 18885, 0, 0, 0, 'Soresh', 'Innkeeper', 0, 49, 49, 2565, 2565, 0, 0, 2916, 29, 135, 1, 1.14286, 0, 20, 5, 40, 0, 1, 81, 105, 0, 220, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 65.5424, 90.1208, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60774, 18886, 0, 0, 0, 'Taskmaster Ok\'gog', NULL, 0, 52, 52, 3082, 3082, 0, 0, 2669, 29, 3, 1, 1.14286, 0, 20, 5, 40, 0, 1, 106, 136, 0, 234, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.4704, 96.8968, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 104, 141, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60775, 18887, 0, 0, 0, 'Mistress Katalla', 'Wolf Master', 0, 54, 54, 8190, 8190, 0, 0, 3400, 29, 3, 1, 1.14286, 0, 20, 5, 40, 1, 1, 354, 454, 0, 244, 1, 1300, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 69.696, 95.832, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 116, 157, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60776, 9562, 0, 0, 0, 'Valril the Seeker', NULL, 0, 52, 52, 3082, 3082, 0, 0, 2669, 29, 0, 1, 1.14286, 1.1, 20, 5, 40, 0, 1, 106, 136, 0, 234, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.4704, 96.8968, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 104, 141, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60777, 9371, 0, 0, 0, 'Gazush the Rabid', NULL, 0, 55, 55, 3643, 3643, 0, 0, 3272, 29, 0, 1, 1.14286, 1.7, 20, 5, 40, 0, 1, 94, 118, 0, 254, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 71.2272, 97.9374, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 122, 164, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60778, 18868, 0, 0, 0, 'Yur Dragonfist', NULL, 0, 55, 55, 3643, 3643, 0, 0, 3272, 35, 3, 1, 1.14286, 0, 20, 5, 40, 0, 1, 94, 118, 0, 254, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 71.2272, 97.9374, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 122, 164, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @equip_template = 20108; set @weapon_1 = 51764; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60772;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20107; set @weapon_1 = 11042; set @weapon_2 = 11042; set @weapon_3 = 0; set @creature = 60770;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20106; set @weapon_1 = 13822; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60769;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20105; set @weapon_1 = 5289; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60767;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20104; set @weapon_1 = 4826; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60765;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20103; set @weapon_1 = 22215; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60763;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20102; set @weapon_1 = 20647; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60761;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20101; set @weapon_1 = 80814; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60760;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20100; set @weapon_1 = 15424; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60759;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @gossip_menu_id = 41124; set @magic_number = 60778;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'A clenched fist speaks louder than a hundred words.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41123; set @magic_number = 60775;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'I am the one that trains the worgs for hunting, killing, and roaming.\n\nI am responsible for our best specimens, and our most useful allies. Now, what is it you want outsider?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41122; set @magic_number = 60774;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'You are lucky we are on good terms outsider, hold your tongue and your ill words, I am used to killing those outside of the clan.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41121; set @magic_number = 60773;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'We have ale if you need it, or food if you need that, what will it be?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41120; set @magic_number = 60772;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'I am Councillor to Karfang, I advice him on all matters, both internal, and foreign, perhaps you bring news from beyond this charred valley?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41119; set @magic_number = 60770;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, '"My name is Karfang, I am leader here.\n\nMy people should cause you no harm, lest you insult, or bother them too much. There are many things to discuss, and many things to do for us to secure our place in this world.\n\nThe Blackrock Clan find themselves manipulated by greater forces. The Old Horde is a shell of what it once was, and I will not allow my people to follow them into madness.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41118; set @magic_number = 60769;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'What is it that you want, can you not see that I am busy whelpling?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41117; set @magic_number = 60766;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'What are you looking for outsider?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41116; set @magic_number = 60765;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'I have ridden across many battle fields, and slain many foes, but it is only now that I feel caution for what lies ahead. I trust Karfang with every ounce of my blood, but I do not know if we share the same values with this \'New Horde\' across the world.\n\nPerhaps it is truly for the best, and perhaps it may be our downfall, we shall see in time.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41115; set @magic_number = 60764;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'There are darker powers at play, always, do not think yourself as smart enough to avoid their tricks, be wary, for you never know who, or what might be watching.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41114; set @magic_number = 60763;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Dark magic aids us in battle, and empowers our spirits. The Blood Fury that flows through our veins is a resource that can be tapped, and aided by the powers I can conjure.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41113; set @magic_number = 60762;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'I am well versed crafting in the old methods, perhaps you could use a repair to let me refine my skills.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41112; set @magic_number = 60761;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'I am Jaiymu, son of Taiymu. What do you need friend?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41111; set @magic_number = 60760;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'I hate ogres.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41110; set @magic_number = 60759;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Our mission here is of an utmost importance. The Dark Portal radiates with fel energy, who knows if it is even still active.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

REPLACE INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(60765, 51581, 0, 0, 0, 0, 0, NULL);

REPLACE INTO npc_vendor VALUES
(60773, 159, 0, 0, 0, 0),
(60773, 787, 0, 0, 0, 0),
(60773, 1179, 0, 0, 0, 0),
(60773, 1205, 0, 0, 0, 0),
(60773, 1645, 0, 0, 0, 0),
(60773, 1708, 0, 0, 0, 0),
(60773, 4592, 0, 0, 0, 0),
(60773, 4593, 0, 0, 0, 0),
(60773, 4594, 0, 0, 0, 0),
(60773, 8766, 0, 0, 0, 0),
(60773, 8957, 0, 0, 0, 0),
(60773, 21552, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES
(60771, 2320, 0, 0, 0, 0),
(60771, 2321, 0, 0, 0, 0),
(60771, 2325, 0, 0, 0, 0),
(60771, 2604, 0, 0, 0, 0),
(60771, 2678, 0, 0, 0, 0),
(60771, 2692, 0, 0, 0, 0),
(60771, 2880, 0, 0, 0, 0),
(60771, 2901, 0, 0, 0, 0),
(60771, 2928, 0, 0, 0, 0),
(60771, 3371, 0, 0, 0, 0),
(60771, 3372, 0, 0, 0, 0),
(60771, 3466, 0, 0, 0, 0),
(60771, 3713, 0, 0, 0, 0),
(60771, 3777, 0, 0, 0, 0),
(60771, 3857, 0, 0, 0, 0),
(60771, 4289, 0, 0, 0, 0),
(60771, 4291, 0, 0, 0, 0),
(60771, 4340, 0, 0, 0, 0),
(60771, 4341, 0, 0, 0, 0),
(60771, 4342, 0, 0, 0, 0),
(60771, 4399, 0, 0, 0, 0),
(60771, 4400, 0, 0, 0, 0),
(60771, 5956, 0, 0, 0, 0),
(60771, 6183, 0, 0, 0, 0),
(60771, 6217, 0, 0, 0, 0),
(60771, 6256, 0, 0, 0, 0),
(60771, 6530, 0, 0, 0, 0),
(60771, 6532, 0, 0, 0, 0),
(60771, 7005, 0, 0, 0, 0),
(60771, 8343, 0, 0, 0, 0),
(60771, 8925, 0, 0, 0, 0),
(60771, 14341, 0, 0, 0, 0),
(60771, 15735, 0, 0, 0, 0),
(60771, 18256, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES
(60762, 2129, 0, 0, 0, 0),
(60762, 2379, 0, 0, 0, 0),
(60762, 2380, 0, 0, 0, 0),
(60762, 2381, 0, 0, 0, 0),
(60762, 2383, 0, 0, 0, 0),
(60762, 2384, 0, 0, 0, 0),
(60762, 2385, 0, 0, 0, 0),
(60762, 2488, 0, 0, 0, 0),
(60762, 2489, 0, 0, 0, 0),
(60762, 2490, 0, 0, 0, 0),
(60762, 2491, 0, 0, 0, 0),
(60762, 2492, 0, 0, 0, 0),
(60762, 2493, 0, 0, 0, 0),
(60762, 2494, 0, 0, 0, 0),
(60762, 2495, 0, 0, 0, 0),
(60762, 11362, 0, 0, 0, 0),
(60762, 17184, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES
(60766, 159, 0, 0, 0, 0),
(60766, 1179, 0, 0, 0, 0),
(60766, 1205, 0, 0, 0, 0),
(60766, 1645, 0, 0, 0, 0),
(60766, 1708, 0, 0, 0, 0),
(60766, 2515, 0, 0, 0, 0),
(60766, 2519, 0, 0, 0, 0),
(60766, 2946, 0, 0, 0, 0),
(60766, 3030, 0, 0, 0, 0),
(60766, 3033, 0, 0, 0, 0),
(60766, 3107, 0, 0, 0, 0),
(60766, 3108, 0, 0, 0, 0),
(60766, 3131, 0, 0, 0, 0),
(60766, 3135, 0, 0, 0, 0),
(60766, 3137, 0, 0, 0, 0),
(60766, 4470, 0, 0, 0, 0),
(60766, 4471, 0, 0, 0, 0),
(60766, 4497, 0, 0, 0, 0),
(60766, 4498, 0, 0, 0, 0),
(60766, 4604, 0, 0, 0, 0),
(60766, 4605, 0, 0, 0, 0),
(60766, 4606, 0, 0, 0, 0),
(60766, 4607, 0, 0, 0, 0),
(60766, 4608, 0, 0, 0, 0),
(60766, 6183, 0, 0, 0, 0),
(60766, 8766, 0, 0, 0, 0),
(60766, 8948, 0, 0, 0, 0),
(60766, 11284, 0, 0, 0, 0),
(60766, 11285, 0, 0, 0, 0),
(60766, 15326, 0, 0, 0, 0),
(60766, 15327, 0, 0, 0, 0),
(60766, 16110, 0, 0, 0, 0);

REPLACE INTO creature_display_info_addon VALUES
(18871, 0, 0, 0, 0),
(18869, 0, 0, 0, 0),
(18870, 0, 0, 0, 0),
(18872, 0, 0, 0, 0),
(18873, 0, 0, 0, 0),
(18874, 0, 0, 0, 0),
(18875, 0, 0, 0, 0),
(18876, 0, 0, 0, 0),
(18879, 0, 0, 0, 0),
(18877, 0, 0, 0, 0),
(18882, 0, 0, 0, 0),
(18878, 0, 0, 0, 0),
(18883, 0, 0, 0, 0),
(18884, 0, 0, 0, 0),
(18885, 0, 0, 0, 0),
(18886, 0, 0, 0, 0),
(18887, 0, 0, 0, 0),
(18868, 0, 0, 0, 0);
-- Marglum Blood-eye, display ID 11293, level 40, scale 3.0, hp x1.5 , weapon 60124, can swim, faction 18, humanoid
-- Muckshell Makrura, display ID 2599, level 37-39, scale 1.0, faction 16, can swim, humanoid
-- Mol'gol , display ID 10704, scale 1.5, faction 232, level 40, humanoid
-- NPC Soothound, make NON elite, adjust HP and stats accordingly
-- Ambassador Gessendar, display ID 12030, level 52 elite , scale 1.5 , faction 54, humanoid, weapon1 : 11838 (18912 HP, 3140 ARMOR)
delete from creature_template where entry in (60697,60714);
REPLACE INTO creature_template VALUES
(60698, 12030, 0, 0, 0, 'Ambassador Gessendar', NULL, 0, 52, 52, 18912, 18912, 0, 0, 3140, 54, 0, 1, 1.14286, 1.5, 20, 5, 40, 1, 1, 301, 334, 0, 226, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 54.6056, 75.0827, 100, 7, 0, 60698, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 127, 155, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60697, 8050, 0, 0, 0, 'Soothound', NULL, 0, 51, 52, 3076, 3076, 0, 0, 2432, 18, 0, 1, 1.14286, 0, 18, 5, 40, 0, 1, 106, 136, 0, 234, 1, 2000, 2000, 1, 32768, 0, 0, 0, 0, 0, 0, 70.4704, 96.8968, 100, 1, 0, 60697, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 127, 155, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 1024, 0, ''),
(60712, 4465, 0, 0, 0, 'Decoy Dragonling', '', 0, 48, 48, 2577, 2577, 0, 0, 680, 54, 0, 1, 1.14286, 1, 18, 5, 0, 0, 1, 87, 112, 0, 216, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 64.68, 88.935, 100, 9, 0, 60712, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 91, 124, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60713, 397, 0, 0, 0, 'Peculiar Broodling', NULL, 0, 50, 51, 2600, 2600, 800, 800, 2500, 54, 0, 1, 1.14286, 1, 18, 5, 0, 0, 1, 90, 120, 0, 234, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 71.2272, 97.9374, 100, 9, 0, 60713, 0, 0, 0, 0, 0, 0, 0, 0, 13375, 0, 0, 0, 0, 0, 93, 127, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 2113536, 0, 0, 0, ''),
(60714, 11293, 0, 0, 0, 'Marglum Blood-eye', NULL, 0, 40, 40, 2628, 2628, 0, 0, 1964, 18, 0, 1, 1.14286, 3, 18, 5, 40, 0, 1, 57, 70, 0, 156, 1, 1600, 2000, 1, 32768, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 7, 0, 60714, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 67, 93, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60715, 4465, 0, 0, 0, '\'Broody\'', 'Engineer Figgle\'s Minion', 0, 52, 52, 15000, 15000, 900, 900, 2432, 54, 0, 1, 1.14286, 0, 20, 5, 0, 1, 1, 259, 334, 0, 226, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 54.6056, 75.0827, 100, 9, 0, 60715, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 127, 155, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60757, 2599, 0, 0, 0, 'Muckshell Makrura', NULL, 0, 37, 39, 1536, 1604, 0, 0, 1664, 16, 0, 1, 1.14286, 1, 18, 5, 40, 0, 1, 92, 109, 0, 148, 1, 2000, 2000, 1, 32768, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 7, 0, 60757, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 29, 145, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60758, 10704, 0, 0, 0, 'Mol\'gol', NULL, 0, 40, 40, 1752, 1752, 0, 0, 1964, 232, 0, 1, 1.14286, 1.5, 18, 5, 40, 0, 1, 57, 70, 0, 156, 1, 1600, 2000, 1, 32768, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 7, 0, 60758, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 67, 93, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @equip_template = 20099; set @weapon_1 = 11838; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60698;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20098; set @weapon_1 = 60124; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60714;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20091; set @weapon_1 = 0; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60734;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

replace into item_template values
 ('60537', '15', '0', 'Inner Heat Conductor', '', '7841', '0', '0', '1', '648', '162', '0', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '20', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60538', '15', '0', 'Damaged Components', '', '7839', '0', '0', '1', '948', '237', '0', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '10', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

REPLACE INTO creature_loot_template VALUES
(60712, 60537, 12, 0, 1, 1, 0),
(60712, 60538, 8, 0, 1, 1, 0),
(60712, 10558, 2, 0, 1, 1, 0),
(60712, 8146, 4, 0, 1, 1, 0),
(60713, 60537, 12, 0, 1, 1, 0),
(60713, 60538, 8, 0, 1, 1, 0),
(60713, 10558, 2, 0, 1, 1, 0),
(60713, 8146, 4, 0, 1, 1, 0);

-- Peculiar Broodling
set @creature_entry = 60713;
set @description = ': Peculiar Broodling';
set @spell_list_id = 180028;

set @spellid_1 = 13375; -- Fireball
set @probability_1 = 100; 
set @casttarget_1 = 1; 
set @castflags_1 = 4;
set @delayinitialmin_1 = 1; 
set @delayinitialmax_1 = 1; 
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
update creature_template set spell_list_id = @spell_list_id, ai_name = 'EventAI', script_name = '', spell_id1 = 13375, spell_id2 = 0, spell_id3 = 0 
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

-- Broody <Engineer Figgle's Minion>
set @creature_entry = 60715;
set @description = ': Broody';
set @spell_list_id = 180021;

set @spellid_1 = 9573; -- Flame Breath
set @probability_1 = 100; 
set @casttarget_1 = 1; 
set @castflags_1 = 4;
set @delayinitialmin_1 = 1; 
set @delayinitialmax_1 = 1; 
set @delayrepeatmin_1 = 35; 
set @delayrepeatmax_1 = 35;

set @spellid_2 = 13375;
set @probability_2 = 0; -- Fireball
set @casttarget_2 = 1; 
set @castflags_2 = 4;
set @delayinitialmin_2 = 6; 
set @delayinitialmax_2 = 6; 
set @delayrepeatmin_2 = 12; 
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
update creature_template set spell_list_id = @spell_list_id, ai_name = 'EventAI', script_name = '', spell_id1 = 9573, spell_id2 = 13375, spell_id3 = 0 
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