-- Fix vanilla spawns deleted or duplicated by gamemasters.
DELETE FROM `creature` WHERE `guid` IN (2571678, 2571689, 2571749, 2571750, 2571751);
REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`) VALUES (2173, 587, 694, 697, 0, 0, -12003.4, 326.332, 2.15021, 3.45434, 300, 300, 0, 100, 100, 0, 0, 0);
REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`) VALUES (15678, 2386, 0, 0, 0, 0, -691.709, -605.515, 27.9243, 2.15873, 300, 300, 5, 100, 0, 1, 0, 0);
REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`) VALUES (15861, 2356, 0, 0, 0, 0, -717.341, -307.902, 18.2617, 0.280982, 300, 300, 10, 100, 0, 1, 0, 0);
REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`) VALUES (15929, 2386, 0, 0, 0, 0, -677.245, -593.36, 29.3061, 4.33442, 300, 300, 10, 100, 0, 1, 0, 0);
REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`) VALUES (45436, 1842, 0, 0, 0, 0, 2942.58, -1390.09, 167.421, 4.2586, 3600, 3600, 0, 100, 100, 0, 1, 0);
