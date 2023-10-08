-- Move Savage Bite back to a separate spell family flag value.
UPDATE `spell_template` SET `spellFamilyFlags` = 137438953472 WHERE `entry` = 45736;
REPLACE INTO `spell_affect` (`entry`, `effectId`, `SpellFamilyMask`) VALUES (16934, 0, 137438955520);
REPLACE INTO `spell_affect` (`entry`, `effectId`, `SpellFamilyMask`) VALUES (16935, 0, 137438955520);
REPLACE INTO `spell_affect` (`entry`, `effectId`, `SpellFamilyMask`) VALUES (16936, 0, 137438955520);
REPLACE INTO `spell_affect` (`entry`, `effectId`, `SpellFamilyMask`) VALUES (16937, 0, 137438955520);
REPLACE INTO `spell_affect` (`entry`, `effectId`, `SpellFamilyMask`) VALUES (16938, 0, 137438955520);
REPLACE INTO `spell_affect` (`entry`, `effectId`, `SpellFamilyMask`) VALUES (16998, 0, 137438959616);
REPLACE INTO `spell_affect` (`entry`, `effectId`, `SpellFamilyMask`) VALUES (16999, 0, 137438959616);
