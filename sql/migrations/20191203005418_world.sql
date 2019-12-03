replace into migrations values ('20191203005418');

replace into page_text (entry, text) values
(1000063, 'The spectators want to see real battles! Don\'t rig them!');

update gameobject_template set name='WINTRADING IS FORBIDDEN', data0 = 1000063, data2 = 1 where entry = 1000063;


replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values
(50112, 150112, 100, 0, -150112, 1),
(50112, 30171, 100, 1, -30171, 3);

replace into reference_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values
(150112, 14557, 0, 1, 1, 1),
(150112, 2245, 0, 1, 1, 1),
(150112, 3475, 0, 1, 1, 1),
(150112, 833, 0, 1, 1, 1),
(150112, 811, 0, 1, 1, 1),
(150112, 1263, 0, 1, 1, 1),
(150112, 647, 0, 1, 1, 1),
(150112, 14552, 0, 1, 1, 1),
(150112, 14553, 0, 1, 1, 1),
(150112, 14554, 0, 1, 1, 1),
(150112, 2246, 0, 1, 1, 1),
(150112, 1443, 0, 1, 1, 1),
(150112, 14558, 0, 1, 1, 1),
(150112, 2243, 0, 1, 1, 1),
(150112, 20698, 0, 1, 1, 1),
(150112, 1728, 0, 1, 1, 1),
(150112, 14555, 0, 1, 1, 1),
(150112, 2244, 0, 1, 1, 1),
(150112, 2801, 0, 1, 1, 1),
(150112, 2099, 0, 1, 1, 1),
(150112, 1168, 0, 1, 1, 1),
(150112, 21044, 0, 1, 1, 1),
(150112, 944, 0, 1, 1, 1);
