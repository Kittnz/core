
-- New Hunter pets:

REPLACE INTO `creature_template` VALUES (80250, 0, 18027, 0, 0, 0, 'Crimson Lynx', NULL, 0, 10, 10, 197, 197, 618, 618, 20, 16, 0, 1, 1.42857, 0, 20, 5, 0, 4, 1, 11, 19, 0, 62, 1, 1200, 2000, 1, 0, 0, 2, 0, 0, 0, 0, 15.1624, 20.8483, 100, 1, 1, 5807, 0, 5807, 0, 0, 0, 0, 0, 0, 12166, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 1, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, '');

update creature_template set faction = 7 where entry = 80250;
update creature_template set rank = 0 where entry = 80250;
update creature_template set loot_id = 2043 where entry = 80250;

REPLACE INTO `creature_template` VALUES (80252, 0, 18005, 0, 0, 0, 'Young Arctic Fox', NULL, 0, 7, 8, 141, 161, 0, 0, 316, 38, 0, 1, 0.857143, 0, 20, 5, 0, 0, 1, 9, 13, 0, 58, 1, 2000, 2000, 1, 0, 0, 1, 0, 0, 0, 0, 13.4464, 18.4888, 100, 1, 1, 1131, 0, 1131, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5940, 0, 0, '', 1, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, '');

update creature_template set faction = 7 where entry = 80252;

REPLACE INTO `creature_template` VALUES (80253, 3, 18005, 0, 0, 0, 'Arctic Fox', NULL, 0, 50, 51, 2196, 2324, 0, 0, 2200, 1275, 0, 1, 2.57143, 0, 20, 5, 0, 0, 1, 161, 193, 0, 230, 1, 2000, 2000, 1, 0, 0, 1, 0, 0, 0, 0, 71.9664, 98.9538, 100, 1, 1, 10981, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 109810, 0, 0, 0, '', 1, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 'npc_ram_wolf_tamed');

update creature_template set faction = 7 where entry = 80253;

REPLACE INTO `creature_template` VALUES (80254, 0, 18007, 0, 0, 0, 'Young Brown Fox', NULL, 0, 10, 11, 198, 221, 0, 0, 538, 38, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 15, 21, 0, 64, 1, 2000, 2000, 1, 0, 0, 1, 0, 0, 0, 0, 16.632, 22.869, 100, 1, 1, 1765, 0, 1765, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17650, 5945, 0, 0, '', 1, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, '');

update creature_template set faction = 7 where entry = 80254;

REPLACE INTO `creature_template` VALUES (80255, 0, 18007, 0, 0, 0, 'Brown Fox', NULL, 0, 41, 42, 1857, 2123, 0, 0, 2246, 38, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 61, 78, 0, 172, 1, 2000, 2000, 1, 0, 0, 1, 0, 0, 0, 0, 57.0064, 78.3838, 100, 1, 1, 2923, 0, 2923, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, '');

update creature_template set faction = 7 where entry = 80255;

REPLACE INTO `creature_template` VALUES (80256, 0, 18006, 0, 0, 0, 'Silver Fox', NULL, 0, 27, 28, 843, 915, 0, 0, 1130, 38, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 31, 38, 0, 116, 1, 1300, 2000, 1, 0, 0, 1, 0, 0, 0, 0, 42.6272, 58.6124, 100, 1, 1, 3825, 0, 3825, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5951, 0, 0, 'EventAI', 1, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, '');

update creature_template set faction = 7 where entry = 80256;

REPLACE INTO `creature_template` VALUES (80257, 0, 18008, 0, 0, 0, 'Red Fox', NULL, 0, 10, 11, 198, 221, 0, 0, 538, 38, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 15, 21, 0, 64, 1, 2000, 2000, 1, 0, 0, 1, 0, 0, 0, 0, 16.632, 22.869, 100, 1, 1, 1765, 0, 1765, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17650, 5945, 0, 0, '', 1, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, '');

update creature_template set faction = 7 where entry = 80257;

