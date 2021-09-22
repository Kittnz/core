
delete from creature_template where entry between 92100 and 92200;

-- Groveweald Shaman , display ID 1997, scale 0.8 , level 32-33 elite, weapon 1 35 , casts 10391 , has 2000 mana , faction 82
-- Groveweald Pathfinder , display ID 6821 , scale 1, level 32-33 elite, weapon 10799 , casts 14268 , casts 21949, has 2000 mana , faction 82
-- Groveweald Warder , display ID 1997 , scale 1.2 , level 32-33 , weapon 5292, casts 8903 on friendly weak targets, has 2000 mana , faction 82
-- Groveweald Ursa , display ID 6825 , scale 1 , level 32-33 , weapon 3325 ((Hits hard, make damage 1.5x normal)) , faction 82
-- Elder 'One Eye' , display iD 6825 , scale 1.3 , weapon 1 15444 , has 4500 mana , faction 82
-- Elder Blackmaw , display ID 1012 , scale 1.3 , weapon 1 15444, has 4500 mana , faction 82
-- Grovetender Engryss , display ID 11363, scale 1.7  , weapon 1 10685 , faction 8

-- Raging Infernal, display ID 10905, scale 1.6 , level 34 elite, ((Has high armor, give 1.5x normal armor, and give 100 fire resistance)) , ((THIS NPC DOES FIRE DAMAGE)), demon , faction 90
-- Grove Sprite Corruptor , display ID 6809, scale 1 level 32 (Not elite), has 2000 mana, casts 8400 , and 6223, demon , faction 90
-- Wandering Faerie Dragon, display ID 1267, scale 1 level 33 elite, has 2000 mana, casts 11704 every 10 seconds at random caster with a mana pool, dragonkin , faction 16
-- Enraged Sharpclaw , display ID 820, scale 1.2, level 33 elite , beast, faction 44
-- Glade Creeper , display ID 9011, scale 1, level 32 elite, elemental, faction 16
-- Deranged Ancient , display ID 2451, scale 1, level 34 elite, has 350 mana, casts 9907, elemental, faction 16
-- Disturbed Spirit, display ID 14594, scale 1, level 33 elite, has 800 mana, casts, undead , faction 16
-- Wallowing Spirit, display ID 10700, scale 1.2, level 35, elite, has 1000 mana , casts 11659, undead, faction 16
-- Roaming Felguard , display ID 7970, scale 1.3, level 35-36 elite weapon 15213, demon,  faction 90
-- Mana Hunter, display ID 1913, scale 1, level 34-35 elite , has 5000 mana, casts 3604 , casts 10874 , demon, faction 90
-- Wicked Manipulator , display ID 2834, level 33-34 elite, has 5000 mana, casts 6358, demon, faction 90
-- Blacktalon Trickster, display ID 2017, scale 1.3,  level 33-35 elite, demon, faction 90
-- Blacktalon Felsworn, display ID 11334, scale 1.3,  level 34-36 elite, casts 11712, has 2000 mana , demon, faction 90
-- Blacktalon Flamecaller, display ID 11334, scale 1.4, level 35 elite, casts 8402, has 2000 mana , demon, faction 90
-- Blacktalon Corruptor, display ID 2017, scale 1.4, level 34-35 elite, casts 11659, has 1500 mana , demon, faction 90
-- Twisted Ancient, display ID 6351, scale 1, level 35 elite , elemental,  faction 16

-- Warden Liferoot , display ID 4408, level 35 elite, miniboss ((Give 2x normal level 35 elite hp)), has 2000 mana , casts 8905 , weapon 15444 , humanoid , faction 16 , MUST BE CHANNELING A NATURE SPELL

-- Warden Treeshade , display ID 4485, level 35 elite, miniboss ((Give 2x normal level 35 elite hp)), has 2000 mana , casts 8905 , weapon 15444 , humanoid , faction 16 , MUST BE CHANNELING A NATURE SPELL 

replace into creature_template values

