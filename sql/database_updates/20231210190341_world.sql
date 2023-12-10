-- Delete all herbs and ores from Alterac Valley.
DELETE FROM `pool_gameobject` WHERE `guid` IN (SELECT `guid` FROM `gameobject` WHERE `map`=30 && `id` IN (176589, 176639, 1734, 181109, 176638, 176588, 2040, 176645, 176640, 175404, 324, 176643, 2047, 2044));
DELETE FROM `gameobject` WHERE `map`=30 && `id` IN (176589, 176639, 1734, 181109, 176638, 176588, 2040, 176645, 176640, 175404, 324, 176643, 2047, 2044);

-- Delete all fish from Alterac Valley.
DELETE FROM `fishing_loot_template` WHERE `entry` IN (2597, 2817, 2957, 2958, 2959, 2960, 2961, 2962, 2963, 2964, 2977, 2978, 3017, 3057, 3058, 3297, 3298, 3299, 3300, 3301, 3302, 3303, 3304, 3305, 3306, 3318, 3337, 3338);
