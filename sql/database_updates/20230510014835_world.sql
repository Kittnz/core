
-- Changes by SHANG
REPLACE INTO `gameobject` VALUES ( 5015212, 2007370, 1, 5562.22, -3694.58, 1598.89, 0.485775, 0, 0, 0.240507, 0.970648, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5015212';
DELETE FROM game_event_gameobject WHERE guid = '5015212';
DELETE FROM gameobject_battleground WHERE guid = '5015212';
