-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1461
update creature_template set gold_min = 0, gold_max = 0 where entry = 2667;