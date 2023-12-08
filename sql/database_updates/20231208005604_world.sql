-- Fix base points of Improved Shadowform.
UPDATE `spell_template` SET `effectDieSides1`=1, `effectDieSides2`=1, `effectBaseDice2`=1, `effectBasePoints1`=-16, `effectBasePoints2`=14 WHERE `entry`=45553;
