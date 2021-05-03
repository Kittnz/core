-- New Gloves Enchats (For when 1.15.2 is out, learning spells are currently broken.)
replace into item_template values
 ('0', '0', '9', '8', 'Enchant Gloves - Nature Power', '', '32845', '3', '0', '1', '100000', '25000', '0', '-1', '-1', '70',
 '0', '333', '300', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '46602', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('0', '0', '9', '8', 'Enchant Gloves - Arcane Power', '', '634', '3', '0', '1', '100000', '25000', '0', '-1', '-1', '70',
 '0', '333', '300', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '46601', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('0', '0', '9', '8', 'Enchant Gloves - Holy Power', '', '1037', '3', '0', '1', '100000', '25000', '0', '-1', '-1', '70',
 '0', '333', '300', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '46603', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

update quest_template set details = 'Zalazane\'s Apprentice','That foolish mongrel Makasgar decided he no longer needs the aid of his master and has grown beyond my teachings.\n\n...\n\nThat mojo was required for a powerful ritual to help us take over the Sen’jin Village and later the whole of Durotar.\n\nOur scouts reported seeing him fleeing to mainland, follow the coast and find him. Go do your master’s bidding and bring me his head!' where entry = 59995;

update item_template set name = 'Winterspring Tea Leaf' where entry = 80880;

delete from quest_template where entry in (7676, 7671, 7675, 7664, 7672, 7665);

update item_template set description = 'Male rams will often smash their thick skulls against each other for hours to impress a female. In that way, they\'re very similar to dwarves.' where entry in (5872, 13329, 5864, 5873);

update quest_template set requiredraces = 434 where entry = 4982;

update creature set spawntimesecsmin = 300, spawntimesecsmax = 600 where id in (40000,40004,80252,80253,80254,80255,80256,80257,80258,80259,80260,40025,80152);



