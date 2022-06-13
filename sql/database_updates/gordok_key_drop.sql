delete from creature_loot_template where item = 18266;

replace into creature_loot_template 
(entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id) 
values (14321, 18266, 1.2, 0, 1, 1, 0);
