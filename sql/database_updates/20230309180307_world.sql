UPDATE `quest_template` SET `QuestFlags` = 8 WHERE `entry` = 40091;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2968

UPDATE `item_template` SET `stackable` = 10 WHERE `entry` = 13460;
UPDATE `item_template` SET `stackable` = 10 WHERE `entry` = 6051;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2967

update item_template set spellid_1 = 13441 where entry = 61068; -- Dark Iron Desecrator