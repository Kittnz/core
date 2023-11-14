-- Delete creatures and quests requested by RMJ.
DELETE FROM `creature_template` WHERE `entry` IN (61410, 61411, 61412, 61413, 61414, 61415, 90983);
DELETE FROM `creature` WHERE `id` IN (61410, 61411, 61412, 61413, 61414, 61415, 90983);
DELETE FROM `creature_questrelation` WHERE `id` IN (61410, 61411, 61412, 61413, 61414, 61415, 90983);
DELETE FROM `creature_involvedrelation` WHERE `id` IN (61410, 61411, 61412, 61413, 61414, 61415, 90983);
DELETE FROM `quest_template` WHERE `entry` IN (70048, 40840, 40833, 40834, 40835, 40837, 40838, 40839);
DELETE FROM `creature_questrelation` WHERE `quest` IN (70048, 40840, 40833, 40834, 40835, 40837, 40838, 40839);
DELETE FROM `creature_involvedrelation` WHERE `quest` IN (70048, 40840, 40833, 40834, 40835, 40837, 40838, 40839);
DELETE FROM `gameobject_questrelation` WHERE `quest` IN (70048, 40840, 40833, 40834, 40835, 40837, 40838, 40839);
DELETE FROM `gameobject_involvedrelation` WHERE `quest` IN (70048, 40840, 40833, 40834, 40835, 40837, 40838, 40839);
