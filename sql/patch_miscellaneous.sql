-- Grug'thok the Seer
update creature_template set display_id1 = 11556, scale = 1.3 where entry = 91308;
-- Mallon the Moontouched
update creature_template set display_id1 = 12237 where entry = 91307;
-- Xalvic Blackclaw
update creature_template set display_id1 = 11335, scale = 0.9 where entry = 91306;
-- Ghoststalker
update creature_template set scale = 1.3, level_min = 21, level_max = 21 where entry = 91355;
-- Eveningstar Gloves
update item_template set display_id = 5435 where entry = 81378;	
-- Arcane Missile's missing fix:
update spell_template set attributesex3 = 131072 where entry = 5143 or entry = 5144 or entry = 5145 or entry = 8416 or entry = 8417 or entry = 10211 or entry = 10212 or entry = 25345; 
-- Harlus Ashbuckle, remove civilian flag:
update creature_template set flags_extra = 458762 where entry = 52119;
-- New rare mob's loot:
replace into creature_loot_template values (91304, 81360, 25, 1, 1, 1, 0, 0, 0);
replace into creature_loot_template values (91304, 81361, 25, 1, 1, 1, 0, 0, 0);
replace into creature_loot_template values (91304, 81362, 25, 1, 1, 1, 0, 0, 0);
replace into creature_loot_template values (91304, 81364, 25, 1, 1, 1, 0, 0, 0);
replace into creature_loot_template values (91304, 81363, 0.5, 2, 1, 1, 0, 0, 0);
replace into creature_loot_template values (91305, 81365, 25, 1, 1, 1, 0, 0, 0);
replace into creature_loot_template values (91305, 81366, 25, 1, 1, 1, 0, 0, 0);
replace into creature_loot_template values (91305, 81367, 25, 1, 1, 1, 0, 0, 0);
replace into creature_loot_template values (91305, 81368, 25, 1, 1, 1, 0, 0, 0);
replace into creature_loot_template values (91305, 81369, 0.5, 2, 1, 1, 0, 0, 0);
replace into creature_loot_template values (91306, 81370, 25, 1, 1, 1, 0, 0, 0);
replace into creature_loot_template values (91306, 81371, 25, 1, 1, 1, 0, 0, 0);
replace into creature_loot_template values (91306, 81372, 25, 1, 1, 1, 0, 0, 0);
replace into creature_loot_template values (91306, 81373, 25, 1, 1, 1, 0, 0, 0);
replace into creature_loot_template values (91306, 81374, 0.45, 2, 1, 1, 0, 0, 0);
replace into creature_loot_template values (91307, 81375, 25, 1, 1, 1, 0, 0, 0);
replace into creature_loot_template values (91307, 81376, 25, 1, 1, 1, 0, 0, 0);
replace into creature_loot_template values (91307, 81377, 25, 1, 1, 1, 0, 0, 0);
replace into creature_loot_template values (91307, 81378, 25, 1, 1, 1, 0, 0, 0);
replace into creature_loot_template values (91307, 81379, 0.60, 1, 1, 1, 0, 0, 0);
replace into creature_loot_template values (91308, 81380, 25, 1, 1, 1, 0, 0, 0);
replace into creature_loot_template values (91308, 81381, 25, 1, 1, 1, 0, 0, 0);
replace into creature_loot_template values (91308, 81382, 25, 1, 1, 1, 0, 0, 0);
replace into creature_loot_template values (91308, 81383, 25, 1, 1, 1, 0, 0, 0);
replace into creature_loot_template values (91308, 81383, 0.5, 2, 1, 1, 0, 0, 0);
-- Archivist Landas
update creature_template set display_id1 = 6778 where entry = 91293;
-- Staff of Azure Domination
update item_template set display_id = 61112 where entry = 81363;	
-- Blackrock Clan Mantle
update item_template set display_id = 61111 where entry = 81366;
-- Maleka
update creature_template set display_id1 = 12392 where entry = 91207;
-- Hangman Glix
update creature_template set display_id1 = 7341 where entry = 91239;
-- Hiz Boltmuck
update creature_template set display_id1 = 7342 where entry = 91261;
-- Technician Fraxdust
update creature_template set display_id1 = 11379 where entry = 91268;
-- Craneoperator Bizzrocket
update creature_template set display_id1 = 7054 where entry = 7197;
-- Lena Zapscrew
update creature_template set display_id1 = 11388 where entry = 91238;
-- Oilworker Brassrust
update creature_template set display_id1 = 7182 where entry = 91223;
-- Oilworker Gullydagger
update creature_template set display_id1 = 7171 where entry = 91222;
-- Sparkwater Bruiser
update creature_template set display_id1 = 11377, display_id2 = 0, display_id3 = 0, display_id4 = 0 where entry = 91236;
-- Grant Lafford
update creature_template set display_id1 = 1518 where entry = 91190;
-- Chief Shang
update creature_template set display_id1 = 7170 where entry = 91225;
-- Remove weapons from some mobs:
update creature_template set equipment_id = 0 where entry = 91234;
update creature_template set equipment_id = 0 where entry = 91233;
-- Shang and other weird creatures:
replace into creature_template values 
(9939, 0, 892, 0, 0, 0, 'Mr. Shang', 'GM Island Cat', 0, 1, 1, 64, 64, 0, 0, 20, 35, 0, 1, 1.42857, 1, 20, 5, 0, 0, 1, 10, 11, 0, 44, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2, 0, 'npc_kitten'),
(9940, 0, 18098, 0, 0, 0, 'The Peach King', '', 0, 20, 20, 1064, 1064, 0, 0, 0, 35, 0, 1, 1.14286, 0.5, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(9941, 0, 9583, 0, 0, 0, 'Dragunastrasz', NULL, 0, 23, 24, 617, 664, 0, 0, 976, 60, 0, 1.11111, 1.14286, 0, 20, 5, 0, 0, 1, 34, 43, 0, 104, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 36.96, 50.82, 100, 2, 0, 1042, 0, 1042, 0, 62, 0, 0, 0, 0, 3356, 0, 0, 0, 10420, 0, 31, 45, '', 1, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');
-- He's gonna sell peaches!
update creature_template set npc_flags = 4 where entry = 9940;
replace into npc_vendor values (9940, 16168, 0, 0, 0, 0);
update creature_template set faction = 35 where entry = 9941;
-- Sit on the ground:
replace into creature_template_addon values (9939, 0, 0, 1, 0, 0, 69, 0, NULL);
-- Update Wildtusk's faction to Horde Generic:
update creature_template set faction = 83 where entry between 91400 and 91415;
-- New NPCs:
replace into creature_template values 
(91710, 0, 3702, 0, 0, 0, 'Old Brumwell', '', 0, 40, 40, 1238, 1238, 3191, 3191, 1035, 76, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 61, 78, 0, 156, 1, 2000, 2000, 8, 0, 0, 0, 0, 0, 0, 0, 56.672, 77.924, 100, 7, 0, 2543, 0, 0, 0, 0, 0, 0, 0, 0, 143, 145, 0, 0, 25430, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 2543, 0, 0, 0, 0, 2, 0, ''),
(91711, 0, 2668, 0, 0, 0, 'Duchess Grelda', NULL, 0, 25, 25, 712, 712, 0, 0, 1009, 68, 1, 1, 1.14286, 0, 20, 5, 0, 0, 1, 31, 40, 0, 106, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 38.72, 53.24, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 6566, 0, 0, 0, 0, 524298, 0, ''),
(91712, 0, 2620, 0, 0, 0, 'Duke Nargelas', NULL, 0, 50, 50, 2768, 2768, 0, 0, 2999, 83, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 85, 109, 0, 226, 1, 2000, 2000, 1, 37376, 0, 0, 0, 0, 0, 0, 66.44, 91.355, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 5675, 0, 0, 0, 0, 524298, 0, ''),
(91713, 0, 1660, 0, 0, 0, 'Apothecary Volgrin', NULL, 0, 30, 30, 1002, 1002, 0, 0, 1200, 68, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 42, 53, 0, 122, 1, 2000, 2000, 1, 37376, 0, 0, 0, 0, 0, 0, 45.144, 62.073, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 4572, 0, 0, 0, 0, 524298, 0, ''),
(91714, 0, 9252, 0, 0, 0, 'Foreman Bill', NULL, 0, 17, 17, 439, 495, 0, 0, 1114, 123, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 44, 55, 0, 116, 1, 2200, 2000, 1, 32768, 0, 0, 0, 0, 0, 0, 42.1344, 57.9348, 100, 7, 0, 2503, 2503, 0, 0, 0, 0, 0, 0, 0, 5115, 0, 0, 0, 25030, 0, 40, 57, 'EventAI', 0, 3, 0, 0, 3, 2503, 0, 0, 0, 0, 0, 0, ''),
(91715, 0, 1098, 0, 0, 0, 'Pack Leader Sharn', NULL, 0, 18, 18, 956, 986, 0, 0, 748, 38, 0, 0.94, 1.14286, 0, 20, 5, 0, 0, 1, 27, 34, 0, 80, 1, 2000, 2000, 1, 0, 0, 1, 0, 0, 0, 0, 26.048, 35.816, 100, 1, 1, 1923, 0, 1923, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5947, 0, 0, '', 1, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(91716, 0, 3199, 0, 0, 0, 'Chief Rnarl', NULL, 0, 20, 20, 793, 731, 0, 0, 871, 61, 0, 1.2, 1.14286, 0, 20, 5, 0, 0, 1, 31, 38, 0, 94, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 34.2672, 47.1174, 100, 7, 0, 1007, 1007, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 38, 'EventAI', 1, 1, 0, 0, 3, 1007, 0, 0, 0, 0, 0, 0, ''),
(91717, 0, 3197, 0, 0, 0, 'Belgar', NULL, 0, 18, 18, 640, 683, 655, 693, 870, 61, 0, 1.05, 1.14286, 0, 20, 5, 0, 0, 1, 34, 43, 0, 110, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 42.1344, 57.9348, 100, 7, 0, 1013, 0, 0, 0, 0, 0, 0, 0, 0, 11986, 11436, 9532, 0, 10130, 0, 34, 49, 'EventAI', 1, 1, 0, 0, 3, 1013, 0, 0, 0, 0, 0, 0, ''),
(91718, 0, 1504, 0, 0, 0, 'Storn', '', 0, 19, 19, 686, 697, 0, 0, 765, 17, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 27, 34, 0, 84, 1, 2000, 2000, 1, 32768, 0, 0, 0, 0, 0, 0, 28.6704, 39.4218, 100, 7, 0, 122, 122, 0, 0, 0, 0, 0, 0, 0, 53, 0, 0, 0, 1220, 0, 21, 32, 'EventAI', 1, 3, 0, 0, 3, 122, 0, 0, 0, 0, 0, 0, ''),
(91719, 0, 5076, 0, 0, 0, 'Magister Salorn', 'Kirin Tor', 0, 20, 20, 1299, 1392, 1225, 1275, 740, 128, 0, 0.94, 1.14286, 0, 20, 5, 0, 1, 1, 101, 130, 0, 94, 1, 2000, 2000, 2, 32768, 0, 0, 0, 0, 0, 0, 29.6792, 40.8089, 100, 7, 0, 4802, 4802, 0, 0, 0, 0, 0, 0, 0, 9672, 11642, 0, 0, 48020, 0, 95, 129, 'EventAI', 1, 3, 0, 0, 3, 4802, 0, 0, 0, 0, 0, 0, ''),
(91720, 0, 4350, 0, 0, 0, 'Norga', NULL, 0, 41, 41, 1902, 1902, 0, 0, 2033, 104, 2, 1, 1.14286, 1.35, 20, 5, 0, 0, 1, 62, 80, 0, 162, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 57.728, 79.376, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 524298, 0, ''),
(91721, 0, 1472, 0, 0, 0, 'Duchess Faliona', '', 0, 19, 19, 1062, 1062, 2040, 2040, 20, 12, 3, 1.2, 1.14286, 0, 20, 5, 0, 1, 1, 79, 103, 0, 84, 1, 2000, 1650, 8, 32832, 0, 0, 0, 0, 0, 0, 25.08, 34.485, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 79, 108, '', 1, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

update creature_template set npc_flags = 3 where entry between 91710 and 91730;
update creature_template set scale = 1.2 where entry = 91716;
update creature_template set faction = 76 where entry = 91719;
-- Magus Bromley
update creature_template set faction = 76 where entry = 91350;
set @gossip_menu_id = 60046; set @magic_number = 91710; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); replace into broadcast_text (entry, Male_Text) values (@magic_number, 'I was once a great wizard, its good to leave it all behind me, and simply tend to apples.'); replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;
-- Update Wildtusk Village NPCs:
update creature_template set display_id1 = 536 where entry = 91412;
update creature_template set display_id1 = 4085 where entry = 91414;
update creature_template set display_id1 = 4359 where entry = 91413;
update creature_template set display_id1 = 4074 where entry = 91415;
update creature_template set display_id1 = 6839 where entry = 91400;
update creature_template set display_id1 = 9768 where entry = 91411;
update creature_template set display_id1 = 3608 where entry = 91410;
update creature_template set display_id1 = 2735 where entry = 91409;
update creature_template set display_id1 = 9261 where entry = 91408;
update creature_template set display_id1 = 9336 where entry = 91407;
update creature_template set display_id1 = 2734 where entry = 91406;
update creature_template set display_id1 = 4534 where entry = 91405;
update creature_template set display_id1 = 4321 where entry = 91404;
update creature_template set display_id1 = 4239 where entry = 91401;
update creature_template set equipment_id = 0 where entry = 91401;
update creature_template set equipment_id = 0 where entry = 91404;
update creature_template set equipment_id = 0 where entry = 91405;
update creature_template set equipment_id = 0 where entry = 91406;
update creature_template set equipment_id = 0 where entry = 91407;
update creature_template set equipment_id = 0 where entry = 91408;
update creature_template set equipment_id = 0 where entry = 91409;
update creature_template set equipment_id = 0 where entry = 91410;
update creature_template set equipment_id = 0 where entry = 91411;
update creature_template set equipment_id = 0 where entry = 91415;
update creature_template set equipment_id = 0 where entry = 91413;
update creature_template set equipment_id = 0 where entry = 91414;
update creature_template set equipment_id = 0 where entry = 91412;
-- Misc. fixes for the Wildtusk:
update creature_template set display_id1 = 4358, display_id2 = 0, display_id3 = 0, display_id4 = 0 where entry = 91404;
update creature_template set equipment_id = 0 where entry = 91402;
update creature_template set equipment_id = 0, display_id1 = 9768, display_id2 = 0, display_id3 = 0, display_id4 = 0 where entry = 91400;
update creature_template set equipment_id = 0 where entry = 91403;
update creature_template set name = 'Speaker Ganz\'ih', display_id1 = 6839, display_id2 = 0, display_id3 = 0, display_id4 = 0 where entry = 91411;
-- Remove greeting line from Watcher Oto'be, make him non talkable:
update creature_template set npc_flags = 2 where entry = 91410;
-- Replace weapon of Watcher Oto'be, Watcher Eh'kal, Watcher Lazran, Watcher Hala, Watcher Razil with 11864:
replace into creature_equip_template (entry, equipentry1) values ('55000', '11864');
update creature_template set equipment_id = 55000 where entry in (91410, 91409, 91408, 91407, 91406);
-- Remnants Knight change weapon to 1406:
replace into creature_equip_template (entry, equipentry1) values ('55001', '1406');
update creature_template set equipment_id = 55001 where entry = 91353;
replace into creature_equip_template (entry, equipentry1, equipentry2, equipentry3) values ('55002', '1896',  15207, 0);
update creature_template set equipment_id = 55002 where entry = 91352;
-- Remnants Knight, make mounted on horse:
replace into creature_template_addon values (91353, 0, 18259, 0, 0, 0, 0, 0, NULL);
-- Duchess Faliona add weapon 12252:
replace into creature_equip_template (entry, equipentry1, equipentry2, equipentry3) values (55003, 12252, 0, 0);
update creature_template set equipment_id = 55003 where entry = 91711;
-- Raceway changes:
update broadcast_text set male_text = 'Talk to Gregor or Jizzle. Let them know you want to race!' WHERE entry = 90254;
-- Remove Wormhole stuff:
delete from creature_questrelation where id = 51574 and quest = 60104;
delete from creature_questrelation where id = 51570 and quest = 60104;
delete from creature_involvedrelation where id = 51572 and quest = 60104;
delete from creature_involvedrelation where id = 51571 and quest = 60104;
update quest_template set title = 'Into the Unknown [Deprecated]' where entry = 60104;
update item_template set quality = 0, script_name = '' where entry = 51808;
update item_template set quality = 0, name = 'Broken Portable Wormhole Generator' where entry = 51310;