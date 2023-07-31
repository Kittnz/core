-- apply last 3 brot spells
update item_template set spellid_2 = 47355, spellid_3 = 0, spellid_4 = 0, spellid_1 = 0  where entry = 60784; -- Breastplate of Beast Mastery	
update item_template set spellid_1 = 47356, spelltrigger_1 = 1, description = '' where entry = 61699; -- Idol of Savagery
update item_template set spellid_1 = 47357, spelltrigger_1 = 1, description = '', name = 'Totem of the Calming River' where entry = 61698; -- Totem of the Flowing Timeways
-- fix boots of displacement
update item_template set spelltrigger_2 = 1 where entry = 23073; -- Boots of Displacement


