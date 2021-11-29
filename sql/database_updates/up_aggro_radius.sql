-- Aggro range for mobs in starting zones is lower than normal.
UPDATE `creature_template` SET `detection_range`=12 WHERE `entry` IN (6, 38, 69, 80, 103, 257, 299, 704, 705, 706, 707, 708, 724, 808, 946, 1501, 1502, 1504, 1505, 1506, 1507, 1508, 1509, 1512, 1513, 1667, 1688, 1890, 1916, 1917, 1918, 1919, 1984, 1985, 1986, 1988, 1989, 1994, 2031, 2032, 2952, 2953, 2954, 2955, 2961, 2966, 3098, 3101, 3102, 3124, 3183, 3229, 3281, 3300, 8554);
-- up by 2 for Twow, Classic is baby.
UPDATE `creature_template` SET `detection_range`=18 WHERE `detection_range`=16 && `rank`=0;
