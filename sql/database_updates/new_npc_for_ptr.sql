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