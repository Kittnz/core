-- Dane Lindgren <Journeyman Blacksmith> in Stormwind is missing the Rough Grinding Stone Recipe.
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (957, 3341, 90, 164, 25, 0);
-- Item fixes by Dragunovi.
update item_template set stat_type1 = 4 where entry = 61239; -- ancient jade leggings
update item_template set max_count = 1 where entry = 61448; -- axe of dormant slumber
update item_template set max_count = 1 where entry = 61278; -- vampiric kris
update item_template set stat_value1 = 25 where entry = 61185; -- Dawnstone Hammer
update item_template set armor = 618 where entry = 61244; -- kara10 plate legs
update item_template set stat_value1 = 12, stat_value2 = 12 where entry = 61453; -- anasterian's legacy
-- For the creatures 60742,60743,60744,60745,60746,61212 set the drop chance of 61198 to 8.1%, set the drop chance of 20381 to 4.5%
update creature_loot_template set ChanceOrQuestChance = 8.1 where item = 61198 and entry in (60742,60743,60744,60745,60746,61212);
update creature_loot_template set ChanceOrQuestChance = 4.5 where item = 20381 and entry in (60742,60743,60744,60745,60746,61212);
