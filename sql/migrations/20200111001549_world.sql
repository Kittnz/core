replace into migrations values ('20200111001549');

update item_template set name = 'Illusion: Blood Elf' where entry = 51203;
update creature_template set scale = 0.3 where entry = 15706;
delete from creature_questrelation where id = 15706;
delete from creature_involvedrelation where id = 15706;
delete from creature where guid = 2555925;
update item_template set spellcharges_1 = 0 where entry = 51250;