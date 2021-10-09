replace into gameobject_template (entry, patch, type, displayId, name, faction, flags, size, data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, mingold, maxgold, phase_quest_id, script_name) values
-- Auberdin <> Stormwind
(181646, 0, 15, 7087, 'Elune\'s Blessing', 0, 40, 1, 967, 30, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
-- Orgrimmar <> Thunder Bluff
(190549, 0, 15, 3031, 'The Zephyr', 0, 40, 1, 1221, 30, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
-- Sparkwater Port <> Revantusk Village
(190550, 0, 15, 3015, 'The Sparkrunner', 0, 60, 1, 1500, 30, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into transports (guid, entry, name, period) values (9, 181646, 'Stormwind and Auberdine', 350818);
replace into transports (guid, entry, name, period) values (10, 190549, 'Orgrimmar and Thunder Bluff', 350818);
replace into transports (guid, entry, name, period) values (11, 190550, 'Sparkwater Port and Revantusk Village', 150818); -- WIP

-- Delete deprecated Menethil Harbor <> Auberdin transport path:
delete from transports where guid = 4;