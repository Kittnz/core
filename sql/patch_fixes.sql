-- Picnic Basket
update item_template set spellid_1 = 56067, script_name = '' where entry = 81116;

-- Tonal Stone
update item_template set spellid_1 = 56066, script_name = '', required_level = 10, class = 15, subclass = 0, inventory_type = 0, bonding = 1 where entry = 70043;

replace into item_template values (70080, 15, 0, 'Tonal Stone: Emerald Forest', '', 13849, 2, 0, 1, 25000, 6250, 0, -1, -1, 50, 10, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 56066, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '');
