-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1401
update creature_template set unit_flags = 768, dynamic_flags = 32, inhabit_type = 1, flags_extra = 2 where entry = 60412;