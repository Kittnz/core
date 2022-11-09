-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2428

UPDATE `quest_template` SET `RewRepFaction2` = 0, `RewRepFaction3` = 0, `RewRepValue2` = 0, `RewRepValue3` = 0 WHERE `entry` = 80396;


