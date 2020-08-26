-- Factions:

replace into faction (id, build, reputation_list_id, base_rep_race_mask1, base_rep_race_mask2, base_rep_race_mask3, base_rep_race_mask4, base_rep_class_mask1, base_rep_class_mask2, base_rep_class_mask3, base_rep_class_mask4, base_rep_value1, base_rep_value2, base_rep_value3, base_rep_value4, reputation_flags1, reputation_flags2, reputation_flags3, reputation_flags4, team, name1, name2, name3, name4, name5, name6, name7, name8, description1, description2, description3, description4, description5, description6, description7, description8) values 

(20, 5875, 58, 255, 0, 0, 0, 0, 0, 0, 0, -42000, 0, 0, 0, 0, 0, 0, 0, 0, 'Undead Scourge', '', '', '', '', '', '', '',  'The Undead Scourge is a massive army of the dead which has laid waste to the Northern Kingdoms, the Scourge seeks to consume all life on Azeroth, enslaving everyone as Undead.', '', '', '', '', '', '', ''),
(56, 5875, 63, 255, 0, 0, 0, 0, 0, 0, 0, -42000, 0, 0, 0, 2, 0, 0, 0, 0, 'Scarlet Crusade', '', '', '', '', '', '', '',  'The Scarlet Crusade is a religious organization dedicated to the eradication of the undead. They seldom trust outsiders, believing them to carry the Plague of Undeath.', '', '', '', '', '', '', ''),
(61, 5875, 60, 77, 178, 0, 0, 0, 0, 0, 0, 3300, -42000, 0, 0, 16, 2, 0, 0, 0, 'Dalaran', '', '', '', '', '', '', '',  '', '', '', '', '', '', '', ''),
(73, 5875, 59, 255, 0, 0, 0, 0, 0, 0, 0, -42000, 0, 0, 0, 0, 0, 0, 0, 0, 'Burning Legion', '', '', '', '', '', '', '',  'An army of Demons bent on conquering, corrupting, defiling and destroying every world in the universe. The Burning Legion is the enemy of most mortal races.', '', '', '', '', '', '', ''),
(108, 5875, 56, 77, 178, 0, 0, 0, 0, 0, 0, 3300, -8500, 0, 0, 17, 2, 0, 0, 0, 'Theramore', '', '', '', '', '', '', '',  'Theramore Isle was settled by Jaina Proudmoore and the refugees who fled from Lordaeron and it\\\'s neighboring kingdoms. Following the Battle at Mount Hyjal, Theramore has maintained cordial ties with the Horde and sought peace. ', '', '', '', '', '', '', ''),
(269, 5875, 57, 77, 178, 0, 0, 0, 0, 0, 0, 3300, -8500, 0, 0, 17, 2, 0, 0, 0, 'Silvermoon Remnant', '', '', '', '', '', '', '',  'The remaining High elves are reeling from the loss of their homeland and the Sunwell. They have rallied behind the Alliance as their people struggle to survive.', '', '', '', '', '', '', ''),
(893, 5875, 55, 178, 77, 0, 0, 0, 0, 0, 0, 0, -42000, 0, 0, 16, 2, 0, 0, 0, 'Revantusk Trolls', '', '', '', '', '', '', '',  'The Revantusk Trolls are a tribe of Forest Trolls in the Hinterlands seeking closer ties to the Horde.', '', '', '', '', '', '', ''),
(999, 5875, 61, 255, 0, 0, 0, 0, 0, 0, 0, -3500, 0, 0, 0, 2, 0, 0, 0, 0, 'Illidari', '', '', '', '', '', '', '',  'The Illidari are the followers of Illidan Stormrage, consisting of Naga, Blood Elves, Rogue demons, and Draenei who struggle to claim Outland from the Legion.', '', '', '', '', '', '', ''),
(1000, 5875, 62, 255, 0, 0, 0, 0, 0, 0, 0, -3500, 0, 0, 0, 2, 0, 0, 0, 0, 'Wardens', '', '', '', '', '', '', '',  'The Wardens led by Maiev Shadowsong have sworn to capture or execute Illidan Stormrage at any cost.', '', '', '', '', '', '', '');

