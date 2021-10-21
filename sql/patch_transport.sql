-- Delete deprecated Menethil Harbor <> Auberdin transport path:
delete from transports where guid = 4;

replace into gameobject_template (entry, patch, type, displayId, name, faction, flags, size, data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, mingold, maxgold, phase_quest_id, script_name) values
-- Auberdin <> Stormwind
(181646, 0, 15, 7087, 'Elune\'s Blessing', 0, 40, 1, 967, 30, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
-- Orgrimmar <> Thunder Bluff
(190549, 0, 15, 3031, 'The Zephyr', 0, 40, 1, 1221, 30, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
-- Sparkwater Port <> Revantusk Village
(190550, 0, 15, 3015, 'The Sparkrunner', 0, 60, 1, 1500, 30, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
-- Reserved for a future use.
-- (190551, 0, 15, 7087, 'Crescent Moon', 0, 40, 1, 1600, 30, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
-- Zeppelin: Orgrimmar - Kargath
(190552, 0, 15, 3031, 'Zeppelin - Orgrimmar to Kargath', 0, 40, 1, 1501, 30, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into transports (guid, entry, name, period) values (9, 181646, 'Stormwind and Auberdine', 350818);
replace into transports (guid, entry, name, period) values (10, 190549, 'Orgrimmar and Thunder Bluff', 350818);
replace into transports (guid, entry, name, period) values (11, 190550, 'Sparkwater Port and Revantusk Village', 150818);
replace into transports (guid, entry, name, period) values (12, 190552, 'Orgrimmar and Kargath', 150818);
-- replace into transports (guid, entry, name, period) values (4, 190551, 'Reserved.', 150818);

-- Update Teldrassil <> Auberdine boat model:
update gameobject_template set displayid = 7087 where entry = 176244;

-- Sparkwater Port <> Revantusk Village

-- "30880","1500","0","1","1727.3","-5636.79","0","0","0"
-- "30881","1500","1","1","1698.8","-5579.1","0","0","0"
-- "30882","1500","2","1","1598.9","-5446.4","0","0","0"
-- "30883","1500","3","1","1393.5","-5337.1","0","0","0"
-- "30884","1500","4","1","1168.5","-5258.4","0","0","0"
-- "30885","1500","5","1","988.4","-5238.7","0","0","0"
-- "30886","1500","6","1","876.1","-5205.8","0","2","40"
-- "30887","1500","7","1","791.5","-5209.2","0","0","0"
-- "30888","1500","8","1","667.9","-5246.3","0","0","0"
-- "30889","1500","9","1","422.1","-5355.5","0","0","0"
-- "30890","1500","10","1","139.11","-5509.1","0","0","0"
-- "30891","1500","11","1","43.47","-5561.0","0","0","0"
-- "30892","1500","12","0","-219.7","-5058.1","0","0","0"
-- "30893","1500","13","0","89.4","-5019.3","0","0","0"
-- "30894","1500","14","0","-421.1","-4851.9","0","0","0"
-- "30895","1500","15","0","-653.8","-4733.4","0","2","40"
-- "30896","1500","16","0","-781.0","-4687.9","0","0","0"
-- "30897","1500","17","0","-940.3","-4688.9","0","0","0"
-- "30898","1500","18","0","-1140.3","-4694.0","0","0","0"
-- "30899","1500","19","0","-1237.6","-4697.8","0","0","0"
-- "30900","1500","20","0","-1287.4"," -4699.9","0","0","0"