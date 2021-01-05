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

REPLACE INTO `item_template` VALUES (81095, 0, 4, 6, 'Worn Thalassian Shield', '', 33291, 0, 0, 1, 7, 1, 14, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 4, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

delete from playercreateinfo_item where race = 10 and class = 1 and itemid = 2362;
delete from playercreateinfo_item where race = 9 and class = 1 and itemid = 2362;
delete from playercreateinfo_item where race = 10 and class = 1 and itemid = 81095;
delete from playercreateinfo_item where race = 9 and class = 1 and itemid = 81095;

insert into `playercreateinfo_item` values (10, 1, 81095, 1);
insert into `playercreateinfo_item` values (9, 1, 2362, 1);

UPDATE `quest_template` SET `ReqCreatureOrGOCount2`='1' WHERE (`entry`='50321') AND (`patch`='0');

UPDATE `quest_template` SET `ObjectiveText1`='Throw snowball at Draxer' WHERE `entry`=50321;
UPDATE `quest_template` SET `ObjectiveText2`='Throw snowball at Paulgreeneye' WHERE `entry`=50321;
UPDATE `quest_template` SET `ObjectiveText3`='Throw snowball at Sangria' WHERE `entry`=50321;
UPDATE `quest_template` SET `ObjectiveText4`='Throw snowball at Sucy' WHERE `entry`=50321;

UPDATE `quest_template` SET `ReqCreatureOrGOId2`='70001' WHERE (`entry`='50321') AND (`patch`='0');
UPDATE `quest_template` SET `ReqCreatureOrGOId2`='70001' WHERE (`entry`='60013') AND (`patch`='0');