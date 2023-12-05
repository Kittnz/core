delete from npc_vendor where entry = 80958;
delete from creature where id = 80958;
delete from creature where guid = 2561158;

-- Fix some tabard's prices:

UPDATE `item_template` SET `buy_price` = 50000, `sell_price` = 15000 WHERE `entry` = 81089;
UPDATE `item_template` SET `buy_price` = 50000, `sell_price` = 15000 WHERE `entry` = 80316;

-- Note that all Stratholme, Black Morass, Scholomance, and a few other dungeons already had a 7 day respawn timer, compared to the 10 hour or 12 hour of older vanilla WoW dungeons, and Zul'Farrak trash already had a 5 hour respawn compared to the 2 hour of every other vanilla WoW dungeon. Using the "latest" dungeons as the standard and Zul'Farrak as the standard for trash, these queries standardize all dungeon trash at 5 hours respawn time and all dungeon bosses at 7 days respawn time. From this point forward, this is the standard we will use for non-raid Turtle WoW dungeon content.

-- Where rare spawn bosses were pooled, discretion was used based on existing spawn timers: If the non-rare mob had a 2h timer, it went to 5h, while the rare was set to 7 days as per its long respawn. If the non-rare mob had less than a 2h timer, the timer was left alone (it is assumed this specific rare was intended to be farmed, like the 1h timer on the Tormented Officer in SFK pooled with Deathsworn Captain). If the non-rare mob had an uncharacteristically high timer that matched the boss, the non-rare mob also had its timer set to 7d along with the rare it is pooled with.

-- Set all dungeon trash respawns to 5 hours, except special spawns / patrols

UPDATE creature SET spawntimesecsmin = 18000, spawntimesecsmax = 18000 WHERE
map IN (33, 34, 35, 36, 43, 47, 48, 70, 90, 109, 129, 189, 209, 229, 230, 269, 289, 329, 389, 429, 800, 802, 808, 815)
AND id NOT IN (883, 2110, 2914, 3835, 4075, 4076, 4308, 6426, 6427, 7172, 8901, 9701, 9956, 10221, 10257, 10409, 10411, 10799, 11142, 11494, 13477, 13876, 14361, 14386, 16044, 16045, 16046, 16047, 16048, 16079, 16100, 61643, 160014)
AND guid NOT IN (54205, 54227, 54228, 134517, 1177468, 1177470, 1177471);

-- Set all boss and boss add respawns to 7 days

UPDATE creature SET spawntimesecsmin = 604800, spawntimesecsmax = 604800 WHERE
id IN (639, 642, 643, 644, 645, 646, 647, 1663, 1666, 1696, 1716, 1717, 1720, 1763, 1853, 2748, 3586, 3653, 3669, 3670, 3671, 3673, 3674, 3678, 3679, 3866, 3868, 3872, 3886, 3887, 3914, 3914, 3927, 3974, 3975, 3976, 3977, 3983, 4274, 4275, 4278, 4279, 4420, 4421, 4422, 4424, 4425, 4428, 4438, 4508, 4542, 4543, 4829, 4830, 4831, 4832, 4842, 4854, 4887, 5708, 5709, 5710, 5711, 5712, 5713, 5714, 5715, 5716, 5717, 5719, 5720, 5721, 5722, 5775, 5912, 6168, 6228, 6229, 6235, 6243, 6487, 6488, 6489, 6490, 6906, 6907, 6908, 6910, 7023, 7079, 7206, 7228, 7267, 7271, 7272, 7273, 7274, 7275, 7291, 7343, 7354, 7355, 7356, 7357, 7358, 7604, 7605, 7606, 7607, 7608, 7795, 7796, 7797, 7800, 7850, 7998, 8127, 8443, 8516, 8567, 8580, 8923, 8929, 9016, 9017, 9018, 9019, 9024, 9025, 9027, 9028, 9029, 9030, 9031, 9032, 9033, 9034, 9035, 9036, 9037, 9038, 9039, 9040, 9041, 9042, 9056, 9156, 9196, 9217, 9218, 9219, 9236, 9237, 9319, 9476, 9499, 9500, 9502, 9503, 9537, 9541, 9543, 9568, 9596, 9718, 9736, 9816, 9938, 10043, 10080, 10081, 10082, 10091, 10162, 10220, 10264, 10268, 10316, 10339, 10363, 10376, 10393, 10408, 10429, 10430, 10432, 10433, 10435, 10436, 10437, 10438, 10439, 10440, 10502, 10503, 10504, 10505, 10506, 10507, 10508, 10509, 10516, 10558, 10596, 10808, 10809, 10811, 10812, 10813, 10814, 10899, 10901, 10917, 10997, 11032, 11082, 11143, 11261, 11467, 11486, 11487, 11488, 11489, 11490, 11491, 11492, 11496, 11501, 11517, 11518, 11519, 11520, 11622, 12201, 12203, 12225, 12236, 12237, 12242, 12243, 12258, 12902, 13280, 13282, 13596, 13601, 13743, 14308, 14321, 14322, 14323, 14324, 14325, 14326, 14327, 14338, 14349, 14354, 14506, 14516, 14682, 14684, 14686, 14690, 14693, 14695, 16042, 16049, 16050, 16051, 16052, 16053, 16054, 16055, 16058, 16059, 16080, 16095, 16097, 16101, 16102, 16118, 60715, 60734, 60735, 60736, 60737, 60829, 61139, 61263, 61264, 61316, 61418, 61419, 61420, 61421, 61422, 61423, 61575, 61604, 61605, 65113, 65116, 65122, 65124, 65125, 80850, 80851, 80852, 80853, 80854, 91916, 91917, 91919, 91920, 91928, 91929, 92105, 92106, 92107, 92108, 92109, 92110, 92111, 92127, 92129, 92129, 92935, 93107)
OR guid IN (13352, 13353, 16238, 16239, 16240, 16241, 16293, 16299, 26121, 27381, 27387, 27446, 27492, 27494, 27529, 27530, 27531, 40089, 40090, 40091, 43514, 43515, 43550, 43551, 45955, 45956, 45958, 45959, 46269, 46271, 46272, 46273, 46281, 46297, 46298, 46299, 46300, 46301, 46302, 46309, 46607, 46608, 46610, 46611, 46612, 47251, 47772, 47773, 48862, 48864, 53805, 53806, 54675, 54676, 79091, 79165, 79167, 79334, 79335, 79368, 79383, 84082, 87490, 134517, 1068505, 1172615, 1172616, 1245940);
