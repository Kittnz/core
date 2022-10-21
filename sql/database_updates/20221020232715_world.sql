
-- Changes by SHANG
REPLACE INTO `game_tele` (`id`, `position_x`, `position_y`, `position_z`, `orientation`, `map`, `name`) VALUES (858,-1993.319458,2605.962646,62.311344,1.126615,1,'gelkis');
REPLACE INTO `creature` VALUES (2572892,80941,0,0,0,1,-1744.57,965.584,91.699,1.70433,3600,3600,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2572892;
DELETE FROM creature_addon WHERE guid=2572892;
DELETE FROM creature_movement WHERE id=2572892;
DELETE FROM game_event_creature WHERE guid=2572892;
DELETE FROM game_event_creature_data WHERE guid=2572892;
DELETE FROM creature_battleground WHERE guid=2572892;
REPLACE INTO `creature` VALUES (2572893,61044,0,0,0,1,-1984.37,2600.42,61.9304,2.69063,3600,3600,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572894,61045,0,0,0,1,-1992.93,2629.19,61.1402,4.40015,3600,3600,0,100,100,0,0,0);
REPLACE INTO `gameobject` VALUES ( 5010956, 2010931, 1, 327.319, -4717.23, 13.0898, 3.72429, 0, 0, 0.957857, -0.287246, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5010956';
DELETE FROM game_event_gameobject WHERE guid = '5010956';
DELETE FROM gameobject_battleground WHERE guid = '5010956';
REPLACE INTO `gameobject` VALUES ( 5010957, 2006258, 1, -845.803, 2771.68, 112.045, 3.18545, 0, 0, 0.99976, -0.0219246, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010957, 2006258, 1, -845.803, 2771.68, 111.845, 3.18545, 0, 0, 0.99976, -0.0219246, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010958, 2006257, 1, -850.958, 2767.15, 113.723, 4.18369, 0, 0, 0.867298, -0.497789, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010958, 2006257, 1, -850.958, 2767.15, 113.523, 4.18369, 0, 0, 0.867298, -0.497789, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010959, 2006256, 1, -848.011, 2763.12, 113.639, 4.34784, 0, 0, 0.823569, -0.567216, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010960, 2006256, 1, -847.552, 2770.15, 112.132, 2.1715, 0, 0, 0.884652, 0.466251, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010961, 2006254, 1, -841.793, 2763.09, 110.534, 4.90468, 0, 0, 0.635961, -0.771721, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010961, 2006254, 1, -841.793, 2763.09, 110.334, 4.90468, 0, 0, 0.635961, -0.771721, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010962, 2006254, 1, -852.511, 2771.48, 114.784, 2.32936, 0, 0, 0.918662, 0.395044, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010962, 2006254, 1, -852.511, 2771.48, 114.584, 2.32936, 0, 0, 0.918662, 0.395044, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010963, 2006255, 1, -840.845, 2770.24, 110.857, 2.62466, 0, 0, 0.966784, 0.255597, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010963, 2006255, 1, -840.845, 2770.24, 110.657, 2.62466, 0, 0, 0.966784, 0.255597, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010964, 2006428, 1, -837.128, 2768.14, 109.364, 2.32857, 0, 0, 0.918505, 0.395408, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010964, 2006428, 1, -837.128, 2768.14, 109.164, 2.32857, 0, 0, 0.918505, 0.395408, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010964, 2006428, 1, -837.128, 2768.14, 108.964, 2.32857, 0, 0, 0.918505, 0.395408, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010964, 2006428, 1, -837.128, 2768.14, 108.764, 2.32857, 0, 0, 0.918505, 0.395408, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010965, 2006254, 1, -849.224, 2760.19, 115.961, 3.90958, 0, 0, 0.927177, -0.374624, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010966, 2006428, 1, -844.373, 2761.39, 112.973, 4.70597, 0, 0, 0.709374, -0.704832, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010966, 2006428, 1, -844.373, 2761.39, 112.773, 4.70597, 0, 0, 0.709374, -0.704832, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010966, 2006428, 1, -844.373, 2761.39, 112.573, 4.70597, 0, 0, 0.709374, -0.704832, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010966, 2006428, 1, -844.373, 2761.39, 112.373, 4.70597, 0, 0, 0.709374, -0.704832, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010966, 2006428, 1, -844.373, 2761.39, 112.173, 4.70597, 0, 0, 0.709374, -0.704832, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010967, 2001925, 1, -849.819, 2764.75, 113.946, 4.23394, 0, 0, 0.854517, -0.519423, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010967, 2001925, 1, -849.819, 2764.75, 113.746, 4.23394, 0, 0, 0.854517, -0.519423, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010968, 2001925, 1, -838.445, 2768.8, 109.934, 2.87521, 0, 0, 0.991143, 0.132799, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010968, 2001925, 1, -838.445, 2768.8, 109.734, 2.87521, 0, 0, 0.991143, 0.132799, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010968, 2001925, 1, -838.445, 2768.8, 109.534, 2.87521, 0, 0, 0.991143, 0.132799, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010969, 2001926, 1, -852.917, 2771.81, 115.124, 2.2783, 0, 0, 0.908279, 0.418365, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010969, 2001926, 1, -852.917, 2771.81, 114.924, 2.2783, 0, 0, 0.908279, 0.418365, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010969, 2001926, 1, -852.917, 2771.81, 114.724, 2.2783, 0, 0, 0.908279, 0.418365, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010970, 2001926, 1, -839.143, 2762.1, 109.011, 3.49724, 0, 0, 0.984231, -0.176889, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010970, 2001926, 1, -839.143, 2762.1, 108.811, 3.49724, 0, 0, 0.984231, -0.176889, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010971, 2006254, 1, -837.839, 2761.72, 108.357, 3.49247, 0, 0, 0.98465, -0.174542, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010971, 2006254, 1, -837.839, 2761.72, 108.357, 3.49247, 0, 0, 0.98465, -0.174542, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010971, 2006254, 1, -837.839, 2761.72, 108.357, 3.49247, 0, 0, 0.98465, -0.174542, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010971, 2006254, 1, -837.839, 2761.72, 108.157, 3.49247, 0, 0, 0.98465, -0.174542, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010971, 2006254, 1, -837.839, 2761.72, 107.957, 3.49247, 0, 0, 0.98465, -0.174542, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010971, 2006254, 1, -837.839, 2761.72, 107.757, 3.49247, 0, 0, 0.98465, -0.174542, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010972, 2006257, 1, -838.472, 2760.33, 109.515, 3.32361, 0, 0, 0.995861, -0.0908842, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010972, 2006257, 1, -838.472, 2760.33, 109.315, 3.32361, 0, 0, 0.995861, -0.0908842, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010972, 2006257, 1, -838.472, 2760.33, 109.115, 3.32361, 0, 0, 0.995861, -0.0908842, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010972, 2006257, 1, -838.472, 2760.33, 108.915, 3.32361, 0, 0, 0.995861, -0.0908842, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010972, 2006257, 1, -838.472, 2760.33, 108.715, 3.32361, 0, 0, 0.995861, -0.0908842, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010973, 2006427, 1, -836.089, 2765.92, 107.738, 2.79033, 0, 0, 0.984616, 0.174731, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010973, 2006427, 1, -836.089, 2765.92, 107.538, 2.79033, 0, 0, 0.984616, 0.174731, 300, 300, 100, 1, 0, 0);
