-- Change starting weapon for goblin hunters to 2508, give them 200x 2516 as ammunition, and skill in guns:

DELETE FROM `playercreateinfo_item` WHERE `race` = 9 AND `class` = 3 AND `itemid` = 2504;
DELETE FROM `playercreateinfo_item` WHERE `race` = 9 AND `class` = 3 AND `itemid` = 2512;

REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (9, 3, 2508, 1);
REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (9, 3,2516, 200);

DELETE FROM `playercreateinfo_spell` WHERE `race` = 9 AND `class` = 3 AND `spell` =  264;

REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `note`) VALUES (9, 3, 266, 'Guns');

-- The following items need to be labeled as 'Trade Goods' you can steal this tag from the item Mithril Spurs (entry 7969) if you need a reference.

-- Copper Buckle (61779)
-- Bronze Buckle (61780)
-- Iron Buckle (61781)
-- Mithril Buckle (61782)
-- Thorium Buckle (61783)
-- Arcanite Buckle (61784)
-- Dreamsteel Buckle (61785)
-- Thorium Spurs (61182) 

UPDATE `item_template` SET `class` = 7 WHERE `entry` = 61779;
UPDATE `item_template` SET `class` = 7 WHERE `entry` = 61780;
UPDATE `item_template` SET `class` = 7 WHERE `entry` = 61781;
UPDATE `item_template` SET `class` = 7 WHERE `entry` = 61782;
UPDATE `item_template` SET `class` = 7 WHERE `entry` = 61783;
UPDATE `item_template` SET `class` = 7 WHERE `entry` = 61784;
UPDATE `item_template` SET `class` = 7 WHERE `entry` = 61785;
UPDATE `item_template` SET `class` = 7 WHERE `entry` = 61182;
