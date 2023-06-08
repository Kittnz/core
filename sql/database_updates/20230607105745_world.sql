
-- Changes by VOJI
UPDATE `creature` SET `position_x` = -4436.641602, `position_y` = -649.399841, `position_z` = -14.111762, `orientation` = 1.256461 WHERE `guid` = 50057;
UPDATE `creature` SET `position_x` = -4309.380371, `position_y` = -469.806091, `position_z` = 28.042118, `orientation` = 0.989425 WHERE `guid` = 50057;
UPDATE `creature` SET `position_x` = -4302.264160, `position_y` = -328.249786, `position_z` = 51.959454, `orientation` = 1.350713 WHERE `guid` = 50057;
UPDATE `creature` SET `position_x` = -4250.226074, `position_y` = -162.505356, `position_z` = 60.186317, `orientation` = 1.786609 WHERE `guid` = 50057;
UPDATE `creature` SET `position_x` = -4271.174805, `position_y` = 34.376823, `position_z` = 55.204536, `orientation` = 1.156719 WHERE `guid` = 50057;
UPDATE `creature` SET `position_x` = -4231.208984, `position_y` = 254.927505, `position_z` = 52.986908, `orientation` = 1.533710 WHERE `guid` = 50057;
UPDATE `creature` SET `position_x` = -4270.626465, `position_y` = 485.364746, `position_z` = 54.277855, `orientation` = 1.808600 WHERE `guid` = 50057;
UPDATE `creature` SET `position_x` = -4383.261719, `position_y` = 655.326843, `position_z` = 75.546097, `orientation` = 2.354453 WHERE `guid` = 50057;
UPDATE `creature` SET `position_x` = -4525.010254, `position_y` = 793.838928, `position_z` = 59.590458, `orientation` = 2.099198 WHERE `guid` = 50057;
DELETE FROM creature WHERE guid=50057;
DELETE FROM creature_addon WHERE guid=50057;
DELETE FROM creature_movement WHERE id=50057;
DELETE FROM game_event_creature WHERE guid=50057;
DELETE FROM game_event_creature_data WHERE guid=50057;
DELETE FROM creature_battleground WHERE guid=50057;
REPLACE INTO `creature` VALUES (2577390,11826,0,0,0,1,-4344.57,3320.39,10.0076,3.83158,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2577390;
DELETE FROM creature_addon WHERE guid=2577390;
DELETE FROM creature_movement WHERE id=2577390;
DELETE FROM game_event_creature WHERE guid=2577390;
DELETE FROM game_event_creature_data WHERE guid=2577390;
DELETE FROM creature_battleground WHERE guid=2577390;
REPLACE INTO `creature` VALUES (2577391,11826,0,0,0,1,-4344.57,3320.39,10.0076,3.83158,120,120,0,100,100,0,0,0);
