update creature_template set npc_flags = 2 where entry = 1752; -- Calendra Questgiver Flag

replace into creature_template (entry, display_id1, name, subname, level_min, level_max, health_min, health_max, faction, script_name, scale) values
(6029, 4729, 'Test Morph #1', '', 1, 1, 64, 64, 35, '', 1),(6036, 18043, 'Test Morph #1', '', 1, 1, 64, 64, 35, '', 1);

replace into creature_template (entry, display_id1, name, subname, level_min, level_max, health_min, health_max, faction, script_name, scale, npc_flags, rank) values
(80000, 15004, 'High Elf Ranger', '', 9, 10, 350, 640, 269, '', 1, 2, 2),
(80001, 6630, 'Arcanist Anu\'delen', '', 60, 60, 3350, 4640, 269, '', 1, 2, 2),
(80002, 6631, 'Ashylah Starcaller', '', 60, 60, 3350, 4640, 269, '', 1, 2, 1);
