-- Remove wrong waypoints for Southshore Crier that override the correct ones.
DELETE FROM `creature_movement` WHERE `id`=1246431;

-- Correct faction of Shadowy Assassin.
UPDATE `creature_template` SET `faction`=97 WHERE `entry`=2434;

-- Event should begin at 5:00 PM.
UPDATE `game_event` SET `start_time`='2022-01-01 17:00:00', `end_time`='2030-03-31 18:00:00', `occurence`=1440, `length`=60 WHERE  `entry`=152;
UPDATE `creature` SET `spawntimesecsmin`=7200, `spawntimesecsmax`=7200 WHERE `guid`=1246431;
