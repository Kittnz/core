-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1450
UPDATE quest_template SET PrevQuestId = 0 WHERE entry = 207;