
-- Changes by DRAGUNOVI
REPLACE INTO `gameobject` VALUES ( 5016656, 1872030, 0, -1049.55, 2222.27, 184.416, 4.87792, 0, 0, 0.646229, -0.763143, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016656, 1872030, 0, -1049.55, 2222.27, 183.416, 4.87792, 0, 0, 0.646229, -0.763143, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5016395';
DELETE FROM game_event_gameobject WHERE guid = '5016395';
DELETE FROM gameobject_battleground WHERE guid = '5016395';
REPLACE INTO `creature` VALUES (2578682,61464,0,0,0,0,-4863.09,391.632,309.997,0.00121212,120,120,0,100,100,0,0,0);
