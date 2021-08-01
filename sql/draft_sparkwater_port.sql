-- Grim Batol Plaque
replace into gameobject_template values (1772030, 0, 9, 218, 'Grim Batol Memorial', 0, 0, 1.5, 1000246, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
replace into page_text (entry, text, next_page) values (1772030, 'A shrine dedicated to those that fought, and gave their lives in the defence of innocents against our greatest of challenges. May this shrine forever honor those that died within our once great halls in defiance against our invaders.\n\nYou shall never be forgotten.', 0);

replace into creature_template values 
-- Sparkwater Port NPCs:
(91200, 0, 7179, 0, 0, 0, 'Wrix Ozzlenut', 'Shredder Mechanic', 0, 36, 36, 1468, 1468, 0, 0, 1427, 120, 4, 1, 1.14286, 0, 20, 5, 0, 0, 1, 51, 66, 0, 140, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 52.272, 71.874, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 10, ''),
(91201, 0, 7164, 0, 0, 0, 'Grazzle Steamscrew', 'Woodcutting Foreman', 0, 5, 5, 319, 319, 0, 0, 852, 35, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 2, ''),
(91202, 0, 15765, 0, 0, 0, 'Tammix Razzfire', 'Apprentice Alchemist', 9557, 23, 23, 617, 617, 0, 0, 957, 29, 17, 1, 1.14286, 0, 20, 5, 0, 0, 1, 28, 37, 0, 100, 1, 2000, 2000, 1, 4608, 0, 0, 2, 0, 0, 0, 36.0272, 49.5374, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 11046, 0, 0, 0, 0, 524298, ''),
(91203, 0, 3877, 0, 0, 0, 'Rugnar', '', 9162, 35, 35, 1342, 1342, 0, 0, 1373, 29, 4, 1, 1.14286, 0, 20, 5, 0, 0, 1, 51, 65, 0, 138, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 51.128, 70.301, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 3342, 0, 0, 0, 0, 524298, ''),
(91204, 6, 1379, 0, 0, 0, 'Karnag the Drunk', 'Drunkard', 0, 57, 57, 5568, 5568, 0, 0, 3327, 120, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 51, 75, 0, 258, 1, 2000, 2000, 1, 514, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 15724, 0, 0, 0, 0, 2, ''), 
(91205, 0, 7131, 0, 0, 0, 'Zeet Waxwrench', 'Antique Goods', 0, 25, 25, 712, 712, 0, 0, 1009, 120, 6, 1, 1.14286, 0, 20, 5, 0, 0, 1, 31, 40, 0, 106, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 38.72, 53.24, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 10, ''),
(91206, 0, 7074, 0, 0, 0, 'Fisherman Shix', 'Fishing Trainer', 9158, 35, 35, 1342, 1342, 0, 0, 1373, 29, 19, 1, 1.14286, 0, 20, 5, 0, 0, 1, 51, 65, 0, 138, 1, 2000, 2000, 1, 4608, 0, 0, 2, 0, 0, 0, 51.128, 70.301, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 3332, 0, 0, 0, 0, 524298, ''),
(91207, 0, 10004, 0, 0, 0, 'Maleka', 'Weapon and Armor Vendor', 9191, 30, 30, 1002, 1002, 0, 0, 1200, 29, 4, 1, 1.14286, 0, 20, 5, 0, 0, 1, 49, 68, 0, 122, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 45.144, 62.073, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 3409, 0, 0, 0, 0, 524298, ''),
(91208, 0, 7166, 0, 0, 0, 'Oilworker Razlik', '', 0, 5, 5, 319, 319, 0, 0, 852, 35, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 2, ''),
(91209, 0, 7130, 0, 0, 0, 'Bazz Eagerblast', '', 0, 5, 5, 319, 319, 0, 0, 852, 35, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 2, ''),
(91210, 0, 13050, 0, 0, 0, 'Meek Fusemix', '', 0, 5, 5, 319, 319, 0, 0, 852, 35, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 2, ''),
(91211, 0, 15300, 0, 0, 0, 'Sazzy Gearlight', '', 0, 5, 5, 319, 319, 0, 0, 852, 35, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 2, ''),
(91212, 0, 10742, 0, 0, 0, 'Rixxle Copperdrive', '', 0, 5, 5, 319, 319, 0, 0, 852, 35, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 2, ''),
(91213, 0, 16023, 0, 0, 0, 'Oil Manager Tizzleflux', '', 0, 5, 5, 319, 319, 0, 0, 852, 35, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 2, ''),
(91214, 0, 7168, 0, 0, 0, 'Technician Spuzzle', '', 0, 5, 5, 319, 319, 0, 0, 852, 35, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 2, ''),
(91215, 0, 7179, 0, 0, 0, 'Nazzle Moreflak', 'Engineering Supplies', 0, 36, 36, 1468, 1468, 0, 0, 1427, 120, 4, 1, 1.14286, 0, 20, 5, 0, 0, 1, 51, 66, 0, 140, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 52.272, 71.874, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 10, ''),
(91194, 0, 1246, 0, 0, 0, 'Makrura Oilclaw', NULL, 0, 9, 10, 196, 196, 0, 0, 406, 129, 0, 1, 0.857143, 0, 20, 5, 0, 0, 1, 11, 15, 0, 58, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 16.632, 22.869, 100, 7, 0, 3141, 0, 0, 0, 0, 0, 0, 0, 0, 5424, 0, 0, 0, 0, 0, 7, 15, 'EventAI', 1, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, ''),
(91193, 0, 1940, 0, 0, 0, 'Makrura Thresher', NULL, 0, 8, 9, 156, 176, 0, 0, 406, 129, 0, 1, 0.857143, 0, 20, 5, 0, 0, 1, 11, 15, 0, 58, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 16.632, 22.869, 100, 7, 0, 3141, 0, 0, 0, 0, 0, 0, 0, 0, 5424, 0, 0, 0, 0, 0, 7, 15, 'EventAI', 1, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, ''),
(91216, 0, 7241, 0, 0, 0, 'Wuzgu', 'Lumber Distributor', 0, 12, 12, 1468, 1468, 0, 0, 1427, 120, 4, 1, 1.14286, 0, 20, 5, 0, 0, 1, 51, 66, 0, 140, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 52.272, 71.874, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 10, ''),
(91217, 0, 7200, 0, 0, 0, 'Lumberworker Pluckwrench', 'Lumber Worker', 0, 16, 16, 1468, 1468, 0, 0, 1427, 120, 4, 1, 1.14286, 0, 20, 5, 0, 0, 1, 51, 66, 0, 140, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 52.272, 71.874, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 10, ''),
(91218, 0, 7198, 0, 0, 0, 'Lumberworker Kazz', 'Lumber Worker', 0, 12, 12, 1468, 1468, 0, 0, 1427, 120, 4, 1, 1.14286, 0, 20, 5, 0, 0, 1, 51, 66, 0, 140, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 52.272, 71.874, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 10, ''),
(91219, 0, 7338, 0, 0, 0, 'Lumberworker Ruzbolt', 'Lumber Worker', 0, 12, 14, 468, 568, 0, 0, 1427, 120, 4, 1, 1.14286, 0, 20, 5, 0, 0, 1, 51, 66, 0, 140, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 52.272, 71.874, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 10, ''),
(91220, 0, 7188, 0, 0, 0, 'Lozzle', 'Refreshments Extraordinaire!', 0, 12, 14, 468, 568, 0, 0, 1427, 120, 4, 1, 1.14286, 0, 20, 5, 0, 0, 1, 51, 66, 0, 140, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 52.272, 71.874, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 10, ''),
(91221, 0, 7157, 0, 0, 0, 'Faz', 'Moonshiner', 0, 10, 12, 468, 568, 0, 0, 1427, 120, 4, 1, 1.14286, 0, 20, 5, 0, 0, 1, 51, 66, 0, 140, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 52.272, 71.874, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 10, ''),
(91222, 0, 7237, 0, 0, 0, 'Oilworker Gullydagger', '', 0, 16, 16, 1468, 1468, 0, 0, 1427, 120, 4, 1, 1.14286, 0, 20, 5, 0, 0, 1, 51, 66, 0, 140, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 52.272, 71.874, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 10, ''),
(91223, 0, 7227, 0, 0, 0, 'Oilworker Brassrust', '', 0, 12, 12, 1468, 1468, 0, 0, 1427, 120, 4, 1, 1.14286, 0, 20, 5, 0, 0, 1, 51, 66, 0, 140, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 52.272, 71.874, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 10, ''),
(91224, 0, 7197, 0, 0, 0, 'Craneoperator Bizzrocket', '', 0, 12, 14, 468, 568, 0, 0, 1427, 120, 4, 1, 1.14286, 0, 20, 5, 0, 0, 1, 51, 66, 0, 140, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 52.272, 71.874, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 10, ''),
(91225, 0, 7197, 0, 0, 0, 'Chief Shang', 'Chief Architect of Sparkwater', 0, 16, 18, 468, 568, 0, 0, 1427, 120, 4, 1, 1.14286, 0, 20, 5, 0, 0, 1, 51, 66, 0, 140, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 52.272, 71.874, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 10, ''),
(91226, 0, 15549, 0, 0, 0, 'Varna Wireburn', '', 0, 16, 18, 468, 568, 0, 0, 1427, 120, 4, 1, 1.14286, 0, 20, 5, 0, 0, 1, 51, 66, 0, 140, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 52.272, 71.874, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 10, ''),
(91227, 0, 1390, 0, 0, 0, 'Hargosh', 'Backalley Butcher', 0, 13, 14, 468, 568, 0, 0, 1427, 120, 4, 1, 1.14286, 0, 20, 5, 0, 0, 1, 51, 66, 0, 140, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 52.272, 71.874, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 10, ''),
(91228, 0, 9553, 0, 0, 0, 'Haylee Bucketblast', '', 0, 13, 14, 468, 568, 0, 0, 1427, 120, 4, 1, 1.14286, 0, 20, 5, 0, 0, 1, 51, 66, 0, 140, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 52.272, 71.874, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 10, ''),
(91229, 0, 7202, 0, 0, 0, 'Dockworker Shazklench', '', 0, 13, 14, 468, 568, 0, 0, 1427, 120, 4, 1, 1.14286, 0, 20, 5, 0, 0, 1, 51, 66, 0, 140, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 52.272, 71.874, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 10, ''),
(91230, 0, 7112, 0, 0, 0, 'Cannoneer Gaxbruise', '', 0, 13, 14, 468, 568, 0, 0, 1427, 120, 4, 1, 1.14286, 0, 20, 5, 0, 0, 1, 51, 66, 0, 140, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 52.272, 71.874, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 10, ''),
(91231, 0, 7192, 0, 0, 0, 'Cannoneer Dazzcrank', '', 0, 13, 14, 468, 568, 0, 0, 1427, 120, 4, 1, 1.14286, 0, 20, 5, 0, 0, 1, 51, 66, 0, 140, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 52.272, 71.874, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 10, ''),
(91232, 0, 7340, 0, 0, 0, 'Krez the Wise', 'Scroll and Book Vendor', 0, 13, 14, 468, 568, 0, 0, 1427, 120, 4, 1, 1.14286, 0, 20, 5, 0, 0, 1, 51, 66, 0, 140, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 52.272, 71.874, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 10, ''),
(91233, 0, 7110, 0, 0, 0, 'Technician Haztick', '', 0, 13, 14, 468, 568, 0, 0, 1427, 120, 4, 1, 1.14286, 0, 20, 5, 0, 0, 1, 51, 66, 0, 140, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 52.272, 71.874, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 10, ''),
(91234, 0, 7109, 0, 0, 0, 'Technician Grimzlow', 'Head Technician of Sparkwater', 0, 13, 14, 468, 568, 0, 0, 1427, 120, 4, 1, 1.14286, 0, 20, 5, 0, 0, 1, 51, 66, 0, 140, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 52.272, 71.874, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 10, ''),
(91235, 0, 7192, 0, 0, 0, 'Technician Balwaz', '', 0, 13, 14, 468, 568, 0, 0, 1427, 120, 4, 1, 1.14286, 0, 20, 5, 0, 0, 1, 51, 66, 0, 140, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 52.272, 71.874, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 10, ''),
(91236, 8, 10747, 11375, 7102, 0, 'Sparkwater Bruiser', '', 0, 55, 55, 7842, 7842, 0, 0, 20, 1682, 0, 1, 1.42857, 0, 20, 5, 0, 0, 1, 154, 222, 0, 248, 1, 2000, 2000, 1, 36864, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 35021, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 16096, 0, 0, 0, 0, 524288, ''),
(91237, 0, 15201, 0, 0, 0, 'Tradesman Laz', '', 0, 13, 14, 468, 568, 0, 0, 1427, 120, 4, 1, 1.14286, 0, 20, 5, 0, 0, 1, 51, 66, 0, 140, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 52.272, 71.874, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 10, '');

-- TODO:  Sparkwater Reserve
update creature_template set faction = 1001 where entry between 91200 and 91236;
update creature_template set equipment_id = 3454 where entry in (91230, 91231);
update creature_template set equipment_id = 3368 where entry = 91227;
update creature_template set equipment_id = 3368 where entry = 91234;
update creature_template set equipment_id = 3368 where entry = 91233;
update creature_template set equipment_id = 4429 where entry = 91224;
update creature_template set equipment_id = 4429 where entry = 91229;
update creature_template set faction = 125 where entry in (91203, 91204, 91206, 91207, 91227);
update creature_template set npc_flags = 3 where entry = 91200; -- Gossip + quest
update creature_template set npc_flags = 1 where entry = 91225; -- Gossip 
update creature_template set npc_flags = 3 where entry = 91204; -- Gossip + quest
update creature_template set npc_flags = 2 where entry = 91208; -- Gossip + quest
update creature_template set npc_flags = 2 where entry = 91229; -- Gossip + quest
update creature_template set npc_flags = 2 where entry = 91230; -- Gossip + quest
update creature_template set npc_flags = 2 where entry = 91231; -- Gossip + quest
update creature_template set npc_flags = 2 where entry = 91203; -- Quest only
update creature_template set npc_flags = 2 where entry = 91217; -- Quest only
update creature_template set npc_flags = 2 where entry = 91218; -- Quest only
update creature_template set npc_flags = 2 where entry = 91219; -- Quest only
update creature_template set npc_flags = 2 where entry = 91209; -- Quest only
update creature_template set npc_flags = 2 where entry = 91228; -- Quest only
update creature_template set npc_flags = 2 where entry = 91237; -- Quest only
update creature_template set npc_flags = 2 where entry = 91210; -- Quest only
update creature_template set npc_flags = 2 where entry = 91211; -- Quest only
update creature_template set npc_flags = 2 where entry = 91212; -- Quest only
update creature_template set npc_flags = 2 where entry = 91213; -- Quest only
update creature_template set npc_flags = 2 where entry = 91214; -- Quest only
update creature_template set npc_flags = 2 where entry = 91224; -- Quest only
update creature_template set npc_flags = 2 where entry = 91223; -- Quest only
update creature_template set npc_flags = 2 where entry = 91222; -- Quest only
update creature_template set npc_flags = 2 where entry = 91226; -- Quest only
update creature_template set npc_flags = 16389 where entry = 91201; -- Gossip + quest + vendor
update creature_template set npc_flags = 16389 where entry = 91205; -- Gossip + quest + vendor
update creature_template set npc_flags = 19 where entry = 91202; -- Gossip + quest + trainer
update creature_template set npc_flags = 23 where entry = 91206; -- Vendor + quest + trainer
update creature_template set npc_flags = 16388 where entry = 91207; -- Vendor + gossip
update creature_template set npc_flags = 16388 where entry = 91215; -- Vendor + gossip
update creature_template set npc_flags = 16388 where entry = 91216; -- Vendor + gossip
update creature_template set npc_flags = 16388 where entry = 91220; -- Vendor + gossip
update creature_template set npc_flags = 16388 where entry = 91221; -- Vendor + gossip
update creature_template set npc_flags = 16388 where entry = 91232; -- Vendor + gossip
update creature_template set npc_flags = 16388 where entry = 91227; -- Vendor + gossip
update creature_template set npc_flags = 7 where entry = 91227; -- Vendor + gossip

replace into creature_template_addon (entry, patch, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) values (91200, 0, 0, 0, 0, 0, 69, 0, null);
replace into creature_template_addon (entry, patch, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) values (91209, 0, 0, 1, 0, 0, 0, 0, null);
replace into creature_template_addon (entry, patch, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) values (91210, 0, 0, 1, 0, 0, 0, 0, null);
replace into creature_template_addon (entry, patch, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) values (91212, 0, 0, 3, 0, 0, 0, 0, null);
replace into creature_template_addon (entry, patch, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) values (91206, 0, 0, 0, 1, 16, 379, 0, null);

-- Alchemy
replace into  npc_trainer  values (91202, 2275, 10, 0, 0, 5, 0, 5875);
replace into  npc_trainer  values (91202, 2339, 100, 171, 25, 0, 0, 5875);
replace into  npc_trainer  values (91202, 2340, 135, 171, 40, 0, 0, 5875);
replace into  npc_trainer  values (91202, 2341, 250, 171, 55, 0, 0, 5875);
replace into  npc_trainer  values (91202, 3179, 450, 171, 90, 0, 0, 5875);
replace into  npc_trainer  values (91202, 3181, 1350, 171, 120, 0, 0, 5875);
replace into  npc_trainer  values (91202, 3184, 50, 171, 15, 0, 0, 5875);
replace into  npc_trainer  values (91202, 3185, 1350, 171, 125, 0, 0, 5875);
replace into  npc_trainer  values (91202, 3186, 1800, 171, 130, 0, 0, 5875);
replace into  npc_trainer  values (91202, 3458, 3600, 171, 110, 0, 0, 5875);
replace into  npc_trainer  values (91202, 7180, 405, 171, 90, 0, 0, 5875);
replace into  npc_trainer  values (91202, 7838, 225, 171, 80, 0, 0, 5875);
replace into  npc_trainer  values (91202, 7839, 900, 171, 130, 0, 0, 5875);
replace into  npc_trainer  values (91202, 7842, 900, 171, 100, 0, 0, 5875);
replace into  npc_trainer  values (91202, 7846, 2700, 171, 140, 0, 0, 5875);
replace into  npc_trainer  values (91202, 11536, 225, 171, 50, 0, 0, 5875);
-- Fishing
replace into npc_trainer values (91206, 7733, 100, 0, 0, 5, 0, 5875);
replace into npc_trainer values (91206, 7734, 500, 356, 50, 0, 0, 5875);

-- Greeting texts:
set @gossip_menu_id = 60000; set @magic_number = 91205; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); replace into broadcast_text (entry, Male_Text) values (@magic_number, 'If you\'re lookin\' for odds and ends from across the south sea\'s then you\'re in luck!\n\nThere\'s no other place you can get this stuff then right here at Zeet\'s!\n\nOh, and NO REFUNDS!'); replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 60001; set @magic_number = 91202; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Hey there, if you\'re looking to produce your own potions to save a few coin, you\'ve come just to the right place!'); replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 60002; set @magic_number = 91204; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Unless you have a drink for me, you\'d best shove up whelp!'); replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 60003; set @magic_number = 91201; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Cutting wood isn\'t easy work, especially with all these lazy louts!\n\nIt\'s what good foremans like me are here for, up productivity!'); replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 60004; set @magic_number = 91200; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); replace into broadcast_text (entry, Male_Text) values (@magic_number, 'It\'s all about goblin precision, you think an orc could work such delicate parts?\n\nWhat\'cha need bub?'); replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 60007; set @magic_number = 91220; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Lozzle the Nozzle here! You\'re looking awfully thirsty, the sweat rolling off your face, the hot sun beating down on someone would do -just- that!\n\nWhy don\'t you grab some of my water, it\'s ice cold, and quenches the thirst, priced JUST right!\n\nNot like you\'ll find any other in town.'); replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 60008; set @magic_number = 91225; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Welcome to Sparkwater!\n\nI designed and built this place from the ground up, from the very first stone and rock into what it is now.\n\nSo, if you got any building projects, let me know, it may cost a pretty penny, but it\'s worth the gold, I\'ll tell you -THAT- much!'); replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 60009; set @magic_number = 91221; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); replace into broadcast_text (entry, Male_Text) values (@magic_number, 'You lookin\' for your fix bub? I got the good stuff, cheap, and home made!\m\mIt will get you drunk faster then any of that silly Dalaran wine, that\'s for sure, shows you what a goblin with his mind to a task can do.'); replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 60010; set @magic_number = 91227; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Throm ka friend, the goblins surely have a taste for fine meat, and it would seem they eat quite the filling of it.'); replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 60011; set @magic_number = 91229; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); replace into broadcast_text (entry, Male_Text) values (@magic_number, 'I been hearin\' the platform got overrun by the sea crawlers they better not come bother me any!'); replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 60012; set @magic_number = 91230; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); replace into broadcast_text (entry, Male_Text) values (@magic_number, 'My job here is to make sure the port is safe, any unknown ships come into range I fire this bad-girl at them, iron ball packed tight to the brim with gun powder will sink any vessel that is stupid enough to mess with us.'); replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 60013; set @magic_number = 91231; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Missfire Shmissfire, we\'re ordered to pack this baby full of powder when we see something!\n\nWe\'ll probably hit the eastern kingdoms!'); replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 60014; set @magic_number = 91232; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Heh, you lookin\' to get smarter huh? Well, reading some of these scrolls or books certainly could expand your knowledge, a few of them for a little while for sure!'); replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;


