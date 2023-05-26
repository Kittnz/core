REPLACE INTO `world_safe_locs_facing` (`id`, `orientation`) VALUES (936, 3.7);

REPLACE INTO `game_graveyard_zone` (`id`, `ghost_zone`, `faction`) VALUES 
(936, 5179, 0),
(936, 5180, 0),
(936, 5181, 0),
(936, 5182, 0),
(936, 5183, 0),
(936, 5184, 0),
(936, 5185, 0),
(936, 5186, 0),
(936, 5187, 0),
(936, 5188, 0),
(936, 5189, 0),
(936, 5190, 0),
(936, 5191, 0),
(936, 5192, 0),
(936, 5193, 0),
(936, 5194, 0),
(936, 5195, 0),
(936, 5196, 0),
(936, 5197, 0),
(936, 5198, 0),
(936, 5199, 0),
(936, 5200, 0),
(936, 5201, 0),
(936, 5202, 0),
(936, 5203, 0),
(936, 5205, 0),
(936, 5206, 0),
(936, 5207, 0),
(936, 5208, 0),
(936, 5209, 0);

REPLACE INTO `map_template` (`entry`, `parent`, `map_type`, `linked_zone`, `player_limit`, `reset_delay`, `ghost_entrance_map`, `ghost_entrance_x`, `ghost_entrance_y`, `map_name`, `script_name`) VALUES (815, 0, 1, 0, 10, 0, 0, -1765.49, 1607.01, 'Gilneas City', 'instance_gilneas_city');

-- More fixes for new graveyards:

-- DROP TABLE IF EXISTS custom_graveyards;

-- DBC data:

-- "937","1","2947.03","2557.98","139.3","Amani'Alor","","","","","","","","4128894"
-- "938","0","-5653.6","-4181.4","391.9","Farstrider's Lodge","","","","","","","","4128894"
-- "939","813","-2629.27","1041.82","74.256","Winter Veil Vale","","","","","","","","4128894"
-- "940","0","2163.39","2811.55","22.93","Tirisfal Uplands","","","","","","","","4128894"
-- "941","1","-8924.63","-6625.92","18.47","Tel'Abim Island","","","","","","","","4128894"
-- "942","0","-11505.1","3509.7","66.1","Lapidis Isle","","","","","","","","4128894"
-- "943","0","-11111.5","-1832.2","71.8","Karazhan Crypt, Morgan's Plot","","","","","","","","4128894"
-- "944","1","1788.58","1335.74","7144.35","Venture Camp","","","","","","","","4128894"
-- "945","1","-8453.4","-4690.7","-202.9","Caverns of Time","","","","","","","","4128894"
-- "946","1","-13912","2350.9","28.57","Gilijim Isle","","","","","","","","4128894"

REPLACE INTO `game_graveyard_zone` (`id`, `ghost_zone`, `faction`) VALUES 
(937, 2041, 67), -- Amani'Alor
(938, 147, 0), -- Farstrider's Lodge
(939, 5130, 0), -- Winter Veil Vale
(939, 5131, 0), -- Winter Veil Vale, Icepaw Village
(940, 5028, 0), -- Tirisfal Uplands
(940, 5029, 0), -- Tirisfal Uplands
(940, 5030, 0), -- Tirisfal Uplands
(940, 5031, 0), -- Tirisfal Uplands
(940, 5032, 0), -- Tirisfal Uplands
(940, 5033, 0), -- Tirisfal Uplands
(940, 5034, 0), -- Tirisfal Uplands
(940, 5035, 0), -- Tirisfal Uplands
(940, 5036, 0), -- Tirisfal Uplands
(940, 5037, 0), -- Tirisfal Uplands
(940, 5038, 0), -- Tirisfal Uplands
(940, 5039, 0), -- Tirisfal Uplands
(940, 5040, 0), -- Tirisfal Uplands
(940, 5041, 0), -- Tirisfal Uplands
(940, 5042, 0), -- Tirisfal Uplands
(941, 5121, 0), -- Tel'Abim Island
(941, 5122, 0), -- Tel'Abim Island
(941, 5123, 0), -- Tel'Abim Island
(941, 5124, 0), -- Tel'Abim Island
(941, 5125, 0), -- Tel'Abim Island
(941, 5126, 0), -- Tel'Abim Island
(941, 5127, 0), -- Tel'Abim Island
(941, 5128, 0), -- Tel'Abim Island
(941, 5129, 0), -- Tel'Abim Island
(944, 4011, 67), -- Venture Camp
(945, 2366, 0), -- Black Morass
(945, 5204, 0), -- Black Morass

(946, 5054, 0), -- Gilijim Isle
(946, 5055, 0), -- Gilijim Isle
(946, 5056, 0), -- Gilijim Isle
(946, 5057, 0), -- Gilijim Isle
(946, 5058, 0), -- Gilijim Isle
(946, 5059, 0), -- Gilijim Isle
(946, 5060, 0), -- Gilijim Isle
(946, 5061, 0), -- Gilijim Isle
(946, 5062, 0), -- Gilijim Isle
(946, 5063, 0), -- Gilijim Isle
(946, 5064, 0), -- Gilijim Isle
(946, 5065, 0), -- Gilijim Isle
(946, 5066, 0), -- Gilijim Isle
(946, 5067, 0), -- Gilijim Isle
(946, 5068, 0), -- Gilijim Isle
(946, 5069, 0), -- Gilijim Isle
(946, 5070, 0), -- Gilijim Isle

(942, 5071,  0), -- Lapidis Isle
(942, 5072, 0), -- Lapidis Isle

-- 5071 and 5072 are lapidis

(632, 5098, 0), -- Hateforge Quarry, link with Burning Steppes, Flame Crest
(632, 5101, 0), -- Hateforge Quarry, link with Burning Steppes, Flame Crest
(632, 5103, 0), -- Hateforge Quarry, link with Burning Steppes, Flame Crest

(92, 5077, 0), -- Crescent Grove, link with Ashenvale, Astranaar
(92, 5078, 0); -- Crescent Grove, link with Ashenvale, Astranaar

-- Fix orientation:

REPLACE INTO `world_safe_locs_facing` (`id`, `orientation`) VALUES 
(937, 2.3),
(938, 1.0),
(939, 2.7),
(940, 3.37),
(941, 6.0),
(942, 2.04),
(943, 6.1),
(944, 4.0),
(945, 4.9),
(946, 5.14);