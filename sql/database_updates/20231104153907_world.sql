-- Fix proc flags and damage scaling of Fire Rune.
UPDATE `spell_template` SET `effectBonusCoefficient1`=0.05 WHERE `entry`=45845;
UPDATE `spell_template` SET `procFlags`=65536 wHERE `entry`=45846;
