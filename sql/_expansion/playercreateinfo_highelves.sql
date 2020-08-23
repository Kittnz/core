
replace into playercreateinfo values 

(10, 1, 0, 38, -5630.9, -4324.9, 401.6, 1.4),
(10, 2, 0, 38, -5630.9, -4324.9, 401.6, 1.4),
(10, 3, 0, 38, -5630.9, -4324.9, 401.6, 1.4),
(10, 4, 0, 38, -5630.9, -4324.9, 401.6, 1.4),
(10, 5, 0, 38, -5630.9, -4324.9, 401.6, 1.4),
(10, 8, 0, 38, -5630.9, -4324.9, 401.6, 1.4);

replace into playercreateinfo_action values 

(10, 1, 72, 6603, 0),
(10, 1, 73, 78, 0),
(10, 1, 74, 20572, 0),
(10, 1, 83, 117, 128),
(10, 3, 0, 6603, 0),
(10, 3, 1, 2973, 0),
(10, 3, 2, 75, 0),
(10, 3, 4, 20572, 0),
(10, 3, 10, 159, 128),
(10, 3, 11, 117, 128),
(10, 4, 0, 6603, 0),
(10, 4, 1, 1752, 0),
(10, 4, 2, 2098, 0),
(10, 4, 3, 2764, 0),
(10, 4, 4, 20572, 0),
(10, 4, 11, 117, 128),
(10, 8, 0, 6603, 0),
(10, 8, 1, 133, 0),
(10, 8, 2, 168, 0),
(10, 8, 3, 20577, 0),
(10, 8, 10, 159, 128),
(10, 8, 11, 4604, 128),
(10, 5, 0, 6603, 0),
(10, 5, 1, 585, 0),
(10, 5, 2, 2050, 0),
(10, 5, 10, 159, 128),
(10, 5, 11, 2070, 128),
(10, 2, 0, 6603, 0),
(10, 2, 1, 21084, 0),
(10, 2, 2, 635, 0),
(10, 2, 10, 159, 128),
(10, 2, 11, 2070, 128);

-- Starting items
delete from playercreateinfo_item where race = 10; 

-- Warrior

replace into `playercreateinfo_item` values 

 (1, 1, 25, 1),
 (1, 1, 24143, 1),
 (1, 1, 24145, 1),
 (1, 1, 24146, 1),
 (1, 1, 117, 4),
 (1, 1, 2362, 1),
 (1, 1, 6948, 1),
 
-- Hunter 

 (4, 3, 117, 4),
 (4, 3, 20900, 1),
 (4, 3, 20896, 1),
 (4, 3, 20897, 1),
 (4, 3, 159, 2),
 (4, 3, 2092, 1),
 (4, 3, 2101, 1),
 (4, 3, 2504, 1),
 (4, 3, 2512, 200),
 (4, 3, 6948, 1),
 
-- Rogue

(1, 4, 20898, 1),
(1, 4, 20896, 1),
(1, 4, 20897, 1),
(1, 4, 2070, 4),
(1, 4, 2092, 1),
(1, 4, 2947, 200),
(1, 4, 6948, 1),

-- Priest

(1, 5, 36, 1),
(1, 5, 51, 1),
(1, 5, 52, 1),
(1, 5, 53, 1),
(1, 5, 159, 2),
(1, 5, 2070, 4),
(1, 5, 20891, 1),
(1, 5, 6948, 1),

-- Mage

(1, 8, 35, 1),
(1, 8, 55, 1),
(1, 8, 20893, 1),
(1, 8, 159, 2),
(1, 8, 1395, 1),
(1, 8, 2070, 4),
(1, 8, 6096, 1),
(1, 8, 6948, 1),

-- Paladin

(1, 2, 24146, 1),
(1, 2, 24145, 1),
(1, 2, 24143, 1),
(1, 2, 159, 2),
(1, 2, 2070, 4),
(1, 2, 2361, 1),
(1, 2, 6948, 1);

