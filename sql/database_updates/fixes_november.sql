-- Gnome hunters are missing the gnome racial passive Arcane Resistance.
replace into playercreateinfo_spell values (7, 3, 20592, 0, 5875, 'Arcane Resistance');
-- Quest Mastering the Arcane not available for trolls.
update quest_template set requiredraces = 434 where entry in (80311, 80312);
-- NPC periodic yell doubled (Tansy Sparkpen):
delete from creature_ai_scripts where id = 50760;
replace into creature_ai_scripts (id, delay, command, datalong, datalong2, datalong3, datalong4, target_param1, target_param2, target_type, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) values (50760, 500, 0, 1, 0, 0, 0, 0, 0, 0, 0, 90260, 0, 0, 0, 0, 0, 0, 0, 0, 'Tansy Sparkpen, speaking.');
