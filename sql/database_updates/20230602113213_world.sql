-- Fix requirements for Salve quests.
UPDATE `quest_template` SET `RequiredRaces`=0 WHERE `entry` IN (5882, 5883, 5884, 5885, 5886);
UPDATE `quest_template` SET `ExclusiveGroup`=4101 WHERE `entry` IN (4101, 4102);
