DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190408000617');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190408000617');
-- Add your query below.

-- TODO: make Okla speak to her farther. I don't know how it works in vMaNGOS DB.
-- Event description: https://wowwiki.fandom.com/wiki/Okla
-- I also used custom ID range, since the original entry was taken by something else.
replace into `broadcast_text` (`ID`, language, `MaleText`) values
(90200, 1, 'Can I go collect more rocks for my necklace, Papa?'),
(90201, 1, 'Dabu! I will be careful Papa!'),
(90202, 1, 'Ooohh... This rock is nice and colorful. Let\'s see if I can find more like it...'),
(90203, 1, 'Hmm... That rock is nice, but too small.'),
(90204, 1, 'This is a shiney rock. I\'ll put it in my bucket. Ok, I just need a few more...'),
(90205, 1, 'I bet my friend Gruk would like this rock for the spear he is making! It\'s very sharp... I hope he likes it.'),
(90206, 1, 'There... That should be enough rocks to make a necklace. I should probably get home now anyway.');
replace into `npc_text` (`ID`, `BroadcastTextID0`) values 
(14873, 29000),
(14873, 29001),
(14873, 29002),
(14873, 29003),
(14873, 29004),
(14873, 29005),
(14873, 29006);

replace into creature_movement (id, point, position_x, position_y, position_z) values
(13179, 1, 270.076, -3036.6, 97.6192),
(13179, 2, 262.171, -3043.45, 96.5053),
(13179, 3, 251.328, -3055.55, 96.1454),
(13179, 4, 246.888, -3070.92, 95.2793),
(13179, 5, 242.449, -3081.3, 91.82),
(13179, 6, 232.826, -3106.67, 93.3165),
(13179, 7, 226.41, -3120.76, 93.3475),
(13179, 8, 213.921, -3151.01, 91.2851),
(13179, 9, 221.681, -3147.9, 91.374),
(13179, 10, 214.549, -3134.64, 91.9876),
(13179, 11, 210.931, -3139.95, 91.6514),
(13179, 12, 214.059, -3139.64, 91.7),
(13179, 13, 213.426, -3131.78, 92.1297),
(13179, 14, 220.194, -3140.72, 91.7517),
(13179, 15, 225.395, -3139.1, 92.0847),
(13179, 16, 220.857, -3140.83, 91.7662),
(13179, 17, 218.769, -3132.79, 92.4983),
(13179, 18, 226.814, -3137.56, 92.169),
(13179, 19, 225.496, -3132.89, 92.7818),
(13179, 20, 213.603, -3148.39, 91.4489),
(13179, 21, 219.055, -3151.2, 91.2139),
(13179, 22, 220.469, -3141.93, 91.6344),
(13179, 23, 214.852, -3148.32, 91.4558),
(13179, 24, 218.373, -3144.99, 91.5714),
(13179, 25, 224.091, -3149.02, 91.2304),
(13179, 26, 224.591, -3145.02, 91.4801),
(13179, 27, 219.022, -3147.38, 91.4735),
(13179, 28, 220.167, -3139.75, 91.8958),
(13179, 29, 225.033, -3133.14, 92.8028),
(13179, 30, 222.021, -3128.32, 93.0422),
(13179, 31, 228.338, -3126.35, 92.9595),
(13179, 32, 229.495, -3129.22, 92.6818),
(13179, 33, 232.12, -3128.11, 92.5988),
(13179, 34, 227.003, -3137.58, 92.1461),
(13179, 35, 220.002, -3132.38, 92.659),
(13179, 36, 225.874, -3102.36, 93.6962),
(13179, 37, 233.086, -3085.54, 91.6788),
(13179, 38, 235.152, -3069.81, 91.8706),
(13179, 39, 239.821, -3061.03, 95.4022),
(13179, 40, 256.123, -3047.91, 96.2473),
(13179, 41, 267.05, -3039.04, 96.9212),
(13179, 42, 271.093, -3035.98, 97.6501),
(13179, 43, 278.975, -3029.68, 97.3919),
(13179, 44, 280.125, -3029.01, 97.3502);

UPDATE `creature` SET `MovementType`='2' WHERE (`guid`='13179');

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
