-- Update cooldowns of Dreamshard Elixir and Elixir of Greater Nature Power to match other elixirs.
UPDATE `item_template` SET `spellcooldown_1`=0, `spellcategory_1`=79, `spellcategorycooldown_1`=3000 WHERE `entry` IN (50237, 61224);

-- Remove category from Recipe: Elixir of Poison Resistance, recipes dont have cooldowns.
UPDATE `item_template` SET `spellcooldown_1`=-1, `spellcategory_1`=0, `spellcategorycooldown_1`=-1 WHERE `entry`=3394;
