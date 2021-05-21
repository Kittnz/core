update creature_template set name = 'Eliana Firestorm', display_id1 = 10214 where entry = 81057;

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, objectivetext1, objectivetext2, objectivetext3, objectivetext4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (0,70020,331,20,18,0,0,'A Brother’s Worried Mind','My little brother, Taupo, is a gifted druid and more accomplished than I would ever hope to be but he is still my little brother.\n\nHe was on his way to the Warsong Lumber Camp to help with the demonic corruption among other things. I fear he might find trouble as he has to pass through Felfire Hill.\n\nPlease, find my little brother, I would do it myself but I do not wish him to think I find him incapable, yet I still worry. He left not so long ago, following the main road east, that is the path to the Lumber Camp.','Find Taupo Foreststrider, Loruk’s brother at the beginning of Felfire Hill.','Yes?','Loruk sent you to check on me? Is he still thinking I’m a small calf with no horns?',0,0,0,0,0,0,0,0,'','','','',0,0,0,216,81,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest, patch_min, patch_max) values (11720, 70020,'0','10'); 
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values (70020, 70020,'0','10');

REPLACE INTO `creature_template` VALUES (70020, 0, 2738, 0, 0, 0, 'Taupo Foreststrider', NULL, 0, 24, 29, 2868, 2868, 0, 0, 2463, 104, 2, 1, 1.14286, 1.35, 20, 5, 0, 0, 1, 68, 88, 0, 194, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 60.7904, 83.5868, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 70020, 0, 0, 0, 0, 524298, '');

replace into creature_equip_template (entry, equipentry1) values (70020, 80836);

