-- Respawn timers:
-- Gravelsnout Digger should respawn in 5 minutes:
UPDATE `creature` SET `spawntimesecsmin` = 300, `spawntimesecsmax` = 300 WHERE `id` = 4113;

-- Sputtervalve Conductor should respawn faster:
UPDATE `gameobject` SET `spawntimesecsmin` = 5, `spawntimesecsmax` = 5 WHERE `guid` = 5011101;

-- Smuggled Gunpowder:
UPDATE `gameobject` SET `spawntimesecsmin` = 5, `spawntimesecsmax` = 5 WHERE `id` = 2010978;