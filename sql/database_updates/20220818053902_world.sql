-- Item 60780 added to loot tables.
REPLACE INTO creature_loot_template VALUES (11793, 60780, 0.5, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (11794, 60780, 0.5, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (12219, 60780, 0.5, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (12220, 60780, 0.5, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (12223, 60780, 0.5, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (12224, 60780, 0.5, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (12225, 60780, 2.5, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (12258, 60780, 2.5, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (12237, 60780, 10, 0, 1, 1, 0);
-- New NPC: name = 'Gavlan Complainfist', subname = 'Hawks Talon', display_id1 = 4950, equipment_id = 54, level = 32, faction = 814, Make repair vendor and copy vendor menu from https://database.turtle-wow.org/?npc=81056 
-- New NPC = name = 'Talon Recruit', subname = 'Hawks Talon', display_id1 = 2365, display_id2 = 2371, display_id3 = 2364, display_id4 = 2366, equpment_id = 487, level = 35
-- New NPC: name = 'Heralt “Keeper Of The Hawk”', subname = 'Hawks Talon', display_id1 = 52024, equipment_id = 914, level = 50, faction = 814 
-- New NPC: name = 'Herodwartus “The Historian” Minimus', subname = 'Hawks Talon', display_id1 = 3598, level = 34, faction = 814, Should have the following dialog: Aye there! Welcome to the Talon\'s base! The names Herodwartus. I\'m the guild\'s historian. I know all about it\'s history! The Talon\'s purpose is to hunt all loyal to the Scourge and to the Burning Legion. All their leaders followed this purpose, Nicholas Othmar, to the last and now deceased Ragnar Magnus.\n\nBut, let me tell ye, fallen leaders won\'t stop the Talon from hunting all Scourge beasts and Demons of Azeroth! Now the Talon\'s being led by Arnest. He\'s dumb, but he\'ll learn! Ye\'ll see.
-- New NPC: name = 'Aldein Smoothgore', subname = 'Hawks Talon', display_id1 = 3405, level = 28, faction = 814, Copy vendor menu from: https://database.turtle-wow.org/?npc=465
-- New NPC: name = 'Zoltan Kork', subname = 'The Silver Crusade', display_id1 = 1514, equipment_id = 54, level = 32, Make repair NPC. Copy vendor menu from https://database.turtle-wow.org/?npc=1323
-- New NPC: name = 'Elizabeth Herby', subname = 'The Silver Crusade', display_id1 = 15777, equipment_id = 465, level = 25, Copy vendor menu from https://database.turtle-wow.org/?npc=465
-- New NPC: name = 'Nobelke', display_id1 = 1100, level = 24, scale = 0.5
-- New NPC: name = 'Konrad Bardak', subname = 'The Silver Crusade', display_id1 = 1509, equipment_id = 914, level = 38, Make him have the following dialog: Are you looking to join The Silver Crusade? Well, go out and be useful then.
-- New game object: name = 'Hawk\'s Talon', from: World GENERIC HUMAN PASSIVE DOODADS Signs NobleHouse01.mdx, Display Id: 24369
REPLACE INTO gameobject_template VALUES (2010916, 5, 24369, 'Hawk\'s Talon', 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO creature_template values
(60885, 4950, 0, 0, 0, 'Gavlan Complainfist', 'Hawks Talon', 0, 32, 32, 949, 1286, 0, 0, 0, 814, 16388, 1, 1.14286, 0, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 54, 0, 0, 0, 0, 0, 0, ''),
(60886, 2365, 2371, 2364, 2366, 'Talon Recruit', 'Hawks Talon', 0, 35, 35, 1342, 1342, 0, 0, 1373, 814, 0, 1, 1.14286, 0, 18, 5, 0, 0, 1, 51, 65, 0, 138, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 51.128, 70.301, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 487, 0, 0, 0, 0, 0, 0, ''),
(60887, 52024, 0, 0, 0, 'Heralt "Keeper Of The Hawk"', 'Hawks Talon', 0, 50, 50, 2990, 2990, 0, 0, 4400, 814, 0, 1, 1.14286, 0, 18, 5, 0, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 914, 0, 0, 0, 0, 0, 0, ''),
(60888, 3598, 0, 0, 0, 'Herodwartus "The Historian" Minimus', 'Hawks Talon', 0, 34, 34, 1300, 1300, 0, 0, 1350, 814, 1, 1, 1.14286, 0, 18, 5, 0, 0, 1, 51, 65, 0, 138, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 51.128, 70.301, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60889, 3405, 0, 0, 0, 'Aldein Smoothgore', 'Hawks Talon', 0, 28, 28, 860, 860, 0, 0, 1090, 814, 4, 1, 1.14286, 0, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60890, 1514, 0, 0, 0, 'Zoltan Kork', 'The Silver Crusade', 0, 32, 32, 949, 1286, 0, 0, 0, 290, 16388, 1, 1.14286, 0, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 54, 0, 0, 0, 0, 0, 0, ''),
(60891, 15777, 0, 0, 0, 'Elizabeth Herby', 'The Silver Crusade', 0, 25, 25, 712, 712, 0, 0, 1009, 290, 4, 1, 1.14286, 0, 18, 5, 40, 0, 1, 31, 40, 0, 106, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 38.72, 53.24, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 465, 0, 0, 0, 0, 0, 0, ''),
(60892, 1100, 0, 0, 0, 'Nobelke', '', 0, 24, 24, 664, 664, 0, 0, 1026, 290, 0, 1, 1.14286, 0.5, 20, 5, 0, 0, 1, 36, 46, 0, 106, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 71.9664, 98.9538, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60893, 1509, 0, 0, 0, 'Konrad Bardak', 'The Silver Crusade', 0, 38, 38, 1599, 1599, 0, 0, 1780, 290, 1, 1, 1.14286, 0, 18, 5, 0, 0, 1, 56, 69, 0, 152, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 914, 0, 0, 0, 0, 0, 0, '');

set @gossip_menu_id = 41187; set @magic_number = 60893;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Are you looking to join The Silver Crusade? Well, go out and be useful then.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41186; set @magic_number = 60888;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Aye there! Welcome to the Talon\'s base! The names Herodwartus. I\'m the guild\'s historian. I know all about it\'s history! The Talon\'s purpose is to hunt all loyal to the Scourge and to the Burning Legion. All their leaders followed this purpose, Nicholas Othmar, to the last and now deceased Ragnar Magnus.\n\nBut, let me tell ye, fallen leaders won\'t stop the Talon from hunting all Scourge beasts and Demons of Azeroth! Now the Talon\'s being led by Arnest. He\'s dumb, but he\'ll learn! Ye\'ll see.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

REPLACE INTO npc_vendor VALUES (60891, 159, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60891, 414, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60891, 422, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60891, 1179, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60891, 1205, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60891, 1645, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60891, 1707, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60891, 1708, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60891, 1939, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60891, 2070, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60891, 2593, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60891, 2594, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60891, 2595, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60891, 2596, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60891, 2723, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60891, 3927, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60891, 8766, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60891, 8932, 0, 0, 0, 0);

REPLACE INTO npc_vendor VALUES (60890, 2148, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60890, 2149, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60890, 2150, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60890, 2151, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60890, 2152, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60890, 2153, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60890, 2417, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60890, 2418, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60890, 2419, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60890, 2420, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60890, 2421, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60890, 2422, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60890, 2423, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60890, 2424, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60890, 2425, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60890, 2426, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60890, 2427, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60890, 2428, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60890, 2446, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60890, 2448, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60890, 2451, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60890, 3891, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60890, 3894, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60890, 8088, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60890, 8089, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60890, 8090, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60890, 8091, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60890, 8092, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60890, 8093, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60890, 8094, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60890, 17189, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60890, 17190, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60890, 17192, 0, 0, 0, 0);

REPLACE INTO npc_vendor VALUES (60889, 159, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60889, 414, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60889, 422, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60889, 1179, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60889, 1205, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60889, 1645, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60889, 1707, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60889, 1708, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60889, 1939, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60889, 2070, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60889, 2593, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60889, 2594, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60889, 2595, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60889, 2596, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60889, 2723, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60889, 3927, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60889, 8766, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60889, 8932, 0, 0, 0, 0);

REPLACE INTO npc_vendor VALUES (60885, 2880, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60885, 2901, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60885, 3466, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60885, 3857, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60885, 5956, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60885, 18567, 0, 0, 0, 0);
