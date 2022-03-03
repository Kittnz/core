-- Tinyfin thing from discord
REPLACE INTO creature_involvedrelation VALUES (3978, 40115);

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1179
UPDATE item_template SET item_level = 5 WHERE entry = 60112;
