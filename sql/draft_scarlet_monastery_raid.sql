
-- Scarlet Monastery (raid) introduction.

-- Sally Whitemane is dead. Confused, scattered and some even in panic, Scarlet Fanatics were laying low. Many died in attempts to continue their struggles but without a strong command leading their effort failed. However, week by week, Scarlets had reinstated their structure, and scouting groups that were mercilessly murdering every non-human being started to succeed in their crazy mission. Looks like the new leader of the Scarlet Crusade has ambitions protruding further than just instinct of other races in Azeroth: multiple human settlements had been reporting of strangers appearing in their towns speaking to the young and trying to spread their influence over their minds. 

-- Alliance attunement.

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (0,80700,1519,60,58,0,0,'A Particular Letter','I\'ve been looking for you all around the city! Although I am more of an announcer than a mailman I was instructed to give this letter to you by well… I am not sure who he was.\n\nThe figure\'s face was covered and his voice didn\'t seem familiar at all. He said you will understand when you read it.\n\nI am not one to pry, $N, but be more careful, I wouldn\'t let the guards know I associate myself with those kinds of people.','Accept suspicious letter to ease Goddman\'s mind.','Just take it off my hands before the guards think we\'re doing something shady.','Here\'s the letter, I hope I won\'t have to do this again.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,53000,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (2198, 80700);
replace into creature_involvedrelation (id, quest) values (2198, 80700);

replace into item_template values (53000, 0, 0, 0, 'Sealed Letter', 'The seal bears no crest.', 3048, 1, 2048, 1, 0, 0, 0, -1, -1, 1, 60, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 4, 0, 0, 0, 80701, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (80700,80701,1519,60,58,0,0,'The Elusive SI:7','Burn this after you\'ve read it.\n\n$N,\n\nI dearly hope this letter finds you in good health, I wish I could\'ve delivered the message in person but you must understand that we like to keep secrecy at hand.\n\nI am not sure if you\'re aware of what our organisation does, or who we entirely are, but we have discovered valuable information and we might need your help.\n\nIn the envelope you will find a ring, keep it at hand while you come visit us, it will be the sign you\'ve accepted our mission and that the letter was burnt.\n\nUntil we meet,\nMathias Shaw.','Report to the SI:7 and present the ring to Mathias Shaw.','How can I help you, stranger?','Ah, my ring.\n\nIt seems you\'ve made it, apologies for the secrecy but we must be careful, even our walls have ears that do not belong to the organisation.',53001,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,53001,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_involvedrelation (id, quest) values (332, 80701);

replace into item_template values (53001, 0, 12, 0, 'Mathias Shaw\'s Ring', '', 23728, 1, 0, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 4, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

replace into creature_template (entry, name, display_id1) values (50665, 'Quest 80702 Custom Trigger 1', 328);
replace into creature_template (entry, name, display_id1) values (50666, 'Quest 80702 Custom Trigger 2', 328);
replace into creature_template (entry, name, display_id1) values (50667, 'Quest 80702 Custom Trigger 3', 328);

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (80701,80702,69,60,60,0,0,'Young and Foolish','My agents have reported that a Scarlet caravan has started moving through various towns.\n\nFrom what we know they have already gone to Lakeshire, Darkshire, Menethil and Southshore.\n\nMy only assumption is that whoever took over the Crusade after the events that transpired the Scarlet Monastery, Hearthglen and Stratholme has realised they\'ve been running short on men.\n\nI want you to go and speak to the people of Lakeshire. The locals should have at least seen something.','Interrogate the people of Lakeshire and find out the truth.','How is your task going?','So we were right, this would\'ve been valuable information if we didn\'t already receive another report.\n\nSorry about that, $N. I will be needing your help once more.',0,0,0,0,0,0,0,0,50665,1,50666,1,50667,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (332, 80702);
replace into creature_involvedrelation (id, quest) values (332, 80702);

update quest_template set objectivetext1 = 'Interrogate citizen of Lakeshire' where entry = 80702;
update quest_template set objectivetext2 = 'Interrogate citizen of Lakeshire' where entry = 80702;
update quest_template set objectivetext3 = 'Interrogate citizen of Lakeshire' where entry = 80702;

update creature_template set script_name = 'npc_young_and_foolish' where entry in (341, 956, 344);
update creature_template set npc_flags = 16389 where entry = 956;

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (80702,80703,44,60,60,0,0,'Caravan Meets Caravan','The SI:7 have means of communication that reach us quite fast and believe it or not they are very reliable.\n\nSparring you any further details you should know that a dwarven caravan that was meant to reach Aerie Peak never made it out of the Wetlands.\n\nThe caravan lays in ruins and you can only find the mutilated husks of what used to be dwarves.\n\nOur agents already poked around the zone but failed to find anything, they are currently trying to localize these newly recruited Scarlet zealots.\n\nI am not very sure of how much of a detective you believe yourself to be but I ask you to take a second look, maybe they missed something.\n\nIf you find the recruits, keep in mind that we aren’t sure what manner of persuasion the Scarlets used to brainwash them, spare as many as you can and take them to Menethil.','Follow the Caravan\'s route and look for clues. Report to Captain Stoutfist in Menethil Harbor.','The Scarlet Crusade must be put to an end.','So this is all you could salvage from the idiots that willingly murdered our caravan, eh?\n\nI’ll take him to the dungeon, good job.',53002,1,0,0,0,0,0,0,50668,3,50669,1,50670,1,50671,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (332, 80703);
replace into creature_involvedrelation (id, quest) values (2104, 80703);

update quest_template set objectivetext1 = 'Search for clues' where entry = 80703;
update quest_template set objectivetext2 = 'Ask Kixxle if he saw anything' where entry = 80703;
update quest_template set objectivetext3 = 'Defeat Scarlet Recruits' where entry = 80703;
update quest_template set objectivetext4 = 'Bring Vladeus Springriver back to Menethil Harbor' where entry = 80703;

replace into creature_template (entry, name, display_id1) values (50668, 'Quest 80703 Custom Trigger 1', 328);
replace into creature_template (entry, name, display_id1) values (50669, 'Quest 80703 Custom Trigger 2', 328);
replace into creature_template (entry, name, display_id1) values (50670, 'Quest 80703 Custom Trigger 3', 328);
replace into creature_template (entry, name, display_id1) values (50671, 'Quest 80703 Custom Trigger 3', 328);

replace into creature_template values (50672, 0, 1598, 1608, 0, 0, 'Dwarf Mountaineer', NULL, 0, 30, 30, 1910, 1910, 0, 0, 1200, 57, 0, 1.08, 1.14286, 0, 20, 5, 0, 0, 1, 42, 53, 0, 122, 1, 1710, 1881, 1, 0, 0, 0, 0, 0, 0, 0, 42.1344, 57.9348, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 130760, 0, 0, 0, 'GuardAI', 0, 3, 0, 0, 3, 13076, 0, 0, 0, 0, 525312, 'search_for_clues');

replace into broadcast_text (entry, male_text) values (51680, 'It appears that this dwarf wasn’t only killed but also mutilated, his jaw was missing.'); 
replace into npc_text (id, broadcasttextid0) values (51680, 51680);

update creature_template set dynamic_flags = 36, npc_flags = 1 where entry = 50672;
replace into creature_template_addon (entry, bytes1) values (50672, 7);

replace into gameobject_template values (1000167, 0, 2, 32882, 'Oil Canister', 35, 0, 1, 0, 0, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'search_for_clues');

replace into broadcast_text (entry, male_text) values (51681, 'The canister was empty, its contents most likely were poured over what was still seemingly aflame.'); 
replace into npc_text (id, broadcasttextid0) values (51681, 51681);

replace into gameobject_template values (1000168, 0, 2,  2350, 'Small Wooden Crate', 35, 0, 0.5, 0, 0, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'search_for_clues');

replace into item_template values (53002, 0, 12, 0, 'Scarlet Recruit\'s Insignia Ring', '', 28682, 1, 0, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 4, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

replace into broadcast_text (entry, male_text) values (51682, 'You are now certain that the new recruits were the ones to slaughter these dwarves.\n\nThe missing jaw however is something that raises your suspicions, your next thought would be to ask the Goblin that camps south of where you are, at the Crossroads if he was the one to sell them the oil.'); 
replace into npc_text (id, broadcasttextid0) values (51682, 51682);

update creature_template set script_name = 'npc_kixxle', npc_flags = 7 where entry = 8305; 
update creature_template set script_name = 'npc_captain_stoutfist', npc_flags = 2 where entry = 2104; 

replace into creature_template values (50673, 0, 2467, 2471, 2468, 2483, 'Scarlet Recruit', NULL, 0, 60, 60, 1607, 1658, 2289, 2369, 2810, 89, 0, 1, 0.857143, 0, 20, 5, 0, 0, 1, 154, 184, 0, 268, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 70.4704, 96.8968, 100, 7, 0, 12352, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 123520, 0, 59, 296, 'EventAI', 0, 3, 0, 0, 3, 12352, 0, 0, 0, 0, 0, '');

replace into creature_template values (50674, 0, 2565, 0, 0, 0, 'Vladeus Springriver', NULL, 0, 60, 60, 2607, 2658, 2289, 2369, 2810, 89, 0, 1, 0.857143, 0, 20, 5, 0, 0, 1, 154, 184, 0, 268, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 70.4704, 96.8968, 100, 7, 0, 12352, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 123520, 0, 59, 296, 'EventAI', 0, 3, 0, 0, 3, 12352, 0, 0, 0, 0, 0, 'npc_vladeus_springriver');

update creature_template set npc_flags = 1 where entry = 50674;

replace into broadcast_text (entry, male_text) values (51683, 'I am taking responsibility for what I have done, don\'t worry, I will follow you and behave.'); 
replace into npc_text (id, broadcasttextid0) values (51683, 51683);

replace into gameobject_template values (1000169, 0, 5, 381, 'Attack Trigger: Scarlet Crusade', 0, 0, 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_scarlet_attack_trigger');

replace into gameobject_template values (1000170, 0, 5, 381, 'Trigger Condition Dummy', 0, 0, 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (80703,80704,150,60,60,0,0,'Are You True to Your Nature?','We\'ve been trying to no avail to interrogate the young lad you brought back, $N. He simply wouldn\'t talk, me and the other guards tried to persuade him as best as we could.\n\nConsidering you were there to put an end to their masquerade, I\'d assume you\'d have a better chance to draw some information out of him.\n\nCredits given where credits are due, you did a great job putting piece to piece together and finding them.\n\nTake whatever approach you\'d like, just see it done.','Decide what to do with Vladeus.','The figure in front of you is displeased at your sight and is practically tearing you apart in their mind.','You are at an impasse, not sure how to proceed. Given the circumstances you must make the best out of what you have.\n\nWhile contemplating the matter you take a wide look around the room, noticing that Stoutfist and the other guards left some means of approach to you.\n\nIt\'s time for you to decide how to approach the interrogation of the prisoner.\n\nTo your left you have the best means of persuading him, yet to your right you have the best means of torturing him.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (2104, 80704);
replace into gameobject_involvedrelation (id, quest) values (1000171, 80704);

replace into gameobject_template values (1000171, 0, 2, 24337, 'Incompleted Interrogation Report', 0, 4, 1, 0, 3672, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into creature_template values (50676, 0, 2565, 0, 0, 0, 'Vladeus Springriver', NULL, 0, 60, 60, 2607, 2658, 2289, 2369, 2810, 89, 0, 1, 0.857143, 0, 20, 5, 0, 0, 1, 154, 184, 0, 268, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 70.4704, 96.8968, 100, 7, 0, 12352, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 123520, 0, 59, 296, 'EventAI', 0, 3, 0, 0, 3, 12352, 0, 0, 0, 0, 0, 'npc_vladeus_interrogation');

update creature_template set npc_flags = 3, faction = 35, equipment_id = 0 where entry = 50676;

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (80704,80705,150,60,60,0,0,'The Means of Persuading','During your many adventures through Azeroth you have faced several perils and foes, unlike the man present before you.\n\nYou are more than sure he\'s not a wicked sort and chose to approach this lightly, staying true to your nature.\n\nWith a table full of choices you pick the best means of persuasion and are ready to begin.','Use your persuasion skills to interrogate Vladeus.','The report seems incomplete, other than some basic information of the prisoner there\'s really nothing useful there.','Reaching for the quill and ink, you note the information you extracted from Vladeus thus finalizing the report.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

update quest_template set reqcreatureorgoid1 = 50675, reqcreatureorgocount1 = 1, objectivetext1 = 'Obtain information from Vladeus' where entry = 80705;

replace into creature_template (entry, name, display_id1) values (50675, 'Quest 80705 & 80706 Custom Trigger 3', 328);

replace into gameobject_questrelation (id, quest) values (1000172, 80705);
replace into gameobject_involvedrelation (id, quest) values (1000171, 80705);

replace into gameobject_template values (1000172, 0, 2, 29546, 'Prison Guards\'s Coffee Mug', 0, 4, 1, 0, 3672, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into broadcast_text (entry, male_text) values (51684, 'What are they going to do to me? I am sorry for all I have done, I really am.\n\nI regret all of it, and given the chance I will surely make amends.'); 
replace into npc_text (id, broadcasttextid0) values (51684, 51684);

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (80704,80706,150,60,60,0,0,'Seeking Justice or Vengeance?','You\'ve met many foes on your several adventures through Azeroth, for the first time something in you clicked.\n\nHow many more scum do you have to beat, maim and kill so that this twisted world gets its damnable peace?\n\nThe Scarlet Crusade has been a personal thorn in your sides as well, maybe it\'s time to deliver some sort of justice or is it vengeance?\n\nWith a table full of tools that will aid you to obtain what you need, you are ready to embrace your demons.','Find out everything by any means necessary.','The report seems incomplete, other than some basic information of the prisoner there\'s really nothing useful there.','Reaching for the quill and ink, you note the information you extracted from Vladeus thus finalizing the report.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

update quest_template set reqcreatureorgoid1 = 50675, reqcreatureorgocount1 = 1, objectivetext1 = 'Obtain information from Vladeus' where entry = 80706;

update quest_template set exclusivegroup = 80705, nextquestid = 80707 where entry in (80705, 80706);

replace into broadcast_text (entry, male_text) values (51685, 'Please, don\'t kill me, please!\n\nI don\'t know anything else, please! I just want to go home.'); 
replace into npc_text (id, broadcasttextid0) values (51685, 51685);

replace into gameobject_template values (1000173, 0, 2, 24410, 'Iron Maiden', 0, 4, 1, 0, 3672, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_questrelation (id, quest) values (1000173, 80706);
replace into gameobject_involvedrelation (id, quest) values (1000171, 80706);

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (80705,80707,150,60,60,0,0,'The Price for Information','You\'ve extracted all the information you could get for Vladeus. Deciding you\'re done with him you let him rest and think about your next actions.\n\nIt seems news of Whitemane\'s death and the demonic influence over Stratholme reached the ears of Lady Abbendis, the last true leader of the Scarlet Crusade.\n\nWith one of her henchmen tricking young men and women to join their cause and force them into staying she\'s trying to regain some numbers.\n\nYou decide to report this to Stoutfist and ask for his opinion.','Report to Captain Stoutfist.','<You are welcomed with nothing but a silent stare.>','It seems you got what you needed then, we will send the prisoner back to Stormwind so they decide his fate.\n\nWhatever you did to obtain this information, I won\'t judge it, I just hope you are content with your own choices.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into gameobject_questrelation (id, quest) values (1000171, 80707);
replace into creature_involvedrelation (id, quest) values (2104, 80707);

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (80707,80708,1519,60,60,0,0,'Scarlet Aid','My boys made preparation for the prisoner to reach Stormwind, his fate will be decided there since he’s part of their jurisdiction.\n\nYou were of great help and I am sure you want to poke around this thing even further, I might have a lead for you, not sure how much it will help though.\n\nUnder the Cathedral District’s Chapel there’s a priest in red robes, the intel I got from Shaw’s men says that his name is Brother Crowley and was sent by the Scarlet Crusade inside the city as an ambassador of sorts.\n\nHis mission was to recruit the willing to fight in the name of the Light or whatever stupid lie these Scarlets are telling to themselves.\n\nIn any case, Crowley hasn’t been that active, we are not sure if he’s the one to recruit these blokes but it’s worth a try.','Travel to the Cathedral’s District of Stormwind and speak with Brother Crowley.','How can I assist?','Bold accusation, $r, I almost feel offended.\n\nI fear it was not me, things would’ve been simpler. I assume you got a name from your prisoner, tell me what happened.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (2104, 80708);
replace into creature_involvedrelation (id, quest) values (12336, 80708);

update creature_template set script_name = 'npc_brother_crowley' where entry = 12336;

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (80708,80709,139,60,60,0,0,'Donning the Red Flag','Abbendis must be stopped and you will be one of the thorns in her side and how better should you do it if not from the inside?\n\nWhile I hold no skill in the arts of the Arcane, a dear friend of mine who just like me will love to see her fall has provided me in the past with a few scrolls that could change one’s appearance.\n\nI am more than happy to offer you one if you were to tell nobody of it, let’s just say the scrolls were for something more meaningful, yet desperate times call for desperate measures.\n\nOnly use this when close to Tyr’s Hand, claim to be one of the disciples of the caravan you destroyed and claim your team was slain by the ogres of Arathi.','Travel to Tyr’s Hand and report to Mavel Brightwood.','Speak quickly or move along.','We’ve been expecting at least a handful of new recruits, not just one.\n\nExplain yourself immediately.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (12336, 80709);
replace into creature_involvedrelation (id, quest) values (50677, 80709);

update quest_template set srcitemid = 53003, srcitemcount = 1 where entry = 80709;

replace into creature_template values (50677, 0, 10518, 0, 0, 0, 'Mavel Brightwood', NULL, 0, 60, 60, 5291, 7291, 3738, 4738, 2832, 67, 0, 1.1, 1.14286, 0, 20, 5, 0, 2, 1, 395, 510, 0, 268, 1, 1158, 2000, 2, 32832, 0, 0, 0, 0, 0, 0, 61.152, 84.084, 100, 7, 0, 10828, 10828, 0, 0, 0, 0, 0, 0, 0, 9128, 13730, 17143, 0, 108280, 0, 2035, 2141, 'EventAI', 0, 3, 0, 0, 3, 10828, 0, 0, 0, 0, 0, '');

update creature_template set npc_flags = 3, equipment_id = 9452 where entry = 50677;

replace into item_template values (53003, 0, 12, 0, 'Illusion: Scarlet Crusade', '', 634, 1, 0, 1, 0, 0, 0, -1, -1, 45, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19690, 0, 3, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (80709,80710,139,60,60,0,0,'It’s All in Their Brains','Ready for your first assignment?\n\nYour armor looks shabby and your blade dull but if you’re not able to pull up your own weight you’re not worth the trouble of the Light.\n\nTravel the Plaguelands, slay any undead in your path and bring me their brains. Their brains are essential for something the High General has planned, simply do your job and ask no questions.\n\nGo you fool, the Light waits for nobody, go on and claim your glorious purpose.','Hunt undead all over the Plaguelands and gather their brains.','Don’t worry yourself with details, do as you were told.','Perfect condition, if anything this rotten could be called something other than disgusting.\n\nBlasted Scourge, I hope the High General is right.\n\nNow onto your next task, recruit.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

update quest_template set reqitemid1 = 53004, reqitemcount1 = 30 where entry = 80710;

replace into creature_questrelation (id, quest) values (50677, 80710);
replace into creature_involvedrelation (id, quest) values (50677, 80710);

replace into item_template values (53004, 0, 12, 0, 'Undead\'s Rotten Brain', '', 10923, 1, 0, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 4, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref) values
(8530, 53004, -90, 6, 1),
(8532, 53004, -80, 6, 1),
(8544, 53004, -90, 6, 1),
(8531, 53004, -80, 6, 1),
(10946, 53004, -90, 6, 1),
(16380, 53004, -80, 6, 1),
(16141, 53004, -90, 6, 1);

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (80710,80711,139,60,60,0,0,'Supplies We Need','Your next errand is to simply collect a few things here and there, nothing special.\n\nYou will find these while fighting Elementals and plants in some of the actual dangerous zones of the world, but I am more than sure you will succeed if you truly are chosen by the Light.\n\nBring me Savage Fronds and Core of the Elements, fifty of each, it will be a great help in what we wish to achieve.\n\nWhen and if you return you will officially be a member and I will give you a map as to where to find the entrance for the secret training spot.\n\nMay the Light bless your poor soul. If you return we will embrace you as a sibling, if you do not we will not mourn for you even for a second.','Travel the world and bring back the supplies you were asked to.','It’s a simple task, kill and collect, what more do you want?','Welcome back, brother and may the Light bless us both in the days to come.\n\nHere’s your insignia and here’s the map for the entrance, the High General will be very pleased to have you.\n\nFor the Scarlet Crusade, for the Light and for Lordaeron!',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

update quest_template set reqitemid1 = 22529, reqitemcount1 = 50 where entry = 80711;
update quest_template set reqitemid2 = 22527, reqitemcount2 = 50 where entry = 80711;
update quest_template set rewitemid1 = 53005, rewitemcount1 = 1 where entry = 80711;

replace into creature_questrelation (id, quest) values (50677, 80711);
replace into creature_involvedrelation (id, quest) values (50677, 80711);

update item_template set quality = 0, name = 'Cracked Scarlet Crusade Insignia', display_id = 31604, description = '' where entry = 50440;

replace into item_template values (53005, 0, 13, 0, 'Scarlet Crusade Insignia', 'This insignia marks the bearer as a fully fledged member of the Scarlet Crusade.', 31604, 1, 0, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, null);

delete from gameobject where id = 2002768 and position_x = -2902.66;
delete from gameobject where id = 1000033 and position_x = -2897.14;
delete from gameobject where id = 1000027 and position_x = -2899.86;
delete from gameobject where id = 1000268 and position_x = -2908.6;
delete from gameobject where id = 2000203 and position_x = -2908.01; 
delete from gameobject where id = 2000203 and position_x = -2904.13; 
delete from gameobject where id = 2004285 and position_x = -2905.2; 
delete from gameobject where id = 2004286 and position_x = -2904.97; 
delete from gameobject where id = 2004334 and position_x = -2899.36;
delete from gameobject where id = 1000167 and position_x = -2906.81; 
delete from gameobject where id = 987658 and position_x = -2899.26; 
delete from gameobject where id = 1000168 and position_x = -2900.01; 
delete from gameobject where id = 1000169 and position_x = -2469.41;
delete from gameobject where id = 2002889 and position_x = -3733.73; 
delete from gameobject where id = 2002725 and position_x = -3731.5; 
delete from gameobject where id = 1000171 and position_x = -3733.25;
delete from gameobject where id = 180340 and position_x = -3733.78; 
delete from gameobject where id = 2003458 and position_x = -3734.17; 
delete from gameobject where id = 2003455 and position_x = -3734.35; 
delete from gameobject where id = 1000172 and position_x = -3733.67;
delete from gameobject where id = 1000173 and position_x = -3738.02; 
delete from gameobject where id = 2003532 and position_x = -3741.25;
delete from gameobject where id = 2003533 and position_x = -3732.29;
delete from gameobject where id = 2003533 and position_x = -3744.24; 
delete from gameobject where id = 2003533 and position_x = -3742.68;

replace into gameobject (id, map, position_x, position_y, position_z, orientation) values 
(2002768, 0, -2902.66, -2506.66, 33.4268, 2.41543),
(1000033, 0, -2897.14, -2512.39, 33.6725, 1.80282),
(1000027, 0, -2899.86, -2509.91, 33.4855, 6.2576),
(1000268, 0, -2908.6, -2510.47, 33.3968, 5.67248),
(2000203, 0, -2908.01, -2512.73, 33.6244, 3.48908),
(2000203, 0, -2904.13, -2515.66, 34.4606, 5.16355),
(2004285, 0, -2905.2, -2514.93, 34.2398, 4.77085),
(2004286, 0, -2904.97, -2518.21, 34.5729, 3.04768),
(2004334, 0, -2899.36, -2512.44, 34.5082, 0.148844),
(1000167, 0, -2906.81, -2517.01, 34.2675, 0.0742337),
(987658, 0, -2899.26, -2521.77, 34.8312, 2.88203),
(1000168, 0, -2900.01, -2522.38, 34.8497, 5.26179),
(1000169, 0, -2469.41, -2503.07, 78.5076, 6.24461),
(2002889, 0, -3733.73, -804.611, 4.32537, 4.25542),
(2002725, 0, -3731.5, -805.688, 4.32533, 4.25087),
(1000171, 0, -3733.25, -804.919, 5.29236, 2.65409),
(180340, 0, -3733.78, -803.752, 5.29256, 3.62584),
(2003458, 0, -3734.17, -804.495, 5.29256, 4.01841),
(2003455, 0, -3734.35, -805.351, 5.29256, 5.87745),
(1000172, 0, -3733.67, -805.785, 5.29234, 5.8429),
(1000173, 0, -3738.02, -808.251, 4.32543, 1.136),
(2003532, 0, -3741.25, -805.79, 4.3256, 1.0793),
(2003533, 0, -3732.29, -809.552, 4.32527, 2.60297),
(2003533, 0, -3744.24, -798.279, 4.32505, 2.61082),
(2003533, 0, -3742.68, -795.629, 4.32505, 2.61082);

delete from creature where id in (50672, 50676, 50677);

replace into creature (id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax) values 
(50672, 0, -2909.08, -2505.64, 33.0063, 3.23075, 25, 25),
(50672, 0, -2894.67, -2520.58, 34.3141, 5.58017, 25, 25),
(50676, 0, -3736.28, -809.162, 4.32525, 1.10049, 25, 25),
(50677, 0, 1682.32, -5333.22, 74.2273, 1.24345, 25, 25);