(92100, 0, 6821, 0, 0, 0, 'Groveweald Warrior', NULL, 0, 30, 31, 2865, 3018, 0, 0, 1661, 152, 0, 1, 1.14286, 0, 20, 5, 0, 1, 1, 193, 249, 0, 126, 1, 2000, 2000, 1, 64, 0, 0, 0, 0, 0, 0, 44.84, 61.655, 100, 7, 0, 4623, 4623, 0, 0, 0, 0, 0, 0, 0, 7164, 8258, 15572, 0, 0, 0, 180, 240, 'EventAI', 0, 1, 0, 0, 3, 4623, 0, 0, 0, 0, 0, 0, ''),
(92101, 0, 1997, 0, 0, 0, 'Groveweald Shaman', NULL, 0, 32, 33, 2220, 2263, 1963, 2007, 1121, 28, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 45, 55, 0, 134, 1, 2000, 2000, 2, 32768, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 7, 0, 697, 697, 0, 0, 0, 0, 0, 0, 0, 8599, 11969, 8788, 0, 6970, 0, 51, 71, 'EventAI', 1, 3, 0, 0, 3, 697, 0, 0, 0, 0, 0, 0, ''),
(92102, 0, 6821, 0, 0, 0, 'Groveweald Pathfinder', NULL, 0, 32, 33, 2505, 2601, 2457, 2553, 1111, 152, 0, 1, 1.14286, 1.2, 20, 5, 0, 1, 1, 193, 249, 0, 134, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 44.84, 61.655, 100, 7, 0, 7874, 7874, 0, 0, 0, 0, 0, 0, 0, 11431, 7966, 0, 0, 0, 0, 172, 230, 'EventAI', 1, 1, 0, 0, 3, 7874, 0, 0, 0, 0, 0, 0, ''),
(92103, 0, 1997, 0, 0, 0, 'Groveweald Warder', '', 0, 32, 33, 2319, 2433, 811, 852, 1004, 23, 0, 1.2, 1.14286, 1.15, 20, 5, 0, 1, 1, 146, 189, 0, 122, 1, 2000, 1540, 2, 32832, 0, 0, 0, 0, 0, 0, 38.192, 52.514, 100, 7, 0, 6392, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 191, 254, 'EventAI', 1, 3, 0, 0, 3, 6392, 0, 0, 0, 0, 0, 0, ''),
(92104, 0, 6825, 0, 0, 0, 'Groveweald Ursa', NULL, 0, 32, 33, 2321, 2321, 0, 0, 1234, 44, 0, 1, 1.14286, 0, 20, 5, 0, 4, 1, 245, 254, 0, 128, 1, 1391, 1530, 1, 0, 0, 4, 0, 0, 0, 0, 39.168, 53.856, 100, 1, 1, 12037, 0, 12037, 0, 0, 0, 0, 0, 0, 17156, 0, 0, 0, 120370, 0, 0, 0, '', 1, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(92105, 0, 6825, 0, 0, 0, 'Elder \'One Eye\'', '', 0, 33, 34, 3112, 3211, 4136, 4350, 645, 67, 0, 1, 1.14286, 0, 20, 5, 0, 1, 1, 134, 173, 0, 122, 1, 2000, 2000, 8, 32768, 0, 0, 0, 0, 0, 0, 36.1456, 49.7002, 100, 7, 0, 4282, 4282, 0, 0, 0, 0, 0, 0, 0, 9053, 8457, 0, 0, 42820, 0, 148, 199, 'EventAI', 1, 3, 0, 0, 3, 4282, 0, 0, 0, 0, 0, 0, ''),
(92106, 0, 1012, 0, 0, 0, 'Elder Blackmaw', NULL, 0, 30, 31, 3433, 3550, 4852, 4878, 1033, 152, 0, 1, 1.14286, 0, 20, 5, 0, 1, 1, 193, 249, 0, 126, 1, 2000, 2000, 2, 64, 0, 0, 0, 0, 0, 0, 44.84, 61.655, 100, 7, 0, 4525, 4525, 0, 0, 70, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 163, 217, 'EventAI', 0, 1, 0, 0, 3, 4525, 0, 0, 0, 0, 0, 0, ''),
(92107, 0, 11363, 0, 0, 0, 'Grovetender Engryss ', NULL, 0, 33, 34, 3330, 3489, 0, 0, 1966, 152, 0, 1, 1.14286, 0, 20, 5, 0, 1, 1, 193, 249, 0, 134, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 44.84, 61.655, 100, 7, 0, 7873, 7873, 0, 0, 0, 0, 0, 0, 0, 11430, 0, 0, 0, 78730, 0, 206, 274, '', 1, 1, 0, 0, 3, 7873, 0, 0, 0, 0, 0, 0, ''),
(92108, 0, 15585, 0, 0, 0, 'High Priestess A\'lathea', '', 0, 34, 34, 17736, 17736, 2517, 2517, 1063, 21, 0, 1, 1.14286, 0, 20, 5, 0, 1, 1, 193, 249, 0, 134, 1, 2000, 2000, 2, 64, 0, 0, 0, 0, 0, 0, 44.84, 61.655, 100, 6, 0, 4543, 4543, 0, 0, 0, 0, 0, 0, 0, 12470, 8053, 8814, 9613, 0, 0, 386, 509, '', 1, 1, 0, 0, 3, 4543, 0, 0, 617299931, 0, 0, 0, ''),
(92109, 0, 12350, 0, 0, 0, 'Keeper Ranathos', NULL, 0, 33, 33, 17250, 17400, 7899, 8888, 1097, 79, 2, 1, 1.14286, 0, 20, 5, 0, 1, 1, 229, 266, 0, 112, 1, 1425, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 35.1008, 48.2636, 100, 7, 0, 4056, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 143, 192, 'EventAI', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(92110, 0, 4426, 0, 0, 0, 'Master Raxxieth', NULL, 0, 35, 35, 16572, 17572, 6888, 8999, 1964, 90, 0, 1, 1.14286, 2, 20, 5, 0, 1, 1, 199, 256, 0, 156, 1, 2000, 2000, 1, 64, 0, 0, 0, 0, 0, 0, 45.7392, 62.8914, 100, 3, 0, 5760, 5760, 0, 0, 0, 0, 0, 0, 160, 0, 0, 0, 0, 0, 0, 261, 345, 'EventAI', 1, 1, 0, 0, 3, 5760, 0, 0, 0, 0, 0, 0, ''),
(92111, 0, 2010, 0, 0, 0, 'Fenektis the Deceiver', NULL, 0, 40, 40, 18572, 18572, 5000, 5000, 1964, 90, 0, 1, 1.14286, 0, 20, 5, 0, 1, 1, 193, 249, 0, 156, 1, 1341, 1475, 1, 0, 0, 0, 0, 0, 0, 0, 47.2, 64.9, 100, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 71, 354, '', 0, 1, 0, 0, 3, 6549, 0, 0, 0, 0, 0, 0, ''),
(92112, 0, 10905, 0, 0, 0, 'Raging Infernal', NULL, 0, 33, 34, 1468, 1536, 0, 0, 2593, 90, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 67, 84, 0, 144, 1, 2200, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 52.272, 71.874, 100, 3, 0, 4676, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46760, 0, 0, 0, '', 1, 1, 0, 0, 3, 0, 0, 0, 0, 4, 0, 0, ''),
(92113, 0, 6809, 0, 0, 0, 'Grove Sprite Corruptor', NULL, 0, 32, 32, 5106, 5162, 2000, 2000, 1252, 90, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 145, 156, 0, 128, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 3, 0, 4672, 4672, 0, 0, 0, 0, 0, 0, 0, 8599, 0, 0, 0, 0, 0, 49, 69, 'EventAI', 1, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(92114, 0, 1267, 0, 0, 0, 'Wandering Faerie Dragon', '', 0, 33, 33, 5037, 5075, 2680, 2763, 777, 50, 0, 1.11111, 1.14286, 0, 20, 5, 0, 0, 1, 42, 53, 0, 140, 1, 2000, 2000, 8, 0, 0, 0, 0, 0, 0, 0, 52.272, 71.874, 100, 2, 0, 741, 0, 741, 0, 0, 80, 0, 107, 0, 20821, 12098, 0, 0, 7410, 0, 50, 70, '', 1, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(92115, 0, 820, 0, 0, 0, 'Enraged Sharpclaw', '', 0, 33, 33, 2176, 2241, 0, 0, 562, 44, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 42, 53, 0, 122, 1, 2000, 2000, 1, 0, 0, 4, 0, 0, 0, 0, 40.8672, 56.1924, 100, 1, 1, 3811, 0, 3811, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 1, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');
(92116, 0, 9011, 0, 0, 0, 'Glade Creeper', NULL, 0, 32, 32, 2865, 2865, 0, 0, 1200, 91, 0, 1.55556, 1.14286, 0, 20, 5, 0, 1, 1, 129, 166, 0, 122, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 35.1008, 48.2636, 100, 4, 0, 4499, 0, 0, 0, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 0, 0, 0, 16384, 0, 0, 0, ''),
(92117, 0, 2451, 0, 0, 0, 'Deranged Ancient', NULL, 0, 34, 34, 4002, 4002, 350, 350, 1061, 91, 0, 1, 1.14286, 0, 20, 5, 0, 4, 1, 240, 281, 0, 122, 1, 1400, 1540, 1, 0, 0, 0, 0, 0, 0, 0, 38.192, 52.514, 100, 4, 0, 4030, 0, 0, 0, 240, 240, 240, 300, 240, 6909, 0, 0, 0, 0, 0, 43, 61, 'EventAI', 1, 3, 0, 0, 3, 0, 0, 0, 16384, 0, 0, 0, ''),
(92118, 0, 14594, 0, 0, 0, 'Disturbed Spirit', '', 0, 33, 33, 3018, 3330, 800, 800, 1234, 21, 0, 1, 1.14286, 0, 20, 5, 0, 1, 1, 293, 349, 0, 132, 1, 2000, 2000, 1, 64, 0, 0, 0, 0, 0, 0, 44.84, 61.655, 100, 6, 0, 6426, 6426, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64260, 0, 198, 264, '', 1, 1, 0, 0, 3, 0, 0, 0, 8388624, 0, 0, 0, ''),
(92119, 0, 10700, 0, 0, 0, 'Wallowing Spirit', '', 0, 35, 35, 3918, 4530, 1000, 1000, 1234, 21, 0, 1, 1.14286, 0, 20, 5, 0, 1, 1, 293, 349, 0, 132, 1, 2000, 2000, 1, 64, 0, 0, 0, 0, 0, 0, 44.84, 61.655, 100, 6, 0, 6426, 6426, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64260, 0, 198, 264, '', 1, 1, 0, 0, 3, 0, 0, 0, 8388624, 0, 0, 0, ''),
(92120, 0, 7970, 0, 0, 0, 'Roaming Felguard', NULL, 0, 35, 36, 3572, 5572, 6888, 8999, 1964, 90, 0, 1, 1.14286, 2, 20, 5, 0, 1, 1, 199, 256, 0, 156, 1, 2000, 2000, 1, 64, 0, 0, 0, 0, 0, 0, 45.7392, 62.8914, 100, 3, 0, 5760, 5760, 0, 0, 0, 0, 0, 0, 160, 0, 0, 0, 0, 0, 0, 261, 345, 'EventAI', 1, 1, 0, 0, 3, 5760, 0, 0, 0, 0, 0, 0, ''),
(92121, 0, 1913, 0, 0, 0, 'Mana Hunter', NULL, 0, 34, 36, 3572, 3572, 5888, 6000, 1964, 90, 0, 1, 1.14286, 2, 20, 5, 0, 1, 1, 199, 256, 0, 156, 1, 2000, 2000, 1, 64, 0, 0, 0, 0, 0, 0, 45.7392, 62.8914, 100, 3, 0, 5760, 5760, 0, 0, 0, 0, 0, 0, 160, 0, 0, 0, 0, 0, 0, 261, 345, 'EventAI', 1, 1, 0, 0, 3, 5760, 0, 0, 0, 0, 0, 0, ''),
(92122, 0, 2834, 0, 0, 0, 'Wicked Manipulator', NULL, 0, 33, 34, 2572, 5172, 5888, 6000, 1964, 90, 0, 1, 1.14286, 2, 20, 5, 0, 1, 1, 199, 256, 0, 156, 1, 2000, 2000, 1, 64, 0, 0, 0, 0, 0, 0, 45.7392, 62.8914, 100, 3, 0, 5760, 5760, 0, 0, 0, 0, 0, 0, 160, 0, 0, 0, 0, 0, 0, 261, 345, 'EventAI', 1, 1, 0, 0, 3, 5760, 0, 0, 0, 0, 0, 0, ''),
(92123, 0, 2017, 0, 0, 0, 'Blacktalon Trickster', NULL, 0, 33, 35, 3572, 4172, 5888, 6000, 1964, 90, 0, 1, 1.14286, 2, 20, 5, 0, 1, 1, 199, 256, 0, 156, 1, 2000, 2000, 1, 64, 0, 0, 0, 0, 0, 0, 45.7392, 62.8914, 100, 3, 0, 5760, 5760, 0, 0, 0, 0, 0, 0, 160, 0, 0, 0, 0, 0, 0, 261, 345, 'EventAI', 1, 1, 0, 0, 3, 5760, 0, 0, 0, 0, 0, 0, ''),
(92124, 0, 11334, 0, 0, 0, 'Blacktalon Felsworn', NULL, 0, 33, 36, 3572, 4172, 5888, 6000, 1964, 90, 0, 1, 1.14286, 2, 20, 5, 0, 1, 1, 199, 256, 0, 156, 1, 2000, 2000, 1, 64, 0, 0, 0, 0, 0, 0, 45.7392, 62.8914, 100, 3, 0, 5760, 5760, 0, 0, 0, 0, 0, 0, 160, 0, 0, 0, 0, 0, 0, 261, 345, 'EventAI', 1, 1, 0, 0, 3, 5760, 0, 0, 0, 0, 0, 0, ''),
(92125, 0, 11334, 0, 0, 0, 'Blacktalon Flamecaller', NULL, 0, 35, 35, 3572, 4172, 5888, 6000, 1964, 90, 0, 1, 1.14286, 2, 20, 5, 0, 1, 1, 199, 256, 0, 156, 1, 2000, 2000, 1, 64, 0, 0, 0, 0, 0, 0, 45.7392, 62.8914, 100, 3, 0, 5760, 5760, 0, 0, 0, 0, 0, 0, 160, 0, 0, 0, 0, 0, 0, 261, 345, 'EventAI', 1, 1, 0, 0, 3, 5760, 0, 0, 0, 0, 0, 0, ''),
(92126, 0, 2017, 0, 0, 0, 'Blacktalon Corruptor', NULL, 0, 35, 35, 3572, 4172, 5888, 6000, 1964, 90, 0, 1, 1.14286, 2, 20, 5, 0, 1, 1, 199, 256, 0, 156, 1, 2000, 2000, 1, 64, 0, 0, 0, 0, 0, 0, 45.7392, 62.8914, 100, 3, 0, 5760, 5760, 0, 0, 0, 0, 0, 0, 160, 0, 0, 0, 0, 0, 0, 261, 345, 'EventAI', 1, 1, 0, 0, 3, 5760, 0, 0, 0, 0, 0, 0, ''),
(92127, 0, 6351, 0, 0, 0, 'Twisted Ancient', NULL, 0, 35, 35, 3002, 3602, 350, 350, 1061, 91, 0, 1, 1.14286, 0, 20, 5, 0, 4, 1, 240, 281, 0, 122, 1, 1400, 1540, 1, 0, 0, 0, 0, 0, 0, 0, 38.192, 52.514, 100, 4, 0, 4030, 0, 0, 0, 240, 240, 240, 300, 240, 6909, 0, 0, 0, 0, 0, 43, 61, 'EventAI', 1, 3, 0, 0, 3, 0, 0, 0, 16384, 0, 0, 0, ''),
(92128, 0, 4408, 0, 0, 0, 'Warden Liferoot', NULL, 0, 35, 35, 8220, 8263, 1963, 2007, 1121, 28, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 45, 55, 0, 134, 1, 2000, 2000, 2, 32768, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 7, 0, 697, 697, 0, 0, 0, 0, 0, 0, 0, 8599, 11969, 8788, 0, 6970, 0, 51, 71, 'EventAI', 1, 3, 0, 0, 3, 697, 0, 0, 0, 0, 0, 0, ''),
(92129, 0, 4485, 0, 0, 0, 'Warden Treeshade', NULL, 0, 35, 35 8220, 8263, 1963, 2007, 1121, 28, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 45, 55, 0, 134, 1, 2000, 2000, 2, 32768, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 7, 0, 697, 697, 0, 0, 0, 0, 0, 0, 0, 8599, 11969, 8788, 0, 6970, 0, 51, 71, 'EventAI', 1, 3, 0, 0, 3, 697, 0, 0, 0, 0, 0, 0, '');

update creature_template set faction = 82, loot_id = 0 where entry between 92100 and 92150;

update creature_template set scale = 0.9 where entry = 92100;
update creature_template set scale = 0.8, rank = 1 where entry = 92101;
update creature_template set scale = 1 where entry = 92102;
update creature_template set scale = 1 where entry = 92103;
update creature_template set scale = 1, rank = 1 where entry = 92104;
update creature_template set scale = 1.3 where entry = 92105;
update creature_template set scale = 1.3 where entry = 92106;
update creature_template set scale = 1.7 where entry = 92107;
update creature_template set scale = 1.7 where entry = 92108;
update creature_template set scale = 1.7 where entry = 92109;
update creature_template set scale = 2, faction = 90 where entry = 92110;
update creature_template set scale = 1.5, faction = 90 where entry = 92111;
update creature_template set scale = 1.5, faction = 90, dmg_school = 2 where entry = 92112;
update creature_template set scale = 1, faction = 90, dmg_school = 5 where entry = 92113;
update creature_template set scale = 1, rank = 1 where entry = 92114;
update creature_template set scale = 1.2, rank = 1, faction = 44 where entry = 92115;
update creature_template set scale = 1.2, rank = 1, faction = 16 where entry = 92116;
update creature_template set scale = 1, rank = 1, faction = 16 where entry = 92117;
update creature_template set scale = 1.1, rank = 1, faction = 16 where entry = 92118;
update creature_template set scale = 1.2, rank = 1, faction = 16 where entry = 92119;
update creature_template set scale = 1.3, rank = 1, faction = 90 where entry = 92120;
update creature_template set scale = 1.0, rank = 1, faction = 90 where entry = 92121;
update creature_template set scale = 1.0, rank = 1, faction = 90 where entry = 92122;
update creature_template set scale = 1.3, rank = 1, faction = 90 where entry = 92123;
update creature_template set scale = 1.3, rank = 1, faction = 90 where entry = 92124;
update creature_template set scale = 1.4, rank = 1, faction = 90 where entry = 92125;
update creature_template set scale = 1.4, rank = 1, faction = 90 where entry = 92126;
update creature_template set scale = 1.0, rank = 1, faction = 96 where entry = 92127;

-- High Priestess A'lathea, ghost visual: 
replace into creature_template_addon values (92108, 0, 0, 0, 0, 0, 0, 0, 9617);

set @equip_template = 56001; set @weapon_1 = 2259; set @weapon_2 = 15543; set @creature = 92100;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0); 
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 56002; set @weapon_1 = 35; set @weapon_2 = 0; set @creature = 92101;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0); 
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 56003; set @weapon_1 = 10799; set @weapon_2 = 0; set @creature = 92102;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0); 
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 56004; set @weapon_1 = 5292; set @weapon_2 = 0; set @creature = 92103;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0); 
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 56005; set @weapon_1 = 3325; set @weapon_2 = 0; set @creature = 92104;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0); 
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 56006; set @weapon_1 = 15444; set @weapon_2 = 0; set @creature = 92105;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0); 
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 56007; set @weapon_1 = 15444; set @weapon_2 = 0; set @creature = 92106;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0); 
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 56008; set @weapon_1 = 10685; set @weapon_2 = 0; set @creature = 92107;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0); 
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 56009; set @weapon_1 = 9514; set @weapon_2 = 0; set @creature = 92108;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0); 
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 56010; set @weapon_1 = 9372; set @weapon_2 = 0; set @creature = 92110;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0); 
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 56011; set @weapon_1 = 15213; set @weapon_2 = 0; set @creature = 92120;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0); 
update creature_template set equipment_id = @equip_template where entry = @creature;
