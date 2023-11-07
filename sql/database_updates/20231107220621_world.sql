-- Disable unreachable evade for Deathstrike Tarantula.
UPDATE `creature_template` SET `flags_extra`= (`flags_extra` | 0x04000000) WHERE `entry`=769;
