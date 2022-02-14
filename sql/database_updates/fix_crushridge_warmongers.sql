-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1033
delete from creature where id = 2287;
replace into creature (guid, id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, movement_type) values 
(17595, 2287, 417.026, -245.725, 157.338, 0.324169, 300, 300, 5, 100, 1),
(17064, 2287, 455.005, -282.813, 159.913, 4.07177, 300, 300, 5, 100, 1),
(17061, 2287, 421.153, -290.814, 163.586, 4.51971, 300, 300, 5, 100, 1),
(17060, 2287, 388.325, -315.34, 165.099, 3.85399, 300, 300, 5, 100, 1),
(17042, 2287, 482.689, -313.23, 156.169, 2.41979, 300, 300, 5, 100, 1),
(17039, 2287, 507.783, -253.631, 151.366, 0.84722, 300, 300, 2, 100, 1),
(17034, 2287, 547.213, -216.64, 147.784, 2.24502, 300, 300, 5, 100, 1),
(17033, 2287, 583.838, -247.915, 147.581, 0.690758, 300, 300, 5, 100, 1),
(16983, 2287, 486.128, -219.844, 152.605, 1.02021, 300, 300, 2, 100, 1),
(16982, 2287, 473.481, -231.813, 152.605, 2.36465, 300, 300, 2, 100, 1),
(16981, 2287, 494.552, -218.143, 161.426, 5.6382, 300, 300, 2, 100, 1),
(16980, 2287, 483.504, -253.675, 176.631, 1.84894, 300, 300, 2, 100, 1),
(16979, 2287, 462.705, -221.23, 176.631, 4.15086, 300, 300, 2, 100, 1),
(16977, 2287, 519.876, -233.617, 176.631, 3.59532, 300, 300, 2, 100, 1),
(16978, 2287, 505.169, -198.739, 176.631, 4.24553, 300, 300, 2, 100, 1),
(16976, 2287, 474.36, -229.138, 161.426, 5.95561, 300, 300, 2, 100, 1),
(16974, 2287, 506.305, -212.679, 161.426, 3.29374, 300, 300, 2, 100, 1),
(16957, 2287, 515.167, -222.231, 152.605, 2.72643, 300, 300, 2, 100, 1),
(16955, 2287, 495.991, -233.119, 151.106, 5.74213, 300, 300, 2, 100, 1),
(16956, 2287, 523.455, -235.097, 152.605, 6.03959, 300, 300, 2, 100, 1),
(16954, 2287, 463.668, -216.055, 152.605, 4.9832, 300, 300, 2, 100, 1),
(16769, 2287, 493.253, -234.984, 166.528, 2.58671, 300, 300, 2, 100, 1),
(16768, 2287, 499.138, -231.656, 166.528, 1.6057, 300, 300, 2, 100, 1),
(16747, 2287, 511.345, -351.439, 163.295, 3.89823, 300, 300, 5, 100, 1),
(16731, 2287, 507.03, -212.483, 152.605, 2.97482, 300, 300, 2, 100, 1),
(16711, 2287, 502.344, -195.077, 152.605, 4.88692, 300, 300, 2, 100, 1);

UPDATE `creature_ai_events` SET `event_chance` = 30, `event_flags` = 0, `event_param1` = 4100 WHERE `id` = 228703;
