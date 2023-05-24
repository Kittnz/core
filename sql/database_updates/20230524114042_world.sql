-- NPC GUID 2577212 should respawn every 48-72 hours.
update creature set spawntimesecsmin = 172800, spawntimesecsmax = 259200 where guid = 2577212;
-- All NPCs found in Emerald Sanctum should have a 7 day respawn timer.
update creature set spawntimesecsmin = 604800, spawntimesecsmax = 604800 where map = 807;
