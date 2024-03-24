-- Drop count of item "AZURE WHELPLIN" changed to 1. https://turtle-wow.org/bug-report?id=6713
update creature_loot_template set maxcount = 1 where entry = 60909 and item = 50083;
-- Drop chances of items "Recipe: Greater Frost Protection Potion", "Recipe: Greater Nature Protection Potion", "Recipe: Greater Shadow Protection Potion", "Recipe: Greater Arcane Protection Potion" setted to blazzlike. https://turtle-wow.org/bug-report?id=6700
update creature_loot_template set ChanceOrQuestChance = 5 where item = 13495 and entry = 7428;
update creature_loot_template set ChanceOrQuestChance = 3 where item = 13496 and entry in (1812,1813);
update creature_loot_template set ChanceOrQuestChance = 9 where item = 13497 and entry in (7437);
update creature_loot_template set ChanceOrQuestChance = 1.6 where item = 13499 and entry in (8546,8550);

-- https://turtle-wow.org/bug-report?id=6709 cannot reproduce

