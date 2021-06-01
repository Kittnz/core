-- Change drop rate for Broken Spear to 40%, quest starting item:

replace into creature_loot_template values (6072, 70027, 40, 7, 1, 1, 0, 0, 10); 
replace into creature_loot_template values (6073, 70027, 40, 7, 1, 1, 0, 0, 10); 
replace into creature_loot_template values (6115, 70027, 40, 7, 1, 1, 0, 0, 10); 
replace into creature_loot_template values (11697, 70027, 40, 7, 1, 1, 0, 0, 10); 

-- Make quest 'Deviate Hide' available for both factions:

update quest_template set requiredraces = 0 where entry = 1486; -- Deviate Hidides

-- Fix mixed 'White Tiger's Cub' and 'Speedy' names:

update item_template set name = 'Speedy', description = 'Slow and steady wins the race.' where entry = 23002;
update item_template set name = 'White Tiger Cub', description = 'The thick snow near Dun Morogh acts as camouflage for snow cubs learning to hunt.', spellid_1 = 30152 where entry = 23712;

-- Misc. typo fixes:

update item_template set name = 'Smooth Ogre Brain' where entry = 81287;

update quest_template set details = 'So it\'s Mildred that asking you to help? Of course, I\'ll help! I was always fond of the Stonefields.\n\nPumpkins, huh? Well, the only gnolls I know that camp not so far away from here is the Riverpaw Gnolls. You could say it\'s the leftovers of once mighty gnoll known to whole Elwynn – Fedfennel.\n\nMost likely he\'s been eaten by his own rivals. I digress however. Most likely it\'s further up to the north from Stone Cairn Lake. I heard that even our brave guards dare not to go that far in the forest. Perhaps, while you\'re at the searching campaign for stolen pumpkins, you could help the Eastvale Logging Camp as well?\n\nThese gnolls won\'t be willing to part that easily with what they\'ve stolen, so I assume you\'ll have to claw it out of their dead cold paws. Do us all good and cull out s\'more of these bastards while there? One brigade less and we\'ll have a week of sound sleep by nights. I bet Supervisor Raelen will be glad to hear of your deeds and most certainly will have something to reward you with.' where entry = 60042;

-- Children's week original timing:

replace into game_event (entry, start_time, end_time, occurence, length, holiday, description, hardcoded, disabled, patch_min, patch_max) values (10, '2020-05-01 20:00:00', '2030-12-31 22:59:59', 525600, 10080, 201, 'Children''s Week', 0, 0, 2, 10);

-- Some new Kazgrim's items:

replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values 
(11496, 70050, 6, 5, 1, 1), -- Immol’thar
(11487, 70051, 6, 5, 1, 1), -- Magister Kalendris
(14506, 70052, 6, 5, 1, 1), -- Lord Hel'nurath
(11488, 70053, 6, 5, 1, 1), -- Illyana Ravenoak
(11489, 70054, 6, 5, 1, 1), -- Tendris Warpwood
(11496, 70055, 6, 5, 1, 1), -- Immol’thar
(11486, 70056, 6, 5, 1, 1), -- Prince Tortheldrin
(10813, 70057, 6, 5, 1, 1), -- Balnazzar
(10997, 70058, 6, 5, 1, 1), -- Cannon Master Willey
(10435, 70059, 6, 5, 1, 1), -- Magistrate Barthilas
(10393, 70060, 6, 5, 1, 1), -- Skul
(10811, 70062, 6, 5, 1, 1), -- Archivist Galford
(11032, 70063, 6, 5, 1, 1), -- Malor the Zealous
(10516, 70064, 6, 5, 1, 1); -- The Unforgiven

replace into `item_template` values 

