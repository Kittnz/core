update creature_template set npc_flags = 2 where entry = 1752; -- Calendra Questgiver Flag
update creature_template set script_name = 'npc_caledra' where entry = 1752; -- Calendra Questgiver Flag

replace into creature_template (entry, display_id1, name, subname, level_min, level_max, health_min, health_max, faction, script_name, scale) values
(6029, 4729, 'Test Morph #1', '', 1, 1, 64, 64, 35, '', 1),
(6036, 18043, 'Test Morph #1', '', 1, 1, 64, 64, 35, '', 1),
(40000, 18177, 'Fox Kit', '', 1, 1, 64, 64, 35, '', 1),
(40001, 18143, 'Spectral Tiger ', '', 1, 1, 64, 64, 35, '', 1),
(40002, 10034, 'Dryad', '', 1, 1, 64, 64, 35, '', 1),
(40003, 150, 'Keeper of the Grove', '', 1, 1, 64, 64, 35, '', 1),
(40004, 18008, 'Fox', '', 1, 1, 64, 64, 35, '', 1),
(40005, 18094, 'Swift Rooster', '', 1, 1, 64, 64, 35, '', 1),
(40006, 18093, 'White Riding Bear', '', 1, 1, 64, 64, 35, '', 1),
(40007, 18085, 'Black Riding Bear', '', 1, 1, 64, 64, 35, '', 1),
(40008, 18089, 'Ash Riding Bear', '', 1, 1, 64, 64, 35, '', 1),
(40009, 18091, 'Dark Brown Riding Bear', '', 1, 1, 64, 64, 35, '', 1),
(40010, 18092, 'Snowy Riding Bear', '', 1, 1, 64, 64, 35, '', 1),
(40011, 18090, 'Brown Riding Bear', '', 1, 1, 64, 64, 35, '', 1),
(40012, 18073, 'Enchanted Broom', '', 1, 1, 64, 64, 35, '', 1),
(40013, 18176, 'Thalassian Tender', '', 1, 1, 64, 64, 35, '', 1),
(40014, 18178, 'Dryad Fawn', '', 1, 1, 64, 64, 35, '', 1),
(40015, 18167, 'Thalassian Warhorse', '', 1, 1, 64, 64, 35, '', 1),
(40016, 18168, 'Argent Warhorse', '', 1, 1, 64, 64, 35, '', 1),
(40017, 18169, 'Thalassian Charger', '', 1, 1, 64, 64, 35, '', 1),
(40018, 18170, 'Argent Charger ', '', 1, 1, 64, 64, 35, '', 1),
(40019, 18175, 'Dragonhawk Hatchling', '', 1, 1, 64, 64, 35, '', 1),
(40020, 18003, 'Thalassian Child', '', 1, 1, 64, 64, 35, '', 1),
(40021, 18098, 'Cheeky Monkey', '', 1, 1, 64, 64, 35, '', 1),
(41000, 19000, 'Tamamo', '', 1, 1, 64, 64, 35, '', 1);

replace into creature_template (entry, display_id1, name, subname, level_min, level_max, health_min, health_max, faction, script_name, scale, npc_flags, rank) values
(80000, 10381, 'High Elf Ranger', '', 9, 10, 350, 640, 269, '', 1, 2, 2),
(80001, 6630, 'Arcanist Anu\'delen', '', 60, 60, 3350, 4640, 269, '', 1, 2, 2),
(80002, 6631, 'Ashylah Starcaller', '', 60, 60, 3350, 4640, 269, '', 1, 2, 1),
(80003, 262, 'Caledra Gossip Trigger 1', '', 60, 60, 3350, 4640, 269, '', 1, 2, 1);