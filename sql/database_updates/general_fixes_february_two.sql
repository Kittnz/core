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
UPDATE creature_template SET scale = 0.8 WHERE entry = 50040;
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
-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1074
update item_template set ammo_type = 2, display_id = 11247 where entry = 60338;
-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1058
update item_template set spellid_1 = 46498 where entry = 11825;
replace into companion_spells values (11825, 15048);
-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1058
update item_template set spellid_1 = 46498 where entry = 15996;
replace into companion_spells values (15996, 19772);
-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1025
-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/818
UPDATE creature_template SET dynamic_flags = 36, npc_flags = 0 WHERE entry = 91774;
REPLACE INTO creature_template_addon (entry, bytes1) VALUES (91774, 7);
-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1073
update quest_template set reworreqmoney = 7000 where entry = 40072;
-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1022
update quest_template set ReqCreatureOrGOCount1 = 5, objectives = 'Kill 5 Galak Centaurs in Mulgore.' where entry = 40363;
-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/979
update creature_ai_scripts set datalong = 15572 where command = 15 && id = 1443903 && datalong = 21081;
-- Book "Soothsaying for Dummies"
replace into gossip_menu VALUES (7058, 8321, 0);
-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1090
replace into game_weather (zone, spring_rain_chance, spring_snow_chance, spring_storm_chance, summer_rain_chance, summer_snow_chance, summer_storm_chance, fall_rain_chance, fall_snow_chance, fall_storm_chance, winter_rain_chance, winter_snow_chance, winter_storm_chance) values (141, 15, 0, 0, 5, 0, 0, 15, 0, 0, 15, 0, 0);
-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1063
update item_template set spellid_1 = 52005, description = '' where entry = 61000;
-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/453
update item_template set spellid_1 = 9406 where entry = 51300;
-- The Boran Family fix:
update quest_template set title = 'The Boran Family', Details = 'I come from a large family, one that once occupied the boroughs of Kul Tiras. We weren\'t exactly a rich family, but we were not poor either! I traveled out with two of my brothers when the third war started up in Lordaeron, hoping to earn some fortune and glory. I helped the navy , my brother Karl started work in Menethil Harbor, while Samual went to Southshore to assist the war effort.\n\nEver since I set sail years ago, I have had no communication with them, and would like to reach out if you could deliver a letter to the both of them. They must have thought I perished after so long without a word or peep and I want to ease their minds.', Objectives = 'Deliver the letters from Arnold Boran to his two brothers.', RequestItemsText = 'Have you seen my brothers yet? It will require travelling, but I would appreciate it greatly.', OfferRewardText = 'My family has always been close knit, and I know that such a long length without hearing from me would certainly cause worry. I am simply happy to dispell such concern and let them know all is fine. Thanks again, this has meant a lot for me.' where entry = 40141;
-- The Will of Lorthiras should be a raid quest:
update quest_template set questflags = 64 where entry = 40239;
-- Rented mounts:
replace into creature_template values (51580, 2327, 0, 0, 0, 'Dire Riding Wolf', '', 0, 1, 2, 64, 55, 53, 53, 30, 35, 1, 1, 1.38571, 0, 18, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 2, 0, 1, 'rented_mount');
replace into creature_template values (51581, 247, 0, 0, 0, 'Timber Riding Wolf', '', 0, 1, 2, 64, 55, 53, 53, 30, 35, 1, 1, 1.38571, 0, 18, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 2, 0, 1, 'rented_mount');
replace into creature_template values (51588, 10670, 0, 0, 0, 'Red Skeletal Horse', '', 0, 1, 2, 64, 55, 53, 53, 30, 35, 1, 1, 1.38571, 0, 18, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 2, 0, 1, 'rented_mount');
replace into creature_template values (51589, 10671, 0, 0, 0, 'Blue Skeletal Horse', '', 0, 1, 2, 64, 55, 53, 53, 30, 35, 1, 1, 1.38571, 0, 18, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 2, 0, 1, 'rented_mount');
replace into creature_template values (51587, 10672, 0, 0, 0, 'Brown Skeletal Horse', '', 0, 1, 2, 64, 55, 53, 53, 30, 35, 1, 1, 1.38571, 0, 18, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 2, 0, 1, 'rented_mount');

replace into broadcast_text (entry, male_text) values ('90368', 'The wolf seems to like you.');
replace into npc_text (ID, BroadcastTextID0) values ('90368', '90368');
update creature_template set script_name = 'rented_mount' where script_name = 'npc_riding_horse';

replace into broadcast_text (entry, male_text) values ('90369', 'The horse, despite being undead creature, seems to be aware of your motion.');
replace into npc_text (ID, BroadcastTextID0) values ('90369', '90369');
update creature_template set script_name = 'rented_mount' where script_name = 'npc_riding_horse';

REPLACE INTO creature_template VALUES (50140, 10616, 0, 0, 0, 'Eiendor Stormcloud', 'School of the Dragonhawk', 0, 1, 1, 64, 64, 0, 0, 0, 35, 256, 1, 1.14286, 0.45, 18, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 1, '');

REPLACE INTO creature_template VALUES (50141, 16259, 0, 0, 0, 'Baby Turtle', NULL, 0, 1, 1, 8, 8, 0, 0, 20, 31, 0, 1, 0.857143, 0, 18, 5, 0, 0, 0, 2, 2, 0, 44, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 8, 0, 0, 0, 5951, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2, 0, 1, '');
-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1098
update quest_template set objectives = 'Find Shagu\'s Satchel of Mixed Herbs and return to Shagu in Bloodhoof Village.' where entry = 40002;