-- Fix Open House rewards bonding:

update item_template set bonding = 6 where entry in (51889, 51894);

-- make mage/lock new quest items master lootable

update item_template set quality = 2 where entry = 83005 or entry = 83006;
