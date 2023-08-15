UPDATE `creature_template` SET `scale` = 0.03 WHERE `entry` = 80609;

-- NPC ID 65605 should have a 7 day respawn timer.
-- NPC ID 65604 should have a 7 day respawn timer.
-- GUID 2578268 should link GUID 2578266 and 2578267 and pull together when engaged.

UPDATE `creature` SET `spawntimesecsmin` = 604800, `spawntimesecsmax` = 604800 WHERE `id` = 65604;
UPDATE `creature` SET `spawntimesecsmin` = 604800, `spawntimesecsmax` = 604800 WHERE `id` = 65605;

REPLACE INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES (2578266, 2578267, 3);
