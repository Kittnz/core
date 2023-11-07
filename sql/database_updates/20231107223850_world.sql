-- Disable unreachable evade for ES mobs.
UPDATE `creature_template` SET `flags_extra`= (`flags_extra` | 0x04000000) WHERE `entry` IN (60742, 60743, 60744, 60745, 60746, 60747, 61212);
