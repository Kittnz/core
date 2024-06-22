
-- Changes by MEFLOR
DELETE FROM gameobject WHERE guid = '5019634';
DELETE FROM game_event_gameobject WHERE guid = '5019634';
DELETE FROM gameobject_battleground WHERE guid = '5019634';

-- Changes by SHANG
REPLACE INTO `creature` VALUES (2583561,62020,0,0,0,814,-6748.58,-2896.64,8.87924,6.16199,120,120,0,100,100,0,0,0);
