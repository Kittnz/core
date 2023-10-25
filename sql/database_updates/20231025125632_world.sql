-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/4893.
update item_template set disenchant_id = 64, armor = 242, item_level = 60, spellid_1 = 15464, spellid_2 = 22015, spelltrigger_2 = 1 where entry = 22015; -- Beastmaster's Gloves
-- Make item Nordanaar Herbal Tea (entry 61675) have 3 charges.
update item_template set spellid_1 = 19199, spellcharges_1 = -3, spellcooldown_1 = 0, spellid_2 = 0 where entry = 61675;
