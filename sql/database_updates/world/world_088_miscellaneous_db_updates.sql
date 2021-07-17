update `quest_template` set `ReqItemCount1` = 20, `RewItemCount1` = 4 where `entry` = 80369;

-- Wing of the Time-Lord Fix and Nerf

replace into item_template values
 ('61010', '0', '4', '1', 'Wing of the Time-Lord', '', '33730', '4', '65536', '1', '99156', '24789', '16', '-1', '-1', '65',
 '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '4', '12', '3', '12',
 '7', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '50', '0', '0', '0',
 '0', '0', '0', '21348', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);

update item_template set max_count = 1 where entry = 51043;
update quest_template set reqitemcount1 = 2500, objectives = 'Bring 2500 Corrupted Sand to Dronormu in the Caverns of Time.', details = 'Greetings mortal!\n\nYou might have acquired some Corrupted Sand from one of the Infinite Dragonflight, which they\'ve been using to try and compromise the flow of the timelines, or residual amounts that can be found creatures that have been affected by their magic.\n\nI\'ve been assigned to reward those that bring adequate amounts of Corrupted Sand for purification and being returned to safe hands.\n\nIn exchange for 2500 Corrupted Sand, I can reward you with a special bag that\'s been imbued with magic that breaks the nominal limits, allowing it to carry more items than any mortal container could hold.' where entry = 80603;

UPDATE `quest_template` SET `Details`='Greetings, $R. Since you\'re here this means you’ve come to help so listen up. We have a situation here... You might be aware that our building use arcane magic to operate.\n\nWhile our central crystal is the main power source, we use smaller crystals to effectively channel the arcane energy from the nexus to the outlying ley points of the structure.\n\nThe downside is that these crystals break down overtime, if we had found this outpost a decade later the entire Academy could have collapsed.\n\nFortunately, our predecessors built this site on a location with arcane crystal deposits. While the automated constructs have long since stopped working or malfunctioned, the mine remains full of intact crystals.\n\nI need you to head down there and bring me some crystals. Eight should do for now.\n\nAre you still here? Get moving.' WHERE entry = 80252;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/64

replace into creature_questrelation (id, quest) values (11536, 9228);
replace into creature_involvedrelation (id, quest) values (11536, 9228);

replace into creature_questrelation (id, quest) values (11536, 9222);
replace into creature_involvedrelation (id, quest) values (11536, 9222);

replace into creature_questrelation (id, quest) values (11536, 9224);
replace into creature_involvedrelation (id, quest) values (11536, 9224);

replace into creature_questrelation (id, quest) values (11536, 9225);
replace into creature_involvedrelation (id, quest) values (11536, 9225);

replace into creature_questrelation (id, quest) values (11536, 9227);
replace into creature_involvedrelation (id, quest) values (11536, 9227);

replace into creature_questrelation (id, quest) values (11536, 9227);
replace into creature_involvedrelation (id, quest) values (11536, 9227);

replace into creature_questrelation (id, quest) values (11536, 9221);
replace into creature_involvedrelation (id, quest) values (11536, 9221);

replace into creature_questrelation (id, quest) values (11536, 9223);
replace into creature_involvedrelation (id, quest) values (11536, 9223);

replace into creature_questrelation (id, quest) values (11536, 9226);
replace into creature_involvedrelation (id, quest) values (11536, 9226);

replace into creature_template (entry, name, display_id1) values (80007, 'Quest 80395 Custom Trigger 1', 328);
UPDATE `quest_template` SET `ReqCreatureOrGOId1`='80007' WHERE entry=80395;