-- Vendors
replace into npc_vendor values (91207, 2488, 0, 0, 0, 0);
replace into npc_vendor values (91207, 2489, 0, 0, 0, 0);
replace into npc_vendor values (91207, 2490, 0, 0, 0, 0);
replace into npc_vendor values (91207, 2491, 0, 0, 0, 0);
replace into npc_vendor values (91207, 2492, 0, 0, 0, 0);
replace into npc_vendor values (91207, 2493, 0, 0, 0, 0);
replace into npc_vendor values (91207, 2494, 0, 0, 0, 0);
replace into npc_vendor values (91207, 2495, 0, 0, 0, 0);
replace into npc_vendor values (91207, 2506, 0, 0, 0, 0);
replace into npc_vendor values (91207, 2507, 0, 0, 0, 0);
replace into npc_vendor values (91207, 2512, 0, 0, 0, 0);
replace into npc_vendor values (91207, 2515, 0, 0, 0, 0);
replace into npc_vendor values (91207, 5439, 0, 0, 0, 0);
replace into npc_vendor values (91207, 11362, 0, 0, 0, 0);
replace into npc_vendor values (91207, 2129, 0, 0, 0, 0);
replace into npc_vendor values (91207, 2379, 0, 0, 0, 0);
replace into npc_vendor values (91207, 2380, 0, 0, 0, 0);
replace into npc_vendor values (91207, 2381, 0, 0, 0, 0);
replace into npc_vendor values (91207, 2383, 0, 0, 0, 0);
replace into npc_vendor values (91207, 2384, 0, 0, 0, 0);
replace into npc_vendor values (91207, 2385, 0, 0, 0, 0);
replace into npc_vendor values (91207, 17184, 0, 0, 0, 0);
replace into npc_vendor values (91215, 2880, 0, 0, 0, 0);
replace into npc_vendor values (91215, 2901, 0, 0, 0, 0);
replace into npc_vendor values (91215, 3466, 0, 0, 0, 0);
replace into npc_vendor values (91215, 4357, 4, 10800, 0, 0);
replace into npc_vendor values (91215, 4361, 2, 10800, 0, 0);
replace into npc_vendor values (91215, 4363, 2, 10800, 0, 0);
replace into npc_vendor values (91215, 4364, 4, 10800, 0, 0);
replace into npc_vendor values (91215, 4371, 2, 10800, 0, 0);
replace into npc_vendor values (91215, 4382, 1, 10800, 0, 0);
replace into npc_vendor values (91215, 4389, 0, 0, 0, 0);
replace into npc_vendor values (91215, 4399, 0, 0, 0, 0);
replace into npc_vendor values (91215, 4400, 0, 0, 0, 0);
replace into npc_vendor values (91215, 4404, 3, 10800, 0, 0);
replace into npc_vendor values (91215, 5956, 0, 0, 0, 0);
replace into npc_vendor values (91215, 10647, 0, 0, 0, 0);
replace into npc_vendor values (91215, 10648, 0, 0, 0, 0);
replace into npc_vendor (entry, item) values (91205, 2773);
replace into npc_vendor (entry, item) values (91205, 81278);
replace into npc_vendor (entry, item) values (91216, 4470);
replace into npc_vendor (entry, item) values (91221, 81296);
replace into npc_vendor (entry, item) values (91220, 80167);
replace into npc_vendor values (91227, 117, 0, 0, 0, 0);
replace into npc_vendor values (91227, 2287, 0, 0, 0, 0);
replace into npc_vendor values (91227, 3770, 0, 0, 0, 0);
replace into npc_vendor values (91227, 3771, 0, 0, 0, 0);
replace into npc_vendor values (91227, 4599, 0, 0, 0, 0);
replace into npc_vendor values (91227, 8952, 0, 0, 0, 0);
replace into npc_vendor values (91232, 2290, 1, 7200, 0, 0);
replace into npc_vendor values (91232, 955, 1, 7200, 0, 0);
replace into npc_vendor values (91232, 3013, 1, 7200, 0, 0);
replace into npc_vendor values (91232, 1181, 1, 7200, 0, 0);
replace into npc_vendor values (91232, 954, 1, 7200, 0, 0);

