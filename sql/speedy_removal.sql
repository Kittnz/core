insert into character_spell (guid, spell) select guid, 28738 as spell from characters;


delete from character_inventory where item_template = 23002;
delete from item_instance where itemEntry = 23002;


delete from playercreateinfo_spell where spell = 28738;
delete from playercreateinfo_item where itemid = 23002;
replace into playercreateinfo_spell (race, class, spell, note) values
-- Humans
(1, 1, 28738, 'Summon Speedy'),
(1, 2, 28738, 'Summon Speedy'),
(1, 4, 28738, 'Summon Speedy'),
(1, 5, 28738, 'Summon Speedy'),
(1, 8, 28738, 'Summon Speedy'),
(1, 9, 28738, 'Summon Speedy'),
-- Orcs
(2, 1, 28738, 'Summon Speedy'),
(2, 3, 28738, 'Summon Speedy'),
(2, 4, 28738, 'Summon Speedy'),
(2, 7, 28738, 'Summon Speedy'),
(2, 9, 28738, 'Summon Speedy'),
-- Trolls
(8, 1, 28738, 'Summon Speedy'),
(8, 3, 28738, 'Summon Speedy'),
(8, 4, 28738, 'Summon Speedy'),
(8, 5, 28738, 'Summon Speedy'),
(8, 7, 28738, 'Summon Speedy'),
(8, 8, 28738, 'Summon Speedy'),
-- Dwarfs
(3, 1, 28738, 'Summon Speedy'),
(3, 2, 28738, 'Summon Speedy'),
(3, 3, 28738, 'Summon Speedy'),
(3, 4, 28738, 'Summon Speedy'),
(3, 5, 28738, 'Summon Speedy'),
-- Gnomes
(7, 1, 28738, 'Summon Speedy'),
(7, 4, 28738, 'Summon Speedy'),
(7, 8, 28738, 'Summon Speedy'),
(7, 9, 28738, 'Summon Speedy'),
-- Night Elves
(4, 1, 28738, 'Summon Speedy'),
(4, 3, 28738, 'Summon Speedy'),
(4, 4, 28738, 'Summon Speedy'),
(4, 5, 28738, 'Summon Speedy'),
(4, 11, 28738, 'Summon Speedy'),
-- Undeads
(5, 1, 28738, 'Summon Speedy'),
(5, 4, 28738, 'Summon Speedy'),
(5, 5, 28738, 'Summon Speedy'),
(5, 8, 28738, 'Summon Speedy'),
(5, 9, 28738, 'Summon Speedy'),
-- Taurens
(6, 1, 28738, 'Summon Speedy'),
(6, 3, 28738, 'Summon Speedy'),
(6, 7, 28738, 'Summon Speedy'),
(6, 11, 28738, 'Summon Speedy');