REPLACE INTO `item_template` VALUES (70021, 0, 12, 0, 'Bog Creature Core', '', 19497, 1, 0, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 4, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

replace into creature_loot_template values (3782, 70021, -100, 6, 1, 1, 0, 0, 10); 
replace into creature_loot_template values (3784, 70021, -100, 6, 1, 1, 0, 0, 10); 

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, objectivetext1, objectivetext2, objectivetext3, objectivetext4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (70020,70021,331,20,18,0,0,'Taupo\’s Duty','It was Earthmother’s blessing to be born with such a worried elder brother, and as fate has it there you are, just the help that I needed.\n\nWhile I was making my way to the Lumber Camp I saw this Tauren bravely fight those demons and I have stopped to tend to his wounds. My skills helped stop his bleeding, but we need a salve to fully mend him.\n\nIn the river you will find Boglings, slay them and bring me the cores, they will help bring our newest friend back on his feet, and do not worry $N, this is all in the name of balance.','Bring Taupo 10 Bog Creatures\' Cores.','Yes?','Thank you $N, this will mend our friend.',70021,10,0,0,0,0,0,0,'','','','',0,0,0,1050,81,75,0,0,0,0,0,0,0,0,0,1970,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest, patch_min, patch_max) values (70020, 70021,'0','10'); 
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values (70020, 70021,'0','10');

REPLACE INTO `creature_template` VALUES (70022, 0, 2951, 0, 0, 0, 'Norvok Hawkspear', NULL, 0, 25, 34, 2868, 2868, 0, 0, 2463, 104, 2, 1, 1.14286, 1.35, 20, 5, 0, 0, 1, 68, 88, 0, 194, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 60.7904, 83.5868, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 524298, '');

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, objectivetext1, objectivetext2, objectivetext3, objectivetext4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (70021,70022,331,21,19,0,0,'Norvok of the Spear','I was on my way to the Warsong Lumber Camp when I had my encounter with the demons, were it not for this druid I wouldn’t have made it.\n\nI have a very important report addressed to the stationary Commander in charge, Commander Grushak, I would hurry right away but the wounds have yet to release me of my pain and my spear was lost in the battle.\n\nI ask you to find it while Taupo heals me. While you search for it - spare no demon.','Kill 10 Searing Infernals and 10 Felguards.','Yes?','My horns are ready and sharpened, alas my spear was stolen by those demons, the vermin felt the blessings of the Earthmother on it!\n\nIt’s not your fault $N, you’ve bravely fought them and for that I am in your debt, here, have this necklace as a token of my gratitude.',0,0,0,0,0,0,0,0,'','','','',0,0,0,1050,81,75,0,0,0,0,0,0,0,0,0,70003,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest, patch_min, patch_max) values (70022, 70022,'0','10'); 
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values (70022, 70022,'0','10');

update quest_template set reqcreatureorgoid1 = 6073, reqcreatureorgocount1 = 10 where entry = 70022;
update quest_template set reqcreatureorgoid2 = 6115, reqcreatureorgocount2 = 10 where entry = 70022;

REPLACE INTO `creature_template` VALUES (70023, 0, 3511, 0, 0, 0, 'Commander Grushak', '', 0, 27, 33, 1400, 3400, 0, 0, 3791, 29, 3, 1, 1.38571, 0, 20, 5, 0, 1, 1, 166, 241, 0, 272, 1, 2000, 2000, 1, 36864, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 70023, 0, 0, 0, 0, 524298, '');

replace into creature_equip_template (entry, equipentry1) values (70023, 7612);

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, objectivetext1, objectivetext2, objectivetext3, objectivetext4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (70022,70023,331,21,19,0,0,'Report to Commander Grushak','I am aware I am not going anywhere anytime soon $N, there is no need for you to stare at me that way.\n\nYou will have to give my report to Commander Grushak, tell him I sent you, he will be glad to have you by his side, he’s a bit strict but that’s what will keep you alive out there. Seek him in the first tower as you reach the Lumber Camp.\n\nAs a personal request however, do keep an eye out for my spear, it carries years worth of history, been passed through my lineage from the first Hawkspear to the last and I do not wish it to be lost at the hands of demons.\n\nTravel safe my friend and may the Earthmother guide you.','Report to Commander Grushak at the Lumber Camp.','Yes?','I was expecting someone else to give me this report, $r, what happened to Norvok?',0,0,0,0,0,0,0,0,'','','','',0,0,0,520,81,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest, patch_min, patch_max) values (70022, 70023,'0','10'); 
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values (70023, 70023,'0','10');

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, objectivetext1, objectivetext2, objectivetext3, objectivetext4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (70023,70024,331,27,24,0,0,'Wildthorn Menace','The camp is as productive as the day it was built from the ground, which frankly doesn’t mean much at all.\n\nThe Wildthorn Lurkers have ascended upon our camp and are giving the peons  and laborers a hard time, while my scouts are giving their all to slay them it is not enough.\n\nGo help the cause, $N, after all I take you bringing this report as volunteering your aid, clean the camp of the wildthorn menace and I will see you rewarded.','Kill 10 Wildthorn Lurkers in Warsong Lumber Camp.','Clean the camp of the wildthorn menace and I will see you rewarded.','Already done?',0,0,0,0,0,0,0,0,'','','','',0,0,0,1520,76,75,0,0,0,0,0,0,0,0,0,933,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

update quest_template set reqcreatureorgoid1 = 3821, reqcreatureorgocount1 = 10 where entry = 70024;

replace into creature_questrelation (id, quest, patch_min, patch_max) values (70023, 70024,'0','10'); 
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values (70023, 70024,'0','10');

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, objectivetext1, objectivetext2, objectivetext3, objectivetext4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (70024,70025,331,27,24,0,0,'Knife Eared Stalkers','Those knife eared bastards are trying to force us out of the woods, they’ve sent a squadron of stalkers that hide around our fields and murder our peons, they must be stopped!\n\nGo get your hands dirty, leave none alive, and if anything make sure more of the peons don’t die.','Kill 20 Ashenvale Stalkers.','Go get your hands dirty, leave none alive, and if anything make sure more of the peons don’t die.','With the interference of the elves gone we can resume our duty in peace, thank you $N, you are more capable than I thought you will.',0,0,0,0,0,0,0,0,'','','','',0,0,0,1820,76,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,70004,1,70005,1,70006,1,0,0);

update quest_template set reqcreatureorgoid1 = 70025, reqcreatureorgocount1 = 20 where entry = 70025;

replace into creature_questrelation (id, quest, patch_min, patch_max) values (70023, 70025,'0','10'); 
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values (70023, 70025,'0','10');

REPLACE INTO `creature_template` VALUES (70025, 0, 12912, 12913, 12914, 0, 'Ashenvale Stalker', NULL, 0, 27, 27, 569, 819, 981, 618, 829, 124, 0, 1, 0.571429, 0, 20, 5, 0, 0, 1, 31, 40, 0, 104, 1, 2000, 2000, 2, 32768, 0, 0, 0, 0, 0, 0, 35.6224, 48.9808, 100, 7, 0, 12856, 12856, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 128560, 0, 29, 43, 'EventAI', 1, 3, 0, 0, 3, 12856, 0, 0, 0, 0, 0, '');

REPLACE INTO `item_template` VALUES (70022, 0, 12, 0, 'Ashenvale Bear Pelt', '', 1495, 1, 0, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 4, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, objectivetext1, objectivetext2, objectivetext3, objectivetext4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (70025,70026,331,27,24,0,0,'Peon\'s Wardrobe Makeover','With most of the tasks done, I only have but a favor to ask of you, our poor peons have been wearing the same tattered clothing since we’ve come to this damned forest, they can’t take another day in those rags and I most certainly won’t be the one blamed for naked peons chopping wood!\n\nI need you to hunt and skin some bears for me, North of Splintertree Post and in its immediate vicinity to the left you will be able to find bears, grab enough for our leatherworker to craft new cloths for those poor miserable souls, but remember $N, only hunt the eldest of the bears.','Collect 10 Elder Ashenvale Bear Pelts.','Remember, only hunt the eldest of the bears.','You have my thanks $N, your work helped me and my men more that you’d imagine, as a sign of gratitude the leatherworker made this for you.',70022,10,0,0,0,0,0,0,'','','','',0,0,0,1960,76,150,0,0,0,0,0,0,0,0,0,70008,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest, patch_min, patch_max) values (70023, 70026,'0','10'); 
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values (70023, 70026,'0','10');

replace into creature_loot_template values (3810, 70022, -100, 6, 1, 1, 0, 0, 10); 

update quest_template set questlevel = 29, minlevel = 28 where entry = 70020;
update quest_template set questlevel = 29, minlevel = 28 where entry = 70021;
update quest_template set questlevel = 29, minlevel = 28 where entry = 70022;
update quest_template set questlevel = 30, minlevel = 28 where entry = 70023;
update quest_template set questlevel = 30, minlevel = 28 where entry = 70024;
update quest_template set questlevel = 29, minlevel = 28 where entry = 70025;
update quest_template set questlevel = 30, minlevel = 28 where entry = 70026;

update item_template set flags = 2048 where entry in (59995, 59996); 

REPLACE INTO `item_template` VALUES (70023, 0, 12, 0, 'Commander Grushak\'s Report', '', 924, 1, 0, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 4, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, objectivetext1, objectivetext2, objectivetext3, objectivetext4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (70026,70027,331,28,25,0,0,'Farseer Grimeye','The fields are clear, the peons seem happy and the productivity is already going way better than they used to.\n\nThat\'s exactly why I am sending you to another mission. You seem eager to aid and frankly the Farseer needs all the help he can get.\n\nHe\'s a cranky old orc, don\'t even for a second consider his frustration as weakness. He will task you with a harsh job but I do not doubt you will do well. Go now and give him this parchment.','Deliver Commander Grushak\'s report to Farseer Grimeye.','So, Grushak finally reporting on his peons doing their job for once? ','Now, what do I do with you?',70023,1,0,0,0,0,0,0,'','','','',70023,1,0,360,76,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest, patch_min, patch_max) values (70023, 70027,'0','10'); 
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values (70027, 70027,'0','10');

REPLACE INTO `creature_template` VALUES (70027, 0, 3869, 0, 0, 0, 'Farseer Grimeye', NULL, 0, 35, 38, 2210, 2210, 0, 0, 1200, 29, 3, 1, 1.14286, 0, 20, 5, 0, 1, 1, 129, 166, 0, 122, 1, 2000, 2000, 1, 4096, 0, 0, 0, 0, 0, 0, 37.608, 51.711, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 127370, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 12737, 0, 0, 2, 0, 524288, '');

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, objectivetext1, objectivetext2, objectivetext3, objectivetext4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (70027,70028,331,28,25,0,0,'Demon Fall Canyon','What do you see here $N? I will tell you what I see; a roaming pack without its Alpha. Simple minded buffoons who lost their commander.\n\nSometimes I ask myself what would have happened if Hellscream… doesn\'t matter now.\n\nFalling down into the Demon Fall Canyon you will see numerous spawns of the Burning Legion. As you should know, a great demon fell there, hence the namesake, I suppose.\n\nYour mission is clear, yet, not so simple. Wreak havoc and cull their numbers. I expect you do whatever you see fit to leave none alive.','Slay 10 Mannoroc Lashers, 10 Searing Infernals and 10 Felguards. Report to Farseer Grimeye.','I take it you\'re not a coward, so why are you still here?','Good. While their numbers are Legions and our arms never rest, we will prevail thanks to the sheer desire to survive overcoming their plans to conquer.\n\nCome, I have few items saved as payment. Choose whichever fits you best.',0,0,0,0,0,0,0,0,'','','','',0,0,0,1960,76,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,70010,1,70011,1,0,0,0,0);

replace into creature_questrelation (id, quest, patch_min, patch_max) values (70027, 70028,'0','10'); 
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values (70027, 70028,'0','10');

update quest_template set reqcreatureorgoid1 = 11697, reqcreatureorgocount1 = 10 where entry = 70028;
update quest_template set reqcreatureorgoid2 = 6073, reqcreatureorgocount2 = 10 where entry = 70028;
update quest_template set reqcreatureorgoid3 = 6115, reqcreatureorgocount3 = 10 where entry = 70028;

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, objectivetext1, objectivetext2, objectivetext3, objectivetext4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (70028,70029,331,28,25,0,0,'What We Know','Our grunts found one of these Night Elves stalking about, the deformed creature had a letter on its corpse. I will spare you the disgust I had while trying to decipher that abomination of a language.\n\nAbove the canyon you should be able to find a Barrow Den, one of the holes these knife eared mongrels like to dig. From what I could gather of this piece of paper, a greater menace can be found at its lowest level.\n\nFind out what\'s hiding there and come back as swift as the wind.','Discover the real menace.','Hopefully you will survive to tell the story, $c.','A Dreadlord of all things? This won\'t be easy, at your current state you\'re nothing more than a twig in a cyclone, but there are other ways.',0,0,0,0,0,0,0,0,'','','','',0,0,0,1380,76,75,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

update quest_template set objectivetext1 = 'Discover what\'s hiding in the Barrow Den' where entry = 70029;

replace into creature_questrelation (id, quest, patch_min, patch_max) values (70027, 70029,'0','10'); 
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values (70027, 70029,'0','10');

REPLACE INTO `creature_template` VALUES (70028, 0, 3869, 0, 0, 0, 'Quest 70029 Custom Trigger', NULL, 0, 35, 38, 2210, 2210, 0, 0, 1200, 29, 3, 1, 1.14286, 0, 20, 5, 0, 1, 1, 129, 166, 0, 122, 1, 2000, 2000, 1, 4096, 0, 0, 0, 0, 0, 0, 37.608, 51.711, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 127370, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 12737, 0, 0, 2, 0, 524288, '');

REPLACE INTO `gameobject_template` VALUES (3000101, 0, 5, 381, 'Quest 70029 Custom Trigger', 0, 0, 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_exploration_trigger');

update quest_template set reqcreatureorgoid1 = 70028, reqcreatureorgocount1 = 1 where entry = 70029;

REPLACE INTO `item_template` VALUES (70024, 0, 12, 0, 'Farseer Grimeye\'s Letter', '', 3024, 1, 0, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 4, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

replace into creature_questrelation (id, quest, patch_min, patch_max) values (70027, 70030,'0','10'); 
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values (3995, 70030,'0','10');

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, objectivetext1, objectivetext2, objectivetext3, objectivetext4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (70029,70030,331,28,25,0,0,'A Very Unpleasant Troll','We need to...\n\n<the old orc sighs>\n\nWe will need the help of an old "friend" of mine. Nothing beats a Witch Doctor\'s mojo so I am sending you to Stonetalon.\n\nFind Jin\'Zil and give him this letter, his mojo is potent enough to shrink the Dreadlord and weaken it enough for you to slay it.\n\nHowever! He will have a task for you, probably something easy and meaningless so don\'t waste too much time over there, we have a dreadlord to slay.','Find Jin\'Zil and give him the letter from Grimeye.','Three little elves hugging the trees, ol\' Jin\'Zil will be cooking soon!','Ah, hello mon, I didn\'t notice you, what do you want?',70024,1,0,0,0,0,0,0,'','','','',70024,1,0,450,76,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, objectivetext1, objectivetext2, objectivetext3, objectivetext4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (70030,70031,331,28,25,0,0,'Jin\'Zil\'s Stew','Grimeye wants my mojo to kill a Dreadlord eh?\n\nSure mon, Jin\'Zil will help you if you help Jin\'Zil, this stew needs more stuff!\n\nYou bring the stuff and I give you the mojo.\n\nI will need some melon juice, dwarven mild, wild hog shank and some soothing spices!\n\nGo, Jin\'Zil will stir the cauldron and wait for you!','Collect all ingredients for Jin\'Zil\'s stew.','Hey, $n, I wonder what $r tastes like.\n\nBut don\'t worry I won\'t be eating you! Maybe.','My stew is almost done, let\'s have a taste.\n\nTerrible!\n\nI mean, it tastes better than my wife\'s cooking.',1205,5,422,5,3771,5,3713,10,' ',' ',' ',' ',0,0,0,1950,0,0,0,0,0,0,0,0,0,0,0,70009,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest, patch_min, patch_max) values (3995, 70031,'0','10'); 
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values (3995, 70031,'0','10');

replace into creature_questrelation (id, quest, patch_min, patch_max) values (3995, 70032,'0','10'); 
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values (70027, 70032,'0','10');

REPLACE INTO `item_template` VALUES (70025, 0, 12, 0, 'Jin\'Zil\'s Mojo', '', 1275, 1, 0, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 4, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, objectivetext1, objectivetext2, objectivetext3, objectivetext4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (70031,70032,331,29,26,0,0,'The Good Mojo','Here mon take this package and deliver it to Grimeye, Jin\'Zil took the liberty of adding more than the mojo you needed for the old cranky orc.\n\nJust give him my regards and tell me he still owes me coin from when we rolled in the bones!\n\nI am never gonna forget it!','Deliver the package to Farseer Grimeye.','What took you this long?','That daft fool just won\'t let go of it! I told him we were not playing on coin, gah.\n\n<Grimeye clears his throat.>\n\nIn any case $N, well done. Now let\'s go kill us a dreadlord.',70025,1,0,0,0,0,0,0,' ',' ',' ',' ',70025,1,0,360,76,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

REPLACE INTO `item_template` VALUES (70026, 0, 12, 0, 'Diathorus\'s Head', '', 20931, 1, 0, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 4, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

replace into creature_loot_template values (6072, 70026, -100, 6, 1, 1, 0, 0, 10); 

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, objectivetext1, objectivetext2, objectivetext3, objectivetext4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (70032,70033,331,30,27,0,0,'The Seeker\'s Demise','This is it $N, your most dangerous task yet, but I am more than sure you will succeed.\n\nYou showed courage I have not seen in so long, may the ancestors guide your steps and may you return unharmed.\n\nYou have my blessings and the ancestors at your side.\n\nRemember that where you stand a great warrior once stood and you too shall walk in his steps, slay them with pride in your heart!','Kill Diathorus the Seeker and take his head back to Farseer Grimeye.','Bring me his severed head and I will set it on fire!','You have done something not many can do, $c, walk with pride from this day onward.\n\nThis old orc is reminded of the past but from now on he will dream of the future.\n\nI will set fire to the head and mention you the slayer to our clan, but the ancestors tell me your path only begins my dear friend.\n\nI truly hope you will one day find what you seek.',70026,1,0,0,0,0,0,0,'','','','',0,0,0,2640,76,150,0,0,0,0,0,0,0,0,0,70012,1,81290,1,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest, patch_min, patch_max) values (70027, 70033,'0','10'); 
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values (70027, 70033,'0','10');

update quest_template set reqcreatureorgoid1 = 6072, reqcreatureorgocount1 = 1 where entry = 70033;
update quest_template set reqcreatureorgoid2 = 11697, reqcreatureorgocount2 = 10 where entry = 70033;
update quest_template set reqcreatureorgoid3 = 6073, reqcreatureorgocount3 = 10 where entry = 70033;
update quest_template set reqcreatureorgoid4 = 6115, reqcreatureorgocount4 = 10 where entry = 70033;

replace into item_template values
 ('70008', '0', '4', '1', 'Ashenvale Shawl', '', '23070', '2', '0', '1', '6592', '1648', '16', '-1', '-1', '29',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '10', '0', '6', '4', '7', '4',
 '0', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '22', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '0', '0', '0', '0', '0', '4', '0', '0', '0',
 '0', '1', NULL);
 
update item_template set name = 'Hawkspear\'s Ceremonial Headdress' where entry = 70014;

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, objectivetext1, objectivetext2, objectivetext3, objectivetext4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (70022,70034,331,27,26,0,0,'Hawk\'s Beak','As you go sowing and reaping demons like a farmer in the harvest you come upon a broken spear.\n\nThe handle was destroyed and the blade was in poor shape.\n\nYou immediately realise this is the spear you\'ve been tasked to return if you were to find it.','Take what remains of the spear to Norvok Hawkspear.','Yes?','This spear served my family for many generations.\n\nI am saddened that I was the one to bring it to its end, and brought shame upon my tribe.\n\n<Norvok takes a deep breath through his huge nostrils and lets the air out with a smile.>\n\nDon\'t look sad my newest friend, you helped me more than you know, this is not the end but merely the beginning.\n\nI will reforge the blade and make it more sturdy, after all even when you cut a hawk\'s wings his beak is as dangerous as ever.',70027,1,0,0,0,0,0,0,'','','','',0,0,5000,1650,81,150,0,0,0,0,0,0,0,0,0,70014,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into item_template values
 ('70027', '0', '12', '0', 'Broken Spear', 'The handle is destroyed and the blade is in poor shape.', '26500', '1', '0', '1', '0', '0', '0', '-1', '-1', '0', '27', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '4', '0', '0', '0', '70034', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values (70022, 70034,'0','10');
 
replace into creature_loot_template values (6072, 70027, 10, 7, 1, 1, 0, 0, 10); 
replace into creature_loot_template values (6073, 70027, 10, 7, 1, 1, 0, 0, 10); 
replace into creature_loot_template values (6115, 70027, 10, 7, 1, 1, 0, 0, 10); 
replace into creature_loot_template values (11697, 70027, 10, 7, 1, 1, 0, 0, 10); 

replace into creature_template_addon (entry, bytes1) values (70022, 3);
update creature_template set script_name = 'npc_norvok' where entry = 70022;

UPDATE `creature_spells` SET `spellId_1` = 15623 WHERE `entry` = 169840;
UPDATE `creature_template` SET `mechanic_immune_mask` = 1023391482 WHERE `entry` = 16573;

REPLACE INTO `gameobject_template` VALUES (3000105, 0, 1, 2091, 'Zeppelin\'s Shortwave Radio', 0, 0, 0.4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_expansion_radio');

update gameobject set spawntimesecsmin = 36000, spawntimesecsmax = 40000 where id in (153464, 2843) and spawntimesecsmin < 18000;

UPDATE `battleground_template` SET `min_players_per_team`='2', `max_players_per_team`='2' WHERE (`id`='4') AND (`patch`='0');

replace into item_template values
 ('81290', '0', '2', '19', 'Diathorus\' Claw', '', '33125', '3', '0', '1', '22768', '5692', '15', '-1', '-1', '33',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1900', '100',
 '0', '39', '71', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '2', '0', '0', '0', '65', '0', '0', '0', '0', '43', '0', '0', '0',
 '0', '1', NULL);
 
update item_template set item_level = 20 where entry in (80730, 80739);
update quest_template set requiredraces = 589 where entry = 5001;
update quest_template set requiredraces = 434 where entry = 4982;

delete from creature_loot_template where item = 20697;

update item_template set description = 'Appearances of this beloved and ultra-reclusive murloc are sure to draw a crowd.' where entry = 20371;

-- Theramore Deserters that were added in TBC.
DELETE FROM `creature` WHERE `guid` IN (30741, 30769, 30770, 30742, 30772, 30773, 30771, 30774, 30776);
DELETE FROM `creature_addon` WHERE `guid` = 30741;

-- Post May 13.

UPDATE `creature_template` SET `level_min`='8', `level_max`='11', `health_min`='432', `health_max`='619', `armor`='10', `rank`='1', `dmg_min`='27', `dmg_max`='43', `attack_power`='40', `regeneration`='1' WHERE (`entry`='5435') AND (`patch`='0');

-- Down the Ridge quest zone:
update quest_template set zoneorsort = 9 where entry = 60145;

-- Knobby's spawntimer:
update creature set spawntimesecsmin = 36000, spawntimesecsmax = 40000 where id = 80901;

-- Fix wrong quest id for A Donation of Wool.

UPDATE `creature_questrelation` SET `quest`=7792 WHERE `quest`=7797;
UPDATE `creature_involvedrelation` SET `quest`=7792 WHERE `quest`=7797;
UPDATE `quest_template` SET `PrevQuestId`=7792 WHERE `PrevQuestId`=7797;
UPDATE `quest_template` SET `NextQuestId`=7792 WHERE `NextQuestId`=7797;
UPDATE `quest_template` SET `NextQuestInChain`=7792 WHERE `NextQuestInChain`=7797;
UPDATE `quest_template` SET `ExclusiveGroup`=-7792 WHERE `ExclusiveGroup`=-7797;
UPDATE `quest_template` SET `entry`=7792 WHERE `entry`=7797;

-- mana surge should not drop loot 
UPDATE `creature_template` SET `gold_min` = 0, `gold_max` = 0 WHERE `entry` = 6550;

-- quest 813 should be repeatable
UPDATE `quest_template` SET `SpecialFlags` = 1 WHERE `entry` = 813;

-- Witherbark Bloodling should not drop loot
UPDATE `creature_template` SET `gold_min` = 0, `gold_max` = 0 WHERE `entry`= 7768;

-- musty tome must despawn after used (has that flag set up.. but with restock timer it will never happen)
-- UPDATE `gameobject_template` SET `data2`=0 WHERE `entry` IN (176150,176151);
UPDATE `gameobject` SET `spawntimesecsmin` = 60, `spawntimesecsmax` = 60 WHERE id = 176151;
UPDATE `gameobject` SET `spawntimesecsmin` = 60, `spawntimesecsmax` = 60 WHERE id = 176150;


-- Events list for Venture Co. Drudger
DELETE FROM `creature_ai_events` WHERE `creature_id`=3284;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (328401, 3284, 0, 2, 0, 100, 0, 20, 0, 0, 0, 328401, 0, 0, 'Venture Co. Drudger - Flee at 20% HP');
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (328401, 0, 47, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Venture Co. Drudger - Flee');

-- Events list for Venture Co. Peon
DELETE FROM `creature_ai_events` WHERE `creature_id`=3285;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (328501, 3285, 0, 2, 0, 100, 0, 20, 0, 0, 0, 328501, 0, 0, 'Venture Co. Peon - Flee at 20% HP');
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (328501, 0, 47, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Venture Co. Peon - Flee');

-- Events list for  Theramore Marine
DELETE FROM `creature_ai_events` WHERE `creature_id`=3385;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (338501, 3385, 0, 2, 0, 100, 0, 20, 0, 0, 0, 338501, 0, 0, 'Theramore Marine - Flee at 20% HP');
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (338501, 0, 47, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Theramore Marine - Flee');


-- make some of npcs walk correctly on theirs path (credit cmangos)
-- chepi 8361
UPDATE `creature_template` SET `inhabit_type` = 3 WHERE `entry` = 8361;

-- bluff runner windstrider 10881
UPDATE `creature_template` SET `inhabit_type` = 3 WHERE `entry` = 10881;

-- hunter sagewind 14440
UPDATE `creature_template` SET `inhabit_type` = 3 WHERE `entry` = 14440;

-- hunter ragetotem 14441
UPDATE `creature_template` SET `inhabit_type` = 3 WHERE `entry` = 14441; 

UPDATE `creature_template` SET `school_immune_mask`= 8 WHERE `entry` = 5855;

-- make weaver immune to nature (credit cmangos)
UPDATE `creature_template` SET `school_immune_mask` = 8 WHERE `entry` = 5720;

-- add SrcSpell to bring the light (credit cmangos)
UPDATE `quest_template` SET `SrcSpell` = 2791 WHERE `entry` = 3636;

-- update bluff runner windstrider waypoints (credit cmangos)
UPDATE `creature` SET `position_x` = -1258.878, `position_y` = 53.962566, `position_z` = 126.969604 WHERE id = 10881;
DELETE FROM `creature_movement` WHERE `id` IN (SELECT `guid` FROM `creature` WHERE `id` = 10881);
DELETE FROM `creature_movement_template` WHERE `entry` = 10881;
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
(10881, 1, -1258.878, 53.962566, 126.969604, 100, 0, 0),
(10881, 2, -1246.9214, 65.498535, 127.314575, 100, 0, 0),
(10881, 3, -1224.9215, 87.38759, 131.42007, 100, 0, 0),
(10881, 4, -1210.0996, 106.45025, 134.02478, 100, 0, 0),
(10881, 5, -1205.4197, 118.94437, 134.62341, 100, 0, 0),
(10881, 6, -1210.4836, 129.97784, 134.47864, 100, 0, 0),
(10881, 7, -1224.1403, 138.96002, 133.51216, 100, 0, 0),
(10881, 8, -1242.7533, 133.13496, 132.38449, 100, 0, 0),
(10881, 9, -1263.6498, 129.13365, 131.77036, 100, 0, 0),
(10881, 10, -1278.4678, 122.21289, 131.34344, 100, 0, 0),
(10881, 11, -1292.0016, 108.51972, 131.21844, 100, 0, 0),
(10881, 12, -1279.579, 89.99417, 129.15378, 100, 0, 0),
(10881, 13, -1265.1466, 72.79845, 127.73132, 100, 0, 0),
(10881, 14, -1246.938, 66.752495, 127.50574, 100, 0, 0),
(10881, 15, -1225.2654, 87.69873, 131.45486, 100, 0, 0),
(10881, 16, -1209.452, 106.00795, 134.10266, 100, 0, 0),
(10881, 17, -1204.6263, 118.88873, 134.81384, 100, 0, 0),
(10881, 18, -1209.9927, 130.29185, 134.53772, 100, 0, 0),
(10881, 19, -1224.5853, 137.18607, 133.47163, 100, 0, 0),
(10881, 20, -1242.8, 133.86388, 132.55144, 100, 0, 0),
(10881, 21, -1264.6481, 129.59421, 131.83456, 100, 0, 0),
(10881, 22, -1291.852, 107.38696, 131.2923, 100, 0, 0),
(10881, 23, -1263.6343, 73.05393, 127.68298, 100, 0, 0),
(10881, 24, -1271.1027, 62.49056, 127.41394, 100, 0, 0),
(10881, 25, -1297.4215, 60.88097, 128.78162, 100, 0, 0),
(10881, 26, -1323.3235, 55.73557, 129.12485, 100, 0, 0),
(10881, 27, -1331.5046, 43.56836, 129.24985, 100, 0, 0),
(10881, 28, -1328.7695, 28.182346, 129.32643, 100, 0, 0),
(10881, 29, -1321.5947, 15.010742, 130.22414, 100, 0, 0),
(10881, 30, -1313.2676, 5.03125, 132.57643, 100, 0, 0),
(10881, 31, -1298.2849, 0.096191, 133.16522, 100, 0, 0),
(10881, 32, -1285.0809, -2.094455, 134.23892, 100, 0, 0),
(10881, 33, -1278.8915, -16.228027, 140.63223, 100, 0, 0),
(10881, 34, -1279.4957, -21.175594, 142.65372, 100, 0, 0),
(10881, 35, -1280.5413, -31.30919, 146.36734, 100, 0, 0),
(10881, 36, -1280.6606, -36.26666, 148.2692, 100, 0, 0),
(10881, 37, -1281.3783, -47.740993, 152.14688, 100, 0, 0),
(10881, 38, -1281.7482, -58.54069, 155.19382, 100, 0, 0),
(10881, 39, -1282.2838, -70.57406, 157.78886, 100, 0, 0),
(10881, 40, -1267.4594, -79.44803, 162.63017, 100, 0, 0),
(10881, 41, -1254.8102, -78.07655, 162.99677, 100, 0, 0),
(10881, 42, -1230.3444, -67.61344, 162.36197, 100, 0, 0),
(10881, 43, -1228.4113, -82.74897, 162.67325, 100, 0, 0),
(10881, 44, -1219.8137, -97.4598, 162.8417, 100, 0, 0),
(10881, 45, -1201.5387, -100.09386, 162.89145, 100, 0, 0),
(10881, 46, -1192.1188, -91.5574, 162.72011, 100, 0, 0),
(10881, 47, -1185.5045, -81.63634, 162.54579, 100, 0, 0),
(10881, 48, -1184.0348, -66.65267, 161.89906, 100, 0, 0),
(10881, 49, -1188.6537, -50.857475, 161.88515, 100, 0, 0), 
(10881, 50, -1200.2048, -36.68023, 162.40787, 100, 0, 0),
(10881, 51, -1212.2988, -33.86388, 163.08316, 100, 0, 0),
(10881, 52, -1222.895, -45.217556, 162.96524, 100, 0, 0),
(10881, 53, -1229.6758, -59.198895, 162.7106, 100, 0, 0),
(10881, 54, -1232.1641, -69.4713, 162.50626, 100, 0, 0),
(10881, 55, -1253.0083, -78.41298, 162.99677, 100, 0, 0),
(10881, 56, -1267.7615, -80.29845, 162.65508, 100, 0, 0),
(10881, 57, -1282.3258, -71.691734, 158.1978, 100, 0, 0),
(10881, 58, -1282.0757, -58.58692, 155.54141, 100, 0, 0),
(10881, 59, -1282.3276, -48.19157, 152.46475, 100, 0, 0),
(10881, 60, -1281.4308, -31.95459, 146.76236, 100, 0, 0),
(10881, 61, -1279.5905, -15.625922, 140.13492, 100, 0, 0),
(10881, 62, -1286.704, -1.506185, 134.09781, 100, 0, 0),
(10881, 63, -1300.445, 0.512207, 133.07643, 100, 0, 0),
(10881, 64, -1314.4199, 5.9609375, 132.32643, 100, 0, 0),
(10881, 65, -1328.3633, 27.155544, 129.32643, 100, 0, 0),
(10881, 66, -1332.2041, 43.451225, 129.24985, 100, 0, 0),
(10881, 67, -1323.8455, 55.51096, 129.12485, 100, 0, 0),
(10881, 68, -1297.5516, 61.62397, 128.66028, 100, 0, 0),
(10881, 69, -1271.4805, 63.266655, 127.550415, 100, 0, 0);

-- update darnassus sentinel waypoints (credit cmangos)
UPDATE `creature` SET `position_x` = 8644.208, `position_y` = 853.2105, `position_z` = 22.355267, `orientation` = 1.50239 WHERE `guid` = 46825;
DELETE FROM `creature_movement` WHERE `id` = 46825;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime` , `script_id`) VALUES
(46825, 1, 8647.808, 868.63934, 23.212633, 100, 0, 0),
(46825, 2, 8657.981, 873.3514, 22.37611, 100, 0, 0),
(46825, 3, 8670.864, 876.9106, 22.123152, 100, 0, 0),
(46825, 4, 8680.514, 881.326, 23.230516, 100, 0, 0),
(46825, 5, 8685.484, 889.3323, 22.422583, 100, 0, 0),
(46825, 6, 8686.014, 904.0842, 21.40408, 100, 0, 0),
(46825, 7, 8687.324, 922.13214, 16.083908, 100, 0, 0),
(46825, 8, 8689.776, 930.66925, 15.553102, 100, 0, 0),
(46825, 9, 8696.605, 941.5968, 13.781057, 100, 0, 0),
(46825, 10, 8696.757, 949.54407, 13.006399, 100, 0, 0),
(46825, 11, 8695.549, 956.4781, 12.202627, 100, 0, 0),
(46825, 12, 8691.133, 966.0688, 11.514212, 100, 0, 0),
(46825, 13, 8684.711, 974.0922, 10.755286, 100, 0, 0),
(46825, 14, 8676.798, 984.3464, 8.006629, 100, 0, 0),
(46825, 15, 8682.726, 987.4831, 9.514258, 100, 0, 0),
(46825, 16, 8689.632, 988.9705, 11.368621, 100, 0, 0),
(46825, 17, 8682.726, 987.4831, 9.514258, 100, 0, 0),
(46825, 18, 8676.798, 984.3464, 8.006629, 100, 0, 0),
(46825, 19, 8684.711, 974.0922, 10.755286, 100, 0, 0),
(46825, 20, 8691.133, 966.0688, 11.514212, 100, 0, 0),
(46825, 21, 8695.549, 956.4781, 12.202627, 100, 0, 0),
(46825, 22, 8696.757, 949.54407, 13.006399, 100, 0, 0),
(46825, 23, 8696.605, 941.5968, 13.781057, 100, 0, 0),
(46825, 24, 8689.776, 930.66925, 15.553102, 100, 0, 0),
(46825, 25, 8687.324, 922.13214, 16.083908, 100, 0, 0),
(46825, 26, 8686.014, 904.0842, 21.40408, 100, 0, 0),
(46825, 27, 8685.484, 889.3323, 22.422583, 100, 0, 0),
(46825, 28, 8680.514, 881.326, 23.230516, 100, 0, 0),
(46825, 29, 8670.864, 876.9106, 22.123152, 100, 0, 0),
(46825, 30, 8657.981, 873.3514, 22.37611, 100, 0, 0),
(46825, 31, 8647.808, 868.63934, 23.212633, 100, 0, 0),
(46825, 32, 8644.208, 853.2105, 22.355267, 100, 0, 0);

UPDATE `quest_template` SET `RequiredSkillValue`='70' WHERE (`entry`='1582') AND (`patch`='0');

REPLACE INTO `item_template` VALUES (81248, 0, 15, 0, 'Finn the Shark', 'Big and safe to have at your side if you want to discover the world underneath the sea.', 33467, 1, 0, 1, 6000, 1500, 0, -1, -1, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28505, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

REPLACE INTO `creature_template` VALUES (70018, 0, 15595, 0, 0, 0, 'Finn', '', 0, 1, 1, 64, 64, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, '');

update creature_template set scale = 0.4 where entry = 70018;

update item_template set class = 15, subclass = 2, quality = 1 where entry = 81248;

replace into custom_pet_entry_relation values (81248, 70018);

update creature set spawntimesecsmin = 300, spawntimesecsmax = 400 where id = 80901;
update creature set spawntimesecsmin = 300, spawntimesecsmax = 400 where id = 80207;

update creature set spawntimesecsmin = 260, spawntimesecsmax = 400 where spawntimesecsmin = 25 and id > 50000;

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, objectivetext1, objectivetext2, objectivetext3, objectivetext4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (0,70040,130,16,14,0,0,'Reinforcing The Sepulcher','I never gave up on my dream, $N, my mission still stands even in death, I lived to forge and help our proud soldiers protect themselves, alas, you too will help me to do that.\n\nOur men face peril down to Silverpine Forest, the last of the Scourge, the magi of Dalaran and the foul beasts Arugal summoned upon our lands.\n\nI’d imagine the Sepulcher it’s short supplied, bring them these items. You will be expected.\n\nUpon delivery you will be rewarded with plans for a new set of armor, so you too will be ready to face our enemy.','Basil Frye wants you to bring 4 Runed Copper belts and 4 Heavy Copper Mauls to Edwin Harly in Silverpine Forest.','Are you still here?','This will be a great help, $c.',6214,4,2857,4,0,0,0,0,'','','','',0,0,500,540,68,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest, patch_min, patch_max) values (4605, 70040,'0','10'); 
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values (2140, 70040,'0','10');

update creature_template set npc_flags = 6 where entry = 2140;

update creature_template set health_min = 1610432, health_max = 1610432, dmg_min = 3420, dmg_max = 4236, level_min = 63, level_max = 63, shadow_res = 100, script_name='boss_dark_reaver' where entry = 80936;
update creature_template set mechanic_immune_mask = 0 where entry = 80937;
REPLACE INTO `creature_template` VALUES (81266,0,12430,12431,13949,13950,'Lurking Shadow','',0,60,60,10348,10348,0,0,3640,21,0,1,1.14286,0,20,5,0,0,1,712,2422,0,272,1,1800,2000,2,0,0,0,0,0,0,0,71.9664,98.9538,100,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',1,3,0,0,3,0,0,0,3167436667,0,256,'lurking_shadow');

-- update quest_template set rewitemid1 = 2881, rewitemcount1 = 1 where entry = 70040;

delete from creature_loot_template where entry = 80936;

-- Lootable 1
 replace into creature_loot_template values (80936, 51769, 0, 1, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51770, 0, 1, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51771, 0, 1, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51772, 0, 1, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51773, 0, 1, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51774, 0, 1, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51775, 0, 1, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51776, 0, 1, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51777, 0, 1, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51778, 0, 1, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51779, 0, 1, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51780, 0, 1, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51781, 0, 1, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51782, 0, 1, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51783, 0, 1, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51784, 0, 1, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51785, 0, 1, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51786, 0, 1, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51787, 0, 1, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51788, 0, 1, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51789, 0, 1, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51796, 0, 1, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51797, 0, 1, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51798, 0, 1, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51799, 0, 1, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51800, 0, 1, 1, 1, 0, 0, 10);
 -- Loottable 2
 replace into creature_loot_template values (80936, 51769, 0, 2, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51770, 0, 2, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51771, 0, 2, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51772, 0, 2, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51773, 0, 2, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51774, 0, 2, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51775, 0, 2, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51776, 0, 2, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51777, 0, 2, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51778, 0, 2, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51779, 0, 2, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51780, 0, 2, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51781, 0, 2, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51782, 0, 2, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51783, 0, 2, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51784, 0, 2, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51785, 0, 2, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51786, 0, 2, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51787, 0, 2, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51788, 0, 2, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51789, 0, 2, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51796, 0, 2, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51797, 0, 2, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51798, 0, 2, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51799, 0, 2, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51800, 0, 2, 1, 1, 0, 0, 10);
 -- Dark Rider's Steed Loottable
 replace into creature_loot_template values (80936, 81090, 3, 3, 1, 1, 0, 0, 10);
 
 update gameobject_template set script_name = 'go_radio' where script_name like '%radio%';
 update item_template set script_name = 'item_radio' where script_name like '%radio%';
 
 REPLACE INTO `gameobject_template` VALUES (1000077, 0, 1, 2091, 'KABOOM-Box X23B76', 0, 0, 0.4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_radio');


update gameobject_template set script_name = '' where script_name = 'go_epl_growing_tree';
update gameobject_template set script_name = '' where script_name = 'go_epl_growing_tree';
update gameobject_template set script_name = '' where script_name = 'go_portal_to_orgrimmar';
update item_template set script_name = '' where script_name = 'item_cenarion_hold_teleport';
update item_template set script_name = '' where script_name = 'item_saddle';

update item_template set spellid_1 = 26158, stat_value1 = 8, stat_value2 = 8 where entry = 51738;

-- Theramore Deserters that were added in TBC.
DELETE FROM `creature` WHERE `guid` IN (30741, 30769, 30770, 30742, 30772, 30773, 30771, 30774, 30776);
DELETE FROM `creature_addon` WHERE `guid` IN (30741, 30769, 30770, 30742, 30772, 30773, 30771, 30774, 30776);

-- Fix damage and armor of starting mobs.
UPDATE `creature_template` SET `dmg_min` = 1, `dmg_max` = 2, `armor` = 16 WHERE `entry` IN (6, 707, 1512, 2955, 3098);
UPDATE `creature_template` SET `dmg_min` = 1, `dmg_max` = 2, `armor` = 15 WHERE `entry` = 1501;

-- Shadowforge Commander shouldn't drop Blue Pearls (it was obviously an error since the Giant Clam gameobject has the
-- same entry as this NPC).
DELETE FROM `creature_loot_template` WHERE `item` = 4611 AND `entry` = 2744;

-- Fix loot template of Giant Clam gameobject
-- https://www.youtube.com/watch?v=iujWLpMG2s4
-- https://classic.wowhead.com/object=2744/giant-clam#contains
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = 100, `groupid` = 1 WHERE `entry` = 2264 AND `item` = 4611;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = 35 WHERE `entry` = 2264 AND `item` = 4655;

-- Jer'kai Moonweaver is only a quest giver.
UPDATE `creature_template` SET `npc_flags` = 2 WHERE `entry` = 7957;

UPDATE `quest_template` SET `RequestItemsText` = 'Ah, yes. Another traveler seeking something from the dwarves.$B$B$G Sir:Ma''am;, I''m truly sorry, but I''ve no time to answer meaningless questions right now.' WHERE `entry` = 724;

-- Reduce Kindal Moonweaver's respawn time.
UPDATE `creature` SET `spawntimesecsmin`=30, `spawntimesecsmax`=30 WHERE `id`=7956;

-- Both creatures have the exact same skinning loot table.
UPDATE `creature_template` SET `skinning_loot_id` = 4343 WHERE `entry` = 4342;

-- [Silver Piffeny Band] shouldn't appear in chests.
DELETE FROM `gameobject_loot_template` WHERE `item` = 7342;

UPDATE `item_template` SET `min_money_loot`=50,  `max_money_loot`=100 WHERE `entry`=20708; -- Tightly Sealed Trunk
UPDATE `item_template` SET `min_money_loot`=100, `max_money_loot`=200 WHERE `entry`=21113; -- Watertight Trunk
UPDATE `item_template` SET `min_money_loot`=100, `max_money_loot`=200 WHERE `entry`=21150; -- Iron Bound Trunk
UPDATE `item_template` SET `min_money_loot`=100, `max_money_loot`=200 WHERE `entry`=21228; -- Mithril Bound Trunk

