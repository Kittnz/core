-- https://turtle-wow.org/bug-report?id=3229 Low-level loot table has been deleted from NPC Rage Talon DRAGON Guard.
delete from creature_loot_template where item = 30015 and entry = 10366;
-- https://turtle-wow.org/bug-report?id=4299 Unique items for Scarlet Monastery have been removed from the Crescent Grove loot table.
delete from creature_loot_template where entry = 92118 and item in (10332,5819,8226,7728,7753,7729,7730,7752,7754,7786,7787,7761,8226,7727);
delete from creature_loot_template where entry = 92119 and item in (10332,5819,8226,7728,7753,7729,7730,7752,7754,7786,7787,7761,8226,7727);