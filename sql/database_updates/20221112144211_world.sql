-- item 'Ripe Tel'abim Banana' and 'Gargantuan Tel'abim Banana' change material to default, change spell cooldown to 0.
update item_template set spellcooldown_1 = 0, spellcategory_1 = 11, spellcategorycooldown_1 = 1000, material = 0 where entry in (60954,60955);
-- New objects created for PTR: 'Ripe Tel'abim Banana' , lootable gobject which looks like Fruit_Banana.mdx , contains 'Ripe Tel'abim Banana' item inside, has a 8 minute respawn timer.
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `phase_quest_id`, `script_name`) VALUES
(2010948, 3, 25061, 'Ripe Tel\'abim Banana', 0, 0, 1, 43, 2010948, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(2010948, 60954, 100, 0, 1, 1, 0);
-- New objects created for PTR: 'Ripe Tel'abim Bundle', lootable gobject which looks like 'Fruit_BananaBunch.mdx , contains 2-3 'Ripe Tel'abim Banana' item inside at random, has a 9 minute respawn timer.
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `phase_quest_id`, `script_name`) VALUES
(2010949, 3, 25062, 'Ripe Tel\'abim Bundle', 0, 0, 1, 43, 2010949, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(2010949, 60955, 100, 0, 2, 3, 0);

