-- Dismount temporary flying mounts on teleport.
UPDATE `spell_template` SET `auraInterruptFlags`=0x00400000 WHERE `entry`=47036;
