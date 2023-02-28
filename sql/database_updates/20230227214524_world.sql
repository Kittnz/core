
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
UPDATE `creature_template` set `scale` = 1.500000 where entry = 61249;
UPDATE `creature_template` set `scale` = 1.600000 where entry = 61248;
UPDATE `creature_template` set `scale` = 1.600000 where entry = 61245;
UPDATE `creature_template` set `scale` = 1.800000 where entry = 61244;
UPDATE `creature_template` set `scale` = 1.700000 where entry = 61243;
UPDATE `creature_template` set `scale` = 1.800000 where entry = 61246;
UPDATE `creature_template` set `scale` = 1.900000 where entry = 61247;
UPDATE `creature_template` set `scale` = 1.100000 where entry = 61227;
UPDATE `creature_template` set `scale` = 1.300000 where entry = 61228;
UPDATE `creature_template` set `scale` = 1.400000 where entry = 61236;
UPDATE `creature_template` set `scale` = 1.600000 where entry = 61237;
REPLACE INTO `creature` VALUES (2574567,61248,0,0,0,0,-1908.3,1614.86,53.9194,6.1769,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2574568,61249,0,0,0,0,-1908.06,1617.18,53.9296,6.10622,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2574569,61250,0,0,0,0,-1908.5,1619.42,54.2456,6.00804,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2574570,61243,0,0,0,0,-1833.52,1310.55,52.222,1.18099,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2574571,61244,0,0,0,0,-1835.88,1311.68,52.2417,1.04355,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2574572,61245,0,0,0,0,-1837.88,1313.5,52.2896,0.98464,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2574573,61246,0,0,0,0,-1840.7,1316.45,52.3817,0.851123,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2574574,61247,0,0,0,0,-1842.89,1319.53,52.8974,0.564452,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2574575,61239,0,0,0,0,-2444.82,1021.93,43.6151,0.207892,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2574576,61240,0,0,0,0,-2444.09,1019.74,43.4635,0.211819,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2574577,61241,0,0,0,0,-2443.73,1017.27,43.2757,0.247162,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2574578,61242,0,0,0,0,-2442.94,1015.32,43.0463,0.274651,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2574579,61236,0,0,0,0,-1674.32,1425.97,54.7502,0.289606,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2574579;
DELETE FROM creature_addon WHERE guid=2574579;
DELETE FROM creature_movement WHERE id=2574579;
DELETE FROM game_event_creature WHERE guid=2574579;
DELETE FROM game_event_creature_data WHERE guid=2574579;
DELETE FROM creature_battleground WHERE guid=2574579;
REPLACE INTO `creature` VALUES (2574580,61237,0,0,0,0,-1677.15,1425.13,55.2154,0.289606,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2574580;
DELETE FROM creature_addon WHERE guid=2574580;
DELETE FROM creature_movement WHERE id=2574580;
DELETE FROM game_event_creature WHERE guid=2574580;
DELETE FROM game_event_creature_data WHERE guid=2574580;
DELETE FROM creature_battleground WHERE guid=2574580;
REPLACE INTO `creature` VALUES (2574581,61238,0,0,0,0,-1680.39,1426.2,55.2222,6.27532,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2574581;
DELETE FROM creature_addon WHERE guid=2574581;
DELETE FROM creature_movement WHERE id=2574581;
DELETE FROM game_event_creature WHERE guid=2574581;
DELETE FROM game_event_creature_data WHERE guid=2574581;
DELETE FROM creature_battleground WHERE guid=2574581;
REPLACE INTO `creature` VALUES (2574582,61230,0,0,0,0,-901.41,1492.75,47.6069,1.7084,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2574582;
DELETE FROM creature_addon WHERE guid=2574582;
DELETE FROM creature_movement WHERE id=2574582;
DELETE FROM game_event_creature WHERE guid=2574582;
DELETE FROM game_event_creature_data WHERE guid=2574582;
DELETE FROM creature_battleground WHERE guid=2574582;
REPLACE INTO `creature` VALUES (2574583,61232,0,0,0,0,-888.938,1516.4,38.2797,2.4828,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2574583;
DELETE FROM creature_addon WHERE guid=2574583;
DELETE FROM creature_movement WHERE id=2574583;
DELETE FROM game_event_creature WHERE guid=2574583;
DELETE FROM game_event_creature_data WHERE guid=2574583;
DELETE FROM creature_battleground WHERE guid=2574583;
REPLACE INTO `creature` VALUES (2574584,61233,0,0,0,0,-894.036,1510.91,40.2857,1.25837,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2574584;
DELETE FROM creature_addon WHERE guid=2574584;
DELETE FROM creature_movement WHERE id=2574584;
DELETE FROM game_event_creature WHERE guid=2574584;
DELETE FROM game_event_creature_data WHERE guid=2574584;
DELETE FROM creature_battleground WHERE guid=2574584;
REPLACE INTO `creature` VALUES (2574585,61227,0,0,0,0,-894.71,1507.81,41.161,1.35654,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2574585;
DELETE FROM creature_addon WHERE guid=2574585;
DELETE FROM creature_movement WHERE id=2574585;
DELETE FROM game_event_creature WHERE guid=2574585;
DELETE FROM game_event_creature_data WHERE guid=2574585;
DELETE FROM creature_battleground WHERE guid=2574585;
REPLACE INTO `creature` VALUES (2574586,61228,0,0,0,0,-895.023,1506.37,41.6469,1.35654,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2574586;
DELETE FROM creature_addon WHERE guid=2574586;
DELETE FROM creature_movement WHERE id=2574586;
DELETE FROM game_event_creature WHERE guid=2574586;
DELETE FROM game_event_creature_data WHERE guid=2574586;
DELETE FROM creature_battleground WHERE guid=2574586;
REPLACE INTO `creature` VALUES (2574587,61229,0,0,0,0,-895.442,1504.44,42.3838,1.35654,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2574587;
DELETE FROM creature_addon WHERE guid=2574587;
DELETE FROM creature_movement WHERE id=2574587;
DELETE FROM game_event_creature WHERE guid=2574587;
DELETE FROM game_event_creature_data WHERE guid=2574587;
DELETE FROM creature_battleground WHERE guid=2574587;
REPLACE INTO `creature` VALUES (2574588,61191,0,0,0,0,-988.225,1575.49,54.3168,3.2454,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2574588;
DELETE FROM creature_addon WHERE guid=2574588;
DELETE FROM creature_movement WHERE id=2574588;
DELETE FROM game_event_creature WHERE guid=2574588;
DELETE FROM game_event_creature_data WHERE guid=2574588;
DELETE FROM creature_battleground WHERE guid=2574588;
REPLACE INTO `creature` VALUES (2574589,61227,0,0,0,0,-1801.94,1369.99,62.1575,1.24842,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2574589;
DELETE FROM creature_addon WHERE guid=2574589;
DELETE FROM creature_movement WHERE id=2574589;
DELETE FROM game_event_creature WHERE guid=2574589;
DELETE FROM game_event_creature_data WHERE guid=2574589;
DELETE FROM creature_battleground WHERE guid=2574589;
REPLACE INTO `creature` VALUES (2574590,61236,0,0,0,0,-1802.4,1368.59,62.336,1.24842,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2574590;
DELETE FROM creature_addon WHERE guid=2574590;
DELETE FROM creature_movement WHERE id=2574590;
DELETE FROM game_event_creature WHERE guid=2574590;
DELETE FROM game_event_creature_data WHERE guid=2574590;
DELETE FROM creature_battleground WHERE guid=2574590;
REPLACE INTO `creature` VALUES (2574591,61235,0,0,0,0,-1836.19,1600.39,54.961,1.43118,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2574592,61234,0,0,0,0,-1834.06,1601.29,54.3333,1.38406,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2574593,61236,0,0,0,0,-1833.33,1599.22,53.9419,2.37838,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2574593;
DELETE FROM creature_addon WHERE guid=2574593;
DELETE FROM creature_movement WHERE id=2574593;
DELETE FROM game_event_creature WHERE guid=2574593;
DELETE FROM game_event_creature_data WHERE guid=2574593;
DELETE FROM creature_battleground WHERE guid=2574593;
DELETE FROM creature WHERE guid=2574592;
DELETE FROM creature_addon WHERE guid=2574592;
DELETE FROM creature_movement WHERE id=2574592;
DELETE FROM game_event_creature WHERE guid=2574592;
DELETE FROM game_event_creature_data WHERE guid=2574592;
DELETE FROM creature_battleground WHERE guid=2574592;
REPLACE INTO `creature` VALUES (2574594,61234,0,0,0,0,-1833.33,1599.22,53.9419,2.37838,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2574591;
DELETE FROM creature_addon WHERE guid=2574591;
DELETE FROM creature_movement WHERE id=2574591;
DELETE FROM game_event_creature WHERE guid=2574591;
DELETE FROM game_event_creature_data WHERE guid=2574591;
DELETE FROM creature_battleground WHERE guid=2574591;
DELETE FROM creature WHERE guid=2574594;
DELETE FROM creature_addon WHERE guid=2574594;
DELETE FROM creature_movement WHERE id=2574594;
DELETE FROM game_event_creature WHERE guid=2574594;
DELETE FROM game_event_creature_data WHERE guid=2574594;
DELETE FROM creature_battleground WHERE guid=2574594;
REPLACE INTO `creature` VALUES (2574595,61225,0,0,0,532,-10926.6,-2086.53,92.1787,3.80084,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2574596,61226,0,0,0,532,-10928.3,-2084.25,92.1794,3.91865,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2574596;
DELETE FROM creature_addon WHERE guid=2574596;
DELETE FROM creature_movement WHERE id=2574596;
DELETE FROM game_event_creature WHERE guid=2574596;
DELETE FROM game_event_creature_data WHERE guid=2574596;
DELETE FROM creature_battleground WHERE guid=2574596;
DELETE FROM creature WHERE guid=2574595;
DELETE FROM creature_addon WHERE guid=2574595;
DELETE FROM creature_movement WHERE id=2574595;
DELETE FROM game_event_creature WHERE guid=2574595;
DELETE FROM game_event_creature_data WHERE guid=2574595;
DELETE FROM creature_battleground WHERE guid=2574595;
REPLACE INTO `creature` VALUES (2574597,61221,0,0,0,532,-10928.3,-2084.25,92.1794,4.0663,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2574597;
DELETE FROM creature_addon WHERE guid=2574597;
DELETE FROM creature_movement WHERE id=2574597;
DELETE FROM game_event_creature WHERE guid=2574597;
DELETE FROM game_event_creature_data WHERE guid=2574597;
DELETE FROM creature_battleground WHERE guid=2574597;
REPLACE INTO `creature` VALUES (2574598,61222,0,0,0,532,-10928.3,-2084.25,92.1794,4.0663,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2574598;
DELETE FROM creature_addon WHERE guid=2574598;
DELETE FROM creature_movement WHERE id=2574598;
DELETE FROM game_event_creature WHERE guid=2574598;
DELETE FROM game_event_creature_data WHERE guid=2574598;
DELETE FROM creature_battleground WHERE guid=2574598;
REPLACE INTO `creature` VALUES (2574599,61223,0,0,0,532,-10928.3,-2084.25,92.1794,4.0663,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2574599;
DELETE FROM creature_addon WHERE guid=2574599;
DELETE FROM creature_movement WHERE id=2574599;
DELETE FROM game_event_creature WHERE guid=2574599;
DELETE FROM game_event_creature_data WHERE guid=2574599;
DELETE FROM creature_battleground WHERE guid=2574599;
REPLACE INTO `creature` VALUES (2574600,3981,0,0,0,0,-2168.88,981.124,2.07543,4.93127,120,120,5,100,100,1,0,0);