-- New Hunter pets:

REPLACE INTO `creature_template` VALUES (80250, 0, 18027, 0, 0, 0, 'Crimson Lynx', NULL, 0, 10, 10, 197, 197, 618, 618, 20, 16, 0, 1, 1.42857, 0, 20, 5, 0, 4, 1, 11, 19, 0, 62, 1, 1200, 2000, 1, 0, 0, 2, 0, 0, 0, 0, 15.1624, 20.8483, 100, 1, 1, 5807, 0, 5807, 0, 0, 0, 0, 0, 0, 12166, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 1, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, '');

update creature_template set faction = 7 where entry = 80250;
update creature_template set rank = 0 where entry = 80250;

REPLACE INTO `creature_template` VALUES (80252, 0, 18244, 0, 0, 0, 'Spirit Fox', NULL, 0, 53, 53, 3418, 3662, 0, 0, 3163, 14, 0, 1, 1.42857, 0, 20, 5, 0, 4, 1, 452, 584, 0, 238, 1, 1200, 1329, 1, 0, 0, 1, 0, 0, 0, 0, 57.4128, 78.9426, 100, 1, 1, 10077, 0, 0, 0, 100, 100, 100, 100, 100, 0, 0, 0, 0, 100770, 0, 0, 0, '', 1, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, '');

update creature_template set movement_type = 1 where entry = 80251;
update creature_template set scale = 1.2 where entry = 80251;

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

-- WMO fix:

update gameobject_template set TYPE = 14 WHERE NAME LIKE '%.wmo%';

-- Teaser NPCs:

replace into creature_template values 

(80500, 0, 18191, 18192, 18193, 18194, 'Fel Wretched Elf (Deadscar)', '', 0, 5, 5, 319, 319, 0, 0, 852, 371, 3, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 2, ''),

(80501, 0, 18195, 18196, 18197, 0, 'Fel Elf Warlock Female (Deadscar)', '', 0, 5, 5, 319, 319, 0, 0, 852, 371, 3, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 2, ''),

(80502, 0, 18198, 18199, 18200, 0, 'Fel Elf Ranger (Deadscar)', '', 0, 5, 5, 319, 319, 0, 0, 852, 371, 3, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 2, ''),

(80503, 0, 18201, 18202, 18203, 0, 'Fel Elf Warlock Male (Deadscar)', '', 0, 5, 5, 319, 319, 0, 0, 852, 371, 3, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 2, ''),

(80504, 0, 18204, 18205, 18206, 0, 'Fel Elf Warrior (Deadscar)', '', 0, 5, 5, 319, 319, 0, 0, 852, 371, 3, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 2, ''),

(80505, 0, 18009, 0, 0, 0, 'Eredar Lord (Outland)', '', 0, 5, 5, 319, 319, 0, 0, 852, 371, 3, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 2, ''),

(80506, 0, 18019, 0, 0, 0, 'Arcane Guardian (Alah\'Thalas)', '', 0, 5, 5, 319, 319, 0, 0, 852, 371, 3, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 2, '');

-- Mount NPCs:

replace into `creature_template` values 
(80300, 0, 18319, 0, 0, 0, 'Blue Rocket Car', '', 0, 1, 2, 64, 55, 53, 53, 30, 35, 0, 1, 1.38571, 0, 20, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 2, ''),
(80301, 0, 18320, 0, 0, 0, 'Red Rocket Car', '', 0, 1, 2, 64, 55, 53, 53, 30, 35, 0, 1, 1.38571, 0, 20, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 2, ''),
(80301, 0, 18321, 0, 0, 0, 'Green Rocket Car', '', 0, 1, 2, 64, 55, 53, 53, 30, 35, 0, 1, 1.38571, 0, 20, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 2, '');




