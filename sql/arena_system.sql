
-- Arena door event
replace into `battleground_events` (`map`, `event1`, `event2`, `description`) VALUES (35, 254, 0, 'Doors');

-- Add Stormwind Vault as BG map
replace into `battleground_template` VALUES (4, 0, 2, 2, 60, 61, 0, 0, 0, 0, 9000, 0, 9001, 0);

-- Add custom portcullis door for arena
replace into `gameobject_template` VALUES (1771652, 0, 0, 411, 'Arena Portcullis', 114, 36, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- Spawn arena game objects
replace into `gameobject` VALUES (3998671, 1771652, 35, -63.0215, 149.878, -39.134, 6.28188, 0, 0, 0.000652464, -1, 0, 0, 100, 1, 0, 0, 0, 10);
replace into `gameobject` VALUES (3998658, 180636, 35, -76.9176, 149.735, -40.384, 3.156, 0, 0, 0.999999, -0.00130956, 0, 0, 100, 1, 0, 0, 0, 10);
replace into `gameobject` VALUES (3998657, 180636, 35, -117.381, 149.775, -40.384, 0.0340097, 0, 0, 0.0049958, 0.999988, 0, 0, 100, 1, 0, 0, 0, 10);

-- Add arena strings
replace into `mangos_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES (704, 'The Arena battle has begun!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
replace into `mangos_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES (703, 'Fifteen seconds until the Arena battle begins!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
replace into `mangos_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES (702, 'Thirty seconds until the Arena battle begins!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
replace into `mangos_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES (701, 'One minute until the Arena battle begins!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

replace into `gameobject_battleground` (`guid`, `event1`, `event2`) VALUES (3998658, 254, 0);
replace into `gameobject_battleground` (`guid`, `event1`, `event2`) VALUES (3998657, 254, 0);

replace into `broadcast_text` (`ID`, `MaleText`, `FemaleText`, `Sound`, `Type`, `Language`, `EmoteId0`, `EmoteId1`, `EmoteId2`, `EmoteDelay0`, `EmoteDelay1`, `EmoteDelay2`) VALUES (195007, 'This is an experimental arena feature.', '', 0, 0, 0, 1, 1, 0, 0, 0, 0);
replace into `npc_text` (`ID`, `BroadcastTextID0`, `Probability0`, `BroadcastTextID1`, `Probability1`, `BroadcastTextID2`, `Probability2`, `BroadcastTextID3`, `Probability3`, `BroadcastTextID4`, `Probability4`, `BroadcastTextID5`, `Probability5`, `BroadcastTextID6`, `Probability6`, `BroadcastTextID7`, `Probability7`) VALUES (195007, 195007, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

replace into `creature_template`  VALUES (50099, 0, 4731, 0, 0, 0, 'Naire', 'Arena Battlemaster', 0, 60, 60, 7845, 7845, 0, 0, 0, 35, 5, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 50000, 0, 0, 0, 'arena_master');

