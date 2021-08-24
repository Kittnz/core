replace into quest_template values (55300, 2, 0, -121, 50, 0, 60, 0, 0, 0, 164, 265, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7652, 0, 0, 0, 0, 0, 0, 'Imperial Plate Gauntlets', '', 'For the gauntlets plans, I\'ll be needin\' 20 thorium bars.', 'Not only those be comfy, mind you, it\'s also a style. Of course, they do provide protection too. ', 'For the gauntlets plans, I\'ll be needin\' 10 thorium bars.$B$BAre you alright, sonny? Yer getting\' all red.', '', '', '', '', '', 12359, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12690, 0, 0, 0, 1, 0, 0, 0, 59, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- TODO: Replace item ID 12690 with [Plans: Imperial Plate Gauntlets]

replace into creature_questrelation (id, quest) values (14567, 55300);
replace into creature_involvedrelation (id, quest) values (14567, 55300);

replace into creature_template values (91190, 9, 16204, 0, 0, 0, 'Grant Lafford', 'The Silver Hand', 60006, 20, 30, 2104, 2104, 0, 0, 20, 529, 3, 1.125, 1.14286, 0, 20, 5, 0, 0, 1, 2, 2, 0, 272, 1, 1400, 1900, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 3, 0, 0, 3, 0, 0, 0, 0, 0, 66, 0, ''),
(91191, 9, 16204, 0, 0, 0, 'Saul Buckwaldt', 'The Argent Dawn', 60005, 20, 30, 2104, 2104, 0, 0, 20, 814, 3, 1.125, 1.14286, 0, 20, 5, 0, 0, 1, 2, 2, 0, 272, 1, 1400, 1900, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 3, 0, 0, 3, 0, 0, 0, 0, 0, 66, 0, '');


(91191, 9, 16204, 0, 0, 0, 'Saul Buckwaldt', 'The Argent Dawn', 0, 20, 30, 2104, 2104, 0, 0, 20, 814, 1, 1.125, 1.14286, 0, 20, 5, 0, 0, 1, 2, 2, 0, 272, 1, 1400, 1900, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 3, 0, 0, 3, 0, 0, 0, 0, 0, 66, '');

update creature_template set faction = 529 where entry in (91190, 911991);
update creature_template set npc_flags = 3 where entry in (91191, 91190);

set @gossip_menu_id = 60005; set @magic_number = 91191; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); replace into broadcast_text (entry, Male_Text) values (@magic_number, 'The Argent Dawn fights in far away lands to maintain order within Azeroth, even as chaos lurks.'); replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 60006; set @magic_number = 91190; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Even while the kingdoms have fallen around us, and they are nothing but a crumbled reminder of greatness, there is still hope, do what you must to preserve honor.'); replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (0,50240,1519,34,28,0,0,'What Once Was','Hello, and Welcome to the Argent Dawn! We are a group that combats evil across the world to try and maintain order.\n\nOur roots come from many that originated both here and in Lordaeron, members of The Silver Hand, an order of paladins that did similar things that we do now.\n\nIf you wouldn\'t mind, I currently am in need of a favor, an old member of this order I have been trying to find for quite a while, he\'s a friend of mine, and infact my old teacher and master in the ways of the light.\n\nWith the collapse of Lordaeron at the onset of the Third War I had thought he simply had passed as many others had in that hellish war, but I have recieved a written account that he is possibly still alive from a friend of mine at the local Cathedral here in Stormwind!\n\nIf you could spare some time, can you find Apprentice Kryten within Refuge Pointe in the Arathi Highlands?\n\nLook for a man with long golden hair, shouldn\'t be too hard to miss.','Find Apprentice Kryten in Refuge Pointe located in The Arathi Highlands.','Is there anything that you need?','Why hello there traveller, yes my name is Apprentice Kryten!\n\nWelcome to Refuge Pointe, was there something that I could assist you with?',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,529,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

update quest_template set rewxp = 500 where entry = 50240;

