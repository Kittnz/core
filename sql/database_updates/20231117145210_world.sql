update item_template set spellid_2 = 27043, spelltrigger_2 = 1, spelltrigger_1 = 1 where entry = 22015; -- Beastmaster's Gloves
update item_template set spelltrigger_2 = 1 where entry = 22067; -- Sorcerer's Leggings
update item_template set subclass = 1 where entry = 61210; -- Veil of Nightmare

UPDATE item_template set Max_Count = 0, Stackable = 250 WHERE entry = 50203;

UPDATE quest_template SET minlevel = 30 WHERE entry = 39000;
