-- Change drop rate for Broken Spear to 40%, quest starting item:

replace into creature_loot_template values (6072, 70027, 40, 7, 1, 1, 0, 0, 10); 
replace into creature_loot_template values (6073, 70027, 40, 7, 1, 1, 0, 0, 10); 
replace into creature_loot_template values (6115, 70027, 40, 7, 1, 1, 0, 0, 10); 
replace into creature_loot_template values (11697, 70027, 40, 7, 1, 1, 0, 0, 10); 

-- Make quest 'Deviate Hide' available for both factions:

update quest_template set requiredraces = 0 where entry = 1486; -- Deviate Hides

-- Fix mixed 'White Tiger's Cub' and 'Speedy' names:

update item_template set name = 'Speedy', description = 'Slow and steady wins the race.' where entry = 23002;
update item_template set name = 'White Tiger Cub', description = 'The thick snow near Dun Morogh acts as camouflage for snow cubs learning to hunt.', spellid_1 = 30152 where entry = 23712;

-- Misc. typo fixes:

update item_template set name = 'Smooth Ogre Brain' where entry = 81287;

update quest_template set details = 'So it\'s Mildred that asking you to help? Of course, I\'ll help! I was always fond of the Stonefields.\n\nPumpkins, huh? Well, the only gnolls I know that camp not so far away from here is the Riverpaw Gnolls. You could say it\'s the leftovers of once mighty gnoll known to whole Elwynn – Fedfennel.\n\nMost likely he\'s been eaten by his own rivals. I digress however. Most likely it\'s further up to the north from Stone Cairn Lake. I heard that even our brave guards dare not to go that far in the forest. Perhaps, while you\'re at the searching campaign for stolen pumpkins, you could help the Eastvale Logging Camp as well?\n\nThese gnolls won\'t be willing to part that easily with what they\'ve stolen, so I assume you\'ll have to claw it out of their dead cold paws. Do us all good and cull out s\'more of these bastards while there? One brigade less and we\'ll have a week of sound sleep by nights. I bet Supervisor Raelen will be glad to hear of your deeds and most certainly will have something to reward you with.' where entry = 60042;

-- Children's week original timing:

replace into game_event (entry, start_time, end_time, occurence, length, holiday, description, hardcoded, disabled, patch_min, patch_max) values (10, '2020-05-01 20:00:00', '2030-12-31 22:59:59', 525600, 10080, 201, 'Children''s Week', 0, 0, 2, 10);