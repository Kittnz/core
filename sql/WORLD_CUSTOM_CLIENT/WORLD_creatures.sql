update creature_template set npc_flags = 2 where entry = 1752; -- Calendra Questgiver Flag

replace into creature_template (entry, display_id1, name, subname, level_min, level_max, health_min, health_max, faction, script_name, scale) values
(6029, 4729, 'Text Morph #1', '', 1, 1, 64, 64, 35, '', 1),
(6036, 18043, 'Text Morph #1', '', 1, 1, 64, 64, 35, '', 1);