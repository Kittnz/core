DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20180610222235');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20180610222235');
-- Add your query below.

SET @GUID := 1173098; -- (.., 1173099, 1173100)

DELETE a.* FROM `creature_movement` a INNER JOIN `creature` b ON a.`id`=b.`guid` WHERE b.`id`=10411;
DELETE a.* FROM `creature_addon` a INNER JOIN `creature` b ON a.`guid`=b.`guid` WHERE b.`id`=10411;
DELETE FROM `creature` WHERE `id`=10411;

REPLACE INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID + 0, '10411', '329', '0', '0', '3479.973', '-3306.237', '130.4780', '0.104871', '600', '600', '0', '0', '280', '0', '0', '2'),
(@GUID + 1, '10411', '329', '0', '0', '3582.696', '-3465.867', '135.4155', '5.451532', '600', '600', '0', '0', '280', '0', '0', '2'),
(@GUID + 2, '10411', '329', '0', '0', '4067.563', '-3534.449', '122.6773', '2.599249', '600', '600', '0', '0', '280', '0', '0', '2');

SET @POINT := 0;
DELETE FROM `creature_movement` WHERE `id`=@GUID + 0;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(@GUID + 0, @POINT := @POINT + 1, 3496.611, -3304.485, 130.2477, 0, 0, 100),
(@GUID + 0, @POINT := @POINT + 1, 3501.017, -3320.939, 130.1988, 0, 0, 100),
(@GUID + 0, @POINT := @POINT + 1, 3516.886, -3321.310, 131.3028, 0, 0, 100),
(@GUID + 0, @POINT := @POINT + 1, 3533.510, -3325.740, 129.8950, 0, 0, 100),
(@GUID + 0, @POINT := @POINT + 1, 3563.853, -3333.576, 129.3590, 0, 0, 100),
(@GUID + 0, @POINT := @POINT + 1, 3587.316, -3335.419, 127.2169, 0, 0, 100),
(@GUID + 0, @POINT := @POINT + 1, 3555.287, -3343.082, 129.2272, 0, 0, 100),
(@GUID + 0, @POINT := @POINT + 1, 3541.950, -3368.319, 132.0300, 0, 0, 100),
(@GUID + 0, @POINT := @POINT + 1, 3539.138, -3390.615, 132.3763, 0, 0, 100),
(@GUID + 0, @POINT := @POINT + 1, 3546.026, -3421.109, 135.2656, 0, 0, 100),
(@GUID + 0, @POINT := @POINT + 1, 3528.616, -3392.653, 132.3763, 0, 0, 100),
(@GUID + 0, @POINT := @POINT + 1, 3519.140, -3387.130, 132.4560, 0, 0, 100),
(@GUID + 0, @POINT := @POINT + 1, 3493.885, -3381.469, 135.2286, 0, 0, 100),
(@GUID + 0, @POINT := @POINT + 1, 3456.239, -3378.636, 139.5714, 0, 0, 100),
(@GUID + 0, @POINT := @POINT + 1, 3419.620, -3378.933, 141.8746, 0, 0, 100),
(@GUID + 0, @POINT := @POINT + 1, 3456.239, -3378.636, 139.5714, 0, 0, 100),
(@GUID + 0, @POINT := @POINT + 1, 3493.732, -3381.419, 135.2316, 0, 0, 100),
(@GUID + 0, @POINT := @POINT + 1, 3519.140, -3387.130, 132.4560, 0, 0, 100),
(@GUID + 0, @POINT := @POINT + 1, 3528.616, -3392.653, 132.3763, 0, 0, 100),
(@GUID + 0, @POINT := @POINT + 1, 3546.026, -3421.109, 135.2656, 0, 0, 100),
(@GUID + 0, @POINT := @POINT + 1, 3539.138, -3390.615, 132.3763, 0, 0, 100),
(@GUID + 0, @POINT := @POINT + 1, 3541.950, -3368.319, 132.0300, 0, 0, 100),
(@GUID + 0, @POINT := @POINT + 1, 3555.287, -3343.082, 129.2272, 0, 0, 100),
(@GUID + 0, @POINT := @POINT + 1, 3587.316, -3335.419, 127.2169, 0, 0, 100),
(@GUID + 0, @POINT := @POINT + 1, 3563.853, -3333.576, 129.3590, 0, 0, 100),
(@GUID + 0, @POINT := @POINT + 1, 3533.510, -3325.740, 129.8950, 0, 0, 100),
(@GUID + 0, @POINT := @POINT + 1, 3516.886, -3321.310, 131.3028, 0, 0, 100),
(@GUID + 0, @POINT := @POINT + 1, 3501.017, -3320.939, 130.1988, 0, 0, 100),
(@GUID + 0, @POINT := @POINT + 1, 3496.611, -3304.485, 130.2477, 0, 0, 100),
(@GUID + 0, @POINT := @POINT + 1, 3480.393, -3307.106, 130.4128, 0, 0, 100);

