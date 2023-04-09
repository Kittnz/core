
-- Changes by SHANG
REPLACE INTO `game_tele` (`id`, `position_x`, `position_y`, `position_z`, `orientation`, `map`, `name`) VALUES (880,-1095.437622,2234.752930,182.861801,2.595906,815,'gilneascity');
REPLACE INTO `creature` VALUES (2574977,61389,0,0,0,815,-1158.06,2259.55,183.004,3.01861,120,120,0,100,100,0,0,0);

-- Changes by GHEOR
UPDATE `creature` SET `position_x` = -1160.027466, `position_y` = 2256.139893, `position_z` = 182.858398, `orientation` = 0.939201 WHERE `guid` = 2574977;
UPDATE `creature` SET `position_x` = -1159.100342, `position_y` = 2247.374512, `position_z` = 185.964890, `orientation` = 1.458350 WHERE `guid` = 2574977;

-- Changes by SHANG
DELETE FROM creature WHERE guid=2574977;
DELETE FROM creature_addon WHERE guid=2574977;
DELETE FROM creature_movement WHERE id=2574977;
DELETE FROM game_event_creature WHERE guid=2574977;
DELETE FROM game_event_creature_data WHERE guid=2574977;
DELETE FROM creature_battleground WHERE guid=2574977;
REPLACE INTO `creature` VALUES (2574978,61397,0,0,0,0,-2230.48,1195.38,37.0727,5.71,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2574978;
DELETE FROM creature_addon WHERE guid=2574978;
DELETE FROM creature_movement WHERE id=2574978;
DELETE FROM game_event_creature WHERE guid=2574978;
DELETE FROM game_event_creature_data WHERE guid=2574978;
DELETE FROM creature_battleground WHERE guid=2574978;
REPLACE INTO `creature` VALUES (2574979,61397,0,0,0,0,-2176.11,1144.25,25.7611,6.0941,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2574979;
DELETE FROM creature_addon WHERE guid=2574979;
DELETE FROM creature_movement WHERE id=2574979;
DELETE FROM game_event_creature WHERE guid=2574979;
DELETE FROM game_event_creature_data WHERE guid=2574979;
DELETE FROM creature_battleground WHERE guid=2574979;
REPLACE INTO `creature` VALUES (2574980,61397,0,0,0,1,16226.5,16255.3,13.1175,1.94459,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2574980;
DELETE FROM creature_addon WHERE guid=2574980;
DELETE FROM creature_movement WHERE id=2574980;
DELETE FROM game_event_creature WHERE guid=2574980;
DELETE FROM game_event_creature_data WHERE guid=2574980;
DELETE FROM creature_battleground WHERE guid=2574980;
REPLACE INTO `creature` VALUES (2574981,61396,0,0,0,815,-1165.24,2254.7,182.865,5.85452,120,120,0,100,100,0,0,0);

-- Changes by DRAGUNOVI
UPDATE `creature_template` set `scale` = 1.000000 where entry = 61396;

-- Changes by SHANG
DELETE FROM creature WHERE guid=2574981;
DELETE FROM creature_addon WHERE guid=2574981;
DELETE FROM creature_movement WHERE id=2574981;
DELETE FROM game_event_creature WHERE guid=2574981;
DELETE FROM game_event_creature_data WHERE guid=2574981;
DELETE FROM creature_battleground WHERE guid=2574981;
REPLACE INTO `creature` VALUES (2574982,61390,0,0,0,815,-1166.06,2255.46,182.865,5.93856,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2574983,61388,0,0,0,815,-1165.38,2257.5,182.865,5.69182,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2574984,61391,0,0,0,815,-1164.63,2259.1,182.865,5.92352,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2574985,61389,0,0,0,815,-1163.96,2260.9,182.865,5.73894,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2574988,61228,0,0,0,815,-1288.98,2222.55,182.978,1.5821,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2574988;
DELETE FROM creature_addon WHERE guid=2574988;
DELETE FROM creature_movement WHERE id=2574988;
DELETE FROM game_event_creature WHERE guid=2574988;
DELETE FROM game_event_creature_data WHERE guid=2574988;
DELETE FROM creature_battleground WHERE guid=2574988;
REPLACE INTO `creature` VALUES (2574989,61227,0,0,0,815,-1288.98,2222.25,183.017,1.5821,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2574989;
DELETE FROM creature_addon WHERE guid=2574989;
DELETE FROM creature_movement WHERE id=2574989;
DELETE FROM game_event_creature WHERE guid=2574989;
DELETE FROM game_event_creature_data WHERE guid=2574989;
DELETE FROM creature_battleground WHERE guid=2574989;
REPLACE INTO `creature` VALUES (2574990,61263,0,0,0,815,-962.3,2949.41,166.315,0.25469,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2574991,61264,0,0,0,815,-956.412,2957.21,166.315,5.0464,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2574992,61231,0,0,0,815,-945.184,2966.93,212.164,4.05287,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2574992;
DELETE FROM creature_addon WHERE guid=2574992;
DELETE FROM creature_movement WHERE id=2574992;
DELETE FROM game_event_creature WHERE guid=2574992;
DELETE FROM game_event_creature_data WHERE guid=2574992;
DELETE FROM creature_battleground WHERE guid=2574992;
