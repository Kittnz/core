-- Prevent Noxxion from falling.
UPDATE `creature_template` SET `flags_extra`=(`flags_extra` | 64) WHERE `entry`=13282;
