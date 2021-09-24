update creature_template set speed_walk = 1 where entry = 80506;
update creature_template set equipment_id = 0, name = '\'Sly\' Duncan' where entry = 92022;
update creature_template set level_min = 49, level_max = 51 where entry = 91965;

replace into npc_vendor values (92022, 4604, 0, 0, 0, 0);
replace into npc_vendor values (92022, 4605, 0, 0, 0, 0);
replace into npc_vendor values (92022, 4606, 0, 0, 0, 0);
replace into npc_vendor values (92022, 4607, 0, 0, 0, 0);
replace into npc_vendor values (92022, 4608, 0, 0, 0, 0);
replace into npc_vendor values (92022, 8948, 0, 0, 0, 0); 
 
set @equip_template = 56020; set @weapon_1 = 15269; set @weapon_2 = 0; set @creature = 91968;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0); 
update creature_template set equipment_id = @equip_template where entry = @creature;

update creature_template set display_id1 = 2437 where entry = 91961;
update creature_template set display_id1 = 2437 where entry = 91960;

replace into creature_template values 
(92130, 0, 6825, 0, 0, 0, 'Speaker Gnarr', '', 0, 32, 32, 1221, 1221, 2000, 2000, 1200, 11, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 46, 58, 0, 132, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 48.7872, 67.0824, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 0, 3, 1070, 0, 0, 0, 0, 524298, 0, ''),
(92131, 0, 6825, 0, 0, 0, 'Speaker Ragnaf', '', 0, 32, 32, 1221, 1221, 2000, 2000, 1200, 11, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 46, 58, 0, 132, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 48.7872, 67.0824, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 0, 3, 1070, 0, 0, 0, 0, 524298, 0, ''),
(92132, 0, 1896, 0, 0, 0, 'Swordsman Daelus', '', 0, 35, 35, 2440, 2440, 0, 0, 1373, 11, 2, 1, 1.14286, 0, 20, 5, 0, 1, 1, 160, 205, 0, 138, 1, 1500, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 42.588, 58.5585, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 1, 0, 3, 234, 0, 0, 0, 0, 524298, 0, ''),
(92133, 0, 6989, 0, 0, 0, 'Inuvias Brightlance', '', 0, 40, 40, 10668, 10668, 1000, 1000, 1964, 87, 0, 1.05, 1.14286, 0, 20, 5, 0, 1, 1, 215, 276, 0, 156, 1, 1316, 2000, 1, 32832, 0, 0, 0, 0, 0, 0, 47.4944, 65.3048, 100, 7, 0, 2597, 2597, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 25970, 0, 533, 700, '', 0, 3, 0, 0, 3, 2597, 0, 0, 0, 0, 0, 0, '');

update creature_template set faction = 82, equipment_id = 0, npc_flags = 2 where entry = 92130;
update creature_template set faction = 35, equipment_id = 0, npc_flags = 3 where entry = 92131;
update creature_template set faction = 35, equipment_id = 0, npc_flags = 3 where entry = 92132;
update creature_template set faction = 35, equipment_id = 0, npc_flags = 3 where entry = 92133;

set @gossip_menu_id = 60180; set @magic_number = 92132; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'I am bound to my duty.'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 60181; set @magic_number = 92133; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'The world has changed a lot, and it seems so very different from when I left it.\n\nSomething lingers within the air, but I cannot see it, there is something amiss, but my thoughts are muddled, and almost lost to themselves.\n\nI can see you though, you are in a place that I once called home, that many of my people called home, lost to the ages of time.\n\nI don\'t know why I am here again, but you will aid me.'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @equip_template = 56021; set @weapon_1 = 15211; set @weapon_2 = 80543; set @creature = 92132;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0); 
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 56022; set @weapon_1 = 12421; set @weapon_2 = 80543; set @creature = 92133;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0); 
update creature_template set equipment_id = @equip_template where entry = @creature;

replace into creature_template_addon values (92132, 0, 0, 0, 0, 0, 0, 0, 9617);
replace into creature_template_addon values (92133, 0, 0, 0, 0, 0, 0, 0, 9617);

-- Gilijim Isle:

