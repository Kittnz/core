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
-- Gubber Blump will teach you fishing even if you already know:
delete from conditions where condition_entry in (10219, 10216, 10218);
replace into conditions (condition_entry, type, value1, value2, value3, value4, flags) values
(10216, 29, 356, 1, 0, 0, 0),(10218, 8, 1141, 0, 0, 0, 0),(10219, -1, 10216, 10218, 0, 0, 0);
update gossip_scripts set condition_id = 10219 where id = 256200;
-- Remove max.level values from Drakin Swiftaxe's quests:
update quest_template set maxlevel = 0 where entry in (60071, 60072, 60073, 60074);
-- Alliance PvP mounts are usable by horde:
update item_template set name = 'Black War Steed' where entry = 18241;
update item_template set name = 'Black War Tiger' where entry = 18242;
update item_template set name = 'Black War Wolf' where entry = 18245;
update item_template set name = 'Black War Kodo' where entry = 18247;
update item_template set name = 'Black War Raptor' where entry = 18246;
update item_template set allowable_race = 589 where entry in (18241, 18243, 18244, 18242, 19030);