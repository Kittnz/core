UPDATE `quest_template` SET `QuestFlags` = 8 WHERE `entry` = 40091;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2968

UPDATE `item_template` SET `stackable` = 10 WHERE `entry` = 13460;
UPDATE `item_template` SET `stackable` = 10 WHERE `entry` = 6051;