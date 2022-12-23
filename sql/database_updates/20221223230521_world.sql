-- Change Taskmaster objective to 0/4 instead of 0/10:
UPDATE `quest_template` SET `ReqCreatureOrGOCount1` = 4, `ReqCreatureOrGOCount2` = 4, `ReqCreatureOrGOCount3` = 4, `ReqCreatureOrGOCount4` = 4 WHERE `entry` = 70058;


