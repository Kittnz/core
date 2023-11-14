-- Reduce Spell Reflect Chance of 'Deflect' from 5% to 3%.
UPDATE `spell_template` SET `effectBasePoints1`=2 WHERE  `entry`=45847;
