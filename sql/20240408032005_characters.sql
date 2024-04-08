-- Fix engineering pet spells exploits.
DELETE FROM `character_spell` WHERE `spell` IN (4073, 12749, 13166, 13258, 19804);
