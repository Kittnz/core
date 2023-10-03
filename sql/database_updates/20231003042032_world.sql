-- Made Zanzas non-unique:

UPDATE `item_template` SET `max_count` = 0 WHERE `entry` IN (20079, 20080, 20081, 8424, 8423, 8411, 8412, 8410);

update item_template set spellid_1 = 8815 where entry = 17015; -- Dark Iron Reaver
update item_template set spellid_1 = 15874, spellid_2 = 7578, spellid_2 = 7527 where entry = 14551; -- Edgemaster\'s Handguards
update item_template set name = "Tome of Teleportation: Theramore" where entry = 92001; -- Theramore Tome
update item_template set name = "Tome of Teleportation: Stonard" where entry = 92002; -- Stonard Tome
