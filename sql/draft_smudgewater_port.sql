-- Grim Batol Plaque
replace into gameobject_template values (1772030, 0, 9, 218, 'Grim Batol Memorial', 0, 0, 1.5, 1000246, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
replace into page_text (entry, text, next_page) values (1772030, 'A shrine dedicated to those that fought, and gave their lives in the defence of innocents against our greatest of challenges. May this shrine forever honor those that died within our once great halls in defiance against our invaders.\n\nYou shall never be forgotten.', 0);

replace into creature_template values 
-- New Argent Dawn NPCs:
(91190, 9, 16204, 0, 0, 0, 'Grant Lafford', 'The Silver Hand', 0, 20, 30, 2104, 2104, 0, 0, 20, 814, 1, 1.125, 1.14286, 0, 20, 5, 0, 0, 1, 2, 2, 0, 272, 1, 1400, 1900, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 3, 0, 0, 3, 0, 0, 0, 0, 0, 66, ''), -- Argent Dawn
(91191, 9, 16204, 0, 0, 0, 'Saul Buckwaldt', 'The Argent Dawn', 0, 20, 30, 2104, 2104, 0, 0, 20, 814, 1, 1.125, 1.14286, 0, 20, 5, 0, 0, 1, 2, 2, 0, 272, 1, 1400, 1900, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 3, 0, 0, 3, 0, 0, 0, 0, 0, 66, ''), -- Argent Dawn
-- Sparkwater Port NPCs:
(91200, 0, 7179, 0, 0, 0, 'Wrix Ozzlenut', 'Shredder Mechanic', 0, 36, 36, 1468, 1468, 0, 0, 1427, 120, 4, 1, 1.14286, 0, 20, 5, 0, 0, 1, 51, 66, 0, 140, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 52.272, 71.874, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 10, ''),
(91201, 0, 7164, 0, 0, 0, 'Grazzle Steamscrew', 'Woodcutting Foreman', 0, 5, 5, 319, 319, 0, 0, 852, 35, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 2, ''),
(91202, 0, 15765, 0, 0, 0, 'Tammix Razzfire', 'Apprentice Alchemist', 9557, 23, 23, 617, 617, 0, 0, 957, 29, 17, 1, 1.14286, 0, 20, 5, 0, 0, 1, 28, 37, 0, 100, 1, 2000, 2000, 1, 4608, 0, 0, 2, 0, 0, 0, 36.0272, 49.5374, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 11046, 0, 0, 0, 0, 524298, ''),
(91203, 0, 3877, 0, 0, 0, 'Rugnar', '', 9162, 35, 35, 1342, 1342, 0, 0, 1373, 29, 4, 1, 1.14286, 0, 20, 5, 0, 0, 1, 51, 65, 0, 138, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 51.128, 70.301, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 3342, 0, 0, 0, 0, 524298, ''),
(91204, 6, 1379, 0, 0, 0, 'Karnag the Drunk', 'Drunkard', 0, 57, 57, 5568, 5568, 0, 0, 3327, 120, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 51, 75, 0, 258, 1, 2000, 2000, 1, 514, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 15724, 0, 0, 0, 0, 2, ''), 
(91205, 0, 7131, 0, 0, 0, 'Zeet Waxwrench', 'Antique Goods', 0, 25, 25, 712, 712, 0, 0, 1009, 120, 6, 1, 1.14286, 0, 20, 5, 0, 0, 1, 31, 40, 0, 106, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 38.72, 53.24, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 10, ''),
(91206, 0, 7074, 0, 0, 0, 'Fisherman Shix', 'Fishing Trainer', 9158, 35, 35, 1342, 1342, 0, 0, 1373, 29, 19, 1, 1.14286, 0, 20, 5, 0, 0, 1, 51, 65, 0, 138, 1, 2000, 2000, 1, 4608, 0, 0, 2, 0, 0, 0, 51.128, 70.301, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 3332, 0, 0, 0, 0, 524298, ''),
(91207, 0, 10004, 0, 0, 0, 'Maleka', 'Weapon and Armor Vendor', 9191, 30, 30, 1002, 1002, 0, 0, 1200, 29, 4, 1, 1.14286, 0, 20, 5, 0, 0, 1, 49, 68, 0, 122, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 45.144, 62.073, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 3409, 0, 0, 0, 0, 524298, ''),
(91208, 0, 7166, 0, 0, 0, 'Oilworker Razlik', '', 0, 5, 5, 319, 319, 0, 0, 852, 35, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 2, ''),
(91209, 0, 7130, 0, 0, 0, 'Bazz Eagerblast', '', 0, 5, 5, 319, 319, 0, 0, 852, 35, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 2, ''),
(91210, 0, 13050, 0, 0, 0, 'Meek Fusemix', '', 0, 5, 5, 319, 319, 0, 0, 852, 35, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 2, ''),
(91211, 0, 15300, 0, 0, 0, 'Sazzy Gearlight', '', 0, 5, 5, 319, 319, 0, 0, 852, 35, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 2, ''),
(91212, 0, 10742, 0, 0, 0, 'Rixxle Copperdrive', '', 0, 5, 5, 319, 319, 0, 0, 852, 35, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 2, ''),
(91213, 0, 16023, 0, 0, 0, 'Oil Manager Tizzleflux', '', 0, 5, 5, 319, 319, 0, 0, 852, 35, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 2, ''),
(91214, 0, 7168, 0, 0, 0, 'Technician Spuzzle', '', 0, 5, 5, 319, 319, 0, 0, 852, 35, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 2, ''),
(91215, 0, 7179, 0, 0, 0, 'Nazzle Moreflak', 'Engineering Supplies', 0, 36, 36, 1468, 1468, 0, 0, 1427, 120, 4, 1, 1.14286, 0, 20, 5, 0, 0, 1, 51, 66, 0, 140, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 52.272, 71.874, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 10, ''),
(91194, 0, 1246, 0, 0, 0, 'Makrura Oilclaw', NULL, 0, 9, 10, 196, 196, 0, 0, 406, 129, 0, 1, 0.857143, 0, 20, 5, 0, 0, 1, 11, 15, 0, 58, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 16.632, 22.869, 100, 7, 0, 3141, 0, 0, 0, 0, 0, 0, 0, 0, 5424, 0, 0, 0, 0, 0, 7, 15, 'EventAI', 1, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, ''),
(91193, 0, 1940, 0, 0, 0, 'Makrura Thresher', NULL, 0, 8, 9, 156, 176, 0, 0, 406, 129, 0, 1, 0.857143, 0, 20, 5, 0, 0, 1, 11, 15, 0, 58, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 16.632, 22.869, 100, 7, 0, 3141, 0, 0, 0, 0, 0, 0, 0, 0, 5424, 0, 0, 0, 0, 0, 7, 15, 'EventAI', 1, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, '');

update creature_template set faction = 1001 where entry between 91200 and 91215;
update creature_template set faction = 125 where entry in (91203, 91204, 91206, 91207);
update creature_template set npc_flags = 3 where entry = 91200; -- Gossip + quest
update creature_template set npc_flags = 3 where entry = 91204; -- Gossip + quest
update creature_template set npc_flags = 2 where entry = 91208; -- Gossip + quest
update creature_template set npc_flags = 2 where entry = 91203; -- Quest only
update creature_template set npc_flags = 2 where entry = 91209; -- Quest only
update creature_template set npc_flags = 2 where entry = 91210; -- Quest only
update creature_template set npc_flags = 2 where entry = 91211; -- Quest only
update creature_template set npc_flags = 2 where entry = 91212; -- Quest only
update creature_template set npc_flags = 2 where entry = 91213; -- Quest only
update creature_template set npc_flags = 2 where entry = 91214; -- Quest only
update creature_template set npc_flags = 16389 where entry = 91201; -- Gossip + quest + vendor
update creature_template set npc_flags = 16389 where entry = 91205; -- Gossip + quest + vendor
update creature_template set npc_flags = 19 where entry = 91202; -- Gossip + quest + trainer
update creature_template set npc_flags = 23 where entry = 91206; -- Vendor + quest + trainer
update creature_template set npc_flags = 16388 where entry = 91207; -- Vendor + gossip
update creature_template set npc_flags = 16388 where entry = 91215; -- Vendor + gossip

replace into creature_template_addon (entry, patch, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) values (91200, 0, 0, 0, 0, 0, 69, 0, null);
replace into creature_template_addon (entry, patch, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) values (91209, 0, 0, 1, 0, 0, 0, 0, null);
replace into creature_template_addon (entry, patch, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) values (91210, 0, 0, 1, 0, 0, 0, 0, null);
replace into creature_template_addon (entry, patch, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) values (91206, 0, 0, 0, 1, 16, 379, 0, null);

-- Alchemy
replace into  npc_trainer  values (91202, 2275, 10, 0, 0, 5, 0, 5875);
replace into  npc_trainer  values (91202, 2339, 100, 171, 25, 0, 0, 5875);
replace into  npc_trainer  values (91202, 2340, 135, 171, 40, 0, 0, 5875);
replace into  npc_trainer  values (91202, 2341, 250, 171, 55, 0, 0, 5875);
replace into  npc_trainer  values (91202, 3179, 450, 171, 90, 0, 0, 5875);
replace into  npc_trainer  values (91202, 3181, 1350, 171, 120, 0, 0, 5875);
replace into  npc_trainer  values (91202, 3184, 50, 171, 15, 0, 0, 5875);
replace into  npc_trainer  values (91202, 3185, 1350, 171, 125, 0, 0, 5875);
replace into  npc_trainer  values (91202, 3186, 1800, 171, 130, 0, 0, 5875);
replace into  npc_trainer  values (91202, 3458, 3600, 171, 110, 0, 0, 5875);
replace into  npc_trainer  values (91202, 7180, 405, 171, 90, 0, 0, 5875);
replace into  npc_trainer  values (91202, 7838, 225, 171, 80, 0, 0, 5875);
replace into  npc_trainer  values (91202, 7839, 900, 171, 130, 0, 0, 5875);
replace into  npc_trainer  values (91202, 7842, 900, 171, 100, 0, 0, 5875);
replace into  npc_trainer  values (91202, 7846, 2700, 171, 140, 0, 0, 5875);
replace into  npc_trainer  values (91202, 11536, 225, 171, 50, 0, 0, 5875);
-- Fishing
replace into npc_trainer values (91206, 7733, 100, 0, 0, 5, 0, 5875);
replace into npc_trainer values (91206, 7734, 500, 356, 50, 0, 0, 5875);

-- Greeting texts:
set @gossip_menu_id = 60000; set @magic_number = 91205; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); replace into broadcast_text (entry, Male_Text) values (@magic_number, 'If you\'re lookin\' for odds and ends from across the south sea\'s then you\'re in luck!\n\nThere\'s no other place you can get this stuff then right here at Zeet\'s!\n\nOh, and NO REFUNDS!'); replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 60001; set @magic_number = 91202; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Hey there, if you\'re looking to produce your own potions to save a few coin, you\'ve come just to the right place!'); replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 60002; set @magic_number = 91204; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Unless you have a drink for me, you\'d best shove up whelp!'); replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 60003; set @magic_number = 91201; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Cutting wood isn\'t easy work, especially with all these lazy louts!\n\nIt\'s what good foremans like me are here for, up productivity!'); replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 60004; set @magic_number = 91200; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); replace into broadcast_text (entry, Male_Text) values (@magic_number, 'It\'s all about goblin precision, you think an orc could work such delicate parts?\n\nWhat\'cha need bub?'); replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 60005; set @magic_number = 91191; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); replace into broadcast_text (entry, Male_Text) values (@magic_number, 'The Argent Dawn fights in far away lands to maintain order within Azeroth, even as chaos lurks.'); replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 60006; set @magic_number = 91190; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Even while the kingdoms have fallen around us, and they are nothing but a crumbled reminder of greatness, there is still hope, do what you must to preserve honor.'); replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

