
-- Changes by GHEOR
REPLACE INTO `gameobject` VALUES ( 5019637, 2020111, 814, -11216.9, -1734.32, 137.354, 4.65235, 0, 0, 0.728013, -0.685563, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5019638, 2003563, 814, -11118.6, -1861.84, 165.767, 0.81096, 0, 0, 0.39446, 0.918913, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5019638';
DELETE FROM game_event_gameobject WHERE guid = '5019638';
DELETE FROM gameobject_battleground WHERE guid = '5019638';