REPLACE INTO `creature_template` VALUES (80258, 0, 18004, 0, 0, 0, 'Young Mist Fox', NULL, 0, 10, 11, 198, 221, 0, 0, 538, 38, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 15, 21, 0, 64, 1, 2000, 2000, 1, 0, 0, 1, 0, 0, 0, 0, 16.632, 22.869, 100, 1, 1, 1765, 0, 1765, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17650, 5945, 0, 0, '', 1, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, '');

update creature_template set faction = 7 where entry = 80258;

REPLACE INTO `creature_template` VALUES (80259, 3, 18004, 0, 0, 0, 'Mist Fox', NULL, 0, 50, 51, 2196, 2324, 0, 0, 2200, 1275, 0, 1, 2.57143, 0, 20, 5, 0, 0, 1, 161, 193, 0, 230, 1, 2000, 2000, 1, 0, 0, 1, 0, 0, 0, 0, 71.9664, 98.9538, 100, 1, 1, 10981, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 109810, 0, 0, 0, '', 1, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 'npc_ram_wolf_tamed');

update creature_template set faction = 7 where entry = 80259;

REPLACE INTO `creature_template` VALUES (80260, 0, 18244, 0, 0, 0, 'Spirit Fox', NULL, 0, 53, 53, 3418, 3662, 0, 0, 3163, 14, 0, 1, 1.42857, 0, 20, 5, 0, 4, 1, 452, 584, 0, 238, 1, 1200, 1329, 1, 0, 0, 1, 0, 0, 0, 0, 57.4128, 78.9426, 100, 1, 1, 10077, 0, 0, 0, 100, 100, 100, 100, 100, 0, 0, 0, 0, 100770, 0, 0, 0, '', 1, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, '');

update creature_template set movement_type = 1 where entry = 80260;
update creature_template set scale = 1.2 where entry = 80260;

-- Mount items:

