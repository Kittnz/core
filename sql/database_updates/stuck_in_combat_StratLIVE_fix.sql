-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1271
-- 2 Triggers which are neutral to AoEs and can be damaged, stucking people in combat
-- Worth checking else where. Stratholm UD/Live uis fucked as hell
UPDATE creature_template SET faction = 35 WHERE entry in (14646, 16046);