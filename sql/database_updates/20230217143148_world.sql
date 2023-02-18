-- Reduce duration of Mark of Nature and Frost.
UPDATE `spell_template` SET `durationIndex`=5 WHERE `entry` IN (25040, 23182);
