-- Picnic Basket
update item_template set spellid_1 = 56067, script_name = '' where entry = 81116;

-- Tonal Stone
update item_template set spellid_1 = 56066, script_name = '', required_level = 10, class = 15, subclass = 0, inventory_type = 0, bonding = 1 where entry = 70043;

replace into item_template values (70080, 15, 0, 'Tonal Stone: Emerald Forest', '', 13849, 2, 0, 1, 25000, 6250, 0, -1, -1, 50, 10, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 56066, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '');

-- Viridian Hippogryph
update item_template set spellid_1 = 46499 where entry = 81242;
replace into mount_spells values (81242, 46523)

-- Create a new mount Lovely Pink Pony  summon creature 50593.
-- Create a new mount Lovely Pink Furline summon creature 50594. 
replace into creature_template values 
(50593, 18771, 0, 0, 0, 'Lovely Pink Pony', '', 0, 1, 1, 64, 64, 0, 0, 0, 35, 0, 1, 1.14286, 1, 18, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 1, ''),
(50594, 18772, 0, 0, 0, 'Lovely Pink Furline', '', 0, 1, 1, 64, 64, 0, 0, 0, 35, 0, 1, 1.14286, 1, 18, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 1, '');

update item_template set spellid_1 = 46499 where entry = 83475;
update item_template set spellid_1 = 46499 where entry = 83476;
replace into mount_spells values (83475, 46521);
replace into mount_spells values (83476, 46522);

replace into item_template values (83475, 15, 4, 'Lovely Pink Pony', '', 13108, 3, 80, 1, 0, 0, 0, -1, -1, 40, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46499, 0, 0, 0, -1, 330, 3000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, NULL);
replace into item_template values (83476, 15, 4, 'Lovely Pink Furline', '', 23606, 3, 80, 1, 0, 0, 0, -1, -1, 40, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46499, 0, 0, 0, -1, 330, 3000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, NULL);
