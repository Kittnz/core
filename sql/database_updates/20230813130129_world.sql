-- Quest The Key to Karazhan II (Entry 40818) change to RAID quest

UPDATE `quest_template` SET `QuestFlags` = 62 WHERE `entry` = 40818;

-- QUEST The Key to Karazhan VIII (Entry 40827) change to DUNGEON quest

UPDATE `quest_template` SET `Type` = 81 WHERE `entry` = 40827;

-- QUEST The Key to Karazhan IX (Entry 40828) change to RAID quest

UPDATE `quest_template` SET `Type` = 62, `QuestFlags` = 64 WHERE `entry` = 40828;

-- QUEST The Key to Karazhan X (Entry 40829) has the objective "quest_40829_dummy_trigger slain" when it should say 'Upper Karazhan Tower Key Reforged.' 

UPDATE `quest_template` SET `ObjectiveText1` = 'Upper Karazhan Tower Key Reforged' WHERE `entry` = 40829;