SET @POINT := 0;
DELETE FROM `creature_movement` WHERE `id`=@GUID + 1;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(@GUID + 1, @POINT := @POINT + 1, 3602.921, -3488.057, 135.8794, 0, 0, 100),
(@GUID + 1, @POINT := @POINT + 1, 3623.550, -3513.888, 136.9184, 0, 0, 100),
(@GUID + 1, @POINT := @POINT + 1, 3648.388, -3518.862, 136.6696, 0, 0, 100),
(@GUID + 1, @POINT := @POINT + 1, 3665.853, -3494.050, 136.3362, 0, 0, 100),
(@GUID + 1, @POINT := @POINT + 1, 3629.388, -3487.229, 137.5149, 0, 0, 100),
(@GUID + 1, @POINT := @POINT + 1, 3673.813, -3485.689, 135.8256, 0, 0, 100),
(@GUID + 1, @POINT := @POINT + 1, 3713.954, -3482.851, 129.7010, 0, 0, 100),
(@GUID + 1, @POINT := @POINT + 1, 3718.166, -3448.076, 129.3145, 0, 0, 100),
(@GUID + 1, @POINT := @POINT + 1, 3705.293, -3411.265, 132.1460, 0, 0, 100),
(@GUID + 1, @POINT := @POINT + 1, 3685.754, -3379.769, 129.8789, 0, 0, 100),
(@GUID + 1, @POINT := @POINT + 1, 3669.716, -3350.548, 125.2413, 0, 0, 100),
(@GUID + 1, @POINT := @POINT + 1, 3651.337, -3332.349, 123.5366, 0, 0, 100),
(@GUID + 1, @POINT := @POINT + 1, 3673.492, -3309.539, 126.4855, 0, 0, 100),
(@GUID + 1, @POINT := @POINT + 1, 3686.000, -3286.630, 128.0600, 0, 0, 100),
(@GUID + 1, @POINT := @POINT + 1, 3694.174, -3269.902, 127.8214, 0, 0, 100),
(@GUID + 1, @POINT := @POINT + 1, 3705.277, -3253.183, 127.0408, 0, 0, 100),
(@GUID + 1, @POINT := @POINT + 1, 3729.962, -3259.325, 127.9591, 0, 0, 100),
(@GUID + 1, @POINT := @POINT + 1, 3705.277, -3253.183, 127.0408, 0, 0, 100),
(@GUID + 1, @POINT := @POINT + 1, 3694.174, -3269.902, 127.8214, 0, 0, 100),
(@GUID + 1, @POINT := @POINT + 1, 3686.000, -3286.630, 128.0600, 0, 0, 100),
(@GUID + 1, @POINT := @POINT + 1, 3673.492, -3309.539, 126.4855, 0, 0, 100),
(@GUID + 1, @POINT := @POINT + 1, 3651.337, -3332.349, 123.5366, 0, 0, 100),
(@GUID + 1, @POINT := @POINT + 1, 3669.716, -3350.548, 125.2413, 0, 0, 100),
(@GUID + 1, @POINT := @POINT + 1, 3685.754, -3379.769, 129.8789, 0, 0, 100),
(@GUID + 1, @POINT := @POINT + 1, 3705.293, -3411.265, 132.1460, 0, 0, 100),
(@GUID + 1, @POINT := @POINT + 1, 3718.171, -3447.861, 129.3067, 0, 0, 100),
(@GUID + 1, @POINT := @POINT + 1, 3713.954, -3482.851, 129.7010, 0, 0, 100),
(@GUID + 1, @POINT := @POINT + 1, 3673.813, -3485.689, 135.8256, 0, 0, 100),
(@GUID + 1, @POINT := @POINT + 1, 3629.388, -3487.229, 137.5149, 0, 0, 100),
(@GUID + 1, @POINT := @POINT + 1, 3665.853, -3494.050, 136.3362, 0, 0, 100),
(@GUID + 1, @POINT := @POINT + 1, 3648.388, -3518.862, 136.6696, 0, 0, 100),
(@GUID + 1, @POINT := @POINT + 1, 3623.550, -3513.888, 136.9184, 0, 0, 100),
(@GUID + 1, @POINT := @POINT + 1, 3602.921, -3488.057, 135.8794, 0, 0, 100),
(@GUID + 1, @POINT := @POINT + 1, 3578.609, -3461.189, 135.2853, 0, 0, 100);

