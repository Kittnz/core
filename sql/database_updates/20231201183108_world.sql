REPLACE INTO creature_template VALUES
(60960, 7192, 0, 0, 0, 0, 'Technician Steelbolt', NULL, 41217, 25, 25, 712, 712, 0, 0, 1026, 1682, 3, 1, 1.14286, 0, 18, 5, 0, 0, 1, 37, 46, 0, 106, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 39.5824, 54.4258, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 34, 50, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(60961, 7179, 0, 0, 0, 0, 'Head Technician Klazfit', NULL, 41218, 45, 45, 2217, 2217, 0, 0, 2725, 1682, 3, 1, 1.14714, 0, 18, 5, 0, 0, 1, 78, 95, 0, 204, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 84, 115, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(60962, 7338, 0, 0, 0, 0, 'Fusemaster Blammo', NULL, 41219, 50, 50, 2990, 2990, 0, 0, 2958, 1682, 3, 1, 1.14286, 0, 20, 5, 40, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, '');

set @gossip_menu_id = 41219; set @magic_number = 60962;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Boy howdy, have you ever seen anything so magnificient, so beautiful? This baby could blow a crater the size of Sparkwater wherever we light this fuse, and its my job to make sure we don\'t blow ourselves into smithereens!\n\nOh, I anticipate the day Nazz gives the thumbs up to use this thing, it\'ll be the greatest explosion ever seen on Azeroth!');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41218; set @magic_number = 60961;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'I got sent from Sparkwater to look after this place, We got a lot of projects on the go around here, and us technician\'s make sure all the parts keep in working order.\n\nAnyway, what can I do for you?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41217; set @magic_number = 60960;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Can you believe the luck, the only two shredders we had working out in this neck of the woods went and broke down!\n\nNow I\'m stuck here repairing with hardly any parts to speak of.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;