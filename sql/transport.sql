replace into gameobject_template (entry, patch, type, displayId, name, faction, flags, size, data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, mingold, maxgold, phase_quest_id, script_name) values
-- Auberdin <> Stormwind
(181646, 0, 15, 7087, 'Elune\'s Blessing', 0, 40, 1, 967, 30, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into transports (guid, entry, name, period) values (9, 181646, 'Stormwind and Auberdine', 350818);

-- Delete deprecated Menethil Harbor <> Auberdin transport path:
delete from transport where quid = 4;
