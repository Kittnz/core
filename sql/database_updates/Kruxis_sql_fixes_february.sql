-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1120
UPDATE creature_template SET beast_family = 7 WHERE entry = 91824;

-- Coun request
UPDATE creature_template SET scale = 1, level = 15 WHERE entry = 50140;
UPDATE creature_template SET display_id1 = 4999 WHERE entry = 60663;
