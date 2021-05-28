-- Ms. Fix-it!

replace into item_template values (70030, 0, 12, 0, 'Wood', 'Dried logs of timber that will easily burn.', 929, 1, 0, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 4, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, null);

replace into gameobject_template values (1772000, 0, 3, 24459, 'Dry Fire Wood', 0, 0, 1, 57, 1772000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (1772000, 70030, -100, 1, 1, 1);

update creature_template set npc_flags = 2 where entry = 81061;

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (0,70050,15,40,36,0,0,'Ms. Fix-it!','That drunken fool! He\'s absolutely outrageous! I am here for serious matters, not mundane, meaningless tasks. I will not stand for this, no, no!\n\n$N, please, help me out. I\'d rather pay you than give that man the satisfaction that he convinced someone of my intellect to do this, this “thing”.\n\nThere should be some old lumber around these ruins, this desolate place has no trees, it’s just a red rock as far as you can see! Try and find any lumber you can and bring it back to me so we can prepare a fire, and probably cook?','Gather some dry fire food and return to Noli in Badlands.','That drunk old dwarf, ugh, please come back as soon as you can!','You have no idea how much your aid means to me, I wouldn’t have done that ever, and I meant it!\n\nHere’s a little token of my appreciation.',0,0,70030,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5000,2100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (81061, 70050);
replace into creature_involvedrelation (id, quest) values (81061, 70050);

-- Oil-Stained Gold

replace into item_template values (70031, 0, 12, 0, 'Oil Canister', '', 40136, 1, 0, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 4, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

replace into gameobject_template values (1772001, 0, 3, 32882, 'Oil Canister', 0, 0, 1, 57, 1772001, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (1772001, 70031, -100, 1, 1, 1);

replace into item_template values (70032, 0, 4, 1, 'Scruffy Cloth Hat', '', 31675, 1, 0, 1, 3740, 935, 1, -1, -1, 8, 7, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, null);

replace into `creature_template` values (70060, 0, 7210, 0, 0, 0, 'Pezzik Villamar', '', 0, 5, 5, 319, 319, 0, 0, 852, 1682, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 2, '');

update creature_template set npc_flags = 2 where entry = 70060;

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (0,70051,14,9,7,0,0,'Oil-Stained Gold','Psst bub, come here for a second, will ya?\n\nHey, how you doing today? Bet just speaking to me made your day, eh. Listen here boss, it’s getting even better!\n\nI got myself some neato information I gotta share with you, you see. There’s these uh, what’d you call ‘em? Shipwrecks, yea, some old Alliance boats that supposedly still got some fuel left in them.\n\nAnd ya know, fuel is kinda a huge thing especially for us goblins so we can uh, test our intellect when it comes to engineering.\n\nAnyway, let’s not bore ourselves to death, bring me whatever you manage to salvage from those wrecks.','Bring 5 Barrels of Oil to Pezzik Villamar in Razor Hill.','Hey, pal, I know them wrecks ain’t going anywhere but can we like get them today?','Yea, that’s perfect, absolutely perfect.\n\nYou made this goblin so happy I almost got teary eyes, jokes aside, here’s your pay bub, now move along, I got oil to sell.',70031,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,420,652,1001,150,0,0,0,0,0,0,0,0,0,70032,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

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
(70033, 0, 4, 0, 'Tazan\'s Tusk', 'Claimed Trophy from an enemy.', 3429, 2, 0, 1, 1450, 1025, 12, -1, -1, 17,
0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9137, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0,
-1, 0, 0,0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 
0, 0, 0, 1, 0, 0, 0, 0, 1, null);

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (0,70052,17,13,12,0,0,'Trader\'s Misfortune','These pirates are an infestation on our port, even worse than the rats we have to exterminate each month.\n\nIt\'s absolutely laughable, $N.\n\nWhat\'s even worse is the fact that a foolish trader decided to make business with them, whatever crossed his small brain to do that I won\'t ever know.\n\nWhile you\'re out there hunting for pirates might as well end his foolish attempt to make some coin.\n\nThere\'s no need to bring me proof, I am more than sure you will see it done.','Kill Tazan and return to Wharfmaster Dizzywig in Ratchet.','In life we make choices we sometimes regret and he will regret this one.','You\'re back, great.\n\nAnd I see you picked something up as a trophy, weird, but whatever floats your boat, bub!\n\nHere\'s some coin for your troubles.',0,0,0,0,0,0,0,0,6494,1,0,0,0,0,0,0,0,0,1500,940,470,150,1001,150,0,0,0,0,0,0,0,70033,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (3453, 70052);
replace into creature_involvedrelation (id, quest) values (3453, 70052);

-- The Loch Menace

replace into item_template values
(70034, 0, 4, 0, 'Treshadon Trophy', '', 1503, 2, 0, 1, 1350, 1030, 12, -1, -1, 17, 13, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9137, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, NULL);

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (0,70053,38,20,18,0,0,'The Loch Menace','Something\'s wrong with the threshadons, $N, they are out of their hiding place and for some reason they devour all the fish they can find.\n\nFor a while now, our local fishing business has been in a decline thanks to that. I am afraid we\'ll have to accept the fact that we must thin their numbers so we can maintain a certain balance.\n\nThey are beautiful creatures we\'ve shared the lake with for generations, it pains me we must take actions against them.\n\nIt\'s only fair of me to ask an outsider to do what we can\'t and are not willing to do.','Slay Threshadons in Loch Modan and return to Warg Deepwater in Loch Modan.','Are you done already, $N?','You\'re saying they were smaller in size?\n\nThat\'d explain their hunger, but what would make them leave their nest so early and why all of them.\n\n<Warg ponders the thought for a while and turns back to you.>\n\nHere\'s the payment as promised.\n\nI will investigate further.',0,0,0,0,0,0,0,0,1224,10,0,0,0,0,0,0,0,0,1000,1170,47,150,0,0,0,0,0,0,0,0,0,70034,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

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

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (0,70054,10,25,22,0,0,'Grave Injustice','These lands aren\'t what they used to be, $c. Monsters have taken what\'s left of it, both living and death.\n\nThere have been reports of Graver Robers in the cemetery of Raven Hill. A crime this vile and depraved cannot go unpunished, adventurer.\n\nPlease head west to the Cemetery and investigate this matter. If you find any grave robbers, rid the place of them.\n\nThe place was already descrated by the Scourge, the living shouldn\'t disturb the dead even further.','Investigate the grave robber\'s activity at the cemetery.','A good deed during dark times, that\'s what you\'re about to do.','And what would I do with a shovel, $c?',70035,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1840,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (499, 70054);
replace into creature_involvedrelation (id, quest) values (499, 70054);

-- Defias of Duskwood

replace into item_template values
(70036, 0, 4, 1, 'Tattered Defias Mask', '', 15308, 2, 0, 1, 1675, 1425, 1, -1, -1, 30, 25, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 5, 7, 3, 4, 6, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 45, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, NULL);
 
replace into item_template values
(70037, 0, 4, 3, 'Defias Enforcer Shoulderguards', '', 27893, 2, 0, 1, 8180, 2045, 3, -1, -1, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 4, 7, 6, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 149, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 60, 0, 0, 0, 0, 4, 0, 0, 0, 0, 1, NULL);

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (70054,70055,10,27,24,0,0,'Defias of Duskwood','I can only think of one person with those initials and that\'s Sven Yorgen, he used to own the Yorgen Farmstead. In all the chaos the Farmstead was lost to the Defias Brotherhood who slowly made their way from Westfall.\n\nI assume Sven has nothing to do with the Grave Robbers but the Defias might, seems to me it\'s only a coincidence. In any case the Defias must be brought to an end, we have enough on our plate when it comes to enemies and cutting some of their numbers will more than likely bring peace to those who have yet to give up on their home.\n\nYou already know where this is going, slay any Defias in your way, the Nightwatch has seen their activity in Addle\'s Stead prior to your investigations, so whichever suits you better, $N.','Slay members of the Defias Brotherhood in Duskwood and return to Watcher Paige.','My trust rests with you, $N. Please, do not fail me.','While I am glad we reduced their number it never pleases me to take lives, direct or indirect.',0,0,0,0,0,0,0,0,909,10,215,15,910,10,0,0,0,0,0,2340,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,70036,1,70037,1,0,0,0,0);

replace into creature_questrelation (id, quest) values (499, 70055);
replace into creature_involvedrelation (id, quest) values (499, 70055);

-- Pitch a Tent

replace into item_template values (70038, 0, 12, 0, 'Sturdy Tent Cloth', '', 21470, 1, 0, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 4, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, null);

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (70050,70049,15,40,36,0,0,'Pitch a Tent','It seems that drunkard is getting quite the laugh from me paying you out of pocket, $N. This dwarf wants me to repair some tents! Do I look like I know how to repair a tent?! And he\'s cracking jokes about how even an ogre knows how to pitch a tent!\n\nLook $N help me out here so I don\'t make a complete fool of myself.\n\nWe\'re going to need some cloth to repair these tents and apparently those Ogres to the west may have what we\'re looking for but, believe me I have no idea what that dwarf is talking about!','Gather 10 pieces of Sturdy Tent Cloth to Noli in Badlands.','Any luck finding that cloth I need?','Thank you, $N. You know I\'ve been thinking about what that dwarf said about ogres pitching tents and it just dawned on me!\n\nI\'m going to make sure there\'s at least one dwarf who can\'t pitch a tent anymore!\n\nAnyways here is your reward. ',70038,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4700,2100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (81061, 70049);
replace into creature_involvedrelation (id, quest) values (81061, 70049);

replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (2701, 70038, -100, 5, 1, 1);
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (2715, 70038, -100, 5, 1, 1);
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (2717, 70038, -100, 5, 1, 1);
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (2718, 70038, -100, 5, 1, 1);

-- Troubles of Distant Lands (requires editing)

replace into item_template values 

(70040, 0, 12, 0, 'Summer Dew', '', 24692, 1, 0, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 4, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, null),

(70041, 0, 12, 0, 'Life\'s Dawn', '', 18168, 1, 0, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 4, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, null),

(70042, 0, 12, 0, 'Vulpa Bloom', '', 19498, 1, 0, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 4, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, null);

replace into `item_template` values (70043, 0, 15, 0, 'Tonal Stone: Kamio Island', 'Plays tunes from distant lands. It is a gift from Aneka for your services.', 22682, 1, 0, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'item_radio');

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

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (0,70048,17,13,11,0,0,'Troubles of Distant Lands','I offer you humble greetings denizen of these lands.\n\nIt is remiss of me to ask this of you, but my people are in grave danger so I cannot desist. My name is Aneka Konko, I hail from Kamio, a land across the seas. Five years ago, we first saw the fish and snake people wash upon our shores. Their encroachments have only continued and our sacred Kami can ill protect us anymore.\n\nI have arrived to this land with a small entourage to seek the help of kind souls who could assist me.\n\nOur warriors are fighting to their last breath against the invaders, although, these days most of our warriors die not to the enemy, but to illness.\n\nWe\'re ill equipped to treat the many injured. Our island is small and few of us possess the knowledge or reagents needed.\n\nWhen I first came here, I learned of three rare plants that can heal most injuries. I beg of you to assist us. Retrieve these plants from the three oasis in the barrens.\n\nEach oasis contains one of these plants. ','Gather 3 types of healing herbs for Aneka Konko in Ratchet.','Did you get the herbs? Please, so many lives can be saved.','These are the herbs... I will have them shipped to my homeland. I am in your debt $N, but I have little of value to offer you.\n\nMy people have created a unique sound-based magic. This is but a toy in Kamio, but perhaps it is worth more here. Simply hold this to your ear and then listen. Once you do, the enchantment will let you hear the songs of my homeland. I will need more help later as our war continues. Please come visit me from time to time.',70040,3,70041,3,70042,3,0,0,0,0,0,0,0,0,0,0,0,0,200,790,470,150,0,0,0,0,0,0,0,0,0,70043,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (90983, 70048);
replace into creature_involvedrelation (id, quest) values (90983, 70048);

-- Report to Darkshire

replace into item_template values (70044, 0, 12, 0, 'Watcher Paige\'s Report', '', 811, 1, 0, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 4, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, null);

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (70055,70056,10,27,26,0,0,'Report to Darkshire','You have done me and the people of Duskwood a great favour, one I would like you to report to my Commander.\n\nI am more than sure she will like to her of your success against the Defias and will probably have another job for you.\n\nTake this parchment to Commander Althea Ebonlocke, she is stationed in front of the town hall so she\'ll be hard to miss.\n\nOh and, $N? Thank you.','Bring Watcher Paige\'s report to Commander Althea Ebonlocke in Darkshire.','Yes, $c?','You have my gratitude for aiding Paige, she\'s been in that camp for a great deal of time and I wished I wouldn\'t burden her so much.\n\nAlas there\'s little we can do in the situation we\'re in.',70044,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,70044,1,0,345,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (499, 70056);
replace into creature_involvedrelation (id, quest) values (264, 70056);

-- A Simple Memory

replace into `item_template` values (70045, 0, 4, 3, 'Rusty Shovel', 'Engraved on the handle are two letters, S.Y.', 7495, 2, 0, 1, 5025, 4515, 21, -1, -1, 30, 25, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 4, 5, 0, 4, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2800, 0, 0, 30, 57, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 1, 3, 0, 0, 75, 0, 0, 0, 0, 23, 0, 0, 0, 0, 1, NULL);

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (70055,70057,10,27,26,0,0,'A Simple Memory','I hear Sven has taken shelter in a shack close to the Raven Hill Cemetery, I fear he\'s filled with regrets and probably anger.\n\nConsidering we\'ve found this shovel of his among the ruins of his lost home maybe it would somehow serve as a reminder of the past and ease his mind.\n\nPlease be careful on your way but bring it back to its owner, he will probably glad to see it, or he\'ll break it in half, who knows. Thank you again, for all you\'ve done.','Bring the Shovel to Sven Yorgen.','What is it?','What do you have there, $c?\n\nOh, where\'d you find this!\n\nThis is the first shovel my pa gave me when we worked the field together for the first time.\n\nMemories of a better time.\n\n<Sven stares at the shovel and hands it back to you.>\n\nIt was a good reminder of better days, $N, but I have no use for it anymore.\n\nDo with it what you will.',70035,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,70035,1,1000,1125,0,0,0,0,0,0,0,0,0,0,0,70045,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (499, 70057);
replace into creature_involvedrelation (id, quest) values (311, 70057);


