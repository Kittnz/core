-- Enable dynamic respawn times for Small Thorium Vein.
UPDATE `gameobject` SET `spawn_flags`=12 WHERE `id`=324 && `spawn_flags`=0 && `map` IN (0, 1);
-- Enable dynamic respawn times for Stranglekelp.
UPDATE `gameobject` SET `spawn_flags`=12 WHERE `id`=2045 && `spawn_flags`=0 && `map` IN (0, 1);
-- Enable dynamic respawn times for Sungrass.
UPDATE `gameobject` SET `spawn_flags`=12 WHERE `id`=142142 && `spawn_flags`=0 && `map` IN (0, 1);
-- Enable dynamic respawn times for Gromsblood.
UPDATE `gameobject` SET `spawn_flags`=12 WHERE `id`=142145 && `spawn_flags`=0 && `map` IN (0, 1);
-- Enable dynamic respawn times for Rich Thorium Vein.
UPDATE `gameobject` SET `spawn_flags`=12 WHERE `id`=175404 && `spawn_flags`=0 && `map` IN (0, 1);
-- Enable dynamic respawn times for Golden Sansam.
UPDATE `gameobject` SET `spawn_flags`=12 WHERE `id`=176583 && `spawn_flags`=0 && `map` IN (0, 1);
-- Enable dynamic respawn times for Dreamfoil.
UPDATE `gameobject` SET `spawn_flags`=12 WHERE `id`=176584 && `spawn_flags`=0 && `map` IN (0, 1);
-- Enable dynamic respawn times for Mountain Silversage.
UPDATE `gameobject` SET `spawn_flags`=12 WHERE `id`=176586 && `spawn_flags`=0 && `map` IN (0, 1);
-- Enable dynamic respawn times for Black Lotus.
UPDATE `gameobject` SET `spawn_flags`=12 WHERE `id`=176589 && `spawn_flags`=0 && `map` IN (0, 1);
-- Use same respawn time range for all Stonescale Eel Swarm.
UPDATE `gameobject` SET `spawntimesecsmin`=1800, `spawntimesecsmax`=3600 WHERE `id`=180712;
-- Use same respawn time range for all Oily Blackmouth School.
UPDATE `gameobject` SET `spawntimesecsmin`=1800, `spawntimesecsmax`=3600 WHERE `id`=180750;
-- Use same respawn time range for all Firefin Snapper School.
UPDATE `gameobject` SET `spawntimesecsmin`=1800, `spawntimesecsmax`=3600 WHERE `id`=180752;
