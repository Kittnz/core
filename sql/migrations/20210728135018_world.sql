DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20210728135018');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20210728135018');
-- Add your query below.


-- Add missing Coral Shark spawn in Swamp of Sorrows coast.
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `wander_distance`, `movement_type`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES (75065, 5434, 0, -10034.9, -4648.66, -49.2208, 0.0410688, 0, 2, 900, 900);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(75065, 1, -10017.700195, -4647.950195, -49.220798, 100.000000, 0, 0.000000, 0),
(75065, 2, -10003.799805, -4654.640137, -49.220798, 100.000000, 0, 0.000000, 0),
(75065, 3, -9981.580078, -4663.930176, -49.189701, 100.000000, 0, 0.000000, 0),
(75065, 4, -9950.290039, -4671.729980, -48.152802, 100.000000, 0, 0.000000, 0),
(75065, 5, -9929.519531, -4683.879883, -48.958000, 100.000000, 0, 0.000000, 0),
(75065, 6, -9912.660156, -4695.180176, -49.184101, 100.000000, 0, 0.000000, 0),
(75065, 7, -9898.559570, -4702.299805, -46.612099, 100.000000, 0, 0.000000, 0),
(75065, 8, -9872.570313, -4694.799805, -49.001900, 100.000000, 0, 0.000000, 0),
(75065, 9, -9854.299805, -4686.149902, -49.240299, 100.000000, 0, 0.000000, 0),
(75065, 10, -9838.530273, -4682.979980, -49.246101, 100.000000, 0, 0.000000, 0),
(75065, 11, -9814.080078, -4695.939941, -49.246101, 100.000000, 0, 0.000000, 0),
(75065, 12, -9796.849609, -4706.589844, -49.285801, 100.000000, 0, 0.000000, 0),
(75065, 13, -9791.759766, -4729.250000, -49.218201, 100.000000, 0, 0.000000, 0),
(75065, 14, -9794.230469, -4713.250000, -49.271801, 100.000000, 0, 0.000000, 0),
(75065, 15, -9807.459961, -4700.009766, -49.257099, 100.000000, 0, 0.000000, 0),
(75065, 16, -9831.669922, -4685.290039, -49.246101, 100.000000, 0, 0.000000, 0),
(75065, 17, -9846.910156, -4684.279785, -49.246101, 100.000000, 0, 0.000000, 0),
(75065, 18, -9865.589844, -4691.629883, -49.210300, 100.000000, 0, 0.000000, 0),
(75065, 19, -9893.549805, -4703.189941, -47.411701, 100.000000, 0, 0.000000, 0),
(75065, 20, -9908.000000, -4697.790039, -48.582500, 100.000000, 0, 0.000000, 0),
(75065, 21, -9924.929688, -4686.919922, -49.091801, 100.000000, 0, 0.000000, 0),
(75065, 22, -9945.250000, -4673.660156, -48.080601, 100.000000, 0, 0.000000, 0),
(75065, 23, -9976.330078, -4665.549805, -49.099602, 100.000000, 0, 0.000000, 0),
(75065, 24, -9995.419922, -4658.870117, -49.211899, 100.000000, 0, 0.000000, 0),
(75065, 25, -10009.200195, -4650.600098, -49.220798, 100.000000, 0, 0.000000, 0),
(75065, 26, -10032.400391, -4648.549805, -49.220798, 100.000000, 0, 0.000000, 0),
(75065, 27, -10053.400391, -4659.279785, -49.220798, 100.000000, 0, 0.000000, 0),
(75065, 28, -10088.799805, -4662.189941, -49.209202, 100.000000, 0, 0.000000, 0),
(75065, 29, -10113.099609, -4674.930176, -49.237301, 100.000000, 0, 0.000000, 0),
(75065, 30, -10131.500000, -4683.069824, -49.276299, 100.000000, 0, 0.000000, 0),
(75065, 31, -10151.200195, -4681.229980, -49.285099, 100.000000, 0, 0.000000, 0),
(75065, 32, -10179.099609, -4682.720215, -49.303799, 100.000000, 0, 0.000000, 0),
(75065, 33, -10196.700195, -4691.399902, -49.307899, 100.000000, 0, 0.000000, 0),
(75065, 34, -10211.599609, -4705.120117, -49.231998, 100.000000, 0, 0.000000, 0),
(75065, 35, -10242.400391, -4709.600098, -48.473900, 100.000000, 0, 0.000000, 0),
(75065, 36, -10266.200195, -4705.850098, -48.416599, 100.000000, 0, 0.000000, 0),
(75065, 37, -10293.799805, -4699.000000, -48.426998, 100.000000, 0, 0.000000, 0),
(75065, 38, -10321.099609, -4694.149902, -48.795399, 100.000000, 0, 0.000000, 0),
(75065, 39, -10301.099609, -4697.560059, -48.505901, 100.000000, 0, 0.000000, 0),
(75065, 40, -10273.599609, -4704.279785, -48.385101, 100.000000, 0, 0.000000, 0),
(75065, 41, -10249.799805, -4708.830078, -48.405499, 100.000000, 0, 0.000000, 0),
(75065, 42, -10217.400391, -4708.939941, -49.152500, 100.000000, 0, 0.000000, 0),
(75065, 43, -10202.500000, -4696.220215, -49.290600, 100.000000, 0, 0.000000, 0),
(75065, 44, -10189.700195, -4686.479980, -49.307899, 100.000000, 0, 0.000000, 0),
(75065, 45, -10158.400391, -4681.180176, -49.288799, 100.000000, 0, 0.000000, 0),
(75065, 46, -10138.500000, -4683.870117, -49.285099, 100.000000, 0, 0.000000, 0),
(75065, 47, -10119.400391, -4678.609863, -49.248699, 100.000000, 0, 0.000000, 0),
(75065, 48, -10099.200195, -4665.410156, -49.214802, 100.000000, 0, 0.000000, 0),
(75065, 49, -10063.900391, -4662.399902, -49.218601, 100.000000, 0, 0.000000, 0),
(75065, 50, -10039.500000, -4649.850098, -49.220798, 100.000000, 0, 0.000000, 0);

