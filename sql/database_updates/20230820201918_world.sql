-- Link GUID 2574298 to 2574297
-- Link GUID 2578141 to 2578140

REPLACE INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES (2574298, 2574297, 3);
REPLACE INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES (2578141, 2578140, 3);

-- Set the spawn time of the gobjects 'Medivh's Merlot Blue' and 'Medivh's Merlot' to 7d

UPDATE `gameobject` SET `spawntimesecsmin` = 604800, `spawntimesecsmax` = 604800 WHERE `id` in (2011044, 2011043);