-- Vendors
replace into npc_vendor values (91207, 2488, 0, 0, 0, 0);
replace into npc_vendor values (91207, 2489, 0, 0, 0, 0);
replace into npc_vendor values (91207, 2490, 0, 0, 0, 0);
replace into npc_vendor values (91207, 2491, 0, 0, 0, 0);
replace into npc_vendor values (91207, 2492, 0, 0, 0, 0);
replace into npc_vendor values (91207, 2493, 0, 0, 0, 0);
replace into npc_vendor values (91207, 2494, 0, 0, 0, 0);
replace into npc_vendor values (91207, 2495, 0, 0, 0, 0);
replace into npc_vendor values (91207, 2506, 0, 0, 0, 0);
replace into npc_vendor values (91207, 2507, 0, 0, 0, 0);
replace into npc_vendor values (91207, 2512, 0, 0, 0, 0);
replace into npc_vendor values (91207, 2515, 0, 0, 0, 0);
replace into npc_vendor values (91207, 5439, 0, 0, 0, 0);
replace into npc_vendor values (91207, 11362, 0, 0, 0, 0);
replace into npc_vendor values (91207, 2129, 0, 0, 0, 0);
replace into npc_vendor values (91207, 2379, 0, 0, 0, 0);
replace into npc_vendor values (91207, 2380, 0, 0, 0, 0);
replace into npc_vendor values (91207, 2381, 0, 0, 0, 0);
replace into npc_vendor values (91207, 2383, 0, 0, 0, 0);
replace into npc_vendor values (91207, 2384, 0, 0, 0, 0);
replace into npc_vendor values (91207, 2385, 0, 0, 0, 0);
replace into npc_vendor values (91207, 17184, 0, 0, 0, 0);
replace into npc_vendor values (91215, 2880, 0, 0, 0, 0);
replace into npc_vendor values (91215, 2901, 0, 0, 0, 0);
replace into npc_vendor values (91215, 3466, 0, 0, 0, 0);
replace into npc_vendor values (91215, 4357, 4, 10800, 0, 0);
replace into npc_vendor values (91215, 4361, 2, 10800, 0, 0);
replace into npc_vendor values (91215, 4363, 2, 10800, 0, 0);
replace into npc_vendor values (91215, 4364, 4, 10800, 0, 0);
replace into npc_vendor values (91215, 4371, 2, 10800, 0, 0);
replace into npc_vendor values (91215, 4382, 1, 10800, 0, 0);
replace into npc_vendor values (91215, 4389, 0, 0, 0, 0);
replace into npc_vendor values (91215, 4399, 0, 0, 0, 0);
replace into npc_vendor values (91215, 4400, 0, 0, 0, 0);
replace into npc_vendor values (91215, 4404, 3, 10800, 0, 0);
replace into npc_vendor values (91215, 5956, 0, 0, 0, 0);
replace into npc_vendor values (91215, 10647, 0, 0, 0, 0);
replace into npc_vendor values (91215, 10648, 0, 0, 0, 0);
replace into npc_vendor (entry, item) values (91205, 2773);
replace into npc_vendor (entry, item) values (91205, 81278);

-- New quest's related items:
replace into item_template values 
(81291, 0, 12, 0, 'Razlik\'s Tools', 'Small, crude, and smeared with oil, most definitely of goblin make.', 2053, 1, 0, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 4, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, null),
(81292, 0, 12, 0, 'Energized Scale', '', 20893, 1, 0, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 4, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, null),
(81293, 0, 12, 0, 'Sealed Trade Goods', 'Small, crude, and smeared with oil, most definitely of goblin make.', 7914, 1, 0, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 4, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, null);

update item_template set stackable = 5 where entry = 81293;
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref) values (3130, 81292, -20, 6, 1);
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref) values (3131, 81292, -20, 6, 1);
replace into gameobject_template values (1000250, 0, 3, 2891, 'Razlik\'s Tools', 0, 4, 0.7, 43, 1000250, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
replace into gameobject_loot_template (entry, item, chanceorquestchance, groupid, mincountorref) values (1000250, 81291, -100, 1, 1);

