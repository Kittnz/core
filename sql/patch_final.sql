replace into mangos_string values('10051','The battle for Sunnyglade Valley begins in 1 minute.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
replace into mangos_string values('10052','The battle for Sunnyglade Valley begins in 30 seconds. Prepare yourselves!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
replace into mangos_string values('10053','Let the battle for Sunnyglade Valley begin!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
replace into mangos_string values('10054','The %s has taken the %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
replace into mangos_string values('10055','$n has defended the %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
replace into mangos_string values('10056','$n has assaulted the %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
replace into mangos_string values('10057','$n claims the %s! If left unchallenged, the %s will control it in 1 minute!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
replace into mangos_string values('10058','Past grudges led you to your failure, what a waste...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
replace into mangos_string values('10059','The timeway been changed and we were unable to find which events shifted it, and now it will take unpredictable effect.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
replace into mangos_string values('10060','Great work, heroes! For these bitter few moments, lay down your weapons away from each other. And strike together at your common foe!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
replace into mangos_string values('10061','Lion\'s Pride Tower',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
replace into mangos_string values('10062','Krokvel Tower',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
replace into mangos_string values('10063','Fort Wrynn',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

REPLACE INTO creature_template VALUES
(60614, 15718, 0, 0, 0, '\'Charming\' Rudair', 'Bard', 0, 60, 60, 5000, 5000, 0, 0, 3252, 119, 0, 1, 1.14286, 0, 18, 5, 0, 0, 1, 161, 207, 0, 272, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 71.2272, 97.9374, 100, 7, 0, 60614, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 111, 150, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

update creature_template set npc_flags = 16391 where entry = 60480;
update creature_template set npc_flags = 7 where entry = 8139;

set @gossip_menu_id = 41057; set @magic_number = 8139;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Welcome, looking to get some premium wares?'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41058; set @magic_number = 65013;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'This place is quite puzzling, but it has great business!'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

REPLACE INTO npc_vendor VALUES
(60480, 2880, 0, 0, 0, 0),
(60480, 2901, 0, 0, 0, 0),
(60480, 3466, 0, 0, 0, 0),
(60480, 4357, 4, 10800, 0, 0),
(60480, 4363, 2, 10800, 0, 0),
(60480, 4364, 4, 10800, 0, 0),
(60480, 4371, 2, 10800, 0, 0),
(60480, 4382, 1, 10800, 0, 0),
(60480, 4399, 0, 0, 0, 0),
(60480, 4400, 0, 0, 0, 0),
(60480, 5956, 0, 0, 0, 0),
(60480, 10647, 0, 0, 0, 0),
(60480, 10648, 0, 0, 0, 0);

delete from creature_loot_template where entry = 65125;

-- ANTNORMI LOOT
REPLACE INTO creature_loot_template VALUES
(65125, 51044, -100, 5, 1, 1, 0),
(65125, 50203, 100, 6, 10, 15, 0),
(65125, 61014, 1, 1, 1, 1, 0),
(65125, 61027, 33.3, 2, 1, 1, 0),
(65125, 61040, 33.3, 2, 1, 1, 0),
(65125, 61031, 33.4, 2, 1, 1, 0),
(65125, 61037, 33.3, 3, 1, 1, 0),
(65125, 50429, 33.3, 3, 1, 1, 0),
(65125, 61046, 33.4, 3, 1, 1, 0),
(65125, 61053, 50, 4, 1, 1, 0),
(65125, 50427, 50, 4, 1, 1, 0);