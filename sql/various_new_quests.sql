replace into quest_template values (55300, 2, 0, -121, 50, 0, 60, 0, 0, 0, 164, 265, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7652, 0, 0, 0, 0, 0, 0, 'Imperial Plate Gauntlets', '', 'For the gauntlets plans, I\'ll be needin\' 20 thorium bars.', 'Not only those be comfy, mind you, it\'s also a style. Of course, they do provide protection too. ', 'For the gauntlets plans, I\'ll be needin\' 10 thorium bars.$B$BAre you alright, sonny? Yer getting\' all red.', '', '', '', '', '', 12359, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12690, 0, 0, 0, 1, 0, 0, 0, 59, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- TODO: Replace item ID 12690 with [Plans: Imperial Plate Gauntlets]

replace into creature_questrelation (id, quest) values (14567, 55300);
replace into creature_involvedrelation (id, quest) values (14567, 55300);

replace into creature_template values 
(91190, 9, 16204, 0, 0, 0, 'Grant Lafford', 'The Silver Hand', 0, 20, 30, 2104, 2104, 0, 0, 20, 814, 1, 1.125, 1.14286, 0, 20, 5, 0, 0, 1, 2, 2, 0, 272, 1, 1400, 1900, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 3, 0, 0, 3, 0, 0, 0, 0, 0, 66, ''),
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