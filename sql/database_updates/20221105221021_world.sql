-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/1841

UPDATE `quest_template` SET `NextQuestInChain` = 0 WHERE `entry` = 60120;
UPDATE `quest_template` SET `PrevQuestId` = 835 WHERE `entry` = 60120;
UPDATE `quest_template` SET `PrevQuestId` = 60120 WHERE `entry` = 60121;
UPDATE `quest_template` SET `PrevQuestId` = 60121 WHERE `entry` = 60122;
