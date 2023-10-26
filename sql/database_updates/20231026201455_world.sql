-- Fix secondary effect of Improved Seal of Justice.
UPDATE `spell_template` SET `effectItemType2`=134217728, `effectMiscValue2`=18 WHERE `entry` IN (45803, 45804, 45805);
