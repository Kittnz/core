-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1431
UPDATE quest_template SET type = 81 WHERE entry in (40340, 40341, 40342, 80605);