
-- Fix Life Tap scaling
UPDATE `spell_template` SET `effectBonusCoefficient1` = 0.80 WHERE `entry` IN
(1454, 1455, 1456, 11687, 11688, 11689);
