-- Server Todo
REPLACE INTO creature_template (entry, name, subname, display_id1, level_min, level_max, health_min, health_max, faction, speed_walk, speed_run, gossip_menu_id, npc_flags) VALUES (60704, 'Blossom', 'The Lions Pride Legion', 15358, 30, 30, 420, 420, 35, 1, 1.14286, 60704, 1);
REPLACE INTO gossip_menu VALUES (60704, 60704, 0);
REPLACE INTO npc_text (ID, BroadcastTextID0) VALUES (60704, 60704);
REPLACE INTO broadcast_text (entry, male_text) VALUES (60704, '<She claps excitedly in your face before giggling wildly.>\n\nStep carefully around this estate! Lots of questionable types around, even the flowers are scared!\n\nCan you hear them?!');