SET @POINT := 0;
DELETE FROM `creature_movement` WHERE `id` = @GUID + 2;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(@GUID + 2, @POINT := @POINT + 1, 4044.845, -3520.759, 121.6993, 0, 0, 100),
(@GUID + 2, @POINT := @POINT + 1, 4021.720, -3529.522, 122.2696, 0, 0, 100),
(@GUID + 2, @POINT := @POINT + 1, 3997.682, -3556.203, 124.7969, 0, 0, 100),
(@GUID + 2, @POINT := @POINT + 1, 3955.195, -3556.644, 129.8793, 0, 0, 100),
(@GUID + 2, @POINT := @POINT + 1, 3979.817, -3586.936, 127.6629, 0, 0, 100),
(@GUID + 2, @POINT := @POINT + 1, 3999.419, -3604.702, 129.5177, 0, 0, 100),
(@GUID + 2, @POINT := @POINT + 1, 4008.615, -3629.069, 129.3868, 0, 0, 100),
(@GUID + 2, @POINT := @POINT + 1, 3986.416, -3626.187, 130.1212, 0, 0, 100),
(@GUID + 2, @POINT := @POINT + 1, 3963.268, -3642.394, 133.2446, 0, 0, 100),
(@GUID + 2, @POINT := @POINT + 1, 3945.813, -3645.609, 137.4449, 0, 0, 100),
(@GUID + 2, @POINT := @POINT + 1, 3935.039, -3652.638, 139.9641, 0, 0, 100),
(@GUID + 2, @POINT := @POINT + 1, 3905.511, -3672.499, 139.0567, 0, 0, 100),
(@GUID + 2, @POINT := @POINT + 1, 3880.139, -3682.546, 142.2288, 0, 0, 100),
(@GUID + 2, @POINT := @POINT + 1, 3871.972, -3695.018, 142.4928, 0, 0, 100),
(@GUID + 2, @POINT := @POINT + 1, 3860.894, -3677.064, 143.4627, 0, 0, 100),
(@GUID + 2, @POINT := @POINT + 1, 3843.936, -3691.934, 142.8869, 0, 0, 100),
(@GUID + 2, @POINT := @POINT + 1, 3846.652, -3671.873, 144.1723, 0, 0, 100),
(@GUID + 2, @POINT := @POINT + 1, 3834.103, -3652.026, 145.6312, 0, 0, 100),
(@GUID + 2, @POINT := @POINT + 1, 3822.230, -3633.550, 146.1223, 0, 0, 100),
(@GUID + 2, @POINT := @POINT + 1, 3795.741, -3609.456, 145.2505, 0, 0, 100),
(@GUID + 2, @POINT := @POINT + 1, 3823.748, -3625.020, 145.5289, 0, 0, 100),
(@GUID + 2, @POINT := @POINT + 1, 3843.980, -3604.263, 144.5417, 0, 0, 100),
(@GUID + 2, @POINT := @POINT + 1, 3865.565, -3576.687, 140.8942, 0, 0, 100),
(@GUID + 2, @POINT := @POINT + 1, 3874.042, -3548.795, 137.3683, 0, 0, 100),
(@GUID + 2, @POINT := @POINT + 1, 3887.829, -3545.449, 137.7642, 0, 0, 100),
(@GUID + 2, @POINT := @POINT + 1, 3874.042, -3548.795, 137.3683, 0, 0, 100),
(@GUID + 2, @POINT := @POINT + 1, 3865.565, -3576.687, 140.8942, 0, 0, 100),
(@GUID + 2, @POINT := @POINT + 1, 3843.980, -3604.263, 144.5417, 0, 0, 100),
(@GUID + 2, @POINT := @POINT + 1, 3823.748, -3625.020, 145.5289, 0, 0, 100),
(@GUID + 2, @POINT := @POINT + 1, 3843.980, -3604.263, 144.5417, 0, 0, 100),
(@GUID + 2, @POINT := @POINT + 1, 3865.565, -3576.687, 140.8942, 0, 0, 100),
(@GUID + 2, @POINT := @POINT + 1, 3874.042, -3548.795, 137.3683, 0, 0, 100),
(@GUID + 2, @POINT := @POINT + 1, 3887.829, -3545.449, 137.7642, 0, 0, 100),
(@GUID + 2, @POINT := @POINT + 1, 3874.042, -3548.795, 137.3683, 0, 0, 100),
(@GUID + 2, @POINT := @POINT + 1, 3865.565, -3576.687, 140.8942, 0, 0, 100),
(@GUID + 2, @POINT := @POINT + 1, 3843.980, -3604.263, 144.5417, 0, 0, 100),
(@GUID + 2, @POINT := @POINT + 1, 3823.748, -3625.020, 145.5289, 0, 0, 100),
(@GUID + 2, @POINT := @POINT + 1, 3795.741, -3609.456, 145.2505, 0, 0, 100),
(@GUID + 2, @POINT := @POINT + 1, 3822.230, -3633.550, 146.1223, 0, 0, 100),
(@GUID + 2, @POINT := @POINT + 1, 3834.079, -3651.989, 145.6344, 0, 0, 100),
(@GUID + 2, @POINT := @POINT + 1, 3846.652, -3671.873, 144.1723, 0, 0, 100),
(@GUID + 2, @POINT := @POINT + 1, 3843.936, -3691.934, 142.8869, 0, 0, 100),
(@GUID + 2, @POINT := @POINT + 1, 3860.894, -3677.064, 143.4627, 0, 0, 100),
(@GUID + 2, @POINT := @POINT + 1, 3871.972, -3695.018, 142.4928, 0, 0, 100),
(@GUID + 2, @POINT := @POINT + 1, 3880.139, -3682.546, 142.2288, 0, 0, 100),
(@GUID + 2, @POINT := @POINT + 1, 3905.511, -3672.499, 139.0567, 0, 0, 100),
(@GUID + 2, @POINT := @POINT + 1, 3935.039, -3652.638, 139.9641, 0, 0, 100),
(@GUID + 2, @POINT := @POINT + 1, 3945.559, -3645.736, 137.5213, 0, 0, 100),
(@GUID + 2, @POINT := @POINT + 1, 3963.268, -3642.394, 133.2446, 0, 0, 100),
(@GUID + 2, @POINT := @POINT + 1, 3986.416, -3626.187, 130.1212, 0, 0, 100),
(@GUID + 2, @POINT := @POINT + 1, 4008.615, -3629.069, 129.3868, 0, 0, 100),
(@GUID + 2, @POINT := @POINT + 1, 3999.419, -3604.702, 129.5177, 0, 0, 100),
(@GUID + 2, @POINT := @POINT + 1, 3979.817, -3586.936, 127.6629, 0, 0, 100),
(@GUID + 2, @POINT := @POINT + 1, 3955.195, -3556.644, 129.8793, 0, 0, 100),
(@GUID + 2, @POINT := @POINT + 1, 3997.682, -3556.203, 124.7969, 0, 0, 100),
(@GUID + 2, @POINT := @POINT + 1, 4021.720, -3529.522, 122.2696, 0, 0, 100),
(@GUID + 2, @POINT := @POINT + 1, 4044.845, -3520.759, 121.6993, 0, 0, 100),
(@GUID + 2, @POINT := @POINT + 1, 4067.240, -3534.060, 122.5621, 0, 0, 100);

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
