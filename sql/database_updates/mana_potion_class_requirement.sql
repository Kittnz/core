-- Reverted class restriction for Mana potions.
UPDATE item_template SET allowable_class = -1 WHERE entry IN (2455, 3385, 3827, 6149, 13443, 18841, 13444);
