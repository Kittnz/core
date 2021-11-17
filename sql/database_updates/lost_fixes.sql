UPDATE `creature` SET `position_x`=-6946.937, `position_y`=-3944.356, `position_z`=32.399, `movement_type`=1, `wander_distance`=8 WHERE `guid`=51781;
DELETE FROM `creature_addon` WHERE `guid`=51781;
REPLACE INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (3909, 8, 3909, 0, 0, 0, 0);
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES (1914, 2567);
UPDATE `gossip_menu` SET `condition_id`=3909 WHERE `entry`=1914 && `text_id`=2568;
-- Aggro range for mobs in starting zones is lower than normal.
UPDATE `creature_template` SET `detection_range`=8 WHERE `entry` IN (6, 38, 69, 80, 103, 257, 299, 704, 705, 706, 707, 708, 724, 808, 946, 1501, 1502, 1504, 1505, 1506, 1507, 1508, 1509, 1512, 1513, 1667, 1688, 1890, 1916, 1917, 1918, 1919, 1984, 1985, 1986, 1988, 1989, 1994, 2031, 2032, 2952, 2953, 2954, 2955, 2961, 2966, 3098, 3101, 3102, 3124, 3183, 3229, 3281, 3300, 8554);
-- Aggro range for most mobs in classic is around 3-4 yards lower than our current default.
UPDATE `creature_template` SET `detection_range`=16 WHERE `detection_range`=20 && `rank`=0;