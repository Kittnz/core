-- Gnome hunters are missing the gnome racial passive Arcane Resistance.
replace into playercreateinfo_spell values (7, 3, 20592, 0, 5875, 'Arcane Resistance');
-- Quest Mastering the Arcane not available for trolls.
update quest_template set requiredraces = 434 where entry in (80311, 80312);
-- NPC periodic yell doubled (Tansy Sparkpen):
delete from creature_ai_scripts where id = 50760;
replace into creature_ai_scripts (id, delay, command, datalong, datalong2, datalong3, datalong4, target_param1, target_param2, target_type, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) values (50760, 500, 0, 1, 0, 0, 0, 0, 0, 0, 0, 90260, 0, 0, 0, 0, 0, 0, 0, 0, 'Tansy Sparkpen, speaking.');
-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/346
delete from gameobject_template where entry in (142345, 142475, 142476, 142696);
replace into gameobject_template (entry, patch, type, displayId, name, faction, flags, size, data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, mingold, maxgold, phase_quest_id, script_name) VALUES 
(142345, 0, 2, 2091, 'Matrix Punchograph 3005-A', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'matrix_punchograph'),
(142475, 0, 2, 2091, 'Matrix Punchograph 3005-B', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'matrix_punchograph'),
(142476, 0, 2, 2091, 'Matrix Punchograph 3005-C', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'matrix_punchograph'),
(142696, 0, 2, 2091, 'Matrix Punchograph 3005-D', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'matrix_punchograph');