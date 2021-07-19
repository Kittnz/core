
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
