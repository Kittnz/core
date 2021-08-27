-- Grug'thok the Seer
update creature_template set display_id1 = 11556, scale = 1.3 where entry = 91308;
-- Mallon the Moontouched
update creature_template set display_id1 = 12237, scale = 1.2 where entry = 91307;
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
update item_template set display_id = 61111, duration = 0 where entry = 81366;
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
(9939, 0, 9989, 0, 0, 0, 'Mr. Shang', 'GM Island Cat', 0, 1, 1, 64, 64, 0, 0, 20, 35, 0, 1, 1.42857, 1, 20, 5, 0, 0, 1, 10, 11, 0, 44, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2, 0, 'npc_kitten'),
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
(91710, 0, 3702, 0, 0, 0, 'Old Farwell', '', 0, 40, 40, 1238, 1238, 3191, 3191, 1035, 76, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 61, 78, 0, 156, 1, 2000, 2000, 8, 0, 0, 0, 0, 0, 0, 0, 56.672, 77.924, 100, 7, 0, 2543, 0, 0, 0, 0, 0, 0, 0, 0, 143, 145, 0, 0, 25430, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 2543, 0, 0, 0, 0, 2, 0, ''),
(91711, 0, 2668, 0, 0, 0, 'Duchess Grelda', NULL, 0, 25, 25, 712, 712, 0, 0, 1009, 68, 1, 1, 1.14286, 0, 20, 5, 0, 0, 1, 31, 40, 0, 106, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 38.72, 53.24, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 6566, 0, 0, 0, 0, 524298, 0, ''),
(91712, 0, 2620, 0, 0, 0, 'Duke Nargelas', NULL, 0, 50, 50, 2768, 2768, 0, 0, 2999, 83, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 85, 109, 0, 226, 1, 2000, 2000, 1, 37376, 0, 0, 0, 0, 0, 0, 66.44, 91.355, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 5675, 0, 0, 0, 0, 524298, 0, ''),
(91713, 0, 1660, 0, 0, 0, 'Apothecary Volgrin', NULL, 0, 30, 30, 1002, 1002, 0, 0, 1200, 68, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 42, 53, 0, 122, 1, 2000, 2000, 1, 37376, 0, 0, 0, 0, 0, 0, 45.144, 62.073, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 4572, 0, 0, 0, 0, 524298, 0, ''),
(91714, 0, 9252, 0, 0, 0, 'Foreman Bill', NULL, 0, 17, 17, 439, 495, 0, 0, 1114, 123, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 44, 55, 0, 116, 1, 2200, 2000, 1, 32768, 0, 0, 0, 0, 0, 0, 42.1344, 57.9348, 100, 7, 0, 2503, 2503, 0, 0, 0, 0, 0, 0, 0, 5115, 0, 0, 0, 25030, 0, 40, 57, 'EventAI', 0, 3, 0, 0, 3, 2503, 0, 0, 0, 0, 0, 0, ''),
(91715, 0, 1098, 0, 0, 0, 'Pack Leader Sharn', NULL, 0, 18, 18, 956, 986, 0, 0, 748, 38, 0, 0.94, 1.14286, 0, 20, 5, 0, 0, 1, 27, 34, 0, 80, 1, 2000, 2000, 1, 0, 0, 1, 0, 0, 0, 0, 26.048, 35.816, 100, 1, 1, 1923, 0, 1923, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5947, 0, 0, '', 1, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(91716, 0, 609, 0, 0, 0, 'Chief Rnarl', NULL, 0, 20, 20, 793, 731, 0, 0, 871, 61, 0, 1.2, 1.14286, 0, 20, 5, 0, 0, 1, 31, 38, 0, 94, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 34.2672, 47.1174, 100, 7, 0, 1007, 1007, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 38, 'EventAI', 1, 1, 0, 0, 3, 1007, 0, 0, 0, 0, 0, 0, ''),
(91717, 0, 10789, 0, 0, 0, 'Belgar', NULL, 0, 18, 18, 640, 683, 655, 693, 870, 61, 0, 1.05, 1.14286, 0, 20, 5, 0, 0, 1, 34, 43, 0, 110, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 42.1344, 57.9348, 100, 7, 0, 1013, 0, 0, 0, 0, 0, 0, 0, 0, 11986, 11436, 9532, 0, 10130, 0, 34, 49, 'EventAI', 1, 1, 0, 0, 3, 1013, 0, 0, 0, 0, 0, 0, ''),
(91718, 0, 1504, 0, 0, 0, 'Storn', '', 0, 19, 19, 686, 697, 0, 0, 765, 17, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 27, 34, 0, 84, 1, 2000, 2000, 1, 32768, 0, 0, 0, 0, 0, 0, 28.6704, 39.4218, 100, 7, 0, 122, 122, 0, 0, 0, 0, 0, 0, 0, 53, 0, 0, 0, 1220, 0, 21, 32, 'EventAI', 1, 3, 0, 0, 3, 122, 0, 0, 0, 0, 0, 0, ''),
(91719, 0, 5076, 0, 0, 0, 'Magister Salorn', 'Kirin Tor', 0, 20, 20, 1299, 1392, 1225, 1275, 740, 128, 0, 0.94, 1.14286, 0, 20, 5, 0, 1, 1, 101, 130, 0, 94, 1, 2000, 2000, 2, 32768, 0, 0, 0, 0, 0, 0, 29.6792, 40.8089, 100, 7, 0, 4802, 4802, 0, 0, 0, 0, 0, 0, 0, 9672, 11642, 0, 0, 48020, 0, 95, 129, 'EventAI', 1, 3, 0, 0, 3, 4802, 0, 0, 0, 0, 0, 0, ''),
(91720, 0, 4350, 0, 0, 0, 'Norga', NULL, 0, 41, 41, 1902, 1902, 0, 0, 2033, 104, 2, 1, 1.14286, 1.35, 20, 5, 0, 0, 1, 62, 80, 0, 162, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 57.728, 79.376, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 524298, 0, ''),
(91721, 0, 1472, 0, 0, 0, 'Duchess Faliona', '', 0, 19, 19, 1062, 1062, 2040, 2040, 20, 12, 3, 1.2, 1.14286, 0, 20, 5, 0, 1, 1, 79, 103, 0, 84, 1, 2000, 1650, 8, 32832, 0, 0, 0, 0, 0, 0, 25.08, 34.485, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 79, 108, '', 1, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(91722, 0, 2274, 0, 0, 0, 'Keeper Iselus', NULL, 0, 58, 58, 3875, 3875, 0, 0, 3408, 80, 3, 1, 1.14286, 0, 20, 5, 0, 0, 1, 106, 136, 0, 262, 1, 2000, 2000, 1, 4096, 0, 0, 0, 0, 0, 0, 72.9872, 100.357, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 10300, 0, 0, 0, 0, 1048578, 0, ''),
(91723, 0, 9715, 0, 0, 0, 'Speaker Lazoko', '', 0, 38, 38, 1059, 1059, 0, 0, 2311, 83, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 66, 85, 0, 182, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 59.7872, 82.2074, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 0, 3, 5592, 0, 0, 0, 0, 524298, 0, 'npc_lazoko'),
(91724, 0, 3882, 0, 0, 0, 'Ryan Oxcrest', '', 9546, 30, 30, 752, 752, 0, 0, 1890, 68, 3, 1, 1.14286, 0, 20, 5, 0, 0, 1, 61, 78, 0, 156, 1, 2000, 2000, 1, 36864, 0, 0, 0, 0, 0, 0, 56.672, 77.924, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 10781, 0, 0, 0, 0, 524298, 0, '');
update creature_template set npc_flags = 3 where entry between 91710 and 91724;
update creature_template set scale = 1.3 where entry = 91716;
update creature_template set scale = 1.2 where entry = 91717;
update creature_template set scale = 1 where entry = 91720;
update creature_template set faction = 76 where entry = 91719;
update creature_template set faction = 189, unit_flags = 2 where entry = 91722;
-- ...
replace into creature_template values 
(91725, 6, 2625, 0, 0, 0, 'Darren Mistwall', 'General Goods', 9260, 15, 15, 605, 605, 0, 0, 400, 68, 6, 1, 1.14286, 0, 20, 5, 0, 0, 1, 42, 53, 0, 122, 1, 2000, 2000, 1, 37376, 0, 0, 0, 0, 0, 0, 45.144, 62.073, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 4555, 0, 455502, 0, 0, 524298, 0, ''),
(91726, 0, 10130, 0, 0, 0, 'Father Brightcopf', NULL, 9256, 32, 32, 1162, 1162, 0, 0, 1061, 118, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 44, 57, 0, 128, 1, 2000, 2000, 1, 37376, 0, 0, 0, 0, 0, 0, 47.5904, 65.4368, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 4486, 0, 0, 0, 0, 524298, 0, ''),
(91727, 0, 5508, 0, 0, 0, 'Butcher Reeves', 'Meat Vendor', 9270, 30, 30, 1002, 1002, 0, 0, 1200, 68, 6, 1, 1.14286, 0, 20, 5, 0, 0, 1, 42, 53, 0, 122, 1, 2000, 2000, 1, 37376, 0, 0, 0, 0, 0, 0, 45.144, 62.073, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 4571, 0, 0, 0, 0, 524298, 0, ''),
(91728, 0, 1599, 0, 0, 0, 'Marlow Neggle', 'Heavy Armor Merchant', 9444, 14, 14, 502, 502, 0, 0, 1200, 68, 16388, 1, 1.14286, 0, 20, 5, 0, 0, 1, 42, 53, 0, 122, 1, 2000, 2000, 1, 37376, 0, 0, 0, 0, 0, 0, 45.144, 62.073, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 5819, 0, 0, 0, 0, 524298, 0, ''),
(91729, 0, 1604, 0, 0, 0, 'Harry Upperson', NULL, 0, 24, 24, 712, 712, 0, 0, 1026, 68, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 31, 40, 0, 106, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 38.72, 53.24, 100, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 8388624, 0, 524298, 0, ''),
(91730, 0, 2855, 0, 0, 0, 'Deathguard Markus', NULL, 0, 55, 55, 4667, 4667, 0, 0, 4292, 71, 0, 1, 1.42857, 0, 20, 5, 0, 0, 1, 240, 260, 0, 248, 1, 2000, 2000, 1, 36864, 0, 0, 0, 0, 0, 0, 301.34, 422.17, 100, 7, 0, 1741, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 1, 714, '', 0, 3, 0, 0, 3, 1741, 0, 0, 0, 0, 524288, 0, ''),
(91731, 0, 2857, 0, 0, 0, 'Deathguard Robert', NULL, 0, 55, 55, 4667, 4667, 0, 0, 4292, 71, 0, 1, 1.42857, 0, 20, 5, 0, 0, 1, 240, 260, 0, 248, 1, 2000, 2000, 1, 36864, 0, 0, 0, 0, 0, 0, 301.34, 422.17, 100, 7, 0, 1741, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 1, 714, '', 0, 3, 0, 0, 3, 1741, 0, 0, 0, 0, 524288, 0, ''),
(91732, 0, 1666, 0, 0, 0, 'Deathguard Yannis', NULL, 0, 55, 55, 4667, 4667, 0, 0, 4292, 71, 0, 1, 1.42857, 0, 20, 5, 0, 0, 1, 240, 260, 0, 248, 1, 2000, 2000, 1, 36864, 0, 0, 0, 0, 0, 0, 301.34, 422.17, 100, 7, 0, 1741, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 1, 714, '', 0, 3, 0, 0, 3, 1741, 0, 0, 0, 0, 524288, 0, ''),
(91733, 0, 2858, 0, 0, 0, 'Deathguard Lena', NULL, 0, 55, 55, 4667, 4667, 0, 0, 4292, 71, 0, 1, 1.42857, 0, 20, 5, 0, 0, 1, 240, 260, 0, 248, 1, 2000, 2000, 1, 36864, 0, 0, 0, 0, 0, 0, 301.34, 422.17, 100, 7, 0, 1741, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 1, 714, '', 0, 3, 0, 0, 3, 1741, 0, 0, 0, 0, 524288, 0, ''),
(91734, 0, 1648, 0, 0, 0, 'Deathguard Jenkor', NULL, 0, 55, 55, 4667, 4667, 0, 0, 4292, 71, 0, 1, 1.42857, 0, 20, 5, 0, 0, 1, 240, 260, 0, 248, 1, 2000, 2000, 1, 36864, 0, 0, 0, 0, 0, 0, 301.34, 422.17, 100, 7, 0, 1741, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 1, 714, '', 0, 3, 0, 0, 3, 1741, 0, 0, 0, 0, 524288, 0, '');
-- Misc.
update creature_template set npc_flags = 3 where entry = 91726;
update creature_template set npc_flags = 3 where entry = 91729;
-- Armor
replace into npc_vendor values (91728, 285, 0, 0, 0, 0);
replace into npc_vendor values (91728, 286, 0, 0, 0, 0);
replace into npc_vendor values (91728, 287, 0, 0, 0, 0);
replace into npc_vendor values (91728, 718, 0, 0, 0, 0);
replace into npc_vendor values (91728, 847, 0, 0, 0, 0);
replace into npc_vendor values (91728, 848, 0, 0, 0, 0);
replace into npc_vendor values (91728, 849, 0, 0, 0, 0);
replace into npc_vendor values (91728, 850, 0, 0, 0, 0);
replace into npc_vendor values (91728, 1845, 0, 0, 0, 0);
replace into npc_vendor values (91728, 1846, 0, 0, 0, 0);
replace into npc_vendor values (91728, 1852, 0, 0, 0, 0);
replace into npc_vendor values (91728, 1853, 0, 0, 0, 0);
replace into npc_vendor values (91728, 2148, 0, 0, 0, 0);
replace into npc_vendor values (91728, 2149, 0, 0, 0, 0);
replace into npc_vendor values (91728, 2150, 0, 0, 0, 0);
replace into npc_vendor values (91728, 2151, 0, 0, 0, 0);
replace into npc_vendor values (91728, 2152, 0, 0, 0, 0);
replace into npc_vendor values (91728, 2153, 0, 0, 0, 0);
replace into npc_vendor values (91728, 2392, 0, 0, 0, 0);
replace into npc_vendor values (91728, 2393, 0, 0, 0, 0);
replace into npc_vendor values (91728, 2394, 0, 0, 0, 0);
replace into npc_vendor values (91728, 2395, 0, 0, 0, 0);
replace into npc_vendor values (91728, 2396, 0, 0, 0, 0);
replace into npc_vendor values (91728, 2397, 0, 0, 0, 0);
replace into npc_vendor values (91728, 2417, 0, 0, 0, 0);
replace into npc_vendor values (91728, 2418, 0, 0, 0, 0);
replace into npc_vendor values (91728, 2419, 0, 0, 0, 0);
replace into npc_vendor values (91728, 2420, 0, 0, 0, 0);
replace into npc_vendor values (91728, 2421, 0, 0, 0, 0);
replace into npc_vendor values (91728, 2422, 0, 0, 0, 0);
replace into npc_vendor values (91728, 2423, 0, 0, 0, 0);
replace into npc_vendor values (91728, 2424, 0, 0, 0, 0);
replace into npc_vendor values (91728, 2425, 0, 0, 0, 0);
replace into npc_vendor values (91728, 2426, 0, 0, 0, 0);
replace into npc_vendor values (91728, 2427, 0, 0, 0, 0);
replace into npc_vendor values (91728, 2428, 0, 0, 0, 0);
replace into npc_vendor values (91728, 2446, 0, 0, 0, 0);
replace into npc_vendor values (91728, 2448, 0, 0, 0, 0);
replace into npc_vendor values (91728, 2451, 0, 0, 0, 0);
replace into npc_vendor values (91728, 3891, 0, 0, 0, 0);
replace into npc_vendor values (91728, 3894, 0, 0, 0, 0);
replace into npc_vendor values (91728, 8088, 0, 0, 0, 0);
replace into npc_vendor values (91728, 8089, 0, 0, 0, 0);
replace into npc_vendor values (91728, 8090, 0, 0, 0, 0);
replace into npc_vendor values (91728, 8091, 0, 0, 0, 0);
replace into npc_vendor values (91728, 8092, 0, 0, 0, 0);
replace into npc_vendor values (91728, 8093, 0, 0, 0, 0);
replace into npc_vendor values (91728, 8094, 0, 0, 0, 0);
replace into npc_vendor values (91728, 17189, 0, 0, 0, 0);
replace into npc_vendor values (91728, 17190, 0, 0, 0, 0);
replace into npc_vendor values (91728, 17192, 0, 0, 0, 0);
-- Meat Vendor
replace into npc_vendor values (91727, 117, 0, 0, 0, 0);
replace into npc_vendor values (91727, 2287, 0, 0, 0, 0);
replace into npc_vendor values (91727, 3770, 0, 0, 0, 0);
replace into npc_vendor values (91727, 3771, 0, 0, 0, 0);
replace into npc_vendor values (91727, 4599, 0, 0, 0, 0);
replace into npc_vendor values (91727, 8952, 0, 0, 0, 0);
-- General Goods
replace into npc_vendor values (91725, 159, 0, 0, 0, 0);
replace into npc_vendor values (91725, 1179, 0, 0, 0, 0);
replace into npc_vendor values (91725, 1205, 0, 0, 0, 0);
replace into npc_vendor values (91725, 2515, 0, 0, 0, 0);
replace into npc_vendor values (91725, 2519, 0, 0, 0, 0);
replace into npc_vendor values (91725, 2946, 0, 0, 0, 0);
replace into npc_vendor values (91725, 3030, 0, 0, 0, 0);
replace into npc_vendor values (91725, 3033, 0, 0, 0, 0);
replace into npc_vendor values (91725, 3107, 0, 0, 0, 0);
replace into npc_vendor values (91725, 3108, 0, 0, 0, 0);
replace into npc_vendor values (91725, 3131, 0, 0, 0, 0);
replace into npc_vendor values (91725, 3135, 0, 0, 0, 0);
replace into npc_vendor values (91725, 3137, 0, 0, 0, 0);
replace into npc_vendor values (91725, 4470, 0, 0, 0, 0);
replace into npc_vendor values (91725, 4471, 0, 0, 0, 0);
replace into npc_vendor values (91725, 4497, 0, 0, 0, 0);
replace into npc_vendor values (91725, 4498, 0, 0, 0, 0);
replace into npc_vendor values (91725, 6183, 0, 0, 0, 0);
-- Magus Bromley
update creature_template set faction = 76 where entry = 91350;
set @gossip_menu_id = 60046; set @magic_number = 91710; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); replace into broadcast_text (entry, Male_Text) values (@magic_number, 'I was once a great wizard, its good to leave it all behind me, and simply tend to apples.'); replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;
-- Keeper Iselus
set @gossip_menu_id = 60047; set @magic_number = 91722; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); replace into broadcast_text (entry, Male_Text) values (@magic_number, 'It is my charge to keep watch of this place.'); replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;
-- Speaker Lazoko
set @gossip_menu_id = 60048; set @magic_number = 91723; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); replace into broadcast_text (entry, Male_Text) values (@magic_number, 'The spirits be communicating with us, I must be listening!'); replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;
-- Ryan Oxcrest
set @gossip_menu_id = 60049; set @magic_number = 91724; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); replace into broadcast_text (entry, Male_Text) values (@magic_number, 'I am busy, what do you need?'); replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;
-- Father Brightcopf
set @gossip_menu_id = 60050; set @magic_number = 91726; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); replace into broadcast_text (entry, Male_Text) values (@magic_number, 'We must do our duty to restore these lands for the Forsaken.'); replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;
-- Harry Upperson
set @gossip_menu_id = 60051; set @magic_number = 91729; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); replace into broadcast_text (entry, Male_Text) values (@magic_number, 'There are many mysteries here, have you come in search of knowledge?'); replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;
-- Update Wildtusk Village NPCs:
update creature_template set display_id1 = 536, display_id2 = 0, display_id3 = 0, display_id4 = 0 where entry = 91412;
update creature_template set display_id1 = 4085, display_id2 = 0, display_id3 = 0, display_id4 = 0 where entry = 91414;
update creature_template set display_id1 = 4359, display_id2 = 0, display_id3 = 0, display_id4 = 0 where entry = 91413;
update creature_template set display_id1 = 4074, display_id2 = 0, display_id3 = 0, display_id4 = 0 where entry = 91415;
update creature_template set display_id1 = 6839, display_id2 = 0, display_id3 = 0, display_id4 = 0 where entry = 91400;
update creature_template set display_id1 = 9768, display_id2 = 0, display_id3 = 0, display_id4 = 0 where entry = 91411;
update creature_template set display_id1 = 3608, display_id2 = 0, display_id3 = 0, display_id4 = 0 where entry = 91410;
update creature_template set display_id1 = 2735, display_id2 = 0, display_id3 = 0, display_id4 = 0 where entry = 91409;
update creature_template set display_id1 = 9261, display_id2 = 0, display_id3 = 0, display_id4 = 0 where entry = 91408;
update creature_template set display_id1 = 9336, display_id2 = 0, display_id3 = 0, display_id4 = 0 where entry = 91407;
update creature_template set display_id1 = 2734, display_id2 = 0, display_id3 = 0, display_id4 = 0 where entry = 91406;
update creature_template set display_id1 = 4534, display_id2 = 0, display_id3 = 0, display_id4 = 0 where entry = 91405;
update creature_template set display_id1 = 4321, display_id2 = 0, display_id3 = 0, display_id4 = 0 where entry = 91404;
update creature_template set display_id1 = 4239, display_id2 = 0, display_id3 = 0, display_id4 = 0 where entry = 91401;
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
replace into creature_template_addon values (91353, 0, 2404, 0, 0, 0, 0, 0, NULL);
-- Duchess Faliona add weapon 12252:
replace into creature_equip_template (entry, equipentry1, equipentry2, equipentry3) values (55003, 12252, 0, 0);
update creature_template set equipment_id = 55003 where entry = 91711;
-- Raceway changes:
update broadcast_text set male_text = 'Your prize and rewards right in the middle of the Shimmering Flats in Thousand Needles! Talk to Gregor or Jizzle there to participate in the race!' WHERE entry = 90254;
-- Remove Wormhole stuff:
delete from creature_questrelation where id = 51574 and quest = 60104;
delete from creature_questrelation where id = 51570 and quest = 60104;
delete from creature_involvedrelation where id = 51572 and quest = 60104;
delete from creature_involvedrelation where id = 51571 and quest = 60104;
update quest_template set title = 'Into the Unknown [Deprecated]' where entry = 60104;
update item_template set quality = 0, script_name = '' where entry = 51808;
update item_template set quality = 0, name = 'Broken Portable Wormhole Generator' where entry = 51310;
-- Fix Tomato:
replace into npc_vendor values (80963, 40000, 0, 0, 0, 0);
-- Fix House Smoke object:
replace into gameobject_template VALUES 
(1000251,0,5,95,'House Smoke',0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1000249, 0, 3, 2971, 'Eldarath Ley-Shard', 0, 4, 0.5, 43, 1000251, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
update gameobject set id = 1000249 where id = 1000251 and guid >= 4011324;
-- Sunnyglade Valley map:
delete from map_template where entry = 24;
replace into map_template (entry, map_name) values ('27', 'sunnyglade valley');
update game_tele set map = 27, name='sunnyglade' where id = 549;
-- Remove weapon from Speaker Lazoko:
update creature_template set equipment_id = 0 where entry = 91723;
-- Remove the bows and arrows from Maleka's sell list:
delete from npc_vendor where entry = 91207 and item = 2515;
delete from npc_vendor where entry = 91207 and item = 2512;
delete from npc_vendor where entry = 91207 and item = 5439;
delete from npc_vendor where entry = 91207 and item = 2507;
delete from npc_vendor where entry = 91207 and item = 2506;
-- Barbershop Chair
replace into gameobject_template values 
(105180, 0, 7, 32822, 'Barbershop Chair', 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(105181, 0, 5, 7417, 'Moonwell (Phasing)', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 332, '');
-- Barber stuff:
update creature_template set display_id1 = 15765, name = 'Theresa Fluxlight', faction = 1682 where entry = 50054; 
update creature_template set faction = 1682 where entry = 81024; 
update creature_template set faction = 1682 where entry = 80136; 
update creature_template set faction = 1682 where entry = 80137; 
-- ...
replace into creature_template values 
(91735, 0, 714, 0, 0, 0, 'Pesterhide Forager', '', 0, 15, 16, 328, 356, 0, 0, 20, 19, 0, 1, 1.19048, 0, 20, 5, 0, 0, 1, 21, 27, 0, 76, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 27.2272, 37.4374, 100, 7, 0, 423, 423, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 17, 28, 'EventAI', 1, 1, 0, 0, 3, 423, 0, 0, 0, 0, 0, 0, '');
replace into creature_equip_template (entry, equipentry1, equipentry2, equipentry3) values (55020, 2092, 0, 0);
update creature_template set equipment_id = 55020 where entry = 91735;
-- ...
replace into creature_template values (91736, 0, 714, 0, 0, 0, 'Pesterhide Gnoll', '', 0, 16, 18, 386, 417, 0, 0, 777, 19, 0, 1.2, 1.14286, 0, 20, 5, 0, 0, 1, 44, 56, 0, 84, 1, 2700, 2000, 1, 524288, 0, 0, 0, 0, 0, 0, 28.6704, 39.4218, 100, 7, 0, 426, 426, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 32, 'EventAI', 1, 1, 0, 0, 3, 426, 0, 0, 0, 0, 0, 0, '');
replace into creature_equip_template (entry, equipentry1, equipentry2, equipentry3) values (55021, 1905, 0, 0);
update creature_template set equipment_id = 55021 where entry = 91736;
-- ...
replace into creature_template values (91737, 0, 543, 0, 0, 0, 'Pesterhide Warrior', '', 0, 17, 19, 586, 617, 0, 0, 777, 19, 0, 1.2, 1.14286, 0, 20, 5, 0, 0, 1, 44, 56, 0, 84, 1, 2700, 2000, 1, 524288, 0, 0, 0, 0, 0, 0, 28.6704, 39.4218, 100, 7, 0, 426, 426, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 32, 'EventAI', 1, 1, 0, 0, 3, 426, 0, 0, 0, 0, 0, 0, '');
replace into creature_equip_template (entry, equipentry1, equipentry2, equipentry3) values (55022, 5289, 15145, 0);
update creature_template set equipment_id = 55022 where entry = 91737;
-- ...
replace into creature_template values (91738, 0, 3197, 0, 0, 0, 'Pesterhide Mystic', '', 0, 16, 18, 354, 379, 1020, 1118, 432, 19, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 19, 25, 0, 88, 1, 2000, 2000, 8, 0, 0, 0, 0, 0, 0, 0, 28.6704, 39.4218, 100, 7, 0, 430, 430, 0, 0, 0, 0, 0, 0, 0, 20802, 547, 0, 0, 4300, 0, 21, 32, 'EventAI', 1, 1, 0, 0, 3, 430, 0, 0, 0, 0, 0, 0, '');
replace into creature_equip_template (entry, equipentry1, equipentry2, equipentry3) values (55023, 35, 0, 0);
update creature_template set equipment_id = 55023 where entry = 91738;
-- ...
replace into creature_equip_template (entry, equipentry1, equipentry2, equipentry3) values (55024, 2524, 15543, 0);
update creature_template set equipment_id = 55024 where entry = 91716;
-- ...
replace into creature_equip_template (entry, equipentry1, equipentry2, equipentry3) values (55025, 1827, 0, 0);
update creature_template set equipment_id = 55025 where entry = 91727;
-- ...
update item_template set disenchant_id = 47 where entry in (81328, 81329, 81330);
-- ...
replace into creature_template values (91739, 0, 729, 0, 0, 0, 'Tirisclaw Scavenger', NULL, 0, 14, 16, 719, 800, 0, 0, 642, 16, 0, 1, 1.14286, 0, 20, 5, 0, 1, 1, 57, 73, 0, 70, 1, 1541, 1695, 1, 0, 0, 0, 0, 0, 0, 0, 18.984, 26.103, 100, 7, 0, 1892, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 50, 'EventAI', 1, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');
replace into creature_template values (91740, 0, 11180, 0, 0, 0, 'Tirisclaw Ravager', NULL, 0, 14, 15, 819, 900, 0, 0, 642, 16, 0, 1, 1.14286, 0, 20, 5, 0, 1, 1, 57, 73, 0, 70, 1, 1541, 1695, 1, 0, 0, 0, 0, 0, 0, 0, 18.984, 26.103, 100, 7, 0, 1892, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 50, 'EventAI', 1, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');
replace into creature_template values (91741, 0, 11180, 0, 0, 0, 'Tirisclaw Shadowcaster', NULL, 0, 14, 14, 828, 903, 295, 326, 566, 16, 0, 1, 1.14286, 0, 20, 5, 0, 1, 1, 61, 78, 0, 74, 1, 1500, 1500, 2, 0, 0, 0, 0, 0, 0, 0, 20.232, 27.819, 100, 7, 0, 1896, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 47, '', 1, 1, 0, 0, 3, 1896, 0, 0, 0, 0, 0, 0, '');
replace into creature_equip_template (entry, equipentry1, equipentry2, equipentry3) values (55026, 80602, 0, 0);
update creature_template set equipment_id = 55026 where entry = 91741;
update creature_template set rank = 0 where entry = 91739;
update creature_template set rank = 0 where entry = 91740;
update creature_template set rank = 0 where entry = 91741;
-- ...
update gameobject_template set name = 'Gate' where name = 'Doodad_PortcullisActive05';
update gameobject_template set name = 'Gate' where name = 'Doodad_PortcullisActive07';
update gameobject_template set name = 'Gate' where name = 'Doodad_PortcullisActive02';
update gameobject_template set name = 'Gate' where name = 'Doodad_PortcullisActive06';
update gameobject_template set name = 'Gate' where name = 'Doodad_WroughtIronDoor01';
update gameobject_template set name = 'Gate' where name = 'Doodad_WroughtIronDoor02';
update gameobject_template set name = 'Gate' where name = 'Doodad_WroughtIronDoor03';
update gameobject_template set name = 'Gate' where name = 'Doodad_WroughtIronDoor04';
update gameobject_template set name = 'Gate' where name = 'Doodad_WroughtIronDoor05';
update gameobject_template set name = 'Gate' where name = 'Doodad_WroughtIronDoor06';
update gameobject_template set name = 'Gate' where name = 'Doodad_WroughtIronDoor07';
update gameobject_template set name = 'Gate' where name = 'Doodad_WroughtIronDoor08';
update gameobject_template set name = 'Gate' where name = 'Doodad_WroughtIronDoor09';
update gameobject_template set name = 'Gate' where name like '%Doodad_opendoor%';
-- ...
set @gossip_menu_id = 60053; set @magic_number = 91288; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Welcome to our home, take shelter if you need.'); replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;
-- ...
replace into creature_template values 
(91742, 0, 4005, 0, 0, 0, 'House Guard Dilgar', NULL, 9087, 40, 40, 1752, 1752, 0, 0, 1890, 68, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 61, 78, 0, 156, 1, 2000, 2000, 1, 36864, 0, 0, 0, 0, 0, 0, 56.672, 77.924, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 2308, 0, 0, 0, 0, 524290, 0, ''),
(91743, 0, 3650, 0, 0, 0, 'Leyna Dayton', 'First Aid Trainer', 5856, 10, 10, 198, 198, 0, 0, 20, 68, 19, 1, 1.14286, 0, 20, 5, 0, 0, 1, 9, 13, 0, 62, 1, 2000, 2000, 1, 37376, 0, 0, 2, 0, 0, 0, 16.808, 23.111, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 5759, 0, 0, 0, 0, 524298, 0, ''),
(91744, 0, 4594, 0, 0, 0, 'House Guard Melia', NULL, 9087, 40, 40, 1752, 1752, 0, 0, 1890, 68, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 61, 78, 0, 156, 1, 2000, 2000, 1, 36864, 0, 0, 0, 0, 0, 0, 56.672, 77.924, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 2308, 0, 0, 0, 0, 524290, 0, ''),
(91745, 0, 1736, 0, 0, 0, 'Injured Guard Bill', NULL, 9476, 15, 15, 328, 328, 0, 0, 20, 68, 2, 1, 1.14286, 0, 20, 5, 0, 1, 1, 52, 68, 0, 74, 1, 2000, 2000, 1, 37376, 0, 0, 0, 0, 0, 0, 20.46, 28.1325, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 6522, 0, 0, 0, 0, 524298, 0, ''),
(91746, 0, 1634, 0, 0, 0, 'Injured Guard Nela', NULL, 9476, 15, 15, 328, 328, 0, 0, 20, 68, 2, 1, 1.14286, 0, 20, 5, 0, 1, 1, 52, 68, 0, 74, 1, 2000, 2000, 1, 37376, 0, 0, 0, 0, 0, 0, 20.46, 28.1325, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 6522, 0, 0, 0, 0, 524298, 0, ''),
(91747, 0, 3652, 0, 0, 0, 'Chef Borl', '', 9081, 8, 8, 200, 200, 0, 0, 20, 68, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 15, 19, 0, 70, 1, 1000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 23.0384, 31.6778, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 2050, 0, 0, 0, 0, 524298, 0, ''),
(91748, 0, 3675, 0, 0, 0, 'Innkeeper Natt', 'Innkeeper', 1296, 25, 25, 1002, 1002, 0, 0, 1200, 68, 135, 1, 1.14286, 0, 20, 5, 0, 0, 1, 42, 53, 0, 122, 1, 2000, 2000, 1, 37376, 0, 0, 0, 0, 0, 0, 45.144, 62.073, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 5688, 0, 100, 0, 0, 524298, 0, ''),
(91749, 0, 1580, 0, 0, 0, 'Bounty Hunter Knox', NULL, 0, 34, 34, 1279, 1279, 0, 0, 1340, 68, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 47, 61, 0, 134, 1, 1500, 2000, 1, 37376, 0, 0, 0, 0, 0, 0, 49.9664, 68.7038, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 2437, 0, 0, 0, 0, 524298, 0, '');




replace into creature_template_addon (entry, bytes1) values (91745, 7);
replace into creature_template_addon (entry, bytes1) values (91746, 7);
-- ...
replace into creature_equip_template (entry, equipentry1, equipentry2, equipentry3) values (55027, 3400, 15890, 0);
update creature_template set equipment_id = 55027 where entry = 91742;
-- ...
update creature_template set npc_flags = 2 where entry = 91742;
update creature_template set npc_flags = 2 where entry = 91744;
update creature_template set npc_flags = 2 where entry = 91746;
update creature_template set npc_flags = 2 where entry = 91747;
update creature_template set npc_flags = 2 where entry = 91749;
update creature_template set npc_flags = 2, regeneration = 0, flags_extra = 10 where entry = 91745;
update creature_template set npc_flags = 2, regeneration = 0, flags_extra = 10 where entry = 91746;
replace into creature_equip_template (entry, equipentry1, equipentry2, equipentry3) values (55028, 3400, 9790, 0);
update creature_template set equipment_id = 55028 where entry = 91744;
-- ...
replace into creature_equip_template (entry, equipentry1, equipentry2, equipentry3) values (55029, 5197, 0, 0);
update creature_template set equipment_id = 55029 where entry = 91747;
-- ...
set @gossip_menu_id = 60054; set @magic_number = 91742; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); replace into broadcast_text (entry, Male_Text) values (@magic_number, 'This is a dangerous place, it doesn\'t hurt to be prepared.'); replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;
-- ...
set @gossip_menu_id = 60055; set @magic_number = 91747; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Is there something you need cooked?'); replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;
-- ...
set @gossip_menu_id = 60056; set @magic_number = 91748; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Yes?'); replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;
-- ...
set @gossip_menu_id = 60057; set @magic_number = 91749; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Keep to your witts in this place.'); replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;
-- ...
replace into creature_equip_template (entry, equipentry1, equipentry2, equipentry3) values (55029, 7608, 0, 0);
update creature_template set equipment_id = 55029 where entry = 91748;
-- ...
replace into creature_equip_template (entry, equipentry1, equipentry2, equipentry3) values (55030, 12248, 4947, 0);
update creature_template set equipment_id = 55030 where entry = 91749;
-- ...
replace into creature_equip_template (entry, equipentry1, equipentry2, equipentry3) values (55031, 2524, 0, 0);
update creature_template set equipment_id = 55031 where entry = 91308;
-- ...
replace into npc_trainer values (91743, 3279, 100, 0, 0, 0, 0, 5875);
replace into npc_trainer values (91743, 3280, 500, 129, 50, 0, 0, 5875);
replace into npc_trainer values (91743, 3281, 100, 129, 40, 0, 0, 5875);
replace into npc_trainer values (91743, 3282, 250, 129, 80, 0, 0, 5875);
replace into npc_trainer values (91743, 3283, 1000, 129, 115, 0, 0, 5875);
replace into npc_trainer values (91743, 7930, 5000, 129, 150, 0, 0, 5875);
replace into npc_trainer values (91743, 7936, 250, 129, 80, 0, 0, 5875);

