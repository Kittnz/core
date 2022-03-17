-- Add Quest End Script For Bloodpetal Sprouts
UPDATE quest_template SET CompleteScript  =  4144 where entry  =  4144;

-- GameObjects spawned during script.
replace into gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, state, animprogress) values
(109, 165559, 1, -6214.27, -1060, -197.907, 1.50098, 0, 0, 0.681998, 0.731354, -1, -1, 1, 100),
(580, 165559, 1, -6213.04, -1058.92, -197.907, 3.78737, 0, 0, -0.948323, 0.31706, -1, -1, 1, 100),
(734, 165559, 1, -6211.91, -1060.19, -197.907, 0.872664, 0, 0, 0.422618, 0.90608, -1, -1, 1, 100);

-- Generic script for Creature Bloodpetal Pest (Entry: 9157 Guid: 3291)
delete from generic_scripts where id = 915714;
replace into generic_scripts (id, delay, command, datalong, datalong2, datalong3, datalong4, target_param1, target_param2, target_type, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) values
(915714, 0, 3, 0, 6311, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, -6190.75, -1100.26, -215.414, 0, 0, 'Bloodpetal Sprouts: Bloodpetal Pest - Move'),
(915714, 8, 20, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 0, 'Bloodpetal Sprouts: Bloodpetal Pest - Set Movement Type');

-- Generic script for Creature Bloodpetal Pest (Entry: 9157 Guid: 3292)
delete from generic_scripts where id = 915702;
replace into generic_scripts (id, delay, command, datalong, datalong2, datalong3, datalong4, target_param1, target_param2, target_type, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) values
(915702, 2, 3, 0, 6515, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, -6189.73, -1099.79, -215.164, 0, 0, 'Bloodpetal Sprouts: Bloodpetal Pest - Move'),
(915702, 8, 20, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 0, 'Bloodpetal Sprouts: Bloodpetal Pest - Set Movement Type');

-- Generic script for Creature Bloodpetal Pest (Entry: 9157 Guid: 3293)
delete from generic_scripts where id = 915703;
replace into generic_scripts (id, delay, command, datalong, datalong2, datalong3, datalong4, target_param1, target_param2, target_type, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) values
(915703, 2, 3, 0, 6052, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, -6191.04, -1100.31, -215.509, 0, 0, 'Bloodpetal Sprouts: Bloodpetal Pest - Move'),
(915703, 8, 20, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 0, 'Bloodpetal Sprouts: Bloodpetal Pest - Set Movement Type');

-- Generic script for Creature Bloodpetal Pest (Entry: 9157 Guid: 3294)
delete from generic_scripts where id = 915704;
replace into generic_scripts (id, delay, command, datalong, datalong2, datalong3, datalong4, target_param1, target_param2, target_type, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) values
(915704, 2, 3, 0, 6246, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, -6190.45, -1100.11, -215.509, 0, 0, 'Bloodpetal Sprouts: Bloodpetal Pest - Move'),
(915704, 8, 20, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 0, 'Bloodpetal Sprouts: Bloodpetal Pest - Set Movement Type');

-- Generic script for Creature Bloodpetal Pest (Entry: 9157 Guid: 3295)
delete from generic_scripts where id = 915705;
replace into generic_scripts (id, delay, command, datalong, datalong2, datalong3, datalong4, target_param1, target_param2, target_type, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) values
(915705, 1, 3, 0, 6898, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, -6191.08, -1100.42, -215.472, 0, 0, 'Bloodpetal Sprouts: Bloodpetal Pest - Move'),
(915705, 8, 20, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 0, 'Bloodpetal Sprouts: Bloodpetal Pest - Set Movement Type');

-- Generic script for Creature Bloodpetal Pest (Entry: 9157 Guid: 3296)
delete from generic_scripts where id = 915706;
replace into generic_scripts (id, delay, command, datalong, datalong2, datalong3, datalong4, target_param1, target_param2, target_type, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) values
(915706, 2, 3, 0, 6698, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, -6191.56, -1100.69, -215.731, 0, 0, 'Bloodpetal Sprouts: Bloodpetal Pest - Move'),
(915706, 8, 20, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 0, 'Bloodpetal Sprouts: Bloodpetal Pest - Set Movement Type');

-- Generic script for Creature Bloodpetal Pest (Entry: 9157 Guid: 3297)
delete from generic_scripts where id = 915707;
replace into generic_scripts (id, delay, command, datalong, datalong2, datalong3, datalong4, target_param1, target_param2, target_type, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) values
(915707, 1, 3, 0, 6962, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, -6191.01, -1100.36, -215.509, 0, 0, 'Bloodpetal Sprouts: Bloodpetal Pest - Move'),
(915707, 8, 20, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 0, 'Bloodpetal Sprouts: Bloodpetal Pest - Set Movement Type');

