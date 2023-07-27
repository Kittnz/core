-- Change starting weapon for goblin hunters to 2508, give them 200x 2516 as ammunition, and skill in guns:

DELETE FROM `playercreateinfo_item` WHERE `race` = 9 AND `class` = 3 AND `itemid` = 2504;
DELETE FROM `playercreateinfo_item` WHERE `race` = 9 AND `class` = 3 AND `itemid` = 2512;

REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (9, 3, 2508, 1);
REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (9, 3,2516, 200);

DELETE FROM `playercreateinfo_spell` WHERE `race` = 9 AND `class` = 3 AND `spell` =  264;

REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `note`) VALUES (9, 3, 266, 'Guns');
