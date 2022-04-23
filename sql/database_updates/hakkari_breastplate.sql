-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1318
delete from creature_loot_template where item = 10781 and entry = 10819;

replace into creature_loot_template values 
(1189, 10781, 0.02, 0, 1, 1, 0),
(1189, 10782, 0.02, 0, 1, 1, 0),
(5226, 10780, 0.2, 0, 1, 1, 0),
(5226, 10781, 0.2, 0, 1, 1, 0),
(5226, 10782, 0.2, 0, 1, 1, 0),
(5228, 10780, 0.04, 0, 1, 1, 0),
(5228, 10781, 0.045, 0, 1, 1, 0),
(5228, 10782, 0.045, 0, 1, 1, 0),
(5259, 10780, 0.02, 0, 1, 1, 0),
(5259, 10781, 0.02, 0, 1, 1, 0),
(5259, 10782, 0.02, 0, 1, 1, 0),
(5267, 10780, 0.02, 0, 1, 1, 0),
(5267, 10781, 0.02, 0, 1, 1, 0),
(5267, 10782, 0.02, 0, 1, 1, 0),
(5270, 10780, 0.02, 0, 1, 1, 0),
(5270, 10781, 0.02, 0, 1, 1, 0),
(5270, 10782, 0.02, 0, 1, 1, 0),
(5280, 10780, 0.02, 0, 1, 1, 0),
(5280, 10781, 0.02, 0, 1, 1, 0),
(5280, 10782, 0.02, 0, 1, 1, 0),
(6514, 10781, 0.02, 0, 1, 1, 0),
(6514, 10782, 0.02, 0, 1, 1, 0),
(7115, 10780, 0.02, 0, 1, 1, 0),
(7115, 10781, 0.02, 0, 1, 1, 0),
(7115, 10782, 0.02, 0, 1, 1, 0),
(8311, 10780, 0.02, 0, 1, 1, 0),
(8311, 10781, 0.02, 0, 1, 1, 0),
(8311, 10782, 0.02, 0, 1, 1, 0),
(8319, 10780, 0.02, 0, 1, 1, 0),
(8319, 10781, 0.02, 0, 1, 1, 0),
(8319, 10782, 0.02, 0, 1, 1, 0),
(8336, 10780, 0.02, 0, 1, 1, 0),
(8336, 10781, 0.02, 0, 1, 1, 0),
(8336, 10782, 0.02, 0, 1, 1, 0),
(8384, 10780, 0.12, 0, 1, 1, 0),
(8384, 10781, 0.12, 0, 1, 1, 0),
(8384, 10782, 0.12, 0, 1, 1, 0),
(8438, 10780, 0.02, 0, 1, 1, 0),
(8438, 10781, 0.02, 0, 1, 1, 0),
(8438, 10782, 0.02, 0, 1, 1, 0);