-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/345
update creature_template set faction = 80 where entry in (5506, 5504);