-- Generic script for Creature Bloodpetal Pest (Entry: 9157 Guid: 3298)
delete from generic_scripts where id = 915708;
replace into generic_scripts (id, delay, command, datalong, datalong2, datalong3, datalong4, target_param1, target_param2, target_type, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) values
(915708, 1, 3, 0, 7171, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, -6190.59, -1100.21, -215.396, 0, 0, 'Bloodpetal Sprouts: Bloodpetal Pest - Move'),
(915708, 8, 20, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 0, 'Bloodpetal Sprouts: Bloodpetal Pest - Set Movement Type');

-- Generic script for Creature Bloodpetal Pest (Entry: 9157 Guid: 3299)
delete from generic_scripts where id = 915709;
replace into generic_scripts (id, delay, command, datalong, datalong2, datalong3, datalong4, target_param1, target_param2, target_type, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) values
(915709, 1, 3, 0, 6918, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, -6190.19, -1100.06, -215.248, 0, 0, 'Bloodpetal Sprouts: Bloodpetal Pest - Move'),
(915709, 8, 20, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 0, 'Bloodpetal Sprouts: Bloodpetal Pest - Set Movement Type');

-- Generic script for Creature Bloodpetal Pest (Entry: 9157 Guid: 300)
delete from generic_scripts where id = 915710;
replace into generic_scripts (id, delay, command, datalong, datalong2, datalong3, datalong4, target_param1, target_param2, target_type, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) values
(915710, 1, 3, 0, 6290, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, -6190.61, -1100.19, -215.391, 0, 0, 'Bloodpetal Sprouts: Bloodpetal Pest - Move'),
(915710, 8, 20, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 0, 'Bloodpetal Sprouts: Bloodpetal Pest - Set Movement Type');

-- Generic script for Creature Bloodpetal Pest (Entry: 9157 Guid: 301)
delete from generic_scripts where id = 915711;
replace into generic_scripts (id, delay, command, datalong, datalong2, datalong3, datalong4, target_param1, target_param2, target_type, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) values
(915711, 2, 3, 0, 6447, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, -6191.2, -1100.49, -215.509, 0, 0, 'Bloodpetal Sprouts: Bloodpetal Pest - Move'),
(915711, 8, 20, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 0, 'Bloodpetal Sprouts: Bloodpetal Pest - Set Movement Type');

-- Generic script for Creature Bloodpetal Pest (Entry: 9157 Guid: 302)
delete from generic_scripts where id = 915712;
replace into generic_scripts (id, delay, command, datalong, datalong2, datalong3, datalong4, target_param1, target_param2, target_type, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) values
(915712, 2, 3, 0, 7151, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, -6190.25, -1100.06, -215.336, 0, 0, 'Bloodpetal Sprouts: Bloodpetal Pest - Move'),
(915712, 8, 20, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 0, 'Bloodpetal Sprouts: Bloodpetal Pest - Set Movement Type');

-- Generic script for Creature Bloodpetal Pest (Entry: 9157 Guid: 303)
delete from generic_scripts where id = 915713;
replace into generic_scripts (id, delay, command, datalong, datalong2, datalong3, datalong4, target_param1, target_param2, target_type, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) values
(915713, 1, 3, 0, 5839, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, -6190.16, -1100.02, -215.33, 0, 0, 'Bloodpetal Sprouts: Bloodpetal Pest - Move'),
(915713, 8, 20, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 0, 'Bloodpetal Sprouts: Bloodpetal Pest - Set Movement Type');

