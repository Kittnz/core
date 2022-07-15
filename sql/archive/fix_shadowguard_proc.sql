-- Update Shadowguard so it works correctly
UPDATE `spell_proc_event` SET `SchoolMask`= 127, `procFlags`=20088, `Cooldown`=3 WHERE `entry`=18137;
