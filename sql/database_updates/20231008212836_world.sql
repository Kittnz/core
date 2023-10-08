-- Assign cast time to Rune-Etched recipes learning spells.
UPDATE `spell_template` SET `castingTimeIndex`=14 WHERE `entry` IN (47254, 47255, 47256, 47257, 47258, 47259);
