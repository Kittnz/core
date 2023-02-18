
-- Changes by TAMMO
REPLACE INTO `gameobject` VALUES ( 5013375, 2010997, 0, 2508.46, 2562.08, -0.84797, 5.1048, 0, 0, 0.555691, -0.831389, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5013375';
DELETE FROM game_event_gameobject WHERE guid = '5013375';
DELETE FROM gameobject_battleground WHERE guid = '5013375';
