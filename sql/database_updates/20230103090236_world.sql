-- Hotfixes for broken quests:

UPDATE `gameobject_template` SET `flags`= 0 WHERE `entry` = 1000082;
UPDATE `gameobject_template` SET `flags`= 0 WHERE `entry` = 3000209;

UPDATE `quest_template` SET `ReqCreatureOrGOId1` = 51299 WHERE `entry` = 60041;
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = 80120 WHERE `entry` = 80107;
