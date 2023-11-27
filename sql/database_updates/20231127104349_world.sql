-- Only spawn other BWL bosses once Razorgore is defeated.
UPDATE `creature` SET `spawn_flags`=2 WHERE `guid` IN (85783, 84572, 84387, 84512, 85784, 85780);
