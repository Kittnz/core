-- Make Corrupted Ashbringer's Drain Life scale with spell power.
UPDATE `spell_template` SET `effectBonusCoefficient1`=1 WHERE `entry`=29155;