(70050, 0, 4, 4, 'Shoulderplates of Misfortune', 'Less lucky than  a gnome\'s shrunken head.', 50158, 3, 0, 0, 91323, 29712, 3, -1, -1, 63, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 4, 16, 3, 5, 0, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 617, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, -1, 0, -1, 0, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 100, 0, 0, 0, 0, 65, 0, 0, 0, 0, 1, NULL),
(70051, 0, 4, 4, 'Gauntlets of Wrangling', 'D\'oh!', 50144, 3, 0, 0, 83241, 18033, 10, -1, -1, 63, 55, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 4, 12, 3, 7, 0, 25, 0, -5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 489, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, -1, 0, -1, 0, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 55, 0, 0, 0, 0, 65, 0, 0, 0, 0, 1, NULL),
(70052, 0, 4, 4, 'Skorgrim\'s Lost Belt', 'Better help him find it, lad.', 50143, 3, 0, 0, 85671, 14586, 6, -1, -1, 63, 57, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 10, 0, 11, 0, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 550, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, -1, 0, -1, 0, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 55, 0, 0, 0, 0, 65, 0, 0, 0, 0, 1, NULL),
(70053, 0, 4, 4, 'Rotworm Legplates', 'Mildy uncomfortable, but fashionable nonetheless.', 50142, 3, 0, 0, 67412, 34212, 7, -1, -1, 63, 59, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 11, 7, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 648, 0, 0, 10, 0, 5, 0, 0, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 115, 0, 0, 0, 0, 65, 0, 0, 0, 0, 1, NULL),
(70054, 0, 4, 4, 'Wyrmheart Boots', 'Big enough to fit a dragon heart.', 50141, 3, 0, 0, 35612, 15684, 8, -1, -1, 63, 59, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 10, 6, 17, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 590, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 70, 0, 0, 0, 0, 65, 0, 0, 0, 0, 1, NULL),
(70055, 0, 4, 4, 'Breastplate of Forgotten Valor', 'Forgotten, but not lost.', 50140, 3, 0, 1, 84123, 27511, 5, -1, -1, 63, 58, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 23, 0, 12, 0, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 861, 0, 0, 16, 3, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 150, 0, 0, 0, 0, 65, 0, 0, 0, 0, 1, NULL),
(70056, 0, 4, 4, 'Horned Helm of Ancient Kings', 'A relic of royal proportions.', 40201, 3, 0, 1, 84523, 24512, 1, -1, -1, 63, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 16, 4, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 750, 0, 0, 8, 0, 0, 0, 0, 1, 0, 0, -1, 0, -1, 0, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 85, 0, 0, 0, 0, 65, 0, 0, 0, 0, 1, NULL),
(70057, 0, 4, 4, 'Crown of Sacrifice', '', 40194, 3, 0, 1, 84523, 24512, 1, -1, -1, 63, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 26, 0, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 754, 0, 0, 0, 0, 10, 10, 18098, 1, 0, 0, -1, 0, -1, 0, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 85, 0, 0, 0, 0, 65, 0, 0, 0, 0, 1, NULL),
(70058, 0, 4, 4, 'Breastplate of Fortitutde', '', 50130, 3, 0, 1, 84123, 27511, 5, -1, -1, 63, 58, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 28, 4, 22, 7, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 835, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, -1, 0, -1, 0, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 150, 0, 0, 0, 0, 65, 0, 0, 0, 0, 1, NULL),
(70059, 0, 4, 4, 'Sabatons of Protection', '', 50131, 3, 0, 0, 35612, 15684, 8, -1, -1, 63, 59, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 15, 0, 17, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 578, 0, 0, 0, 0, 5, 10, 0, 0, 0, 0, -1, 0, -1, 14097, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 70, 0, 0, 0, 0, 65, 0, 0, 0, 0, 1, NULL),
(70060, 0, 4, 4, 'Greaves of Servitude', '', 50132, 3, 0, 0, 67412, 34212, 7, -1, -1, 63, 59, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 24, 0, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 642, 0, 0, 0, 0, 15, 5, 18087, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 115, 0, 0, 0, 0, 65, 0, 0, 0, 0, 1, NULL),
(70062, 0, 4, 4, 'Gauntlets of Force', '', 50134, 3, 0, 0, 83241, 18033, 10, -1, -1, 63, 55, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 12, 0, 11, 0, 17, 0, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 483, 0, 0, 0, 0, 15, 5, 4720, 1, 0, 0, -1, 0, -1, 0, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 55, 0, 0, 0, 0, 65, 0, 0, 0, 0, 1, NULL),
(70063, 0, 4, 4, 'Girdle of Hope', '', 50133, 3, 0, 0, 85671, 14586, 6, -1, -1, 63, 57, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 24, 0, 11, 0, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 416, 0, 0, 0, 0, 10, 5, 12981, 1, 0, 0, -1, 0, -1, 0, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 55, 0, 0, 0, 0, 65, 0, 0, 0, 0, 1, NULL),
(70064, 0, 4, 4, 'Epaulets of Courage', '', 50157, 3, 0, 0, 91323, 29712, 3, -1, -1, 63, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 4, 18, 6, 9, 0, 7, 0, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 610, 0, 0, 0, 0, 5, 15, 0, 1, 0, 0, -1, 0, -1, 0, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 100, 0, 0, 0, 0, 65, 0, 0, 0, 0, 1, NULL);
