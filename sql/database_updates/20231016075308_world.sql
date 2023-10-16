-- Reduce cooldown of blasted lands consumables.
UPDATE `item_template` SET `spellcategorycooldown_1`=60000 WHERE `entry` IN (8411, 8410, 8412, 8423, 8424);
