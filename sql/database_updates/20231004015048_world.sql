-- Make teleport books self cast.
UPDATE `spell_template` SET `targets`=0, `effectImplicitTargetA1`=1 WHERE `entry` IN (49360, 49365, 49357, 49363);
