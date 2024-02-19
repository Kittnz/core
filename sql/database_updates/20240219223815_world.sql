-- make spell "Remove Insignia" have a big range, and ignore LoS
-- that way, it will not be interrupted, if player release corpse
UPDATE `spell_template` SET `rangeIndex` = '13' WHERE (`entry` = '22027');
UPDATE `spell_template` SET `attributesEx2` = '4' WHERE (`entry` = '22027');
