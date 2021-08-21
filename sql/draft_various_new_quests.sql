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