replace into creature_questrelation (id, quest) values (91191, 50240);
replace into creature_involvedrelation (id, quest) values (2788, 50240);

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (50240,50241,1519,34,30,0,0,'Finding The Forgotten','Hello! Hope you\'re finding what you need here in Refuge Pointe, I came from the Cathedral District in Stormwind to offer what aid I could once I had found out the troubles afflicting the once great nation of Stromgarde, and from what is left here, I certainly am happy I came!\n\n...Oh, that is why you\'re here, I sent that letter quite a while ago when a trader that I hadn\'t seen before came and had spoken a name that Saul had mentioned before in his old tales of paladins and the Silver Hand back before the Third War.\n\nHe certainly was old enough to fit the description, but came with a wagon full of apples that he had sold to some of the locals and guardsmen around here.\n\nHe hasn\'t returned since that first trip he came with the apples. I\'m not sure if he is who you\'re looking for, and I\'d hate to dissapoint Saul if it didn\'t turn out to be true, but if you are looking for him, he said he had a farmstead high in the hills to the north west by the old ruined wall, he certainly headed that way when he left!','Try and locate the Old Silver Hand Paladin','Yes?','Yes? Do I know you? Welcome to the Farmstead.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,529,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

update quest_template set rewxp = 1500 where entry = 50241;

replace into creature_questrelation (id, quest) values (2788, 50241);
replace into creature_involvedrelation (id, quest) values (91190, 50241);

replace into creature_template values 
(91350, 0, 3718, 3719, 0, 0, 'Magus Bromley', 'Kirin Tor', 0, 50, 50, 2953, 2992, 5553, 5680, 742, 76, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 42, 52, 0, 138, 1, 2000, 2000, 8, 32768, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 7, 0, 2358, 2358, 0, 0, 0, 0, 50, 0, 0, 20815, 16, 1645, 0, 23580, 0, 47, 67, 'EventAI', 1, 3, 0, 0, 3, 2358, 0, 0, 0, 0, 0, ''),
(91351, 0, 18107, 0, 0, 0, 'Damion Steelborn', 'The Army of Lordaeron', 9580, 21, 21, 712, 712, 0, 0, 1419, 12, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 31, 40, 0, 106, 1, 2000, 2000, 1, 4096, 0, 0, 0, 0, 0, 0, 38.72, 53.24, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 524298, ''),
(91352, 0, 18108, 18109, 0, 0, 'Remnants Footman', 'The Army of Lordaeron', 0, 17, 18, 1158, 1251, 0, 0, 765, 17, 0, 1, 1.14286, 0, 20, 5, 0, 1, 1, 74, 96, 0, 84, 1, 2000, 2000, 1, 64, 0, 0, 0, 0, 0, 0, 23.8896, 32.8482, 100, 7, 0, 634, 634, 0, 0, 10, 10, 10, 10, 10, 5115, 0, 0, 0, 6340, 0, 77, 105, 'EventAI', 0, 3, 0, 0, 3, 634, 0, 0, 0, 0, 0, ''),
(91353, 0, 18109, 18108, 0, 0, 'Remnants Knight', 'The Army of Lordaeron', 0, 17, 18, 1158, 1251, 0, 0, 765, 17, 0, 1, 1.14286, 0, 20, 5, 0, 1, 1, 74, 96, 0, 84, 1, 2000, 2000, 1, 64, 0, 0, 0, 0, 0, 0, 23.8896, 32.8482, 100, 7, 0, 634, 634, 0, 0, 10, 10, 10, 10, 10, 5115, 0, 0, 0, 6340, 0, 77, 105, 'EventAI', 0, 3, 0, 0, 3, 634, 0, 0, 0, 0, 0, ''),
(91354, 0, 3648, 0, 0, 0, 'Duke Ramon III', 'House of Nobles', 0, 35, 35, 2440, 2440, 0, 0, 1373, 11, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 51, 65, 0, 138, 1, 2000, 2000, 1, 4096, 0, 0, 0, 0, 0, 0, 51.128, 70.301, 100, 7, 0, 935, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 935, 0, 0, 0, 0, 524288, ''),
(91355, 0, 802, 0, 0, 0, 'Ghoststalker', NULL, 0, 19, 20, 549, 584, 0, 0, 1052, 38, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 28, 36, 0, 90, 1, 2000, 2000, 1, 0, 0, 1, 0, 0, 0, 0, 31.856, 43.802, 100, 1, 1, 3823, 0, 3823, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5948, 0, 0, 'EventAI', 1, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, '');

update creature_template set npc_flags = 2 where entry in (91351); 
update creature_template set npc_flags = 3 where entry in (91350); 

update creature_template set faction = 1914 where entry = 91350;
update creature_template set faction = 12 where entry = 91354;

set @gossip_menu_id = 60109; set @magic_number = 91350; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Dalaran may have been shattered but we still do our work for the greater knowledge of magic.'); replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

replace into game_weather (zone, spring_rain_chance, spring_snow_chance, spring_storm_chance, summer_rain_chance, summer_snow_chance, summer_storm_chance, fall_rain_chance, fall_snow_chance, fall_storm_chance, winter_rain_chance, winter_snow_chance, winter_storm_chance) VALUES ('5024', '0', '90', '0', '0', '90', '0', '0', '0', '0', '0', '98', '0');
replace into game_weather (zone, spring_rain_chance, spring_snow_chance, spring_storm_chance, summer_rain_chance, summer_snow_chance, summer_storm_chance, fall_rain_chance, fall_snow_chance, fall_storm_chance, winter_rain_chance, winter_snow_chance, winter_storm_chance) VALUES ('5027', '0', '90', '0', '0', '90', '0', '0', '0', '0', '0', '98', '0');
replace into game_weather (zone, spring_rain_chance, spring_snow_chance, spring_storm_chance, summer_rain_chance, summer_snow_chance, summer_storm_chance, fall_rain_chance, fall_snow_chance, fall_storm_chance, winter_rain_chance, winter_snow_chance, winter_storm_chance) VALUES ('5052', '0', '90', '0', '0', '90', '0', '0', '0', '0', '0', '98', '0');

-- Black Morass loot tables:

-- Antnormi Loottable 1
 replace into creature_loot_template values (65125, 61040, 12.375, 1, 1, 1, 0, 0, 0);
 replace into creature_loot_template values (65125, 61027, 12.375, 1, 1, 1, 0, 0, 0);
 replace into creature_loot_template values (65125, 61031, 12.375, 1, 1, 1, 0, 0, 0);
 replace into creature_loot_template values (65125, 61037, 12.375, 1, 1, 1, 0, 0, 0);
 replace into creature_loot_template values (65125, 61046, 12.375, 1, 1, 1, 0, 0, 0);
 replace into creature_loot_template values (65125, 50429, 12.375, 1, 1, 1, 0, 0, 0);
 replace into creature_loot_template values (65125, 61053, 12.375, 1, 1, 1, 0, 0, 0);
 replace into creature_loot_template values (65125, 50427, 12.375, 1, 1, 1, 0, 0, 0);
 replace into creature_loot_template values (65125, 61014, 1, 1, 1, 1, 0, 0, 0);
 -- Antnormi Loottable 2
 replace into creature_loot_template values (65125, 61040, 12.375, 2, 1, 1, 0, 0, 0);
 replace into creature_loot_template values (65125, 61027, 12.375, 2, 1, 1, 0, 0, 0);
 replace into creature_loot_template values (65125, 61031, 12.375, 2, 1, 1, 0, 0, 0);
 replace into creature_loot_template values (65125, 61037, 12.375, 2, 1, 1, 0, 0, 0);
 replace into creature_loot_template values (65125, 61046, 12.375, 2, 1, 1, 0, 0, 0);
 replace into creature_loot_template values (65125, 50429, 12.375, 2, 1, 1, 0, 0, 0);
 replace into creature_loot_template values (65125, 61053, 12.375, 2, 1, 1, 0, 0, 0);
 replace into creature_loot_template values (65125, 50427, 12.375, 2, 1, 1, 0, 0, 0);
 replace into creature_loot_template values (65125, 61014, 1, 2, 1, 1, 0, 0, 0);
-- Antnormi Infinite Whelp Loottable
 replace into creature_loot_template values (65125, 70016, 0.5, 3, 1, 1, 0, 0, 0);
 -- Mossheart Loottable
 replace into creature_loot_template values (65124, 61051, 16.5, 1, 1, 1, 0, 0, 0);
 replace into creature_loot_template values (65124, 61050, 16.5, 1, 1, 1, 0, 0, 0);
 replace into creature_loot_template values (65124, 61059, 16.5, 1, 1, 1, 0, 0, 0);
 replace into creature_loot_template values (65124, 61060, 16.5, 1, 1, 1, 0, 0, 0);
 replace into creature_loot_template values (65124, 61061, 16.5, 1, 1, 1, 0, 0, 0);
 replace into creature_loot_template values (65124, 61062, 16.5, 1, 1, 1, 0, 0, 0);
 
 delete from item_template where entry between 83031 and 83035;
 
 -- NEW RARES:
 
 -- Blademaster Kargron , level 59 elite rare spawn, respawn timer is 6 days , has 28614 HP 3412 ARMOR, 15 Fire resistance , use damage values from entry 10268 , make his attack speed 2.5 seconds, movement speed is 1.4x normal , faction 40
 
 -- Xalvic Blackclaw , level 53 elite rare spawn, respawn timer is 4 days , has 19438 HP 3012 ARMOR, 35 Shadow resistance , use damage values from entry 9030 , movement speed is 1.2x normal , faction 1434
 
 -- Mallon The Moontouched , level 58 elite rare spawn, respawn timer is 5 days , has 27438 HP 3355 ARMOR, 85 Frost resistance, 15 arcane resistance , use damage values from entry 10596 (Reduce by about 10%) , movement speed is 1.2x normal , faction 16
 
 -- Grug'thok the Seer , level 47 elite rare spawn, respawn timer is 5 days , has 15192 HP 2614 ARMOR, 20 arcane resistance , use damage values from entry 7267) , movement speed is NORMAL , has neutral attackable faction (Faction 32 perhaps)

 
replace into creature_template values 
 (91304, 0, 9996, 0, 0, 0, 'Taranaszz', 'The Dampener', 0, 56, 56, 26455, 26455, 0, 0, 4075, 14, 0, 1, 1.14286, 0, 20, 5, 0, 2, 1, 354, 456, 0, 258, 1, 1175, 1292, 1, 0, 0, 0, 0, 0, 0, 0, 59.9488, 82.4296, 100, 2, 0, 10196, 0, 10196, 0, 0, 228, 0, 0, 0, 9128, 13730, 11971, 0, 0, 0, 688, 903, '', 1, 1, 0, 0, 3, 10196, 0, 0, 0, 0, 0, 'generic_spell_ai');
 
replace into creature_loot_template values (91304, 81360, 23, 1, 1, 1, 0, 0, 0);
replace into creature_loot_template values (91304, 81361, 19, 1, 1, 1, 0, 0, 0);
replace into creature_loot_template values (91304, 81362, 17, 1, 1, 1, 0, 0, 0);
replace into creature_loot_template values (91304, 81363, 0.5, 1, 1, 1, 0, 0, 0);
replace into creature_loot_template values (91304, 81364, 18, 1, 1, 1, 0, 0, 0);
 
 replace into item_template values
 ('81360', '0', '2', '15', 'Claw of Taranassz', 'Pulsating with a foreign energy', '28779', '3', '0', '1', '165020', '41255', '13', '-1', '-1', '60',
 '56', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '5', '5', '3',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1500', '0',
 '0', '41', '72', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '5', '18384', '1', '0', '0', '-1', '0', '-1', '7597', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '3', '0', '0', '65', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('81361', '0', '4', '2', 'Dampener\'s Pauldron\'s', '', '17319', '3', '0', '1', '85688', '21422', '3', '-1', '-1', '62',
 '56', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '12', '7', '6',
 '3', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '126', '0', '0', '0',
 '0', '0', '0', '17821', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '1', '0', '0', '60', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('81362', '0', '4', '4', 'Azure-Scale Sabatons', '', '32126', '3', '0', '1', '50176', '12544', '8', '-1', '-1', '61',
 '56', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '7', '7', '4',
 '5', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '414', '0', '0', '0',
 '5', '0', '5', '13669', '1', '0', '0', '-1', '0', '-1', '13665', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '1', '0', '0', '65', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('81363', '0', '2', '10', 'Staff of Azure Domination', 'The staff of the Dragonflight holds dominion over magic', '30516', '4', '0', '1', '244888', '61222', '17', '-1', '-1', '62',
 '56', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '20', '6', '7',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2600', '0',
 '0', '122', '180', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '23727', '1', '0', '0', '-1', '0', '-1', '14054', '1', '0', '0', '-1', '0', '-1', '18676', '1',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '2', '0', '0', '120', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('81364', '0', '4', '0', 'Scale of Malygos', 'A scale of the Blue Dragon Aspect', '22641', '3', '0', '1', '42444', '10611', '12', '-1', '-1', '61',
 '56', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '5', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '5', '0', '5', '9343', '1', '0', '0', '-1', '0', '-1', '13594', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 
 INSERT INTO creature_template VALUES (91305, 0, 6044, 0, 0, 0, 'Blademaster Kargron', '', 0, 59, 59, 28614, 28614, 0, 0, 3412, 32, 0, 1, 1.14286, 0, 20, 5, 0, 2, 1, 327, 422, 0, 268, 2, 1166, 1283, 1, 0, 0, 0, 0, 0, 0, 0, 60.5576, 83.2667, 100, 7, 0, 9718, 0, 0, 0, 0, 0, 0, 0, 0, 11972, 0, 0, 0, 0, 0, 142, 708, '', 0, 3, 0, 0, 3, 9718, 0, 0, 612449875, 0, 0, 0, 'generic_spell_ai');
 
 update creature_template set faction = 40 where entry = 91305;
 
replace into creature_loot_template values (91305, 81365, 19, 1, 1, 1, 0, 0, 0);
replace into creature_loot_template values (91305, 81366, 16, 1, 1, 1, 0, 0, 0);
replace into creature_loot_template values (91305, 81367, 13, 1, 1, 1, 0, 0, 0);
replace into creature_loot_template values (91305, 81368, 17, 1, 1, 1, 0, 0, 0);
replace into creature_loot_template values (91305, 81369, 0.5, 1, 1, 1, 0, 0, 0);
 
 replace into item_template values
 ('81365', '0', '4', '2', 'Kargron\'s Leggings', 'Worn and scarred by ages of battle', '28623', '3', '0', '1', '107244', '26811', '7', '-1', '-1', '62',
 '59', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '15', '4', '9',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '153', '0', '0', '0',
 '0', '0', '0', '15464', '1', '0', '0', '-1', '0', '-1', '13665', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '1', '0', '0', '75', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('81366', '0', '4', '4', 'Blackrock Clan Mantle', '', '5928', '3', '0', '1', '98044', '24511', '3', '-1', '-1', '65',
 '59', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '17', '7', '12',
 '3', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '507', '0', '0', '0',
 '0', '0', '0', '13388', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '1', '0', '0', '80', '0', '0', '80', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('81367', '0', '4', '0', 'Band of the Old Horde', 'Etched with symbols of the Blackrock Clan', '24087', '3', '0', '1', '98264', '24566', '11', '-1', '-1', '65',
 '59', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '20', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('81368', '0', '4', '3', 'Blackshackle Bracers', '', '6985', '3', '0', '1', '69948', '17487', '9', '-1', '-1', '0',
 '59', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '8', '6', '3',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '170', '0', '0', '0',
 '0', '0', '0', '18384', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '1', '0', '0', '40', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('81369', '0', '2', '8', 'Sword of the Blademaster', 'The blade is perfectly balanced for warfare', '25496', '4', '0', '1', '389164', '97271', '17', '-1', '-1', '66',
 '59', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '18', '7', '12',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2900', '0',
 '0', '151', '234', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '0',
 '0', '0', '0', '7597', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '1', '0', '0', '120', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);

INSERT INTO creature_template VALUES (91306, 0, 2012, 0, 0, 0, 'Xalvic Blackclaw', NULL, 0, 53, 53, 19438, 19438, 0, 0, 3012, 90, 0, 1, 1.14286, 0, 20, 5, 0, 4, 1, 329, 425, 0, 244, 1, 1183, 1301, 1, 0, 0, 0, 0, 0, 0, 0, 59.3256, 81.5727, 100, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 216, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 'generic_spell_ai');

replace into creature_loot_template values (91306, 81370, 24, 1, 1, 1, 0, 0, 0);
replace into creature_loot_template values (91306, 81371, 18, 1, 1, 1, 0, 0, 0);
replace into creature_loot_template values (91306, 81372, 10, 1, 1, 1, 0, 0, 0);
replace into creature_loot_template values (91306, 81373, 13, 1, 1, 1, 0, 0, 0);
replace into creature_loot_template values (91306, 81374, 0.45, 1, 1, 1, 0, 0, 0);

replace into item_template values
 ('81370', '0', '4', '1', 'Footpads of the Corruptor', '', '16587', '3', '0', '1', '55248', '13812', '8', '-1', '-1', '58',
 '53', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '10', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '58', '0', '0', '0',
 '0', '5', '0', '14794', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '40', '0', '0', '0', '0', '47', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('81371', '0', '4', '3', 'Gnarltwist Vest', 'Lined with pure fel energy', '26466', '3', '0', '1', '95816', '23954', '5', '-1', '-1', '58',
 '53', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '11', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '346', '0', '0', '0',
 '0', '6', '0', '9335', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '5', '1', '0', '0', '120', '0', '0', '0', '0', '47', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('81372', '0', '2', '13', 'The Black Claw', '', '5928', '3', '0', '1', '186540', '46635', '21', '-1', '-1', '59',
 '53', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '4', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1900', '0',
 '0', '46', '94', '0', '1', '5', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '65', '0', '0', '0', '0', '47', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('81373', '0', '4', '1', 'Shawl of the Satyr', 'Weaved with dark intent', '23134', '3', '0', '1', '50608', '12652', '16', '-1', '-1', '58',
 '53', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '5', '7', '5',
 '5', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '41', '0', '0', '0',
 '0', '5', '0', '20969', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '0', '0', '0', '0', '0', '47', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('81374', '0', '4', '0', 'Trickster\'s Necklace', 'Emanates a dark energy', '32073', '4', '0', '1', '112692', '28173', '2', '-1', '-1', '58',
 '53', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '13', '3', '5',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '3', '0', '25109', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);

INSERT INTO creature_template VALUES (91307, 2, 12236, 0, 0, 0, 'Mallon The Moontouched', NULL, 0, 58, 58, 27438, 27438, 0, 0, 3355, 14, 0, 1.1, 1.14286, 2, 20, 5, 0, 4, 1, 347, 447, 0, 262, 1, 1166, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 60.5576, 83.2667, 100, 1, 0, 14477, 0, 100003, 0, 0, 0, 0, 0, 0, 5568, 0, 0, 0, 0, 0, 0, 0, '', 1, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 'generic_spell_ai');

replace into creature_loot_template values (91307, 81375, 13, 1, 1, 1, 0, 0, 0);
replace into creature_loot_template values (91307, 81376, 16, 1, 1, 1, 0, 0, 0);
replace into creature_loot_template values (91307, 81377, 21, 1, 1, 1, 0, 0, 0);
replace into creature_loot_template values (91307, 81378, 19, 1, 1, 1, 0, 0, 0);
replace into creature_loot_template values (91307, 81379, 0.60, 1, 1, 1, 0, 0, 0);

replace into item_template values
 ('81375', '0', '2', '10', 'Staff of the Lost Druid', '', '24480', '3', '0', '1', '268924', '67231', '17', '-1', '-1', '63',
 '58', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '16', '7', '14',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2600', '0',
 '0', '124', '156', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '10', '0', '0', '17829', '1', '0', '0', '-1', '0', '-1', '16638', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '2', '2', '0', '0', '100', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('81376', '0', '4', '4', 'Moontouched Girdle', 'Glimmers with the blessing of the moon', '27935', '3', '0', '1', '55364', '13841', '6', '-1', '-1', '63',
 '58', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '14', '3', '12',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '368', '0', '0', '0',
 '5', '0', '0', '7597', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '1', '0', '0', '45', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('81377', '0', '4', '1', 'Enfused Moon Crown', '', '26224', '3', '0', '1', '60512', '15128', '1', '-1', '-1', '62',
 '58', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '23', '4', '10',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '76', '0', '0', '0',
 '4', '0', '0', '7517', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '1', '0', '0', '50', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('81378', '0', '4', '2', 'Eveningstar Gloves', 'Gloves of the Winterspring Keepers', '5928', '3', '0', '1', '54108', '13527', '10', '-1', '-1', '63',
 '58', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '8', '7', '6',
 '5', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '109', '0', '0', '0',
 '5', '0', '0', '9140', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '1', '0', '0', '35', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('81379', '0', '4', '0', 'Shard of the Moon', 'Glimmers in the moonlight with potent power', '28831', '4', '0', '1', '251364', '62841', '11', '-1', '-1', '62',
 '58', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '6', '6', '3',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '5', '0', '0', '14248', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);

INSERT INTO creature_template VALUES (91308, 0, 9370, 0, 0, 0, 'Grug\'thok the Seer', NULL, 0, 47, 47, 15192, 15192, 0, 0, 2614, 38, 0, 1, 1.42857, 0, 20, 5, 0, 4, 1, 82, 110, 0, 220, 1, 2000, 2000, 1, 0, 0, 1, 0, 0, 0, 0, 54.6, 75.075, 100, 1, 1, 14339, 0, 10147, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5954, 0, 0, '', 1, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 'generic_spell_ai');

replace into creature_loot_template values (91308, 81380, 13, 1, 1, 1, 0, 0, 0);
replace into creature_loot_template values (91308, 81381, 14, 1, 1, 1, 0, 0, 0);
replace into creature_loot_template values (91308, 81382, 11, 1, 1, 1, 0, 0, 0);
replace into creature_loot_template values (91308, 81383, 16, 1, 1, 1, 0, 0, 0);
replace into creature_loot_template values (91308, 81383, 0.5, 1, 1, 1, 0, 0, 0);

replace into item_template values
 ('81380', '0', '4', '4', 'Gordunni War Harness', 'A symbol of Ogre might', '27769', '3', '0', '1', '55056', '13764', '5', '-1', '-1', '52',
 '47', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '18', '7', '14',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '538', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '1', '0', '0', '135', '0', '0', '0', '0', '46', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('81381', '0', '4', '0', 'Isildien Ley-Stave', 'A relic of the Highborne', '15564', '3', '0', '1', '51732', '12933', '23', '-1', '-1', '52',
 '47', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '9', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '5', '9415', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '46', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('81382', '0', '4', '0', 'Gordunni War Beads', '', '32326', '3', '0', '1', '29696', '7424', '12', '-1', '-1', '52',
 '47', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '2', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '21958', '1', '0', '0', '1000', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '46', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('81383', '0', '2', '4', 'The Ogre Truncheon', 'Authority comes from a good thwacking', '8803', '3', '0', '1', '139056', '34764', '21', '-1', '-1', '52',
 '47', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '12', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2600', '0',
 '0', '71', '108', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '15', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '2', '3', '0', '0', '90', '0', '0', '0', '0', '46', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('81384', '0', '4', '2', 'Grug\'thok\'s Sash', 'Has a distinctive ogre stench', '16921', '4', '0', '1', '40508', '10127', '6', '-1', '-1', '54',
 '47', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '8', '4', '5',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '89', '0', '0', '0',
 '0', '0', '0', '18384', '1', '0', '0', '-1', '0', '-1', '9395', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '35', '0', '0', '0', '0', '46', '0', '0', '0',
 '0', '1', NULL);
 
 update creature_template set loot_id = 91304 where entry = 91304;
 update creature_template set loot_id = 91305 where entry = 91305;
 update creature_template set loot_id = 91306 where entry = 91306;
 update creature_template set loot_id = 91307 where entry = 91307;
 update creature_template set loot_id = 91308 where entry = 91308;
 
 update item_template set display_id = 40201 where entry = 81402;