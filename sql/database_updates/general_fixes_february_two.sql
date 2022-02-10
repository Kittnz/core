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
-- Forworn Mule:
UPDATE creature_template SET scale = 0.8 WHERE entry = 50040.
-- arcane core needs to be an off-hand frill and not an off-hand weapon:
UPDATE item_template SET inventory_type = 23 WHERE entry = 80804;
-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1081
UPDATE creature_template SET spell_id1 = 13381, spell_id2 = 0, spell_id3 = 20793, spell_id4 = 0, spell_list_id = 70340 WHERE entry = 91852;
UPDATE creature_template SET spell_id1 = 6742, spell_id2 = 9532, spell_id3 = 12550, spell_id4 = 13729, spell_list_id = 73790  WHERE entry = 91851;
-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1021
replace into creature_involvedrelation (id, quest) values (80807, 80376);
replace into creature_involvedrelation (id, quest) values (80807, 80378);
replace into creature_involvedrelation (id, quest) values (80807, 80375);
replace into creature_involvedrelation (id, quest) values (80807, 80377);
replace into creature_involvedrelation (id, quest) values (80807, 80379);
UPDATE quest_template SET Title = 'A Donation of Wool: Revantusk Tribe' WHERE entry = 80375;
UPDATE quest_template SET Title = 'A Donation of Silk: Revantusk Tribe' WHERE entry = 80376;
UPDATE quest_template SET Title = 'A Donation of Mageweave: Revantusk Tribe' WHERE entry = 80377;
UPDATE quest_template SET Title = 'A Donation of Runecloth: Revantusk Tribe' WHERE entry = 80378;
UPDATE quest_template SET Title = 'Additional Runecloth: Revantusk Tribe' WHERE entry = 80379;
-- Silvermoon Remnants:
UPDATE quest_template SET Title = 'A Donation of Wool: Silvermoon Remnants' WHERE entry = 80370;
UPDATE quest_template SET Title = 'A Donation of Silk: Silvermoon Remnants' WHERE entry = 80371;
UPDATE quest_template SET Title = 'A Donation of Mageweave: Silvermoon Remnants' WHERE entry = 80372;
UPDATE quest_template SET Title = 'A Donation of Runecloth: Silvermoon Remnants' WHERE entry = 80373;
UPDATE quest_template SET Title = 'Additional Runecloth: Silvermoon Remnants' WHERE entry = 80374;
-- Delete old stuff, TODO new quest chain:
delete from creature_template where entry = 100013;
delete from quest_template where entry = 80737;
delete from creature_questrelation where quest = 80737;
delete from creature_involvedrelation where quest = 80737;
-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1085
update creature_template set fire_res = 0, nature_res = 0, frost_res = 0, shadow_res = 0, arcane_res = 0 where entry = 91989;