-- Starting items
 
 replace into item_template values

 ('24146', '0', '4', '0', 'Initiate\'s Boots', '', '36793', '0', '0', '1', '1', '1', '8', '-1', '-1', '1',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL), 

 ('24143', '0', '4', '0', 'Initiate\'s Shirt', '', '36789', '0', '0', '1', '1', '1', '4', '-1', '-1', '1',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL), 

 ('24145', '0', '4', '1', 'Initiate\'s Pants', '', '36790', '0', '0', '1', '1', '1', '7', '-1', '-1', '1',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '25', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL), 

 ('20895', '0', '4', '0', 'Apprentice\'s Boots', '', '33260', '0', '0', '1', '1', '1', '8', '-1', '-1', '1',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL), 

 ('20893', '0', '4', '1', 'Apprentice\'s Robe', '', '33258', '0', '0', '1', '1', '1', '5', '-1', '-1', '1',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '35', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL), 

 ('20891', '0', '4', '1', 'Neophyte\'s Robe', '', '33256', '0', '0', '1', '1', '1', '5', '-1', '-1', '1',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '35', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL), 

 ('20898', '0', '4', '0', 'Lookout\'s Boots', '', '36764', '0', '0', '1', '1', '1', '8', '-1', '-1', '1',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL), 

 ('20897', '0', '4', '0', 'Lookout\'s Shirt', '', '33353', '0', '0', '1', '1', '1', '4', '-1', '-1', '1',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL),  

 ('20896', '0', '4', '1', 'Lookout\'s Pants', '', '33342', '0', '0', '1', '1', '1', '7', '-1', '-1', '1',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '25', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL), 

 ('20900', '0', '4', '0', 'Warder\'s Boots', '', '33350', '0', '0', '1', '1', '1', '8', '-1', '-1', '1',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL), 

 ('20901', '0', '4', '0', 'Warder\'s Shirt', '', '33352', '0', '0', '1', '1', '1', '4', '-1', '-1', '1',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL), 

 ('20899', '0', '4', '1', 'Warder\'s Pants', '', '33351', '0', '0', '1', '1', '1', '7', '-1', '-1', '1',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '25', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
replace into playercreateinfo_spell values

(10, 1, 78, 0, 5875, 'Heroic Strike'),
(10, 1, 81, 0, 5875, 'Dodge'),
(10, 1, 107, 0, 5875, 'Block'),
(10, 1, 196, 0, 5875, 'One-Handed Axes'),
(10, 1, 197, 0, 5875, 'Two-Handed Axes'),
(10, 1, 201, 0, 5875, 'One-Handed Swords'),
(10, 1, 203, 0, 5875, 'Unarmed'),
(10, 1, 204, 0, 5875, 'Defense'),
(10, 1, 522, 0, 5875, 'SPELLDEFENSE (DND)'),
(10, 1, 669, 0, 5875, 'Language Orcish'),
(10, 1, 2382, 0, 5875, 'Generic'),
(10, 1, 2457, 0, 5875, 'Battle Stance'),
(10, 1, 2479, 0, 5875, 'Honorless Target'),
(10, 1, 3050, 0, 5875, 'Detect'),
(10, 1, 3365, 0, 5875, 'Opening'),
(10, 1, 5301, 0, 5875, 'Defensive State (DND)'),
(10, 1, 6233, 0, 5875, 'Closing'),
(10, 1, 6246, 0, 5875, 'Closing'),
(10, 1, 6247, 0, 5875, 'Opening'),
(10, 1, 6477, 0, 5875, 'Opening'),
(10, 1, 6478, 0, 5875, 'Opening'),
(10, 1, 6603, 0, 5875, 'Attack'),
(10, 1, 7266, 0, 5875, 'Duel'),
(10, 1, 7267, 0, 5875, 'Grovel'),
(10, 1, 7355, 0, 5875, 'Stuck'),
(10, 1, 8386, 0, 5875, 'Attacking'),
(10, 1, 8737, 0, 5875, 'Mail'),
(10, 1, 9077, 0, 5875, 'Leather'),
(10, 1, 9078, 0, 5875, 'Cloth'),
(10, 1, 9116, 0, 5875, 'Shield'),
(10, 1, 9125, 0, 5875, 'Generic'),
(10, 1, 20572, 0, 5875, 'Blood Fury'),
(10, 1, 20573, 0, 5875, 'Hardiness'),
(10, 1, 20574, 0, 5875, 'Axe Specialization'),
(10, 1, 21563, 0, 5875, 'Command'),
(10, 1, 21651, 0, 5875, 'Opening'),
(10, 1, 21652, 0, 5875, 'Closing'),
(10, 1, 22027, 0, 5875, 'Remove Insignia'),
(10, 1, 22810, 0, 5875, 'Opening - No Text'),
(10, 3, 75, 0, 5875, 'Auto Shot'),
(10, 3, 81, 0, 5875, 'Dodge'),
(10, 3, 196, 0, 5875, 'One-Handed Axes'),
(10, 3, 203, 0, 5875, 'Unarmed'),
(10, 3, 204, 0, 5875, 'Defense'),
(10, 3, 264, 0, 5875, 'Bows'),
(10, 3, 522, 0, 5875, 'SPELLDEFENSE (DND)'),
(10, 3, 669, 0, 5875, 'Language Orcish'),
(10, 3, 2382, 0, 5875, 'Generic'),
(10, 3, 2479, 0, 5875, 'Honorless Target'),
(10, 3, 2973, 0, 5875, 'Raptor Strike'),
(10, 3, 3050, 0, 5875, 'Detect'),
(10, 3, 3365, 0, 5875, 'Opening'),
(10, 3, 6233, 0, 5875, 'Closing'),
(10, 3, 6246, 0, 5875, 'Closing'),
(10, 3, 6247, 0, 5875, 'Opening'),
(10, 3, 6477, 0, 5875, 'Opening'),
(10, 3, 6478, 0, 5875, 'Opening'),
(10, 3, 6603, 0, 5875, 'Attack'),
(10, 3, 7266, 0, 5875, 'Duel'),
(10, 3, 7267, 0, 5875, 'Grovel'),
(10, 3, 7355, 0, 5875, 'Stuck'),
(10, 3, 8386, 0, 5875, 'Attacking'),
(10, 3, 9077, 0, 5875, 'Leather'),
(10, 3, 9078, 0, 5875, 'Cloth'),
(10, 3, 9125, 0, 5875, 'Generic'),
(10, 3, 13358, 0, 5875, 'Defensive State (DND)'),
(10, 3, 20572, 0, 5875, 'Blood Fury'),
(10, 3, 20573, 0, 5875, 'Hardiness'),
(10, 3, 20574, 0, 5875, 'Axe Specialization'),
(10, 3, 20576, 0, 5875, 'Command'),
(10, 3, 21651, 0, 5875, 'Opening'),
(10, 3, 21652, 0, 5875, 'Closing'),
(10, 3, 22027, 0, 5875, 'Remove Insignia'),
(10, 3, 22810, 0, 5875, 'Opening - No Text'),
(10, 3, 24949, 0, 5875, 'Defensive State 2 (DND)'),
(10, 4, 81, 0, 5875, 'Dodge'),
(10, 4, 203, 0, 5875, 'Unarmed'),
(10, 4, 204, 0, 5875, 'Defense'),
(10, 4, 522, 0, 5875, 'SPELLDEFENSE (DND)'),
(10, 4, 669, 0, 5875, 'Language Orcish'),
(10, 4, 1180, 0, 5875, 'Daggers'),
(10, 4, 1752, 0, 5875, 'Sinister Strike'),
(10, 4, 2098, 0, 5875, 'Eviscerate'),
(10, 4, 2382, 0, 5875, 'Generic'),
(10, 4, 2479, 0, 5875, 'Honorless Target'),
(10, 4, 2567, 0, 5875, 'Thrown'),
(10, 4, 2764, 0, 5875, 'Throw'),
(10, 4, 3050, 0, 5875, 'Detect'),
(10, 4, 3365, 0, 5875, 'Opening'),
(10, 4, 6233, 0, 5875, 'Closing'),
(10, 4, 6246, 0, 5875, 'Closing'),
(10, 4, 6247, 0, 5875, 'Opening'),
(10, 4, 6477, 0, 5875, 'Opening'),
(10, 4, 6478, 0, 5875, 'Opening'),
(10, 4, 6603, 0, 5875, 'Attack'),
(10, 4, 7266, 0, 5875, 'Duel'),
(10, 4, 7267, 0, 5875, 'Grovel'),
(10, 4, 7355, 0, 5875, 'Stuck'),
(10, 4, 8386, 0, 5875, 'Attacking'),
(10, 4, 9077, 0, 5875, 'Leather'),
(10, 4, 9078, 0, 5875, 'Cloth'),
(10, 4, 9125, 0, 5875, 'Generic'),
(10, 4, 16092, 0, 5875, 'Defensive State (DND)'),
(10, 4, 20572, 0, 5875, 'Blood Fury'),
(10, 4, 20573, 0, 5875, 'Hardiness'),
(10, 4, 20574, 0, 5875, 'Axe Specialization'),
(10, 4, 21184, 0, 5875, 'Rogue Passive (DND)'),
(10, 4, 21563, 0, 5875, 'Command'),
(10, 4, 21651, 0, 5875, 'Opening'),
(10, 4, 21652, 0, 5875, 'Closing'),
(10, 4, 22027, 0, 5875, 'Remove Insignia'),
(10, 4, 22810, 0, 5875, 'Opening - No Text'),
(10, 2, 81, 0, 5875, 'Dodge'),
(10, 2, 107, 0, 5875, 'Block'),
(10, 2, 198, 0, 5875, 'One-Handed Maces'),
(10, 2, 199, 0, 5875, 'Two-Handed Maces'),
(10, 2, 203, 0, 5875, 'Unarmed'),
(10, 2, 204, 0, 5875, 'Defense'),
(10, 2, 522, 0, 5875, 'SPELLDEFENSE (DND)'),
(10, 2, 635, 0, 5875, 'Holy Light'),
(10, 2, 668, 0, 5875, 'Language Common'),
(10, 2, 2382, 0, 5875, 'Generic'),
(10, 2, 2479, 0, 5875, 'Honorless Target'),
(10, 2, 3050, 0, 5875, 'Detect'),
(10, 2, 3365, 0, 5875, 'Opening'),
(10, 2, 6233, 0, 5875, 'Closing'),
(10, 2, 6246, 0, 5875, 'Closing'),
(10, 2, 6247, 0, 5875, 'Opening'),
(10, 2, 6477, 0, 5875, 'Opening'),
(10, 2, 6478, 0, 5875, 'Opening'),
(10, 2, 6603, 0, 5875, 'Attack'),
(10, 2, 7266, 0, 5875, 'Duel'),
(10, 2, 7267, 0, 5875, 'Grovel'),
(10, 2, 7355, 0, 5875, 'Stuck'),
(10, 2, 8386, 0, 5875, 'Attacking'),
(10, 2, 8737, 0, 5875, 'Mail'),
(10, 2, 9077, 0, 5875, 'Leather'),
(10, 2, 9078, 0, 5875, 'Cloth'),
(10, 2, 9116, 0, 5875, 'Shield'),
(10, 2, 9125, 0, 5875, 'Generic'),
(10, 2, 20597, 0, 5875, 'Sword Specialization'),
(10, 2, 20598, 0, 5875, 'The Human Spirit'),
(10, 2, 20599, 0, 5875, 'Diplomacy'),
(10, 2, 20600, 0, 5875, 'Perception'),
(10, 2, 20864, 0, 5875, 'Mace Specialization'),
(10, 2, 21084, 0, 5875, 'Seal of Righteousness'),
(10, 2, 21651, 0, 5875, 'Opening'),
(10, 2, 21652, 0, 5875, 'Closing'),
(10, 2, 22027, 0, 5875, 'Remove Insignia'),
(10, 2, 22810, 0, 5875, 'Opening - No Text'),
(10, 2, 27762, 5302, 5875, 'Libram'),
(10, 5, 81, 0, 5875, 'Dodge'),
(10, 5, 198, 0, 5875, 'One-Handed Maces'),
(10, 5, 203, 0, 5875, 'Unarmed'),
(10, 5, 204, 0, 5875, 'Defense'),
(10, 5, 522, 0, 5875, 'SPELLDEFENSE (DND)'),
(10, 5, 585, 0, 5875, 'Smite'),
(10, 5, 668, 0, 5875, 'Language Common'),
(10, 5, 2050, 0, 5875, 'Lesser Heal'),
(10, 5, 2382, 0, 5875, 'Generic'),
(10, 5, 2479, 0, 5875, 'Honorless Target'),
(10, 5, 3050, 0, 5875, 'Detect'),
(10, 5, 3365, 0, 5875, 'Opening'),
(10, 5, 5009, 0, 5875, 'Wands'),
(10, 5, 5019, 0, 5875, 'Shoot'),
(10, 5, 6233, 0, 5875, 'Closing'),
(10, 5, 6246, 0, 5875, 'Closing'),
(10, 5, 6247, 0, 5875, 'Opening'),
(10, 5, 6477, 0, 5875, 'Opening'),
(10, 5, 6478, 0, 5875, 'Opening'),
(10, 5, 6603, 0, 5875, 'Attack'),
(10, 5, 7266, 0, 5875, 'Duel'),
(10, 5, 7267, 0, 5875, 'Grovel'),
(10, 5, 7355, 0, 5875, 'Stuck'),
(10, 5, 8386, 0, 5875, 'Attacking'),
(10, 5, 9078, 0, 5875, 'Cloth'),
(10, 5, 9125, 0, 5875, 'Generic'),
(10, 5, 20597, 0, 5875, 'Sword Specialization'),
(10, 5, 20598, 0, 5875, 'The Human Spirit'),
(10, 5, 20599, 0, 5875, 'Diplomacy'),
(10, 5, 20600, 0, 5875, 'Perception'),
(10, 5, 20864, 0, 5875, 'Mace Specialization'),
(10, 5, 21651, 0, 5875, 'Opening'),
(10, 5, 21652, 0, 5875, 'Closing'),
(10, 5, 22027, 0, 5875, 'Remove Insignia'),
(10, 5, 22810, 0, 5875, 'Opening - No Text');

replace into player_levelstats values 

(10, 1, 1, 26, 17, 24, 17, 23),
(10, 1, 2, 27, 18, 25, 17, 23),
(10, 1, 3, 28, 18, 26, 17, 24),
(10, 1, 4, 29, 19, 27, 17, 24),
(10, 1, 5, 31, 20, 28, 17, 24),
(10, 1, 6, 32, 21, 29, 18, 24),
(10, 1, 7, 33, 21, 30, 18, 25),
(10, 1, 8, 34, 22, 31, 18, 25),
(10, 1, 9, 35, 23, 32, 18, 25),
(10, 1, 10, 36, 23, 33, 18, 26),
(10, 1, 11, 38, 24, 35, 18, 26),
(10, 1, 12, 39, 25, 36, 18, 26),
(10, 1, 13, 40, 26, 37, 18, 27),
(10, 1, 14, 42, 27, 38, 19, 27),
(10, 1, 15, 43, 27, 39, 19, 27),
(10, 1, 16, 44, 28, 40, 19, 28),
(10, 1, 17, 45, 29, 42, 19, 28),
(10, 1, 18, 47, 30, 43, 19, 28),
(10, 1, 19, 48, 31, 44, 19, 29),
(10, 1, 20, 50, 32, 45, 19, 29),
(10, 1, 21, 51, 32, 47, 20, 29),
(10, 1, 22, 52, 33, 48, 20, 30),
(10, 1, 23, 54, 34, 49, 20, 30),
(10, 1, 24, 55, 35, 51, 20, 31),
(10, 1, 25, 57, 36, 52, 20, 31),
(10, 1, 26, 58, 37, 53, 20, 31),
(10, 1, 27, 60, 38, 55, 20, 32),
(10, 1, 28, 61, 39, 56, 21, 32),
(10, 1, 29, 63, 40, 58, 21, 33),
(10, 1, 30, 65, 41, 59, 21, 33),
(10, 1, 31, 66, 42, 60, 21, 33),
(10, 1, 32, 68, 43, 62, 21, 34),
(10, 1, 33, 69, 44, 63, 21, 34),
(10, 1, 34, 71, 45, 65, 22, 35),
(10, 1, 35, 73, 46, 66, 22, 35),
(10, 1, 36, 75, 47, 68, 22, 36),
(10, 1, 37, 76, 48, 70, 22, 36),
(10, 1, 38, 78, 49, 71, 22, 36),
(10, 1, 39, 80, 50, 73, 23, 37),
(10, 1, 40, 82, 51, 74, 23, 37),
(10, 1, 41, 83, 53, 76, 23, 38),
(10, 1, 42, 85, 54, 78, 23, 38),
(10, 1, 43, 87, 55, 79, 23, 39),
(10, 1, 44, 89, 56, 81, 23, 39),
(10, 1, 45, 91, 57, 83, 24, 40),
(10, 1, 46, 93, 58, 85, 24, 40),
(10, 1, 47, 95, 60, 86, 24, 41),
(10, 1, 48, 97, 61, 88, 24, 41),
(10, 1, 49, 99, 62, 90, 25, 42),
(10, 1, 50, 101, 63, 92, 25, 42),
(10, 1, 51, 103, 65, 94, 25, 43),
(10, 1, 52, 105, 66, 96, 25, 43),
(10, 1, 53, 107, 67, 98, 25, 44),
(10, 1, 54, 109, 69, 100, 26, 45),
(10, 1, 55, 112, 70, 102, 26, 45),
(10, 1, 56, 114, 71, 104, 26, 46),
(10, 1, 57, 116, 73, 106, 26, 46),
(10, 1, 58, 118, 74, 108, 27, 47),
(10, 1, 59, 121, 76, 110, 27, 47),
(10, 1, 60, 123, 77, 112, 27, 48),
(10, 3, 1, 23, 20, 23, 17, 24),
(10, 3, 2, 23, 21, 24, 18, 25),
(10, 3, 3, 24, 22, 25, 18, 25),
(10, 3, 4, 24, 24, 25, 19, 26),
(10, 3, 5, 25, 25, 26, 19, 26),
(10, 3, 6, 25, 26, 27, 20, 27),
(10, 3, 7, 25, 27, 28, 20, 27),
(10, 3, 8, 26, 28, 29, 21, 28),
(10, 3, 9, 26, 30, 30, 21, 29),
(10, 3, 10, 27, 31, 30, 22, 29),
(10, 3, 11, 27, 32, 31, 22, 30),
(10, 3, 12, 28, 34, 32, 23, 31),
(10, 3, 13, 28, 35, 33, 24, 31),
(10, 3, 14, 29, 36, 34, 24, 32),
(10, 3, 15, 29, 38, 35, 25, 32),
(10, 3, 16, 30, 39, 36, 25, 33),
(10, 3, 17, 30, 40, 37, 26, 34),
(10, 3, 18, 31, 42, 38, 27, 35),
(10, 3, 19, 31, 43, 39, 27, 35),
(10, 3, 20, 32, 45, 40, 28, 36),
(10, 3, 21, 32, 46, 41, 29, 37),
(10, 3, 22, 33, 48, 42, 29, 37),
(10, 3, 23, 33, 49, 43, 30, 38),
(10, 3, 24, 34, 51, 44, 31, 39),
(10, 3, 25, 34, 52, 45, 31, 40),
(10, 3, 26, 35, 54, 46, 32, 40),
(10, 3, 27, 35, 56, 47, 33, 41),
(10, 3, 28, 36, 57, 48, 33, 42),
(10, 3, 29, 36, 59, 49, 34, 43),
(10, 3, 30, 37, 61, 50, 35, 43),
(10, 3, 31, 37, 62, 52, 36, 44),
(10, 3, 32, 38, 64, 53, 36, 45),
(10, 3, 33, 39, 66, 54, 37, 46),
(10, 3, 34, 39, 67, 55, 38, 47),
(10, 3, 35, 40, 69, 56, 39, 48),
(10, 3, 36, 41, 71, 58, 40, 49),
(10, 3, 37, 41, 73, 59, 40, 49),
(10, 3, 38, 42, 75, 60, 41, 50),
(10, 3, 39, 42, 77, 61, 42, 51),
(10, 3, 40, 43, 78, 63, 43, 52),
(10, 3, 41, 44, 80, 64, 44, 53),
(10, 3, 42, 44, 82, 65, 44, 54),
(10, 3, 43, 45, 84, 66, 45, 55),
(10, 3, 44, 46, 86, 68, 46, 56),
(10, 3, 45, 46, 88, 69, 47, 57),
(10, 3, 46, 47, 90, 71, 48, 58),
(10, 3, 47, 48, 92, 72, 49, 59),
(10, 3, 48, 49, 95, 73, 50, 60),
(10, 3, 49, 49, 97, 75, 51, 61),
(10, 3, 50, 50, 99, 76, 52, 62),
(10, 3, 51, 51, 101, 78, 53, 63),
(10, 3, 52, 52, 103, 79, 54, 64),
(10, 3, 53, 52, 105, 81, 55, 65),
(10, 3, 54, 53, 108, 82, 56, 66),
(10, 3, 55, 54, 110, 84, 57, 67),
(10, 3, 56, 55, 112, 85, 58, 68),
(10, 3, 57, 56, 115, 87, 59, 70),
(10, 3, 58, 56, 117, 89, 60, 71),
(10, 3, 59, 57, 120, 90, 61, 72),
(10, 3, 60, 58, 122, 92, 62, 73),
(10, 4, 1, 24, 20, 23, 17, 23),
(10, 4, 2, 25, 21, 24, 17, 23),
(10, 4, 3, 25, 22, 24, 17, 24),
(10, 4, 4, 26, 24, 25, 18, 24),
(10, 4, 5, 27, 25, 26, 18, 24),
(10, 4, 6, 27, 26, 26, 18, 25),
(10, 4, 7, 28, 28, 27, 18, 25),
(10, 4, 8, 29, 29, 27, 18, 25),
(10, 4, 9, 30, 30, 28, 18, 26),
(10, 4, 10, 30, 32, 29, 19, 26),
(10, 4, 11, 31, 33, 30, 19, 27),
(10, 4, 12, 32, 34, 30, 19, 27),
(10, 4, 13, 33, 36, 31, 19, 27),
(10, 4, 14, 33, 37, 32, 19, 28),
(10, 4, 15, 34, 39, 32, 20, 28),
(10, 4, 16, 35, 40, 33, 20, 29),
(10, 4, 17, 36, 41, 34, 20, 29),
(10, 4, 18, 37, 43, 35, 20, 29),
(10, 4, 19, 38, 44, 35, 20, 30),
(10, 4, 20, 38, 46, 36, 20, 30),
(10, 4, 21, 39, 48, 37, 21, 31),
(10, 4, 22, 40, 49, 38, 21, 31),
(10, 4, 23, 41, 51, 39, 21, 32),
(10, 4, 24, 42, 52, 39, 22, 32),
(10, 4, 25, 43, 54, 40, 22, 33),
(10, 4, 26, 44, 56, 41, 22, 33),
(10, 4, 27, 45, 57, 42, 22, 33),
(10, 4, 28, 46, 59, 43, 22, 34),
(10, 4, 29, 46, 61, 44, 23, 34),
(10, 4, 30, 47, 63, 44, 23, 35),
(10, 4, 31, 48, 64, 45, 23, 35),
(10, 4, 32, 49, 66, 46, 23, 36),
(10, 4, 33, 50, 68, 47, 24, 36),
(10, 4, 34, 51, 70, 48, 24, 37),
(10, 4, 35, 52, 72, 49, 24, 37),
(10, 4, 36, 54, 74, 50, 25, 38),
(10, 4, 37, 55, 75, 51, 25, 39),
(10, 4, 38, 56, 77, 52, 25, 39),
(10, 4, 39, 57, 79, 53, 25, 40),
(10, 4, 40, 58, 81, 54, 26, 40),
(10, 4, 41, 59, 83, 55, 26, 41),
(10, 4, 42, 60, 85, 56, 26, 41),
(10, 4, 43, 61, 87, 57, 26, 42),
(10, 4, 44, 62, 90, 58, 27, 42),
(10, 4, 45, 64, 92, 59, 27, 43),
(10, 4, 46, 65, 94, 60, 27, 44),
(10, 4, 47, 66, 96, 61, 28, 44),
(10, 4, 48, 67, 98, 62, 28, 45),
(10, 4, 49, 68, 100, 64, 28, 46),
(10, 4, 50, 70, 103, 65, 29, 46),
(10, 4, 51, 71, 105, 66, 29, 47),
(10, 4, 52, 72, 107, 67, 29, 47),
(10, 4, 53, 73, 110, 68, 30, 48),
(10, 4, 54, 75, 112, 69, 30, 49),
(10, 4, 55, 76, 114, 71, 30, 49),
(10, 4, 56, 77, 117, 72, 31, 50),
(10, 4, 57, 79, 119, 73, 31, 51),
(10, 4, 58, 80, 122, 74, 31, 52),
(10, 4, 59, 82, 124, 76, 32, 52),
(10, 4, 60, 83, 127, 77, 32, 53),
(10, 8, 1, 20, 20, 20, 23, 22),
(10, 8, 2, 20, 20, 20, 24, 24),
(10, 8, 3, 20, 20, 21, 25, 25),
(10, 8, 4, 20, 21, 21, 27, 26),
(10, 8, 5, 20, 21, 21, 28, 28),
(10, 8, 6, 21, 21, 21, 29, 29),
(10, 8, 7, 21, 21, 22, 30, 30),
(10, 8, 8, 21, 21, 22, 31, 31),
(10, 8, 9, 21, 21, 22, 33, 32),
(10, 8, 10, 21, 22, 23, 34, 34),
(10, 8, 11, 21, 22, 23, 35, 35),
(10, 8, 12, 21, 22, 23, 37, 36),
(10, 8, 13, 21, 22, 24, 38, 37),
(10, 8, 14, 22, 22, 24, 39, 39),
(10, 8, 15, 22, 23, 24, 41, 40),
(10, 8, 16, 22, 23, 25, 42, 42),
(10, 8, 17, 22, 23, 25, 43, 44),
(10, 8, 18, 22, 23, 25, 45, 45),
(10, 8, 19, 22, 23, 26, 46, 46),
(10, 8, 20, 22, 24, 26, 48, 48),
(10, 8, 21, 23, 24, 26, 49, 49),
(10, 8, 22, 23, 24, 27, 51, 51),
(10, 8, 23, 23, 24, 27, 52, 52),
(10, 8, 24, 23, 25, 28, 54, 54),
(10, 8, 25, 23, 25, 28, 55, 55),
(10, 8, 26, 23, 25, 28, 57, 57),
(10, 8, 27, 23, 25, 29, 59, 58),
(10, 8, 28, 24, 25, 29, 60, 60),
(10, 8, 29, 24, 26, 30, 62, 61),
(10, 8, 30, 24, 26, 30, 64, 64),
(10, 8, 31, 24, 26, 30, 65, 66),
(10, 8, 32, 24, 26, 31, 67, 67),
(10, 8, 33, 24, 27, 31, 69, 69),
(10, 8, 34, 25, 27, 32, 70, 71),
(10, 8, 35, 25, 27, 32, 72, 72),
(10, 8, 36, 25, 28, 33, 74, 74),
(10, 8, 37, 25, 28, 33, 76, 76),
(10, 8, 38, 25, 28, 33, 78, 78),
(10, 8, 39, 26, 28, 34, 80, 79),
(10, 8, 40, 26, 29, 34, 81, 81),
(10, 8, 41, 26, 29, 35, 83, 84),
(10, 8, 42, 26, 29, 35, 85, 86),
(10, 8, 43, 26, 29, 36, 87, 88),
(10, 8, 44, 26, 30, 36, 89, 90),
(10, 8, 45, 27, 30, 37, 91, 92),
(10, 8, 46, 27, 30, 37, 93, 94),
(10, 8, 47, 27, 31, 38, 95, 96),
(10, 8, 48, 27, 31, 38, 98, 98),
(10, 8, 49, 28, 31, 39, 100, 100),
(10, 8, 50, 28, 32, 39, 102, 102),
(10, 8, 51, 28, 32, 40, 104, 105),
(10, 8, 52, 28, 32, 40, 106, 107),
(10, 8, 53, 28, 33, 41, 108, 109),
(10, 8, 54, 29, 33, 42, 111, 111),
(10, 8, 55, 29, 33, 42, 113, 114),
(10, 8, 56, 29, 34, 43, 115, 116),
(10, 8, 57, 29, 34, 43, 118, 118),
(10, 8, 58, 30, 34, 44, 120, 120),
(10, 8, 59, 30, 35, 44, 123, 123),
(10, 8, 60, 30, 35, 45, 125, 126),
(10, 2, 1, 22, 20, 22, 20, 22),
(10, 2, 2, 23, 21, 23, 21, 23),
(10, 2, 3, 24, 21, 24, 21, 23),
(10, 2, 4, 25, 22, 25, 22, 24),
(10, 2, 5, 26, 22, 26, 22, 25),
(10, 2, 6, 27, 23, 27, 23, 25),
(10, 2, 7, 28, 23, 28, 24, 26),
(10, 2, 8, 29, 24, 28, 24, 26),
(10, 2, 9, 30, 24, 29, 25, 27),
(10, 2, 10, 31, 25, 30, 25, 28),
(10, 2, 11, 32, 25, 31, 26, 29),
(10, 2, 12, 33, 26, 32, 27, 29),
(10, 2, 13, 34, 27, 33, 27, 30),
(10, 2, 14, 35, 27, 34, 28, 31),
(10, 2, 15, 36, 28, 36, 29, 31),
(10, 2, 16, 38, 28, 37, 29, 32),
(10, 2, 17, 39, 29, 38, 30, 33),
(10, 2, 18, 40, 30, 39, 31, 34),
(10, 2, 19, 41, 30, 40, 31, 34),
(10, 2, 20, 42, 31, 41, 32, 35),
(10, 2, 21, 43, 32, 42, 33, 36),
(10, 2, 22, 45, 32, 43, 34, 37),
(10, 2, 23, 46, 33, 44, 34, 38),
(10, 2, 24, 47, 34, 46, 35, 38),
(10, 2, 25, 48, 34, 47, 36, 39),
(10, 2, 26, 50, 35, 48, 37, 40),
(10, 2, 27, 51, 36, 49, 37, 42),
(10, 2, 28, 52, 36, 50, 38, 43),
(10, 2, 29, 54, 37, 52, 39, 44),
(10, 2, 30, 55, 38, 53, 40, 44),
(10, 2, 31, 56, 39, 54, 41, 45),
(10, 2, 32, 58, 39, 56, 42, 46),
(10, 2, 33, 59, 40, 57, 42, 47),
(10, 2, 34, 61, 41, 58, 43, 48),
(10, 2, 35, 62, 42, 60, 44, 49),
(10, 2, 36, 64, 43, 61, 45, 50),
(10, 2, 37, 65, 43, 62, 46, 51),
(10, 2, 38, 67, 44, 64, 47, 52),
(10, 2, 39, 68, 45, 65, 48, 53),
(10, 2, 40, 70, 46, 67, 49, 54),
(10, 2, 41, 71, 47, 68, 50, 55),
(10, 2, 42, 73, 47, 70, 51, 56),
(10, 2, 43, 74, 48, 71, 52, 57),
(10, 2, 44, 76, 49, 73, 52, 58),
(10, 2, 45, 78, 50, 74, 53, 59),
(10, 2, 46, 79, 51, 76, 54, 60),
(10, 2, 47, 81, 52, 77, 56, 61),
(10, 2, 48, 83, 53, 79, 57, 63),
(10, 2, 49, 84, 54, 81, 58, 65),
(10, 2, 50, 86, 55, 82, 59, 66),
(10, 2, 51, 88, 56, 84, 60, 67),
(10, 2, 52, 90, 57, 86, 61, 68),
(10, 2, 53, 92, 58, 87, 62, 69),
(10, 2, 54, 93, 59, 89, 63, 70),
(10, 2, 55, 95, 60, 91, 64, 72),
(10, 2, 56, 97, 61, 93, 65, 73),
(10, 2, 57, 99, 62, 94, 66, 74),
(10, 2, 58, 101, 63, 96, 68, 75),
(10, 2, 59, 103, 64, 98, 69, 77),
(10, 2, 60, 105, 65, 100, 70, 78),
(10, 5, 1, 20, 20, 20, 22, 24),
(10, 5, 2, 20, 20, 20, 23, 25),
(10, 5, 3, 20, 20, 21, 24, 26),
(10, 5, 4, 21, 21, 21, 25, 28),
(10, 5, 5, 21, 21, 21, 27, 29),
(10, 5, 6, 21, 21, 22, 28, 30),
(10, 5, 7, 21, 21, 22, 29, 31),
(10, 5, 8, 21, 22, 22, 30, 32),
(10, 5, 9, 21, 22, 23, 31, 34),
(10, 5, 10, 22, 22, 23, 33, 35),
(10, 5, 11, 22, 22, 24, 34, 36),
(10, 5, 12, 22, 23, 24, 35, 38),
(10, 5, 13, 22, 23, 24, 36, 39),
(10, 5, 14, 22, 23, 25, 38, 40),
(10, 5, 15, 23, 23, 25, 39, 43),
(10, 5, 16, 23, 24, 26, 40, 44),
(10, 5, 17, 23, 24, 26, 42, 45),
(10, 5, 18, 23, 24, 26, 43, 47),
(10, 5, 19, 23, 25, 27, 44, 48),
(10, 5, 20, 24, 25, 27, 46, 50),
(10, 5, 21, 24, 25, 28, 47, 51),
(10, 5, 22, 24, 25, 28, 49, 53),
(10, 5, 23, 24, 26, 29, 50, 54),
(10, 5, 24, 25, 26, 29, 52, 56),
(10, 5, 25, 25, 26, 30, 53, 57),
(10, 5, 26, 25, 27, 30, 55, 59),
(10, 5, 27, 25, 27, 30, 56, 61),
(10, 5, 28, 25, 27, 31, 58, 63),
(10, 5, 29, 26, 28, 31, 59, 65),
(10, 5, 30, 26, 28, 32, 61, 67),
(10, 5, 31, 26, 28, 32, 63, 68),
(10, 5, 32, 26, 29, 33, 64, 70),
(10, 5, 33, 27, 29, 33, 66, 72),
(10, 5, 34, 27, 29, 34, 68, 73),
(10, 5, 35, 27, 30, 34, 69, 75),
(10, 5, 36, 28, 30, 35, 71, 77),
(10, 5, 37, 28, 30, 36, 73, 79),
(10, 5, 38, 28, 31, 36, 75, 81),
(10, 5, 39, 28, 31, 37, 76, 84),
(10, 5, 40, 29, 31, 37, 78, 85),
(10, 5, 41, 29, 32, 38, 80, 87),
(10, 5, 42, 29, 32, 38, 82, 89),
(10, 5, 43, 29, 33, 39, 84, 91),
(10, 5, 44, 30, 33, 39, 86, 93),
(10, 5, 45, 30, 33, 40, 88, 95),
(10, 5, 46, 30, 34, 41, 90, 97),
(10, 5, 47, 31, 34, 41, 92, 99),
(10, 5, 48, 31, 35, 42, 94, 102),
(10, 5, 49, 31, 35, 43, 96, 105),
(10, 5, 50, 32, 35, 43, 98, 107),
(10, 5, 51, 32, 36, 44, 100, 109),
(10, 5, 52, 32, 36, 44, 102, 111),
(10, 5, 53, 33, 37, 45, 104, 113),
(10, 5, 54, 33, 37, 46, 106, 116),
(10, 5, 55, 33, 38, 46, 109, 118),
(10, 5, 56, 34, 38, 47, 111, 120),
(10, 5, 57, 34, 39, 48, 113, 123),
(10, 5, 58, 34, 39, 49, 115, 126),
(10, 5, 59, 35, 40, 49, 118, 129),
(10, 5, 60, 35, 40, 50, 120, 131);




