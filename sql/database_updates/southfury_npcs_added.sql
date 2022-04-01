-- Added creatures ang gossip and shit for Southfury thingy. idk i hate gossip and shit.
REPLACE INTO creature_template (entry, name, subname, display_id1, display_id2, display_id3,  equipment_id, level_min, level_max, health_min, health_max, faction, speed_walk, speed_run) VALUES (60678, 'Southfury Peon', 'Southfury Trading Company', 10038, 550, 7201, 14901, 4, 4, 69, 69, 35, 1, 1.14286);

-- Nantai
REPLACE INTO creature_template (entry, name, subname, display_id1, equipment_id, level_min, level_max, health_min, health_max, faction, speed_walk, speed_run, npc_flags, dmg_min, dmg_max, dmg_multiplier, civilian, unit_flags, armor, scale, detection_range, call_for_help_range, regeneration, gossip_menu_id, flags_extra) VALUES (60700, 'Nantai Truthwind', 'Butcher', 3129, 3489, 14, 14, 360, 421, 104, 1, 1.14286, 5, 17, 22, 1, 1, 4096, 20, 1.35, 18, 5, 3, 60700, 2);
REPLACE INTO npc_vendor VALUES 
(60700, 117, 0, 0, 0, 0),
(60700, 2287, 0, 0, 0, 0),
(60700, 3735, 0, 0, 0, 0),
(60700, 3770, 0, 0, 0, 0),
(60700, 3771, 0, 0, 0, 0),
(60700, 4599, 0, 0, 0, 0),
(60700, 8952, 0, 0, 0, 0);
REPLACE INTO gossip_menu VALUES (60700, 60700, 0);
REPLACE INTO npc_text (ID, BroadcastTextID0) VALUES (60700, 60700);
REPLACE INTO broadcast_text (entry, male_text) VALUES (60700, 'I\'ve found my calling after the injuries of the last war in preparing the finest meals I can provide. \n\nCome and have your fill before heading back to work!');

-- Rat
REPLACE INTO creature_template (entry, name, subname, display_id1, level_min, level_max, health_min, health_max, faction, speed_walk, speed_run, scale, detection_range, call_for_help_range, regeneration) VALUES (60701, 'Gress', 'Rats', 1141, 25, 25, 1000, 1023, 35, 1, 1.14286, 2, 18, 5, 3);

-- Sarn
REPLACE INTO creature_template (entry, name, subname, display_id1, equipment_id, level_min, level_max, health_min, health_max, faction, speed_walk, speed_run, npc_flags, dmg_min, dmg_max, dmg_multiplier, civilian, unit_flags, armor, scale, detection_range, call_for_help_range, regeneration, gossip_menu_id, flags_extra) VALUES (60702, 'Sarn Strongrog', 'Brewmaster', 4506, 5606, 12, 12, 300, 320, 29, 1, 1.14286, 5, 13, 20, 1, 1, 4096, 18, 1, 18, 5, 3, 60702, 2);
REPLACE INTO npc_vendor VALUES 
(60702, 117, 0, 0, 0, 0),
(60702, 159, 0, 0, 0, 0),
(60702, 1179, 0, 0, 0, 0),
(60702, 1205, 0, 0, 0, 0),
(60702, 1645, 0, 0, 0, 0),
(60702, 1708, 0, 0, 0, 0),
(60702, 2287, 0, 0, 0, 0),
(60702, 2593, 0, 0, 0, 0),
(60702, 2594, 0, 0, 0, 0),
(60702, 2595, 0, 0, 0, 0),
(60702, 2596, 0, 0, 0, 0),
(60702, 2723, 0, 0, 0, 0),
(60702, 3770, 0, 0, 0, 0),
(60702, 3771, 0, 0, 0, 0),
(60702, 4599, 0, 0, 0, 0),
(60702, 8766, 0, 0, 0, 0),
(60702, 8952, 0, 0, 0, 0),
(60702, 60271, 0, 0, 0, 0);
REPLACE INTO gossip_menu VALUES (60702, 60702, 0);
REPLACE INTO npc_text (ID, BroadcastTextID0) VALUES (60702, 60702);
REPLACE INTO broadcast_text (entry, male_text) VALUES (60702, 'Everyone wants to know the secret to my brew, but it’s something I can\'t teach.\n\nI learned from an eccentric man riding a turtle a few years back.');
