-- Fix same effect being assigned twice to Blackhammer Pauldrons.
UPDATE `item_template` SET `spellid_2` = 0 WHERE `entry` = 60567;


