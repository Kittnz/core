
-- Changes by SHANG
REPLACE INTO `creature` VALUES (2574536,61227,0,0,0,0,-890.271,1579.47,41.8749,4.29314,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2574537,61228,0,0,0,0,-892.191,1580.34,42.3961,4.3167,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2574538,61229,0,0,0,0,-894.482,1581.39,42.416,4.35208,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2574539,61230,0,0,0,0,-897.641,1582.29,41.8697,4.38742,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2574540,61231,0,0,0,0,-900.641,1582.94,41.9279,4.53272,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2574541,61232,0,0,0,0,-904.34,1582.67,42.4954,4.56166,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2574542,61233,0,0,0,0,-908.186,1582.81,42.9887,4.62056,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2574543,61234,0,0,0,0,-911.149,1583.14,43.308,4.54988,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2574544,61235,0,0,0,0,-912.89,1583.26,43.5093,4.54988,120,120,0,100,100,0,0,0);
UPDATE `creature_template` set `scale` = 1.000000 where entry = 61234;
UPDATE `creature_template` set `scale` = 1.000000 where entry = 61235;
UPDATE `creature_template` set `scale` = 1.200000 where entry = 61229;
UPDATE `creature_template` set `scale` = 1.000000 where entry = 61233;
REPLACE INTO `creature` VALUES (2574545,61235,0,0,0,0,-914.1,1584.01,43.9025,4.53551,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2574545;
DELETE FROM creature_addon WHERE guid=2574545;
DELETE FROM creature_movement WHERE id=2574545;
DELETE FROM game_event_creature WHERE guid=2574545;
DELETE FROM game_event_creature_data WHERE guid=2574545;
DELETE FROM creature_battleground WHERE guid=2574545;
REPLACE INTO `creature` VALUES (2574546,61236,0,0,0,0,-914.1,1584.01,43.9025,4.53551,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2574547,61237,0,0,0,0,-916.493,1584.56,44.5763,4.53944,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2574548,61238,0,0,0,0,-919.388,1584.52,44.7659,4.57714,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2574549,61239,0,0,0,0,-922.266,1585.25,44.9618,4.57007,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2574550,61239,0,0,0,0,-925.02,1586.04,44.8782,4.56969,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2574550;
DELETE FROM creature_addon WHERE guid=2574550;
DELETE FROM creature_movement WHERE id=2574550;
DELETE FROM game_event_creature WHERE guid=2574550;
DELETE FROM game_event_creature_data WHERE guid=2574550;
DELETE FROM creature_battleground WHERE guid=2574550;
REPLACE INTO `creature` VALUES (2574551,61240,0,0,0,0,-925.02,1586.04,44.8782,4.56969,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2574552,61241,0,0,0,0,-927.952,1586.4,44.1774,4.58147,120,120,0,100,100,0,0,0);
UPDATE `creature_template` set `scale` = 1.000000 where entry = 61241;
REPLACE INTO `creature` VALUES (2574553,61242,0,0,0,0,-929.7,1586.31,43.8936,4.61816,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2574553;
DELETE FROM creature_addon WHERE guid=2574553;
DELETE FROM creature_movement WHERE id=2574553;
DELETE FROM game_event_creature WHERE guid=2574553;
DELETE FROM game_event_creature_data WHERE guid=2574553;
DELETE FROM creature_battleground WHERE guid=2574553;
DELETE FROM creature WHERE guid=2574552;
DELETE FROM creature_addon WHERE guid=2574552;
DELETE FROM creature_movement WHERE id=2574552;
DELETE FROM game_event_creature WHERE guid=2574552;
DELETE FROM game_event_creature_data WHERE guid=2574552;
DELETE FROM creature_battleground WHERE guid=2574552;
REPLACE INTO `creature` VALUES (2574554,61241,0,0,0,0,-925.561,1583.82,45.0087,4.51213,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2574555,61242,0,0,0,0,-922.674,1583.02,44.8349,4.52784,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2574556,61243,0,0,0,0,-920.185,1582.07,44.5429,4.51606,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2574557,61244,0,0,0,0,-917.307,1581.44,44.1463,4.52391,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2574558,61245,0,0,0,0,-914.495,1580.83,43.6426,4.54747,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2574559,61246,0,0,0,0,-912.031,1580.4,43.3696,4.59067,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2574560,61247,0,0,0,0,-909.056,1579.77,42.8325,4.59067,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2574561,61248,0,0,0,0,-905.655,1578.67,42.2415,4.56318,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2574562,61249,0,0,0,0,-902.766,1578.1,41.6604,4.56317,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2574563,61250,0,0,0,0,-899.883,1578.06,41.1645,4.67705,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2574564,61251,0,0,0,0,-896.935,1577.84,41.3847,4.67705,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2574565,61252,0,0,0,0,-893.369,1577.34,41.6909,4.5294,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2574566,61253,0,0,0,0,-889.702,1576.77,41.0672,4.52547,120,120,0,100,100,0,0,0);
