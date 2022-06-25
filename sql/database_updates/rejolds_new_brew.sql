-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1490
update quest_template set prevquestid = 0, nextquestinchain = 413 where entry = 315;
update quest_template set prevquestid = 315 where entry = 413;
update quest_template set prevquestid = 315, nextquestid = 0 where entry = 415;