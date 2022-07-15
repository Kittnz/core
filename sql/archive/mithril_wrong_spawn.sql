-- Remove wrong spawn of Mithril Node #151
DELETE FROM `gameobject` WHERE `guid` = 7208;
DELETE FROM `pool_gameobject` WHERE `guid` = 7208;