replace into item_template values
 ('80173', '0', '15', '0', 'Red Rocket Car', 'Always go twenty over the speed limit.', '8951', '3', '0', '1', '1000000', '0', '0', '-1', '-1', '40', '40', '762', '75', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '16081', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL),
 
  ('80174', '0', '15', '0', 'Green Rocket Car', 'Fasten your seatbelts, kid!', '8951', '3', '0', '1', '1000000', '0', '0', '-1', '-1', '40', '40', '762', '75', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '16081', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL),
 
  ('80175', '0', '15', '0', 'Blue Rocket Car', 'Airbags not included.', '8951', '3', '0', '1', '1000000', '0', '0', '-1', '-1', '40',
 '40', '762', '75', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '16081', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

-- Mount NPCs:

replace into `creature_template` values 
(80300, 0, 18319, 0, 0, 0, 'Blue Rocket Car', '', 0, 1, 2, 64, 55, 53, 53, 30, 35, 0, 1, 1.38571, 0, 20, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 2, ''),
(80301, 0, 18320, 0, 0, 0, 'Red Rocket Car', '', 0, 1, 2, 64, 55, 53, 53, 30, 35, 0, 1, 1.38571, 0, 20, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 2, ''),
(80302, 0, 18321, 0, 0, 0, 'Green Rocket Car', '', 0, 1, 2, 64, 55, 53, 53, 30, 35, 0, 1, 1.38571, 0, 20, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 2, ''),
(80303, 0, 18322, 0, 0, 0, 'Red Goblin Shredder', '', 0, 1, 2, 64, 55, 53, 53, 30, 35, 0, 1, 1.38571, 0, 20, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 2, ''),
(80304, 0, 18323, 0, 0, 0, 'Green Goblin Shredder', '', 0, 1, 2, 64, 55, 53, 53, 30, 35, 0, 1, 1.38571, 0, 20, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 2, ''),

(80305, 0, 18314, 0, 0, 0, 'Red Spidertank', '', 0, 1, 2, 64, 55, 53, 53, 30, 35, 0, 1, 1.38571, 0, 20, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 2, ''),
(80306, 0, 18311, 0, 0, 0, 'Black Spidertank', '', 0, 1, 2, 64, 55, 53, 53, 30, 35, 0, 1, 1.38571, 0, 20, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 2, ''),
(80307, 0, 18312, 0, 0, 0, 'Blue Spidertank', '', 0, 1, 2, 64, 55, 53, 53, 30, 35, 0, 1, 1.38571, 0, 20, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 2, ''),
(80308, 0, 18313, 0, 0, 0, 'Green Spidertank', '', 0, 1, 2, 64, 55, 53, 53, 30, 35, 0, 1, 1.38571, 0, 20, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 2, ''),
(80309, 0, 18315, 0, 0, 0, 'Black Pounder Vehicle', '', 0, 1, 2, 64, 55, 53, 53, 30, 35, 0, 1, 1.38571, 0, 20, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 2, ''),
(80310, 0, 18316, 0, 0, 0, 'Blue Pounder Vehicle', '', 0, 1, 2, 64, 55, 53, 53, 30, 35, 0, 1, 1.38571, 0, 20, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 2, ''),
(80311, 0, 18317, 0, 0, 0, 'Green Pounder Vehicle', '', 0, 1, 2, 64, 55, 53, 53, 30, 35, 0, 1, 1.38571, 0, 20, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 2, ''),
(80312, 0, 18318, 0, 0, 0, 'Red Pounder Vehicle', '', 0, 1, 2, 64, 55, 53, 53, 30, 35, 0, 1, 1.38571, 0, 20, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 2, '');

-- Re-scaling some NPCs:

update creature_template set scale = 0.6 where display_id1 = 18004;
update creature_template set scale = 0.6 where display_id1 = 18005;
update creature_template set scale = 0.6 where display_id1 = 18006;
update creature_template set scale = 0.6 where display_id1 = 18007;
update creature_template set scale = 1.5 where display_id1 = 18315;
update creature_template set scale = 1.5 where display_id1 = 18316;
update creature_template set scale = 1.5 where display_id1 = 18317;
update creature_template set scale = 1.5 where display_id1 = 18318;
update creature_template set scale = 1.3 where display_id1 = 18101;
update creature_template set scale = 1.3 where display_id1 = 18102;
update creature_template set scale = 1.3 where display_id1 = 18046;
update creature_template set scale = 1.3 where display_id1 = 18103;
update creature_template set scale = 0.8 where display_id1 = 19000;
update creature_template set scale = 1.5 where display_id1 = 18096;
update creature_template set scale = 0.7 where display_id1 = 18037;
update creature_template set scale = 0.5 where display_id1 = 18097;
update creature_template set scale = 0.5 where display_id1 = 18098;
update creature_template set scale = 0.5 where display_id1 = 18099;
update creature_template set scale = 0.5 where display_id1 = 18100;
update creature_template set scale = 0.8 where display_id1 = 41000;

-- Changing some of Display IDs:

update creature_template set display_id1 = 18208 where entry = 10824;
update creature_template set display_id1 = 18209 where entry = 1752;

-- Mug object fixes:

update gameobject set id = 2003390 where id = 165738 and guid > 4004321;

-- Fix for faction only quests and items (include new races):

UPDATE quest_template SET requiredraces = requiredraces + 512 WHERE requiredraces = 77;	
UPDATE quest_template SET requiredraces = requiredraces + 256 WHERE requiredraces = 178;	

UPDATE item_template SET allowable_race = allowable_race + 512 WHERE allowable_race = 77;	
UPDATE item_template SET allowable_race = allowable_race + 256 WHERE allowable_race = 178;	

-- New tabards:

replace into item_template values
 ('80300', '0', '0', '0', 'Bronze Dragonflight Tabard', '', '40000', '1', '0', '1', '0', '0', '19', '-1', '-1', '100',
 '0', '0', '0', '0', '0', '0', '910', '7', '1', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', NULL),
 
 ('80301', '0', '0', '0', 'Cenarion Circle Tabard', '', '40001', '1', '0', '1', '0', '0', '19', '-1', '-1', '100',
 '0', '0', '0', '0', '0', '0', '609', '7', '1', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', NULL),
 
  ('80302', '0', '0', '0', 'Illidari Tabard', '', '40002', '1', '0', '1', '0', '0', '19', '-1', '-1', '100',
 '0', '0', '0', '0', '0', '0', '999', '7', '1', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', NULL),
 
  ('80303', '0', '0', '0', 'Ironforge Tabard', '', '40003', '1', '0', '1', '0', '0', '19', '-1', '-1', '100',
 '0', '0', '0', '0', '0', '0', '47', '7', '1', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', NULL),

 ('80320', '0', '0', '0', 'Stormwind Tabard', '', '40004', '1', '0', '1', '0', '0', '19', '-1', '-1', '100',
 '0', '0', '0', '0', '0', '0', '72', '7', '1', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', NULL),   
 
  ('80304', '0', '0', '0', 'Darkspear Tribe Tabard', '', '40005', '1', '0', '1', '0', '0', '19', '-1', '-1', '100',
 '0', '0', '0', '0', '0', '0', '530', '7', '1', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', NULL), 
  
  ('80305', '0', '0', '0', 'Darnassus Tabard', '', '40006', '1', '0', '1', '0', '0', '19', '-1', '-1', '100',
 '0', '0', '0', '0', '0', '0', '69', '7', '1', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', NULL),
 
  ('80306', '0', '0', '0', 'Gnomeregan Tabard', '', '40007', '1', '0', '1', '0', '0', '19', '-1', '-1', '100',
 '0', '0', '0', '0', '0', '0', '54', '7', '1', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', NULL),
 
  ('80307', '0', '0', '0', 'Orgrimmar Tabard', '', '40008', '1', '0', '1', '0', '0', '19', '-1', '-1', '100',
 '0', '0', '0', '0', '0', '0', '76', '7', '1', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', NULL), 
  
  ('80308', '0', '0', '0', 'Thunderbluff Tabard', '', '40009', '1', '0', '1', '0', '0', '19', '-1', '-1', '100',
 '0', '0', '0', '0', '0', '0', '81', '7', '1', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', NULL),
 
  ('80309', '0', '0', '0', 'Undercity Tabard', '', '40010', '1', '0', '1', '0', '0', '19', '-1', '-1', '100',
 '0', '0', '0', '0', '0', '0', '68', '7', '1', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', NULL),
 
  ('80310', '0', '0', '0', 'Sin\'dorei Tabard', '', '40011', '1', '0', '1', '0', '0', '19', '-1', '-1', '100',
 '0', '0', '0', '0', '0', '0', '999', '7', '1', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', NULL), 
  
  ('80311', '0', '0', '0', 'Silverhand Tabard', '', '40012', '1', '0', '1', '0', '0', '19', '-1', '-1', '100',
 '0', '0', '0', '0', '0', '0', '910', '7', '1', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', NULL),
 
  ('80312', '0', '0', '0', 'Wildhammer Tabard', '', '40013', '1', '0', '1', '0', '0', '19', '-1', '-1', '100',
 '0', '0', '0', '0', '0', '0', '471', '7', '1', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', NULL),
 
  ('80313', '0', '0', '0', 'Explorer\'s Guild Tabard', '', '40014', '1', '0', '1', '0', '0', '19', '-1', '-1', '100',
 '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', NULL), 
  
  ('80314', '0', '0', '0', 'Undead Scourge Tabard', '', '40015', '1', '0', '1', '0', '0', '19', '-1', '-1', '100',
 '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', NULL),
 
  ('80316', '0', '0', '0', 'Tabard of Kezan', '', '40016', '1', '0', '1', '0', '0', '19', '-1', '-1', '100',
 '0', '0', '0', '0', '0', '0', '169', '7', '1', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', NULL),  
  
  ('80317', '0', '0', '0', 'Quel\'Thalas Tabard', '', '40017', '1', '0', '1', '0', '0', '19', '-1', '-1', '100',
 '0', '0', '0', '0', '0', '0', '269', '7', '1', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', NULL),
 
  ('80318', '0', '0', '0', 'Warden Tabard', '', '40080', '1', '0', '1', '0', '0', '19', '-1', '-1', '100',
 '0', '0', '0', '0', '0', '0', '1000', '7', '1', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', NULL);
