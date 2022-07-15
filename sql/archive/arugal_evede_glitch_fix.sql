-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1326
-- Prevent Archmage Arugal from evading while teleported to platform.
UPDATE `creature_template` SET `flags_extra` = `flags_extra`|67108864 WHERE `entry` = 4275;
