-- Dane Lindgren <Journeyman Blacksmith> in Stormwind is missing the Rough Grinding Stone Recipe.
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (957, 3341, 90, 164, 25, 0);
-- Item fixes by Dragunovi.
update item_template set stat_type1 = 4 where entry = 61239; -- ancient jade leggings
update item_template set max_count = 1 where entry = 61448; -- axe of dormant slumber
update item_template set max_count = 1 where entry = 61278; -- vampiric kris
update item_template set stat_value1 = 25 where entry = 61185; -- Dawnstone Hammer
update item_template set armor = 618 where entry = 61244; -- kara10 plate legs
update item_template set stat_value1 = 12, stat_value2 = 12 where entry = 61453; -- anasterian's legacy
