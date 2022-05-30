-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1401
-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1418
update creature_template set unit_flags = 768, dynamic_flags = 32, inhabit_type = 1, flags_extra = 2, type = 1 where entry = 60412;

