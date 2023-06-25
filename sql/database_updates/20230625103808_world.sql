-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/3785

UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -100 WHERE `item` = 91762;