REPLACE INTO `item_template` VALUES (30405, 4, 0, 0, 'Southsea Reserve', '', 18119, 1, 0, 1, 500, 120, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11629, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

replace into npc_vendor values (92137, 30405, 0, 0, 0, 0);

-- Southsea Miner , display ID 2438, level 48-49 , weapon 2901 , faction 230
-- Southsea Bootlegger, display ID 1516, level 48-49, weapon 1 : 1938 , weapon 2 : 3757 , faction 230
-- Southsea Distiller, display ID 1696, level 48-49 , weapon 1 2092 , faction 230
-- 'Moonshine' Marty <The Bootlegger>, display ID, level 50, humanoid , NO WEAPONS, greeting line : "Please! Don't attack, I'm a famous Bootlegger! I made the recipe for the Southsea Reserve! You can.. Buy some if you'd like!" ((Sells Southsea Reserve, an alchohol made on the island)) , FRIENDLY FACTION TO BOTH ALLY/HORDE
-- Southsea Sea Wolf, display ID 794, level 51-52, humanoid , weapon 1 3783 , faction 230
-- Southsea Outlaw , display ID 793, level 50-51, humanoid, weapon 1 2092 , faction 230
-- Southsea Deckhand, display ID 2557, level 52-53, humanoid , weapon 1 2092 , faction 230
-- Foreman Darkskull <Southsea Freebooters> , display ID 3760, level 52, humanoid, weapon 1 14534, weapon 2 7942 casts 20569 , faction 230
-- Captain Ironhoof <Southsea Freebooters> , display ID 7370, level 54, humanoid , weapon 1 924 , casts 20549 , faction 230
-- Captain Blackeye <Southsea Freebooters> , display ID 4045, level 54, humanoid, weapon 1 12250 , casts 12686 at 30% faction 230
-- Captain Saltbeard <Southsea Freebooters> , display ID 1925, level 54, humanoid, weapon 1 7947 , faction 230
-- Tinyfin ,display ID 617 , scale 0.8, level 48, humanoid , weapon1 1389, friendly faction, both ally and horde
-- Strand Crawler , display ID 1001 , scale 1, level 48-49 beast (Crab) , faction 7
-- Silver Coast Crawler, display ID 1001, scale 1.3, level 50-52 beast (Crab), faction 7

replace creature_template values
(92134, 0, 2438, 0, 0, 0, 'Southsea Miner', NULL, 0, 48, 49, 2577, 2577, 0, 0, 680, 230, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 87, 112, 0, 216, 1, 1300, 2000, 1, 32768, 0, 0, 0, 0, 0, 0, 64.68, 88.935, 100, 7, 0, 2546, 2546, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25460, 0, 91, 124, '', 0, 3, 0, 0, 3, 2546, 0, 0, 0, 0, 0, 0, ''),
(92135, 0, 1516, 0, 0, 0, 'Southsea Bootlegger', NULL, 0, 48, 49, 2577, 2977, 0, 0, 680, 230, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 87, 112, 0, 216, 1, 1300, 2000, 1, 32768, 0, 0, 0, 0, 0, 0, 64.68, 88.935, 100, 7, 0, 2546, 2546, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25460, 0, 91, 124, '', 0, 3, 0, 0, 3, 2546, 0, 0, 0, 0, 0, 0, ''),
(92136, 0, 1696, 0, 0, 0, 'Southsea Distiller', NULL, 0, 48, 49, 2577, 2977, 0, 0, 680, 230, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 87, 112, 0, 216, 1, 1300, 2000, 1, 32768, 0, 0, 0, 0, 0, 0, 64.68, 88.935, 100, 7, 0, 2546, 2546, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25460, 0, 91, 124, '', 0, 3, 0, 0, 3, 2546, 0, 0, 0, 0, 0, 0, ''),
(92137, 0, 1696, 0, 0, 0, '\'Moonshine\' Marty', 'The Bootlegge', 0, 50, 50, 2577, 2977, 0, 0, 680, 35, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 87, 112, 0, 216, 1, 1300, 2000, 1, 32768, 0, 0, 0, 0, 0, 0, 64.68, 88.935, 100, 7, 0, 2546, 2546, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25460, 0, 91, 124, '', 0, 3, 0, 0, 3, 2546, 0, 0, 0, 0, 0, 0, ''),
(92138, 0, 794, 0, 0, 0, 'Southsea Sea Wolf', NULL, 0, 51, 52, 2979, 3082, 0, 0, 2669, 230, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 106, 136, 0, 234, 1, 2000, 2000, 1, 32768, 0, 0, 0, 0, 0, 0, 70.4704, 96.8968, 100, 7, 0, 6371, 6371, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63710, 0, 104, 141, 'EventAI', 1, 3, 0, 0, 3, 6371, 0, 0, 0, 0, 0, 0, ''),
(92139, 0, 793, 0, 0, 0, 'Southsea Outlaw', NULL, 0, 51, 52, 2979, 3082, 0, 0, 2669, 230, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 106, 136, 0, 234, 1, 2000, 2000, 1, 32768, 0, 0, 0, 0, 0, 0, 70.4704, 96.8968, 100, 7, 0, 6371, 6371, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63710, 0, 104, 141, 'EventAI', 1, 3, 0, 0, 3, 6371, 0, 0, 0, 0, 0, 0, ''),
(92140, 0, 2557, 0, 0, 0, 'Southsea Deckhand', NULL, 0, 52, 53, 3179, 3282, 0, 0, 2669, 230, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 106, 136, 0, 234, 1, 2000, 2000, 1, 32768, 0, 0, 0, 0, 0, 0, 70.4704, 96.8968, 100, 7, 0, 6371, 6371, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63710, 0, 104, 141, 'EventAI', 1, 3, 0, 0, 3, 6371, 0, 0, 0, 0, 0, 0, ''),
(92141, 0, 3760, 0, 0, 0, 'Foreman Darkskull', 'Southsea Freebooters', 0, 52, 53, 3179, 3282, 0, 0, 2669, 230, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 106, 136, 0, 234, 1, 2000, 2000, 1, 32768, 0, 0, 0, 0, 0, 0, 70.4704, 96.8968, 100, 7, 0, 6371, 6371, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63710, 0, 104, 141, 'EventAI', 1, 3, 0, 0, 3, 6371, 0, 0, 0, 0, 0, 0, ''),
(92142, 0, 7370, 0, 0, 0, 'Captain Ironhoof', 'Southsea Freebooters', 0, 54, 54, 4179, 4282, 0, 0, 2669, 230, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 206, 236, 0, 234, 1, 2000, 2000, 1, 32768, 0, 0, 0, 0, 0, 0, 70.4704, 96.8968, 100, 7, 0, 6371, 6371, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63710, 0, 104, 141, 'EventAI', 1, 3, 0, 0, 3, 6371, 0, 0, 0, 0, 0, 0, ''),
(92143, 0, 4045, 0, 0, 0, 'Captain Blackeye', 'Southsea Freebooters', 0, 54, 54, 4179, 4282, 0, 0, 2669, 230, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 206, 236, 0, 234, 1, 2000, 2000, 1, 32768, 0, 0, 0, 0, 0, 0, 70.4704, 96.8968, 100, 7, 0, 6371, 6371, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63710, 0, 104, 141, 'EventAI', 1, 3, 0, 0, 3, 6371, 0, 0, 0, 0, 0, 0, ''),
(92144, 0,  1925, 0, 0, 0, 'Captain Saltbeard', 'Southsea Freebooters', 0, 54, 54, 4179, 4282, 0, 0, 2669, 230, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 206, 236, 0, 234, 1, 2000, 2000, 1, 32768, 0, 0, 0, 0, 0, 0, 70.4704, 96.8968, 100, 7, 0, 6371, 6371, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63710, 0, 104, 141, 'EventAI', 1, 3, 0, 0, 3, 6371, 0, 0, 0, 0, 0, 0, ''),
(92145, 0, 617, 0, 0, 0, 'Tinyfin', '', 0, 48, 48, 2577, 2977, 0, 0, 680, 35, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 87, 112, 0, 216, 1, 1300, 2000, 1, 32768, 0, 0, 0, 0, 0, 0, 64.68, 88.935, 100, 7, 0, 2546, 2546, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25460, 0, 91, 124, '', 0, 3, 0, 0, 3, 2546, 0, 0, 0, 0, 0, 0, ''),
(92146, 0,  1001, 0, 0, 0, 'Strand Crawler', '', 0, 48, 49, 2716, 3782, 0, 0, 695, 7, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 123, 130, 0, 194, 1, 2000, 2000, 1, 0, 0, 8, 0, 0, 0, 0, 58.0272, 79.7874, 100, 1, 1, 1088, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5846, 0, 0, '', 1, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(92147, 0,  1001, 0, 0, 0, 'Silver Coast Crawler', '', 0, 50, 52, 3116, 3782, 0, 0, 695, 7, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 183, 230, 0, 194, 1, 2000, 2000, 1, 0, 0, 8, 0, 0, 0, 0, 58.0272, 79.7874, 100, 1, 1, 1088, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5846, 0, 0, '', 1, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

update creature_template set npc_flags = 5, equipment_id = 0 where entry = 92137;
update creature_template set scale = 0.8 where entry = 92145;
update creature_template set scale = 1.3 where entry = 92147;
update creature_template set loot_id = 0 where entry between 92134 and 92150;

set @gossip_menu_id = 60182; set @magic_number = 92137; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Please! Don\'t attack, I\'m a famous Bootlegger! I made the recipe for the Southsea Reserve! You can.. Buy some if you\'d like!'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @equip_template = 56023; set @weapon_1 = 2901; set @weapon_2 = 0; set @creature = 92134;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0); 
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 56024; set @weapon_1 = 1938; set @weapon_2 = 3757; set @creature = 92135;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0); 
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 56025; set @weapon_1 = 2092; set @weapon_2 = 0; set @creature = 92136;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0); 
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 56026; set @weapon_1 = 3783; set @weapon_2 = 0; set @creature = 92138;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0); 
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 56027; set @weapon_1 = 2092; set @weapon_2 = 0; set @creature = 92139;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0); 
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 56028; set @weapon_1 = 2092; set @weapon_2 = 0; set @creature = 92140;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0); 
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 56029; set @weapon_1 = 14534; set @weapon_2 = 7942; set @creature = 92141;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0); 
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 56030; set @weapon_1 = 924; set @weapon_2 = 0; set @creature = 92142;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0); 
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 56031; set @weapon_1 = 12250; set @weapon_2 = 0; set @creature = 92143;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0); 
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 56032; set @weapon_1 = 7947; set @weapon_2 = 0; set @creature = 92144;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0); 
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 56033; set @weapon_1 = 1389; set @weapon_2 = 0; set @creature = 92145;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0); 
update creature_template set equipment_id = @equip_template where entry = @creature;