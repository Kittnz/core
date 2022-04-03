-- Server Todo
REPLACE INTO creature_template (entry, name, subname, display_id1, level_min, level_max, health_min, health_max, faction, speed_walk, speed_run, gossip_menu_id, npc_flags) VALUES (60704, 'Blossom', 'The Lions Pride Legion', 15358, 30, 30, 420, 420, 35, 1, 1.14286, 60704, 1);
REPLACE INTO gossip_menu VALUES (60704, 60704, 0);
REPLACE INTO npc_text (ID, BroadcastTextID0) VALUES (60704, 60704);
REPLACE INTO broadcast_text (entry, male_text) VALUES (60704, '<She claps excitedly in your face before giggling wildly.>\n\nStep carefully around this estate! Lots of questionable types around, even the flowers are scared!\n\nCan you hear them?!');

-- Coun
REPLACE INTO creature_template (entry, name, subname, display_id1, level_min, level_max, health_min, health_max, faction, speed_walk, speed_run, equipment_id, npc_flags) VALUES (60705, 'Zibs Smallcoil', 'The Lions Pride Legion', 7093, 28, 28, 860, 930, 35, 1, 1.14286, 3491, 4);

-- Coun
REPLACE INTO creature_template (entry, name, subname, display_id1, level_min, level_max, health_min, health_max, faction, speed_walk, speed_run, equipment_id) VALUES (60706, 'Taranarion', 'The Lions Pride Legion', 3436, 32, 32, 949, 1286, 35, 1, 1.14286, 51601);

-- Coun
REPLACE INTO creature_template (entry, name, subname, display_id1, level_min, level_max, health_min, health_max, faction, speed_walk, speed_run, equipment_id) VALUES (60707, 'Darren Jones', 'The Lions Pride Legion', 1299, 32, 32, 949, 1286, 35, 1, 1.14286, 914);

-- Coun
REPLACE INTO gameobject_template (entry, type, displayId, name, size, data0, data1) VALUES (2004014, 5, 25251, 'The Illspring Estate', 1, 1, 1);