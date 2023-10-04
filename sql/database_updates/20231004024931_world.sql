-- Fix low respawn times in The Black Morass.
UPDATE `creature` SET `spawntimesecsmin`=10800, `spawntimesecsmax`=10800 WHERE `map`=269 && `spawntimesecsmin` < 10800;
