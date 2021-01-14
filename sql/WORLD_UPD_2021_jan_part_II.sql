update item_template set allowable_race = -1 where entry in (5102, 4898, 4897);

delete from playercreateinfo_spell where race = 9 and class = 3 and spell = 266;
delete from playercreateinfo_spell where race = 10 and class = 3 and spell = 266;
insert into playercreateinfo_spell values
(9, 3, 266, 0, 5875, 'Guns'),
(10, 3, 266, 0, 5875, 'Guns');

delete from playercreateinfo_spell where race = 9 and class = 3 and spell = 5011;
delete from playercreateinfo_spell where race = 10 and class = 3 and spell = 5011;
insert into playercreateinfo_spell values
(9, 3, 5011, 0, 5875, 'Crossbows'),
(10, 3, 5011, 0, 5875, 'Crossbows');

delete from playercreateinfo_spell where race = 9 and class = 3 and spell = 7918;
delete from playercreateinfo_spell where race = 10 and class = 3 and spell = 7918;
insert into playercreateinfo_spell values
(9, 3, 7918, 0, 5875, 'Shoot Gun'),
(10, 3, 7918, 0, 5875, 'Shoot Gun');

delete from playercreateinfo_spell where race = 9 and class = 3 and spell = 7919;
delete from playercreateinfo_spell where race = 10 and class = 3 and spell = 7919;
insert into playercreateinfo_spell values
(9, 3, 7919, 0, 5875, 'Shoot Crossbow'),
(10, 3, 7919, 0, 5875, 'Shoot Crossbow');