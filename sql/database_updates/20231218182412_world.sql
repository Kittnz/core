
SET @quest =  80121;
UPDATE `quest_template` SET `Title` = '[DEPRECATED] This Is In My Contract' WHERE `entry` = @quest;
DELETE FROM `creature_questrelation` WHERE `quest` = @quest;
DELETE FROM `creature_involvedrelation` WHERE `quest` = @quest;


