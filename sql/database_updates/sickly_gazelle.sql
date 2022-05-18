-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1377
update creature_template set level_min = 3, level_max = 3, health_min = 14, health_max = 15 where entry = 12296;