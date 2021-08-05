-- Ms. Fix-it!

replace into item_template values (70030, 0, 12, 0, 'Wood', 'Dried logs of timber that will easily burn.', 929, 1, 0, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 4, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, null);

replace into gameobject_template values (1772000, 0, 3, 24459, 'Dry Fire Wood', 0, 0, 1, 57, 1772000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (1772000, 70030, -100, 1, 1, 1);

update creature_template set npc_flags = 2 where entry = 81061;

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (0,70050,3,40,36,0,0,'Ms. Fix-it!','That drunken fool! He\'s absolutely outrageous! I am here for serious matters, not mundane, meaningless tasks. I will not stand for this, no, no!\n\n$N, please, help me out. I\'d rather pay you than give that man the satisfaction that he convinced someone of my intellect to do this laborsome chore.\n\nThere should be some old lumber around these ruins. This desolate place has no trees, it’s just a barren wasteland as far as I can see! Try and find any lumber you can and bring it back to me so we can prepare a fire.','Gather some dry fire wood and return to Noli in the Badlands.','That drunk old dwarf. Ugh! Please come back as soon as you can.','You have no idea how much your help means to me.\n\nHere’s a little token of my appreciation.',0,0,70030,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5000,2100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (81061, 70050);
replace into creature_involvedrelation (id, quest) values (81061, 70050);

-- Oil-Stained Gold

replace into item_template values (70031, 0, 12, 0, 'Oil Canister', '', 40136, 1, 0, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 4, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

replace into gameobject_template values (1772001, 0, 3, 32882, 'Oil Canister', 0, 0, 1, 57, 1772001, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (1772001, 70031, -100, 1, 1, 1);

replace into item_template values (70032, 0, 4, 1, 'Scruffy Cloth Hat', '', 31675, 1, 0, 1, 3740, 935, 1, -1, -1, 8, 7, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, null);

replace into `creature_template` values (70060, 0, 7210, 0, 0, 0, 'Pezzik Villamar', '', 0, 5, 5, 319, 319, 0, 0, 852, 1682, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 2, '');

update creature_template set npc_flags = 2 where entry = 70060;

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (0,70051,14,9,7,0,0,'Oil-Stained Gold','Psst, bub. Come here for a second, will ya?\n\nHey, how you doing today? Listen here, boss. I got myself some lucrative information to share with you. You see, there\’s these sunken ships, some old Alliance boats that supposedly still got some fuel left in them. They\'re just sitting there right off the coast.\n\nAnd, ya know, fuel is sort of a valuable commodity for us goblins when it comes to engineering.\n\nAnyway, let\’s get to the point. Bring me whatever you manage to salvage from the shipwrecks and I\'ll be sure to make it worth your while.','Bring 5 Barrels of Oil to Pezzik Villamar in Razor Hill.','Hey, pal. I know those ships ain’t going anywhere no more, but could you pick up your feet and get going?','Yea, that\’s perfect, absolutely perfect.\n\nYou\'ve made this goblin so happy he can almost cry. Jokes aside, here\’s your pay, bub. Now move along, I got fuel to sell.',70031,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,420,652,1001,150,0,0,0,0,0,0,0,0,0,70032,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (70060, 70051);
replace into creature_involvedrelation (id, quest) values (70060, 70051);

delete from gameobject where id = 1772001;

replace into `gameobject` values 

(4009488, 1772001, 1, 19.5486, -5333.44, -13.629, 2.33024, 0, 0, 0.918837, 0.394638, 300, 300, 100, 1, 0, 0, 0, 10),
(4009489, 1772001, 1, 45.9993, -5346.48, -14.1916, 5.67369, 0, 0, 0.300051, -0.953923, 300, 300, 100, 1, 0, 0, 0, 10),
(4009490, 1772001, 1, 62.0081, -5371.72, -9.96358, 0.409957, 0, 0, 0.203546, 0.979065, 300, 300, 100, 1, 0, 0, 0, 10),
(4009491, 1772001, 1, 176.877, -5239.62, -8.45846, 0.728043, 0, 0, 0.356035, 0.934473, 300, 300, 100, 1, 0, 0, 0, 10),
(4009492, 1772001, 1, 216.686, -5242.57, -7.6579, 1.52129, 0, 0, 0.68939, 0.72439, 300, 300, 100, 1, 0, 0, 0, 10),
(4009493, 1772001, 1, 13.5941, -5202.85, -10.2298, 2.22423, 0, 0, 0.896637, 0.442766, 300, 300, 100, 1, 0, 0, 0, 10),
(4009494, 1772001, 1, -185.46, -5309.33, -7.47469, 0.775187, 0, 0, 0.377961, 0.925821, 300, 300, 100, 1, 0, 0, 0, 10),
(4009495, 1772001, 1, -327.75, -5264.84, -8.63313, 6.05699, 0, 0, 0.112858, -0.993611, 300, 300, 100, 1, 0, 0, 0, 10),
(4009496, 1772001, 1, -220.906, -5326.64, -9.00828, 5.68, 0, 0, 0.297041, -0.954865, 300, 300, 100, 1, 0, 0, 0, 10);

-- Trader's Misfortune

replace into item_template values
(70033, 0, 4, 0, 'Tazan\'s Tusk', 'A claimed trophy from an enemy.', 3429, 2, 0, 1, 1450, 1025, 12, -1, -1, 17,
0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9137, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0,
-1, 0, 0,0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 
0, 0, 0, 1, 0, 0, 0, 0, 1, null);

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (0,70052,17,13,12,0,0,'Trader\'s Misfortune','These pirates are an infestation to our port, even worse than the rats we have to exterminate each month.\n\nIt\'s absolutely ridiculous, $N.\n\nWhat\'s even worse is the fact that some foolish trader decided to do business with them. Whatever idea crossed his small brain to do that I will never know.\n\nWhile you\'re out there hunting for pirates, be on the lookout for Tazan and take care of him as well.\n\nCome see me after and I\'ll be sure to reward you.','Kill Tazan and return to Wharfmaster Dizzywig in Ratchet.','In life we make choices we sometimes regret, and Tazan will be sure to regret this one.','You\'re back, great.\n\nAnd I see you picked something up as a trophy. Strange, but whatever floats your boat, bub!\n\nHere\'s some coin for your troubles.',0,0,0,0,0,0,0,0,6494,1,0,0,0,0,0,0,0,0,1500,940,470,150,1001,150,0,0,0,0,0,0,0,70033,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (3453, 70052);
replace into creature_involvedrelation (id, quest) values (3453, 70052);

-- The Loch Menace

replace into item_template values
(70034, 0, 4, 0, 'Treshadon Trophy', '', 1503, 2, 0, 1, 1350, 1030, 12, -1, -1, 17, 13, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9137, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, NULL);

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (0,70053,38,20,18,0,0,'The Loch Menace','Something\'s wrong with the threshadons, $N. They are out of their hiding place and are eating all the fish of the lake!\n\nFor a while now, our local fishing business has been in a decline thanks to that. I am afraid we\'ll have to accept the fact that we must cull their numbers so that we can maintain a certain balance.\n\nThey are beautiful creatures we\'ve shared the lake with for generations, so it pains me that we must take such extreme actions against them.\n\nIt\'s only expected of me to ask an outsider to do what we can\'t, and are not willing to do.','Slay Threshadons in Loch Modan and return to Warg Deepwater in Loch Modan.','Are you done already, $N?','You\'re saying they were smaller in size? That\'d explain their hunger.\n\nHowever, what would make them leave their nest so early and why all of them?\n\n<Warg ponders the thought for a while and turns back to you.>\n\nHere\'s the payment as promised. I will investigate further.',0,0,0,0,0,0,0,0,1224,10,0,0,0,0,0,0,0,0,1000,1170,47,150,0,0,0,0,0,0,0,0,0,70034,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (1683, 70053);
replace into creature_involvedrelation (id, quest) values (1683, 70053);

update creature_template set npc_flags = 18 where entry = 1683;

-- Misc. item fixes from Dragunovi:

update item_template set sheath = 0 where entry = 80745;
update item_template set armor = 334 where entry = 80526;
update item_template set armor = 334 where entry = 80626;

-- Fix Wyvern Sting DoT effect appearing in a buff slot.

replace into spell_mod (id, attributes, comment) VALUES (24135, 226492416, 'Wyvern Sting DoT effect should appear as debuff.');

-- Grave Injustice

replace into item_template values
(70035, 0, 12, 0, 'Rusty Shovel', 'The initials S.Y. are scribbled on the handle.', 7495, 1, 0, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 4, 0,0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, null);

update creature_template set npc_flags = 2 where entry = 499;

replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (218, 70035, -20, 5, 1, 1);

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (0,70054,10,25,22,0,0,'Grave Injustice','These lands aren\'t what they used to be, $c. Monsters have taken what\'s left of it, both the living and the dead.\n\nThere have been reports of grave robbers in the cemetery at Raven Hill. A crime this vile and depraved cannot go unpunished.\n\nPlease, head west to the cemetery and investigate this matter. If you find any grave robbers, get rid of them.\n\nThe place was already desecrated by the Scourge. The living shouldn\'t disturb the dead even further.','Investigate the grave robbers\' activity at the cemetery.','A good deed during dark times, that\'s what you\'re about to do.','Good work, $c. What\'s that shovel you\'ve got there? I think I recognize the initials.',70035,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1840,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (499, 70054);
replace into creature_involvedrelation (id, quest) values (499, 70054);

-- Defias of Duskwood

replace into item_template values
(70036, 0, 4, 1, 'Tattered Defias Mask', '', 15308, 2, 0, 1, 1675, 1425, 1, -1, -1, 30, 25, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 5, 7, 3, 4, 6, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 45, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, NULL);
 
replace into item_template values
(70037, 0, 4, 3, 'Defias Enforcer Shoulderguards', '', 27893, 2, 0, 1, 8180, 2045, 3, -1, -1, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 4, 7, 6, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 149, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 60, 0, 0, 0, 0, 4, 0, 0, 0, 0, 1, NULL);

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (70054,70055,10,27,24,0,0,'Defias of Duskwood','I can only think of one person with those initials and that would be Sven Yorgen. He used to own the Yorgen Farmstead. In all of the chaos the farmstead was lost to the Defias Brotherhood who slowly made their way from Westfall.\n\nI assume Sven has nothing to do with the grave robbers, but the Defias might. Seems to me it\'s only a coincidence. In any case, the Defias must be brought to an end. We have enough on our plate when it comes to enemies and culling some of their numbers will bring peace to those who have yet to given up on their home.\n\nTherefore I ask that you slay any Defias in your way. The Night Watch has seen their activity in Addle\'s Stead prior to your investigations, so perhaps it\'d be best to start there, $N.','Slay members of the Defias Brotherhood in Duskwood and return to Watcher Paige.','My trust rests with you, $N. Please, do not fail me.','While I am glad we reduced their number it never pleases me to take lives, directly or indirectly.',0,0,0,0,0,0,0,0,909,10,215,15,910,10,0,0,0,0,0,2340,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,70036,1,70037,1,0,0,0,0);

replace into creature_questrelation (id, quest) values (499, 70055);
replace into creature_involvedrelation (id, quest) values (499, 70055);

-- Pitch a Tent

replace into item_template values (70038, 0, 12, 0, 'Sturdy Tent Cloth', '', 21470, 1, 0, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 4, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, null);

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (70050,70049,3,40,36,0,0,'Pitch a Tent','It seems that drunkard is getting quite the laugh from me paying you out of pocket, $N. This dwarf wants me to repair some tents! Do I look like I know how to repair a tent?! And he\'s cracking jokes about how even an ogre knows how to pitch a tent!\n\nLook, $N, help me out here so I don\'t make a complete fool of myself.\n\nWe\'re going to need some cloth to repair these tents and apparently those ogres to the west may have what we\'re looking for. But, believe me, I have no idea what that dwarf is talking about!','Gather 10 pieces of Sturdy Tent Cloth to Noli in Badlands.','Any luck finding that cloth I need?','Thank you, $N. You know I\'ve been thinking about what that dwarf said about ogres pitching tents and it just dawned on me!\n\nI\'m going to make sure there\'s at least one dwarf who can\'t pitch a tent anymore!\n\nAnyways, here is your reward. ',70038,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4700,2100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (81061, 70049);
replace into creature_involvedrelation (id, quest) values (81061, 70049);

replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (2701, 70038, -100, 5, 1, 1);
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (2715, 70038, -100, 5, 1, 1);
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (2717, 70038, -100, 5, 1, 1);
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (2718, 70038, -100, 5, 1, 1);

-- Troubles From Distant Lands (requires editing)

replace into item_template values 

(70040, 0, 12, 0, 'Summer Dew', '', 24692, 1, 0, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 4, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, null),

(70041, 0, 12, 0, 'Life\'s Dawn', '', 18168, 1, 0, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 4, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, null),

(70042, 0, 12, 0, 'Vulpa Bloom', '', 19498, 1, 0, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 4, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, null);

replace into `item_template` values (70043, 0, 15, 0, 'Tonal Stone: Kamio', 'Plays tunes from distant lands. It is a gift from Aneka for your services.', 13849, 1, 0, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'item_radio');

update item_template set spellid_1 = 11593 where entry = 70043;

replace into gameobject_template values 
(1772003, 0, 3, 701, 'Summer Dew', 0, 0, 1, 57, 1772003, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1772004, 0, 3, 390, 'Life\'s Dawn', 0, 0, 1, 57, 1772004, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1772005, 0, 3, 2312, 'Vulpa Bloom', 0, 0, 1, 57, 1772005, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

update gameobject_template set size = 0.4 where entry in (1772003, 1772004);

replace into gameobject_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values 
(1772003, 70040, -100, 1, 1, 1),
(1772004, 70041, -100, 1, 1, 1),
(1772005, 70042, -100, 1, 1, 1);

update creature_template set npc_flags = 2 where entry = 90983;

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (0,70048,17,13,11,0,0,'Troubles From Distant Lands','I offer you humble greetings, denizen of these lands.\n\nIt is remiss of me to ask this of you, but my people are in grave danger so I cannot withhold from inquiring. My name is Aneka Konko. I hail from Kamio, a land across the seas. Five years ago, we first saw the fish and snake people wash upon our shores. Their encroachments have only continued and our sacred Kami can no longer protect us.\n\nI have arrived to this land with a small entourage to seek the help of kind souls who could assist me.\n\nOur warriors are fighting to their last breath against the invaders, although, these days most of our warriors die not to the enemy, but to illness.\n\nWe\'re ill equipped to treat the many injured. Our island is small and few of us possess the knowledge or reagents needed.\n\nWhen I first came here, I learned of three rare plants that possess immense healing properties. I beg of you to assist us. Retrieve these plants from the three oases in the Barrens.\n\nEach oasis contains one of these plants. ','Gather 3 types of healing herbs for Aneka Konko in Ratchet.','Did you get the herbs? Please, so many lives can be saved.','These are the herbs. I will have them shipped to my homeland. I am in your debt $N, but I have little in terms of value to offer you.\n\nMy people have created a unique invention that utilizes magic to produce sound. This is but a toy in Kamio, but perhaps it is worth more here. Simply hold this to your ear and then listen. Once you do, the enchantment will let you hear the songs of my homeland. I will need more help later as our war continues. Please come visit me from time to time.',70040,3,70041,3,70042,3,0,0,0,0,0,0,0,0,0,0,0,0,200,790,470,150,0,0,0,0,0,0,0,0,0,70043,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (90983, 70048);
replace into creature_involvedrelation (id, quest) values (90983, 70048);

-- Report to Darkshire

replace into item_template values (70044, 0, 12, 0, 'Watcher Paige\'s Report', '', 811, 1, 0, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 4, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, null);

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (70055,70056,10,27,26,0,0,'Report to Darkshire','You have done me and the people of Duskwood a great favour, one I would like you to report to my commander.\n\nI am more than sure she will like to hear of your success against the Defias, and she will probably have another job for you.\n\nTake this parchment to Commander Althea Ebonlocke. She is stationed in front of the town hall so she\'ll be hard to miss.\n\nOh, and, $N, thank you.','Bring Watcher Paige\'s report to Commander Althea Ebonlocke in Darkshire.','Yes, $c?','You have my gratitude for aiding Paige. She\'s been in that camp for a great deal of time.\n\nAlas, there\'s little we can do in the situation we\'re in.',70044,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,70044,1,0,345,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (499, 70056);
replace into creature_involvedrelation (id, quest) values (264, 70056);

-- A Simple Memory

replace into `item_template` values (70045, 0, 2, 4, 'Rusty Shovel', 'Engraved on the handle are two letters, S.Y.', 7495, 2, 0, 1, 18060, 4515, 21, -1, -1, 30, 25, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 4, 5, 0, 4, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2800, 0, 0, 30, 57, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 1, 3, 0, 0, 75, 0, 0, 0, 0, 23, 0, 0, 0, 0, 1, NULL);

update item_template set stat_value2 = 0, stat_value3 = 0 where entry = 70045;

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (70055,70057,10,27,26,0,0,'A Simple Memory','I hear Sven has taken shelter in a shack close to the Raven Hill Cemetery. I fear he\'s filled with regrets and probably anger.\n\nConsidering we\'ve found this shovel of his among the ruins of his lost home, maybe he would like to have it.\n\nPlease, be careful but be sure to bring the shovel back to its owner. He may be glad to see it, or he might just break it in half. Who knows. Thank you again, for all you\'ve done.','Bring the shovel to Sven Yorgen.','What is it?','What do you have there, $c?\n\nOh, where did you find this?\n\nThis was thee shovel my father had given me back when we worked the farmstead years ago. It served me well, and reminds me of him.\n\nMemories of a better time.\n\n<Sven stares at the shovel and hands it back to you.>\n\nIt was a nice gesture of you to bring me this, $N, but I have no use for it anymore.\n\nDo with it what you will.',70035,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,70035,1,1000,1125,0,0,0,0,0,0,0,0,0,0,0,70045,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (499, 70057);
replace into creature_involvedrelation (id, quest) values (311, 70057);

-- Law & Ogre

replace into `item_template` values 

(70046, 0, 4, 0, 'Silver Ring', 'Made from pure silver.', 26001, 2, 0, 1, 1250, 915, 11, -1, -1, 30, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 1, 6, 3, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, NULL),
(70047, 0, 2, 4, 'Smoldering Brand', '', 12312, 2, 0, 1, 11384, 2846, 13, -1, -1, 32, 0, 142, 75, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1800, 0, 0, 22, 38, 0, 2, 6, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7363, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 2, 3, 0, 0, 75, 0, 0, 0, 0, 25, 0, 0, 0, 0, 1, NULL),
(70048, 0, 4, 1, 'Surgeon\'s Gloves', '', 13655, 2, 64, 1, 3636, 909, 10, -1, -1, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 4, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26, 0, 0, 0, 0, 0, 0, 7679, 1, 0, 0, 300000, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 25, 0, 0, 0, 0, 4, 0, 0, 0, 0, 1, NULL);

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (70056,70058,10,28,26,0,0,'Law & Ogre','You have proven your worth to Paige, and frankly we can always use more hands in the Night Watch.\n\nWhile our forces focus on the worgen and the Scourge we would like you to take a trip to the south to Vul\'Gol Ogre Mound and reduce the ogre population.\n\nThere are only a few details that we know about the mound, but what we do know is that we need to be rid of the ogres. They are a threat to our scouts and to the roads leading to Westfall and Stranglethorn.\n\nThere\'s a reward waiting for you when you return, of course.','Kill Splinter Fist Ogres in the Vul\'Gol Ogre Mound.','Back so soon?','You\'d be a great asset to the Night Watch but I am more than certain you wouldn\'t bore yourself with guard duty. Here\'s a little reward for a job well done.',0,0,0,0,0,0,0,0,212,10,1251,5,891,10,892,10,0,0,0,1425,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,70046,1,70047,1,70048,1,0,0);

replace into creature_questrelation (id, quest) values (264, 70058);
replace into creature_involvedrelation (id, quest) values (264, 70058);

-- WANTED: Redridgeboss!

replace into creature_template (entry, display_id1, name) values (70030, 1, 'Redridgeboss');

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,type, objectivetext1) values (0,70059,44,60,17,0,0,'WANTED: Redridgeboss!','Recently a vile criminal by the name of Redridgeboss has been sighted on the premises of Lakeshire; murdering local townsfolk, hunting down clueless adventurers that fall into his devious traps, and has so far evaded capture.\n\nHis reign of terror upon the township of Lakeshire must be stopped!\n\nAn order for this outlaw\'s elimination offers a reward much higher than any other ordinary criminal.','Catch and kill Redridgeboss.','I hope you\'ve brought good news.','You actually caught him? We still don\'t understand how he evaded capture for so long. No matter the case, a just reward must be given for this heroic act!',0,0,0,0,0,0,0,0,70030,1,0,0,0,0,0,0,0,0,54000,2800,72,250,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,41, 'Redridgeboss is dead');

replace into creature_questrelation (id, quest) values (0, 70059);
replace into creature_involvedrelation (id, quest) values (12480, 70059);


