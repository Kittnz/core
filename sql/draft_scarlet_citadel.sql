
-- Scarlet Monastery (raid) introduction.

-- Sally Whitemane is dead. Confused, scattered and some even in panic, Scarlet Fanatics were laying low. Many died in attempts to continue their struggles but without a strong command leading their effort failed. However, week by week, Scarlets had reinstated their structure, and scouting groups that were mercilessly murdering every non-human being started to succeed in their crazy mission. Looks like the new leader of the Scarlet Crusade has ambitions protruding further than just instinct of other races in Azeroth: multiple human settlements had been reporting of strangers appearing in their towns speaking to the young and trying to spread their influence over their minds. 

-- Teleport
DELETE FROM `game_tele` WHERE `id` = 500;
INSERT INTO `game_tele` (`id`, `position_x`, `position_y`, `position_z`, `orientation`, `map`, `name`) VALUES
(500, 81.1913, -0.849708, 18.6773, 6.27162, 44, 'ForbiddenMonastery');

-- Dungeon is a 10 man raid with 7 day reset timer
DELETE FROM `map_template` WHERE `entry` = 44;
INSERT INTO `map_template` (`entry`, `patch`, `parent`, `map_type`, `linked_zone`, `player_limit`, `reset_delay`, `ghost_entrance_map`, `ghost_entrance_x`, `ghost_entrance_y`, `map_name`, `script_name`) VALUES
(44, 0, 0, 2, 0, 10, 7, -1, 0, 0, 'Forbidden Monastery', 'instance_forbidden_monastery');

