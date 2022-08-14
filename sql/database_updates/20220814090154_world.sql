-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1911
update item_template set disenchant_id = 28 where entry = 60294;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1921
update creature_template set unit_flags = 0 where entry = 91838;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1905
update creature_template set display_id1 = 18514 where entry = 11500;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1896
update creature_template set type = 3 where entry = 60503;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1891
update quest_template set zoneorsort = 209 where entry in (60108, 60109);