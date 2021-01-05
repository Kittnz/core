-- Speedy:

delete from creature_questrelation where id = 16547;
delete from playercreateinfo_spell where spell = 28738 and race = 9;
delete from playercreateinfo_spell where spell = 28738 and race = 10;

insert into playercreateinfo_spell (race, class, spell, note) values
(9, 1, 28738, 'Summon Speedy'),
(9, 3, 28738, 'Summon Speedy'),
(9, 4, 28738, 'Summon Speedy'),
(9, 8, 28738, 'Summon Speedy'),
(9, 9, 28738, 'Summon Speedy'),

(10, 1, 28738, 'Summon Speedy'),
(10, 2, 28738, 'Summon Speedy'),
(10, 3, 28738, 'Summon Speedy'),
(10, 4, 28738, 'Summon Speedy'),
(10, 5, 28738, 'Summon Speedy'),
(10, 8, 28738, 'Summon Speedy');
