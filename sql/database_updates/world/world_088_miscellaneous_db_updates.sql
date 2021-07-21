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

delete from item_template where entry = 50617;
delete from item_template where entry = 16104;
delete from item_template where entry = 21195;
delete from item_template where entry = 21193;
delete from item_template where entry = 21194;

update quest_template set rewxp = 1000 where entry = 70054;
update quest_template set rewxp = 2000 where entry = 70055;
update quest_template set rewxp = 2000 where entry = 70056;
update quest_template set rewxp = 2000 where entry = 70057;
update quest_template set rewxp = 2500 where entry = 70058;

REPLACE INTO `creature_template` VALUES (80008, 0, 1541, 0, 0, 0, 'Aubrey Merton', 'Blue Anchor Exports Trader', 0, 57, 57, 3758, 3758, 0, 0, 3334, 776, 6, 1, 1.14286, 0, 20, 5, 0, 0, 1, 102, 131, 0, 258, 1, 1500, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 72.2304, 99.3168, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 524298, '');

update creature_template set faction = 35 where entry = 80008;

replace into npc_vendor values 
(80008, 18256, 0, 0, 0, 0),
(80008, 8925, 0, 0, 0, 0),
(80008, 692, 0, 0, 0, 0),
(80008, 6530, 0, 0, 0, 0),
(80008, 3466, 0, 0, 0, 0),
(80008, 4470, 0, 0, 0, 0),
(80008, 11284, 0, 0, 0, 0),
(80008, 4364, 0, 0, 0, 0),
(80008, 4400, 0, 0, 0, 0),
(80008, 1645, 0, 0, 0, 0),
(80008, 8950, 0, 0, 0, 0);

update quest_template set objectives = 'Collect 20 Winterspring Tea Leaves.' where entry = 80369;

update item_template set name = 'Flintlocke\'s Hand Cannon', description = 'Also good for shooting woodchucks.' where entry = 61011;

-- CoT mobs faction update:

update creature_template set faction = 35 where entry between 65000 and 65019;

-- Misc. DB updates:

update item_template set required_reputation_faction = 910, required_reputation_rank = 7,  buy_price = 150000, sell_price = 5500 where entry = 50070;

update gameobject_template set displayid = 7726 where entry = 1000001;
update gameobject_template set displayid = 7730 where entry = 1000236;

REPLACE INTO `item_template` VALUES (70016, 0, 15, 2, 'Infinite Whelpling', 'You better believe he knows what time it is.', 31434, 1, 0, 1, 10000, 2500, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28505, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

update item_template set bonding = 1 where entry = 70016;

REPLACE INTO `creature_template` VALUES (51658, 0, 18043, 0, 0, 0, 'Infinite Whelpling', NULL, 0, 1, 1, 64, 64, 53, 53, 20, 35, 0, 1.11111, 1.14286, 0, 20, 5, 0, 0, 1, 10, 11, 0, 44, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2, '');

replace into custom_pet_entry_relation values (70016, 51658);