-- New quest's related items:
replace into item_template values 
(81291, 0, 12, 0, 'Razlik\'s Tools', 'Small, crude, and smeared with oil, most definitely of goblin make.', 2053, 1, 0, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 4, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, null),
(81292, 0, 12, 0, 'Energized Scale', '', 20893, 1, 0, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 4, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, null),
(81293, 0, 12, 0, 'Sealed Trade Goods', 'Small, crude, and smeared with oil, most definitely of goblin make.', 7914, 1, 0, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 4, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, null);

replace into item_template values
 ('81294', '0', '4', '2', 'Technician\'s Field Gloves', '', '28339', '1', '0', '1', '448', '112', '10', '-1', '-1', '15',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '34', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '1', '0', '0', '20', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('81295', '0', '4', '3', 'Energy Resistant Belt', '', '12202', '1', '0', '1', '436', '108', '6', '-1', '-1', '15',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '63', '0', '0', '1',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '5', '1', '0', '0', '20', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('81296', '0', '0', '0', 'Sparkwater Special', 'The smell is incredibly strong, and foul.', '18079', '1', '0', '1', '150', '37', '0', '-1', '-1', '10',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '11009', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '3', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

update item_template set stackable = 5 where entry = 81293;
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref) values (3130, 81292, -20, 6, 1);
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref) values (3131, 81292, -20, 6, 1);
replace into gameobject_template values (1000250, 0, 3, 2891, 'Razlik\'s Tools', 0, 4, 0.7, 43, 1000250, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
replace into gameobject_loot_template (entry, item, chanceorquestchance, groupid, mincountorref) values (1000250, 81291, -100, 1, 1);

-- Quests:

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (0,55000,14,9,7,0,0,'Razlik\'s Tools','Hey! You, yeah you!\n\nI got a problem that I need fixing and I\'ll tell ya, it\'s not sitting around waiting to work again that\'s for sure!\n\nWe\'re living paradise right now, but, you know how goblins work, eventually we\'ll be back on that oil platform, one way or another.\n\nThing is, I got a set of tools up there, from way back in the Venture Co. days, I\'m used to em see, and the last thing I want is some sea sucker knocking em off into the water to be lost forever.\n\nGo up there, find my tools, and get a few silver, whaddya say kid?','Find Razlik\'s lost tools on the Oil Platform east of the Port.','You got em yet? Or you just waitin\' around?','About time, I was gettin\' scared, thought I might\'a lost them!\n\nThey are a bit more dirty then I remember though, for muckin\' up my tools yer gonna get a silver less, no hard feelings!',81291,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,150,0,1001,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

update quest_template set rewxp = 400 where entry = 55000;

replace into creature_questrelation (id, quest) values (91208, 55000);
replace into creature_involvedrelation (id, quest) values (91208, 55000);

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (0,55001,14,9,7,0,0,'The Oil Stops Flowing','Damned, blasted, stupid, good for -NOTHING- Isn\'t this just great, it\'s one thing after another with that oil platform, and I\'m a week behind schedule!\n\nIf you don\'t call havin\' two workers get sucked into the ocean and your oil platform over run by lobsters then I don\'t know where you\'re from pal!\n\nThe oil needs to keep flowing, and if the boss finds out that this has gone on, he\'ll have my head!\n\nMaybe I could blame this on someone, but first things first, get on over there and clear some of those blasted creatures so we can kick that baby into overdrive and start catching up on all the lost work!','Kill 5 Makrura Oilclaw\'s and 5 Makrura Thresher\'s at the oil platform east of the Port.','You get rid of them yet? Time\'s tickin\' here and I need that platform up and running!','Finally, I was devising a plan but all I could come up with was flame thrower, and bomb. Big no-no\'s if ya know anything about oil safety!\n\nIt might not be -all- of em, but a few less of the seafood is good enough for me!',0,0,0,0,0,0,0,0,91194,5,91193,5,0,0,0,0,0,0,200,0,1001,200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

update quest_template set rewxp = 400 where entry = 55001;

replace into creature_questrelation (id, quest) values (91213, 55001);
replace into creature_involvedrelation (id, quest) values (91213, 55001);

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (0,55002,14,6,5,0,0,'Supplies to Port!','Supplies, supplies, supplies, its all they ever want those goblins!\n\nI send them four saw blades and the next thing I know they need six! I send them tin, and then they need Iron.\n\nYou would swear they went through more materials then the Horde Warmachine!\n\nI\'ve got this shipment to run down, but I\'ve got so much other work, if you could be of assistance it would be much appreciated, $r.\n\nThe Goblins have set up a new town up to the north east along the coast, you can\'t miss it, if anything, follow the smell of the smoke.','Deliver the Sealed Trade Goods to the nearby Port Town of Sparkwater to the north-east of Razor Hill.','What, was there anything that I could help with?','Yes? Can I help you? I\'m very busy ye see! Oh- supplies from Razor Hill?\n\nIt\'s about time, we\'re going through material here faster then a kodo with a hole shot through em...\n\nOnly four saw blades?! Oh well, it\'ll do, now scram!',81293,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,81293,1,100,0,1001,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

update quest_template set rewxp = 150 where entry = 55002;

replace into creature_questrelation (id, quest) values (3168, 55002);
replace into creature_involvedrelation (id, quest) values (91237, 55002);

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (0,55003,14,10,7,0,0,'A New Power Source','As a Technician, its our job to keep everythin\' runnin\' ya see? Well, we\'ve run into a small problem, and by a small problem, I mean a big problem!\n\nThe Oil from the platform isn\'t coming in and we\'re barely making due with what we got! That and we\'re gonna run outta barrels of the juice soon.\n\nBut, I got an idea anyway. There\'s a place not far from here to the west called Thunder Ridge, and it\'s got that name for a reason.\n\nThe beasts there pack one -HELL- of a punch! Get me six of their energized scales so I can tinker with it as a power source. Now, they\'re not gonna be givin\' you their scales, so use some force!','Gather six Energized scales from Lightning Hides and Thunder Lizards at Thunder Ridge to the west.','Find those lizards yet? I said they were at Thunder Ridge!','<The goblin quickly tinkers with his acquired scales>\n\nThe energy in these babies are off the chart! My hunches were correct, maybe this will work!\n\nOh, my chances of gettin\' promoted to Head Technician just went up about fifteen percent for sure!',81292,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,300,0,1001,200,0,0,0,0,0,0,0,0,0,81294,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

update quest_template set rewxp = 375 where entry = 55003;

replace into creature_questrelation (id, quest) values (91214, 55003);
replace into creature_involvedrelation (id, quest) values (91214, 55003);

replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref) values
(3131, 81292, -100, 6, 1), -- Lightning Hide
(3130, 81292, -100, 6, 1); -- Thunder Lizard

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (0,55004,14,7,5,0,0,'Adding a Little Sting','Hail, it is in times of peace that the body is set to engage within past-times of enjoyment, one such enjoyment for these goblins is that of eating, and eat do they ever, $r.\n\nAs much as they eat I am still competing with the others around me, and I\'m hoping to set myself apart .\n\nI have been wanting to experiment with new recipes from around the Barrens, and while I may never get tired of roasted boar meat there is more I can do to make my food even more alluring.\n\nAll around Sparkwater Port there are Scorpids and Boars, gather Chunks of Boar Meat and Scorpid Stingers from around the area, I will reward you for the effort.','Collect 5 Chunk of Boar Meat and 5 Scorpid Stinger.','Have you gathered everything I need yet?','<Hargosh takes his time preparing the food, and begins to cook with an utmost determination, the aroma and smell starts as something horrific, but begins to turn pleasant as the fire cooks, soon enough, the orc takes a bite from his creation .>\n\nMmn... Yes... Hah! This will do just the trick, the kick is strong in this, just like an orcish axe! You\'ve done me a service, here.',5466,5,769,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,175,0,1001,150,76,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

update quest_template set rewxp = 375 where entry = 55004;

replace into creature_questrelation (id, quest) values (91227, 55004);
replace into creature_involvedrelation (id, quest) values (91227, 55004);