-- Main script
delete from quest_end_scripts where id = 4144;
replace into quest_end_scripts (id, delay, command, datalong, datalong2, datalong3, datalong4, target_param1, target_param2, target_type, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) values
-- (4144, 0, 4, 147, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bloodpetal Sprouts: Muigin - Remove Npc Flags'),
-- (4144, 0, 4, 46, 256, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bloodpetal Sprouts: Muigin - Add Unit Flags'),
(4144, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4966, 0, 0, 0, 0, 0, 0, 0, 0, 'Bloodpetal Sprouts: Muigin - Say Text'),
(4144, 0, 9, 109, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bloodpetal Sprouts: Respawn GameObject Muigin\'s Sprout'),
(4144, 0, 9, 580, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bloodpetal Sprouts: Respawn GameObject Muigin\'s Sprout'),
(4144, 0, 9, 734, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bloodpetal Sprouts: Respawn GameObject Muigin\'s Sprout'),
(4144, 2, 3, 0, 3154, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, -6211.06, -1059.66, -197.859, 0, 0, 'Bloodpetal Sprouts: Muigin - Move'),
(4144, 7, 1, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bloodpetal Sprouts: Muigin - Emote OneShotKneel'),
(4144, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4967, 0, 0, 0, 0, 0, 0, 0, 0, 'Bloodpetal Sprouts: Muigin - Say Text'),
(4144, 11, 10, 9157, 660000, 0, 0, 0, 0, 0, 0, 0, 915713, -1, 10, -6206.1, -1061.06, -198.007, 3.35103, 0, 'Bloodpetal Sprouts: Summon Creature Bloodpetal Pest'),
(4144, 11, 10, 9157, 660000, 0, 0, 0, 0, 0, 0, 0, 915712, -1, 10, -6211.07, -1051.85, -197.848, 1.32645, 0, 'Bloodpetal Sprouts: Summon Creature Bloodpetal Pest'),
(4144, 11, 10, 9157, 660000, 0, 0, 0, 0, 0, 0, 0, 915711, -1, 10, -6214.73, -1060.96, -197.824, 5.93412, 0, 'Bloodpetal Sprouts: Summon Creature Bloodpetal Pest'),
(4144, 11, 10, 9157, 660000, 0, 0, 0, 0, 0, 0, 0, 915710, -1, 10, -6210.42, -1059.87, -197.824, 3.92699, 0, 'Bloodpetal Sprouts: Summon Creature Bloodpetal Pest'),
(4144, 11, 10, 9157, 660000, 0, 0, 0, 0, 0, 0, 0, 915709, -1, 10, -6210.1, -1053.95, -197.824, 4.66003, 0, 'Bloodpetal Sprouts: Summon Creature Bloodpetal Pest'),
(4144, 11, 10, 9157, 660000, 0, 0, 0, 0, 0, 0, 0, 915708, -1, 10, -6213.5, -1053.16, -197.888, 4.71239, 0, 'Bloodpetal Sprouts: Summon Creature Bloodpetal Pest'),
(4144, 11, 10, 9157, 660000, 0, 0, 0, 0, 0, 0, 0, 915707, -1, 10, -6215.33, -1056.71, -197.832, 3.00197, 0, 'Bloodpetal Sprouts: Summon Creature Bloodpetal Pest'),
(4144, 11, 10, 9157, 660000, 0, 0, 0, 0, 0, 0, 0, 915706, -1, 10, -6218.25, -1061.03, -197.801, 0.471239, 0, 'Bloodpetal Sprouts: Summon Creature Bloodpetal Pest'),
(4144, 11, 10, 9157, 660000, 0, 0, 0, 0, 0, 0, 0, 915705, -1, 10, -6215.8, -1057.54, -197.824, 3.94444, 0, 'Bloodpetal Sprouts: Summon Creature Bloodpetal Pest'),
(4144, 11, 10, 9157, 660000, 0, 0, 0, 0, 0, 0, 0, 915704, -1, 10, -6209.61, -1059.41, -197.824, 2.54818, 0, 'Bloodpetal Sprouts: Summon Creature Bloodpetal Pest'),
(4144, 11, 10, 9157, 660000, 0, 0, 0, 0, 0, 0, 0, 915703, -1, 10, -6211.87, -1062.68, -197.897, 4.11898, 0, 'Bloodpetal Sprouts: Summon Creature Bloodpetal Pest'),
(4144, 11, 10, 9157, 660000, 0, 0, 0, 0, 0, 0, 0, 915702, -1, 10, -6205.67, -1054.51, -197.714, 4.38078, 0, 'Bloodpetal Sprouts: Summon Creature Bloodpetal Pest'),
(4144, 11, 10, 9157, 660000, 0, 0, 0, 0, 0, 0, 0, 915714, -1, 10, -6211.49, -1060.26, -197.824, 0.977384, 0, 'Bloodpetal Sprouts: Summon Creature Bloodpetal Pest'),
(4144, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4968, 0, 0, 0, 0, 0, 0, 0, 0, 'Bloodpetal Sprouts: Muigin - Say Text'),
(4144, 15, 1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bloodpetal Sprouts: Muigin - Emote OneShotCheer'),
(4144, 19, 1, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bloodpetal Sprouts: Muigin - Emote OneShotLaugh'),
(4144, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4969, 0, 0, 0, 0, 0, 0, 0, 0, 'Bloodpetal Sprouts: Muigin - Say Text'),
(4144, 22, 3, 0, 986, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, -6204.39, -1055.46, -197.712, 0, 0, 'Bloodpetal Sprouts: Muigin - Move'),
(4144, 23, 35, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.86947, 0, 'Bloodpetal Sprouts: Muigin - Set Orientation'),
-- (4144, 25, 4, 147, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bloodpetal Sprouts: Muigin - Add Npc Flags'),
-- (4144, 25, 4, 46, 256, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bloodpetal Sprouts: Muigin - Remove Unit Flags');