-- Delete custom GY in Winter Veil Vale:
delete from custom_graveyards where id = 2;
-- RP stuff:
replace into item_template values (50436, 12, 0, 'Illusion: Smolderthorn Berserker', 'This disguise will work until logout.', 36521, 1, 0, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31726, 0, 0, 0, 10, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'item_illusion');
replace into item_template values (50437, 12, 0, 'Illusion: Naga Explorer', 'This disguise will work until logout.', 36521, 1, 0, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31726, 0, 0, 0, 10, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'item_illusion');
replace into item_template values (50438, 12, 0, 'Illusion: Naga Siren', 'This disguise will work until logout.', 36521, 1, 0, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31726, 0, 0, 0, 10, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'item_illusion');
-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1083
UPDATE item_template SET armor = 392 WHERE entry = 60359;
-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1072
UPDATE broadcast_text SET male_text = 'We have many allies across the great sea, located far to the east within the Eastern Kingdoms. This dock leads toward the human city of Stormwind and the harbor located there. If you are looking to travel, this would be the boat to board\n\nIf it not here yet, simply wait, it shall arrive soon.' WHERE entry = 60621;
-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1080
UPDATE quest_template SET Objectives = 'Gather 14 Naga Tridents for Raga Darkeye at the Bloodsail Compound in Stranglethorn Vale.' WHERE entry = 40328;
-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1023
REPLACE INTO creature_questrelation VALUES (14726, 7824);
REPLACE INTO creature_involvedrelation VALUES (14726, 7824);
-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1082
UPDATE quest_template SET Objectives = 'Bring 5 Chunks of Boar Meat, 3 Mutton Chops and 1 Bone Chew Toy to Bristlefur in Razor Hill.' WHERE entry = 40298;