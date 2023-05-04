REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`) VALUES (5015093, 180322, 229, 46.7312, -259.546, 106.436, 0, 0, 0, 0, 1, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`) VALUES (5015094, 180322, 229, 46.3562, -312.19, 106.5, 3.12665, 0, 0, 0.999972, 0.00747014, 300, 300, 100, 1, 0, 0);

UPDATE item_template SET bonding = 1 WHERE entry IN (50524, 50525);

-- Make Dim Torch have 1 copper sell price so deleting 50+ of them isn't a chore for people leveling Survival
UPDATE item_template SET sell_Price = 1, buy_price = 4 WHERE entry = 6182;