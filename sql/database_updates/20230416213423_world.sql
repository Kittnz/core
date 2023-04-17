
-- Changes by SHANG
DELETE FROM creature WHERE guid=2574100;
DELETE FROM creature_addon WHERE guid=2574100;
DELETE FROM creature_movement WHERE id=2574100;
DELETE FROM game_event_creature WHERE guid=2574100;
DELETE FROM game_event_creature_data WHERE guid=2574100;
DELETE FROM creature_battleground WHERE guid=2574100;
REPLACE INTO `gameobject` VALUES ( 5013752, 179395, 532, -11124.5, -1937.78, 49.3346, 3.36991, 0, 0, 0.993491, -0.113911, 300, 300, 100, 1, 0, 0);
REPLACE INTO `creature` VALUES (2575745,61319,0,0,0,532,-11125.2,-1936.38,49.3216,5.28706,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2575745, 28);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2575745, 173);
DELETE FROM creature WHERE guid=2574103;
DELETE FROM creature_addon WHERE guid=2574103;
DELETE FROM creature_movement WHERE id=2574103;
DELETE FROM game_event_creature WHERE guid=2574103;
DELETE FROM game_event_creature_data WHERE guid=2574103;
DELETE FROM creature_battleground WHERE guid=2574103;

-- Changes by TAMMO
REPLACE INTO `creature` VALUES (2575746,61375,0,0,0,0,-1181.5,2738.73,33.3837,3.6798,120,120,0,100,100,0,0,0);
UPDATE `creature` SET `position_x` = -1181.517944, `position_y` = 2738.848389, `position_z` = 33.383587, `orientation` = 3.698652 WHERE `guid` = 2575746;
REPLACE INTO `creature` VALUES (2575747,61374,0,0,0,0,1605.63,241.093,-62.0785,0.169809,120,120,0,100,100,0,0,0);
REPLACE INTO `gameobject` VALUES ( 5013753, 2003608, 1, -2211.84, 764.169, 154.613, 5.70591, 0, 0, 0.284645, -0.958633, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417377737212153, 0.800000);
REPLACE INTO `gameobject` VALUES ( 5013753, 2003608, 1, -2211.84, 764.169, 154.613, 5.70591, 0, 0, 0.284645, -0.958633, 300, 300, 100, 1, 0, 0);
