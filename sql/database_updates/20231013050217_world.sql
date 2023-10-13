-- Fix Arcane Vulnerability hunter set bonus.
UPDATE `spell_template` SET `procFlags`=65792 WHERE `entry`=45543;
UPDATE `spell_template` SET `rangeIndex`=6 WHERE `entry`=45535;
