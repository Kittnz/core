replace into migrations values ('20200227225822');

REPLACE INTO `creature_template` VALUES (50116,0,10008,0,0,0,'Chromie','',0,63,63,98621,98621,48424,48424,3490,35,0,1,1.14286,3,20,5,0,3,1,1130,1500,0,285,1,2200,1500,2,0,0,0,0,0,0,0,600,825,100,2,68,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,33403,63403,'',0,1,0,0,3,10667,0,0,617299931,0,33025,'boss_chromie');

REPLACE INTO `creature_template` VALUES (50117,0,2719,0,0,0,'Chronormu','',0,63,63,102641,102621,42426,42426,3490,38,0,1,1.14286,3,20,5,0,3,1,1130,1500,0,285,1,2200,1500,2,0,0,0,0,0,0,0,600,825,100,2,68,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,33403,63403,'',0,1,0,0,3,0,0,0,617299931,0,33025,'boss_chronormu');

update creature_template set scale = 1 where entry in (50116, 50117);
update creature_template set npc_flags = 1 where entry = 50116;

replace into broadcast_text (ID, FemaleText) values
('100004', '<Chromie looks at you with a pale face.>');
replace into npc_text (ID, BroadcastTextID0) values ('100004', '100004');