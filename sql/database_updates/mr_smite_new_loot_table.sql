update item_template set name = 'Enchanted Defias Mask' where entry = 81007;
delete from creature_loot_template where item = 81007;
update reference_loot_template set chanceorquestchance = 30 where item in(5192,5196);
REPLACE INTO reference_loot_template VALUES
(30070, 81007, 20, 1, 1, 1, 0);