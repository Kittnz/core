-- Tinyfin thing from discord
REPLACE INTO creature_involvedrelation VALUES (3978, 40115);

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1179
UPDATE item_template SET item_level = 5 WHERE entry = 60112;

-- Fix for Coun
UPDATE creature_template SET name = '*' WHERE entry = 7;

-- make Shades of Jin'do undead instead of beasts / Xerron
update creature_template set type = 6 where entry = 14986;