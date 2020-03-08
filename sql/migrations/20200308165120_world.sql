replace into migrations values ('20200308165120');

update quest_template set ReqItemCount1 = 6 where entry = 1322;
update creature_loot_template set ChanceOrQuestChance = 5 where item = 18564;
update creature_loot_template set ChanceOrQuestChance = 5 where item = 18563;