-- Add missing Coral Shark spawn in Swamp of Sorrows coast.
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `wander_distance`, `movement_type`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES (75066, 5434, 0, -9540.26, -4662.27, -48.3184, 0.902437, 0, 2, 900, 900);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(75066, 1, -9540.259766, -4662.270020, -48.318401, 100.000000, 0, 0.000000, 0),
(75066, 2, -9510.950195, -4663.540039, -49.085400, 100.000000, 0, 0.000000, 0),
(75066, 3, -9502.679688, -4656.359863, -49.218201, 100.000000, 0, 0.000000, 0),
(75066, 4, -9484.780273, -4625.729980, -48.360600, 100.000000, 0, 0.000000, 0),
(75066, 5, -9474.860352, -4617.870117, -48.615501, 100.000000, 0, 0.000000, 0),
(75066, 6, -9453.219727, -4604.259766, -45.402302, 100.000000, 0, 0.000000, 0),
(75066, 7, -9448.900391, -4584.549805, -38.860500, 100.000000, 0, 0.000000, 0),
(75066, 8, -9450.660156, -4599.799805, -44.029499, 100.000000, 0, 0.000000, 0),
(75066, 9, -9468.339844, -4614.029785, -48.123402, 100.000000, 0, 0.000000, 0),
(75066, 10, -9478.849609, -4620.000000, -48.531601, 100.000000, 0, 0.000000, 0),
(75066, 11, -9501.040039, -4653.209961, -49.171902, 100.000000, 0, 0.000000, 0),
(75066, 12, -9504.490234, -4660.540039, -49.218201, 100.000000, 0, 0.000000, 0),
(75066, 13, -9534.629883, -4662.529785, -48.344101, 100.000000, 0, 0.000000, 0),
(75066, 14, -9549.950195, -4674.560059, -48.088200, 100.000000, 0, 0.000000, 0),
(75066, 15, -9567.660156, -4705.629883, -46.216900, 100.000000, 0, 0.000000, 0),
(75066, 16, -9565.929688, -4723.819824, -48.516602, 100.000000, 0, 0.000000, 0),
(75066, 17, -9574.320313, -4754.109863, -45.157001, 100.000000, 0, 0.000000, 0),
(75066, 18, -9573.150391, -4773.850098, -45.308498, 100.000000, 0, 0.000000, 0),
(75066, 19, -9570.629883, -4793.899902, -46.068501, 100.000000, 0, 0.000000, 0),
(75066, 20, -9568.099609, -4809.890137, -47.127102, 100.000000, 0, 0.000000, 0),
(75066, 21, -9566.790039, -4822.009766, -47.999298, 100.000000, 0, 0.000000, 0),
(75066, 22, -9570.669922, -4837.490234, -48.782001, 100.000000, 0, 0.000000, 0),
(75066, 23, -9579.769531, -4850.709961, -49.511002, 100.000000, 0, 0.000000, 0),
(75066, 24, -9595.700195, -4862.640137, -48.984798, 100.000000, 0, 0.000000, 0),
(75066, 25, -9610.889648, -4861.850098, -47.826801, 100.000000, 0, 0.000000, 0),
(75066, 26, -9628.040039, -4851.810059, -49.065399, 100.000000, 0, 0.000000, 0),
(75066, 27, -9636.570313, -4843.270020, -49.518002, 100.000000, 0, 0.000000, 0),
(75066, 28, -9641.530273, -4823.970215, -49.411598, 100.000000, 0, 0.000000, 0),
(75066, 29, -9642.230469, -4819.990234, -49.353401, 100.000000, 0, 0.000000, 0),
(75066, 30, -9660.740234, -4805.979980, -49.303501, 100.000000, 0, 0.000000, 0),
(75066, 31, -9680.089844, -4800.959961, -49.088001, 100.000000, 0, 0.000000, 0),
(75066, 32, -9699.870117, -4802.750000, -47.313999, 100.000000, 0, 0.000000, 0),
(75066, 33, -9719.019531, -4798.740234, -49.115799, 100.000000, 0, 0.000000, 0),
(75066, 34, -9733.330078, -4791.370117, -49.306599, 100.000000, 0, 0.000000, 0),
(75066, 35, -9741.429688, -4778.419922, -49.285801, 100.000000, 0, 0.000000, 0),
(75066, 36, -9750.400391, -4755.830078, -49.311501, 100.000000, 0, 0.000000, 0),
(75066, 37, -9751.780273, -4752.029785, -49.316601, 100.000000, 0, 0.000000, 0),
(75066, 38, -9774.500000, -4735.790039, -49.303600, 100.000000, 0, 0.000000, 0),
(75066, 39, -9780.610352, -4732.240234, -49.260700, 100.000000, 0, 0.000000, 0),
(75066, 40, -9798.129883, -4722.020020, -49.221001, 100.000000, 0, 0.000000, 0),
(75066, 41, -9809.750000, -4706.020020, -49.248798, 100.000000, 0, 0.000000, 0),
(75066, 42, -9829.849609, -4685.799805, -49.246101, 100.000000, 0, 0.000000, 0),
(75066, 43, -9814.750000, -4699.310059, -49.256500, 100.000000, 0, 0.000000, 0),
(75066, 44, -9803.679688, -4716.140137, -49.229401, 100.000000, 0, 0.000000, 0),
(75066, 45, -9787.809570, -4727.919922, -49.218899, 100.000000, 0, 0.000000, 0),
(75066, 46, -9780.870117, -4732.069824, -49.257599, 100.000000, 0, 0.000000, 0),
(75066, 47, -9755.889648, -4745.450195, -49.315102, 100.000000, 0, 0.000000, 0),
(75066, 48, -9751.839844, -4751.819824, -49.316601, 100.000000, 0, 0.000000, 0),
(75066, 49, -9744.440430, -4770.549805, -49.273602, 100.000000, 0, 0.000000, 0),
(75066, 50, -9738.759766, -4785.709961, -49.319302, 100.000000, 0, 0.000000, 0),
(75066, 51, -9722.900391, -4797.029785, -49.236301, 100.000000, 0, 0.000000, 0),
(75066, 52, -9707.769531, -4802.649902, -48.280800, 100.000000, 0, 0.000000, 0),
(75066, 53, -9688.549805, -4800.589844, -48.617199, 100.000000, 0, 0.000000, 0),
(75066, 54, -9668.740234, -4803.049805, -49.241199, 100.000000, 0, 0.000000, 0),
(75066, 55, -9647.459961, -4814.129883, -49.303501, 100.000000, 0, 0.000000, 0),
(75066, 56, -9642.299805, -4819.549805, -49.346001, 100.000000, 0, 0.000000, 0),
(75066, 57, -9639.360352, -4835.500000, -49.547699, 100.000000, 0, 0.000000, 0),
(75066, 58, -9634.190430, -4845.990234, -49.380100, 100.000000, 0, 0.000000, 0),
(75066, 59, -9618.599609, -4858.640137, -48.657398, 100.000000, 0, 0.000000, 0),
(75066, 60, -9603.599609, -4863.339844, -48.225899, 100.000000, 0, 0.000000, 0),
(75066, 61, -9586.089844, -4856.180176, -48.778198, 100.000000, 0, 0.000000, 0),
(75066, 62, -9572.620117, -4841.470215, -48.936501, 100.000000, 0, 0.000000, 0),
(75066, 63, -9567.139648, -4826.140137, -48.055901, 100.000000, 0, 0.000000, 0),
(75066, 64, -9567.540039, -4814.270020, -47.421398, 100.000000, 0, 0.000000, 0),
(75066, 65, -9570.000000, -4798.319824, -46.228901, 100.000000, 0, 0.000000, 0),
(75066, 66, -9572.120117, -4781.290039, -45.447498, 100.000000, 0, 0.000000, 0),
(75066, 67, -9574.879883, -4762.270020, -45.115898, 100.000000, 0, 0.000000, 0),
(75066, 68, -9566.629883, -4731.689941, -48.296501, 100.000000, 0, 0.000000, 0),
(75066, 69, -9568.629883, -4712.319824, -47.364799, 100.000000, 0, 0.000000, 0),
(75066, 70, -9554.240234, -4681.049805, -46.602901, 100.000000, 0, 0.000000, 0),
(75066, 71, -9542.459961, -4665.060059, -48.191200, 100.000000, 0, 0.000000, 0);


-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