-- Doors
DELETE FROM `gameobject_template` WHERE `entry` BETWEEN 5000000 AND 5000004;
INSERT INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES
(5000000, 0, 0, 6385, 'ForbiddenMonastery_Green_Instance_Whirl', 0, 52, 0.6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(5000001, 0, 0, 3751, 'ForbiddenMonastery_Entry_Grid_Door', 0, 52, 1.29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(5000002, 0, 0, 444, 'ForbiddenMonastery_Vendor_Door', 0, 52, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(5000003, 0, 0, 444, 'ForbiddenMonastery_Boss2_Door', 0, 52, 1.2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(5000004, 0, 0, 6385, 'ForbiddenMonastery_Right_Wing_Door', 0, 52, 1.1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `gameobject` WHERE `guid` BETWEEN 5000000 AND 5000012;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES
(5000000, 5000000, 44, 70.75, -0.725565, 21, 6.25026, 0, 0, 0.0164639, -0.999864, 0, 0, 100, 1, 0, 533.333, 0, 10), -- Instance Whirl
(5000001, 5000001, 44, 72.8568, -0.839216, 18.6773, 3.14298, 0, 0, 1, -0.000692173, 0, 0, 100, 1, 0, 533.333, 0, 10), -- Perma Locked Instance Gate
(5000002, 5000002, 44, 68.7409, -12.7199, 18.6773, 0.00833514, 0, 0, 0.00416756, 0.999991, 0, 0, 100, 1, 0, 533.333, 0, 10), -- Left Vendor Door
(5000003, 5000002, 44, 68.7249, 11.0146, 18.6773, 6.27494, 0, 0, 0.00412454, 0.999991, 0, 0, 100, 1, 0, 533.333, 0, 10), -- Right Vendor Door
(5000004, 5000002, 44, 141.352, -12.7469, 18.6773, 3.11881, 0, 0, 0.999935, 0.0113925, 0, 0, 100, 1, 0, 533.333, 0, 10), -- First Room Right Perma Locked Door
(5000005, 5000002, 44, 143.98, -12.8275, 18.6774, 0.0176611, 0, 0, 0.00883043, 0.999961, 0, 0, 100, 1, 0, 533.333, 0, 10), -- First Room Right Perma Locked Door
(5000006, 5000002, 44, 140.889, 11.0119, 18.6773, 6.28056, 0, 0, 0.00131241, -0.999999, 0, 0, 100, 1, 0, 533.333, 0, 10), -- First Room Boss Door
(5000007, 5000003, 44, 244.069, -99.993, 18.6773, 0.00169, 0, 0, 0.00544775, -0.999985, 0, 0, 100, 0, 0, 533.333, 0, 10), -- Second Boss Bottom Door
(5000008, 5000002, 44, 286.786, -100.016, 31.4936, 3.20612, 0, 0, 0.00281054, 0.999996, 0, 0, 100, 1, 0, 533.333, 0, 10), -- Second Boss Top Door
(5000009, 104600, 44, 374.393, -120.773, 32.4956, 1.59063, 0, 0, 0.706667, 0.707546, 0, 0, 100, 1, 1, 533.333, 0, 10), -- Last Boss Chamber Door
(5000010, 180497, 44, 374.397, -18.1461, 34.4945, 4.72046, 0, 0, 0.704249, -0.709953, 0, 0, 100, 0, 1, 533.333, 0, 10), -- Last Boss Room Door
(5000011, 5000004, 44, 308.668, -53.3655, 35.6911, 3.19283, 0, 0, 0.0116924, -0.999932, 0, 0, 100, 1, 1, 533.333, 0, 10), -- Right Wing Door
(5000012, 5000003, 44, 221.343, 25.8922, 31.493, 3.13509, 0, 0, 0.999995, 0.00325365, 0, 0, 100, 0, 1, 533.333, 0, 10); -- Third Boss Door

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

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (80701,80702,69,60,60,0,0,'Young and Foolish','My agents have reported that a Scarlet caravan has started moving through various towns.\n\nFrom what we know they have already gone to Lakeshire, Darkshire, Menethil and Southshore.\n\nMy only assumption is that whoever took over the Crusade after the events that transpired the Scarlet Monastery, Hearthglen and Stratholme has realised they\'ve been running short on men.\n\nI want you to go and speak to the people of Lakeshire. The locals should have at least seen something.','Interrogate the people of Lakeshire and find out the truth. Report back to Mathias Shaw.','How is your task going?','So we were right, this would\'ve been valuable information if we didn\'t already receive another report.\n\nSorry about that, $N. I will be needing your help once more.',0,0,0,0,0,0,0,0,50665,1,50666,1,50667,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (332, 80702);
replace into creature_involvedrelation (id, quest) values (332, 80702);

update quest_template set objectivetext1 = 'Speak to Foreman Oslow' where entry = 80702;
update quest_template set objectivetext2 = 'Speak to Dorin Songblade' where entry = 80702;
update quest_template set objectivetext3 = 'Speak to Magistrate Solomon' where entry = 80702;

update creature_template set script_name = 'npc_questions_and_answers' where entry in (341, 956, 344);
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

replace into broadcast_text (entry, male_text) values (51680, 'It appears that this dwarf wasn’t only killed but also mutilated, the jaw was missing.'); 
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

update item_template set max_count = 1, quality = 3, bag_family = 9, flags = 64, item_level = 60, sheath = 0 where entry = 53005;

delete from gameobject where id = 2002768 and position_x between -2902.7 and -2902.5;
delete from gameobject where id = 1000033 and position_x between -2897.2 and -2897.0;
delete from gameobject where id = 1000027 and position_x between -2899.9 and -2899.7;
delete from gameobject where id = 1000268 and position_x between -2908.7 and -2908.5;
delete from gameobject where id = 2000203 and position_x between -2908.2 and -2908.0;
delete from gameobject where id = 2000203 and position_x between -2904.2 and -2904.0;
delete from gameobject where id = 2004285 and position_x between -2905.3 and -2905.1;
delete from gameobject where id = 2004286 and position_x between -2905.0 and -2904.9;
delete from gameobject where id = 2004334 and position_x between -2899.4 and -2899.2;
delete from gameobject where id = 1000167 and position_x between -2906.9 and -2906.7;
delete from gameobject where id = 987658 and position_x between -2899.3 and -2899.1;
delete from gameobject where id = 1000168 and position_x between -2900.1 and -2900.0;
delete from gameobject where id = 1000169 and position_x between -2469.5 and -2469.3;
delete from gameobject where id = 2002889 and position_x between -3733.8 and -3733.6;
delete from gameobject where id = 2002725 and position_x between -3731.6 and -3731.4;
delete from gameobject where id = 1000171 and position_x between -3733.3 and -3733.1;
delete from gameobject where id = 180340 and position_x between -3733.8 and -3733.6;
delete from gameobject where id = 2003458 and position_x between -3734.2 and -3734.0;
delete from gameobject where id = 2003455 and position_x between -3734.4 and -3734.2;
delete from gameobject where id = 1000172 and position_x between -3733.7 and -3733.5;
delete from gameobject where id = 1000173 and position_x between -3738.1 and -3738.0;
delete from gameobject where id = 2003532 and position_x between -3741.3 and -3741.1;
delete from gameobject where id = 2003533 and position_x between -3732.3 and -3732.1;
delete from gameobject where id = 2003533 and position_x between -3744.3 and -3744.1;
delete from gameobject where id = 2003533 and position_x between -3742.7 and -3742.5;

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

-- Horde attunement.

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (0,80720,1497,60,58,0,0,'A Dreadful Summon','$N, is it?\n\nLord Varimathras tasked me to seek you out, although it seems you have found me instead. I will try to make this short since I have no real clue of what he wants with you either.\n\nHe merely said to look for someone named $N and that I will know it’s you when I see you.\n\n<Tyler shrugs.>\n\nI assume you know where to find him, right? He stands behind the Dark Lady, forever in her shadow since the events that transpired a few years back.\n\nA word of caution if I may. Do not take everything he says to be true, after all, loyal to the cause or not, he’s a demon.','Report to Varimathras in Undercity.','Hm?','Astonishing.\n\n<Varimathras covers his mouth.>\n\nWhere are my manners, you are after all my guest. Do tell me if there’s something I can have my min-, if there’s something you’d like before we begin.\n\nPerhaps something to eat or drink, although that’d maybe infuriate the Dark Lady, one must not do any of those in her presence, after all this counts as a throne room of sorts.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (5653, 80720);
replace into creature_involvedrelation (id, quest) values (2425, 80720);

update creature_template set npc_flags = 2 where entry = 5653;

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (80720,80721,1497,60,60,0,0,'Grim News','It seems many of the Forsaken have gone missing or found dead in various locations we occupy. One of my confidants has been reporting these events to me and I would like to have you investigate the concern further.\n\nConsidering the troubles we currently have to face in the Plaguelands there aren\'t many hands to spare and one as yourself that seeks glory or perhaps has a foolish intent of helping would be quite fit for the job.\n\nSkipping any other formalities I need you to travel to Brill, the Sepulcher and Tarren Mill and find everything you can from the local executors about this matter.\n\nThe Dark Lady doesn\'t appreciate failure and considering this has happened right under our nose I have yet to tell her of it.\n\nDon\'t misunderstand however, without any information one simply can\'t report to the other one above them.\n\nI will pay you handsomely, just get the deed done.','Travel to Brill, the Sepulcher and Tarren Mill. Speak to High Executor Darthalia, Executor Zygand and High Executor Hadrec. Report back to Varimathras.','How is your quest going?','This is very concerning indeed, if the Scarlet Crusade has found means to end the Forsaken without a fight we can\'t be sure what will transpire.',0,0,0,0,0,0,0,0,50665,1,50666,1,50667,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_template (entry, name, display_id1) values (50665, 'Quest 80702 & 80720 Custom Trigger 1', 328);
replace into creature_template (entry, name, display_id1) values (50666, 'Quest 80702 & 80720 Custom Trigger 2', 328);
replace into creature_template (entry, name, display_id1) values (50667, 'Quest 80702 & 80720 Custom Trigger 3', 328);

replace into creature_questrelation (id, quest) values (2425, 80721);
replace into creature_involvedrelation (id, quest) values (2425, 80721);

update quest_template set objectivetext1 = 'Speak to Executor Zygand' where entry = 80721;
update quest_template set objectivetext2 = 'Speak to High Executor Hadrec' where entry = 80721;
update quest_template set objectivetext3 = 'Speak to High Executor Darthalia' where entry = 80721;

update creature_template set script_name = 'npc_questions_and_answers', npc_flags = 3 where entry in (2215, 1515, 1952);

delete from quest_template where entry = 80722;

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (80721,80722,1497,60,60,0,0,'To Catch a Rat...','The only real way to find out more is to set a trap for the Scarlet mongrels. I have tasked a Deathguard to help you with this, obviously he has no idea he will simply be a means to an end and act as bait.\n\nIf you have a guilty conscience, turn around now and never speak of this again, I will find someone else to employ.\n\nYet if you find it in yourself to realise that sacrifices must be met sometimes I will tell you where he is.\n\nFind Maverick, he will be in the Graveyard close to the Monastery, use him to bait them and gather as much intel as you can.','Find Deathguard Maverick and set a trap for the Scarlet Crusade.','Quickly now.','I will have my men take him back to the Apothecary and collect a few samples that will aid us in our mission.',53010,1,0,0,0,0,0,0,50668,1,50682,1,50670,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (2425, 80722);
replace into creature_involvedrelation (id, quest) values (2425, 80722);

update quest_template set objectivetext1 = 'Speak to Deathguard Maverick' where entry = 80722;
update quest_template set objectivetext2 = 'Defeat Scarlets' where entry = 80722;
update quest_template set objectivetext3 = 'Inspect Maverick\'s condition' where entry = 80722;

replace into creature_template (entry, name, display_id1) values (50668, 'Quest 80703 & 80722 Custom Trigger 1', 328);
replace into creature_template (entry, name, display_id1) values (50670, 'Quest 80703 & 80722 Custom Trigger 3', 328);

replace into creature_template values (51567, 0, 2852, 0, 0, 0, 'Deathguard Maverick', NULL, 0, 30, 30, 1910, 1910, 0, 0, 1200, 57, 0, 1.08, 1.14286, 0, 20, 5, 0, 0, 1, 42, 53, 0, 122, 1, 1710, 1881, 1, 0, 0, 0, 0, 0, 0, 0, 42.1344, 57.9348, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 130760, 0, 0, 0, 'GuardAI', 0, 3, 0, 0, 3, 13076, 0, 0, 0, 0, 525312, 'npc_maverick');

replace into broadcast_text (entry, male_text) values (51690, 'Are you the one Lord Varimathras spoke about, for the important mission?'); 
replace into npc_text (id, broadcasttextid0) values (51690, 51690);

replace into broadcast_text (entry, male_text) values (51691, 'Maverick seems to be in a deep slumber nothing would be able to wake him up.'); 
replace into npc_text (id, broadcasttextid0) values (51691, 51691);

replace into item_template values (53010, 0, 12, 0, 'Vial of Mysterious Concoction', '', 33451, 1, 0, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 4, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

update creature_template set npc_flags = 1, faction = 68 where entry = 51567;

replace into creature_template values (50680, 0, 2512, 0, 0, 0, 'Scarlet Magician', NULL, 0, 60, 60, 1607, 1658, 2289, 2369, 2810, 7, 0, 1, 0.857143, 0, 20, 5, 0, 0, 1, 154, 184, 0, 268, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 70.4704, 96.8968, 100, 7, 0, 12352, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 123520, 0, 59, 296, 'EventAI', 0, 3, 0, 0, 3, 12352, 0, 0, 0, 0, 0, 'npc_scarlet_magician');

replace into creature_template values (50681, 0, 2462, 0, 0, 0, 'Scarlet Guard', NULL, 0, 60, 60, 1607, 1658, 2289, 2369, 2810, 89, 0, 1, 0.857143, 0, 20, 5, 0, 0, 1, 154, 184, 0, 268, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 70.4704, 96.8968, 100, 7, 0, 12352, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 123520, 0, 59, 296, 'EventAI', 0, 3, 0, 0, 3, 12352, 0, 0, 0, 0, 0, '');

replace into creature_template values (50682, 0, 2525, 0, 0, 0, 'Scarlet Alchemist', NULL, 0, 60, 60, 6607, 7658, 2289, 2369, 2810, 7, 0, 1, 0.857143, 0, 20, 5, 0, 0, 1, 154, 184, 0, 268, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 70.4704, 96.8968, 100, 7, 0, 12352, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 123520, 0, 59, 296, 'EventAI', 0, 3, 0, 0, 3, 12352, 0, 0, 0, 0, 0, 'npc_scarlet_magician');

replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref) values (50682, 53010, -100, 6, 1);

replace into gameobject_template values (1000248, 0, 3, 2350, 'Small Engraved Lockbox', 0, 4, 0.7, 43, 1000248, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template (entry, item, chanceorquestchance, groupid, mincountorref) values (1000248, 53010, -100, 1, 1);

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (80722,80723,1497,60,60,0,0,'Trusted Apothecary','Not much of an alchemist myself, $N, but I know someone who can help us identify what this vial contains and why it acts like this.\n\nApothecary Zinge is down in the Apothecarium in Undercity alongside others from the Royal Apothecary, not only is she a bright mind but she also knows who’s better to be served, if you somehow understand the sayings of an ignorant fool.\n\n<Varimathras makes the quote mark with his fingers.>\n\nIn any case, we really need to cut to the chase here, I will report of our findings to Sylvannas but I won’t mention the vial until we find out what’s in it, she will be furious if she finds out but I can soothe her, I’ve been doing it since the end of the Third War.\n\nMove quickly but in silence, shadows guide you.','Take the vial to the Apothecarium and speak to Varimathras’ trusted apothecary.','You were sent by who?','I am not sure how much Lord Varimathras told you so you will excuse the cold treatment, he must trust you a great deal however if he sent you to me and even told you I work for him.\n\nNow let’s see what you got there.	',53010,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

update quest_template set srcitemid = 53010, srcitemcount = 1 where entry = 80723;

replace into creature_questrelation (id, quest) values (2425, 80723);
replace into creature_involvedrelation (id, quest) values (5204, 80723);

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (80723,80724,1497,60,60,0,0,'Consulting an Expert','Well, well, well. And you said this thing simply puts undead to “sleep”, right?\n\nThis isn’t like any potion like I’ve ever seen, we have something similar down south in Silverpine for the mindless worgen with Wolfsbane but seriously at least those are alive and kicking unlike us and the Scourge.\n\n<Apothecary Zinge crosses her arms for a second.>\n\nThis is definitely magic in nature, there’s not much I can do about it, never fiddled with it, I can only assume it’s a concoction made out of Peacebloom and Ghost Hair Thread but it has to be enhanced with some sort of magic.\n\nI’m not sure if he will be willing to aid you but there’s a slight chance, he will definitely ask for something in return that old coot.\n\nI’ve marked your map, go in the middle of the lake and you’ll find him there. Approach him with respect and fear, $c, that’s one of the greatest magic users I have ever seen and some even believe he turned into a lich by now.','Find Gunther Arcanus in Tirisfal Glades.','Another visitor.','I know I’ve told the Forsaken I’d lend them a hand, suppose that day finally came then.\n\nApothecary Zinge you said? Never heard of her, may be that my memory is a bit foggy.\n\nYou got all the stuff I needed and you came back quick enough not to be a disappointment.\n\nLet me have a look at this vial you speak of, it’s intriguing at the very least.',53010,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,53010,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (5204, 80724);
replace into creature_involvedrelation (id, quest) values (1497, 80724);

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (80724,80725,1497,60,60,0,0,'In Gunther’s Favor','I sometimes miss Dalaran and think of the days when I used to be alive, being a student of the arcane arts was really meaningful to me.\n\nWhile I understand my condition, during the Scourge’s control over my mind my memories were the one that allowed me to break free and remain who I was.\n\nNot trying to get all soppy on you, $c, but I already know what this vial is and how it was done, but I need you to do me a favour before I tell you. Think of it as an equivalent exchange.\n\n<Gunther laughs.>\n\nYou will learn of that later. Go to the former town known as Ambermill, behind the Town Hall I once buried a locket and sealed it with magic.\n\nI will give you a scroll that will erase the spell, do be careful.','Travel behind Ambermill and dig for Gunther’s locket.','Were you successful?','You fought a mage for it?\n\nI assume he didn’t mention his name while fighting you so there’s no point in overthinking it, it’s time for me to relay the information I have on the vial, although I might’ve lied a tiny bit.',53012,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,53011,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (1497, 80725);
replace into creature_involvedrelation (id, quest) values (1497, 80725);

replace into item_template values (53011, 0, 12, 0, 'Gunther\'s Scroll', '', 1301, 1, 0, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 4, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

replace into item_template values (53012, 0, 12, 0, 'Gunther\'s Locket', '', 34510, 1, 0, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 4, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

REPLACE INTO `gameobject_template` VALUES (1000176, 0, 2, 49, 'Dirt Mound', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_gunthers_favor');

REPLACE INTO `creature_template` VALUES (50683, 0, 2708, 0, 0, 0, 'Archmage Alphus Wordwill', NULL, 0, 60, 60, 6883, 6883, 5751, 5751, 3252, 73, 2, 1.1, 1.14286, 0, 20, 5, 0, 0, 1, 164, 212, 0, 272, 1, 2000, 2000, 8, 512, 0, 0, 0, 0, 0, 0, 74.448, 102.366, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10149, 10179, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2, 'npc_alphus_wordwill');

update creature_template set equipment_id = 5498 where entry = 50683;

replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref) values (50683, 53012, -100, 6, 1);

replace into gameobject_template values (1000177, 0, 3, 10, 'Gunther\'s Lockbox', 0, 4, 0.7, 43, 1000177, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template (entry, item, chanceorquestchance, groupid, mincountorref) values (1000177, 53012, -100, 6, 1);

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (80725,80726,1497,60,60,0,0,'Soul and Alchemy','Well, as I said, a tiny little lie, because I do know how this vial came to be but not entirely how they made the thing they used for it.\n\nI am not sure you’re accustomed to Alchemy but let me put it like this briefly.\n\nA skilled alchemist at time creates something we call the Philosopher’s Stone, it’s an object that helps in transmutation which involves a little bit of magic.\n\nThe issue with the stone that was used for this vial is that it definitely was infused with life magic.\n\nYou’re probably asking yourself why would life magic affect undead? \n\nUndead are considered an abomination that is both alive and dead, thing of them as something that breaks the balance between life and death magic.\n\nI’m not sure if you should over complicate your mind with this, but this is of Necromantic nature, surely you didn’t think Necromancy only used death magic, did you?\n\nFrom what I can gather this Philosopher’s Stone was infused with either life force or souls itself, so it could be shadow magic too, honestly, I am not very sure myself and I won’t know until I get my hands on it, that be said you should return to your master or whoever told you to come seek me and have him help you get this, I will hold onto the vial until then for further examination.','Return to Varimathras in Undercity.','Back already?','I didn’t expect Gunther to fiddle with this, he will be very helpful and from what you told me he can inspect the curse further if he is to find this Philosopher’s Stone.\n\nWell, now that’s done, we need to report to the Dark Lady, like it or not.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (1497, 80726);
replace into creature_involvedrelation (id, quest) values (2425, 80726);

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (80726,80727,1497,60,60,0,0,'Dark Temper for a Dark Lady','Time has come to report this to the Dark Lady, she will definitely not be pleased I hid this from her but maybe she will be more understanding if you were to report it, I do know it seems like I am saving my own skin but do understand this is the best way to proceed.\n\nSimply give her this scroll, everything is already written there.','Report to Sylvannas.','<Sylvannas reads the report.>','You bring this to me now?\n\nWhen was I to be informed about this vial, which clearly is a tremendous danger to our survival?\n\nI bet you didn’t act over your own accord when it comes to this, seems like my dear Dreadlord needs another earful.',53013,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,53013,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (2425, 80727);
replace into creature_involvedrelation (id, quest) values (10181, 80727);

replace into item_template values (53013, 0, 12, 0, 'Varimathras\'s Report', '', 1301, 1, 0, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 4, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (80727,80728,1497,60,60,0,0,'The Future Looks Grim','The reports says you were helped by Gunther Arcanus, Bethor insisted for a long time to take him in, as he seemed to be a valuable asset to the Forsaken, although clearly he has yet to show his usefulness.\n\nIf the case remains he will be able to find out what this object was and if he can muster up an antidote for this plague he will definitely prove himself.\n\nI order you to go to Tyr’s Hand, in Eastern Plaguelands, slay any kind of Scarlet fool and claim their uniform alongside their insignia, bring those back to Gunther and tell her that by order of the Dark Lady he must provide you an illusion that will let you infiltrate their ranks.\n\nIf you still have doubts as to why you should help us, well, remember that everything is For the Horde.','Travel to Tyr’s Hand and obtain a Scarlet Initiate Uniform.','What am I supposed to do with these?','Ah yes, my first order from the Banshee Queen, formidable. I would’ve helped you regardless of her arrogance, but let’s proceed.\n\nShe was smart enough to make you collect these however, which is quite impressive, I will grant you an illusion.',53014,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (10181, 80728);
replace into creature_involvedrelation (id, quest) values (1497, 80728);

replace into item_template values (53014, 0, 12, 0, 'Scarlet Initiate Uniform', '', 16612, 1, 0, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 4, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (80728,80729,1497,60,60,0,0,'A Different Shade of Red','The illusion is ready, now it’s up to you.\n\nYou will have to go to the Tyr\'s Hand and claim to be a new recruit, try to be as subtle as you may be, although considering I am giving you a Novice’s disguise you’re uh “seniors” will mostly make fun of you.\n\nIn any case, seek any that are interested in talking with a newbie and find out what their plans might be.\n\nI will patiently wait here while I am taking another look at this damn vial, can’t simply understand it currently, must test it more.','Travel to Tyr’s Hand and report to Mavel Brightwood.','Speak quickly or move along.','Ah, another recruit, what took you so long to get here?',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,53003,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (1497, 80729);
replace into creature_involvedrelation (id, quest) values (50677, 80729);

replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref) values (9447, 53014, -30, 6, 1);
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref) values (9452, 53014, -30, 6, 1);
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref) values (9449, 53014, -30, 6, 1);

update quest_template set exclusivegroup = 80709, nextquestid = 80710 where entry in (80709, 80729);

update quest_template set nextquestinchain = 80710 where entry = 80729;
update quest_template set nextquestinchain = 80710 where entry = 80709;

