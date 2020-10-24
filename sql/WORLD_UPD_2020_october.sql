update quest_template set prevquestid = 0 where entry = 60116;

-- scripts for ony/nef turnins to npc, commented out cause i'm not sure they have the same entry, torta please check
update creature_template set script_name = 'npc_overlord_runthak' where entry = 14392;
update creature_template set script_name = 'npc_major_mattingly' where entry = 14394;
update creature_template set script_name = 'npc_field_marshal_afrasiabi' where entry = 14721;
update creature_template set script_name = 'npc_overlord_saurfang' where entry = 14720;

-- Misc.

update quest_template set 
details = 'Hey, $R, down here!\n\nIf you have some spare time, I could really use your help. You see, there\'s this kodo in Un\'goro Crater. His name is Dodogo. I\'ve heard that he gives you a gift if you feed him bloodpetals. It sounds like this gift would have a nice surprise in it, and I love surprises!\n\nAnyways, these sprouts are found all over the crater, and I’d really love to get my hands on some.\n\nBring me 30 bloodpetals and I\'ll pay you. I\'ll even give you something I cooked from one of my original recipes!',
requestitemstext = 'Have you collected all of the bloodpetals yet?',
objectives = 'Reas wants you to bring 30 Bloodpetal Sprouts.',
offerrewardtext = 'Ah, yes!\n\nThank you very much, my friend. You\'ve made my day.\n\nThis is for you; a few coins and my original recipe: The Pizza Bottle. Trust me, you won’t find something like this anywhere else!' where entry = 60010;

-- New Booty Bay quests:

REPLACE INTO `creature_template` VALUES (51607, 9, 2557, 0, 0, 0, 'Ian Storm', NULL, 0, 43, 44, 2059, 2138, 0, 0, 2557, 35, 3, 1, 1.14286, 0, 20, 5, 0, 0, 1, 68, 88, 0, 194, 1, 2000, 2000, 1, 32768, 0, 0, 0, 0, 0, 0, 201.913, 288.031, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 3, 0, 0, 3, 16399, 0, 0, 0, 0, 0, '');

set @quest_entry = 60152;
set @quest_zone = 33;
set @title = 'They Call Him Ian the Storm';
set @description = '$N, I hear you are on your way to slay the scoundrels they call leaders of the worst crew of pirates, the Bloodsail Buccaneers.\n\nYou see these fools took a new member and they in their deluded mind think he will aid them greatly.\n\n<Baron Revilgaz scoffs.>\n\nI have a man on the inside, his name is Ian Storm, look for a fellow that won’t shank you on sight.';
set @objective = 'Find Ian the Storm.';
set @completetext = 'The Baron sent you? How kind of him to actually send reinforcements, come hear mate, lend me your ear, can’t just say it out loud!';
set @incompletetext = 'Rid me of these fools, my crew stands above all other.';
set @faction_id = 21;
set @faction_count = 250;
set @xp_or_money = 2160;
set @reward_money = 0; 
set @quest_level = 43;
set @min_level = 41;
set @questgiver_id = 2496;
set @quest_finisher = 51607;
set @nextquest = 0;
set @nextquestinchain = 0;
set @prevquest = 604;
set @RewChoiceItemId1 = 0; 
set @RewChoiceItemId2 = 0; 
set @RewChoiceItemId3 = 0;
set @RewChoiceItemId4 = 0; 
set @RewChoiceItemCount1 = 0;
set @RewChoiceItemCount2 = 0;
set @RewChoiceItemCount3 = 0;
set @RewChoiceItemCount4 = 0;
set @reward_item_1 = 0;
set @reward_item_2 = 0; 
set @reward_item_3 = 0;
set @reward_item_4 = 0;
set @reward_item_1_count = 0;
set @reward_item_2_count = 0;
set @reward_item_3_count = 0;
set @reward_item_4_count = 0;
set @creature_to_kill_1 = 0;
set @creature_to_kill_2 = 0; 
set @creature_to_kill_3 = 0;
set @creature_to_kill_4 = 0;
set @creature_to_kill_1_count = 0;
set @creature_to_kill_2_count = 0;
set @creature_to_kill_3_count = 0;
set @creature_to_kill_4_count = 0;
set @required_item_1 = 0; 
set @required_item_2 = 0;
set @required_item_3 = 0;
set @required_item_4 = 0;
set @required_item_1_count = 0;
set @required_item_2_count = 0;
set @required_item_3_count = 0;
set @required_item_4_count = 0;

replace into quest_template values 

(@quest_entry, '0', '2', @quest_zone, @min_level,  '0', @quest_level, '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', @title, @description, @objective, @completetext, @incompletetext, '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', @faction_id, '0', '0', '0', '0', @faction_count, '0', '0', '0', '0', '0', @xp_or_money, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', 0, 0);
     
replace into creature_questrelation (id, quest, patch_min, patch_max) values (@questgiver_id, @quest_entry,'0','10'); 
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values (@quest_finisher, @quest_entry,'0','10');
	 
update quest_template set 
rewitemid1 = @reward_item_1, rewitemcount1 = @reward_item_1_count,
rewitemid2 = @reward_item_2, rewitemcount2 = @reward_item_2_count,
rewitemid3 = @reward_item_3, rewitemcount3 = @reward_item_3_count,
rewitemid4 = @reward_item_4, rewitemcount4 = @reward_item_4_count,
RewChoiceItemId1 = @RewChoiceItemId1, RewChoiceItemCount1 = @RewChoiceItemCount1,
RewChoiceItemId2 = @RewChoiceItemId2, RewChoiceItemCount2 = @RewChoiceItemCount2,
RewChoiceItemId3 = @RewChoiceItemId3, RewChoiceItemCount3 = @RewChoiceItemCount3,
RewChoiceItemId4 = @RewChoiceItemId4, RewChoiceItemCount4 = @RewChoiceItemCount4,
ReqCreatureOrGOId1 = @creature_to_kill_1, ReqCreatureOrGOCount1 = @creature_to_kill_1_count,
ReqCreatureOrGOId2 = @creature_to_kill_2, ReqCreatureOrGOCount2 = @creature_to_kill_2_count,
ReqCreatureOrGOId3 = @creature_to_kill_3, ReqCreatureOrGOCount3 = @creature_to_kill_3_count,
ReqCreatureOrGOId4 = @creature_to_kill_4, ReqCreatureOrGOCount4 = @creature_to_kill_4_count,
reqitemid1 = @required_item_1, reqitemcount1 = @required_item_1_count,
reqitemid2 = @required_item_2, reqitemcount2 = @required_item_2_count,
reqitemid3 = @required_item_3, reqitemcount3 = @required_item_3_count,
reqitemid4 = @required_item_4, reqitemcount4 = @required_item_4_count,
nextquestid = @nextquest, RewOrReqMoney = @reward_money, 
nextquestinchain = @nextquestinchain, prevquestid = @prevquest 
where entry = @quest_entry;	 

replace into item_template values
 ('51895', '0', '0', '0', 'Ironpatch\'s Head', '', '30958', '1', '0', '1', '0', '0', '0', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (2547, 51895, -100, 0, 1, 1); 
	  
 replace into item_template values
 ('51896', '0', '4', '0', 'Pearled Necklace', '', '9858', '2', '0', '1', '7079', '7079', '2', '-1', '-1', '47',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '6', '6', '2',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '21360', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('51897', '0', '4', '2', 'Bloodsail Eyepatch', '', '21701', '2', '0', '1', '6051', '6051', '1', '-1', '-1', '47',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '12', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '99', '0', '0', '0',
 '0', '0', '0', '9332', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '50', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

set @quest_entry = 60153;
set @quest_zone = 33;
set @title = 'The Iron Patch';
set @description = 'As a double agent, I’ve been on their ships when they took that orc on the ship, not much of a bright idea since I saw he has no real skill in combat, but if anything he’s the perfect pirate, liar, gambler, drunk, you name it.\n\nThey named him Captain of a small fleet and they hope his combat experience would rub off the new recruits, bunch of nonsense.\n\n<Ian spits on the ground.>\n\nYou’ll find him on one of the ships, kill him, and bring his head to the Baron, I will lay low, now go before anyone sees us!';
set @objective = 'Kill Ironpatch and bring his head to Baron Revilgaz.';
set @completetext = 'Good work, $N, I’ll feed this to the crocodiles.\n\n<The Baron tosses the head into a bucket.>\n\nWhat’s this?\n\nHe still has an eyepatch on, you can have it if you want, or I will give you this pearled necklace, you can only take one.\n\nThank you for your services, do stick around, you never know when I’ll need more muscle.';
set @incompletetext = 'Move it, or we both lose our lives!';
set @faction_id = 21;
set @faction_count = 350;
set @xp_or_money = 3660;
set @reward_money = 0; 
set @quest_level = 43;
set @min_level = 41;
set @questgiver_id = 51607;
set @quest_finisher = 2496;
set @nextquest = 0;
set @nextquestinchain = 0;
set @prevquest = 60152;
set @RewChoiceItemId1 = 51896; 
set @RewChoiceItemId2 = 51897; 
set @RewChoiceItemId3 = 0;
set @RewChoiceItemId4 = 0; 
set @RewChoiceItemCount1 = 1;
set @RewChoiceItemCount2 = 1;
set @RewChoiceItemCount3 = 0;
set @RewChoiceItemCount4 = 0;
set @reward_item_1 = 0;
set @reward_item_2 = 0; 
set @reward_item_3 = 0;
set @reward_item_4 = 0;
set @reward_item_1_count = 0;
set @reward_item_2_count = 0;
set @reward_item_3_count = 0;
set @reward_item_4_count = 0;
set @creature_to_kill_1 = 0;
set @creature_to_kill_2 = 0; 
set @creature_to_kill_3 = 0;
set @creature_to_kill_4 = 0;
set @creature_to_kill_1_count = 0;
set @creature_to_kill_2_count = 0;
set @creature_to_kill_3_count = 0;
set @creature_to_kill_4_count = 0;
set @required_item_1 = 51895; 
set @required_item_2 = 0;
set @required_item_3 = 0;
set @required_item_4 = 0;
set @required_item_1_count = 1;
set @required_item_2_count = 0;
set @required_item_3_count = 0;
set @required_item_4_count = 0;

replace into quest_template values 

(@quest_entry, '0', '2', @quest_zone, @min_level,  '0', @quest_level, '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', @title, @description, @objective, @completetext, @incompletetext, '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', @faction_id, '0', '0', '0', '0', @faction_count, '0', '0', '0', '0', '0', @xp_or_money, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', 0, 0);
     
replace into creature_questrelation (id, quest, patch_min, patch_max) values (@questgiver_id, @quest_entry,'0','10'); 
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values (@quest_finisher, @quest_entry,'0','10');
	 
update quest_template set 
rewitemid1 = @reward_item_1, rewitemcount1 = @reward_item_1_count,
rewitemid2 = @reward_item_2, rewitemcount2 = @reward_item_2_count,
rewitemid3 = @reward_item_3, rewitemcount3 = @reward_item_3_count,
rewitemid4 = @reward_item_4, rewitemcount4 = @reward_item_4_count,
RewChoiceItemId1 = @RewChoiceItemId1, RewChoiceItemCount1 = @RewChoiceItemCount1,
RewChoiceItemId2 = @RewChoiceItemId2, RewChoiceItemCount2 = @RewChoiceItemCount2,
RewChoiceItemId3 = @RewChoiceItemId3, RewChoiceItemCount3 = @RewChoiceItemCount3,
RewChoiceItemId4 = @RewChoiceItemId4, RewChoiceItemCount4 = @RewChoiceItemCount4,
ReqCreatureOrGOId1 = @creature_to_kill_1, ReqCreatureOrGOCount1 = @creature_to_kill_1_count,
ReqCreatureOrGOId2 = @creature_to_kill_2, ReqCreatureOrGOCount2 = @creature_to_kill_2_count,
ReqCreatureOrGOId3 = @creature_to_kill_3, ReqCreatureOrGOCount3 = @creature_to_kill_3_count,
ReqCreatureOrGOId4 = @creature_to_kill_4, ReqCreatureOrGOCount4 = @creature_to_kill_4_count,
reqitemid1 = @required_item_1, reqitemcount1 = @required_item_1_count,
reqitemid2 = @required_item_2, reqitemcount2 = @required_item_2_count,
reqitemid3 = @required_item_3, reqitemcount3 = @required_item_3_count,
reqitemid4 = @required_item_4, reqitemcount4 = @required_item_4_count,
nextquestid = @nextquest, RewOrReqMoney = @reward_money, 
nextquestinchain = @nextquestinchain, prevquestid = @prevquest 
where entry = @quest_entry;	 

-- Fix some console spam:

update item_template set Buy_Count = 1 where Buy_count = 0;

-- Kaja's Ammo GO fix:

replace into gameobject_template values 
(1000389, 0, 3, 2350, 'Kaja\'s Ammunition Crate', 0, 0, 0.7, 57, 1000389, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

update gameobject_template set flags = 4 where entry = 1000389;
update gameobject_template set data0 = 43 where entry = 1000389;
update gameobject_template set data2 = 0 where entry = 1000389;
update gameobject_template set data3 = 1 where entry = 1000389;

delete from gameobject_loot_template where entry = 1000389;
replace into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) values (1000389, 51845, -100, 1, 1, 1, 0, 0, 10);

-- NPC family fix:

update creature_template set type = 0 where entry = 15288;

-- Xerron's Zanza fixes:

update item_template set max_count = 5, stackable = 5, flags = 0 where entry in (20079, 20080, 20081);
update item_template set max_count = 5, stackable = 5, flags = 0 where entry in (8410, 8411, 8412, 8423, 8424);

-- Make Keys to be Keys:

-- update item_template set class = 13, subclass = 0, Bag_Family = 9 where entry in (21761,21762,9249,12738,12739,11602,11197,5020,18268,11078,4882,18250,15878,15881,3930,13140,3704,3467,5851,13873,9472,11818,12301,15767,9275,7923,20022,8072,3499,13196,13197,13194,13195,7208,2629,5050,5475,18266,12942,4484,4483,4485,4103,5689,11106,13303,13304,13305,13306,13302,13307,8444,5690,19064,2719,5691,6783,5089,15328,5521,5517,8147,5518,8148,15869,15870,15871,15872);

update item_template set class = 13, subclass = 0, Bag_Family = 9 where entry in (6893, 7146, 5517, 8147, 5518, 8148, 15869,15870,15871,15872);

-- Custom quest fix:

update quest_template set QuestFlags = 8 where entry in (60124, 60125);

-- Grammar fixes:

update quest_template set details = 'You are not the only one who came here seeking forgotten knowledge. However, just like everyone else, it will not simply be given to you. Fulfill my request and I will teach you what I know.\n\nYou will need the help of a good alchemist, one whom I have taught my secrets.' where title = 'A Rare Request';
update quest_template set offerrewardtext = 'You have done well.' where title = 'A Rare Request';
update quest_template set requestitemstext = 'What are you waiting for? Bring me 3 Refined Scales of Onyxia. Are you not eager for my knowledge?' where title = 'A Rare Request';

update quest_template set offerrewardtext = 'You will need this Pendant to properly communicate with the other faction. It will allow you to join forces and trade with them, so make sure you have it on your key ring at all times.' where title = 'Alliance Diplomat';



update quest_template set details = 'Bring what I desire and I will teach you how to craft a powerful breastplate made from the scales of Onyxia herself.\n\nYou will need the help of a good alchemist and a good enchanter, both of whom require specific knowledge taught by me.' where title = 'An Epic Request';
update quest_template set objectives = 'Bring 3 Charged Scales of Onyxia to Aurelius and he will reward you with a powerful leatherworking pattern.
' where title = 'An Epic Request';
update quest_template set offerrewardtext = 'You have done well. Accept this pattern as your reward.' where title = 'An Epic Request';
update quest_template set requestitemstext = 'Bring me 3 Charged Scales of Onyxia.' where title = 'An Epic Request';


update quest_template set details = 'Fulfill my request and I will teach you ancient, powerful knowledge.' where title = 'An Uncommon Request';
update quest_template set objectives = 'Bring 3 Scales of Onyxia to Aurelius and he will teach you how to transmute them into Refined Scales of Onyxia.' where title = 'An Uncommon Request';
update quest_template set offerrewardtext = 'You have done well. I will now teach you what I know to uphold our agreement.' where title = 'An Uncommon Request';
update quest_template set requestitemstext = 'Bring me 3 Scales of Onyxia.' where title = 'An Uncommon Request';


update quest_template set details = 'Hey, $C, may I ask you for a favor? I know I am here with Grimrizz and all his Dark Magic, and this will sound strange but I have always wanted to be a blacksmith.\n\nYou probably are thinking most Gnomes go for engineering. Since I first laid eyes on the beauty of Ironforge, I dreamt of becoming a blacksmith.\n\nThe heat emitting from the forge, clanging of hammers to heated metal. The glint of a finely crafted blade, that is the life for me! $C, will you take this letter to Tormus Deepforge for me? It is my application to join the Blacksmith Guild in Ironforge.\n\nHe is probably near the Great Forge, working with the new Trainees.' where title = 'A Change of Heart';
update quest_template set offerrewardtext = '<Tormus takes the letter and reads it.>\n\nA Gnome wants to become a blacksmith?\n\n<Tormus furrows his brows before giving a hearty laugh.>\n\nIt\'s been a long time since we had a Gnome join our craft! Thank you for your efforts, $R. Here, have a few extra stones for your weapon.' where title = 'A Change of Heart';
update quest_template set requestitemstext = 'Oh, are you here to learn blacksmithing, friend?' where title = 'A Change of Heart';


update quest_template set details = 'One of my esteemed colleagues set off to gather vital information about the plots that the nefarious archmage Arugal is hatching inside of Shadowfang Keep, but I have not gotten word from him since. I am concerned about the corrupting influence that place has on even the most powerful and capable mages, and I need to know the fate of Sorcerer Ashcrombe.\n\nTravel to Silverpine Forest and seek him out for me at the Keep. If the Light wills it, find out what he has learned.' where title = 'The Missing Sorcerer';
update quest_template set objectives = 'High Sorcerer Andromath wants you to travel to Shadowfang Keep in Silverpine Forest and find out what happened to Sorcerer Ashcrombe.' where title = 'The Missing Sorcerer';
update quest_template set offerrewardtext = 'High Sorcerer Andromath sent you?\n\nMy, how the time flies when you’re watching insanity and horror unfold from every angle.\n\nI will have to return with my findings and reassure him that I have not fallen to the same madness as those who are trapped here.' where title = 'The Missing Sorcerer';
update quest_template set requestitemstext = 'There is untold darkness that will forever linger inside of these walls.' where title = 'The Missing Sorcerer';


update quest_template set details = 'The curse of undeath has caused my mind to rot so much that I forgot the basics about human anatomy! The human I’ve captured in the next room has been causing my brain to swell in my skull from its piercing screams. I can’t study it like that!\n\nIf I can examine its  body without that incessant howling drowning out my thoughts, then I will impart to you a skill most valuable: the ability to disguise yourself as a human! Get a nice, clean slice across its neck and bring me its head intact.\n\nI’ll take great joy in seeing those lifeless eyes.' where title = 'Human Anatomy';
update quest_template set objectives = 'Kill the human peasant and bring his head to Professor Malkovich.' where title = 'Human Anatomy';
update quest_template set offerrewardtext = 'Muhahaha!\n\nFantastic work my little prodigy. I have a gruesome lesson for you, so pay attention! And don’t forget to take detailed notes.' where title = 'Human Anatomy';
update quest_template set requestitemstext = '<Professor Malkovich clicks the bony tips of his fingers together.>\n\nGet to it! Bring me the human\'s head.' where title = 'Human Anatomy';


update quest_template set details = 'Between the webbing of a murloc’s fingers, you spot a scuffed ring. Something about it calls out to you to take as if it’s more valuable than it appears at first glance. You try to shine it on your armor, but it seems to be getting dirtier with each wipe.\n\nThis magical ring has more to it than meets the eye. You should find someone with more experience to examine it for you.
' where title = 'That Dirty Old Ring';
update quest_template set objectives = 'Find a magical expert in Goldshire to examine the Dirty Old Ring.' where title = 'That Dirty Old Ring';
update quest_template set offerrewardtext = 'Interesting… someone has placed a curse upon this ring. If I had to guess, they probably didn’t want it stolen. Oh well.\n\n<Zaldimar utters an incantation while gesturing with his hand, and in a flash of light, the ring appears as a lustrous gold band.>\n\nHere you are.' where title = 'That Dirty Old Ring';
update quest_template set requestitemstext = 'I don’t have time for such silly little trinkets! But wait… there’s something different about this one.' where title = 'That Dirty Old Ring';


update quest_template set details = 'You have humbly accepted our burden to purge the Scourge, yet you lack the proper coat of arms to show for it. \n\nGo see Benjamin Bradley and he will assist with fitting you into a tabard that will signify your standing with the Scarlet Crusade.\n\nWear our colors proudly, recruit.' where title = 'Before the Storm';
update quest_template set objectives = 'Speak to Benjamin Bradley at the Scarlet Outpost near the Scarlet Monastery.' where title = 'Before the Storm';
update quest_template set offerrewardtext = 'Remember the significance of this banner always. When you feel a flame of passion and fury light up your heart, know that the entire Crusade is standing behind you.\n\nLead us to glory, young acolyte.' where title = 'Before the Storm';
update quest_template set requestitemstext = 'You must be one of the initiates. I’ve had a tabard freshly stitched for you.' where title = 'Before the Storm';


update quest_template set details = 'It is time to prove your loyalties to the Crusade, recruit.\n\nLook around you. This farmland was once home to bountiful fields of crops and grain. Now, it is a place of death and despair. How could it have devolved to such a point, you might wonder?\n\nThe Scourge. Their goal is to extinguish the Light from this world, and we are all that stands in their way. By being here, you have chosen your destiny to protect all that is righteous.\n\nTheir horrid presence taints the land around us. Exterminate them.' where entry = 50302;
update quest_template set objectives = 'Kill 15 Undead Slayers at Solliden\'s Farmstead in Tirisfal Glades.' where entry = 50302;
update quest_template set offerrewardtext = 'You have proven yourself worthy to bear our crest.\n\nI bestow upon you your signet to authenticate your allegiance to the Scarlet Crusade.\n\nThere is still more work to be done.' where entry = 50302;
update quest_template set requestitemstext = 'Have you completed your first mission, recruit? Or have you forsaken the Light?' where entry = 50302;


update quest_template set details = 'You have proven yourself capable enough in assisting us to deal with their leaders, Agal and Greenpaw, $C. Our scouts have pinpointed their locations. First is Agal, who orchestrates the ambushes from below the road in a cave. Second is Greenpaw, a powerful shaman who terrorizes Ban\'ethil Barrow Den from within.\n\nThey are surrounded by their respective underlings. I suggest you bring an ally or prepare yourself to fight your way through them alone. No matter your decision, may Elune protect you.' where title = 'A Decisive Blow';
update quest_template set objectives = 'Moon Priestess Amara has asked you to kill Agal in the cave below the road to Darnassus and Greenpaw inside Ban\'ethil Barrow Den.' where title = 'A Decisive Blow';
update quest_template set offerrewardtext = 'Elune be praised! Though I must admit, it is painful that it had to end this way.\n\nPlease know that your actions today will ensure safe passage to Darnassus for our people.\n\nThank you, $C.' where title = 'A Decisive Blow';
update quest_template set requestitemstext = 'Please be careful, Agal and Greenpaw were once honorable and powerful allies.\n\nNow they have been corrupted beyond redemption.' where title = 'A Decisive Blow';


update quest_template set details = 'Pssst… I’ve got a task for you, $C. Look behind me. I found this drunk orc spyin’ around Ironforge and captured him, see? But I want to get a little “creative” with my payback. Bring me his head in good condition and I’ll show you somethin\' very worth your while.' where title = 'The Orcish Anatomy';
update quest_template set objectives = 'Kill the Stupefied Orcish Peon and bring his head to Professor Papucho.' where title = 'The Orcish Anatomy';
update quest_template set offerrewardtext = 'Ma always said, “Waste not, want not!”\n\nI really took that to heart and started “repurposing” the creatures that I could get away with doppleganging as. Goblins, kobolds, troggs... things like that.\n\nWhat, you don’t think I can look like this orc? Maybe I can’t, but you definitely can.\n\nThere’s a bunch of other disguises out in the world if you’re crafty enough. You just have to go and find \'em.
Take these notes with you, and good luck with your game of charades.' where title = 'The Orcish Anatomy';
update quest_template set requestitemstext = 'What’re you waitin’ for? I ain’t got all day, bub. Bring me the drunk orc’s head.' where title = 'The Orcish Anatomy';


update quest_template set details = 'You look like a brave hero, $N. Brother Crowley wants me to find the most devout ones who want to do the good work of the Light, he said.\n\nHe seemed pretty excited about it, too. You should go talk to him! He’s in the lower part of the Cathedral.' where entry = 50300;
update quest_template set objectives = 'Talk to Brother Crowley at the Stormwind City Cathedral.' where entry = 50300;
update quest_template set offerrewardtext = 'Thomas has a pure soul. He’ll make a fine commander in our ranks someday.\n\nOnly the holiest will be able to ascend to our cause. Are you one of them?' where entry = 50300;
update quest_template set requestitemstext = 'Greetings, weary traveler. Light be with you.' where entry = 50300;


update quest_template set details = 'Our righteous duty is not for the faint of heart, adventurer. Many critics come with the banner that we carry, but in the end, we know we are doing what is just.\n\nWhen Lordaeron was destroyed, the Light guided us into assembly to reclaim the land that once was ours and purge it of the vile Scourge threat. Our methods are decisive and more than anyone in the Alliance is willing to do. You must be prepared to make sacrifices if you are to join our ranks, $C.\n\nIf you’re ready and willing, then I will arrange a caravan that will take you to Tirisfal Glades where you can find Godrick Bell. He will initiate you, thereby pledging your life in service to the Light.\n\nI\'ve arranged a ride to go to Tirisfal for you and the other recruits. Are you ready to depart?' where entry = 50301;
update quest_template set objectives = 'Speak with Godrick Bell at Solliden’s Farmstead in Tirisfal Glades.' where entry = 50301;
update quest_template set offerrewardtext = 'Well, initiate, you came all this way, didn’t you? Don\'t disappoint me.' where entry = 50301;
update quest_template set requestitemstext = 'Splendid, new recruits! Just in time.' where entry = 50301;

-- update quest_template set details = '' where title = '';
-- update quest_template set objectives = '' where title = '';
-- update quest_template set offerrewardtext = '' where title = '';
-- update quest_template set requestitemstext = '' where title = '';

-- Misc. fixes:

update item_template set description = 'Creates a highly radioactive Wormhole with only 5 silver coins as a reagent. Most likely made by Goblins.' where entry = 51310;

delete from npc_vendor where entry = 3962 and item = 5503;

update quest_template set method = 2 where entry in (8271, 8272);

update quest_template set title = 'The Tower of Althalaxx' where entry in (1167, 1143);

update item_template set name = 'Portable Pocket Dimension', description = 'No matter how heavy the contents, this bag\'s shape and weight never seem to change.', display_id = 33942 where entry = 50004;

update item_template set spellcooldown_1 = 3600000 where entry = 51733;

update creature_template set base_attack_time = 2200 where entry in (50014, 50013);

update quest_template set method = 2 where entry in (8272, 8271);

UPDATE `broadcast_text` SET `MaleText`='Buy a flight to the Shimmering Flats in Thousand Needles, and talk to Gregor or Jizzle. Let them know you want to race!' WHERE `ID`=90254;

-- Correct unit flags for Heart of Hakkar.
UPDATE `creature_template` SET `unit_flags`=33555200 WHERE `entry`=15069;

-- Correct initial faction for Vaelastrasz the Corrupt.
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=13020;

-- Correct initial faction for Big Will.
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=6238;

-- Correct initial faction for Ice Totem.
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=12141;

-- Correct unit flags for Pat's Splash Guy.
UPDATE `creature_template` SET `unit_flags`=33555200 WHERE `entry`=15140;

-- Correct unit flags for Lesser Resonating Crystal.
UPDATE `creature_template` SET `unit_flags`=33554496 WHERE `entry`=15804;

-- Correct unit flags for Greater Resonating Crystal.
UPDATE `creature_template` SET `unit_flags`=33554496 WHERE `entry`=15770;

-- Correct unit flags for Resonating Crystal.
UPDATE `creature_template` SET `unit_flags`=33554496 WHERE `entry`=15769;

-- Correct unit flags for C'Thun Portal.
UPDATE `creature_template` SET `unit_flags`=33554496 WHERE `entry`=15896;

-- Correct unit flags for Minor Resonating Crystal.
UPDATE `creature_template` SET `unit_flags`=33554496 WHERE `entry`=15805;

-- Correct unit flags for Major Resonating Crystal.
UPDATE `creature_template` SET `unit_flags`=33554496 WHERE `entry`=15771;

-- Correct unit flags for Lord Azrethoc's Image.
UPDATE `creature_template` SET `unit_flags`=33555200 WHERE `entry`=5772;

-- Correct unit flags for Demon Portal.
UPDATE `creature_template` SET `unit_flags`=33555200 WHERE `entry`=14081;

-- Correct unit flags for Captured Arko'narin.
UPDATE `creature_template` SET `unit_flags`=768 WHERE `entry`=11016;

-- Correct unit flags for Warpwood Spores.
UPDATE `creature_template` SET `unit_flags`=33554432 WHERE `entry`=14366;

-- Correct unit flags for Portal of Madness.
UPDATE `creature_template` SET `unit_flags`=33555200 WHERE `entry`=15141;

-- Correct creature factions.
UPDATE `creature_template` SET `faction`=39 WHERE `entry`=603;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=954;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1089;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1090;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1091;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1092;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1154;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1155;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1187;
UPDATE `creature_template` SET `faction`=189 WHERE `entry`=1192;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1214;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1237;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1254;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1255;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1256;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1344;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1345;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1355;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1374;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1375;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1433;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1685;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1686;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1687;
UPDATE `creature_template` SET `faction`=189 WHERE `entry`=1689;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1697;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1698;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1701;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1977;
UPDATE `creature_template` SET `faction`=14 WHERE `entry`=2173;
UPDATE `creature_template` SET `faction`=123 WHERE `entry`=3128;
UPDATE `creature_template` SET `faction`=123 WHERE `entry`=3129;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=3162;
UPDATE `creature_template` SET `faction`=123 WHERE `entry`=3192;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=3545;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=3848;
UPDATE `creature_template` SET `faction`=123 WHERE `entry`=5809;
UPDATE `creature_template` SET `faction`=54 WHERE `entry`=6123;
UPDATE `creature_template` SET `faction`=122 WHERE `entry`=6177;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=8508;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=10930;
UPDATE `creature_template` SET `faction`=39 WHERE `entry`=10991;
UPDATE `creature_template` SET `faction`=14 WHERE `entry`=11583;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=11807;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=11946;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=12121;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=12122;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=13153;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=13328;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=13441;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=13448;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=13616;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=13798;
UPDATE `creature_template` SET `faction`=14 WHERE `entry`=14448;
UPDATE `creature_template` SET `faction`=14 WHERE `entry`=14515;
UPDATE `creature_template` SET `faction`=1534 WHERE `entry`=14768;
UPDATE `creature_template` SET `faction`=1534 WHERE `entry`=14769;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=14770;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=14771;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=14772;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=14773;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=14774;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=14775;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=14776;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=14777;
UPDATE `creature_template` SET `faction`=1216 WHERE `entry`=14946;
UPDATE `creature_template` SET `faction`=1216 WHERE `entry`=14948;
UPDATE `creature_template` SET `faction`=14 WHERE `entry`=15069;
UPDATE `creature_template` SET `faction`=37 WHERE `entry`=15083;
UPDATE `creature_template` SET `faction`=37 WHERE `entry`=15084;
UPDATE `creature_template` SET `faction`=107 WHERE `entry`=15114;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=15119;
UPDATE `creature_template` SET `faction`=114 WHERE `entry`=15140;
UPDATE `creature_template` SET `faction`=14 WHERE `entry`=15307;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=2982;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=2984;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=3695;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=3846;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=3911;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4072;
UPDATE `creature_template` SET `faction`=312 WHERE `entry`=4263;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4509;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=5873;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=5874;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=5879;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=5919;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=6111;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=6867;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=7380;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=7387;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=7391;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=7392;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=7399;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=7403;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=7413;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=7416;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=7466;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=7560;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=7845;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=9526;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=10259;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=10598;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=11101;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=11326;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=16548;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=16701;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=16817;
UPDATE `creature_template` SET `faction`=774 WHERE `entry`=17041;
UPDATE `creature_template` SET `faction`=774 WHERE `entry`=17048;
UPDATE `creature_template` SET `faction`=774 WHERE `entry`=17049;
UPDATE `creature_template` SET `faction`=774 WHERE `entry`=17050;
UPDATE `creature_template` SET `faction`=774 WHERE `entry`=17051;
UPDATE `creature_template` SET `faction`=74 WHERE `entry`=2541;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=3546;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=3700;
UPDATE `creature_template` SET `faction`=118 WHERE `entry`=3732;
UPDATE `creature_template` SET `faction`=118 WHERE `entry`=3733;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=3936;
UPDATE `creature_template` SET `faction`=123 WHERE `entry`=5393;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=5508;
UPDATE `creature_template` SET `faction`=124 WHERE `entry`=5806;
UPDATE `creature_template` SET `faction`=1575 WHERE `entry`=6000;
UPDATE `creature_template` SET `faction`=1575 WHERE `entry`=6001;
UPDATE `creature_template` SET `faction`=1575 WHERE `entry`=6002;
UPDATE `creature_template` SET `faction`=1575 WHERE `entry`=6003;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=7736;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=7764;
UPDATE `creature_template` SET `faction`=1575 WHERE `entry`=7851;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=7852;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=7877;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=7878;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=7879;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=7880;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=7900;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=7903;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=7904;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=7941;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=7942;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=7943;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=7945;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=7946;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=7947;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=7948;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=7949;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=8019;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=8022;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=8157;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=8178;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=8609;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=9540;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=10059;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=10293;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=11717;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=11824;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=11825;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=14374;
UPDATE `creature_template` SET `faction`=370 WHERE `entry`=15804;
UPDATE `creature_template` SET `faction`=1618 WHERE `entry`=16013;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=543;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1296;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1376;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1377;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1378;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1694;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1702;
UPDATE `creature_template` SET `faction`=67 WHERE `entry`=1843;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1854;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=2084;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=2092;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=2299;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=2303;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=2306;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=2318;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=2523;
UPDATE `creature_template` SET `faction`=123 WHERE `entry`=2583;
UPDATE `creature_template` SET `faction`=123 WHERE `entry`=2585;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=2671;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=2679;
UPDATE `creature_template` SET `faction`=74 WHERE `entry`=2779;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=2803;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=2986;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=3298;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=3527;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=3560;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=3573;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=3579;
UPDATE `creature_template` SET `faction`=124 WHERE `entry`=3585;
UPDATE `creature_template` SET `faction`=124 WHERE `entry`=3616;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=3779;
UPDATE `creature_template` SET `faction`=118 WHERE `entry`=3804;
UPDATE `creature_template` SET `faction`=118 WHERE `entry`=3806;
UPDATE `creature_template` SET `faction`=118 WHERE `entry`=3807;
UPDATE `creature_template` SET `faction`=118 WHERE `entry`=3808;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=3880;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=3901;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=3906;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=3907;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=3908;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=3909;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=3912;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4194;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4195;
UPDATE `creature_template` SET `faction`=123 WHERE `entry`=4480;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=4498;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=4504;
UPDATE `creature_template` SET `faction`=69 WHERE `entry`=4508;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=4781;
UPDATE `creature_template` SET `faction`=124 WHERE `entry`=4795;
UPDATE `creature_template` SET `faction`=129 WHERE `entry`=4815;
UPDATE `creature_template` SET `faction`=18 WHERE `entry`=4818;
UPDATE `creature_template` SET `faction`=18 WHERE `entry`=4819;
UPDATE `creature_template` SET `faction`=18 WHERE `entry`=4820;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5392;
UPDATE `creature_template` SET `faction`=125 WHERE `entry`=5395;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=5501;
UPDATE `creature_template` SET `faction`=90 WHERE `entry`=5772;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=5913;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=5920;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=5922;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=5923;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=5925;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=5926;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=5927;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=5929;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=5934;
UPDATE `creature_template` SET `faction`=49 WHERE `entry`=5935;
UPDATE `creature_template` SET `faction`=152 WHERE `entry`=6021;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=6110;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=6112;
UPDATE `creature_template` SET `faction`=18 WHERE `entry`=6243;
UPDATE `creature_template` SET `faction`=21 WHERE `entry`=6412;
UPDATE `creature_template` SET `faction`=74 WHERE `entry`=6650;
UPDATE `creature_template` SET `faction`=88 WHERE `entry`=7360;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=7366;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=7367;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=7368;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=7383;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=7398;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=7400;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=7402;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=7412;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=7414;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=7415;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=7425;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=7464;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=7465;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=7469;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=7483;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=7486;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=7487;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=7527;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=7543;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=7544;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=7545;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=7549;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=7550;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=7844;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=8152;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=8153;
UPDATE `creature_template` SET `faction`=45 WHERE `entry`=8297;
UPDATE `creature_template` SET `faction`=37 WHERE `entry`=8317;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=8376;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=8392;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=8446;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=8517;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=8836;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=8878;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=8937;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=9177;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=9297;
UPDATE `creature_template` SET `faction`=54 WHERE `entry`=9398;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=9465;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=9560;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=9562;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=9565;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=9636;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=9662;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=9687;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=9937;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=10301;
UPDATE `creature_template` SET `faction`=21 WHERE `entry`=10383;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=10441;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=10461;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=10536;
UPDATE `creature_template` SET `faction`=14 WHERE `entry`=10581;
UPDATE `creature_template` SET `faction`=21 WHERE `entry`=10697;
UPDATE `creature_template` SET `faction`=21 WHERE `entry`=10836;
UPDATE `creature_template` SET `faction`=21 WHERE `entry`=10876;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=10943;
UPDATE `creature_template` SET `faction`=250 WHERE `entry`=11016;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=11079;
UPDATE `creature_template` SET `faction`=90 WHERE `entry`=11141;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=11181;
UPDATE `creature_template` SET `faction`=21 WHERE `entry`=11197;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=11199;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=11259;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=11325;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=11327;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=11636;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=11637;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=11712;
UPDATE `creature_template` SET `faction`=311 WHERE `entry`=11721;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=11817;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=11819;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=11875;
UPDATE `creature_template` SET `faction`=954 WHERE `entry`=11876;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=11886;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=11887;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=12116;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=12140;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=12152;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=12257;
UPDATE `creature_template` SET `faction`=54 WHERE `entry`=12265;
UPDATE `creature_template` SET `faction`=74 WHERE `entry`=12369;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=12578;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=12581;
UPDATE `creature_template` SET `faction`=1097 WHERE `entry`=12677;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=12778;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=12779;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=12780;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=12781;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=12785;
UPDATE `creature_template` SET `faction`=74 WHERE `entry`=12940;
UPDATE `creature_template` SET `faction`=310 WHERE `entry`=13136;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=13421;
UPDATE `creature_template` SET `faction`=1216 WHERE `entry`=13777;
UPDATE `creature_template` SET `faction`=103 WHERE `entry`=14081;
UPDATE `creature_template` SET `faction`=40 WHERE `entry`=14101;
UPDATE `creature_template` SET `faction`=7 WHERE `entry`=14223;
UPDATE `creature_template` SET `faction`=49 WHERE `entry`=14227;
UPDATE `creature_template` SET `faction`=14 WHERE `entry`=14366;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=14465;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=14466;
UPDATE `creature_template` SET `faction`=310 WHERE `entry`=14475;
UPDATE `creature_template` SET `faction`=103 WHERE `entry`=14605;
UPDATE `creature_template` SET `faction`=954 WHERE `entry`=14668;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=14752;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=14862;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=14878;
UPDATE `creature_template` SET `faction`=28 WHERE `entry`=14965;
UPDATE `creature_template` SET `faction`=28 WHERE `entry`=14986;
UPDATE `creature_template` SET `faction`=28 WHERE `entry`=14988;
UPDATE `creature_template` SET `faction`=28 WHERE `entry`=15009;
UPDATE `creature_template` SET `faction`=188 WHERE `entry`=15010;
UPDATE `creature_template` SET `faction`=28 WHERE `entry`=15041;
UPDATE `creature_template` SET `faction`=1577 WHERE `entry`=15045;
UPDATE `creature_template` SET `faction`=412 WHERE `entry`=15046;
UPDATE `creature_template` SET `faction`=28 WHERE `entry`=15047;
UPDATE `creature_template` SET `faction`=1577 WHERE `entry`=15062;
UPDATE `creature_template` SET `faction`=1577 WHERE `entry`=15063;
UPDATE `creature_template` SET `faction`=412 WHERE `entry`=15064;
UPDATE `creature_template` SET `faction`=190 WHERE `entry`=15065;
UPDATE `creature_template` SET `faction`=190 WHERE `entry`=15066;
UPDATE `creature_template` SET `faction`=28 WHERE `entry`=15068;
UPDATE `creature_template` SET `faction`=190 WHERE `entry`=15071;
UPDATE `creature_template` SET `faction`=190 WHERE `entry`=15072;
UPDATE `creature_template` SET `faction`=1577 WHERE `entry`=15074;
UPDATE `creature_template` SET `faction`=412 WHERE `entry`=15075;
UPDATE `creature_template` SET `faction`=1577 WHERE `entry`=15086;
UPDATE `creature_template` SET `faction`=412 WHERE `entry`=15087;
UPDATE `creature_template` SET `faction`=412 WHERE `entry`=15089;
UPDATE `creature_template` SET `faction`=28 WHERE `entry`=15101;
UPDATE `creature_template` SET `faction`=1577 WHERE `entry`=15107;
UPDATE `creature_template` SET `faction`=412 WHERE `entry`=15108;
UPDATE `creature_template` SET `faction`=15 WHERE `entry`=15168;
UPDATE `creature_template` SET `faction`=310 WHERE `entry`=15229;
UPDATE `creature_template` SET `faction`=310 WHERE `entry`=15230;
UPDATE `creature_template` SET `faction`=310 WHERE `entry`=15233;
UPDATE `creature_template` SET `faction`=310 WHERE `entry`=15235;
UPDATE `creature_template` SET `faction`=310 WHERE `entry`=15236;
UPDATE `creature_template` SET `faction`=310 WHERE `entry`=15240;
UPDATE `creature_template` SET `faction`=310 WHERE `entry`=15246;
UPDATE `creature_template` SET `faction`=310 WHERE `entry`=15247;
UPDATE `creature_template` SET `faction`=310 WHERE `entry`=15249;
UPDATE `creature_template` SET `faction`=310 WHERE `entry`=15250;
UPDATE `creature_template` SET `faction`=310 WHERE `entry`=15252;
UPDATE `creature_template` SET `faction`=310 WHERE `entry`=15262;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=15263;
UPDATE `creature_template` SET `faction`=310 WHERE `entry`=15264;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=15276;
UPDATE `creature_template` SET `faction`=310 WHERE `entry`=15277;
UPDATE `creature_template` SET `faction`=310 WHERE `entry`=15286;
UPDATE `creature_template` SET `faction`=310 WHERE `entry`=15288;
UPDATE `creature_template` SET `faction`=310 WHERE `entry`=15290;
UPDATE `creature_template` SET `faction`=14 WHERE `entry`=15299;
UPDATE `creature_template` SET `faction`=310 WHERE `entry`=15300;
UPDATE `creature_template` SET `faction`=310 WHERE `entry`=15311;
UPDATE `creature_template` SET `faction`=310 WHERE `entry`=15312;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=15315;
UPDATE `creature_template` SET `faction`=310 WHERE `entry`=15318;
UPDATE `creature_template` SET `faction`=310 WHERE `entry`=15319;
UPDATE `creature_template` SET `faction`=310 WHERE `entry`=15320;
UPDATE `creature_template` SET `faction`=310 WHERE `entry`=15323;
UPDATE `creature_template` SET `faction`=310 WHERE `entry`=15324;
UPDATE `creature_template` SET `faction`=310 WHERE `entry`=15325;
UPDATE `creature_template` SET `faction`=310 WHERE `entry`=15327;
UPDATE `creature_template` SET `faction`=148 WHERE `entry`=15335;
UPDATE `creature_template` SET `faction`=310 WHERE `entry`=15336;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=15339;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=15340;
UPDATE `creature_template` SET `faction`=310 WHERE `entry`=15341;
UPDATE `creature_template` SET `faction`=310 WHERE `entry`=15343;
UPDATE `creature_template` SET `faction`=310 WHERE `entry`=15344;
UPDATE `creature_template` SET `faction`=310 WHERE `entry`=15348;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=15369;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=15370;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=15381;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=15383;
UPDATE `creature_template` SET `faction`=310 WHERE `entry`=15385;
UPDATE `creature_template` SET `faction`=310 WHERE `entry`=15386;
UPDATE `creature_template` SET `faction`=310 WHERE `entry`=15387;
UPDATE `creature_template` SET `faction`=310 WHERE `entry`=15388;
UPDATE `creature_template` SET `faction`=310 WHERE `entry`=15389;
UPDATE `creature_template` SET `faction`=310 WHERE `entry`=15390;
UPDATE `creature_template` SET `faction`=310 WHERE `entry`=15391;
UPDATE `creature_template` SET `faction`=310 WHERE `entry`=15392;
UPDATE `creature_template` SET `faction`=310 WHERE `entry`=15414;
UPDATE `creature_template` SET `faction`=310 WHERE `entry`=15421;
UPDATE `creature_template` SET `faction`=310 WHERE `entry`=15422;
UPDATE `creature_template` SET `faction`=250 WHERE `entry`=15423;
UPDATE `creature_template` SET `faction`=310 WHERE `entry`=15424;
UPDATE `creature_template` SET `faction`=114 WHERE `entry`=15428;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=15431;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=15432;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=15437;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=15445;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=15446;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=15448;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=15451;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=15452;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=15453;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=15457;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=15459;
UPDATE `creature_template` SET `faction`=310 WHERE `entry`=15461;
UPDATE `creature_template` SET `faction`=310 WHERE `entry`=15462;
UPDATE `creature_template` SET `faction`=188 WHERE `entry`=15475;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=15477;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=15505;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=15509;
UPDATE `creature_template` SET `faction`=310 WHERE `entry`=15510;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=15511;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=15512;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=15514;
UPDATE `creature_template` SET `faction`=310 WHERE `entry`=15516;
UPDATE `creature_template` SET `faction`=310 WHERE `entry`=15521;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=15525;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=15527;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=15528;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=15529;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=15532;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=15535;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=15543;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=15544;
UPDATE `creature_template` SET `faction`=310 WHERE `entry`=15546;
UPDATE `creature_template` SET `faction`=310 WHERE `entry`=15555;
UPDATE `creature_template` SET `faction`=370 WHERE `entry`=15589;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=15621;
UPDATE `creature_template` SET `faction`=310 WHERE `entry`=15622;
UPDATE `creature_template` SET `faction`=310 WHERE `entry`=15630;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=15663;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=15701;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=15702;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=15703;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=15708;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=15709;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=15720;
UPDATE `creature_template` SET `faction`=370 WHERE `entry`=15727;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=15731;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=15734;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=15735;
UPDATE `creature_template` SET `faction`=126 WHERE `entry`=15737;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=15738;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=15739;
UPDATE `creature_template` SET `faction`=370 WHERE `entry`=15769;
UPDATE `creature_template` SET `faction`=370 WHERE `entry`=15770;
UPDATE `creature_template` SET `faction`=370 WHERE `entry`=15771;
UPDATE `creature_template` SET `faction`=1613 WHERE `entry`=15797;
UPDATE `creature_template` SET `faction`=1613 WHERE `entry`=15798;
UPDATE `creature_template` SET `faction`=1613 WHERE `entry`=15799;
UPDATE `creature_template` SET `faction`=370 WHERE `entry`=15805;
UPDATE `creature_template` SET `faction`=777 WHERE `entry`=15839;
UPDATE `creature_template` SET `faction`=777 WHERE `entry`=15840;
UPDATE `creature_template` SET `faction`=777 WHERE `entry`=15841;
UPDATE `creature_template` SET `faction`=777 WHERE `entry`=15842;
UPDATE `creature_template` SET `faction`=777 WHERE `entry`=15843;
UPDATE `creature_template` SET `faction`=777 WHERE `entry`=15848;
UPDATE `creature_template` SET `faction`=777 WHERE `entry`=15849;
UPDATE `creature_template` SET `faction`=777 WHERE `entry`=15850;
UPDATE `creature_template` SET `faction`=777 WHERE `entry`=15852;
UPDATE `creature_template` SET `faction`=777 WHERE `entry`=15856;
UPDATE `creature_template` SET `faction`=777 WHERE `entry`=15863;
UPDATE `creature_template` SET `faction`=777 WHERE `entry`=15865;
UPDATE `creature_template` SET `faction`=370 WHERE `entry`=15896;
UPDATE `creature_template` SET `faction`=310 WHERE `entry`=15962;
UPDATE `creature_template` SET `faction`=114 WHERE `entry`=15964;
UPDATE `creature_template` SET `faction`=310 WHERE `entry`=15984;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=16549;
UPDATE `creature_template` SET `faction`=54 WHERE `entry`=9437;
UPDATE `creature_template` SET `faction`=54 WHERE `entry`=9445;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=9656;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=12473;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=14122;
UPDATE `creature_template` SET `faction`=14 WHERE `entry`=15141;
UPDATE `creature_template` SET `faction`=37 WHERE `entry`=15163;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=15275;
UPDATE `creature_template` SET `faction`=17 WHERE `entry`=646;
UPDATE `creature_template` SET `faction`=38 WHERE `entry`=8300;
UPDATE `creature_template` SET `faction`=40 WHERE `entry`=9707;
UPDATE `creature_template` SET `faction`=40 WHERE `entry`=9708;
UPDATE `creature_template` SET `faction`=233 WHERE `entry`=11263;
UPDATE `creature_template` SET `faction`=54 WHERE `entry`=12143;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=14350;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=14500;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=895;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=912;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=916;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=926;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=945;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1104;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=4277;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=10467;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=14362;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=14421;
UPDATE `creature_template` SET `faction`=90 WHERE `entry`=14527;
UPDATE `creature_template` SET `faction`=90 WHERE `entry`=14528;
UPDATE `creature_template` SET `faction`=777 WHERE `entry`=15846;
UPDATE `creature_template` SET `faction`=777 WHERE `entry`=15851;
UPDATE `creature_template` SET `faction`=777 WHERE `entry`=15867;
UPDATE `creature_template` SET `faction`=1619 WHERE `entry`=16012;

-- Waypoints for Soaring Razorbeak.
UPDATE `creature_template` SET `inhabit_type`=5 WHERE `entry`=8276;
UPDATE `creature` SET `movementtype`=2, `position_x`=1.323350, `position_y`=-2004.439941, `position_z`=255.783997 WHERE `guid`=92881;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(92881, 1, 1.323350, -2004.439941, 255.783997, 100.000000, 0, 0.000000, 0), -- spline 0/76
(92881, 2, 1.146700, -1992.199951, 256.144989, 100.000000, 0, 0.000000, 0), -- spline 1/76
(92881, 3, 5.552030, -1982.819946, 254.923004, 100.000000, 0, 0.000000, 0), -- spline 2/76
(92881, 4, 15.985100, -1973.699951, 241.533997, 100.000000, 0, 0.000000, 0), -- spline 3/76
(92881, 5, 34.329201, -1949.410034, 222.783997, 100.000000, 0, 0.000000, 0), -- spline 4/76
(92881, 6, 42.905998, -1945.030029, 210.089996, 100.000000, 0, 0.000000, 0), -- spline 5/76
(92881, 7, 55.245201, -1954.349976, 201.645004, 100.000000, 0, 0.000000, 0), -- spline 6/76
(92881, 8, 74.639503, -1952.479980, 186.173004, 100.000000, 0, 0.000000, 0), -- spline 7/76
(92881, 9, 96.289299, -1945.880005, 178.589996, 100.000000, 0, 0.000000, 0), -- spline 8/76
(92881, 10, 119.483002, -1949.760010, 175.673004, 100.000000, 0, 0.000000, 0), -- spline 9/76
(92881, 11, 140.910004, -1954.459961, 178.589996, 100.000000, 0, 0.000000, 0), -- spline 10/76
(92881, 12, 165.733002, -1953.979980, 181.145004, 100.000000, 0, 0.000000, 0), -- spline 11/76
(92881, 13, 176.141006, -1958.829956, 176.589996, 100.000000, 0, 0.000000, 0), -- spline 12/76
(92881, 14, 185.098999, -1969.939941, 178.589996, 100.000000, 0, 0.000000, 0), -- spline 13/76
(92881, 15, 193.347000, -1987.300049, 176.423004, 100.000000, 0, 0.000000, 0), -- spline 14/76
(92881, 16, 215.253006, -2009.619995, 180.423004, 100.000000, 0, 0.000000, 0), -- spline 15/76
(92881, 17, 232.587006, -2022.880005, 176.589996, 100.000000, 0, 0.000000, 0), -- spline 16/76
(92881, 18, 244.951996, -2033.459961, 176.311996, 100.000000, 0, 0.000000, 0), -- spline 17/76
(92881, 19, 256.037994, -2047.859985, 179.367004, 100.000000, 0, 0.000000, 0), -- spline 18/76
(92881, 20, 261.692993, -2065.340088, 178.589996, 100.000000, 0, 0.000000, 0), -- spline 19/76
(92881, 21, 272.279999, -2094.270020, 162.311996, 100.000000, 0, 0.000000, 0), -- spline 20/76
(92881, 22, 273.145996, -2106.719971, 146.423004, 100.000000, 0, 0.000000, 0), -- spline 21/76
(92881, 23, 264.774994, -2126.120117, 141.145004, 100.000000, 0, 0.000000, 0), -- spline 22/76
(92881, 24, 237.975006, -2146.010010, 140.617996, 100.000000, 0, 0.000000, 0), -- spline 23/76
(92881, 25, 224.380005, -2159.139893, 146.757004, 100.000000, 0, 0.000000, 0), -- spline 24/76
(92881, 26, 215.854004, -2187.320068, 142.283997, 100.000000, 0, 0.000000, 0), -- spline 25/76
(92881, 27, 211.498993, -2223.979980, 137.145996, 100.000000, 0, 0.000000, 0), -- spline 26/76
(92881, 28, 206.070999, -2247.770020, 131.395996, 100.000000, 0, 0.000000, 0), -- spline 27/76
(92881, 29, 193.518005, -2268.610107, 122.478996, 100.000000, 0, 0.000000, 0), -- spline 28/76
(92881, 30, 178.744995, -2285.540039, 128.257004, 100.000000, 0, 0.000000, 0), -- spline 29/76
(92881, 31, 191.548004, -2312.959961, 138.729004, 100.000000, 0, 0.000000, 0), -- spline 30/76
(92881, 32, 184.449005, -2339.290039, 152.895004, 100.000000, 0, 0.000000, 0), -- spline 31/76
(92881, 33, 157.412994, -2363.810059, 153.423004, 100.000000, 0, 0.000000, 0), -- spline 32/76
(92881, 34, 137.035995, -2370.969971, 154.839996, 100.000000, 0, 0.000000, 0), -- spline 33/76
(92881, 35, 111.068001, -2354.020020, 159.923004, 100.000000, 0, 0.000000, 0), -- spline 34/76
(92881, 36, 91.163498, -2316.629883, 167.007004, 100.000000, 0, 0.000000, 0), -- spline 35/76
(92881, 37, 66.269600, -2319.840088, 161.757004, 100.000000, 0, 0.000000, 0), -- spline 36/76
(92881, 38, 51.683201, -2351.020020, 155.339996, 100.000000, 0, 0.000000, 0), -- spline 37/76
(92881, 39, 46.885601, -2391.449951, 155.395004, 100.000000, 0, 0.000000, 0), -- spline 38/76
(92881, 40, 48.952000, -2429.260010, 167.007004, 100.000000, 0, 0.000000, 0), -- spline 39/76
(92881, 41, 60.984299, -2457.340088, 160.561996, 100.000000, 0, 0.000000, 0), -- spline 40/76
(92881, 42, 72.597298, -2484.929932, 167.007004, 100.000000, 0, 0.000000, 0), -- spline 41/76
(92881, 43, 67.518402, -2521.899902, 160.645004, 100.000000, 0, 0.000000, 0), -- spline 42/76
(92881, 44, 47.992401, -2556.679932, 154.673004, 100.000000, 0, 0.000000, 0), -- spline 43/76
(92881, 45, 27.443800, -2588.139893, 146.979004, 100.000000, 0, 0.000000, 0), -- spline 44/76
(92881, 46, 17.396900, -2612.679932, 148.645004, 100.000000, 0, 0.000000, 0), -- spline 45/76
(92881, 47, 21.831200, -2637.949951, 152.451004, 100.000000, 0, 0.000000, 0), -- spline 46/76
(92881, 48, 55.236801, -2648.290039, 155.867996, 100.000000, 0, 0.000000, 0), -- spline 47/76
(92881, 49, 79.086197, -2628.209961, 160.895004, 100.000000, 0, 0.000000, 0), -- spline 48/76
(92881, 50, 67.079903, -2605.689941, 163.145004, 100.000000, 0, 0.000000, 0), -- spline 49/76
(92881, 51, 58.428799, -2578.679932, 158.257004, 100.000000, 0, 0.000000, 0), -- spline 50/76
(92881, 52, 72.624199, -2532.919922, 160.979004, 100.000000, 0, 0.000000, 0), -- spline 51/76
(92881, 53, 81.372803, -2498.169922, 155.089996, 100.000000, 0, 0.000000, 0), -- spline 52/76
(92881, 54, 94.505203, -2469.600098, 159.007004, 100.000000, 0, 0.000000, 0), -- spline 53/76
(92881, 55, 100.960999, -2456.429932, 157.479004, 100.000000, 0, 0.000000, 0), -- spline 54/76
(92881, 56, 111.130997, -2428.989990, 160.673004, 100.000000, 0, 0.000000, 0), -- spline 55/76
(92881, 57, 115.309998, -2404.860107, 160.979004, 100.000000, 0, 0.000000, 0), -- spline 56/76
(92881, 58, 114.119003, -2371.610107, 157.783997, 100.000000, 0, 0.000000, 0), -- spline 57/76
(92881, 59, 109.720001, -2344.959961, 153.367996, 100.000000, 0, 0.000000, 0), -- spline 58/76
(92881, 60, 97.577103, -2320.800049, 153.701004, 100.000000, 0, 0.000000, 0), -- spline 59/76
(92881, 61, 80.574402, -2283.500000, 143.811996, 100.000000, 0, 0.000000, 0), -- spline 60/76
(92881, 62, 78.348396, -2265.120117, 144.007004, 100.000000, 0, 0.000000, 0), -- spline 61/76
(92881, 63, 84.780701, -2245.209961, 144.783997, 100.000000, 0, 0.000000, 0), -- spline 62/76
(92881, 64, 92.436798, -2223.620117, 147.283997, 100.000000, 0, 0.000000, 0), -- spline 63/76
(92881, 65, 98.482002, -2205.760010, 138.533997, 100.000000, 0, 0.000000, 0), -- spline 64/76
(92881, 66, 103.757004, -2172.600098, 140.007004, 100.000000, 0, 0.000000, 0), -- spline 65/76
(92881, 67, 100.174004, -2147.179932, 136.757004, 100.000000, 0, 0.000000, 0), -- spline 66/76
(92881, 68, 90.358101, -2125.510010, 145.561996, 100.000000, 0, 0.000000, 0), -- spline 67/76
(92881, 69, 69.620399, -2110.209961, 155.811996, 100.000000, 0, 0.000000, 0), -- spline 68/76
(92881, 70, 49.897900, -2097.540039, 174.367996, 100.000000, 0, 0.000000, 0), -- spline 69/76
(92881, 71, 40.182400, -2089.699951, 184.535995, 100.000000, 0, 0.000000, 0), -- spline 70/76
(92881, 72, 33.397400, -2076.469971, 198.817993, 100.000000, 0, 0.000000, 0), -- spline 71/76
(92881, 73, 17.798401, -2058.320068, 206.410995, 100.000000, 0, 0.000000, 0), -- spline 72/76
(92881, 74, 16.156099, -2046.180054, 219.289001, 100.000000, 0, 0.000000, 0), -- spline 73/76
(92881, 75, 5.402780, -2029.050049, 238.910995, 100.000000, 0, 0.000000, 0), -- spline 74/76
(92881, 76, 5.464740, -2020.020020, 258.058014, 100.000000, 0, 0.000000, 0), -- spline 75/76
(92881, 77, 2.117350, -2010.589966, 256.860992, 100.000000, 0, 0.000000, 0); -- spline 76/76


-- Add gossip menu for Spoops.
REPLACE INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (8312, 8, 8312, 0, 0, 0, 0);
REPLACE INTO `gossip_menu` (`entry`, `text_id`,  `condition_id`) VALUES
(6591, 7808, 0),
(6591, 7809, 8312);
UPDATE `creature_template` SET `gossip_menu_id`=6591, `npc_flags`=3 WHERE `entry`=15309;

-- Rachelle Gothena should only sell Hallow's End Pumpkin Treat if quest 8312 is completed.
UPDATE `npc_vendor` SET `condition_id`=8312 WHERE `entry`=15354 && `item`=20557;

-- Add gossip menu for Jesper.
REPLACE INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (8311, 8, 8311, 0, 0, 0, 0);
REPLACE INTO `npc_text` (`ID`, `Probability0`, `Probability1`, `Probability2`, `Probability3`, `Probability4`, `Probability5`, `Probability6`, `Probability7`, `BroadcastTextID0`, `BroadcastTextID1`, `BroadcastTextID2`, `BroadcastTextID3`, `BroadcastTextID4`, `BroadcastTextID5`, `BroadcastTextID6`, `BroadcastTextID7`) VALUES (7811, 1, 0, 0, 0, 0, 0, 0, 0, 10814, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `gossip_menu` (`entry`, `text_id`,  `condition_id`) VALUES
(6592, 7810, 0),
(6592, 7811, 8311);
UPDATE `creature_template` SET `gossip_menu_id`=6592, `npc_flags`=3 WHERE `entry`=15310;

-- Katrina Shimmerstar should only sell Hallow's End Pumpkin Treat if quest 8311 is completed.
UPDATE `npc_vendor` SET `condition_id`=8311 WHERE `entry`=15353 && `item`=20557;

-- Add gossip menu for Katrina Shimmerstar.
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES
(6589, 7805),
(6594, 7813);
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`) VALUES (6589, 0, 1, 'What Hallow\'s End candy do you have for sale?', 10815, 3, 4, 0, 0, 0, 0, NULL, 0);
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`) VALUES (6589, 1, 0, 'What is there to do on Hallow\'s End?', 10816, 1, 1, 6594, 0, 0, 0, NULL, 0);
UPDATE `creature_template` SET `gossip_menu_id`=6589, `npc_flags`=5 WHERE `entry`=15353;

-- The emote quests should be repeatable.
UPDATE `quest_template` SET `SpecialFlags`=3 WHERE `entry` IN (8353, 8357, 8356, 8355, 8354, 8360, 8359, 8358);

-- Hallow's End Treats for Spoops! should not be repeatable.
UPDATE `quest_template` SET `SpecialFlags`=0 WHERE `entry`=8312;

-- Stinking Up Southshore should not be repeatable.
UPDATE `quest_template` SET `SpecialFlags`=0 WHERE `entry`=1657;

-- Add targets for Despawn Ice Block since i removed hack for it in core.
REPLACE INTO `spell_script_target` (`entry`, `type`, `targetEntry`, `conditionId`, `build_min`, `build_max`) VALUES (30132, 0, 181247, 0, 5464, 5875);

-- Add inverse effect mask to spell script targets.
DROP PROCEDURE IF EXISTS `?`;
DELIMITER //
CREATE PROCEDURE `?`()
BEGIN
  DECLARE CONTINUE HANDLER FOR SQLEXCEPTION BEGIN END;
  ALTER TABLE `spell_script_target`
	ADD COLUMN `inverseEffectMask` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0' AFTER `conditionId`;
END //
DELIMITER ;
CALL `?`();
DROP PROCEDURE `?`;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 131140 AND 131150;
DELETE FROM `game_event_gameobject` WHERE `guid` IN (131140, 131141, 131142, 131143, 131144, 131145, 131146, 131147, 131148, 131149, 131150) AND `event` = 12;

-- Fix item Forsaken Stink Bomb Cluster.
REPLACE INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `patch_min`, `patch_max`) VALUES (202776, 15415, 0, -854.598, -504.041, 11.3208, 3.64774, 6, 10);
DELETE FROM `event_scripts` WHERE `id`=9417;
REPLACE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (9417, 0, 83, 0, 0, 0, 0, 15415, 100, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Toss Stink Bomb - Quest Credit for Stinking Up Southshore');
UPDATE `creature_template` SET `unit_flags` = 256 + 512 + 33554432 WHERE `entry`=15415;

-- Add targets for Stink Bomb Cleaner.
REPLACE INTO `spell_script_target` (`entry`, `type`, `targetEntry`, `conditionId`, `inverseEffectMask`, `build_min`, `build_max`) VALUES (24973, 0, 180449, 0, 2, 4878, 5875);
REPLACE INTO `spell_script_target` (`entry`, `type`, `targetEntry`, `conditionId`, `inverseEffectMask`, `build_min`, `build_max`) VALUES (24973, 0, 180450, 0, 4, 4878, 5875);

-- Fix unusable Apple Bob objects.
UPDATE `gameobject` SET `state` = 1 WHERE `guid` IN (332880, 332864) AND `id` = 180523;

-- Forsaken Banner was added in patch 1.8.
UPDATE `gameobject_template` SET `patch`=6 WHERE `entry`=180432;

-- Correct faction and flags of The Wickerman.
UPDATE `gameobject_template` SET `faction`=1375, `flags`=32 WHERE `entry`=180433;

-- Missing Hallow's End gameobjects.
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `animprogress`, `state`, `patch_min`, `patch_max`) VALUES
(34305, 180405, 0, -3656.67, -840.95, 41.3908, 0, 0, 0.656058, 0.75471, 255, 1, 6, 10),
(34306, 180405, 0, 392.129, -2101.99, 131.562, 0, 0, 0.887011, 0.461749, 255, 1, 6, 10),
(34307, 180523, 0, 398.111, -2100.5, 131.839, 0, 0, 0.961261, 0.27564, 255, 1, 6, 10),
(34308, 180415, 0, 392.212, -2104.05, 132.208, 0, 0, 0.748956, 0.66262, 255, 1, 6, 10),
(34309, 180425, 0, 398.663, -2098.36, 132.465, 0, 0, -0.891007, 0.453991, 255, 1, 6, 10),
(34310, 180425, 0, 392.13, -2103.66, 132.263, 0, 0, 0.0348988, 0.999391, 255, 1, 6, 10),
(34311, 180411, 0, 399.422, -2100.04, 135.029, 0, 0, 0.130526, 0.991445, 255, 1, 6, 10),
(34312, 180415, 0, 399.96, -2102.41, 132.458, 0, 0, -0.216439, 0.976296, 255, 1, 6, 10),
(34313, 180471, 0, 397.906, -2094.09, 137.988, 0, 0, -0.636078, 0.771625, 255, 1, 6, 10),
(34314, 180472, 0, 398.528, -2097.02, 139.411, 0, 0, -0.991445, 0.130528, 255, 1, 6, 10),
(34315, 180472, 0, 400.004, -2103.2, 139.439, 0, 0, -0.990268, 0.139175, 255, 1, 6, 10),
(34316, 180471, 0, 400.667, -2106.41, 137.946, 0, 0, -0.580703, 0.814116, 255, 1, 6, 10),
(34317, 180472, 0, 386.052, -2091.51, 135.415, 0, 0, -0.601814, 0.798636, 255, 1, 6, 10),
(34318, 180472, 0, 389.484, -2086.82, 135.594, 0, 0, 0.267238, 0.963631, 255, 1, 6, 10),
(34319, 180472, 0, 382.179, -2098.06, 139.411, 0, 0, -0.984807, 0.173652, 255, 1, 6, 10),
(34320, 180472, 0, 394.663, -2084.8, 135.633, 0, 0, -0.986285, 0.16505, 255, 1, 6, 10),
(34321, 180472, 0, 391.22, -2113.92, 135.401, 0, 0, 0.782608, 0.622515, 255, 1, 6, 10),
(34322, 180405, 0, 379.283, -2098.82, 132.368, 0, 0, -0.461748, 0.887011, 255, 1, 6, 10),
(34323, 180472, 0, 384.632, -2109.8, 139.446, 0, 0, -0.987688, 0.156436, 255, 1, 6, 10),
(34324, 180471, 0, 388.87, -2084.19, 134.186, 0, 0, 0.942641, 0.333808, 255, 1, 6, 10),
(34325, 180405, 0, 399.259, -2086.7, 121.839, 0, 0, -0.748956, 0.66262, 255, 1, 6, 10),
(34326, 180407, 0, 381.987, -2110.23, 132.368, 0, 0, -0.45399, 0.891007, 255, 1, 6, 10),
(34327, 180471, 0, 394.082, -2082.22, 134.244, 0, 0, -0.878817, 0.47716, 255, 1, 6, 10),
(34328, 180425, 0, 395.389, -2084.17, 122.995, 0, 0, -0.636078, 0.771625, 255, 1, 6, 10),
(34329, 180472, 0, 396.389, -2116.89, 135.623, 0, 0, 0.130526, 0.991445, 255, 1, 6, 10),
(34330, 180472, 0, 401.812, -2115.88, 135.628, 0, 0, -0.990268, 0.139175, 255, 1, 6, 10),
(34331, 180406, 0, 405.191, -2112.43, 121.841, 0, 0, -0.190808, 0.981627, 255, 1, 6, 10),
(34332, 180412, 0, 401.024, -2118.11, 131.563, 0, 0, -0.906307, 0.422619, 255, 1, 6, 10),
(34333, 180471, 0, 396.917, -2119.25, 134.174, 0, 0, 0.382683, 0.92388, 255, 1, 6, 10),
(34334, 180425, 0, 402.851, -2116.42, 122.997, 0, 0, 0.798635, 0.601815, 255, 1, 6, 10),
(34335, 180471, 0, 402.512, -2118.77, 134.163, 0, 0, -0.350207, 0.936672, 255, 1, 6, 10),
(34336, 180472, 0, 405.172, -2117.85, 130.156, 0, 0, 0.782608, 0.622515, 255, 1, 6, 10),
(34337, 180472, 0, 391.903, -2120.49, 135.639, 0, 0, -0.615661, 0.788011, 255, 1, 6, 10),
(34338, 180472, 0, 404.819, -2118.23, 135.601, 0, 0, -0.587785, 0.809017, 255, 1, 6, 10),
(34339, 180425, 0, 393.408, -2077.38, 132.44, 0, 0, -0.882947, 0.469473, 255, 1, 6, 10),
(34340, 180471, 0, 407.55, -2117.49, 134.33, 0, 0, -0.300705, 0.953717, 255, 1, 6, 10),
(34341, 180425, 0, 386.444, -2078.66, 132.441, 0, 0, 0.788011, 0.615662, 255, 1, 6, 10),
(34342, 180425, 0, 393.681, -2076.9, 127.718, 0, 0, 0.139173, 0.990268, 255, 1, 6, 10),
(34343, 180472, 0, 408.075, -2120.25, 135.615, 0, 0, -0.994521, 0.104535, 255, 1, 6, 10),
(34344, 180425, 0, 404.063, -2123.43, 132.442, 0, 0, 0.942641, 0.333808, 255, 1, 6, 10),
(34345, 180425, 0, 397.191, -2125.18, 132.443, 0, 0, -0.62932, 0.777146, 255, 1, 6, 10),
(34346, 180425, 0, 404.52, -2123.7, 127.713, 0, 0, 0.0697555, 0.997564, 255, 1, 6, 10),
(34347, 180407, 0, 382.116, -2076.26, 131.562, 0, 0, 0.642787, 0.766045, 255, 1, 6, 10),
(34348, 180471, 0, 392.509, -2126.05, 134.23, 0, 0, 0.913545, 0.406738, 255, 1, 6, 10),
(34349, 180471, 0, 408.587, -2122.39, 134.185, 0, 0, -0.66262, 0.748956, 255, 1, 6, 10),
(34350, 180406, 0, 396.103, -2072.96, 126.839, 0, 0, -0.0871553, 0.996195, 255, 1, 6, 10),
(34351, 180472, 0, 390.53, -2126.46, 135.619, 0, 0, 0.814116, 0.580703, 255, 1, 6, 10),
(34352, 180472, 0, 409.052, -2124.5, 135.636, 0, 0, -0.986285, 0.16505, 255, 1, 6, 10),
(34353, 180472, 0, 393.18, -2128.56, 135.597, 0, 0, 0.173648, 0.984808, 255, 1, 6, 10),
(34354, 180406, 0, 394.451, -2129.34, 131.564, 0, 0, 0.996917, 0.0784664, 255, 1, 6, 10),
(34355, 180471, 0, 402.352, -2128.56, 134.172, 0, 0, -0.996194, 0.087165, 255, 1, 6, 10),
(34356, 180407, 0, 408.374, -2126.16, 126.841, 0, 0, -0.788011, 0.615662, 255, 1, 6, 10),
(34357, 180472, 0, 398.167, -2129.51, 135.609, 0, 0, 0.798635, 0.601815, 255, 1, 6, 10),
(34358, 180472, 0, 406.291, -2127.58, 135.595, 0, 0, 0.793353, 0.608762, 255, 1, 6, 10),
(34359, 180471, 0, 393.667, -2130.51, 134.172, 0, 0, 0.936672, 0.350207, 255, 1, 6, 10),
(34360, 180471, 0, 409.724, -2127.03, 134.226, 0, 0, -0.909961, 0.414694, 255, 1, 6, 10),
(34361, 180407, 0, 314.214, -2119.87, 155.812, 0, 0, -0.469471, 0.882948, 255, 1, 6, 10),
(34362, 180411, 0, 305.977, -2121.64, 129.292, 0, 0, 0.182235, 0.983255, 255, 1, 6, 10),
(34363, 180405, 0, 294.173, -2137.15, 124.875, 0, 0, -0.492423, 0.870356, 255, 1, 6, 10),
(34364, 180405, 0, 288.705, -2113.15, 124.89, 0, 0, -0.477158, 0.878817, 255, 1, 6, 10),
(34365, 180433, 0, 1731.44, 508.817, 41.359, 0, 0, 0.681998, 0.731354, 255, 1, 6, 10),
(34366, 180434, 0, 1707.36, 519.654, 34.9732, 0, 0, -0.309016, 0.951057, 255, 1, 6, 10),
(34367, 180432, 0, 1709.51, 509.677, 36.9045, 0, 0, 0.656058, 0.75471, 255, 1, 6, 10),
(34368, 180434, 0, 1735.59, 549.929, 33.6816, 0, 0, 0.0958452, 0.995396, 255, 1, 6, 10),
(34369, 180434, 0, 1714.29, 473.916, 61.6468, 0, 0, 0.902585, 0.430512, 255, 1, 6, 10),
(34370, 180432, 0, 1731.35, 474.773, 61.6564, 0, 0, 0.707107, 0.707107, 255, 1, 6, 10),
(34371, 180434, 0, 1759.49, 515.949, 35.3091, 0, 0, -0.492423, 0.870356, 255, 1, 6, 10),
(34372, 180434, 0, 1744.99, 475.504, 61.6564, 0, 0, -0.522498, 0.852641, 255, 1, 6, 10),
(34373, 180432, 0, 1750.81, 509.617, 38.3357, 0, 0, 0.694658, 0.71934, 255, 1, 6, 10),
(34374, 180411, 1, -4370.96, 3328.83, 28.7201, 0, 0, -0.67559, 0.737278, 255, 1, 6, 10),
(34375, 180471, 1, -4360.54, 3319.92, 21.281, 0, 0, -0.999657, 0.0262017, 255, 1, 6, 10),
(34376, 180472, 1, -4353.02, 3317, 21.784, 0, 0, -0.00872612, 0.999962, 255, 1, 6, 10),
(34377, 180406, 1, -4360.24, 3318.73, 14.4334, 0, 0, -0.983254, 0.182238, 255, 1, 6, 10),
(34378, 180472, 1, -4371.37, 3317.45, 21.4659, 0, 0, 0.737277, 0.675591, 255, 1, 6, 10),
(34379, 180471, 1, -4382.14, 3320.5, 21.234, 0, 0, 0.996194, 0.087165, 255, 1, 6, 10),
(34380, 180407, 1, -4382.49, 3319.27, 14.4422, 0, 0, -0.984807, 0.173652, 255, 1, 6, 10),
(34381, 180472, 1, -4340.62, 3301.73, 23.5147, 0, 0, 0.681998, 0.731354, 255, 1, 6, 10),
(34382, 180471, 1, -4349.34, 3301.98, 22.0187, 0, 0, 0.998629, 0.0523532, 255, 1, 6, 10),
(34383, 180472, 1, -4390.11, 3318, 21.9916, 0, 0, -0.999048, 0.0436193, 255, 1, 6, 10),
(34384, 180406, 1, -4337.6, 3295.78, 18.6969, 0, 0, 0.803857, 0.594823, 255, 1, 6, 10),
(34385, 180410, 1, -4353.52, 3295.18, 19.317, 0, 0, -0.731354, 0.681998, 255, 1, 6, 10),
(34386, 180471, 1, -4349.59, 3293.71, 22.0801, 0, 0, 0.0261765, 0.999657, 255, 1, 6, 10),
(34387, 180405, 1, -4387.96, 3309.8, 14.9332, 0, 0, -0.573576, 0.819152, 255, 1, 6, 10),
(34388, 180471, 1, -4392.77, 3309.38, 19.9972, 0, 0, -0.743144, 0.669132, 255, 1, 6, 10),
(34389, 180411, 1, -4327.14, 3287.82, 27.903, 0, 0, 0.999847, 0.0174693, 255, 1, 6, 10),
(34390, 180407, 1, -4389.1, 3301.69, 14.9135, 0, 0, -0.566406, 0.824126, 255, 1, 6, 10),
(34391, 180471, 1, -4349.85, 3283.19, 22.1567, 0, 0, 0.999657, 0.0262017, 255, 1, 6, 10),
(34392, 180472, 1, -4394.25, 3302.19, 21.6209, 0, 0, -0.999657, 0.0262017, 255, 1, 6, 10),
(34393, 180412, 1, -4379.91, 3292, 14.836, 0, 0, 0.414693, 0.909962, 255, 1, 6, 10),
(34394, 180405, 1, -4337.97, 3280.32, 18.6924, 0, 0, 0.83867, 0.54464, 255, 1, 6, 10),
(34395, 180471, 1, -4341.35, 3274.67, 22.2062, 0, 0, -0.0436192, 0.999048, 255, 1, 6, 10),
(34396, 180472, 1, -4350.06, 3274.93, 23.5513, 0, 0, -0.788011, 0.615662, 255, 1, 6, 10),
(34397, 180523, 1, -4381.68, 3279.98, 13.8363, 0, 0, 0.979924, 0.19937, 255, 1, 6, 10),
(34398, 180406, 1, -4389.75, 3277.26, 14.9121, 0, 0, -0.587785, 0.809017, 255, 1, 6, 10),
(34399, 180471, 1, -4391.23, 3261.16, 20.451, 0, 0, -0.700909, 0.713251, 255, 1, 6, 10),
(34400, 180471, 1, -4372.85, 3260.74, 20.0147, 0, 0, 0.0174522, 0.999848, 255, 1, 6, 10),
(34401, 180411, 1, -4373.13, 3249.73, 27.8623, 0, 0, 0.642787, 0.766045, 255, 1, 6, 10),
(34402, 180472, 1, -4362.25, 3257.48, 22.7778, 0, 0, -0.748956, 0.66262, 255, 1, 6, 10),
(34403, 180405, 1, -4389.1, 3269.09, 14.9168, 0, 0, -0.559193, 0.829038, 255, 1, 6, 10),
(34404, 180471, 1, -4394.86, 3277.05, 20.1297, 0, 0, -0.731354, 0.681998, 255, 1, 6, 10),
(34405, 180472, 1, -4393.83, 3269.74, 21.5106, 0, 0, -0.997563, 0.0697661, 255, 1, 6, 10),
(34406, 180471, 1, -4354.57, 3260.12, 20.382, 0, 0, 0.66913, 0.743145, 255, 1, 6, 10),
(34407, 180407, 1, -4384.11, 3259.27, 14.4343, 0, 0, 0.216439, 0.976296, 255, 1, 6, 10),
(34408, 180406, 1, -4361.85, 3258.67, 14.4313, 0, 0, 0.182235, 0.983255, 255, 1, 6, 10),
(34409, 180472, 1, -4383.75, 3258.02, 22.7724, 0, 0, -0.615661, 0.788011, 255, 1, 6, 10),
(34410, 180471, 1, 10153.9, 2244.09, 1333.74, 0, 0, 0.97437, 0.224951, 255, 1, 6, 10),
(34411, 180406, 1, 10152.1, 2238.2, 1344.3, 0, 0, -0.878817, 0.47716, 255, 1, 6, 10),
(34412, 180405, 1, 10139.1, 2229.3, 1344.3, 0, 0, -0.861628, 0.507539, 255, 1, 6, 10),
(34413, 180405, 1, 10135.5, 2228.11, 1329.61, 0, 0, -0.906307, 0.422619, 255, 1, 6, 10),
(34414, 180523, 1, 10139.2, 2223.77, 1330.25, 0, 0, 0.906307, 0.422619, 255, 1, 6, 10),
(34415, 180406, 1, 10125.6, 2220.15, 1344.3, 0, 0, -0.891007, 0.453991, 255, 1, 6, 10),
(34416, 180472, 1, 10129.5, 2227, 1334.85, 0, 0, 0.93358, 0.358368, 255, 1, 6, 10),
(34417, 180406, 1, 10126.6, 2222.05, 1329.61, 0, 0, -0.870356, 0.492424, 255, 1, 6, 10),
(34418, 180412, 1, 10125, 2224.55, 1328.38, 0, 0, -0.999962, 0.00873464, 255, 1, 6, 10),
(34419, 180471, 1, 10105.7, 2211.15, 1333.77, 0, 0, -0.788011, 0.615662, 255, 1, 6, 10),
(34420, 180407, 1, 10112.7, 2211.48, 1344.3, 0, 0, -0.906307, 0.422619, 255, 1, 6, 10),
(34421, 180407, 1, 9812.1, 932.718, 1308.52, 0, 0, -0.113203, 0.993572, 255, 1, 6, 10),
(34422, 180471, 1, 1612.7, -4463.88, 32.7327, 0, 0, 0.990268, 0.139175, 255, 1, 6, 10),
(34423, 180407, 0, 2436.84, 350.483, 33.7, 0, 0, 0.870356, 0.492424, 255, 1, 6, 10);

-- Add new objects to event.
REPLACE INTO `game_event_gameobject` (`guid`, `event`) VALUES
(34305, 12),
(34306, 12),
(34307, 12),
(34308, 12),
(34309, 12),
(34310, 12),
(34311, 12),
(34312, 12),
(34313, 12),
(34314, 12),
(34315, 12),
(34316, 12),
(34317, 12),
(34318, 12),
(34319, 12),
(34320, 12),
(34321, 12),
(34322, 12),
(34323, 12),
(34324, 12),
(34325, 12),
(34326, 12),
(34327, 12),
(34328, 12),
(34329, 12),
(34330, 12),
(34331, 12),
(34332, 12),
(34333, 12),
(34334, 12),
(34335, 12),
(34336, 12),
(34337, 12),
(34338, 12),
(34339, 12),
(34340, 12),
(34341, 12),
(34342, 12),
(34343, 12),
(34344, 12),
(34345, 12),
(34346, 12),
(34347, 12),
(34348, 12),
(34349, 12),
(34350, 12),
(34351, 12),
(34352, 12),
(34353, 12),
(34354, 12),
(34355, 12),
(34356, 12),
(34357, 12),
(34358, 12),
(34359, 12),
(34360, 12),
(34361, 12),
(34362, 12),
(34363, 12),
(34364, 12),
(34365, 12),
(34366, 12),
(34367, 12),
(34368, 12),
(34369, 12),
(34370, 12),
(34371, 12),
(34372, 12),
(34373, 12),
(34374, 12),
(34375, 12),
(34376, 12),
(34377, 12),
(34378, 12),
(34379, 12),
(34380, 12),
(34381, 12),
(34382, 12),
(34383, 12),
(34384, 12),
(34385, 12),
(34386, 12),
(34387, 12),
(34388, 12),
(34389, 12),
(34390, 12),
(34391, 12),
(34392, 12),
(34393, 12),
(34394, 12),
(34395, 12),
(34396, 12),
(34397, 12),
(34398, 12),
(34399, 12),
(34400, 12),
(34401, 12),
(34402, 12),
(34403, 12),
(34404, 12),
(34405, 12),
(34406, 12),
(34407, 12),
(34408, 12),
(34409, 12),
(34410, 12),
(34411, 12),
(34412, 12),
(34413, 12),
(34414, 12),
(34415, 12),
(34416, 12),
(34417, 12),
(34418, 12),
(34419, 12),
(34420, 12),
(34421, 12),
(34422, 12),
(34423, 12);

-- Correct quest details.
UPDATE `quest_template` SET `DetailsEmote1`=0 WHERE `entry`=255;
UPDATE `quest_template` SET `DetailsEmote1`=5, `DetailsEmote2`=1, `DetailsEmote3`=20 WHERE `entry`=314;
UPDATE `quest_template` SET `DetailsEmote1`=0 WHERE `entry`=418;
UPDATE `quest_template` SET `DetailsEmote1`=0 WHERE `entry`=1387;
UPDATE `quest_template` SET `DetailsEmote1`=1 WHERE `entry`=2981;
UPDATE `quest_template` SET `DetailsEmote2`=0 WHERE `entry`=3791;
UPDATE `quest_template` SET `DetailsEmote4`=5 WHERE `entry`=7482;
UPDATE `quest_template` SET `DetailsEmote1`=1, `DetailsEmote2`=1, `DetailsEmote3`=1, `DetailsEmote4`=1, `DetailsEmoteDelay1`=0 WHERE `entry`=7722;
UPDATE `quest_template` SET `DetailsEmote1`=1, `DetailsEmote2`=1 WHERE `entry`=8311;
UPDATE `quest_template` SET `DetailsEmote1`=1, `DetailsEmote2`=1 WHERE `entry`=8312;
UPDATE `quest_template` SET `DetailsEmote1`=5, `DetailsEmote2`=1 WHERE `entry`=8353;
UPDATE `quest_template` SET `DetailsEmote1`=5, `DetailsEmote2`=1 WHERE `entry`=8354;
UPDATE `quest_template` SET `DetailsEmote1`=5, `DetailsEmote2`=1 WHERE `entry`=8355;
UPDATE `quest_template` SET `DetailsEmote1`=1, `DetailsEmote2`=1 WHERE `entry`=8356;
UPDATE `quest_template` SET `DetailsEmote1`=5, `DetailsEmote2`=1 WHERE `entry`=8357;
UPDATE `quest_template` SET `DetailsEmote1`=5, `DetailsEmote2`=1 WHERE `entry`=8358;
UPDATE `quest_template` SET `DetailsEmote1`=5, `DetailsEmote2`=1 WHERE `entry`=8359;
UPDATE `quest_template` SET `DetailsEmote2`=1 WHERE `entry`=8360;

-- Correct quest offer reward.
UPDATE `quest_template` SET `OfferRewardEmote1`=4, `OfferRewardEmote2`=1, `OfferRewardText`='Ah, well done!  I hope the Alliance chokes on the foul gift we\'ve given them, much like we were forced to choke on the yoke of enslavement to the Scourge!$B$BYou\'ve kept the ideas of Hallow\'s End true, $N, and for that I salute you.  As an extra bonus, let me share some of these Hallow\'s End treats I have with you.  I think you might find them to be quite the enjoyable diversion!' WHERE `entry`=1657;
UPDATE `quest_template` SET `OfferRewardEmote1`=5, `OfferRewardEmote2`=1, `OfferRewardText`='Well done, $N.  The Wickerman Festival will continue to be trouble so long as the abominable Forsaken are allowed to haunt the remnants of Lordaeron.  It is NOT a fitting tribute to that once proud kingdom, let me tell you...$B$BHere\'s some coin for any repairs you might need, and in the spirit of the season I\'ve also included some treats you might like.  Happy Hallow\'s End - let\'s keep it as safe as possible here in Southshore.' WHERE `entry`=1658;
UPDATE `quest_template` SET `OfferRewardEmote2`=0 WHERE `entry`=3788;
UPDATE `quest_template` SET `OfferRewardText`='Well done, $r. You have proven that while you are tolerant of others, you will stop at nothing to destroy the minions of Kel\'Thuzad.\n' WHERE `entry`=5243;
UPDATE `quest_template` SET `OfferRewardEmote1`=4 WHERE `entry`=8311;
UPDATE `quest_template` SET `OfferRewardText`='Having successfully fought your way inside the inn, you now place the eggs inside the keg.  You can smell the foul odor permeating the air...' WHERE `entry`=8322;
UPDATE `quest_template` SET `OfferRewardText`='Too funny!  Well done, $N!  Here\'s your treat.$B$BHappy Hallow\'s End!' WHERE `entry`=8353;
UPDATE `quest_template` SET `OfferRewardEmote2`=1, `OfferRewardText`='Too funny!  Well done, $N!  Here\'s your treat.$B$BHappy Hallow\'s End!' WHERE `entry`=8354;
UPDATE `quest_template` SET `OfferRewardEmote1`=4, `OfferRewardEmote2`=1, `OfferRewardText`='Woo-woo!  Well done, $N!  Here\'s your treat.$B$BHappy Hallow\'s End!' WHERE `entry`=8355;
UPDATE `quest_template` SET `OfferRewardEmote1`=4, `OfferRewardEmote2`=1, `OfferRewardText`='You are truly mighty, haha!  Well done, and thanks for being such a good sport.  Here\'s your candy.$B$BHappy Hallow\'s End, $N!' WHERE `entry`=8356;
UPDATE `quest_template` SET `OfferRewardEmote1`=4, `OfferRewardEmote2`=1, `OfferRewardText`='You\'re quite the dancing machine, $N!$B$BHere\'s your treat for being such a good sport.  Happy Hallow\'s End, and give my best to your sick little friend!  I hope they get better soon.' WHERE `entry`=8357;
UPDATE `quest_template` SET `OfferRewardEmote2`=1, `OfferRewardText`='Woo-woo!  Well done, $N!  Here\'s your treat.$B$BHappy Hallow\'s End!' WHERE `entry`=8358;
UPDATE `quest_template` SET `OfferRewardEmote2`=1, `OfferRewardText`='You are truly mighty, haha!  Well done, and thanks for being such a good sport.  Here\'s your candy.$B$BHappy Hallow\'s End, $N!' WHERE `entry`=8359;
UPDATE `quest_template` SET `OfferRewardEmote2`=1, `OfferRewardText`='You\'re quite the dancing machine, $N!$B$BHere\'s your treat for being such a good sport.  Happy Hallow\'s End, and give my best to your sick little friend!  I hope they get better soon.' WHERE `entry`=8360;
UPDATE `quest_template` SET `OfferRewardEmote1`=4, `OfferRewardEmote2`=1, `OfferRewardText`='Ah, it almost smells better around here already.  Almost.$B$BThanks to you, $N, Southshore just might make it through another Hallow\'s End.  Here\'s your treats, with my thanks!  If you run out of candy, I think there\'s a gnome named Katrina Shimmerstar in Ironforge who can sell you more; she\'s only around during Hallow\'s End, I believe.' WHERE `entry`=8373;
UPDATE `quest_template` SET `OfferRewardEmote1`=4, `OfferRewardEmote2`=1, `OfferRewardEmote3`=5, `OfferRewardText`='Ah, success!  You\'ve shown true Hallow\'s End spirit - FORSAKEN spirit, I should say!$B$B<Darkcaller Yanka laughs and rubs her hands together.>$B$BI revel in the fact that Southshore must now feast on bad ale or go without!  As for you, take these treats.  I believe you will find good use for them!' WHERE `entry`=8409;

-- Correct quest request items.
UPDATE `quest_template` SET `IncompleteEmote`=6, `CompleteEmote`=6, `RequestItemsText`='Have you gone up to Tirisfal Glade and checked things out?  They usually hold the festival close to the Undercity...' WHERE `entry`=1658;
UPDATE `quest_template` SET `IncompleteEmote`=1, `RequestItemsText`='My associate, the tauren sage, Korolusk, is recruiting his allies for this task.' WHERE `entry`=7482;
UPDATE `quest_template` SET `IncompleteEmote`=1 WHERE `entry`=8311;
UPDATE `quest_template` SET `IncompleteEmote`=1 WHERE `entry`=8312;
UPDATE `quest_template` SET `CompleteEmote`=0, `RequestItemsText`='The keg is filled with ale.' WHERE `entry`=8322;
UPDATE `quest_template` SET `IncompleteEmote`=25, `CompleteEmote`=25, `RequestItemsText`='I\'m waiting...' WHERE `entry`=8353;
UPDATE `quest_template` SET `IncompleteEmote`=25, `CompleteEmote`=25, `RequestItemsText`='I\'m waiting...' WHERE `entry`=8354;
UPDATE `quest_template` SET `IncompleteEmote`=11, `CompleteEmote`=11 WHERE `entry`=8355;
UPDATE `quest_template` SET `IncompleteEmote`=1, `CompleteEmote`=1 WHERE `entry`=8356;
UPDATE `quest_template` SET `IncompleteEmote`=6, `CompleteEmote`=6, `RequestItemsText`='You know how to dance, don\'t you?  Try by putting your right foot in... then your right foot out... your right foot in... shake it all about...' WHERE `entry`=8357;
UPDATE `quest_template` SET `IncompleteEmote`=6, `CompleteEmote`=6 WHERE `entry`=8358;
UPDATE `quest_template` SET `IncompleteEmote`=1, `CompleteEmote`=1 WHERE `entry`=8359;
UPDATE `quest_template` SET `IncompleteEmote`=6, `CompleteEmote`=6, `RequestItemsText`='You know how to dance, don\'t you?  Try by putting your right foot in... then your right foot out... your right foot in... shake it all about...' WHERE `entry`=8360;
UPDATE `quest_template` SET `IncompleteEmote`=15, `CompleteEmote`=15, `RequestItemsText`='Those blasted Forsaken... it\'s already bad enough that they\'re undead, but then they get all riled up and start causing trouble in MY village!' WHERE `entry`=8373;

-- Waypoints for Innkeeper Thulfram.
UPDATE `creature` SET `movementtype`=2, `position_x`=394.657013, `position_y`=-2097.139893, `position_z`=131.561996 WHERE `guid`=92923;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(92923, 1, 394.657013, -2097.139893, 131.561996, 100.000000, 0, 0.000000, 0),
(92923, 2, 399.725006, -2119.739990, 131.563995, 100.000000, 0, 0.000000, 0),
(92923, 3, 396.190002, -2103.780029, 131.561996, 100.000000, 0, 0.000000, 0),
(92923, 4, 394.209015, -2095.250000, 131.561996, 100.000000, 0, 0.000000, 0),
(92923, 5, 390.916992, -2081.429932, 131.561996, 100.000000, 0, 0.000000, 0),
(92923, 6, 391.851990, -2085.350098, 131.563004, 100.000000, 0, 0.000000, 0);

-- gina lang summon imp
UPDATE `creature_template` SET `ai_name` = 'EventAI' WHERE `entry` = 5750;
REPLACE INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (575001, 5750, 0, 11, 0, 100, 0, 0, 0, 0, 0, 575001, 0, 0, 'Gina Lang - Summon Imp on Spawn');
REPLACE INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (575001, 0, 15, 11939, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gina Lang - Summon Imp on Spawn');

-- allow doreen beltis to roam
UPDATE `creature` SET `movementtype` = 1, `wander_distance` = 2 WHERE `guid` = 31918;

-- allow jamie nore to roam
UPDATE `creature` SET `movementtype` = 1, `wander_distance` = 2 WHERE `guid` = 31921;

-- allow shelene rhobart to roam
UPDATE `creature` SET `movementtype` = 1, `wander_distance` = 2 WHERE `guid` = 38289;

-- set oliver dwor orientation
UPDATE `creature` SET `orientation` = 4.72669 WHERE `guid` = 38290;

-- remove incorrect deathguard elite
DELETE FROM `creature` WHERE `guid` = 45204;

-- junior apothecary holland - say OOC
UPDATE `creature_template` SET `ai_name` = 'EventAI' WHERE `entry` = 10665;
REPLACE INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1066501, 10665, 0, 1, 0, 100, 1, 10000, 20000, 40000, 60000, 1066501, 0, 0, 'Junior Apothecary Holland - Say OOC');
REPLACE INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1066501, 0, 1, 5, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Junior Apothecary Holland - Emote');
REPLACE INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1066501, 0, 39, 1066501, 1066502, 0, 0, 0, 0, 0, 4, 50, 50, 0, 0, 0, 0, 0, 0, 0, 'Junior Apothecary Holland - Start Script');
REPLACE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1066501, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 5955, 5956, 5957, 5958, 0, 0, 0, 0, 0, 'Junior Apothecary Holland - Talk');
REPLACE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1066502, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 5959, 5960, 5961, 5962, 0, 0, 0, 0, 0, 'Junior Apothecary Holland - Talk');

-- deathguard lundmark waypoints
DELETE FROM `creature_movement` WHERE `id` = 32028;
REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(5725, 1, 2257.139893, 494.394989, 34.187599, 100.000000, 0, 0.000000, 0),
(5725, 2, 2260.280029, 531.893982, 33.629799, 100.000000, 0, 0.000000, 0),
(5725, 3, 2261.860107, 544.312988, 33.476501, 100.000000, 0, 0.000000, 0),
(5725, 4, 2253.580078, 561.752991, 33.452202, 100.000000, 0, 0.000000, 0),
(5725, 5, 2247.409912, 580.773987, 33.435501, 100.000000, 0, 0.000000, 0),
(5725, 6, 2237.459961, 602.783997, 33.483898, 100.000000, 0, 0.000000, 0),
(5725, 7, 2220.080078, 629.265015, 33.472000, 100.000000, 0, 0.000000, 0),
(5725, 8, 2196.250000, 662.010010, 33.483002, 100.000000, 0, 0.000000, 0),
(5725, 9, 2169.399902, 691.206970, 33.353199, 100.000000, 0, 0.000000, 0),
(5725, 10, 2138.379883, 716.931030, 32.345501, 100.000000, 0, 0.000000, 0),
(5725, 11, 2108.570068, 743.580994, 30.955999, 100.000000, 0, 0.000000, 0),
(5725, 12, 2098.310059, 756.047974, 31.190599, 100.000000, 0, 0.000000, 0),
(5725, 13, 2091.370117, 787.125000, 30.553301, 100.000000, 0, 0.000000, 0),
(5725, 14, 2090.919922, 815.692993, 29.917000, 100.000000, 0, 0.000000, 0),
(5725, 15, 2100.139893, 863.120972, 29.716299, 100.000000, 0, 0.000000, 0),
(5725, 16, 2109.939941, 898.135986, 30.494600, 100.000000, 0, 0.000000, 0),
(5725, 17, 2120.989990, 929.143005, 29.248301, 100.000000, 0, 0.000000, 0),
(5725, 18, 2132.050049, 963.747986, 29.582800, 100.000000, 0, 0.000000, 0),
(5725, 19, 2141.179932, 999.619995, 29.404699, 100.000000, 0, 0.000000, 0),
(5725, 20, 2162.679932, 1018.000000, 29.211201, 100.000000, 0, 0.000000, 0),
(5725, 21, 2199.340088, 1055.530029, 29.193001, 100.000000, 2000, 0.000000, 0),
(5725, 22, 2168.669922, 1023.479980, 29.403200, 100.000000, 0, 0.000000, 0),
(5725, 23, 2141.179932, 999.619995, 29.404699, 100.000000, 0, 0.000000, 0),
(5725, 24, 2134.290039, 972.130005, 29.787100, 100.000000, 0, 0.000000, 0),
(5725, 25, 2123.500000, 936.500977, 29.076799, 100.000000, 0, 0.000000, 0),
(5725, 26, 2111.310059, 902.299988, 30.567900, 100.000000, 0, 0.000000, 0),
(5725, 27, 2101.219971, 867.338013, 29.772900, 100.000000, 0, 0.000000, 0),
(5725, 28, 2091.649902, 824.182983, 29.802000, 100.000000, 0, 0.000000, 0),
(5725, 29, 2091.080078, 791.596008, 30.479300, 100.000000, 0, 0.000000, 0),
(5725, 30, 2094.800049, 763.593994, 31.061001, 100.000000, 0, 0.000000, 0),
(5725, 31, 2102.669922, 749.760986, 31.062401, 100.000000, 0, 0.000000, 0),
(5725, 32, 2132.179932, 722.150024, 31.944201, 100.000000, 0, 0.000000, 0),
(5725, 33, 2166.290039, 694.059021, 33.336899, 100.000000, 0, 0.000000, 0),
(5725, 34, 2191.649902, 668.653992, 33.507500, 100.000000, 0, 0.000000, 0),
(5725, 35, 2215.510010, 636.028015, 33.472000, 100.000000, 0, 0.000000, 0),
(5725, 36, 2233.659912, 610.585999, 33.497700, 100.000000, 0, 0.000000, 0),
(5725, 37, 2244.090088, 589.393005, 33.444000, 100.000000, 0, 0.000000, 0),
(5725, 38, 2249.939941, 570.192017, 33.452400, 100.000000, 0, 0.000000, 0),
(5725, 39, 2261.129883, 548.794983, 33.435398, 100.000000, 0, 0.000000, 0),
(5725, 40, 2260.770020, 535.776978, 33.615700, 100.000000, 0, 0.000000, 0),
(5725, 41, 2256.209961, 503.880005, 34.220901, 100.000000, 0, 0.000000, 0),
(5725, 42, 2265.209961, 465.052002, 34.016998, 100.000000, 0, 0.000000, 0),
(5725, 43, 2271.989990, 437.566986, 34.011799, 100.000000, 0, 0.000000, 0),
(5725, 44, 2279.560059, 406.157013, 33.992199, 100.000000, 0, 0.000000, 0),
(5725, 45, 2284.600098, 370.091003, 34.200100, 100.000000, 0, 0.000000, 0),
(5725, 46, 2285.060059, 353.890991, 34.207901, 100.000000, 0, 0.000000, 0),
(5725, 47, 2280.459961, 338.681000, 34.229500, 100.000000, 0, 0.000000, 0),
(5725, 48, 2263.949951, 301.769012, 34.238701, 100.000000, 0, 0.000000, 0),
(5725, 49, 2247.669922, 274.217010, 34.238701, 100.000000, 0, 0.000000, 0),
(5725, 50, 2225.570068, 257.500000, 34.151199, 100.000000, 0, 0.000000, 0),
(5725, 51, 2186.429932, 236.591995, 35.834499, 100.000000, 0, 0.000000, 0),
(5725, 52, 2168.110107, 221.505005, 40.217400, 100.000000, 0, 0.000000, 0),
(5725, 53, 2162.790039, 203.151993, 42.780499, 100.000000, 0, 0.000000, 0),
(5725, 54, 2159.899902, 183.179001, 42.045300, 100.000000, 0, 0.000000, 0),
(5725, 55, 2138.350098, 167.317993, 38.459499, 100.000000, 0, 0.000000, 0),
(5725, 56, 2104.129883, 155.026993, 35.697201, 100.000000, 0, 0.000000, 0),
(5725, 57, 2071.929932, 152.520004, 34.165401, 100.000000, 0, 0.000000, 0),
(5725, 58, 2057.100098, 157.878006, 33.897598, 100.000000, 0, 0.000000, 0),
(5725, 59, 2029.699951, 164.968002, 33.955299, 100.000000, 2000, 0.000000, 0),
(5725, 60, 2049.590088, 160.705994, 33.826199, 100.000000, 0, 0.000000, 0),
(5725, 61, 2064.679932, 154.188995, 34.047501, 100.000000, 0, 0.000000, 0),
(5725, 62, 2096.770020, 153.690002, 35.299500, 100.000000, 0, 0.000000, 0),
(5725, 63, 2127.729980, 162.653000, 37.584599, 100.000000, 0, 0.000000, 0),
(5725, 64, 2156.350098, 177.561005, 41.430500, 100.000000, 0, 0.000000, 0),
(5725, 65, 2161.780029, 195.899994, 42.692600, 100.000000, 0, 0.000000, 0),
(5725, 66, 2164.330078, 215.878006, 41.358101, 100.000000, 0, 0.000000, 0),
(5725, 67, 2177.360107, 230.179001, 37.800301, 100.000000, 0, 0.000000, 0),
(5725, 68, 2215.899902, 251.985001, 34.169701, 100.000000, 0, 0.000000, 0),
(5725, 69, 2240.179932, 266.615997, 34.236401, 100.000000, 0, 0.000000, 0),
(5725, 70, 2260.830078, 296.061005, 34.238701, 100.000000, 0, 0.000000, 0),
(5725, 71, 2276.370117, 329.013000, 34.238701, 100.000000, 0, 0.000000, 0),
(5725, 72, 2284.060059, 347.731995, 34.214298, 100.000000, 0, 0.000000, 0),
(5725, 73, 2285.010010, 363.760010, 34.201900, 100.000000, 0, 0.000000, 0),
(5725, 74, 2281.500000, 395.816986, 34.020500, 100.000000, 0, 0.000000, 0),
(5725, 75, 2273.510010, 431.282013, 33.992199, 100.000000, 0, 0.000000, 0),
(5725, 76, 2266.870117, 458.751007, 34.106800, 100.000000, 0, 0.000000, 0);

-- creature 37920 waypoints
UPDATE `creature` SET `movementtype` = 2 WHERE `guid` = 37920;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(37920, 1, 2960.300049, -552.671997, 110.327003, 100.000000, 0, 0.000000, 0),
(37920, 2, 2940.260010, -554.539001, 109.246002, 100.000000, 0, 0.000000, 0),
(37920, 3, 2916.270020, -551.676025, 107.651001, 100.000000, 0, 0.000000, 0),
(37920, 4, 2874.669922, -536.489014, 107.310997, 100.000000, 0, 0.000000, 0),
(37920, 5, 2839.629883, -516.702026, 105.724998, 100.000000, 0, 0.000000, 0),
(37920, 6, 2803.219971, -499.830994, 101.804001, 100.000000, 0, 0.000000, 0),
(37920, 7, 2771.159912, -500.165985, 102.970001, 100.000000, 0, 0.000000, 0),
(37920, 8, 2732.840088, -505.033997, 102.902000, 100.000000, 10000, 0.000000, 0),
(37920, 9, 2760.669922, -500.122009, 103.099998, 100.000000, 0, 0.000000, 0),
(37920, 10, 2796.810059, -496.365997, 101.708000, 100.000000, 0, 0.000000, 0),
(37920, 11, 2812.429932, -499.164001, 102.332001, 100.000000, 0, 0.000000, 0),
(37920, 12, 2818.949951, -498.179993, 102.874001, 100.000000, 16000, 0.000000, 0),
(37920, 13, 2843.719971, -517.034973, 105.977997, 100.000000, 0, 0.000000, 0),
(37920, 14, 2874.600098, -536.226013, 107.318001, 100.000000, 0, 0.000000, 0),
(37920, 15, 2909.050049, -547.642029, 107.349998, 100.000000, 0, 0.000000, 0),
(37920, 16, 2927.899902, -554.754028, 108.464996, 100.000000, 0, 0.000000, 0),
(37920, 17, 2955.810059, -553.453979, 110.042999, 100.000000, 0, 0.000000, 0),
(37920, 18, 2983.709961, -549.755005, 113.184998, 100.000000, 0, 0.000000, 0),
(37920, 19, 3003.409912, -550.632996, 116.003998, 100.000000, 0, 0.000000, 0),
(37920, 20, 3024.500000, -545.387024, 119.128998, 100.000000, 0, 0.000000, 0),
(37920, 21, 3023.489990, -544.492981, 119.115997, 100.000000, 0, 0.000000, 0),
(37920, 22, 3023.489990, -544.492981, 119.115997, 3.281220, 58000, 0.000000, 0),
(37920, 23, 3016.199951, -547.755981, 118.261002, 100.000000, 0, 0.000000, 0),
(37920, 24, 2992.870117, -547.953003, 114.424004, 100.000000, 0, 0.000000, 0);

-- creature 38931 waypoints
REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `display_id`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movementtype`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES
(38931, 1522, 0, 0, 0, 0, 0, 0, 2707.419922, 875.736023, 111.987999, 3.92368, 300, 300, 0, 100, 100, 2, 0, 0, 0, 10);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(38931, 1, 2707.419922, 875.736023, 111.987999, 100.000000, 0, 0.000000, 0),
(38931, 2, 2766.189941, 857.533997, 112.612000, 100.000000, 20000, 10, 0),
(38931, 3, 2770.020020, 857.156006, 112.238998, 100.000000, 0, 0.000000, 0),
(38931, 4, 2781.429932, 849.655029, 111.863998, 100.000000, 0, 0.000000, 0),
(38931, 5, 2813.419922, 844.630981, 111.939003, 100.000000, 0, 0.000000, 0),
(38931, 6, 2842.330078, 830.435974, 112.611000, 100.000000, 0, 0.000000, 0),
(38931, 7, 2859.100098, 808.166016, 115.559998, 100.000000, 0, 0.000000, 0),
(38931, 8, 2854.850098, 790.073975, 117.251999, 100.000000, 0, 0.000000, 0),
(38931, 9, 2845.959961, 767.747986, 118.913002, 100.000000, 0, 0.000000, 0),
(38931, 10, 2835.830078, 763.830017, 119.148003, 100.000000, 0, 0.000000, 0),
(38931, 11, 2814.030029, 771.724976, 116.660004, 100.000000, 0, 0.000000, 0),
(38931, 12, 2799.639893, 785.348999, 115.727997, 100.000000, 0, 0.000000, 0),
(38931, 13, 2783.939941, 813.270996, 112.733002, 100.000000, 0, 0.000000, 0),
(38931, 14, 2765.010010, 827.554016, 111.941002, 100.000000, 0, 0.000000, 0),
(38931, 15, 2746.020020, 827.487000, 111.863998, 100.000000, 0, 0.000000, 0),
(38931, 16, 2721.419922, 813.960022, 111.275002, 100.000000, 0, 0.000000, 0),
(38931, 17, 2702.459961, 807.356018, 109.933998, 100.000000, 0, 0.000000, 0),
(38931, 18, 2679.870117, 814.130981, 108.638000, 100.000000, 0, 0.000000, 0),
(38931, 19, 2663.929932, 840.693970, 108.448997, 100.000000, 0, 0.000000, 0),
(38931, 20, 2652.899902, 873.932983, 110.916000, 100.000000, 0, 0.000000, 0),
(38931, 21, 2647.600098, 879.997986, 111.672997, 100.000000, 20000, 10, 0),
(38931, 22, 2615.159912, 916.387024, 107.641998, 100.000000, 0, 0.000000, 0),
(38931, 23, 2649.510010, 940.278015, 112.580002, 100.000000, 0, 0.000000, 0),
(38931, 24, 2679.760010, 931.296021, 111.163002, 100.000000, 0, 0.000000, 0),
(38931, 25, 2701.659912, 898.721985, 111.059998, 100.000000, 0, 0.000000, 0),
(38931, 26, 2707.449951, 875.580994, 111.987999, 100.000000, 0, 0.000000, 0);

-- creature 29903 waypoints
UPDATE `creature` SET `movementtype` = 2 WHERE `guid` = 29903;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(29903, 1, 1859.020020, 891.783997, 27.993500, 100.000000, 0, 0.000000, 0),
(29903, 2, 1850.819946, 882.888000, 28.130100, 100.000000, 0, 0.000000, 0),
(29903, 3, 1843.130005, 869.096985, 26.149599, 100.000000, 0, 0.000000, 0),
(29903, 4, 1812.760010, 837.164978, 25.244400, 100.000000, 0, 0.000000, 0),
(29903, 5, 1804.520020, 823.476013, 25.832800, 100.000000, 0, 0.000000, 0),
(29903, 6, 1806.239990, 779.338013, 39.526600, 100.000000, 0, 0.000000, 0),
(29903, 7, 1802.390015, 753.617004, 44.888199, 100.000000, 0, 0.000000, 0),
(29903, 8, 1802.390015, 753.617004, 44.888199, 1.658060, 51000, 0.000000, 0),
(29903, 9, 1802.979980, 765.710999, 43.792900, 100.000000, 0, 0.000000, 0),
(29903, 10, 1804.689941, 777.023987, 40.442600, 100.000000, 0, 0.000000, 0),
(29903, 11, 1801.699951, 810.741028, 29.139099, 100.000000, 0, 0.000000, 0),
(29903, 12, 1805.439941, 825.539978, 25.353600, 100.000000, 0, 0.000000, 0),
(29903, 13, 1814.920044, 838.299011, 25.261101, 100.000000, 0, 0.000000, 0),
(29903, 14, 1838.359985, 860.469971, 25.240101, 100.000000, 0, 0.000000, 0),
(29903, 15, 1848.380005, 877.486023, 27.343700, 100.000000, 0, 0.000000, 0),
(29903, 16, 1869.369995, 907.101013, 28.122801, 100.000000, 0, 0.000000, 0),
(29903, 17, 1875.760010, 925.971008, 28.150900, 100.000000, 0, 0.000000, 0),
(29903, 18, 1878.150024, 952.010986, 28.141300, 100.000000, 20000, 0.000000, 0),
(29903, 19, 1869.650024, 970.164001, 28.148399, 100.000000, 0, 0.000000, 0),
(29903, 20, 1850.760010, 983.796021, 29.467400, 100.000000, 0, 0.000000, 0),
(29903, 21, 1837.310059, 997.562988, 33.660301, 100.000000, 0, 0.000000, 0),
(29903, 22, 1823.459961, 1026.219971, 37.793400, 100.000000, 0, 0.000000, 0),
(29903, 23, 1832.790039, 1059.020020, 38.726799, 100.000000, 0, 0.000000, 0),
(29903, 24, 1833.439941, 1070.630005, 39.581600, 100.000000, 12000, 0.000000, 0),
(29903, 25, 1829.300049, 1105.920044, 39.213200, 100.000000, 0, 0.000000, 0),
(29903, 26, 1835.630005, 1122.930054, 39.658199, 100.000000, 13000, 0.000000, 0),
(29903, 27, 1818.119995, 1132.439941, 42.862900, 100.000000, 8000, 10, 0),
(29903, 28, 1845.739990, 1094.650024, 33.852501, 100.000000, 0, 0.000000, 0),
(29903, 29, 1868.910034, 1081.890015, 27.239000, 100.000000, 0, 0.000000, 0),
(29903, 30, 1872.729980, 1061.390015, 25.738701, 100.000000, 0, 0.000000, 0),
(29903, 31, 1879.030029, 1038.800049, 28.550100, 100.000000, 0, 0.000000, 0),
(29903, 32, 1884.689941, 1035.380005, 28.735001, 100.000000, 0, 0.000000, 0),
(29903, 33, 1911.969971, 1004.710022, 37.462002, 100.000000, 0, 0.000000, 0),
(29903, 34, 1921.869995, 970.908997, 33.409100, 100.000000, 0, 0.000000, 0),
(29903, 35, 1892.479980, 955.893982, 26.544701, 100.000000, 0, 0.000000, 0),
(29903, 36, 1888.310059, 945.713989, 26.054899, 100.000000, 0, 0.000000, 0),
(29903, 37, 1880.130005, 940.296997, 27.764200, 100.000000, 0, 0.000000, 0),
(29903, 38, 1874.640015, 919.437012, 28.116301, 100.000000, 0, 0.000000, 0);

-- creature 29903 waypoints
REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `display_id`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movementtype`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES
(45537, 1675, 0, 0, 0, 0, 0, 0, 2858.959961, 405.078003, 20.856701, 5.60251, 300, 300, 0, 100, 0, 2, 0, 0, 0, 10);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(45537, 1, 2858.959961, 405.078003, 20.856701, 1.099560, 51000, 0.000000, 0),
(45537, 2, 2892.489990, 394.360992, 25.856501, 100.000000, 0, 0.000000, 0),
(45537, 3, 2892.129883, 371.907013, 28.258600, 100.000000, 0, 0.000000, 0),
(45537, 4, 2883.510010, 336.566010, 28.329700, 100.000000, 0, 0.000000, 0),
(45537, 5, 2877.320068, 317.264008, 28.650600, 100.000000, 0, 0.000000, 0),
(45537, 6, 2853.000000, 311.709015, 27.347200, 100.000000, 0, 0.000000, 0),
(45537, 7, 2813.310059, 304.634003, 27.629101, 100.000000, 0, 0.000000, 0),
(45537, 8, 2798.840088, 286.359009, 30.286900, 100.000000, 0, 0.000000, 0),
(45537, 9, 2769.320068, 287.783997, 31.910700, 100.000000, 0, 0.000000, 0),
(45537, 10, 2737.830078, 295.342987, 31.914000, 100.000000, 0, 0.000000, 0),
(45537, 11, 2702.370117, 303.609985, 31.779600, 100.000000, 0, 0.000000, 0),
(45537, 12, 2680.800049, 309.656006, 30.724300, 100.000000, 26000, 0.000000, 0),
(45537, 13, 2711.949951, 301.315002, 32.073502, 100.000000, 0, 0.000000, 0),
(45537, 14, 2747.459961, 293.272003, 31.741100, 100.000000, 0, 0.000000, 0),
(45537, 15, 2794.979980, 284.209015, 30.723499, 100.000000, 0, 0.000000, 0),
(45537, 16, 2806.850098, 298.455994, 29.229000, 100.000000, 0, 0.000000, 0),
(45537, 17, 2843.310059, 312.075012, 26.766600, 100.000000, 0, 0.000000, 0),
(45537, 18, 2871.439941, 312.903015, 28.623100, 100.000000, 0, 0.000000, 0),
(45537, 19, 2885.459961, 348.157013, 27.549999, 100.000000, 0, 0.000000, 0),
(45537, 20, 2894.169922, 391.437988, 26.930901, 100.000000, 0, 0.000000, 0);

-- creature 31933 waypoints
UPDATE `creature` SET `movementtype` = 2 WHERE `guid` = 31933;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(31933, 1, 2937.719971, 603.598022, 92.083199, 100.000000, 0, 0.000000, 0),
(31933, 2, 2941.719971, 604.002991, 92.110802, 100.000000, 0, 0.000000, 0),
(31933, 3, 2968.020020, 621.635010, 93.472198, 100.000000, 0, 0.000000, 0),
(31933, 4, 3003.209961, 629.468018, 93.070999, 100.000000, 0, 0.000000, 0),
(31933, 5, 3016.590088, 637.369019, 90.710800, 100.000000, 0, 0.000000, 0),
(31933, 6, 3017.610107, 652.530029, 90.361298, 100.000000, 0, 0.000000, 0),
(31933, 7, 3008.699951, 665.781982, 90.572800, 100.000000, 0, 0.000000, 0),
(31933, 8, 2994.209961, 665.677979, 92.501404, 100.000000, 0, 0.000000, 0),
(31933, 9, 2986.830078, 656.853027, 94.189796, 100.000000, 0, 0.000000, 0),
(31933, 10, 2983.000000, 645.593994, 94.353798, 100.000000, 0, 0.000000, 0),
(31933, 11, 2998.080078, 635.065979, 94.006302, 100.000000, 0, 0.000000, 0),
(31933, 12, 2993.830078, 643.799988, 95.437698, 100.000000, 10000, 3, 0),
(31933, 13, 2984.429932, 635.213013, 94.261803, 100.000000, 0, 0.000000, 0),
(31933, 14, 2945.959961, 605.750000, 92.039101, 100.000000, 0, 0.000000, 0),
(31933, 15, 2942.719971, 603.604004, 91.966003, 100.000000, 0, 0.000000, 0),
(31933, 16, 2930.709961, 612.482971, 94.206200, 100.000000, 0, 0.000000, 0),
(31933, 17, 2921.699951, 619.905029, 96.927597, 100.000000, 0, 0.000000, 0),
(31933, 18, 2912.979980, 668.026001, 109.283997, 100.000000, 0, 0.000000, 0),
(31933, 19, 2912.750000, 696.289978, 109.707001, 100.000000, 0, 0.000000, 0),
(31933, 20, 2918.209961, 715.375000, 106.999001, 100.000000, 0, 0.000000, 0),
(31933, 21, 2925.909912, 729.327026, 104.718002, 100.000000, 0, 0.000000, 0),
(31933, 22, 2939.620117, 748.905029, 101.237999, 100.000000, 0, 0.000000, 0),
(31933, 23, 2946.979980, 762.963989, 100.144997, 100.000000, 0, 0.000000, 0),
(31933, 24, 2956.479980, 795.741028, 100.121002, 100.000000, 0, 0.000000, 0),
(31933, 25, 2961.350098, 810.158997, 100.675003, 100.000000, 0, 0.000000, 0),
(31933, 26, 2957.939941, 821.093018, 101.733002, 100.000000, 0, 0.000000, 0),
(31933, 27, 2950.879883, 830.708008, 103.138000, 100.000000, 0, 0.000000, 0),
(31933, 28, 2937.379883, 838.265991, 106.357002, 100.000000, 0, 0.000000, 0),
(31933, 29, 2925.770020, 840.036011, 108.566002, 100.000000, 0, 0.000000, 0),
(31933, 30, 2909.800049, 839.052002, 110.165001, 100.000000, 0, 0.000000, 0),
(31933, 31, 2893.739990, 837.458008, 110.958000, 100.000000, 0, 0.000000, 0),
(31933, 32, 2877.639893, 836.229004, 111.359001, 100.000000, 0, 0.000000, 0),
(31933, 33, 2861.469971, 836.242004, 111.739998, 100.000000, 0, 0.000000, 0),
(31933, 34, 2849.459961, 837.848022, 111.811996, 100.000000, 0, 0.000000, 0),
(31933, 35, 2825.459961, 842.643005, 111.950996, 100.000000, 18000, 0.000000, 0),
(31933, 36, 2833.399902, 841.085999, 111.963997, 100.000000, 0, 0.000000, 0),
(31933, 37, 2847.739990, 838.138977, 111.805000, 100.000000, 0, 0.000000, 0),
(31933, 38, 2863.770020, 836.158997, 111.665001, 100.000000, 0, 0.000000, 0),
(31933, 39, 2871.840088, 835.867981, 111.425003, 100.000000, 0, 0.000000, 0),
(31933, 40, 2885.669922, 836.317017, 111.091003, 100.000000, 0, 0.000000, 0),
(31933, 41, 2913.629883, 839.543030, 109.688004, 100.000000, 0, 0.000000, 0),
(31933, 42, 2933.639893, 838.765015, 107.333000, 100.000000, 0, 0.000000, 0),
(31933, 43, 2953.500000, 827.405029, 102.389000, 100.000000, 0, 0.000000, 0),
(31933, 44, 2961.760010, 813.958984, 101.019997, 100.000000, 0, 0.000000, 0),
(31933, 45, 2952.189941, 783.505981, 100.164001, 100.000000, 0, 0.000000, 0),
(31933, 46, 2943.459961, 754.460999, 100.375000, 100.000000, 0, 0.000000, 0),
(31933, 47, 2942.739990, 750.512024, 100.904999, 100.000000, 10000, 3, 0),
(31933, 48, 2920.169922, 720.804016, 106.163002, 100.000000, 0, 0.000000, 0),
(31933, 49, 2914.399902, 673.586975, 109.835999, 100.000000, 0, 0.000000, 0),
(31933, 50, 2915.699951, 630.408997, 100.427002, 100.000000, 0, 0.000000, 0),
(31933, 51, 2917.889893, 623.309021, 98.392403, 100.000000, 0, 0.000000, 0),
(31933, 52, 2926.459961, 615.729004, 95.337196, 100.000000, 0, 0.000000, 0);

-- creature 44909 waypoints
DELETE FROM `creature_movement` WHERE `id` = 44909;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(44909, 1, 2385.620117, 1323.609985, 33.981098, 100.000000, 0, 0.000000, 0),
(44909, 2, 2386.399902, 1343.880005, 34.517502, 100.000000, 0, 0.000000, 0),
(44909, 3, 2385.860107, 1372.119995, 34.476398, 100.000000, 0, 0.000000, 0),
(44909, 4, 2385.600098, 1396.439941, 34.550900, 100.000000, 0, 0.000000, 0),
(44909, 5, 2384.550049, 1412.619995, 34.572601, 100.000000, 0, 0.000000, 0),
(44909, 6, 2383.800049, 1424.770020, 34.572601, 100.000000, 0, 0.000000, 0),
(44909, 7, 2382.770020, 1449.060059, 34.494701, 100.000000, 0, 0.000000, 0),
(44909, 8, 2383.409912, 1469.260010, 34.546799, 100.000000, 0, 0.000000, 0),
(44909, 9, 2381.510010, 1482.069946, 34.375500, 100.000000, 0, 0.000000, 0),
(44909, 10, 2376.340088, 1493.489990, 34.746399, 5.340710, 115000, 0.000000, 0),
(44909, 11, 2378.610107, 1481.880005, 34.469501, 100.000000, 0, 0.000000, 0),
(44909, 12, 2380.889893, 1457.739990, 34.481899, 100.000000, 0, 0.000000, 0),
(44909, 13, 2381.820068, 1433.619995, 34.555500, 100.000000, 0, 0.000000, 0),
(44909, 14, 2383.300049, 1405.290039, 34.488300, 100.000000, 0, 0.000000, 0),
(44909, 15, 2384.699951, 1385.140015, 34.468899, 100.000000, 0, 0.000000, 0),
(44909, 16, 2385.739990, 1340.609985, 34.426998, 100.000000, 0, 0.000000, 0),
(44909, 17, 2383.300049, 1316.579956, 33.435902, 100.000000, 0, 0.000000, 0),
(44909, 18, 2373.360107, 1282.000000, 31.287901, 100.000000, 21000, 0.000000, 0),
(44909, 19, 2384.350098, 1319.459961, 33.701801, 100.000000, 0, 0.000000, 0);

-- deathguard mort waypoints
DELETE FROM `creature_movement` WHERE `id` = 34113;
REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(1744, 1, 2239.479980, 257.286987, 34.130798, 100.000000, 0, 0.000000, 0),
(1744, 2, 2239.479980, 257.286987, 34.130798, 2.583090, 323000, 0.000000, 0),
(1744, 3, 2235.439941, 256.790009, 34.036400, 100.000000, 0, 0.000000, 0),
(1744, 4, 2231.610107, 247.658005, 33.084202, 100.000000, 0, 0.000000, 0),
(1744, 5, 2232.169922, 231.518997, 32.050201, 100.000000, 0, 0.000000, 0),
(1744, 6, 2238.639893, 212.820999, 29.352200, 100.000000, 0, 0.000000, 0),
(1744, 7, 2248.949951, 207.559998, 28.535900, 100.000000, 0, 0.000000, 0),
(1744, 8, 2264.989990, 207.020996, 28.242399, 100.000000, 0, 0.000000, 0),
(1744, 9, 2288.070068, 213.895996, 28.241199, 100.000000, 0, 0.000000, 0),
(1744, 10, 2325.110107, 229.264999, 28.156000, 100.000000, 0, 0.000000, 0),
(1744, 11, 2360.969971, 245.710999, 28.350500, 100.000000, 0, 0.000000, 0),
(1744, 12, 2396.379883, 253.304001, 28.239500, 100.000000, 0, 0.000000, 0),
(1744, 13, 2412.060059, 262.666992, 28.211201, 100.000000, 0, 0.000000, 0),
(1744, 14, 2428.969971, 273.851013, 28.190300, 100.000000, 0, 0.000000, 0),
(1744, 15, 2456.639893, 297.529999, 28.195200, 100.000000, 0, 0.000000, 0),
(1744, 16, 2452.030029, 332.915009, 29.906401, 100.000000, 11000, 0.000000, 0),
(1744, 17, 2459.969971, 323.425995, 28.995399, 100.000000, 0, 0.000000, 0),
(1744, 18, 2485.550049, 314.231995, 28.256901, 100.000000, 0, 0.000000, 0),
(1744, 19, 2502.719971, 323.355011, 28.239201, 100.000000, 0, 0.000000, 0),
(1744, 20, 2538.540039, 341.936005, 28.201700, 100.000000, 0, 0.000000, 0),
(1744, 21, 2569.250000, 351.845001, 28.218201, 100.000000, 0, 0.000000, 0),
(1744, 22, 2593.229980, 351.483002, 28.221600, 100.000000, 0, 0.000000, 0),
(1744, 23, 2627.100098, 333.351013, 28.137899, 100.000000, 20000, 0.000000, 0),
(1744, 24, 2598.520020, 348.735992, 28.209900, 100.000000, 0, 0.000000, 0),
(1744, 25, 2578.949951, 352.095001, 28.221600, 100.000000, 0, 0.000000, 0),
(1744, 26, 2540.820068, 339.714996, 28.200800, 100.000000, 0, 0.000000, 0),
(1744, 27, 2501.070068, 319.557007, 28.237101, 100.000000, 0, 0.000000, 0),
(1744, 28, 2469.070068, 302.390015, 28.239700, 100.000000, 0, 0.000000, 0),
(1744, 29, 2436.239990, 279.204010, 28.187300, 100.000000, 0, 0.000000, 0),
(1744, 30, 2402.729980, 256.356995, 28.227200, 100.000000, 0, 0.000000, 0),
(1744, 31, 2371.830078, 248.289993, 28.346901, 100.000000, 0, 0.000000, 0),
(1744, 32, 2338.010010, 235.095993, 28.176901, 100.000000, 0, 0.000000, 0),
(1744, 33, 2305.030029, 219.841995, 28.143499, 100.000000, 0, 0.000000, 0),
(1744, 34, 2271.110107, 206.669006, 28.229799, 100.000000, 0, 0.000000, 0),
(1744, 35, 2235.939941, 211.916000, 29.532900, 100.000000, 0, 0.000000, 0),
(1744, 36, 2230.580078, 229.307007, 32.059399, 100.000000, 0, 0.000000, 0),
(1744, 37, 2230.209961, 249.472000, 33.307899, 100.000000, 0, 0.000000, 0);

-- creature 41869 waypoints
UPDATE `creature` SET `movementtype` = 2 WHERE `guid` = 41869;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(41869, 1, 3022.620117, -151.882996, 5.190570, 100.000000, 1207000, 0.000000, 0),
(41869, 2, 3032.129883, -114.461998, 7.233430, 100.000000, 0, 0.000000, 0),
(41869, 3, 3032.229980, -86.128304, 7.417500, 100.000000, 0, 0.000000, 0),
(41869, 4, 3030.250000, -66.793198, 7.378720, 100.000000, 0, 0.000000, 0),
(41869, 5, 3043.179932, -45.053200, 5.909660, 100.000000, 0, 0.000000, 0),
(41869, 6, 3070.060059, -37.313900, 0.488817, 100.000000, 21000, 0.000000, 0),
(41869, 7, 3071.350098, -38.122398, 0.416552, 4.118980, 66000, 0.000000, 0),
(41869, 8, 3071.770020, -55.999199, -0.897062, 100.000000, 0, 0.000000, 0),
(41869, 9, 3071.469971, -75.305901, -0.701643, 100.000000, 0, 0.000000, 0),
(41869, 10, 3069.080078, -94.301498, 1.188940, 100.000000, 0, 0.000000, 0),
(41869, 11, 3068.040039, -103.790001, 1.739060, 100.000000, 0, 0.000000, 0),
(41869, 12, 3069.370117, -123.047997, 1.661330, 100.000000, 0, 0.000000, 0),
(41869, 13, 3069.870117, -132.423004, -0.201796, 100.000000, 0, 0.000000, 0),
(41869, 14, 3068.530029, -139.511002, -0.767559, 100.000000, 0, 0.000000, 0),
(41869, 15, 3061.280029, -147.192993, -0.215318, 100.000000, 59000, 0.000000, 0),
(41869, 16, 3057.800049, -149.052994, 0.497668, 100.000000, 0, 0.000000, 0),
(41869, 17, 3054.600098, -151.328995, 1.370450, 100.000000, 0, 0.000000, 0),
(41869, 18, 3056.560059, -169.048996, 2.408680, 100.000000, 0, 0.000000, 0),
(41869, 19, 3060.739990, -192.667007, 0.807820, 100.000000, 0, 0.000000, 0),
(41869, 20, 3061.189941, -204.600006, 2.304070, 100.000000, 0, 0.000000, 0),
(41869, 21, 3061.389893, -216.479004, 4.363500, 100.000000, 0, 0.000000, 0),
(41869, 22, 3061.610107, -228.526993, 4.106380, 100.000000, 0, 0.000000, 0),
(41869, 23, 3057.810059, -236.485992, 4.463850, 100.000000, 25000, 0.000000, 0),
(41869, 24, 3033.669922, -209.613007, 7.413030, 100.000000, 0, 0.000000, 0),
(41869, 25, 3021.620117, -183.399994, 7.470320, 100.000000, 0, 0.000000, 0),
(41869, 26, 3019.060059, -165.210007, 7.259010, 100.000000, 0, 0.000000, 0);

-- hamlin atkins waypoints
DELETE FROM `creature_movement` WHERE `id` = 38292;
REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(3547, 1, 2310.179932, 397.315002, 33.934700, 100.000000, 0, 0.000000, 0),
(3547, 2, 2322.260010, 397.614990, 33.684700, 100.000000, 0, 0.000000, 0),
(3547, 3, 2330.379883, 397.348999, 33.696602, 100.000000, 0, 0.000000, 0),
(3547, 4, 2337.760010, 395.368988, 33.719200, 100.000000, 0, 0.000000, 0),
(3547, 5, 2343.010010, 389.468994, 33.974899, 100.000000, 0, 0.000000, 0),
(3547, 6, 2349.699951, 379.941986, 34.961201, 100.000000, 0, 0.000000, 0),
(3547, 7, 2354.959961, 373.951996, 36.102600, 100.000000, 0, 0.000000, 0),
(3547, 8, 2358.219971, 367.132996, 37.249401, 100.000000, 0, 0.000000, 0),
(3547, 9, 2359.139893, 359.221985, 37.862701, 100.000000, 0, 0.000000, 0),
(3547, 10, 2360.469971, 351.253998, 37.757198, 100.000000, 0, 0.000000, 0),
(3547, 11, 2361.439941, 347.309998, 37.806702, 100.000000, 0, 0.000000, 0),
(3547, 12, 2363.570068, 343.984985, 38.007000, 100.000000, 0, 0.000000, 0),
(3547, 13, 2363.320068, 351.704987, 38.107498, 100.000000, 0, 0.000000, 0),
(3547, 14, 2359.320068, 363.234009, 37.702900, 100.000000, 0, 0.000000, 0),
(3547, 15, 2356.250000, 370.523010, 36.701801, 100.000000, 0, 0.000000, 0),
(3547, 16, 2348.959961, 379.911011, 34.819000, 100.000000, 0, 0.000000, 0),
(3547, 17, 2344.830078, 386.734985, 34.180000, 100.000000, 0, 0.000000, 0),
(3547, 18, 2339.929932, 392.945007, 33.729900, 100.000000, 0, 0.000000, 0),
(3547, 19, 2337.060059, 395.768005, 33.717701, 100.000000, 0, 0.000000, 0),
(3547, 20, 2325.260010, 397.579010, 33.684700, 100.000000, 0, 0.000000, 0),
(3547, 21, 2313.129883, 398.230988, 33.934700, 100.000000, 0, 0.000000, 0),
(3547, 22, 2301.169922, 397.050995, 34.036598, 100.000000, 0, 0.000000, 0),
(3547, 23, 2293.159912, 396.125000, 34.075100, 100.000000, 0, 0.000000, 0),
(3547, 24, 2285.449951, 397.514008, 34.075100, 100.000000, 0, 0.000000, 0),
(3547, 25, 2282.469971, 399.885986, 34.061699, 100.000000, 0, 0.000000, 0),
(3547, 26, 2277.419922, 419.429993, 33.992199, 100.000000, 0, 0.000000, 0),
(3547, 27, 2264.040039, 468.424988, 33.929699, 100.000000, 0, 0.000000, 0),
(3547, 28, 2266.280029, 459.441010, 34.156200, 100.000000, 0, 0.000000, 0),
(3547, 29, 2272.290039, 435.894989, 34.030499, 100.000000, 0, 0.000000, 0),
(3547, 30, 2275.469971, 420.024994, 33.992199, 100.000000, 0, 0.000000, 0),
(3547, 31, 2278.699951, 404.170013, 33.992199, 100.000000, 0, 0.000000, 0),
(3547, 32, 2280.770020, 396.373993, 34.200100, 100.000000, 0, 0.000000, 0),
(3547, 33, 2282.219971, 388.493011, 34.200100, 100.000000, 0, 0.000000, 0),
(3547, 34, 2282.949951, 380.399994, 34.200100, 100.000000, 0, 0.000000, 0),
(3547, 35, 2283.790039, 368.298004, 34.208000, 100.000000, 0, 0.000000, 0),
(3547, 36, 2284.100098, 356.134003, 34.209999, 100.000000, 0, 0.000000, 0),
(3547, 37, 2282.500000, 344.127991, 34.209999, 100.000000, 0, 0.000000, 0),
(3547, 38, 2276.790039, 329.092987, 34.232101, 100.000000, 0, 0.000000, 0),
(3547, 39, 2268.669922, 310.562012, 34.238701, 100.000000, 0, 0.000000, 0),
(3547, 40, 2260.040039, 292.212006, 34.238701, 100.000000, 0, 0.000000, 0),
(3547, 41, 2256.219971, 285.082001, 34.238701, 100.000000, 0, 0.000000, 0),
(3547, 42, 2248.000000, 276.239014, 34.238701, 100.000000, 0, 0.000000, 0),
(3547, 43, 2239.060059, 267.987000, 34.238701, 100.000000, 0, 0.000000, 0),
(3547, 44, 2229.500000, 260.503998, 34.084801, 100.000000, 0, 0.000000, 0),
(3547, 45, 2212.840088, 248.977005, 34.106899, 100.000000, 0, 0.000000, 0),
(3547, 46, 2198.580078, 241.223999, 34.557800, 100.000000, 0, 0.000000, 0),
(3547, 47, 2206.439941, 246.768005, 34.170601, 100.000000, 0, 0.000000, 0),
(3547, 48, 2223.250000, 258.023010, 34.130798, 100.000000, 0, 0.000000, 0),
(3547, 49, 2229.780029, 262.838989, 34.130798, 100.000000, 0, 0.000000, 0),
(3547, 50, 2236.030029, 267.997009, 34.185799, 100.000000, 0, 0.000000, 0),
(3547, 51, 2245.060059, 276.165009, 34.238701, 100.000000, 0, 0.000000, 0),
(3547, 52, 2248.040039, 278.906006, 34.238701, 100.000000, 0, 0.000000, 0),
(3547, 53, 2253.270020, 285.053009, 34.238701, 100.000000, 0, 0.000000, 0),
(3547, 54, 2257.370117, 292.007996, 34.238701, 100.000000, 0, 0.000000, 0),
(3547, 55, 2259.389893, 295.522003, 34.238701, 100.000000, 0, 0.000000, 0),
(3547, 56, 2268.080078, 313.743011, 34.238701, 100.000000, 0, 0.000000, 0),
(3547, 57, 2275.520020, 328.130005, 34.238701, 100.000000, 0, 0.000000, 0),
(3547, 58, 2281.810059, 343.093994, 34.217701, 100.000000, 0, 0.000000, 0),
(3547, 59, 2283.510010, 354.957001, 34.209999, 100.000000, 0, 0.000000, 0),
(3547, 60, 2283.590088, 367.075989, 34.204102, 100.000000, 0, 0.000000, 0),
(3547, 61, 2283.530029, 379.205994, 34.200100, 100.000000, 0, 0.000000, 0),
(3547, 62, 2282.750000, 387.251007, 34.200100, 100.000000, 0, 0.000000, 0),
(3547, 63, 2283.409912, 390.967987, 34.146400, 100.000000, 0, 0.000000, 0),
(3547, 64, 2285.919922, 393.951996, 34.054401, 100.000000, 0, 0.000000, 0),
(3547, 65, 2293.629883, 396.229004, 34.075100, 100.000000, 0, 0.000000, 0),
(3547, 66, 2305.729980, 397.131012, 33.989498, 100.000000, 0, 0.000000, 0);

-- creature 44963 waypoints
UPDATE `creature` SET `position_x` = 2003.329956, `position_y` = 1607.270020, `position_z` = 76.560097, `movementtype` = 2 WHERE `guid` = 44963;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(44963, 1, 2003.329956, 1607.270020, 76.560097, 100.000000, 0, 0.000000, 0),
(44963, 2, 1996.469971, 1609.349976, 80.015198, 100.000000, 0, 0.000000, 0),
(44963, 3, 1989.859985, 1602.010010, 82.430000, 100.000000, 0, 0.000000, 0),
(44963, 4, 1992.489990, 1599.010010, 81.983101, 100.000000, 0, 0.000000, 0),
(44963, 5, 1989.449951, 1584.449951, 81.856598, 100.000000, 0, 0.000000, 0),
(44963, 6, 1988.719971, 1572.890015, 79.616699, 100.000000, 0, 0.000000, 0),
(44963, 7, 2006.849976, 1532.819946, 76.653099, 100.000000, 0, 0.000000, 0),
(44963, 8, 2011.530029, 1505.300049, 73.878098, 100.000000, 0, 0.000000, 0),
(44963, 9, 2006.979980, 1465.969971, 66.879501, 100.000000, 0, 0.000000, 0),
(44963, 10, 2007.050049, 1438.359985, 61.213402, 100.000000, 0, 0.000000, 0),
(44963, 11, 2009.410034, 1421.209961, 59.424099, 100.000000, 0, 0.000000, 0),
(44963, 12, 2008.020020, 1449.189941, 63.025501, 100.000000, 0, 0.000000, 0),
(44963, 13, 2021.489990, 1467.469971, 68.538002, 100.000000, 0, 0.000000, 0),
(44963, 14, 2031.540039, 1496.640015, 76.289299, 100.000000, 0, 0.000000, 0),
(44963, 15, 2031.510010, 1524.699951, 78.863197, 100.000000, 0, 0.000000, 0),
(44963, 16, 2039.160034, 1551.670044, 78.599701, 100.000000, 0, 0.000000, 0),
(44963, 17, 2026.540039, 1603.579956, 71.965599, 100.000000, 0, 0.000000, 0);

-- tormented spirit waypoints
DELETE FROM `creature_movement` WHERE `id`  = 49222;
REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(1533, 1, 2894.919922, 1012.919983, 108.181000, 100.000000, 0, 0.000000, 0),
(1533, 2, 2897.300049, 977.080994, 113.988998, 100.000000, 0, 0.000000, 0),
(1533, 3, 2899.770020, 952.999023, 115.272003, 100.000000, 0, 0.000000, 0),
(1533, 4, 2906.389893, 934.062012, 114.953003, 100.000000, 0, 0.000000, 0),
(1533, 5, 2907.189941, 926.757996, 114.842003, 100.000000, 0, 0.000000, 0),
(1533, 6, 2878.129883, 899.497986, 113.908997, 100.000000, 0, 0.000000, 0),
(1533, 7, 2853.260010, 878.781006, 112.285004, 100.000000, 0, 0.000000, 0),
(1533, 8, 2843.070068, 872.395020, 112.125000, 100.000000, 0, 0.000000, 0),
(1533, 9, 2807.689941, 865.106018, 111.960999, 100.000000, 0, 0.000000, 0),
(1533, 10, 2784.520020, 871.533020, 111.552002, 100.000000, 0, 0.000000, 0),
(1533, 11, 2765.409912, 886.143005, 111.542000, 100.000000, 0, 0.000000, 0),
(1533, 12, 2745.780029, 911.721985, 110.987000, 100.000000, 0, 0.000000, 0),
(1533, 13, 2739.290039, 930.655029, 110.038002, 100.000000, 0, 0.000000, 0),
(1533, 14, 2733.750000, 950.190979, 109.365997, 100.000000, 0, 0.000000, 0),
(1533, 15, 2734.679932, 966.000000, 109.376999, 100.000000, 0, 0.000000, 0),
(1533, 16, 2741.919922, 975.155029, 109.384003, 100.000000, 0, 0.000000, 0),
(1533, 17, 2755.030029, 984.403992, 109.384003, 100.000000, 0, 0.000000, 0),
(1533, 18, 2765.679932, 996.237976, 109.873001, 100.000000, 0, 0.000000, 0),
(1533, 19, 2770.840088, 1011.450012, 108.964996, 100.000000, 0, 0.000000, 0),
(1533, 20, 2773.949951, 1027.290039, 108.572998, 100.000000, 0, 0.000000, 0),
(1533, 21, 2784.050049, 1038.969971, 109.811996, 100.000000, 0, 0.000000, 0),
(1533, 22, 2797.760010, 1047.339966, 110.888000, 100.000000, 0, 0.000000, 0),
(1533, 23, 2821.590088, 1048.729980, 110.915001, 100.000000, 0, 0.000000, 0),
(1533, 24, 2841.679932, 1049.630005, 112.070999, 100.000000, 0, 0.000000, 0),
(1533, 25, 2857.620117, 1049.020020, 114.487000, 100.000000, 0, 0.000000, 0),
(1533, 26, 2878.600098, 1046.550049, 112.899002, 100.000000, 15000, 10, 0);

-- creature 44643 waypoints
UPDATE `creature` SET `movementtype` = 2 WHERE `guid` = 44643;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(44643, 1, 3023.610107, 382.687012, 1.393030, 100.000000, 0, 0.000000, 0),
(44643, 2, 3021.739990, 374.898987, 0.437257, 100.000000, 0, 0.000000, 0),
(44643, 3, 3018.409912, 373.253998, 1.340050, 100.000000, 0, 0.000000, 0),
(44643, 4, 3018.510010, 375.821014, 1.668550, 100.000000, 9000, 0.000000, 0),
(44643, 5, 3012.530029, 370.563995, 3.070590, 100.000000, 0, 0.000000, 0),
(44643, 6, 3005.830078, 367.175995, 4.754760, 100.000000, 0, 0.000000, 0),
(44643, 7, 2997.750000, 352.483002, 6.034930, 100.000000, 0, 0.000000, 0),
(44643, 8, 2994.459961, 316.437988, 3.674950, 100.000000, 0, 0.000000, 0),
(44643, 9, 2992.149902, 288.580994, 0.657172, 100.000000, 0, 0.000000, 0),
(44643, 10, 2985.989990, 269.549988, 1.671210, 100.000000, 0, 0.000000, 0),
(44643, 11, 2984.530029, 232.138000, 1.124470, 100.000000, 0, 0.000000, 0),
(44643, 12, 2995.560059, 190.229996, 0.484944, 100.000000, 0, 0.000000, 0),
(44643, 13, 2979.239990, 202.242996, -0.340624, 100.000000, 0, 0.000000, 0),
(44643, 14, 2969.850098, 202.699005, 0.304342, 100.000000, 0, 0.000000, 0),
(44643, 15, 2963.429932, 204.679993, 1.345230, 100.000000, 0, 0.000000, 0),
(44643, 16, 2973.419922, 232.074997, 3.128920, 100.000000, 0, 0.000000, 0),
(44643, 17, 2975.770020, 251.811005, 3.842110, 100.000000, 0, 0.000000, 0),
(44643, 18, 2974.830078, 274.273010, 4.547480, 100.000000, 0, 0.000000, 0),
(44643, 19, 2980.979980, 312.075012, 4.856660, 100.000000, 0, 0.000000, 0),
(44643, 20, 2987.760010, 340.303986, 7.508580, 100.000000, 0, 0.000000, 0),
(44643, 21, 2996.989990, 367.841003, 6.929280, 100.000000, 0, 0.000000, 0),
(44643, 22, 3007.280029, 395.210999, 7.280530, 100.000000, 30000, 0.000000, 0);

-- creature 44643 waypoints
UPDATE `creature` SET `movementtype` = 2 WHERE `guid` = 44750;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(44750, 1, 2188.929932, -427.028992, 76.109398, 100.000000, 0, 0.000000, 0),
(44750, 2, 2179.550049, -439.601990, 75.794098, 100.000000, 0, 0.000000, 0),
(44750, 3, 2173.409912, -471.147003, 75.735397, 100.000000, 0, 0.000000, 0),
(44750, 4, 2175.459961, -495.062012, 77.716499, 100.000000, 0, 0.000000, 0),
(44750, 5, 2183.179932, -517.814026, 79.186302, 100.000000, 0, 0.000000, 0),
(44750, 6, 2185.590088, -537.713989, 78.931702, 100.000000, 0, 0.000000, 0),
(44750, 7, 2178.280029, -564.463989, 78.864700, 100.000000, 0, 0.000000, 0),
(44750, 8, 2166.959961, -575.286987, 79.583702, 100.000000, 0, 0.000000, 0),
(44750, 9, 2159.449951, -577.051025, 79.084702, 100.000000, 0, 0.000000, 0),
(44750, 10, 2143.219971, -570.684021, 78.797203, 100.000000, 0, 0.000000, 0),
(44750, 11, 2139.149902, -567.073975, 78.614098, 100.000000, 0, 0.000000, 0),
(44750, 12, 2139.149902, -567.073975, 78.614098, 5.445430, 76000, 0.000000, 0),
(44750, 13, 2141.659912, -570.245972, 78.882004, 100.000000, 0, 0.000000, 0),
(44750, 14, 2155.560059, -574.856018, 78.985603, 100.000000, 0, 0.000000, 0),
(44750, 15, 2178.260010, -559.820984, 78.943802, 100.000000, 0, 0.000000, 0),
(44750, 16, 2182.659912, -553.598022, 78.952103, 100.000000, 0, 0.000000, 0),
(44750, 17, 2183.040039, -549.697021, 78.971497, 100.000000, 0, 0.000000, 0),
(44750, 18, 2183.330078, -530.221985, 79.015404, 100.000000, 0, 0.000000, 0),
(44750, 19, 2184.530029, -506.563995, 79.681999, 100.000000, 0, 0.000000, 0),
(44750, 20, 2178.080078, -493.273010, 77.385002, 100.000000, 0, 0.000000, 0),
(44750, 21, 2171.689941, -470.503998, 75.400703, 100.000000, 0, 0.000000, 0),
(44750, 22, 2163.850098, -452.229004, 73.388702, 100.000000, 0, 0.000000, 0),
(44750, 23, 2158.459961, -433.528992, 71.541100, 100.000000, 0, 0.000000, 0),
(44750, 24, 2149.580078, -416.842010, 74.641502, 100.000000, 0, 0.000000, 0),
(44750, 25, 2128.709961, -407.403015, 73.132103, 100.000000, 0, 0.000000, 0),
(44750, 26, 2113.389893, -405.727997, 71.637604, 100.000000, 29000, 0.000000, 0),
(44750, 27, 2139.679932, -421.303986, 74.803001, 100.000000, 0, 0.000000, 0),
(44750, 28, 2146.669922, -406.585999, 75.257797, 100.000000, 0, 0.000000, 0),
(44750, 29, 2152.100098, -401.332001, 75.321198, 100.000000, 0, 0.000000, 0),
(44750, 30, 2159.929932, -392.526001, 75.776299, 100.000000, 0, 0.000000, 0),
(44750, 31, 2184.530029, -381.842010, 75.439903, 100.000000, 0, 0.000000, 0),
(44750, 32, 2205.360107, -392.192993, 74.384598, 100.000000, 0, 0.000000, 0),
(44750, 33, 2209.510010, -402.170990, 75.119797, 100.000000, 0, 0.000000, 0),
(44750, 34, 2204.870117, -417.312988, 75.509804, 100.000000, 0, 0.000000, 0);

-- creature 53239 waypoints
REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `display_id`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movementtype`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES
(53239, 1675, 0, 0, 0, 0, 0, 0, 2883.449951, 385.436005, 24.978399, 5.60251, 300, 300, 0, 100, 0, 2, 0, 0, 0, 10);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(53239, 1, 2883.449951, 385.436005, 24.978399, 100.000000, 36000, 10, 0),
(53239, 2, 2849.020020, 371.700012, 23.793501, 100.000000, 0, 0.000000, 0),
(53239, 3, 2813.689941, 352.257996, 23.857901, 100.000000, 0, 0.000000, 0),
(53239, 4, 2772.219971, 337.131012, 27.830500, 100.000000, 0, 0.000000, 0),
(53239, 5, 2729.949951, 328.263000, 29.731501, 100.000000, 0, 0.000000, 0),
(53239, 6, 2717.830078, 317.671997, 30.799700, 100.000000, 0, 0.000000, 0),
(53239, 7, 2715.370117, 318.354004, 30.841600, 100.000000, 15000, 10, 0),
(53239, 8, 2724.939941, 339.316010, 28.888500, 100.000000, 0, 0.000000, 0),
(53239, 9, 2745.350098, 363.987000, 26.208300, 100.000000, 0, 0.000000, 0),
(53239, 10, 2776.389893, 367.769012, 24.872900, 100.000000, 0, 0.000000, 0),
(53239, 11, 2799.360107, 360.644989, 24.167500, 100.000000, 0, 0.000000, 0),
(53239, 12, 2833.070068, 346.997009, 24.126699, 100.000000, 0, 0.000000, 0),
(53239, 13, 2853.239990, 334.916992, 25.255100, 100.000000, 11000, 0.000000, 0),
(53239, 14, 2857.040039, 336.226013, 25.382500, 100.000000, 0, 0.000000, 0),
(53239, 15, 2865.600098, 356.808990, 24.845600, 100.000000, 0, 0.000000, 0);

-- creature 42152 waypoints
UPDATE `creature` SET `movementtype` = 2 WHERE `guid` = 42152;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(42152, 1, 2320.310059, 1335.489990, 33.458302, 100.000000, 0, 0.000000, 0),
(42152, 2, 2335.739990, 1338.939941, 33.406502, 100.000000, 0, 0.000000, 0),
(42152, 3, 2363.919922, 1338.849976, 33.392502, 100.000000, 0, 0.000000, 0),
(42152, 4, 2366.889893, 1376.079956, 33.316601, 100.000000, 0, 0.000000, 0),
(42152, 5, 2367.439941, 1420.390015, 33.321602, 100.000000, 0, 0.000000, 0),
(42152, 6, 2367.389893, 1448.619995, 33.343800, 100.000000, 0, 0.000000, 0),
(42152, 7, 2367.979980, 1472.880005, 33.410400, 100.000000, 0, 0.000000, 0),
(42152, 8, 2366.949951, 1486.589966, 33.688400, 100.000000, 7000, 0.000000, 0),
(42152, 9, 2334.739990, 1491.939941, 33.813900, 100.000000, 0, 0.000000, 0),
(42152, 10, 2303.850098, 1490.760010, 33.589199, 100.000000, 0, 0.000000, 0),
(42152, 11, 2287.830078, 1492.140015, 32.867699, 100.000000, 0, 0.000000, 0),
(42152, 12, 2279.760010, 1491.920044, 32.937698, 100.000000, 0, 0.000000, 0),
(42152, 13, 2267.879883, 1489.609985, 33.229900, 100.000000, 0, 0.000000, 0),
(42152, 14, 2258.590088, 1483.020020, 33.530399, 100.000000, 0, 0.000000, 0),
(42152, 15, 2255.500000, 1459.900024, 33.425098, 100.000000, 0, 0.000000, 0),
(42152, 16, 2256.110107, 1427.489990, 33.458302, 100.000000, 0, 0.000000, 0),
(42152, 17, 2257.090088, 1403.250000, 33.458302, 100.000000, 0, 0.000000, 0),
(42152, 18, 2258.689941, 1378.180054, 33.668999, 100.000000, 0, 0.000000, 0),
(42152, 19, 2257.840088, 1358.160034, 33.827400, 100.000000, 0, 0.000000, 0),
(42152, 20, 2257.840088, 1350.699951, 33.644798, 100.000000, 0, 0.000000, 0),
(42152, 21, 2265.090088, 1341.569946, 33.376701, 100.000000, 0, 0.000000, 0),
(42152, 22, 2276.590088, 1339.520020, 33.458099, 100.000000, 0, 0.000000, 0),
(42152, 23, 2300.860107, 1338.349976, 33.467499, 100.000000, 0, 0.000000, 0);

-- creature 44682 waypoints
UPDATE `creature` SET `movementtype` = 2 WHERE `guid` = 44682;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(44682, 1, 2778.659912, 436.463989, 19.110300, 100.000000, 0, 0.000000, 0),
(44682, 2, 2751.000000, 442.029999, 20.681000, 100.000000, 0, 0.000000, 0),
(44682, 3, 2711.310059, 438.170990, 19.375200, 100.000000, 0, 0.000000, 0),
(44682, 4, 2695.899902, 433.372009, 19.132500, 100.000000, 0, 0.000000, 0),
(44682, 5, 2664.229980, 443.311005, 19.343599, 100.000000, 0, 0.000000, 0),
(44682, 6, 2632.760010, 475.723999, 17.968201, 100.000000, 5000, 0.000000, 0),
(44682, 7, 2653.840088, 461.423004, 16.923901, 100.000000, 0, 0.000000, 0),
(44682, 8, 2695.260010, 436.519989, 18.956301, 100.000000, 0, 0.000000, 0),
(44682, 9, 2734.620117, 438.506989, 22.223801, 100.000000, 0, 0.000000, 0),
(44682, 10, 2765.340088, 447.671997, 20.966200, 100.000000, 0, 0.000000, 0),
(44682, 11, 2807.850098, 438.772003, 18.523399, 100.000000, 0, 0.000000, 0),
(44682, 12, 2855.610107, 427.809998, 20.055201, 1.466080, 58000, 0.000000, 0),
(44682, 13, 2824.020020, 434.238007, 18.564800, 100.000000, 0, 0.000000, 0);

-- creature 44918 waypoints
UPDATE `creature` SET `movementtype` = 2 WHERE `guid` = 44918;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(44918, 1, 2502.600098, 1586.709961, 34.294201, 100.000000, 0, 0.000000, 0),
(44918, 2, 2499.409912, 1584.270020, 34.870899, 100.000000, 0, 0.000000, 0),
(44918, 3, 2494.739990, 1553.709961, 34.626099, 100.000000, 0, 0.000000, 0),
(44918, 4, 2487.399902, 1518.040039, 33.461300, 100.000000, 0, 0.000000, 0),
(44918, 5, 2491.300049, 1505.020020, 36.485100, 100.000000, 15000, 0.000000, 0),
(44918, 6, 2484.010010, 1507.949951, 34.579700, 100.000000, 0, 0.000000, 0),
(44918, 7, 2455.139893, 1497.589966, 33.752201, 100.000000, 0, 0.000000, 0),
(44918, 8, 2403.669922, 1488.760010, 34.278900, 100.000000, 0, 0.000000, 0),
(44918, 9, 2392.639893, 1464.130005, 34.167801, 100.000000, 0, 0.000000, 0),
(44918, 10, 2390.419922, 1471.930054, 34.438400, 100.000000, 0, 0.000000, 0),
(44918, 11, 2396.709961, 1502.939941, 33.056702, 100.000000, 0, 0.000000, 0),
(44918, 12, 2402.500000, 1551.130005, 31.529400, 100.000000, 0, 0.000000, 0),
(44918, 13, 2400.639893, 1571.109985, 31.512199, 100.000000, 0, 0.000000, 0),
(44918, 14, 2405.699951, 1592.939941, 33.602200, 100.000000, 0, 0.000000, 0),
(44918, 15, 2414.729980, 1606.380005, 33.405602, 100.000000, 0, 0.000000, 0),
(44918, 16, 2425.729980, 1627.859985, 35.960400, 100.000000, 0, 0.000000, 0),
(44918, 17, 2446.010010, 1643.890015, 33.728699, 100.000000, 13000, 0.000000, 0),
(44918, 18, 2451.159912, 1637.619995, 33.512001, 100.000000, 0, 0.000000, 0),
(44918, 19, 2472.879883, 1627.810059, 33.445801, 100.000000, 0, 0.000000, 0);

-- deathguard bartholomew waypoints
DELETE FROM `creature_movement` WHERE `id`  = 34111;
REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(1742, 1, 2289.300049, 391.420990, 34.200100, 2.722710, 329000, 0.000000, 0),
(1742, 2, 2308.040039, 396.177002, 33.968300, 100.000000, 0, 0.000000, 0),
(1742, 3, 2328.250000, 396.539001, 33.684700, 100.000000, 0, 0.000000, 0),
(1742, 4, 2335.909912, 394.408997, 33.705700, 100.000000, 0, 0.000000, 0),
(1742, 5, 2349.340088, 374.924988, 35.457100, 100.000000, 0, 0.000000, 0),
(1742, 6, 2351.959961, 355.545013, 37.104099, 100.000000, 0, 0.000000, 0),
(1742, 7, 2349.620117, 331.476013, 37.818600, 100.000000, 0, 0.000000, 0),
(1742, 8, 2361.139893, 315.644989, 36.380199, 100.000000, 0, 0.000000, 0),
(1742, 9, 2374.830078, 307.476990, 37.068802, 100.000000, 11000, 0.000000, 0),
(1742, 10, 2399.070068, 308.290009, 38.212601, 100.000000, 0, 0.000000, 0),
(1742, 11, 2409.860107, 312.865997, 38.305099, 100.000000, 0, 0.000000, 0),
(1742, 12, 2421.120117, 324.277008, 37.270100, 100.000000, 0, 0.000000, 0),
(1742, 13, 2425.479980, 331.036011, 36.335899, 100.000000, 0, 0.000000, 0),
(1742, 14, 2427.199951, 338.475006, 35.523998, 100.000000, 0, 0.000000, 0),
(1742, 15, 2427.449951, 350.287994, 33.915298, 100.000000, 0, 0.000000, 0),
(1742, 16, 2429.570068, 356.019989, 33.915298, 100.000000, 7000, 0.000000, 0),
(1742, 17, 2422.879883, 360.608002, 34.094101, 100.000000, 0, 0.000000, 0),
(1742, 18, 2408.620117, 374.812012, 33.998199, 100.000000, 0, 0.000000, 0),
(1742, 19, 2396.429932, 399.985992, 33.933399, 100.000000, 0, 0.000000, 0),
(1742, 20, 2381.209961, 423.950989, 34.138901, 100.000000, 0, 0.000000, 0),
(1742, 21, 2371.419922, 430.046997, 33.809601, 100.000000, 0, 0.000000, 0),
(1742, 22, 2367.310059, 436.127991, 33.423801, 100.000000, 0, 0.000000, 0),
(1742, 23, 2356.899902, 444.679993, 33.405300, 100.000000, 9000, 0.000000, 0),
(1742, 24, 2354.699951, 441.899994, 33.405300, 100.000000, 0, 0.000000, 0),
(1742, 25, 2351.010010, 431.175995, 33.438900, 100.000000, 0, 0.000000, 0),
(1742, 26, 2342.129883, 418.402008, 33.703400, 100.000000, 0, 0.000000, 0),
(1742, 27, 2336.939941, 403.477997, 33.703400, 100.000000, 0, 0.000000, 0),
(1742, 28, 2327.409912, 399.183990, 33.690102, 100.000000, 0, 0.000000, 0),
(1742, 29, 2304.879883, 399.181000, 33.845299, 100.000000, 0, 0.000000, 0);

-- gordo waypoints
UPDATE `creature` SET `position_x` = 2190.060059, `position_y` = 1087.359985, `position_z` = 29.801800 WHERE `guid` = 28413;
DELETE FROM `creature_movement` WHERE `id`  = 28413;
REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(10666, 1, 2190.06, 1087.36, 29.8018, 100, 0, 0, 0),
(10666, 2, 2194.54, 1078.85, 29.3607, 100, 0, 0, 0),
(10666, 3, 2198.55, 1067.45, 29.0648, 100, 0, 0, 0),
(10666, 4, 2199.01, 1063.48, 29.1465, 100, 0, 0, 0),
(10666, 5, 2189.35, 1046.6, 29.6505, 100, 0, 0, 0),
(10666, 6, 2183.81, 1040.76, 29.8018, 100, 0, 0, 0),
(10666, 7, 2183.81, 1040.76, 29.8018, 5.70919, 1000, 0, 1066601),
(10666, 8, 2206.35, 1030.07, 35.7224, 100, 0, 0, 0),
(10666, 9, 2240.73, 1005.92, 38.6152, 100, 0, 0, 0),
(10666, 10, 2240.73, 1005.92, 38.6152, 4.98051, 3000, 0, 1066602),
(10666, 11, 2206.35, 1030.07, 35.7224, 100, 0, 0, 0),
(10666, 12, 2178.52, 1033.47, 29.6418, 100, 0, 0, 0),
(10666, 13, 2169.68, 1026.11, 29.3943, 100, 0, 0, 0),
(10666, 14, 2161.18, 1017.47, 29.157, 100, 0, 0, 0),
(10666, 15, 2149.82, 1005.9, 29.157, 100, 0, 0, 0),
(10666, 16, 2141.14, 997.474, 29.4799, 100, 0, 0, 0),
(10666, 17, 2135.07, 987.758, 29.5269, 100, 0, 0, 0),
(10666, 18, 2132.69, 975.987, 29.834, 100, 0, 0, 0),
(10666, 19, 2128.95, 960.27, 29.46, 100, 0, 0, 0),
(10666, 20, 2127.1, 952.393, 29.1663, 100, 0, 0, 0),
(10666, 21, 2127.1, 952.393, 29.1663, 2.32554, 2000, 0, 1066601),
(10666, 22, 2110.86, 972.173, 36.4351, 100, 0, 0, 0),
(10666, 23, 2110.86, 972.173, 36.4351, 3.09171, 3000, 0, 1066603),
(10666, 24, 2127.26, 953.271, 29.3339, 100, 0, 0, 0),
(10666, 25, 2107.76, 884.386, 29.9924, 100, 0, 0, 0),
(10666, 26, 2104.25, 878.532, 29.8981, 100, 0, 0, 0),
(10666, 27, 2101.27, 866.854, 29.7462, 100, 0, 0, 0),
(10666, 28, 2098.14, 855.15, 29.5743, 100, 0, 0, 0),
(10666, 29, 2095.25, 843.35, 29.6696, 100, 0, 0, 0),
(10666, 30, 2092.96, 831.471, 29.7794, 100, 0, 0, 0),
(10666, 31, 2092.96, 831.471, 29.7794, 1.66413, 2000, 0, 1066601),
(10666, 32, 2090.2, 861.02, 31.7869, 100, 0, 0, 0),
(10666, 33, 2090.2, 861.02, 31.7869, 1.66996, 3000, 0, 1066604),
(10666, 34, 2092.04, 832.998, 29.7922, 100, 0, 0, 0),
(10666, 35, 2091.64, 820.898, 29.9762, 100, 0, 0, 0),
(10666, 36, 2090.91, 809.083, 30.1963, 100, 0, 0, 0),
(10666, 37, 2090.85, 801.04, 30.3178, 100, 0, 0, 0),
(10666, 38, 2091.16, 788.936, 30.5565, 100, 0, 0, 0),
(10666, 39, 2092.09, 776.19, 30.837, 100, 0, 0, 0),
(10666, 40, 2093.4, 768.38, 31.0641, 100, 0, 0, 0),
(10666, 41, 2095.53, 760.545, 31.078, 100, 0, 0, 0),
(10666, 42, 2101.55, 750.172, 31.0222, 100, 0, 0, 0),
(10666, 43, 2106.88, 744.12, 31.0392, 100, 0, 0, 0),
(10666, 44, 2115.61, 736.268, 31.1884, 100, 0, 0, 0),
(10666, 45, 2121.86, 731.113, 31.5007, 100, 0, 0, 0),
(10666, 46, 2131.11, 723.297, 31.8953, 100, 0, 0, 0),
(10666, 47, 2137.2, 717.783, 32.3931, 100, 0, 0, 0),
(10666, 48, 2146.08, 709.786, 33.0822, 100, 0, 0, 0),
(10666, 49, 2155.73, 701.788, 33.2375, 100, 0, 0, 0),
(10666, 50, 2155.73, 701.788, 33.2375, 2.99444, 2000, 0, 1066601),
(10666, 51, 2130.18, 705.575, 35.4401, 100, 0, 0, 0),
(10666, 52, 2130.18, 705.575, 35.4401, 2.99389, 3000, 0, 1066605),
(10666, 53, 2157.33, 699.112, 33.1967, 100, 0, 0, 0),
(10666, 54, 2167.61, 692.892, 33.4739, 100, 0, 0, 0),
(10666, 55, 2174.23, 688.291, 33.5172, 100, 0, 0, 0),
(10666, 56, 2182.39, 679.343, 33.4143, 100, 0, 0, 0),
(10666, 57, 2189.76, 669.73, 33.3915, 100, 0, 0, 0),
(10666, 58, 2194.71, 663.389, 33.4549, 100, 0, 0, 0),
(10666, 59, 2197.18, 660.182, 33.4837, 100, 0, 0, 0),
(10666, 60, 2201.45, 653.37, 33.472, 100, 0, 0, 0),
(10666, 61, 2206.36, 647.066, 33.472, 100, 0, 0, 0),
(10666, 62, 2213.73, 637.343, 33.472, 100, 0, 0, 0),
(10666, 63, 2218.44, 630.824, 33.472, 100, 0, 0, 0),
(10666, 64, 2225.61, 620.959, 33.472, 100, 0, 0, 0),
(10666, 65, 2230.37, 614.486, 33.4805, 100, 0, 0, 0),
(10666, 66, 2230.37, 614.486, 33.4805, 2.6634, 2000, 0, 1066601),
(10666, 67, 2216.81, 620.693, 24.8215, 100, 0, 0, 0),
(10666, 68, 2216.81, 620.693, 24.8215, 2.36718, 3000, 0, 1066606),
(10666, 69, 2232.14, 608.183, 33.472, 100, 0, 0, 0),
(10666, 70, 2239.03, 601.63, 33.449, 100, 0, 0, 0),
(10666, 71, 2243.08, 594.651, 33.4295, 100, 0, 0, 0),
(10666, 72, 2247.36, 583.535, 33.5083, 100, 0, 0, 0),
(10666, 73, 2249.7, 571.64, 33.4644, 100, 0, 0, 0),
(10666, 74, 2252.37, 564.156, 33.5003, 100, 0, 0, 0),
(10666, 75, 2259.42, 549.585, 33.5833, 100, 0, 0, 0),
(10666, 76, 2261.94, 541.974, 33.5134, 100, 0, 0, 0),
(10666, 77, 2262.85, 538.174, 33.4591, 100, 0, 0, 0),
(10666, 78, 2262.85, 538.174, 33.4591, 3.83801, 1000, 0, 1066601),
(10666, 79, 2252.8, 529.788, 34.6416, 100, 0, 0, 0),
(10666, 80, 2252.8, 529.788, 34.6416, 3.84304, 4000, 0, 1066607),
(10666, 81, 2256.4, 528.2, 33.9345, 100, 0, 0, 0),
(10666, 82, 2256.97, 518.395, 33.9583, 100, 0, 0, 0),
(10666, 83, 2255.65, 510.79, 34.1221, 100, 0, 0, 0),
(10666, 84, 2256.04, 496.862, 33.9297, 100, 0, 0, 0),
(10666, 85, 2255.41, 504.942, 34.1758, 100, 0, 0, 0),
(10666, 86, 2255.87, 512.99, 34.0916, 100, 0, 0, 0),
(10666, 87, 2257.88, 521.185, 33.7222, 100, 0, 0, 0),
(10666, 88, 2262.4, 536.529, 33.4788, 100, 0, 0, 0),
(10666, 89, 2261.38, 544.305, 33.5475, 100, 0, 0, 0),
(10666, 90, 2256.63, 555.381, 33.5833, 100, 0, 0, 0),
(10666, 91, 2251.33, 566.271, 33.4669, 100, 0, 0, 0),
(10666, 92, 2249.32, 574.028, 33.4922, 100, 0, 0, 0),
(10666, 93, 2246.73, 585.855, 33.4826, 100, 0, 0, 0),
(10666, 94, 2241.8, 596.838, 33.4295, 100, 0, 0, 0),
(10666, 95, 2236.37, 602.292, 33.4407, 100, 0, 0, 0),
(10666, 96, 2236.37, 602.292, 33.4407, 0.626728, 2000, 0, 1066601),
(10666, 97, 2247.63, 611.049, 34.4442, 100, 0, 0, 0),
(10666, 98, 2247.63, 611.049, 34.4442, 0.428358, 3000, 0, 1066608),
(10666, 99, 2239.61, 610.673, 33.5632, 100, 0, 0, 0),
(10666, 100, 2230.37, 614.479, 33.4805, 100, 0, 0, 0),
(10666, 101, 2223.19, 624.229, 33.472, 100, 0, 0, 0),
(10666, 102, 2218.45, 630.812, 33.472, 100, 0, 0, 0),
(10666, 103, 2211.31, 640.601, 33.472, 100, 0, 0, 0),
(10666, 104, 2206.35, 647.077, 33.472, 100, 0, 0, 0),
(10666, 105, 2201.4, 653.434, 33.472, 100, 0, 0, 0),
(10666, 106, 2199.04, 656.949, 33.4749, 100, 0, 0, 0),
(10666, 107, 2193.83, 664.504, 33.4397, 100, 0, 0, 0),
(10666, 108, 2186.39, 674.197, 33.3915, 100, 0, 0, 0),
(10666, 109, 2178.86, 683.643, 33.4715, 100, 0, 0, 0),
(10666, 110, 2173.04, 689.111, 33.5177, 100, 0, 0, 0),
(10666, 111, 2163.15, 696.101, 33.2824, 100, 0, 0, 0),
(10666, 112, 2163.15, 696.101, 33.2824, 0.71596, 2000, 0, 1066601),
(10666, 113, 2177.16, 708.276, 34.9673, 100, 0, 0, 0),
(10666, 114, 2177.16, 708.276, 34.9673, 0.718701, 3000, 0, 1066609),
(10666, 115, 2163.07, 700.374, 33.3705, 100, 0, 0, 0),
(10666, 116, 2153.35, 703.708, 33.1317, 100, 0, 0, 0),
(10666, 117, 2143.37, 712.136, 32.9095, 100, 0, 0, 0),
(10666, 118, 2137.43, 717.563, 32.2786, 100, 0, 0, 0),
(10666, 119, 2128.38, 725.644, 31.6602, 100, 0, 0, 0),
(10666, 120, 2122.17, 730.866, 31.44, 100, 0, 0, 0),
(10666, 121, 2112.83, 738.555, 30.9501, 100, 0, 0, 0),
(10666, 122, 2104.42, 746.826, 30.9709, 100, 0, 0, 0),
(10666, 123, 2099.19, 753.03, 31.2178, 100, 0, 0, 0),
(10666, 124, 2095.68, 760.106, 31.0845, 100, 0, 0, 0),
(10666, 125, 2093.53, 767.855, 30.9285, 100, 0, 0, 0),
(10666, 126, 2091.72, 779.828, 30.8209, 100, 0, 0, 0),
(10666, 127, 2091.06, 791.978, 30.3902, 100, 0, 0, 0),
(10666, 128, 2090.87, 800.031, 30.3258, 100, 0, 0, 0),
(10666, 129, 2091.04, 812.218, 30.0335, 100, 0, 0, 0),
(10666, 130, 2091.92, 823.745, 29.8279, 100, 0, 0, 0),
(10666, 131, 2093.75, 835.801, 29.732, 100, 0, 0, 0),
(10666, 132, 2093.75, 835.801, 29.732, 5.8047, 2000, 0, 1066601),
(10666, 133, 2134.92, 814.468, 36.8102, 100, 0, 0, 0),
(10666, 134, 2134.92, 814.468, 36.8102, 5.79682, 4000, 0, 1066610),
(10666, 135, 2098.02, 838.883, 29.8086, 100, 0, 0, 0),
(10666, 136, 2096.5, 848.805, 29.5996, 100, 0, 0, 0),
(10666, 137, 2098.53, 856.605, 29.5743, 100, 0, 0, 0),
(10666, 138, 2101.67, 868.365, 29.8185, 100, 0, 0, 0),
(10666, 139, 2105.57, 884.067, 29.8745, 100, 0, 0, 0),
(10666, 140, 2108.92, 895.904, 30.3677, 100, 0, 0, 0),
(10666, 141, 2112.26, 907.398, 30.3208, 100, 0, 0, 0),
(10666, 142, 2117.52, 922.733, 29.5711, 100, 0, 0, 0),
(10666, 143, 2118.95, 926.534, 29.512, 100, 0, 0, 0),
(10666, 144, 2118.95, 926.534, 29.512, 2.47688, 1000, 0, 1066601),
(10666, 145, 2057.55, 974.674, 35.0212, 100, 0, 0, 0),
(10666, 146, 2057.55, 974.674, 35.0212, 2.48474, 3000, 0, 1066611),
(10666, 147, 2121.59, 943.174, 29.4158, 100, 0, 0, 0),
(10666, 148, 2127.26, 953.271, 29.3339, 100, 0, 0, 0),
(10666, 149, 2131.34, 968.912, 29.9033, 100, 0, 0, 0),
(10666, 150, 2133.35, 980.817, 29.6589, 100, 0, 0, 0),
(10666, 151, 2137, 992.325, 29.6616, 100, 0, 0, 0),
(10666, 152, 2141.7, 997.987, 29.354, 100, 0, 0, 0),
(10666, 153, 2153.18, 1009.42, 29.157, 100, 0, 0, 0),
(10666, 154, 2162.17, 1018.42, 29.3031, 100, 0, 0, 0),
(10666, 155, 2173.09, 1029.85, 29.504, 100, 0, 0, 0),
(10666, 156, 2173.09, 1029.85, 29.504, 1.41594, 2000, 0, 1066601),
(10666, 157, 2180.73, 1070.83, 33.5518, 100, 0, 0, 0),
(10666, 158, 2180.73, 1070.83, 33.5518, 1.92024, 3000, 0, 1066612),
(10666, 159, 2177.07, 1039, 29.644, 100, 0, 0, 0),
(10666, 160, 2183.95, 1040.9, 29.7909, 100, 0, 0, 0),
(10666, 161, 2197.12, 1056.14, 29.3671, 100, 0, 0, 0),
(10666, 162, 2198.65, 1059.6, 29.223, 100, 0, 0, 0),
(10666, 163, 2197.29, 1071.37, 29.254, 100, 0, 0, 0),
(10666, 164, 2191.12, 1086.26, 29.7381, 100, 0, 0, 0),
(10666, 165, 2185.83, 1097.13, 30.0981, 100, 0, 0, 0),
(10666, 166, 2181.26, 1108.35, 30.3983, 100, 0, 0, 0),
(10666, 167, 2179.18, 1116.16, 30.3458, 100, 0, 0, 0),
(10666, 168, 2177.94, 1128.13, 30.434, 100, 0, 0, 0),
(10666, 169, 2177.47, 1140.3, 30.2889, 100, 0, 0, 0),
(10666, 170, 2177.53, 1152.38, 30.4306, 100, 0, 0, 0),
(10666, 171, 2179.27, 1164.32, 30.4706, 100, 0, 0, 0),
(10666, 172, 2179.27, 1164.32, 30.4706, 0.03382, 2000, 0, 1066601),
(10666, 173, 2217.97, 1166.33, 35.9862, 100, 0, 0, 0),
(10666, 174, 2217.97, 1166.33, 35.9862, 6.0319, 4000, 0, 1066613),
(10666, 175, 2186.12, 1169.43, 30.8744, 100, 0, 0, 0),
(10666, 176, 2183.51, 1175.73, 30.9895, 100, 0, 0, 0),
(10666, 177, 2195.8, 1189.64, 31.3755, 100, 0, 0, 0),
(10666, 178, 2189.85, 1184.27, 31.7932, 100, 0, 0, 0),
(10666, 179, 2182.95, 1174.62, 30.7344, 100, 0, 0, 0),
(10666, 180, 2179.01, 1163.23, 30.4455, 100, 0, 0, 0),
(10666, 181, 2177.35, 1147.28, 30.2166, 100, 0, 0, 0),
(10666, 182, 2177.69, 1135.22, 30.4699, 100, 0, 0, 0),
(10666, 183, 2178.1, 1123.08, 30.3335, 100, 0, 0, 0),
(10666, 184, 2179.39, 1115.15, 30.3568, 100, 0, 0, 0),
(10666, 185, 2181.66, 1107.28, 30.3475, 100, 0, 0, 0),
(10666, 186, 2181.66, 1107.28, 30.3475, 0.517211, 2000, 0, 1066601),
(10666, 187, 2201.97, 1118.82, 34.7142, 100, 0, 0, 0),
(10666, 188, 2201.97, 1118.82, 34.7142, 0.518958, 3000, 0, 1066614),
(10666, 189, 2188.32, 1104.76, 30.4738, 100, 0, 0, 0),
(10666, 190, 2186.88, 1095.04, 29.9807, 100, 0, 0, 0);

-- 106601
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1066601, 0, 25, 1, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordo - Run');
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1066601, 1, 16, 6273, 2, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordo - Play Sound');

-- 1066602
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1066602, 0, 25, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordo - Walk');
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1066602, 1, 81, 25531, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordo - Despawn GameObject');
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1066602, 1, 0, 2, 0, 0, 0, 0, 0, 0, 4, 6893, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordo - Talk');
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1066602, 1, 1, 36, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordo - Emote Attack1H');

-- 1066603
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1066603, 0, 25, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordo - Walk');
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1066603, 1, 81, 25549, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordo - Despawn GameObject');
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1066603, 1, 0, 2, 0, 0, 0, 0, 0, 0, 4, 6893, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordo - Talk');
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1066603, 1, 1, 36, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordo - Emote Attack1H');

-- 1066604
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1066604, 0, 25, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordo - Walk');
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1066604, 1, 81, 25552, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordo - Despawn GameObject');
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1066604, 1, 0, 2, 0, 0, 0, 0, 0, 0, 4, 6893, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordo - Talk');
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1066604, 1, 1, 36, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordo - Emote Attack1H');

-- 1066605
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1066605, 0, 25, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordo - Walk');
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1066605, 1, 81, 25518, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordo - Despawn GameObject');
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1066605, 1, 0, 2, 0, 0, 0, 0, 0, 0, 4, 6893, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordo - Talk');
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1066605, 1, 1, 36, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordo - Emote Attack1H');

-- 1066606
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1066606, 0, 25, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordo - Walk');
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1066606, 1, 81, 25513, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordo - Despawn GameObject');
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1066606, 1, 0, 2, 0, 0, 0, 0, 0, 0, 4, 6893, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordo - Talk');
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1066606, 1, 1, 36, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordo - Emote Attack1H');

-- 1066607
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1066607, 0, 25, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordo - Walk');
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1066607, 1, 81, 25550, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordo - Despawn GameObject');
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1066607, 1, 0, 2, 0, 0, 0, 0, 0, 0, 4, 6893, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordo - Talk');
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1066607, 1, 1, 36, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordo - Emote Attack1H');

-- 1066608
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1066608, 0, 25, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordo - Walk');
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1066608, 1, 81, 25508, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordo - Despawn GameObject');
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1066608, 1, 0, 2, 0, 0, 0, 0, 0, 0, 4, 6893, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordo - Talk');
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1066608, 1, 1, 36, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordo - Emote Attack1H');

-- 1066609
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1066609, 0, 25, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordo - Walk');
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1066609, 1, 81, 25569, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordo - Despawn GameObject');
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1066609, 1, 0, 2, 0, 0, 0, 0, 0, 0, 4, 6893, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordo - Talk');
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1066609, 1, 1, 36, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordo - Emote Attack1H');

-- 1066610
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1066610, 0, 25, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordo - Walk');
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1066610, 1, 81, 25556, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordo - Despawn GameObject');
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1066610, 1, 0, 2, 0, 0, 0, 0, 0, 0, 4, 6893, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordo - Talk');
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1066610, 1, 1, 36, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordo - Emote Attack1H');

-- 1066611
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1066611, 0, 25, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordo - Walk');
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1066611, 1, 81, 25558, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordo - Despawn GameObject');
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1066611, 1, 0, 2, 0, 0, 0, 0, 0, 0, 4, 6893, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordo - Talk');
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1066611, 1, 1, 36, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordo - Emote Attack1H');

-- 1066612
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1066612, 0, 25, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordo - Walk');
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1066612, 1, 81, 25560, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordo - Despawn GameObject');
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1066612, 1, 0, 2, 0, 0, 0, 0, 0, 0, 4, 6893, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordo - Talk');
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1066612, 1, 1, 36, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordo - Emote Attack1H');

-- 1066613
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1066613, 0, 25, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordo - Walk');
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1066613, 1, 81, 25565, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordo - Despawn GameObject');
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1066613, 1, 0, 2, 0, 0, 0, 0, 0, 0, 4, 6893, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordo - Talk');
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1066613, 1, 1, 36, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordo - Emote Attack1H');

-- 1066614
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1066614, 0, 25, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordo - Walk');
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1066614, 1, 81, 25562, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordo - Despawn GameObject');
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1066614, 1, 0, 2, 0, 0, 0, 0, 0, 0, 4, 6893, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordo - Talk');
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1066614, 1, 1, 36, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordo - Emote Attack1H');

-- add gloom weed gameobjects
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES
(25562, 175566, 0, 2204.14, 1120.06, 34.8163, 4.01426, 0, 0, -0.906307, 0.422619, 900, 900, 255, 1, 4, 0, 0, 10),
(25565, 175566, 0, 2220.39, 1165.71, 36.1008, 4.24115, 0, 0, -0.85264, 0.522499, 900, 900, 255, 1, 4, 0, 0, 10),
(25560, 175566, 0, 2179.86, 1073.21, 33.8257, 4.50295, 0, 0, -0.777145, 0.629321, 900, 900, 255, 1, 4, 0, 0, 10),
(25558, 175566, 0, 2055.5, 976.255, 34.4295, 5.044, 0, 0, -0.580703, 0.814116, 900, 900, 255, 1, 4, 0, 0, 10),
(25556, 175566, 0, 2137.12, 813.306, 37.0785, 3.24635, 0, 0, -0.998629, 0.0523532, 900, 900, 255, 1, 4, 0, 0, 10),
(25569, 175566, 0, 2179.03, 709.911, 35.2548, 3.01941, 0, 0, 0.998135, 0.0610518, 900, 900, 255, 1, 4, 0, 0, 10),
(25508, 175566, 0, 2249.89, 612.077, 34.7925, 4.01426, 0, 0, -0.906307, 0.422619, 900, 900, 255, 1, 4, 0, 0, 10),
(25550, 175566, 0, 2250.9, 528.181, 34.8574, 2.84488, 0, 0, 0.989016, 0.147811, 900, 900, 255, 1, 4, 0, 0, 10),
(25513, 175566, 0, 2215.02, 622.441, 24.7497, 4.71239, 0, 0, -0.707107, 0.707107, 900, 900, 255, 1, 4, 0, 0, 10),
(25518, 175566, 0, 2127.71, 705.943, 35.3965, 3.78737, 0, 0, -0.948323, 0.317306, 900, 900, 255, 1, 4, 0, 0, 10),
(25552, 175566, 0, 2089.96, 863.474, 32.1929, 1.65806, 0, 0, 0.737277, 0.675591, 900, 900, 255, 1, 4, 0, 0, 10),
(25549, 175566, 0, 2108.38, 972.297, 36.6983, 6.21337, 0, 0, -0.0348988, 0.999391, 900, 900, 255, 1, 4, 0, 0, 10),
(25531, 175566, 0, 2241.39, 1003.52, 38.8929, 2.67035, 0, 0, 0.972369, 0.233448, 900, 900, 255, 1, 4, 0, 0, 10);
DELETE FROM `gameobject` WHERE `guid` IN (45278, 45282, 45246, 45276, 45292);
DELETE FROM `pool_gameobject` WHERE `guid` IN (45278, 45282, 45246, 45276, 45292);

-- sahvan bloodshadow waypoints
DELETE FROM `creature_movement` WHERE `id` = 31919;
REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(2314, 1, 2287.419922, 395.809998, 34.075100, 100.000000, 0, 0.000000, 0),
(2314, 2, 2285.330078, 392.347992, 34.142601, 100.000000, 0, 0.000000, 0),
(2314, 3, 2283.580078, 352.665985, 34.208599, 100.000000, 0, 0.000000, 0),
(2314, 4, 2266.899902, 307.497986, 34.237301, 100.000000, 0, 0.000000, 0),
(2314, 5, 2245.120117, 273.489990, 34.238701, 100.000000, 0, 0.000000, 0),
(2314, 6, 2245.860107, 261.511993, 34.130798, 100.000000, 0, 0.000000, 0),
(2314, 7, 2245.860107, 261.511993, 34.130798, 1.623160, 36000, 0.000000, 0),
(2314, 8, 2243.729980, 264.916992, 34.185200, 100.000000, 0, 0.000000, 0),
(2314, 9, 2244.439941, 271.170013, 34.238701, 100.000000, 0, 0.000000, 0),
(2314, 10, 2252.050049, 275.311005, 34.238701, 100.000000, 8000, 0.000000, 0),
(2314, 11, 2257.149902, 286.303009, 34.238701, 100.000000, 0, 0.000000, 0),
(2314, 12, 2264.939941, 309.277008, 34.238701, 100.000000, 0, 0.000000, 0),
(2314, 13, 2260.699951, 323.434998, 35.113701, 100.000000, 10000, 0.000000, 0),
(2314, 14, 2266.530029, 329.080994, 35.209499, 100.000000, 0, 0.000000, 0),
(2314, 15, 2280.060059, 344.057007, 34.271900, 100.000000, 0, 0.000000, 0),
(2314, 16, 2284.780029, 387.032013, 34.253899, 100.000000, 0, 0.000000, 0),
(2314, 17, 2286.830078, 394.529999, 34.152901, 100.000000, 0, 0.000000, 0),
(2314, 18, 2309.810059, 399.140015, 33.946098, 100.000000, 0, 0.000000, 0),
(2314, 19, 2334.129883, 398.359009, 33.715000, 100.000000, 0, 0.000000, 0),
(2314, 20, 2350.189941, 396.885010, 34.934299, 100.000000, 0, 0.000000, 0),
(2314, 21, 2366.139893, 397.458008, 37.597900, 100.000000, 0, 0.000000, 0),
(2314, 22, 2370.699951, 396.973999, 37.696499, 100.000000, 21000, 0.000000, 0),
(2314, 23, 2330.620117, 397.858002, 33.709801, 100.000000, 0, 0.000000, 0),
(2314, 24, 2290.159912, 395.946014, 34.061401, 100.000000, 0, 0.000000, 0);

-- creature 44259 waypoints
UPDATE `creature` SET `movementtype` = 2 WHERE `guid` = 44259;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(44259, 1, 2353.760010, 1577.239990, 33.952801, 100.000000, 0, 0.000000, 0),
(44259, 2, 2332.899902, 1541.939941, 36.025600, 100.000000, 0, 0.000000, 0),
(44259, 3, 2335.570068, 1535.569946, 36.679798, 100.000000, 0, 0.000000, 0),
(44259, 4, 2335.570068, 1535.569946, 36.679798, 4.241150, 28000, 0.000000, 0),
(44259, 5, 2318.290039, 1545.550049, 33.866798, 100.000000, 0, 0.000000, 0),
(44259, 6, 2299.120117, 1551.130005, 35.022900, 100.000000, 0, 0.000000, 0),
(44259, 7, 2287.300049, 1544.390015, 40.299500, 100.000000, 0, 0.000000, 0),
(44259, 8, 2277.209961, 1526.500000, 45.437199, 100.000000, 43000, 0.000000, 0),
(44259, 9, 2279.590088, 1534.160034, 44.734200, 100.000000, 0, 0.000000, 0),
(44259, 10, 2290.949951, 1548.520020, 37.629601, 100.000000, 0, 0.000000, 0),
(44259, 11, 2295.429932, 1582.810059, 39.549099, 100.000000, 0, 0.000000, 0),
(44259, 12, 2296.520020, 1627.619995, 41.608799, 100.000000, 0, 0.000000, 0),
(44259, 13, 2319.310059, 1659.239990, 39.137798, 100.000000, 0, 0.000000, 0),
(44259, 14, 2343.330078, 1641.619995, 37.495300, 100.000000, 0, 0.000000, 0);

-- creature 38393 waypoints
UPDATE `creature` SET `movementtype` = 2 WHERE `guid` = 38393;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(38393, 1, 2064.659912, -392.214996, 37.768501, 100.000000, 0, 0.000000, 0),
(38393, 2, 2058.280029, -427.962006, 37.115601, 100.000000, 0, 0.000000, 0),
(38393, 3, 2052.979980, -438.463013, 35.741402, 100.000000, 0, 0.000000, 0),
(38393, 4, 2059.250000, -455.542999, 36.673401, 100.000000, 0, 0.000000, 0),
(38393, 5, 2060.600098, -457.825989, 37.012501, 100.000000, 0, 0.000000, 0),
(38393, 6, 2042.890015, -471.367004, 37.080799, 100.000000, 0, 0.000000, 0),
(38393, 7, 2031.349976, -473.875000, 36.527199, 100.000000, 0, 0.000000, 0),
(38393, 8, 2023.439941, -473.390991, 36.282902, 100.000000, 0, 0.000000, 0),
(38393, 9, 2012.349976, -462.712006, 35.400002, 100.000000, 0, 0.000000, 0),
(38393, 10, 2008.609985, -455.812012, 35.326000, 100.000000, 0, 0.000000, 0),
(38393, 11, 2013.229980, -444.941010, 35.230598, 100.000000, 0, 0.000000, 0),
(38393, 12, 2010.310059, -447.763000, 35.182499, 100.000000, 0, 0.000000, 0),
(38393, 13, 2008.420044, -454.625000, 35.286400, 100.000000, 0, 0.000000, 0),
(38393, 14, 2016.349976, -468.272003, 35.577999, 100.000000, 0, 0.000000, 0),
(38393, 15, 2022.339966, -473.065002, 36.421299, 100.000000, 0, 0.000000, 0),
(38393, 16, 2033.959961, -473.718994, 36.794300, 100.000000, 0, 0.000000, 0),
(38393, 17, 2059.159912, -462.325989, 37.516300, 100.000000, 0, 0.000000, 0),
(38393, 18, 2060.600098, -457.825989, 37.012501, 100.000000, 0, 0.000000, 0),
(38393, 19, 2053.830078, -446.339996, 35.621799, 100.000000, 0, 0.000000, 0),
(38393, 20, 2054.550049, -436.213989, 36.183701, 100.000000, 0, 0.000000, 0),
(38393, 21, 2063.739990, -397.360992, 37.983898, 100.000000, 0, 0.000000, 0),
(38393, 22, 2070.050049, -349.468994, 36.160301, 100.000000, 0, 0.000000, 0),
(38393, 23, 2068.689941, -344.052002, 36.302700, 100.000000, 0, 0.000000, 0),
(38393, 24, 2052.239990, -339.524994, 35.378502, 100.000000, 0, 0.000000, 0),
(38393, 25, 2044.369995, -339.875000, 35.505402, 100.000000, 0, 0.000000, 0),
(38393, 26, 2032.890015, -350.230011, 35.576099, 100.000000, 0, 0.000000, 0),
(38393, 27, 2016.780029, -368.347992, 35.577202, 100.000000, 0, 0.000000, 0),
(38393, 28, 1998.040039, -367.768005, 35.577202, 100.000000, 0, 0.000000, 0),
(38393, 29, 1974.000000, -367.963013, 35.577202, 100.000000, 0, 0.000000, 0),
(38393, 30, 1956.680054, -381.394989, 35.476398, 100.000000, 0, 0.000000, 0),
(38393, 31, 1964.719971, -372.247009, 35.545898, 100.000000, 0, 0.000000, 0),
(38393, 32, 1990.989990, -367.470001, 35.577202, 100.000000, 0, 0.000000, 0),
(38393, 33, 2010.979980, -370.105988, 35.577202, 100.000000, 0, 0.000000, 0),
(38393, 34, 2028.290039, -355.529999, 35.577202, 100.000000, 0, 0.000000, 0),
(38393, 35, 2038.729980, -343.216003, 35.573200, 100.000000, 0, 0.000000, 0),
(38393, 36, 2045.400024, -339.688995, 35.484901, 100.000000, 0, 0.000000, 0),
(38393, 37, 2065.090088, -343.059998, 35.692200, 100.000000, 0, 0.000000, 0),
(38393, 38, 2068.689941, -344.052002, 36.302700, 100.000000, 0, 0.000000, 0),
(38393, 39, 2065.360107, -386.696014, 37.270302, 100.000000, 0, 0.000000, 0);

-- creature 4463 waypoints
UPDATE `creature` SET `position_x` = 2666.379883, `position_y` = 301.924988, `position_z` = 28.222300, `movementtype` = 2 WHERE `guid` = 44663;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(44663, 1, 2666.379883, 301.924988, 28.222300, 100.000000, 10000, 0.000000, 0),
(44663, 2, 2682.649902, 290.020996, 28.229500, 100.000000, 0, 0.000000, 0),
(44663, 3, 2720.939941, 278.582001, 28.204201, 100.000000, 0, 0.000000, 0),
(44663, 4, 2764.780029, 271.253998, 28.242100, 100.000000, 0, 0.000000, 0),
(44663, 5, 2796.909912, 272.299011, 28.244600, 100.000000, 0, 0.000000, 0),
(44663, 6, 2805.969971, 293.847992, 29.738100, 100.000000, 0, 0.000000, 0),
(44663, 7, 2804.169922, 292.709015, 30.046400, 100.000000, 20000, 5, 0),
(44663, 8, 2794.250000, 273.852997, 28.303400, 100.000000, 0, 0.000000, 0),
(44663, 9, 2771.959961, 271.141998, 28.244600, 100.000000, 0, 0.000000, 0),
(44663, 10, 2736.030029, 276.437012, 28.203899, 100.000000, 0, 0.000000, 0),
(44663, 11, 2704.600098, 283.463013, 28.199800, 100.000000, 0, 0.000000, 0);

-- lost soul waypoints
DELETE FROM `creature_movement` WHERE `id` = 44864;
UPDATE `creature` SET `position_x` = 2617.129883, `position_y` = 1017.789978, `position_z` = 101.825996 WHERE `guid` = 44864;
REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(1531, 1, 2617.129883, 1017.789978, 101.825996, 100.000000, 0, 0.000000, 0),
(1531, 2, 2619.919922, 1017.669983, 101.841003, 100.000000, 0, 0.000000, 0),
(1531, 3, 2619.060059, 1014.789978, 102.273003, 100.000000, 15000, 10, 0),
(1531, 4, 2600.070068, 999.971008, 99.944099, 100.000000, 0, 0.000000, 0),
(1531, 5, 2616.310059, 1011.859985, 102.397003, 100.000000, 0, 0.000000, 0),
(1531, 6, 2616.870117, 1015.869995, 102.016998, 100.000000, 0, 0.000000, 0),
(1531, 7, 2607.870117, 1023.840027, 100.644997, 100.000000, 0, 0.000000, 0),
(1531, 8, 2615.159912, 1020.359985, 101.487999, 100.000000, 0, 0.000000, 0),
(1531, 9, 2603.280029, 1044.060059, 95.210297, 100.000000, 0, 0.000000, 0),
(1531, 10, 2593.120117, 1055.670044, 90.790100, 100.000000, 0, 0.000000, 0),
(1531, 11, 2570.989990, 1054.680054, 87.593597, 100.000000, 0, 0.000000, 0),
(1531, 12, 2561.060059, 1042.729980, 88.792702, 100.000000, 0, 0.000000, 0),
(1531, 13, 2550.899902, 1008.669983, 88.529999, 100.000000, 0, 0.000000, 0),
(1531, 14, 2546.689941, 985.185974, 88.677200, 100.000000, 0, 0.000000, 0),
(1531, 15, 2548.399902, 965.549011, 92.184502, 100.000000, 0, 0.000000, 0),
(1531, 16, 2551.070068, 941.513000, 94.410103, 100.000000, 0, 0.000000, 0),
(1531, 17, 2554.620117, 912.861023, 92.811897, 100.000000, 0, 0.000000, 0),
(1531, 18, 2564.050049, 902.247986, 97.205299, 100.000000, 0, 0.000000, 0),
(1531, 19, 2574.110107, 897.155029, 101.371002, 100.000000, 0, 0.000000, 0),
(1531, 20, 2593.290039, 892.786011, 105.383003, 100.000000, 0, 0.000000, 0),
(1531, 21, 2611.020020, 899.218018, 107.992996, 100.000000, 0, 0.000000, 0),
(1531, 22, 2619.879883, 907.208984, 108.834999, 100.000000, 0, 0.000000, 0),
(1531, 23, 2629.360107, 914.780029, 109.189003, 100.000000, 0, 0.000000, 0),
(1531, 24, 2644.179932, 920.502014, 110.400002, 100.000000, 0, 0.000000, 0),
(1531, 25, 2664.090088, 923.945984, 110.896004, 100.000000, 0, 0.000000, 0),
(1531, 26, 2685.850098, 940.742004, 111.095001, 100.000000, 0, 0.000000, 0),
(1531, 27, 2697.100098, 957.387024, 112.018997, 100.000000, 0, 0.000000, 0),
(1531, 28, 2704.459961, 976.143005, 111.547997, 100.000000, 0, 0.000000, 0),
(1531, 29, 2711.370117, 995.176025, 110.940002, 100.000000, 0, 0.000000, 0),
(1531, 30, 2717.199951, 1014.099976, 110.843002, 100.000000, 0, 0.000000, 0),
(1531, 31, 2731.030029, 1033.869995, 113.510002, 100.000000, 0, 0.000000, 0),
(1531, 32, 2714.620117, 1022.419983, 110.843002, 100.000000, 0, 0.000000, 0),
(1531, 33, 2716.219971, 1010.369995, 110.843002, 100.000000, 0, 0.000000, 0),
(1531, 34, 2718.090088, 1007.750000, 110.968002, 100.000000, 0, 0.000000, 0),
(1531, 35, 2718.370117, 1011.789978, 110.873001, 100.000000, 0, 0.000000, 0),
(1531, 36, 2732.340088, 1026.069946, 113.334000, 100.000000, 0, 0.000000, 0),
(1531, 37, 2733.379883, 1005.919983, 112.680000, 100.000000, 0, 0.000000, 0),
(1531, 38, 2721.899902, 1009.500000, 110.968002, 100.000000, 0, 0.000000, 0),
(1531, 39, 2721.899902, 1009.500000, 110.968002, 100.000000, 1000, 0.000000, 0),
(1531, 40, 2718.840088, 1012.140015, 110.884003, 100.000000, 0, 0.000000, 0),
(1531, 41, 2707.850098, 980.463989, 111.219002, 100.000000, 0, 0.000000, 0),
(1531, 42, 2698.459961, 949.528015, 111.388000, 100.000000, 0, 0.000000, 0),
(1531, 43, 2680.560059, 928.466003, 111.137001, 100.000000, 0, 0.000000, 0),
(1531, 44, 2654.000000, 919.489014, 110.632004, 100.000000, 0, 0.000000, 0),
(1531, 45, 2631.459961, 916.361023, 109.207001, 100.000000, 0, 0.000000, 0),
(1531, 46, 2608.929932, 899.348999, 107.703003, 100.000000, 0, 0.000000, 0),
(1531, 47, 2616.159912, 930.890991, 107.527000, 100.000000, 0, 0.000000, 0),
(1531, 48, 2631.860107, 933.502991, 110.217003, 100.000000, 0, 0.000000, 0),
(1531, 49, 2624.770020, 919.093018, 108.297997, 100.000000, 0, 0.000000, 0),
(1531, 50, 2628.540039, 917.815979, 108.892998, 100.000000, 0, 0.000000, 0),
(1531, 51, 2617.750000, 929.804016, 107.726997, 100.000000, 0, 0.000000, 0),
(1531, 52, 2617.750000, 929.804016, 107.726997, 100.000000, 3000, 0.000000, 0),
(1531, 53, 2629.189941, 918.364990, 108.994003, 100.000000, 0, 0.000000, 0),
(1531, 54, 2625.199951, 945.257996, 110.137001, 100.000000, 0, 0.000000, 0),
(1531, 55, 2619.120117, 964.575012, 109.565002, 100.000000, 0, 0.000000, 0),
(1531, 56, 2619.510010, 984.479004, 107.181999, 100.000000, 0, 0.000000, 0);

-- creature 44615 waypoints
UPDATE `creature` SET `movementtype` = 2 WHERE `guid` = 44615;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(44615, 1, 2707.699951, 386.022003, 26.434500, 100.000000, 36000, 0.000000, 0),
(44615, 2, 2709.419922, 393.842010, 25.545300, 100.000000, 0, 0.000000, 0),
(44615, 3, 2746.050049, 400.851013, 22.995300, 100.000000, 0, 0.000000, 0),
(44615, 4, 2756.330078, 396.433990, 22.813400, 100.000000, 0, 0.000000, 0),
(44615, 5, 2790.919922, 386.161987, 22.615700, 100.000000, 0, 0.000000, 0),
(44615, 6, 2804.560059, 392.132996, 21.551201, 100.000000, 0, 0.000000, 0),
(44615, 7, 2818.020020, 406.911011, 19.646400, 100.000000, 0, 0.000000, 0),
(44615, 8, 2826.639893, 409.072998, 20.468599, 100.000000, 36000, 0.000000, 0),
(44615, 9, 2822.709961, 408.248993, 20.050600, 100.000000, 0, 0.000000, 0),
(44615, 10, 2818.989990, 407.084991, 19.786100, 100.000000, 0, 0.000000, 0),
(44615, 11, 2694.899902, 325.335999, 30.388901, 100.000000, 0, 0.000000, 0),
(44615, 12, 2693.389893, 319.865997, 30.779200, 100.000000, 0, 0.000000, 0),
(44615, 13, 2726.770020, 309.440002, 31.373199, 100.000000, 0, 0.000000, 0),
(44615, 14, 2785.419922, 294.104004, 32.220901, 100.000000, 0, 0.000000, 0),
(44615, 15, 2806.340088, 309.652008, 27.745100, 100.000000, 0, 0.000000, 0),
(44615, 16, 2840.540039, 320.665985, 25.919399, 100.000000, 0, 0.000000, 0),
(44615, 17, 2864.649902, 321.812012, 27.544901, 100.000000, 0, 0.000000, 0),
(44615, 18, 2881.889893, 382.580994, 25.027800, 100.000000, 0, 0.000000, 0),
(44615, 19, 2868.090088, 391.457001, 22.393600, 100.000000, 0, 0.000000, 0),
(44615, 20, 2828.909912, 401.039001, 20.819201, 100.000000, 0, 0.000000, 0),
(44615, 21, 2822.629883, 404.498993, 20.200500, 100.000000, 0, 0.000000, 0),
(44615, 22, 2794.000000, 414.628998, 19.907200, 100.000000, 0, 0.000000, 0),
(44615, 23, 2784.899902, 409.464996, 20.178600, 100.000000, 0, 0.000000, 0),
(44615, 24, 2758.219971, 405.825989, 21.783899, 100.000000, 0, 0.000000, 0),
(44615, 25, 2734.830078, 400.033997, 23.646099, 100.000000, 0, 0.000000, 0);

-- creature 45096 waypoints
UPDATE `creature` SET `movementtype` = 2 WHERE `guid` = 45096;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(45096, 1, 2821.360107, -750.877991, 146.612000, 100.000000, 0, 0.000000, 0),
(45096, 2, 2813.520020, -742.497009, 143.341003, 100.000000, 0, 0.000000, 0),
(45096, 3, 2788.439941, -736.979980, 134.171005, 100.000000, 0, 0.000000, 0),
(45096, 4, 2769.899902, -732.549988, 128.740997, 100.000000, 0, 0.000000, 0),
(45096, 5, 2755.699951, -719.163025, 125.917000, 100.000000, 0, 0.000000, 0),
(45096, 6, 2738.800049, -702.195007, 122.607002, 100.000000, 0, 0.000000, 0),
(45096, 7, 2721.459961, -700.343018, 120.714996, 100.000000, 3000, 0.000000, 0),
(45096, 8, 2733.489990, -700.226013, 121.865997, 100.000000, 0, 0.000000, 0),
(45096, 9, 2748.790039, -711.903015, 124.333000, 100.000000, 0, 0.000000, 0),
(45096, 10, 2764.729980, -729.598999, 127.929001, 100.000000, 0, 0.000000, 0),
(45096, 11, 2782.860107, -735.919983, 132.061005, 100.000000, 0, 0.000000, 0),
(45096, 12, 2808.649902, -739.351990, 142.238998, 100.000000, 0, 0.000000, 0),
(45096, 13, 2819.929932, -749.367004, 145.865997, 100.000000, 0, 0.000000, 0),
(45096, 14, 2829.239990, -774.810974, 151.606003, 100.000000, 0, 0.000000, 0),
(45096, 15, 2813.870117, -788.755005, 145.214996, 100.000000, 0, 0.000000, 0),
(45096, 16, 2787.580078, -773.330017, 140.720993, 100.000000, 0, 0.000000, 0),
(45096, 17, 2774.120117, -778.466003, 138.535004, 100.000000, 0, 0.000000, 0),
(45096, 18, 2754.870117, -775.695007, 136.031006, 100.000000, 0, 0.000000, 0),
(45096, 19, 2735.260010, -772.896973, 134.524002, 100.000000, 0, 0.000000, 0),
(45096, 20, 2728.929932, -760.572998, 131.042999, 100.000000, 0, 0.000000, 0),
(45096, 21, 2725.030029, -741.853027, 135.970001, 100.000000, 0, 0.000000, 0),
(45096, 22, 2715.459961, -737.916016, 137.276993, 100.000000, 0, 0.000000, 0),
(45096, 23, 2698.229980, -733.440979, 145.285995, 100.000000, 3000, 0.000000, 0),
(45096, 24, 2709.000000, -736.763000, 140.940994, 100.000000, 0, 0.000000, 0),
(45096, 25, 2719.820068, -738.484009, 136.528000, 100.000000, 0, 0.000000, 0),
(45096, 26, 2727.209961, -753.492004, 133.242004, 100.000000, 0, 0.000000, 0),
(45096, 27, 2731.270020, -768.497009, 131.792007, 100.000000, 0, 0.000000, 0),
(45096, 28, 2747.209961, -774.252991, 136.031006, 100.000000, 0, 0.000000, 0),
(45096, 29, 2766.860107, -778.299011, 137.156998, 100.000000, 0, 0.000000, 0),
(45096, 30, 2781.030029, -774.096008, 139.947006, 100.000000, 0, 0.000000, 0),
(45096, 31, 2807.419922, -787.101013, 143.731995, 100.000000, 0, 0.000000, 0),
(45096, 32, 2826.989990, -780.218994, 150.192993, 100.000000, 0, 0.000000, 0),
(45096, 33, 2823.060059, -756.059998, 147.102005, 100.000000, 0, 0.000000, 0);

-- creature 45096 waypoints
UPDATE `creature` SET `movementtype` = 2 WHERE `guid` = 44737;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(44737, 1, 2351.199951, 559.291016, 26.581699, 100.000000, 0, 0.000000, 0),
(44737, 2, 2344.219971, 569.080017, 27.967400, 100.000000, 0, 0.000000, 0),
(44737, 3, 2321.800049, 569.758972, 24.784000, 100.000000, 0, 0.000000, 0),
(44737, 4, 2313.649902, 577.406982, 25.259001, 100.000000, 0, 0.000000, 0),
(44737, 5, 2303.040039, 594.260986, 24.903299, 100.000000, 0, 0.000000, 0),
(44737, 6, 2292.159912, 616.473999, 24.874701, 100.000000, 30000, 10, 0),
(44737, 7, 2301.659912, 604.276978, 24.874701, 100.000000, 0, 0.000000, 0),
(44737, 8, 2322.739990, 578.481018, 24.885201, 100.000000, 0, 0.000000, 0),
(44737, 9, 2322.219971, 567.692017, 24.997499, 100.000000, 0, 0.000000, 0),
(44737, 10, 2336.419922, 550.372009, 25.710501, 100.000000, 0, 0.000000, 0),
(44737, 11, 2365.379883, 526.731995, 31.087099, 100.000000, 0, 0.000000, 0),
(44737, 12, 2369.350098, 526.286987, 31.598301, 100.000000, 30000, 10, 0);

-- creature 38176 waypoints
UPDATE `creature` SET `movementtype` = 2 WHERE `guid` = 38276;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(38276, 1, 3013.639893, -330.230988, 7.411860, 100.000000, 0, 0.000000, 0),
(38276, 2, 3012.860107, -307.825989, 7.411860, 100.000000, 14000, 0.000000, 0),
(38276, 3, 3029.739990, -297.825012, 7.279790, 100.000000, 0, 0.000000, 0),
(38276, 4, 3045.909912, -275.537994, 4.409800, 100.000000, 0, 0.000000, 0),
(38276, 5, 3048.709961, -260.026001, 4.322980, 100.000000, 12000, 0.000000, 0),
(38276, 6, 3048.199951, -318.277008, 4.997210, 100.000000, 0, 0.000000, 0),
(38276, 7, 3023.659912, -345.859985, 6.803050, 100.000000, 0, 0.000000, 0),
(38276, 8, 3016.649902, -352.056000, 7.234560, 100.000000, 0, 0.000000, 0),
(38276, 9, 3009.699951, -369.420990, 7.591280, 100.000000, 0, 0.000000, 0),
(38276, 10, 3027.189941, -376.061005, 10.148600, 100.000000, 0, 0.000000, 0),
(38276, 11, 3027.919922, -376.269012, 10.091100, 100.000000, 0, 0.000000, 0),
(38276, 12, 3027.919922, -376.269012, 10.091100, 2.391100, 39000, 0.000000, 0),
(38276, 13, 3016.199951, -374.368988, 6.948270, 100.000000, 0, 0.000000, 0),
(38276, 14, 3006.489990, -368.584991, 8.518890, 100.000000, 21000, 0.000000, 0),
(38276, 15, 3009.949951, -340.819000, 7.443890, 100.000000, 0, 0.000000, 0);

-- junior apothecary holland waypoints
DELETE FROM `creature_movement` WHERE `id` = 28412;
UPDATE `creature` SET `position_x` = 2365.969971, `position_y` = 437.618011, `position_z` = 33.407398 WHERE `guid` = 28412;
REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(10665, 1, 2365.969971, 437.618011, 33.407398, 100.000000, 0, 0.000000, 0),
(10665, 2, 2367.060059, 433.787994, 33.544498, 100.000000, 0, 0.000000, 0),
(10665, 3, 2369.090088, 431.032013, 33.676498, 100.000000, 0, 0.000000, 0),
(10665, 4, 2372.830078, 429.571991, 33.926498, 100.000000, 0, 0.000000, 0),
(10665, 5, 2376.629883, 428.220001, 34.075401, 100.000000, 0, 0.000000, 0),
(10665, 6, 2380.320068, 426.527008, 34.108299, 100.000000, 0, 0.000000, 0),
(10665, 7, 2386.330078, 421.244995, 33.926498, 100.000000, 0, 0.000000, 0),
(10665, 8, 2388.659912, 417.984985, 33.926498, 100.000000, 0, 0.000000, 0),
(10665, 9, 2391.850098, 410.536987, 33.926498, 100.000000, 0, 0.000000, 0),
(10665, 10, 2394.780029, 402.990997, 33.959202, 100.000000, 0, 0.000000, 0),
(10665, 11, 2398.149902, 395.635010, 33.992298, 100.000000, 0, 0.000000, 0),
(10665, 12, 2401.360107, 388.230988, 33.986599, 100.000000, 0, 0.000000, 0),
(10665, 13, 2403.139893, 384.667999, 33.983700, 100.000000, 0, 0.000000, 0),
(10665, 14, 2407.889893, 378.109985, 34.014599, 100.000000, 0, 0.000000, 0),
(10665, 15, 2412.540039, 371.462006, 34.053398, 100.000000, 0, 0.000000, 0),
(10665, 16, 2417.969971, 365.505005, 33.961498, 100.000000, 0, 0.000000, 0),
(10665, 17, 2424.429932, 360.665009, 33.925400, 100.000000, 0, 0.000000, 0),
(10665, 18, 2427.879883, 358.557007, 33.958199, 100.000000, 0, 0.000000, 0),
(10665, 19, 2431.340088, 356.289001, 33.956200, 100.000000, 0, 0.000000, 0),
(10665, 20, 2428.969971, 354.721985, 33.879002, 100.000000, 0, 0.000000, 0),
(10665, 21, 2421.600098, 357.954010, 33.915298, 100.000000, 0, 0.000000, 0),
(10665, 22, 2415.120117, 362.803009, 33.915298, 100.000000, 0, 0.000000, 0),
(10665, 23, 2409.840088, 368.778992, 33.955101, 100.000000, 0, 0.000000, 0),
(10665, 24, 2405.429932, 375.571991, 33.946098, 100.000000, 0, 0.000000, 0),
(10665, 25, 2401.179932, 382.455994, 33.952301, 100.000000, 0, 0.000000, 0),
(10665, 26, 2397.719971, 389.651001, 33.992298, 100.000000, 0, 0.000000, 0),
(10665, 27, 2396.169922, 393.364990, 33.992298, 100.000000, 0, 0.000000, 0),
(10665, 28, 2392.850098, 400.704987, 33.970600, 100.000000, 0, 0.000000, 0),
(10665, 29, 2390.060059, 408.252014, 33.926498, 100.000000, 0, 0.000000, 0),
(10665, 30, 2387.179932, 415.795013, 33.926498, 100.000000, 0, 0.000000, 0),
(10665, 31, 2385.270020, 419.312988, 33.926498, 100.000000, 0, 0.000000, 0),
(10665, 32, 2382.560059, 422.309998, 34.120800, 100.000000, 0, 0.000000, 0),
(10665, 33, 2379.850098, 425.278015, 34.102600, 100.000000, 0, 0.000000, 0),
(10665, 34, 2376.949951, 427.907990, 34.014999, 100.000000, 0, 0.000000, 0),
(10665, 35, 2373.199951, 429.446014, 33.924900, 100.000000, 0, 0.000000, 0),
(10665, 36, 2369.290039, 430.542999, 33.768902, 100.000000, 0, 0.000000, 0),
(10665, 37, 2362.729980, 427.054993, 33.578400, 100.000000, 49000, 0.000000, 0),
(10665, 38, 2358.729980, 426.641998, 33.557899, 100.000000, 0, 0.000000, 0),
(10665, 39, 2354.750000, 427.447998, 33.463100, 100.000000, 0, 0.000000, 0),
(10665, 40, 2351.850098, 428.009003, 33.453400, 100.000000, 0, 0.000000, 0),
(10665, 41, 2345.800049, 423.050995, 33.701199, 100.000000, 0, 0.000000, 0),
(10665, 42, 2342.959961, 420.209991, 33.703400, 100.000000, 0, 0.000000, 0),
(10665, 43, 2340.560059, 416.954010, 33.703400, 100.000000, 0, 0.000000, 0),
(10665, 44, 2339.300049, 413.186005, 33.703400, 100.000000, 0, 0.000000, 0),
(10665, 45, 2338.989990, 409.157013, 33.703400, 100.000000, 0, 0.000000, 0),
(10665, 46, 2338.419922, 405.161987, 33.703400, 100.000000, 0, 0.000000, 0),
(10665, 47, 2336.919922, 401.423004, 33.706402, 100.000000, 0, 0.000000, 0),
(10665, 48, 2333.969971, 398.819000, 33.699299, 100.000000, 0, 0.000000, 0),
(10665, 49, 2330.159912, 397.509003, 33.684700, 100.000000, 0, 0.000000, 0),
(10665, 50, 2326.149902, 397.384003, 33.684700, 100.000000, 0, 0.000000, 0),
(10665, 51, 2322.120117, 397.502991, 33.684700, 100.000000, 0, 0.000000, 0),
(10665, 52, 2318.189941, 398.049988, 33.684700, 100.000000, 0, 0.000000, 0),
(10665, 53, 2321.000000, 399.040009, 33.684700, 100.000000, 0, 0.000000, 0),
(10665, 54, 2325.010010, 398.855011, 33.684700, 100.000000, 0, 0.000000, 0),
(10665, 55, 2329.020020, 398.912994, 33.684700, 100.000000, 0, 0.000000, 0),
(10665, 56, 2332.820068, 400.183990, 33.678902, 100.000000, 0, 0.000000, 0),
(10665, 57, 2335.879883, 402.632996, 33.707100, 100.000000, 0, 0.000000, 0),
(10665, 58, 2336.780029, 406.548004, 33.701801, 100.000000, 0, 0.000000, 0),
(10665, 59, 2337.149902, 410.598999, 33.713501, 100.000000, 0, 0.000000, 0),
(10665, 60, 2338.489990, 414.289001, 33.719002, 100.000000, 0, 0.000000, 0),
(10665, 61, 2340.810059, 417.601013, 33.703602, 100.000000, 0, 0.000000, 0),
(10665, 62, 2343.489990, 420.648987, 33.703400, 100.000000, 0, 0.000000, 0),
(10665, 63, 2346.209961, 423.584015, 33.695499, 100.000000, 0, 0.000000, 0),
(10665, 64, 2349.020020, 426.473999, 33.535000, 100.000000, 0, 0.000000, 0),
(10665, 65, 2351.169922, 429.661987, 33.453400, 100.000000, 0, 0.000000, 0),
(10665, 66, 2350.719971, 433.602997, 33.405300, 100.000000, 0, 0.000000, 0),
(10665, 67, 2351.080078, 437.614990, 33.405300, 100.000000, 0, 0.000000, 0),
(10665, 68, 2353.360107, 440.950989, 33.405300, 100.000000, 0, 0.000000, 0),
(10665, 69, 2356.830078, 442.640991, 33.405300, 100.000000, 0, 0.000000, 0),
(10665, 70, 2360.800049, 442.513000, 33.405300, 100.000000, 0, 0.000000, 0),
(10665, 71, 2364.320068, 440.877991, 33.405602, 100.000000, 0, 0.000000, 0);

-- muad waypoints
DELETE FROM `creature_movement` WHERE `id` = 43909;
REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(1910, 1, 2531.540039, 1394.829956, 3.200680, 100.000000, 0, 0.000000, 0),
(1910, 2, 2539.020020, 1391.949951, 4.296310, 100.000000, 0, 0.000000, 0),
(1910, 3, 2556.389893, 1399.160034, 2.862530, 100.000000, 0, 0.000000, 0),
(1910, 4, 2594.439941, 1388.790039, 1.080740, 100.000000, 0, 0.000000, 0),
(1910, 5, 2629.399902, 1358.010010, 4.051290, 100.000000, 0, 0.000000, 0),
(1910, 6, 2626.070068, 1356.560059, 5.020840, 100.000000, 0, 0.000000, 0),
(1910, 7, 2607.500000, 1353.130005, 12.164000, 100.000000, 0, 0.000000, 0),
(1910, 8, 2592.850098, 1349.650024, 18.093800, 100.000000, 0, 0.000000, 0),
(1910, 9, 2582.870117, 1346.959961, 24.864700, 100.000000, 0, 0.000000, 0),
(1910, 10, 2582.870117, 1346.959961, 24.864700, 2.722710, 25000, 0.000000, 0),
(1910, 11, 2586.050049, 1347.869995, 22.478201, 100.000000, 0, 0.000000, 0),
(1910, 12, 2599.590088, 1351.829956, 15.064400, 100.000000, 0, 0.000000, 0),
(1910, 13, 2618.419922, 1354.449951, 8.188930, 100.000000, 0, 0.000000, 0),
(1910, 14, 2626.760010, 1358.660034, 3.466730, 100.000000, 0, 0.000000, 0),
(1910, 15, 2630.239990, 1399.119995, 0.040187, 100.000000, 0, 0.000000, 0),
(1910, 16, 2620.610107, 1394.329956, -1.097210, 100.000000, 0, 0.000000, 0),
(1910, 17, 2609.659912, 1391.349976, 0.134599, 100.000000, 0, 0.000000, 0),
(1910, 18, 2592.739990, 1400.869995, 0.681812, 100.000000, 0, 0.000000, 0),
(1910, 19, 2577.570068, 1403.449951, 1.110780, 100.000000, 0, 0.000000, 0),
(1910, 20, 2566.040039, 1406.030029, 0.691871, 100.000000, 0, 0.000000, 0),
(1910, 21, 2569.659912, 1437.510010, -2.249850, 100.000000, 0, 0.000000, 0),
(1910, 22, 2579.399902, 1463.430054, -8.084580, 100.000000, 0, 0.000000, 0),
(1910, 23, 2585.679932, 1473.650024, -8.736290, 100.000000, 0, 0.000000, 0),
(1910, 24, 2598.620117, 1472.130005, -8.732930, 100.000000, 0, 0.000000, 0),
(1910, 25, 2597.649902, 1465.859985, -8.632930, 100.000000, 0, 0.000000, 0),
(1910, 26, 2598.620117, 1472.130005, -8.732930, 100.000000, 0, 0.000000, 0),
(1910, 27, 2585.679932, 1473.650024, -8.736290, 100.000000, 0, 0.000000, 0),
(1910, 28, 2579.399902, 1463.430054, -8.084580, 100.000000, 0, 0.000000, 0),
(1910, 29, 2569.659912, 1437.510010, -2.249850, 100.000000, 0, 0.000000, 0),
(1910, 30, 2527.969971, 1406.829956, 1.901120, 1.588250, 0, 0.000000, 0),
(1910, 31, 2527.969971, 1406.829956, 1.901120, 5.707230, 0, 0.000000, 0);

-- creature 44602 waypoints
UPDATE `creature` SET `movementtype` = 2 WHERE `guid` = 44602;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(44602, 1, 2553.739990, 613.882996, 25.597700, 100.000000, 0, 0.000000, 0),
(44602, 2, 2529.320068, 601.940002, 26.394100, 100.000000, 0, 0.000000, 0),
(44602, 3, 2489.729980, 604.429016, 30.867800, 100.000000, 20000, 0.000000, 0),
(44602, 4, 2496.719971, 594.533997, 30.594999, 100.000000, 0, 0.000000, 0),
(44602, 5, 2514.370117, 587.289978, 28.163700, 100.000000, 0, 0.000000, 0),
(44602, 6, 2526.050049, 576.786011, 26.290100, 100.000000, 0, 0.000000, 0),
(44602, 7, 2530.719971, 566.357971, 22.438999, 100.000000, 0, 0.000000, 0),
(44602, 8, 2533.560059, 556.247009, 17.903601, 100.000000, 0, 0.000000, 0),
(44602, 9, 2542.580078, 545.112976, 15.696900, 100.000000, 0, 0.000000, 0),
(44602, 10, 2547.979980, 539.213013, 15.892700, 100.000000, 0, 0.000000, 0),
(44602, 11, 2561.659912, 531.593018, 15.345200, 100.000000, 61000, 0.000000, 0),
(44602, 12, 2563.300049, 516.976990, 15.719800, 100.000000, 3000, 0.000000, 0),
(44602, 13, 2563.280029, 510.312012, 17.864799, 100.000000, 0, 0.000000, 0),
(44602, 14, 2576.659912, 518.820984, 15.811300, 1.797690, 0, 0.000000, 0),
(44602, 15, 2591.520020, 524.685974, 16.111300, 100.000000, 0, 0.000000, 0),
(44602, 16, 2620.870117, 537.442017, 19.768200, 100.000000, 0, 0.000000, 0);

-- creature 43614 waypoints
UPDATE `creature` SET `movementtype` = 2 WHERE `guid` = 43614;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(43614, 1, 2579.050049, 1390.079956, 1.873540, 100.000000, 0, 0.000000, 0),
(43614, 2, 2550.020020, 1391.989990, 4.783650, 100.000000, 0, 0.000000, 0),
(43614, 3, 2520.879883, 1392.170044, 3.834610, 100.000000, 0, 0.000000, 0),
(43614, 4, 2501.580078, 1390.550049, 5.357560, 100.000000, 0, 0.000000, 0),
(43614, 5, 2493.399902, 1386.790039, 7.425300, 100.000000, 0, 0.000000, 0),
(43614, 6, 2479.129883, 1369.199951, 13.208700, 100.000000, 10000, 0.000000, 0),
(43614, 7, 2486.629883, 1367.410034, 11.413800, 100.000000, 0, 0.000000, 0),
(43614, 8, 2512.810059, 1376.810059, 6.941400, 100.000000, 0, 0.000000, 0),
(43614, 9, 2530.139893, 1385.130005, 5.748500, 100.000000, 0, 0.000000, 0),
(43614, 10, 2547.239990, 1382.670044, 6.758240, 100.000000, 0, 0.000000, 0),
(43614, 11, 2555.620117, 1378.349976, 7.352780, 100.000000, 0, 0.000000, 0),
(43614, 12, 2563.090088, 1374.010010, 7.911560, 100.000000, 0, 0.000000, 0),
(43614, 13, 2570.149902, 1367.719971, 9.687360, 100.000000, 0, 0.000000, 0),
(43614, 14, 2579.010010, 1364.260010, 9.503630, 100.000000, 0, 0.000000, 0),
(43614, 15, 2590.639893, 1366.420044, 6.238910, 100.000000, 0, 0.000000, 0),
(43614, 16, 2590.510010, 1367.359985, 6.010140, 100.000000, 0, 0.000000, 0),
(43614, 17, 2590.510010, 1367.359985, 6.010140, 2.059490, 18000, 0.000000, 0),
(43614, 18, 2593.120117, 1365.439941, 4.720950, 100.000000, 0, 0.000000, 0),
(43614, 19, 2600.139893, 1364.949951, 2.840090, 100.000000, 0, 0.000000, 0),
(43614, 20, 2602.899902, 1370.810059, 1.938480, 100.000000, 0, 0.000000, 0);

-- creature 44956 waypoints
UPDATE `creature` SET `movementtype` = 2 WHERE `guid` = 44956;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(44956, 1, 1999.319946, 1552.959961, 78.188202, 100.000000, 0, 0.000000, 0),
(44956, 2, 1999.359985, 1544.939941, 77.811996, 100.000000, 0, 0.000000, 0),
(44956, 3, 1992.000000, 1534.160034, 80.641403, 100.000000, 0, 0.000000, 0),
(44956, 4, 1992.459961, 1523.890015, 80.000999, 100.000000, 0, 0.000000, 0),
(44956, 5, 1998.339966, 1515.180054, 76.617401, 100.000000, 0, 0.000000, 0),
(44956, 6, 2003.050049, 1500.709961, 72.973396, 100.000000, 0, 0.000000, 0),
(44956, 7, 1990.280029, 1494.170044, 80.769600, 100.000000, 0, 0.000000, 0),
(44956, 8, 1968.810059, 1482.270020, 83.039200, 100.000000, 0, 0.000000, 0),
(44956, 9, 1964.959961, 1481.130005, 82.632301, 100.000000, 0, 0.000000, 0),
(44956, 10, 1965.430054, 1480.430054, 82.559601, 100.000000, 36000, 10, 0),
(44956, 11, 1966.699951, 1495.239990, 86.616402, 100.000000, 0, 0.000000, 0),
(44956, 12, 1946.800049, 1512.099976, 88.099899, 100.000000, 0, 0.000000, 0),
(44956, 13, 1921.689941, 1524.709961, 87.014099, 100.000000, 0, 0.000000, 0),
(44956, 14, 1917.750000, 1546.989990, 86.970299, 100.000000, 0, 0.000000, 0),
(44956, 15, 1930.569946, 1571.359985, 83.864998, 100.000000, 0, 0.000000, 0),
(44956, 16, 1932.560059, 1590.650024, 83.130402, 100.000000, 0, 0.000000, 0),
(44956, 17, 1942.140015, 1594.859985, 82.914597, 100.000000, 0, 0.000000, 0),
(44956, 18, 1956.760010, 1589.449951, 82.000999, 100.000000, 0, 0.000000, 0),
(44956, 19, 1978.599976, 1579.400024, 80.511902, 100.000000, 0, 0.000000, 0),
(44956, 20, 1987.530029, 1572.369995, 79.362198, 100.000000, 0, 0.000000, 0);

-- fellicent shade waypoints
DELETE FROM `creature_movement` WHERE `id` = 42143;
REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(10358, 1, 1998.459961, -444.433014, 34.650002, 100.000000, 0, 0.000000, 0),
(10358, 2, 2016.390015, -444.684998, 35.136501, 100.000000, 0, 0.000000, 0),
(10358, 3, 2026.780029, -437.490997, 34.967400, 100.000000, 0, 0.000000, 0),
(10358, 4, 2035.780029, -427.492004, 35.572701, 100.000000, 0, 0.000000, 0),
(10358, 5, 2046.959961, -403.450989, 35.572701, 100.000000, 0, 0.000000, 0),
(10358, 6, 2048.360107, -381.237000, 35.553902, 100.000000, 0, 0.000000, 0),
(10358, 7, 2051.479980, -363.677002, 35.565300, 100.000000, 0, 0.000000, 0),
(10358, 8, 2028.050049, -353.893005, 35.576401, 100.000000, 0, 0.000000, 0),
(10358, 9, 1996.729980, -354.313995, 35.577202, 100.000000, 0, 0.000000, 0),
(10358, 10, 1969.780029, -355.539001, 35.577202, 100.000000, 0, 0.000000, 0),
(10358, 11, 1957.260010, -381.667999, 35.476398, 100.000000, 0, 0.000000, 0),
(10358, 12, 1954.369995, -403.868011, 35.566601, 100.000000, 0, 0.000000, 0),
(10358, 13, 1957.650024, -421.329987, 35.577202, 100.000000, 0, 0.000000, 0),
(10358, 14, 1975.920044, -427.720001, 35.532001, 100.000000, 0, 0.000000, 0);

-- creature 44904 waypoints
UPDATE `creature` SET `movementtype` = 2 WHERE `guid` = 44904;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(44904, 1, 2921.399902, -666.919983, 141.957001, 100.000000, 0, 0.000000, 0),
(44904, 2, 2912.080078, -659.835022, 139.822006, 100.000000, 0, 0.000000, 0),
(44904, 3, 2900.649902, -659.629028, 138.507004, 100.000000, 0, 0.000000, 0),
(44904, 4, 2865.209961, -652.671021, 137.882004, 100.000000, 0, 0.000000, 0),
(44904, 5, 2832.699951, -659.427002, 138.514999, 100.000000, 0, 0.000000, 0),
(44904, 6, 2856.110107, -653.330994, 138.035995, 100.000000, 0, 0.000000, 0),
(44904, 7, 2895.600098, -659.362976, 138.188004, 100.000000, 0, 0.000000, 0),
(44904, 8, 2907.500000, -658.645996, 139.248001, 100.000000, 0, 0.000000, 0),
(44904, 9, 2917.479980, -663.940979, 140.927002, 100.000000, 0, 0.000000, 0),
(44904, 10, 2933.780029, -660.729004, 147.190002, 100.000000, 0, 0.000000, 0),
(44904, 11, 2934.510010, -646.377991, 148.104996, 100.000000, 0, 0.000000, 0),
(44904, 12, 2950.810059, -627.200989, 156.764008, 100.000000, 0, 0.000000, 0),
(44904, 13, 2930.139893, -629.682983, 151.091995, 100.000000, 0, 0.000000, 0),
(44904, 14, 2910.340088, -626.849976, 149.828003, 100.000000, 0, 0.000000, 0),
(44904, 15, 2895.330078, -622.968018, 148.416000, 100.000000, 0, 0.000000, 0),
(44904, 16, 2890.340088, -618.565002, 147.664993, 100.000000, 0, 0.000000, 0),
(44904, 17, 2878.590088, -610.059998, 148.024994, 100.000000, 0, 0.000000, 0),
(44904, 18, 2860.969971, -594.599976, 157.897995, 100.000000, 0, 0.000000, 0),
(44904, 19, 2872.939941, -606.572998, 148.722000, 100.000000, 0, 0.000000, 0),
(44904, 20, 2882.649902, -612.020020, 147.684998, 100.000000, 0, 0.000000, 0),
(44904, 21, 2890.570068, -618.901001, 147.845993, 100.000000, 0, 0.000000, 0),
(44904, 22, 2899.659912, -624.250000, 149.283997, 100.000000, 0, 0.000000, 0),
(44904, 23, 2922.889893, -629.370972, 150.339996, 100.000000, 0, 0.000000, 0),
(44904, 24, 2949.659912, -625.786011, 156.160995, 100.000000, 0, 0.000000, 0),
(44904, 25, 2936.530029, -640.036987, 149.384003, 100.000000, 0, 0.000000, 0),
(44904, 26, 2935.389893, -654.650024, 148.438995, 100.000000, 0, 0.000000, 0),
(44904, 27, 2923.389893, -665.919006, 142.460007, 100.000000, 0, 0.000000, 0);

-- creature 127800 waypoints
REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `display_id`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movementtype`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES
(127800, 1529, 0, 0, 0, 0, 0, 0, 1984.689941, -421.868988, 35.517899, 4.84612, 300, 300, 5, 100, 100, 2, 0, 0, 0, 10);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(127800, 1, 1984.689941, -421.868988, 35.517899, 100.000000, 0, 0.000000, 0),
(127800, 2, 2004.699951, -424.294006, 35.467400, 100.000000, 0, 0.000000, 0),
(127800, 3, 2016.750000, -424.872986, 35.458099, 100.000000, 0, 0.000000, 0),
(127800, 4, 2036.760010, -422.752014, 35.541100, 100.000000, 0, 0.000000, 0),
(127800, 5, 2032.859985, -401.798004, 35.576500, 100.000000, 0, 0.000000, 0),
(127800, 6, 2011.119995, -396.321014, 35.577202, 100.000000, 0, 0.000000, 0),
(127800, 7, 2001.859985, -389.286987, 35.577202, 100.000000, 0, 0.000000, 0),
(127800, 8, 1982.890015, -386.464996, 35.577202, 100.000000, 0, 0.000000, 0),
(127800, 9, 1968.199951, -380.808014, 35.502399, 100.000000, 0, 0.000000, 0),
(127800, 10, 1965.780029, -370.848999, 35.539700, 100.000000, 0, 0.000000, 0),
(127800, 11, 1968.930054, -355.010010, 35.577202, 100.000000, 0, 0.000000, 0),
(127800, 12, 1975.640015, -345.809998, 35.577202, 100.000000, 0, 0.000000, 0),
(127800, 13, 1987.109985, -344.661987, 35.577202, 100.000000, 0, 0.000000, 0),
(127800, 14, 1998.469971, -348.429993, 35.577202, 100.000000, 0, 0.000000, 0),
(127800, 15, 2002.739990, -357.973999, 35.577202, 100.000000, 0, 0.000000, 0),
(127800, 16, 2002.599976, -370.029999, 35.577202, 100.000000, 0, 0.000000, 0),
(127800, 17, 1996.410034, -379.735992, 35.577202, 100.000000, 0, 0.000000, 0),
(127800, 18, 1994.000000, -386.977997, 35.577202, 100.000000, 0, 0.000000, 0),
(127800, 19, 1997.900024, -402.139008, 35.535099, 100.000000, 0, 0.000000, 0),
(127800, 20, 2019.280029, -408.216003, 35.470600, 100.000000, 0, 0.000000, 0),
(127800, 21, 2035.329956, -407.278992, 35.548100, 100.000000, 0, 0.000000, 0),
(127800, 22, 2043.290039, -394.911011, 35.555500, 100.000000, 0, 0.000000, 0),
(127800, 23, 2048.449951, -384.018005, 35.549702, 100.000000, 0, 0.000000, 0),
(127800, 24, 2048.459961, -360.403992, 35.568100, 100.000000, 0, 0.000000, 0),
(127800, 25, 2041.000000, -352.932007, 35.571999, 100.000000, 0, 0.000000, 0),
(127800, 26, 2023.939941, -366.196991, 35.576500, 100.000000, 0, 0.000000, 0),
(127800, 27, 2017.699951, -371.161987, 35.577202, 100.000000, 0, 0.000000, 0),
(127800, 28, 1998.859985, -369.377991, 35.577202, 100.000000, 0, 0.000000, 0),
(127800, 29, 1978.949951, -366.230988, 35.577202, 100.000000, 0, 0.000000, 0),
(127800, 30, 1968.069946, -370.234985, 35.511200, 100.000000, 0, 0.000000, 0),
(127800, 31, 1958.439941, -388.308990, 35.476398, 100.000000, 0, 0.000000, 0),
(127800, 32, 1962.319946, -376.782013, 35.476398, 100.000000, 0, 0.000000, 0),
(127800, 33, 1974.050049, -367.046997, 35.559502, 100.000000, 0, 0.000000, 0),
(127800, 34, 1989.630005, -367.645996, 35.577202, 100.000000, 0, 0.000000, 0),
(127800, 35, 2009.270020, -372.333008, 35.577202, 100.000000, 0, 0.000000, 0),
(127800, 36, 2020.089966, -369.665985, 35.577202, 100.000000, 0, 0.000000, 0),
(127800, 37, 2033.819946, -355.140015, 35.573200, 100.000000, 0, 0.000000, 0),
(127800, 38, 2043.479980, -354.062012, 35.571999, 100.000000, 0, 0.000000, 0),
(127800, 39, 2049.770020, -375.117004, 35.554600, 100.000000, 0, 0.000000, 0),
(127800, 40, 2047.189941, -386.503998, 35.549702, 100.000000, 0, 0.000000, 0),
(127800, 41, 2039.079956, -405.026001, 35.570000, 100.000000, 0, 0.000000, 0),
(127800, 42, 2028.489990, -408.201996, 35.491798, 100.000000, 0, 0.000000, 0),
(127800, 43, 2004.410034, -406.661011, 35.506699, 100.000000, 0, 0.000000, 0),
(127800, 44, 1994.979980, -395.834015, 35.561901, 100.000000, 0, 0.000000, 0),
(127800, 45, 1994.359985, -384.208008, 35.577202, 100.000000, 0, 0.000000, 0),
(127800, 46, 1998.349976, -377.726013, 35.577202, 100.000000, 0, 0.000000, 0),
(127800, 47, 2002.800049, -367.212006, 35.577202, 100.000000, 0, 0.000000, 0),
(127800, 48, 2002.540039, -355.164001, 35.577202, 100.000000, 0, 0.000000, 0),
(127800, 49, 1992.099976, -345.628998, 35.577202, 100.000000, 0, 0.000000, 0),
(127800, 50, 1980.160034, -344.394989, 35.577202, 100.000000, 0, 0.000000, 0),
(127800, 51, 1973.280029, -347.571991, 35.577202, 100.000000, 0, 0.000000, 0),
(127800, 52, 1967.369995, -361.752991, 35.577202, 100.000000, 0, 0.000000, 0),
(127800, 53, 1965.439941, -373.654999, 35.517502, 100.000000, 0, 0.000000, 0),
(127800, 54, 1974.219971, -384.237000, 35.548500, 100.000000, 0, 0.000000, 0),
(127800, 55, 1993.819946, -386.661011, 35.577202, 100.000000, 0, 0.000000, 0),
(127800, 56, 2006.900024, -394.209991, 35.577202, 100.000000, 0, 0.000000, 0),
(127800, 57, 2026.079956, -397.670990, 35.577202, 100.000000, 0, 0.000000, 0),
(127800, 58, 2041.069946, -418.968994, 35.573200, 100.000000, 0, 0.000000, 0),
(127800, 59, 2025.989990, -424.329987, 35.481602, 100.000000, 0, 0.000000, 0),
(127800, 60, 2013.890015, -424.826996, 35.458099, 100.000000, 0, 0.000000, 0),
(127800, 61, 1989.709961, -422.476990, 35.505299, 100.000000, 0, 0.000000, 0),
(127800, 62, 1965.489990, -421.842987, 35.563702, 100.000000, 0, 0.000000, 0),
(127800, 63, 1959.530029, -411.394989, 35.577202, 100.000000, 0, 0.000000, 0),
(127800, 64, 1962.709961, -404.889008, 35.577202, 100.000000, 0, 0.000000, 0),
(127800, 65, 1976.810059, -402.144012, 35.517899, 100.000000, 0, 0.000000, 0),
(127800, 66, 1968.689941, -401.799011, 35.564201, 100.000000, 0, 0.000000, 0),
(127800, 67, 1962.069946, -405.445007, 35.577202, 100.000000, 0, 0.000000, 0),
(127800, 68, 1959.660034, -416.210999, 35.577202, 100.000000, 0, 0.000000, 0),
(127800, 69, 1982.369995, -421.865997, 35.523399, 100.000000, 0, 0.000000, 0);

-- creature 38034 waypoints
UPDATE `creature` SET `position_x` = 1973.520020, `position_y` = -441.774994, `position_z` = 35.389900, `movementtype` = 2 WHERE `guid` = 38034;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(38034, 1, 1973.520020, -441.774994, 35.389900, 100.000000, 0, 0.000000, 0),
(38034, 2, 1957.410034, -441.023010, 35.499802, 100.000000, 0, 0.000000, 0),
(38034, 3, 1952.300049, -448.950012, 35.525002, 100.000000, 0, 0.000000, 0),
(38034, 4, 1952.550049, -440.765015, 35.525002, 100.000000, 0, 0.000000, 0),
(38034, 5, 1951.890015, -448.819000, 35.525002, 100.000000, 0, 0.000000, 0),
(38034, 6, 1952.739990, -446.402008, 35.525002, 100.000000, 0, 0.000000, 0),
(38034, 7, 1968.030029, -441.519012, 35.427299, 100.000000, 0, 0.000000, 0),
(38034, 8, 1973.189941, -464.393005, 34.614399, 100.000000, 0, 0.000000, 0),
(38034, 9, 1968.510010, -467.618988, 34.579399, 100.000000, 0, 0.000000, 0),
(38034, 10, 1978.270020, -467.808014, 34.563400, 100.000000, 0, 0.000000, 0),
(38034, 11, 1983.109985, -437.075989, 34.926498, 100.000000, 0, 0.000000, 0),
(38034, 12, 2011.099976, -433.371002, 35.339401, 100.000000, 0, 0.000000, 0),
(38034, 13, 2015.770020, -386.192993, 35.577202, 100.000000, 0, 0.000000, 0),
(38034, 14, 2015.589966, -430.638000, 35.345299, 100.000000, 0, 0.000000, 0),
(38034, 15, 1986.349976, -433.278992, 35.386600, 100.000000, 0, 0.000000, 0),
(38034, 16, 1983.699951, -465.205994, 34.559101, 100.000000, 0, 0.000000, 0),
(38034, 17, 1966.609985, -467.623993, 34.607700, 100.000000, 0, 0.000000, 0),
(38034, 18, 1968.099976, -467.614990, 34.582600, 100.000000, 0, 0.000000, 0);

-- creature 44787 waypoints
UPDATE `creature` SET `movementtype` = 2 WHERE `guid` = 44787;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(44787, 1, 2938.719971, -700.862976, 148.848007, 100.000000, 0, 0.000000, 0),
(44787, 2, 2936.370117, -693.372986, 147.589996, 100.000000, 0, 0.000000, 0),
(44787, 3, 2923.370117, -679.312012, 142.516998, 100.000000, 0, 0.000000, 0),
(44787, 4, 2909.239990, -673.372009, 139.149994, 100.000000, 0, 0.000000, 0),
(44787, 5, 2884.409912, -675.432983, 137.259003, 100.000000, 0, 0.000000, 0),
(44787, 6, 2880.409912, -674.797974, 137.259003, 100.000000, 0, 0.000000, 0),
(44787, 7, 2880.409912, -674.797974, 137.259003, 100.000000, 5000, 0.000000, 0),
(44787, 8, 2879.239990, -678.106018, 137.259003, 100.000000, 0, 0.000000, 0),
(44787, 9, 2879.149902, -674.559021, 137.259003, 100.000000, 6000, 0.000000, 0),
(44787, 10, 2879.820068, -677.909973, 137.259003, 100.000000, 10000, 0.000000, 0),
(44787, 11, 2880.040039, -677.400024, 137.259003, 100.000000, 0, 0.000000, 0),
(44787, 12, 2883.330078, -677.083984, 137.259003, 100.000000, 8000, 0.000000, 0),
(44787, 13, 2879.399902, -677.400024, 137.259003, 100.000000, 4000, 0.000000, 0),
(44787, 14, 2879.979980, -677.125000, 137.259003, 100.000000, 0, 0.000000, 0),
(44787, 15, 2879.050049, -674.364990, 137.259003, 100.000000, 0, 0.000000, 0),
(44787, 16, 2882.469971, -676.492004, 137.259003, 100.000000, 0, 0.000000, 0),
(44787, 17, 2878.959961, -674.257019, 137.259003, 100.000000, 6000, 0.000000, 0),
(44787, 18, 2879.429932, -678.205994, 137.259003, 100.000000, 5000, 0.000000, 0),
(44787, 19, 2890.739990, -673.921021, 137.429993, 100.000000, 0, 0.000000, 0),
(44787, 20, 2902.590088, -672.489990, 138.360001, 100.000000, 0, 0.000000, 0),
(44787, 21, 2917.969971, -676.020996, 140.953995, 100.000000, 0, 0.000000, 0),
(44787, 22, 2927.620117, -682.380005, 143.979996, 100.000000, 0, 0.000000, 0),
(44787, 23, 2936.850098, -694.788025, 147.957001, 100.000000, 0, 0.000000, 0),
(44787, 24, 2938.600098, -706.033020, 149.755997, 100.000000, 0, 0.000000, 0),
(44787, 25, 2931.929932, -728.760010, 153.292007, 100.000000, 0, 0.000000, 0),
(44787, 26, 2927.709961, -735.013000, 154.001007, 100.000000, 0, 0.000000, 0),
(44787, 27, 2919.989990, -736.534973, 154.035995, 100.000000, 0, 0.000000, 0),
(44787, 28, 2908.850098, -744.140015, 154.035995, 100.000000, 0, 0.000000, 0),
(44787, 29, 2907.689941, -747.838013, 154.035995, 100.000000, 0, 0.000000, 0),
(44787, 30, 2907.689941, -747.838013, 154.035995, 3.490660, 43000, 0.000000, 0),
(44787, 31, 2913.419922, -753.547974, 154.035995, 100.000000, 0, 0.000000, 0),
(44787, 32, 2923.770020, -756.820984, 154.035995, 100.000000, 0, 0.000000, 0),
(44787, 33, 2929.439941, -752.038025, 154.035995, 100.000000, 0, 0.000000, 0),
(44787, 34, 2930.979980, -744.976990, 154.035995, 100.000000, 0, 0.000000, 0),
(44787, 35, 2929.989990, -741.057007, 154.035995, 100.000000, 0, 0.000000, 0),
(44787, 36, 2938.530029, -710.724976, 150.296997, 100.000000, 0, 0.000000, 0);

-- creature 112617 waypoints
REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `display_id`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movementtype`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES
(112617, 1537, 0, 0, 0, 0, 0, 0, 2154.770020, -569.606995, 78.793098, 1.18866, 300, 300, 5, 100, 0, 2, 0, 0, 0, 10);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(112617, 1, 2154.770020, -569.606995, 78.793098, 1.692970, 35000, 0.000000, 0),
(112617, 2, 2156.199951, -573.388977, 79.002800, 100.000000, 0, 0.000000, 0),
(112617, 3, 2177.790039, -612.132996, 80.850304, 100.000000, 0, 0.000000, 0),
(112617, 4, 2199.459961, -643.046997, 78.311302, 100.000000, 19000, 0.000000, 0),
(112617, 5, 2188.199951, -621.755005, 81.083397, 100.000000, 0, 0.000000, 0),
(112617, 6, 2173.820068, -597.393005, 79.661400, 100.000000, 0, 0.000000, 0),
(112617, 7, 2156.820068, -574.905029, 79.002800, 100.000000, 0, 0.000000, 0),
(112617, 8, 2154.770020, -569.606995, 78.793098, 100.000000, 0, 0.000000, 0);

 -- gregor agamand waypoints
DELETE FROM `creature_movement` WHERE `id` = 44626;
REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(1654, 1, 2959.070068, 922.611023, 113.945000, 100.000000, 0, 0.000000, 0),
(1654, 2, 2962.919922, 931.072998, 115.188004, 100.000000, 0, 0.000000, 0),
(1654, 3, 2965.489990, 949.255981, 117.987000, 100.000000, 0, 0.000000, 0),
(1654, 4, 2954.199951, 957.406006, 119.911003, 100.000000, 0, 0.000000, 0),
(1654, 5, 2951.370117, 965.901978, 122.272003, 100.000000, 0, 0.000000, 0),
(1654, 6, 2951.909912, 964.145020, 122.200996, 100.000000, 0, 0.000000, 0),
(1654, 7, 2952.439941, 962.817017, 121.596001, 100.000000, 0, 0.000000, 0),
(1654, 8, 2951.770020, 964.077026, 122.210999, 100.000000, 0, 0.000000, 0),
(1654, 9, 2951.120117, 966.916016, 122.267998, 100.000000, 0, 0.000000, 0),
(1654, 10, 2950.129883, 965.224976, 122.394997, 100.000000, 33000, 10, 0),
(1654, 11, 2952.679932, 961.093018, 121.012001, 100.000000, 0, 0.000000, 0),
(1654, 12, 2959.840088, 960.581970, 118.567001, 100.000000, 0, 0.000000, 0),
(1654, 13, 2963.610107, 964.591980, 118.065002, 100.000000, 0, 0.000000, 0),
(1654, 14, 2962.879883, 976.780029, 117.087997, 100.000000, 0, 0.000000, 0),
(1654, 15, 2946.750000, 998.012024, 109.945999, 100.000000, 0, 0.000000, 0),
(1654, 16, 2934.199951, 1006.369995, 105.875000, 100.000000, 0, 0.000000, 0),
(1654, 17, 2922.179932, 1008.979980, 105.603996, 100.000000, 0, 0.000000, 0),
(1654, 18, 2903.300049, 1008.609985, 108.513000, 100.000000, 19000, 0.000000, 0),
(1654, 19, 2901.199951, 999.479980, 109.711998, 100.000000, 0, 0.000000, 0),
(1654, 20, 2900.550049, 955.877014, 115.314003, 100.000000, 0, 0.000000, 0),
(1654, 21, 2902.889893, 946.817993, 115.357002, 100.000000, 0, 0.000000, 0),
(1654, 22, 2908.879883, 932.265991, 115.023003, 100.000000, 0, 0.000000, 0),
(1654, 23, 2921.330078, 923.346008, 115.512001, 100.000000, 0, 0.000000, 0),
(1654, 24, 2928.489990, 917.203979, 115.902000, 100.000000, 0, 0.000000, 0),
(1654, 25, 2929.949951, 899.906982, 117.372002, 100.000000, 0, 0.000000, 0),
(1654, 26, 2928.090088, 896.679016, 117.983002, 100.000000, 0, 0.000000, 0),
(1654, 27, 2928.050049, 895.424011, 118.396004, 100.000000, 16000, 10, 0),
(1654, 28, 2932.030029, 906.794006, 116.166000, 100.000000, 0, 0.000000, 0),
(1654, 29, 2939.899902, 916.091003, 115.817001, 100.000000, 0, 0.000000, 0),
(1654, 30, 2957.449951, 922.138977, 114.213997, 100.000000, 0, 0.000000, 0),
(1654, 31, 2963.479980, 932.302002, 115.379997, 100.000000, 0, 0.000000, 0);

-- creature 44580 waypoints
UPDATE `creature` SET `movementtype` = 2 WHERE `guid` = 44580;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(44580, 1, 1795.670044, 670.215027, 41.477001, 100.000000, 0, 0.000000, 0),
(44580, 2, 1800.339966, 650.656982, 39.173599, 100.000000, 0, 0.000000, 0),
(44580, 3, 1801.479980, 630.968994, 38.703201, 100.000000, 0, 0.000000, 0),
(44580, 4, 1795.020020, 608.377991, 39.742401, 100.000000, 0, 0.000000, 0),
(44580, 5, 1803.079956, 608.142029, 40.000099, 100.000000, 0, 0.000000, 0),
(44580, 6, 1821.599976, 601.223999, 42.090302, 100.000000, 0, 0.000000, 0),
(44580, 7, 1826.380005, 594.995972, 42.239700, 100.000000, 17000, 0.000000, 0),
(44580, 8, 1819.260010, 622.088989, 39.151901, 100.000000, 0, 0.000000, 0),
(44580, 9, 1807.000000, 660.507019, 40.075401, 100.000000, 0, 0.000000, 0),
(44580, 10, 1795.510010, 673.999023, 41.895802, 100.000000, 0, 0.000000, 0),
(44580, 11, 1787.489990, 679.973022, 42.976799, 100.000000, 0, 0.000000, 0),
(44580, 12, 1784.810059, 681.965027, 43.102001, 100.000000, 0, 0.000000, 0),
(44580, 13, 1784.810059, 681.965027, 43.102001, 5.113810, 36000, 0.000000, 0),
(44580, 14, 1793.040039, 673.067017, 42.080299, 100.000000, 0, 0.000000, 0);

-- creature 33699 waypoints
UPDATE `creature` SET `movementtype` = 2 WHERE `guid` = 33699;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(33699, 1, 2490.500000, -897.067017, 59.759102, 100.000000, 0, 0.000000, 0),
(33699, 2, 2493.520020, -908.606995, 61.444901, 100.000000, 0, 0.000000, 0),
(33699, 3, 2502.090088, -926.525024, 64.801498, 100.000000, 0, 0.000000, 0),
(33699, 4, 2527.889893, -943.526978, 69.484497, 100.000000, 0, 0.000000, 0),
(33699, 5, 2535.459961, -944.760986, 70.705101, 100.000000, 0, 0.000000, 0),
(33699, 6, 2549.219971, -938.356995, 67.738098, 100.000000, 0, 0.000000, 0),
(33699, 7, 2576.530029, -934.690002, 70.125504, 100.000000, 0, 0.000000, 0),
(33699, 8, 2588.459961, -924.958008, 68.413300, 100.000000, 0, 0.000000, 0),
(33699, 9, 2595.250000, -908.513000, 59.634300, 100.000000, 0, 0.000000, 0),
(33699, 10, 2600.760010, -903.586975, 57.478100, 100.000000, 11000, 0.000000, 0),
(33699, 11, 2600.139893, -899.666016, 56.841702, 100.000000, 0, 0.000000, 0),
(33699, 12, 2594.689941, -889.476990, 55.759499, 100.000000, 0, 0.000000, 0),
(33699, 13, 2584.270020, -884.591980, 55.010799, 100.000000, 0, 0.000000, 0),
(33699, 14, 2562.570068, -899.831970, 55.599300, 100.000000, 0, 0.000000, 0),
(33699, 15, 2540.270020, -896.874023, 56.408501, 100.000000, 0, 0.000000, 0),
(33699, 16, 2527.229980, -894.942017, 55.918900, 100.000000, 0, 0.000000, 0),
(33699, 17, 2521.899902, -899.023987, 56.239201, 100.000000, 0, 0.000000, 0),
(33699, 18, 2521.899902, -899.023987, 56.239201, 5.707230, 54000, 0.000000, 0),
(33699, 19, 2518.449951, -896.729980, 55.909599, 100.000000, 0, 0.000000, 0);

-- creature 44809 waypoints
UPDATE `creature` SET `movementtype` = 2 WHERE `guid` = 44809;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(44809, 1, 2967.570068, 333.307007, 7.976890, 5.689770, 87000, 0.000000, 0),
(44809, 2, 2967.110107, 329.322998, 7.833770, 100.000000, 0, 0.000000, 0),
(44809, 3, 2959.030029, 323.513000, 7.900030, 100.000000, 0, 0.000000, 0),
(44809, 4, 2940.750000, 326.917999, 13.643200, 100.000000, 0, 0.000000, 0),
(44809, 5, 2933.810059, 326.998993, 17.364401, 100.000000, 0, 0.000000, 0),
(44809, 6, 2919.969971, 314.287994, 21.737600, 100.000000, 0, 0.000000, 0),
(44809, 7, 2905.919922, 309.023010, 26.483500, 100.000000, 0, 0.000000, 0),
(44809, 8, 2895.629883, 311.875000, 28.025600, 100.000000, 20000, 0.000000, 0),
(44809, 9, 2911.250000, 311.722992, 24.490999, 100.000000, 0, 0.000000, 0),
(44809, 10, 2929.080078, 324.725006, 19.385401, 100.000000, 0, 0.000000, 0),
(44809, 11, 2938.729980, 326.859985, 14.578700, 100.000000, 0, 0.000000, 0),
(44809, 12, 2948.860107, 323.794006, 9.158530, 100.000000, 0, 0.000000, 0),
(44809, 13, 2979.110107, 318.588989, 6.215050, 100.000000, 16000, 10, 0),
(44809, 14, 2979.929932, 321.161987, 6.582140, 100.000000, 0, 0.000000, 0);

-- creature 44975 waypoints
UPDATE `creature` SET `movementtype` = 2 WHERE `guid` = 44975;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(44975, 1, 1787.050049, 1392.479980, 90.802101, 100.000000, 0, 0.000000, 0),
(44975, 2, 1797.520020, 1394.219971, 85.092201, 100.000000, 0, 0.000000, 0),
(44975, 3, 1835.949951, 1399.420044, 80.087898, 100.000000, 0, 0.000000, 0),
(44975, 4, 1861.290039, 1405.599976, 81.655602, 100.000000, 0, 0.000000, 0),
(44975, 5, 1857.400024, 1405.819946, 81.671204, 100.000000, 33000, 10, 0),
(44975, 6, 1861.290039, 1405.599976, 81.655602, 100.000000, 0, 0.000000, 0),
(44975, 7, 1835.949951, 1399.420044, 80.087898, 100.000000, 0, 0.000000, 0),
(44975, 8, 1797.520020, 1394.219971, 85.092201, 100.000000, 0, 0.000000, 0),
(44975, 9, 1787.050049, 1392.479980, 90.802101, 100.000000, 0, 0.000000, 0);

-- creature 45178 waypoints
UPDATE `creature` SET `movementtype` = 2 WHERE `guid` = 45178;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(45178, 1, 2200.639893, 558.809021, 31.001900, 100.000000, 0, 0.000000, 0),
(45178, 2, 2201.800049, 570.721985, 28.703600, 100.000000, 0, 0.000000, 0),
(45178, 3, 2203.590088, 590.739014, 26.728800, 100.000000, 0, 0.000000, 0),
(45178, 4, 2204.449951, 610.833008, 25.086100, 100.000000, 0, 0.000000, 0),
(45178, 5, 2205.040039, 630.211975, 24.821301, 100.000000, 0, 0.000000, 0),
(45178, 6, 2206.050049, 628.783997, 24.821301, 100.000000, 0, 0.000000, 0),
(45178, 7, 2204.270020, 627.791016, 24.821301, 100.000000, 0, 0.000000, 0),
(45178, 8, 2205.260010, 630.106018, 24.821301, 100.000000, 0, 0.000000, 0),
(45178, 9, 2206.090088, 633.685974, 24.858299, 100.000000, 13000, 10, 0),
(45178, 10, 2204.439941, 610.411011, 25.138800, 100.000000, 0, 0.000000, 0),
(45178, 11, 2203.550049, 590.257019, 26.746099, 100.000000, 0, 0.000000, 0),
(45178, 12, 2201.750000, 570.275024, 28.731600, 100.000000, 0, 0.000000, 0),
(45178, 13, 2198.639893, 554.903015, 32.095600, 100.000000, 0, 0.000000, 0),
(45178, 14, 2193.360107, 544.559021, 35.183701, 100.000000, 0, 0.000000, 0);

-- thurman agaman waypoints
DELETE FROM `creature_movement` WHERE `id`  = 44988;
REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(1656, 1, 2878.919922, 1073.579956, 109.378998, 100.000000, 0, 0.000000, 0),
(1656, 2, 2868.330078, 1056.849976, 112.879997, 100.000000, 0, 0.000000, 0),
(1656, 3, 2825.260010, 1050.829956, 110.727997, 100.000000, 0, 0.000000, 0),
(1656, 4, 2786.459961, 1060.020020, 110.607002, 100.000000, 0, 0.000000, 0),
(1656, 5, 2777.760010, 1058.959961, 110.177002, 100.000000, 23000, 0.000000, 0),
(1656, 6, 2794.919922, 1048.229980, 110.914001, 100.000000, 0, 0.000000, 0),
(1656, 7, 2842.719971, 1043.680054, 113.485001, 100.000000, 0, 0.000000, 0),
(1656, 8, 2876.060059, 1076.890015, 110.238998, 100.000000, 0, 0.000000, 0),
(1656, 9, 2882.850098, 1091.140015, 109.758003, 100.000000, 0, 0.000000, 0),
(1656, 10, 2881.939941, 1098.619995, 111.068001, 100.000000, 0, 0.000000, 0),
(1656, 11, 2872.760010, 1104.119995, 114.449997, 100.000000, 0, 0.000000, 0),
(1656, 12, 2862.830078, 1101.439941, 116.417999, 100.000000, 0, 0.000000, 0),
(1656, 13, 2856.580078, 1096.500000, 117.445000, 100.000000, 0, 0.000000, 0),
(1656, 14, 2855.739990, 1097.540039, 117.411003, 100.000000, 0, 0.000000, 0),
(1656, 15, 2858.330078, 1095.829956, 117.363998, 100.000000, 8000, 0.000000, 0),
(1656, 16, 2856.489990, 1097.390015, 117.364998, 100.000000, 0, 0.000000, 0),
(1656, 17, 2855.739990, 1095.739990, 117.488998, 100.000000, 0, 0.000000, 0),
(1656, 18, 2857.149902, 1097.449951, 117.358002, 100.000000, 0, 0.000000, 0),
(1656, 19, 2857.149902, 1097.449951, 117.358002, 0.453786, 49000, 0, 0),
(1656, 20, 2859.659912, 1098.589966, 116.990997, 100.000000, 0, 0.000000, 0),
(1656, 21, 2869.939941, 1104.130005, 114.905998, 100.000000, 0, 0.000000, 0),
(1656, 22, 2877.350098, 1102.520020, 113.157997, 100.000000, 0, 0.000000, 0),
(1656, 23, 2884.840088, 1090.500000, 109.114998, 100.000000, 0, 0.000000, 0),
(1656, 24, 2879.919922, 1075.790039, 109.315002, 100.000000, 0, 0.000000, 0);

-- creature 44932 waypoints
UPDATE `creature` SET `position_x` = 2542.379883, `position_y` = 764.119019, `position_z` = 110.902000, `movementtype` = 2 WHERE `guid` = 44932;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(44932, 1, 2542.379883, 764.119019, 110.902000, 100.000000, 0, 0.000000, 0),
(44932, 2, 2553.320068, 785.750977, 110.858002, 100.000000, 0, 0.000000, 0),
(44932, 3, 2558.610107, 796.822021, 110.907997, 100.000000, 0, 0.000000, 0),
(44932, 4, 2567.100098, 803.927002, 108.982002, 100.000000, 0, 0.000000, 0),
(44932, 5, 2562.429932, 825.229004, 105.906998, 100.000000, 0, 0.000000, 0),
(44932, 6, 2545.520020, 831.275024, 101.750000, 100.000000, 0, 0.000000, 0),
(44932, 7, 2516.570068, 796.770996, 111.100998, 100.000000, 0, 0.000000, 0),
(44932, 8, 2530.360107, 764.762024, 111.505997, 100.000000, 0, 0.000000, 0),
(44932, 9, 2515.020020, 735.291016, 121.051003, 100.000000, 0, 0.000000, 0),
(44932, 10, 2522.159912, 729.357971, 119.007004, 100.000000, 0, 0.000000, 0),
(44932, 11, 2534.909912, 739.114014, 112.781998, 100.000000, 0, 0.000000, 0);

-- creature 45120 waypoints
UPDATE `creature` SET `movementtype` = 2 WHERE `guid` = 45120;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(45120, 1, 2562.260010, -82.175903, 28.055000, 100.000000, 0, 0.000000, 0),
(45120, 2, 2584.909912, -81.114700, 26.993999, 100.000000, 0, 0.000000, 0),
(45120, 3, 2591.580078, -73.672302, 26.804199, 100.000000, 0, 0.000000, 0),
(45120, 4, 2596.129883, -47.398701, 28.598600, 100.000000, 0, 0.000000, 0),
(45120, 5, 2591.129883, -33.780800, 25.577101, 100.000000, 0, 0.000000, 0),
(45120, 6, 2574.250000, -11.897200, 25.732100, 100.000000, 0, 0.000000, 0),
(45120, 7, 2544.580078, -33.221600, 28.190100, 100.000000, 0, 0.000000, 0),
(45120, 8, 2551.229980, -71.759598, 28.507799, 100.000000, 0, 0.000000, 0);

-- creature 37899 waypoints
UPDATE `creature` SET `movementtype` = 2 WHERE `guid` = 37899;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(37899, 1, 2488.020020, 1718.949951, 24.124201, 100.000000, 0, 0.000000, 0),
(37899, 2, 2481.689941, 1720.260010, 27.117901, 100.000000, 0, 0.000000, 0),
(37899, 3, 2476.300049, 1713.479980, 27.976200, 100.000000, 14000, 0.000000, 0),
(37899, 4, 2478.659912, 1716.859985, 27.556299, 100.000000, 0, 0.000000, 0),
(37899, 5, 2484.370117, 1719.069946, 25.335899, 100.000000, 0, 0.000000, 0),
(37899, 6, 2495.270020, 1709.079956, 21.643101, 100.000000, 0, 0.000000, 0),
(37899, 7, 2495.639893, 1697.640015, 19.915501, 100.000000, 0, 0.000000, 0),
(37899, 8, 2491.570068, 1675.640015, 11.072100, 100.000000, 0, 0.000000, 0),
(37899, 9, 2502.330078, 1669.060059, 6.838360, 100.000000, 0, 0.000000, 0),
(37899, 10, 2537.439941, 1669.719971, 0.088966, 100.000000, 24000, 0.000000, 0),
(37899, 11, 2545.520020, 1661.010010, -1.392800, 100.000000, 0, 0.000000, 0),
(37899, 12, 2549.989990, 1653.810059, -1.920330, 100.000000, 0, 0.000000, 0),
(37899, 13, 2542.159912, 1633.729980, -5.643640, 100.000000, 0, 0.000000, 0),
(37899, 14, 2524.449951, 1628.069946, -4.248830, 100.000000, 0, 0.000000, 0),
(37899, 15, 2517.179932, 1625.329956, -2.353110, 100.000000, 0, 0.000000, 0),
(37899, 16, 2507.590088, 1627.310059, -0.017254, 100.000000, 0, 0.000000, 0),
(37899, 17, 2504.110107, 1635.640015, 0.393189, 100.000000, 35000, 0.000000, 0),
(37899, 18, 2507.469971, 1637.869995, -0.196733, 100.000000, 0, 0.000000, 0),
(37899, 19, 2511.580078, 1643.969971, 0.274548, 100.000000, 0, 0.000000, 0),
(37899, 20, 2508.959961, 1659.319946, 2.754070, 100.000000, 0, 0.000000, 0),
(37899, 21, 2499.139893, 1669.520020, 7.899190, 100.000000, 0, 0.000000, 0),
(37899, 22, 2488.649902, 1666.810059, 9.859120, 100.000000, 0, 0.000000, 0),
(37899, 23, 2484.689941, 1654.349976, 13.719600, 100.000000, 15000, 0.000000, 0),
(37899, 24, 2486.830078, 1665.670044, 10.261200, 100.000000, 0, 0.000000, 0),
(37899, 25, 2491.530029, 1680.790039, 12.893700, 100.000000, 0, 0.000000, 0),
(37899, 26, 2495.100098, 1695.109985, 19.089300, 100.000000, 0, 0.000000, 0),
(37899, 27, 2494.649902, 1710.839966, 21.976000, 100.000000, 0, 0.000000, 0);

-- creature 45157 waypoints
UPDATE `creature` SET `position_x` = 2333.610107, `position_y` = 497.816986, `position_z` = 34.459400, `movementtype` = 2 WHERE `guid` = 45157;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(45157, 1, 2333.610107, 497.816986, 34.459400, 100.000000, 22000, 10, 0),
(45157, 2, 2334.409912, 505.347992, 33.217701, 100.000000, 0, 0.000000, 0),
(45157, 3, 2341.310059, 519.439026, 30.977200, 100.000000, 0, 0.000000, 0),
(45157, 4, 2343.500000, 533.783020, 27.914600, 100.000000, 0, 0.000000, 0),
(45157, 5, 2340.770020, 549.195984, 25.834299, 100.000000, 0, 0.000000, 0),
(45157, 6, 2338.120117, 564.838989, 28.406601, 100.000000, 0, 0.000000, 0),
(45157, 7, 2319.449951, 584.848022, 24.582399, 100.000000, 23000, 10, 0),
(45157, 8, 2325.840088, 577.825989, 25.344801, 100.000000, 0, 0.000000, 0),
(45157, 9, 2326.739990, 563.822998, 25.945601, 100.000000, 0, 0.000000, 0),
(45157, 10, 2329.280029, 552.682983, 25.925900, 100.000000, 0, 0.000000, 0),
(45157, 11, 2339.610107, 540.780029, 25.882099, 100.000000, 0, 0.000000, 0),
(45157, 12, 2343.310059, 526.692017, 29.768101, 100.000000, 0, 0.000000, 0);

-- creature 37899 waypoints
UPDATE `creature` SET `movementtype` = 2 WHERE `guid` = 44229;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(44229, 1, 2291.040039, 1499.560059, 33.467701, 100.000000, 0, 0.000000, 0),
(44229, 2, 2268.979980, 1492.410034, 33.217899, 100.000000, 0, 0.000000, 0),
(44229, 3, 2260.530029, 1485.339966, 33.440899, 100.000000, 0, 0.000000, 0),
(44229, 4, 2257.830078, 1472.270020, 33.474400, 100.000000, 16000, 0.000000, 0),
(44229, 5, 2285.780029, 1488.619995, 33.031399, 100.000000, 0, 0.000000, 0),
(44229, 6, 2317.560059, 1490.599976, 33.574100, 100.000000, 0, 0.000000, 0),
(44229, 7, 2325.949951, 1502.650024, 34.256901, 100.000000, 0, 0.000000, 0),
(44229, 8, 2300.830078, 1517.099976, 35.933800, 100.000000, 0, 0.000000, 0),
(44229, 9, 2300.830078, 1517.099976, 35.933800, 5.375610, 31000, 0.000000, 0);

-- creature 28454 waypoints
UPDATE `creature` SET `movementtype` = 2 WHERE `guid` = 28454;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(28454, 1, 2509.129883, -864.439026, 54.823700, 100.000000, 0, 0.000000, 0),
(28454, 2, 2525.620117, -882.630981, 56.274601, 100.000000, 0, 0.000000, 0),
(28454, 3, 2542.979980, -891.825989, 56.289200, 100.000000, 0, 0.000000, 0),
(28454, 4, 2559.570068, -890.223022, 56.181900, 100.000000, 0, 0.000000, 0),
(28454, 5, 2564.649902, -890.231018, 55.572800, 100.000000, 0, 0.000000, 0),
(28454, 6, 2564.649902, -890.231018, 55.572800, 3.595380, 63000, 0.000000, 0),
(28454, 7, 2568.370117, -888.666992, 55.547699, 100.000000, 0, 0.000000, 0),
(28454, 8, 2573.899902, -883.533020, 55.012600, 100.000000, 0, 0.000000, 0),
(28454, 9, 2557.040039, -865.679016, 52.141300, 100.000000, 0, 0.000000, 0),
(28454, 10, 2534.110107, -865.745972, 53.132301, 100.000000, 0, 0.000000, 0),
(28454, 11, 2493.050049, -852.335999, 55.122002, 100.000000, 0, 0.000000, 0);

-- maquell ebonwood waypoints
DELETE FROM `creature_movement_template` WHERE `entry` = 2315;
DELETE FROM `creature_movement` WHERE `id` = 31916;
REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(2315, 1, 1857.400024, 1575.160034, 94.313599, 6.265730, 20000, 0.000000, 0),
(2315, 2, 1861.300049, 1585.260010, 92.496902, 100.000000, 10000, 0.000000, 0),
(2315, 3, 1843.454224, 1600.525757, 94.543236, 100.000000, 0, 0.000000, 0),
(2315, 4, 1843.030029, 1633.829956, 96.933601, 100.000000, 0, 0.000000, 0),
(2315, 5, 1843.454224, 1600.525757, 94.543236, 100.000000, 0, 0.000000, 0),
(2315, 6, 1860.439941, 1588.640015, 92.439003, 100.000000, 0, 0.000000, 0),
(2315, 7, 1860.800049, 1584.489990, 92.682800, 100.000000, 0, 0.000000, 0),
(2315, 8, 1860.660034, 1575.569946, 94.313599, 100.000000, 0, 0.000000, 0),
(2315, 9, 1857.400024, 1575.160034, 94.313599, 100.000000, 0, 0.000000, 0);

-- creature 37919 waypoints
UPDATE `creature` SET `movementtype` = 2 WHERE `guid` = 37919;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(37919, 1, 2859.989990, -484.187988, 99.644203, 100.000000, 0, 0.000000, 0),
(37919, 2, 2870.120117, -496.726990, 101.156998, 100.000000, 0, 0.000000, 0),
(37919, 3, 2876.959961, -515.161011, 103.242996, 100.000000, 0, 0.000000, 0),
(37919, 4, 2881.350098, -526.107971, 105.916000, 100.000000, 0, 0.000000, 0),
(37919, 5, 2890.120117, -533.822998, 106.233002, 100.000000, 0, 0.000000, 0),
(37919, 6, 2892.330078, -533.335999, 106.112000, 100.000000, 0, 0.000000, 0),
(37919, 7, 2892.330078, -533.335999, 106.112000, 3.909540, 27000, 0.000000, 0),
(37919, 8, 2884.780029, -530.728027, 106.817001, 100.000000, 0, 0.000000, 0),
(37919, 9, 2878.439941, -521.411987, 104.486000, 100.000000, 0, 0.000000, 0),
(37919, 10, 2869.429932, -499.278992, 101.130997, 100.000000, 0, 0.000000, 0),
(37919, 11, 2858.620117, -487.651001, 99.760399, 100.000000, 0, 0.000000, 0),
(37919, 12, 2847.159912, -485.118988, 99.113297, 100.000000, 0, 0.000000, 0),
(37919, 13, 2828.229980, -484.987000, 99.153702, 100.000000, 20000, 0.000000, 0),
(37919, 14, 2836.169922, -483.411011, 99.414597, 100.000000, 0, 0.000000, 0),
(37919, 15, 2856.149902, -483.890991, 99.613701, 100.000000, 0, 0.000000, 0);

-- creature 44942 waypoints
UPDATE `creature` SET `movementtype` = 2 WHERE `guid` = 44942;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(44942, 1, 1901.760010, 1571.540039, 89.079498, 100.000000, 24000, 2, 0),
(44942, 2, 1905.939941, 1569.449951, 89.077599, 100.000000, 0, 0.000000, 0),
(44942, 3, 1909.270020, 1539.800049, 87.776001, 100.000000, 0, 0.000000, 0),
(44942, 4, 1902.500000, 1533.229980, 88.139099, 100.000000, 31000, 10, 0),
(44942, 5, 1913.410034, 1516.459961, 87.035599, 100.000000, 0, 0.000000, 0),
(44942, 6, 1918.069946, 1554.680054, 86.691101, 100.000000, 14000, 0.000000, 0),
(44942, 7, 1926.709961, 1570.680054, 84.481201, 100.000000, 0, 0.000000, 0),
(44942, 8, 1925.989990, 1577.430054, 83.438904, 100.000000, 0, 0.000000, 0),
(44942, 9, 1909.189941, 1585.239990, 85.855003, 100.000000, 0, 0.000000, 0),
(44942, 10, 1889.449951, 1586.270020, 88.909302, 100.000000, 2000, 0.000000, 4494201);
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (4494201, 0, 22, 634, 1, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mindless Zombie - Set Faction');
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (4494201, 0, 26, 0, 0, 0, 0, 28711, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mindless Zombie - Start Attack');

-- deathguard phillip waypoints
DELETE FROM `creature_movement_template` WHERE `entry` = 1739;
DELETE FROM `creature_movement` WHERE `id` = 28705;
REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(1739, 1, 1829.630005, 1573.890015, 95.663498, 100.000000, 0, 0.000000, 0),
(1739, 2, 1832.540039, 1581.150024, 95.092697, 100.000000, 0, 0.000000, 0),
(1739, 3, 1839.189941, 1583.469971, 94.247101, 100.000000, 0, 0.000000, 0),
(1739, 4, 1845.479980, 1581.079956, 94.811501, 100.000000, 0, 0.000000, 0),
(1739, 5, 1848.089966, 1562.339966, 95.036003, 100.000000, 15000, 0.000000, 0),
(1739, 6, 1851.819946, 1579.930054, 94.309502, 100.000000, 0, 0.000000, 0),
(1739, 7, 1860.530029, 1586.689941, 92.466797, 100.000000, 0, 0.000000, 0),
(1739, 8, 1879.900024, 1588.260010, 90.180702, 100.000000, 0, 0.000000, 0),
(1739, 9, 1876.229980, 1589.920044, 90.625198, 100.000000, 0, 0.000000, 0),
(1739, 10, 1827.599976, 1591.979980, 94.642097, 100.000000, 0, 0.000000, 0),
(1739, 11, 1818.390015, 1583.069946, 95.766502, 100.000000, 0, 0.000000, 0),
(1739, 12, 1818.390015, 1583.069946, 95.766502, 0.575959, 21000, 0.000000, 0),
(1739, 13, 1817.709961, 1579.089966, 95.766502, 100.000000, 0, 0.000000, 0),
(1739, 14, 1817.979980, 1571.380005, 95.766502, 100.000000, 0, 0.000000, 0),
(1739, 15, 1828.119995, 1565.920044, 95.706299, 100.000000, 0, 0.000000, 0),
(1739, 16, 1828.119995, 1565.920044, 95.706299, 6.143560, 12000, 0.000000, 0);

-- creature 44961 waypoints
UPDATE `creature` SET `movementtype` = 2 WHERE `guid` = 44961;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(44961, 1, 1901.729980, 1550.719971, 88.967400, 100.000000, 28000, 5, 0),
(44961, 2, 1907.219971, 1549.189941, 88.926003, 100.000000, 0, 0.000000, 0),
(44961, 3, 1919.839966, 1555.310059, 86.585999, 100.000000, 0, 0.000000, 0),
(44961, 4, 1934.550049, 1579.829956, 82.452400, 100.000000, 13000, 10, 0),
(44961, 5, 1929.410034, 1582.859985, 82.770103, 100.000000, 0, 0.000000, 0),
(44961, 6, 1914.099976, 1587.369995, 84.952301, 100.000000, 0, 0.000000, 0),
(44961, 7, 1890.880005, 1588.619995, 88.666298, 100.000000, 1000, 0.000000, 4496101);
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (4496101, 0, 22, 634, 1, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mindless Zombie - Set Faction');
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (4496101, 0, 26, 0, 0, 0, 0, 28711, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mindless Zombie - Start Attack');

-- creature 41905 waypoints
UPDATE `creature` SET `movementtype` = 2 WHERE `guid` = 41905;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(41905, 1, 1969.439941, 1592.829956, 82.408302, 100.000000, 0, 0.000000, 0),
(41905, 2, 1961.199951, 1584.989990, 81.571800, 100.000000, 0, 0.000000, 0),
(41905, 3, 1937.949951, 1579.780029, 82.075600, 100.000000, 0, 0.000000, 0),
(41905, 4, 1914.010010, 1585.699951, 85.023201, 100.000000, 1000, 0.000000, 4190501);
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (4190501, 0, 22, 634, 1, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Wretched Zombie - Set Faction');
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (4190501, 0, 26, 0, 0, 0, 0, 28711, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Wretched Zombie - Start Attack');

-- creature 44965 waypoints
UPDATE `creature` SET `movementtype` = 2 WHERE `guid` = 44965;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(44965, 1, 1939.000000, 1579.939941, 81.942596, 100.000000, 0, 0.000000, 0),
(44965, 2, 1916.030029, 1585.040039, 84.625702, 100.000000, 0, 0.000000, 0),
(44965, 3, 1892.300049, 1586.680054, 88.442299, 100.000000, 1000, 0.000000, 4496501);
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (4496501, 0, 22, 634, 1, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Wretched Zombie - Set Faction');
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (4496501, 0, 26, 0, 0, 0, 0, 28711, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Wretched Zombie - Start Attack');

-- creature 44965 waypoints
UPDATE `creature` SET `movementtype` = 2 WHERE `guid` = 44958;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(44958, 1, 1905.900024, 1561.900024, 88.127296, 100.000000, 0, 0.000000, 0),
(44958, 2, 1919.849976, 1568.430054, 86.115997, 100.000000, 0, 0.000000, 0),
(44958, 3, 1924.920044, 1573.989990, 84.230003, 100.000000, 0, 0.000000, 0),
(44958, 4, 1922.790039, 1583.670044, 83.584297, 100.000000, 0, 0.000000, 0),
(44958, 5, 1912.339966, 1588.599976, 85.280197, 100.000000, 0, 0.000000, 0),
(44958, 6, 1892.930054, 1588.000000, 88.241898, 100.000000, 1000, 0.000000, 4495801);
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (4495801, 0, 22, 634, 1, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Wretched Zombie - Set Faction');
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (4495801, 0, 26, 0, 0, 0, 0, 28711, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Wretched Zombie - Start Attack');

-- creature 45013 waypoints
DELETE FROM `creature_movement` WHERE `id` = 45013;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(45013, 1, 2824.870117, 855.538025, 111.950996, 100.000000, 0, 0.000000, 0),
(45013, 2, 2811.320068, 830.109985, 111.964996, 100.000000, 0, 0.000000, 0),
(45013, 3, 2803.479980, 823.388977, 111.913002, 100.000000, 0, 0.000000, 0),
(45013, 4, 2777.149902, 837.192993, 111.847000, 100.000000, 0, 0.000000, 0),
(45013, 5, 2774.250000, 839.302002, 111.844002, 100.000000, 0, 0.000000, 0),
(45013, 6, 2777.459961, 846.807007, 111.863998, 100.000000, 0, 0.000000, 0),
(45013, 7, 2789.530029, 872.010986, 111.709000, 100.000000, 0, 0.000000, 0),
(45013, 8, 2822.659912, 869.215027, 111.950996, 100.000000, 0, 0.000000, 0),
(45013, 9, 2825.020020, 860.783020, 111.950996, 100.000000, 0, 0.000000, 0),
(45013, 10, 2810.409912, 828.401978, 111.964996, 100.000000, 0, 0.000000, 0);

-- creature 45149 waypoints
UPDATE `creature` SET `position_x` = 2206.649902, `position_y` = 623.914001, `position_z` = 24.827101, `movementtype` = 2 WHERE `guid` = 45149;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(45149, 1, 2206.649902, 623.914001, 24.827101, 100.000000, 0, 0.000000, 0),
(45149, 2, 2205.590088, 595.729004, 26.290600, 100.000000, 0, 0.000000, 0),
(45149, 3, 2206.520020, 583.742981, 27.259399, 100.000000, 0, 0.000000, 0),
(45149, 4, 2203.560059, 568.155029, 28.817801, 100.000000, 0, 0.000000, 0),
(45149, 5, 2207.860107, 563.497009, 29.779900, 100.000000, 0, 0.000000, 0),
(45149, 6, 2217.969971, 566.117004, 32.471901, 100.000000, 0, 0.000000, 0),
(45149, 7, 2231.629883, 560.474976, 34.612999, 100.000000, 21000, 0.000000, 0),
(45149, 8, 2225.449951, 564.421997, 33.462700, 100.000000, 0, 0.000000, 0),
(45149, 9, 2204.229980, 566.791992, 28.936001, 100.000000, 16000, 10, 0),
(45149, 10, 2204.260010, 581.593994, 27.139601, 100.000000, 0, 0.000000, 0),
(45149, 11, 2212.959961, 620.492004, 24.821301, 100.000000, 0, 0.000000, 0),
(45149, 12, 2211.649902, 639.289001, 24.858299, 100.000000, 9000, 0.000000, 0);

-- lieutenant sanders waypoints
UPDATE `creature` SET `movementtype` = 2 WHERE `guid` = 28495;
REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(13158, 1, 2514.500000, -908.416992, 56.090900, 100.000000, 0, 0.000000, 0),
(13158, 2, 2514.500000, -908.416992, 56.090900, 2.862340, 52000, 0.000000, 0),
(13158, 3, 2510.659912, -901.776001, 56.343700, 100.000000, 0, 0.000000, 0),
(13158, 4, 2511.540039, -893.963989, 56.347099, 100.000000, 0, 0.000000, 0),
(13158, 5, 2523.979980, -886.181030, 56.338001, 100.000000, 0, 0.000000, 0),
(13158, 6, 2535.949951, -885.216003, 55.467098, 100.000000, 0, 0.000000, 0),
(13158, 7, 2550.290039, -891.742981, 56.511200, 100.000000, 0, 0.000000, 0),
(13158, 8, 2557.560059, -901.127991, 55.904900, 100.000000, 0, 0.000000, 0),
(13158, 9, 2554.699951, -912.468018, 56.210999, 100.000000, 51000, 0.000000, 0),
(13158, 10, 2556.899902, -909.114990, 55.958698, 100.000000, 0, 0.000000, 0),
(13158, 11, 2558.600098, -905.588989, 55.755100, 100.000000, 0, 0.000000, 0),
(13158, 12, 2553.969971, -890.939026, 56.541901, 100.000000, 0, 0.000000, 0),
(13158, 13, 2543.620117, -886.476013, 55.524200, 100.000000, 0, 0.000000, 0),
(13158, 14, 2527.570068, -885.057007, 56.153599, 100.000000, 0, 0.000000, 0),
(13158, 15, 2516.719971, -888.544006, 56.551399, 100.000000, 0, 0.000000, 0),
(13158, 16, 2509.300049, -897.817017, 56.699600, 100.000000, 0, 0.000000, 0),
(13158, 17, 2512.050049, -906.869995, 56.323502, 100.000000, 0, 0.000000, 0);

-- creature 37880 waypoints
UPDATE `creature` SET `movementtype` = 2 WHERE `guid` = 37880;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(37880, 1, 1901.810059, 901.916016, 29.363600, 100.000000, 0, 0.000000, 0),
(37880, 2, 1893.160034, 893.356018, 29.349400, 100.000000, 0, 0.000000, 0),
(37880, 3, 1886.150024, 883.671021, 29.286400, 100.000000, 0, 0.000000, 0),
(37880, 4, 1877.189941, 868.887024, 27.921900, 100.000000, 0, 0.000000, 0),
(37880, 5, 1868.859985, 867.387024, 29.049299, 100.000000, 13000, 5, 0),
(37880, 6, 1876.489990, 870.874023, 27.985100, 100.000000, 0, 0.000000, 0),
(37880, 7, 1888.170044, 886.478027, 29.712700, 100.000000, 0, 0.000000, 0),
(37880, 8, 1899.020020, 898.138977, 29.351101, 100.000000, 0, 0.000000, 0),
(37880, 9, 1902.939941, 908.895996, 29.554399, 100.000000, 0, 0.000000, 0),
(37880, 10, 1907.280029, 923.940002, 29.675200, 100.000000, 21000, 5, 0),
(37880, 11, 1906.839966, 920.908020, 29.695000, 100.000000, 0, 0.000000, 0),
(37880, 12, 1902.430054, 905.544006, 29.363600, 100.000000, 0, 0.000000, 0);

-- deathguard oliver waypoints
DELETE FROM `creature_movement_template` WHERE `entry` = 1737;
DELETE FROM `creature_movement` WHERE `id` = 28706;
REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(1737, 1, 1799.530029, 1603.170044, 103.109001, 100.000000, 0, 0.000000, 0),
(1737, 2, 1796.180054, 1601.430054, 102.984001, 100.000000, 0, 0.000000, 0),
(1737, 3, 1808.969971, 1591.949951, 98.716499, 100.000000, 0, 0.000000, 0),
(1737, 4, 1820.430054, 1591.920044, 95.812698, 100.000000, 0, 0.000000, 0),
(1737, 5, 1826.680054, 1605.000000, 95.802498, 100.000000, 0, 0.000000, 0),
(1737, 6, 1826.439941, 1644.300049, 95.747101, 100.000000, 29000, 0.000000, 0),
(1737, 7, 1824.400024, 1595.819946, 95.389099, 100.000000, 21000, 5, 0),
(1737, 8, 1822.800049, 1594.079956, 95.600403, 100.000000, 0, 0.000000, 0),
(1737, 9, 1820.329956, 1591.910034, 95.838203, 100.000000, 0, 0.000000, 0),
(1737, 10, 1801.579956, 1594.359985, 100.672997, 100.000000, 0, 0.000000, 0),
(1737, 11, 1797.359985, 1599.439941, 102.498001, 100.000000, 0, 0.000000, 0),
(1737, 12, 1807.130005, 1605.920044, 102.842003, 100.000000, 18000, 0.000000, 0);

-- creature 44762 waypoint
UPDATE `creature` SET `movementtype` = 2 WHERE `guid` = 44762;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(44762, 1, 3060.959961, -544.895996, 126.663002, 100.000000, 0, 0.000000, 0),
(44762, 2, 3069.909912, -537.846008, 126.605003, 100.000000, 0, 0.000000, 0),
(44762, 3, 3085.120117, -539.187988, 126.662003, 100.000000, 0, 0.000000, 0),
(44762, 4, 3097.500000, -549.000000, 126.685997, 100.000000, 0, 0.000000, 0),
(44762, 5, 3099.879883, -560.331970, 126.596001, 100.000000, 0, 0.000000, 0),
(44762, 6, 3092.310059, -573.752014, 126.668999, 100.000000, 0, 0.000000, 0),
(44762, 7, 3081.739990, -578.395996, 126.668999, 100.000000, 0, 0.000000, 0),
(44762, 8, 3061.560059, -575.405029, 126.642998, 100.000000, 0, 0.000000, 0),
(44762, 9, 3058.229980, -575.546997, 126.713997, 100.000000, 17000, 0.000000, 0),
(44762, 10, 3065.399902, -576.252014, 126.617996, 100.000000, 0, 0.000000, 0),
(44762, 11, 3076.919922, -579.648010, 126.717003, 100.000000, 0, 0.000000, 0),
(44762, 12, 3088.350098, -576.192017, 126.640999, 100.000000, 0, 0.000000, 0),
(44762, 13, 3097.129883, -568.083984, 126.691002, 100.000000, 0, 0.000000, 0),
(44762, 14, 3098.479980, -556.510010, 126.593002, 100.000000, 0, 0.000000, 0),
(44762, 15, 3094.510010, -545.802979, 126.711998, 100.000000, 0, 0.000000, 0),
(44762, 16, 3081.159912, -536.870972, 126.707001, 100.000000, 0, 0.000000, 0),
(44762, 17, 3069.679932, -537.661011, 126.595001, 100.000000, 0, 0.000000, 0),
(44762, 18, 3060.139893, -544.622009, 126.653999, 100.000000, 0, 0.000000, 0),
(44762, 19, 3056.590088, -555.846008, 126.140999, 100.000000, 0, 0.000000, 0),
(44762, 20, 3058.820068, -572.382996, 126.672997, 100.000000, 0, 0.000000, 0),
(44762, 21, 3058.229980, -575.546997, 126.713997, 100.000000, 0, 0.000000, 0),
(44762, 22, 3058.229980, -575.546997, 126.713997, 3.193950, 26000, 0.000000, 0),
(44762, 23, 3058.729980, -571.997986, 126.675003, 100.000000, 0, 0.000000, 0),
(44762, 24, 3056.830078, -556.481018, 126.106003, 100.000000, 0, 0.000000, 0);

 -- creature 45144 waypoints
UPDATE `creature` SET `movementtype` = 2 WHERE `guid` = 45144;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(45144, 1, 2590.570068, -74.000198, 26.553200, 100.000000, 0, 0.000000, 0),
(45144, 2, 2571.770020, -83.213097, 27.632099, 100.000000, 0, 0.000000, 0),
(45144, 3, 2556.120117, -62.418499, 28.495800, 100.000000, 0, 0.000000, 0),
(45144, 4, 2557.679932, -34.805698, 28.958099, 100.000000, 0, 0.000000, 0),
(45144, 5, 2571.120117, -21.342199, 28.671200, 100.000000, 0, 0.000000, 0),
(45144, 6, 2582.879883, -28.200399, 28.150400, 100.000000, 0, 0.000000, 0),
(45144, 7, 2588.830078, -41.198799, 30.892401, 100.000000, 0, 0.000000, 0);

 -- creature 44764 waypoints
UPDATE `creature` SET `movementtype` = 2 WHERE `guid` = 44764;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(44764, 1, 2142.800049, -505.647003, 81.667801, 100.000000, 60000, 0.000000, 0),
(44764, 2, 2143.399902, -509.673004, 81.647499, 100.000000, 0, 0.000000, 0),
(44764, 3, 2137.739990, -519.406006, 81.640404, 100.000000, 0, 0.000000, 0),
(44764, 4, 2134.469971, -528.304993, 81.656998, 100.000000, 0, 0.000000, 0),
(44764, 5, 2134.030029, -530.463013, 81.656502, 100.000000, 0, 0.000000, 0),
(44764, 6, 2137.570068, -539.405029, 81.650497, 100.000000, 0, 0.000000, 0),
(44764, 7, 2140.320068, -544.213013, 81.651497, 100.000000, 0, 0.000000, 0),
(44764, 8, 2146.669922, -547.049011, 81.668800, 100.000000, 0, 0.000000, 0),
(44764, 9, 2143.110107, -545.088013, 81.674797, 100.000000, 0, 0.000000, 0),
(44764, 10, 2137.570068, -539.405029, 81.650497, 100.000000, 0, 0.000000, 0),
(44764, 11, 2134.030029, -530.463013, 81.656502, 100.000000, 0, 0.000000, 0),
(44764, 12, 2134.469971, -528.304993, 81.656998, 100.000000, 0, 0.000000, 0),
(44764, 13, 2137.739990, -519.406006, 81.640404, 100.000000, 0, 0.000000, 0),
(44764, 14, 2143.399902, -509.673004, 81.647499, 100.000000, 0, 0.000000, 0);

 -- creature 45147 waypoints
UPDATE `creature` SET `movementtype` = 2 WHERE `guid` = 45147;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(45147, 1, 2251.139893, 642.057007, 24.874701, 100.000000, 0, 0.000000, 0),
(45147, 2, 2247.120117, 641.861023, 24.874701, 100.000000, 0, 0.000000, 0),
(45147, 3, 2244.260010, 640.252014, 24.874701, 100.000000, 0, 0.000000, 0),
(45147, 4, 2245.719971, 640.840027, 24.874701, 100.000000, 22000, 10, 0),
(45147, 5, 2252.629883, 643.846008, 24.874701, 100.000000, 0, 0.000000, 0),
(45147, 6, 2264.610107, 645.306030, 24.874701, 100.000000, 0, 0.000000, 0),
(45147, 7, 2276.750000, 641.559998, 24.874701, 100.000000, 0, 0.000000, 0),
(45147, 8, 2287.080078, 635.260010, 24.842600, 100.000000, 22000, 10, 0),
(45147, 9, 2283.219971, 638.359009, 24.926399, 100.000000, 0, 0.000000, 0),
(45147, 10, 2268.739990, 645.119995, 24.884199, 100.000000, 0, 0.000000, 0);

 -- creature 28417 waypoints
DELETE FROM `creature_movement` WHERE `id` = 28417;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(28417, 1, 1794.579956, -725.888977, 59.433201, 100.000000, 0, 0.000000, 0),
(28417, 2, 1791.260010, -723.583008, 59.433201, 100.000000, 0, 0.000000, 0),
(28417, 3, 1780.209961, -719.125000, 59.194000, 100.000000, 0, 0.000000, 0),
(28417, 4, 1772.310059, -719.013977, 59.171799, 100.000000, 0, 0.000000, 0),
(28417, 5, 1769.329956, -724.729004, 59.425900, 100.000000, 0, 0.000000, 0),
(28417, 6, 1771.790039, -719.088989, 59.184601, 100.000000, 0, 0.000000, 0),
(28417, 7, 1784.069946, -720.036987, 59.403599, 100.000000, 0, 0.000000, 0);

-- remove replaced scripts
DELETE FROM `creature_movement_scripts` WHERE `id` IN (173701, 173901, 173902, 2841205);

-- Araj vanilla position
 UPDATE `creature` SET `position_x`=1381.25, `position_y`=-1543.54, `position_z`=58.6043, `orientation`=4.72984 WHERE `id`=1852;

-- Arajs minions
-- Skeletal Warlord
UPDATE `creature` SET `position_x`=1388.72, `position_y`=-1541.99, `position_z`=59.2163, `orientation`=0.541052 WHERE `guid`=45248;
UPDATE `creature` SET `position_x`=1373.54, `position_y`=-1539.18, `position_z`=58.1594, `orientation`=2.46091 WHERE `guid`=45249;
-- Spectral Attendant
UPDATE `creature` SET `position_x`=1381.89, `position_y`=-1539.46, `position_z`=58.6867, `orientation`=1.50098 WHERE `guid`=45252;
UPDATE `creature` SET `position_x`=1376.74, `position_y`=-1542.95, `position_z`=58.2789, `orientation`=5.55015 WHERE `guid`=45250;
UPDATE `creature` SET `position_x`=1385.66, `position_y`=-1544.23, `position_z`=59.1008, `orientation`=4.79965 WHERE `guid`=45247;

-- Kriss Goldenlight
UPDATE `creature` SET `position_x`=3166.53, `position_y`=-4372.88, `position_z`=139.715, `orientation`=1.22173 WHERE `guid`=53732;

-- Aurora Skycaller
UPDATE `creature` SET `position_x`=3172.21, `position_y`=-4372.37, `position_z`=139.715, `orientation`=1.85005 WHERE `guid`=53733;

UPDATE `creature_template` SET `ai_name` = 'EventAI' WHERE `entry` = 14734;
REPLACE INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1473401, 14734, 0, 1, 0, 100, 1, 2000, 2000, 2000, 2000, 1473401, 0, 0, 'Revantusk Drummer - Emote Attack1H');
REPLACE INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1473401, 0, 1, 36, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Revantusk Drummer - Emote Attack1H');

REPLACE INTO gameobject_template (entry, patch, type, displayId, name, faction, flags, size, data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, mingold, maxgold, script_name) VALUES
(178225, 0, 8, 2770, 'Dire Pool Spell Focus', 0, 0, 1, 1083, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(150000, 178225, 1, -4033.24, 1345.66, 152.989, 3.14159, 0, 0, 1, 0, 900, 900, 100, 1);

-- Remove Immune to NPC flag from Theramore Combat Dummy and prevent it from targeting enemies.
UPDATE `creature_template` SET `unit_flags`=256, `flags_extra`=`flags_extra`|131072 WHERE `entry`=4952;

-- Disable attack and movement for Theramore Combat Dummy.
DELETE FROM `creature_ai_scripts` WHERE `id`=495201;
REPLACE INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (495201, 0, 52, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Theramore Combat Dummy - Set Unkillable');
REPLACE INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (495201, 0, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Theramore Combat Dummy - Disable Melee Attack');
REPLACE INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (495201, 0, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Theramore Combat Dummy - Disable Combat Movement');

-- Ragged John
REPLACE INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (4866, 1, 16468, 0, 0, 0, 0);
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES (2061, 2713);
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES (2064, 2725);
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES (2065, 2723);
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES (2066, 2722);
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES (2067, 2721);
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES (2068, 2720);
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES (2069, 2719);
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES (2070, 2718);
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES (2071, 2717);
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES (2072, 2716);
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES (2073, 2715);
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES (2074, 2714);
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES (2802, 3496);
REPLACE INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (4224, 9, 4224, 1, 0, 0, 0);
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`, `condition_id`) VALUES (2061, 0, 0, 'Official business, John. I need some information about Marshal Windsor. Tell me about the last time you saw him.', 5007, 1, 1, 2074, 0, 0, 0, 0, NULL, 0, 4224);
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`, `condition_id`) VALUES (2064, 0, 0, 'Thanks, Ragged John. Your story was very uplifting and informative. ', 5038, 1, 1, -1, 0, 2064, 0, 0, NULL, 0, 0);
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`, `condition_id`) VALUES (2065, 0, 0, 'Ahhh... Ironfoe.\n', 5034, 1, 1, 2064, 0, 0, 0, 0, NULL, 0, 0);
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`, `condition_id`) VALUES (2066, 0, 0, '300? So the Dark Irons killed him and dragged him into the Depths?', 5030, 1, 1, 2065, 0, 0, 0, 0, NULL, 0, 0);
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`, `condition_id`) VALUES (2067, 0, 0, 'WHY is he in Blackrock Depths?', 5027, 1, 1, 2066, 0, 0, 0, 0, NULL, 0, 0);
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`, `condition_id`) VALUES (2068, 0, 0, 'Ok, so where the hell is he? Wait a minute! Are you drunk?', 5024, 1, 1, 2067, 0, 0, 0, 0, NULL, 0, 0);
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`, `condition_id`) VALUES (2069, 0, 0, 'So how did he die?', 5021, 1, 1, 2068, 0, 0, 0, 0, NULL, 0, 0);
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`, `condition_id`) VALUES (2070, 0, 0, 'So that\'s how Windsor died...', 5019, 1, 1, 2069, 0, 0, 0, 0, NULL, 0, 0);
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`, `condition_id`) VALUES (2071, 0, 0, 'Interesting... continue, John.', 5017, 1, 1, 2070, 0, 0, 0, 0, NULL, 0, 0);
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`, `condition_id`) VALUES (2072, 0, 0, 'Ironfoe?\n', 5015, 1, 1, 2071, 0, 0, 0, 0, NULL, 0, 0);
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`, `condition_id`) VALUES (2073, 0, 0, 'Start making sense, dwarf. I don\'t want to have anything to do with your cracker, your pappy, or any sort of \'discreditin.\'\n', 5013, 1, 1, 2072, 0, 0, 0, 0, NULL, 0, 0);
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`, `condition_id`) VALUES (2074, 0, 0, 'So what did you do?', 5010, 1, 1, 2073, 0, 0, 0, 0, NULL, 0, 0);
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`, `condition_id`) VALUES (2061, 2, 0, 'Milk me, John.', 5833, 1, 1, 2802, 0, 0, 0, 0, NULL, 0, 4866);
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`, `condition_id`) VALUES (2802, 0, 0, 'Do it... Do it now.', 5835, 1, 1, -1, 0, 2802, 0, 0, NULL, 0, 0);
DELETE FROM `gossip_scripts` WHERE `id`=2064;
REPLACE INTO `gossip_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (2064, 0, 7, 4224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ragged John - Complete Quest The True Masters');
DELETE FROM `gossip_scripts` WHERE `id`=2802;
REPLACE INTO `gossip_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (2802, 0, 15, 16472, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ragged John - Cast Spell Wicked Milking');
REPLACE INTO `gossip_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (2802, 0, 7, 4866, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ragged John - Complete Quest Mother\'s Milk');
UPDATE `creature_template` SET `gossip_menu_id`=2061, `script_name`='' WHERE `entry`=9563;

-- Correct unit flags for OOX escort npcs.
UPDATE `creature_template` SET `unit_flags`=768 WHERE `entry` IN (7784, 7807, 7806);
DELETE FROM `quest_start_scripts` WHERE `id` IN (648, 836, 2767) AND `comments` like '%Remove Immune to NPC flag';
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (648, 3, 4, 46, 512, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rescue OOX-17/TN!: Homing Robot OOX-17/TN - Remove Immune to NPC flag');
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (836, 3, 4, 46, 512, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rescue OOX-09/HL!: Homing Robot OOX-09/HL - Remove Immune to NPC flag');
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (2767, 3, 4, 46, 512, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rescue OOX-22/FE!: Homing Robot OOX-22/FE - Remove Immune to NPC flag");

update quest_template set OfferRewardText = "Greetings young $C, I'm glad to see you ready and eager to learn about the curing of poisons.$B$BWhile most druids in the past were put through pre-planned trials, your work will involve no such thing. There has been a rash of animal poisonings in Auberdine, and the village there has been unable to cure it. To that end, a representative there has asked Moonglade for aid and we are sending you there to aid them.  This is no exercise - the work you'll do is quite real.  Bear this in mind." where entry = 6121;

-- Set chat type and emotes for texts.
UPDATE `broadcast_text` SET `type`=1 WHERE `ID` IN (10856, 10859, 10860, 10861, 10662, 10663, 10664, 10665, 10666, 10667);
UPDATE `broadcast_text` SET `emoteid1`=15 WHERE `ID`=10662;
UPDATE `broadcast_text` SET `emoteid1`=1 WHERE `ID`=10663;
UPDATE `broadcast_text` SET `emoteid1`=1 WHERE `ID`=10664;
UPDATE `broadcast_text` SET `emoteid1`=1 WHERE `ID`=10666;
UPDATE `broadcast_text` SET `emoteid1`=5 WHERE `ID`=10665;
UPDATE `broadcast_text` SET `emoteid1`=15 WHERE `ID`=10667;

-- Conditions to check the time.
REPLACE INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES
(3711, 53, 19, 30, 19, 30, 0), -- Time is 19:30
(3712, -1, 108, 3711, 0, 0, 0), -- Hallow's End Is Active and Time Is 19:30
(3713, 53, 19, 45, 19, 45, 0), -- Time is 19:45
(3714, -1, 108, 3713, 0, 0, 0), -- Hallow's End Is Active and Time Is 19:45
(3715, 53, 19, 55, 19, 55, 0), -- Time is 19:55
(3716, -1, 108, 3715, 0, 0, 0), -- Hallow's End Is Active and Time Is 19:55
(3717, 53, 20, 00, 20, 00, 0), -- Time is 20:00
(3718, -1, 108, 3717, 0, 0, 0); -- Hallow's End Is Active and Time Is 20:00

-- Remove Interact Condition flag from Wickerman Ember.
UPDATE `gameobject_template` SET `flags`=0 WHERE `entry`=180437;

-- Correct unit flags for The Banshee Queen.
UPDATE `creature_template` SET `unit_flags`=33600 WHERE `entry`=15193;

-- Make Darkcaller Yanka an active spawn.
UPDATE `creature` SET `spawnflags`=1 WHERE `id`=15197;

-- Assign EventAI and correct unit flags for Darkcaller Yanka.
UPDATE `creature_template` SET `unit_flags`=33536, `ai_name`='EventAI' WHERE `entry`=15197;

-- Events list for Darkcaller Yanka.
DELETE FROM `creature_ai_events` WHERE `creature_id`=15197;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1519701, 15197, 3712, 1, 2, 100, 1, 0, 0, 60000, 60000, 1519701, 0, 0, 'Darkcaller Yanka - Yell at 7:30 for Wickerman Event (Phase 0)');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1519702, 15197, 3714, 1, 2, 100, 1, 0, 0, 60000, 60000, 1519702, 0, 0, 'Darkcaller Yanka - Yell at 7:45 for Wickerman Event (Phase 0)');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1519703, 15197, 3716, 1, 2, 100, 1, 0, 0, 60000, 60000, 1519703, 0, 0, 'Darkcaller Yanka - Yell at 7:55 for Wickerman Event (Phase 0)');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1519704, 15197, 3718, 1, 2, 100, 1, 0, 0, 60000, 60000, 1519704, 0, 0, 'Darkcaller Yanka - Start Wickerman Event at 8:00 (Phase 0)');
DELETE FROM `creature_ai_scripts` WHERE `id`=1519701;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1519701, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10856, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkcaller Yanka - Say Text');
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1519701, 0, 44, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkcaller Yanka - Set Phase to 1');
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1519701, 0, 39, 15196, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkcaller Yanka - Start Script');
DELETE FROM `creature_ai_scripts` WHERE `id`=1519702;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1519702, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10859, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkcaller Yanka - Say Text');
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1519702, 0, 44, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkcaller Yanka - Set Phase to 1');
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1519702, 0, 39, 15196, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkcaller Yanka - Start Script');
DELETE FROM `creature_ai_scripts` WHERE `id`=1519703;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1519703, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10860, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkcaller Yanka - Say Text');
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1519703, 0, 44, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkcaller Yanka - Set Phase to 1');
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1519703, 0, 39, 15196, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkcaller Yanka - Start Script');
DELETE FROM `event_scripts` WHERE `id`=15196;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (15196, 61, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkcaller Yanka - Set Phase to 0');
DELETE FROM `creature_ai_scripts` WHERE `id`=1519704;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1519704, 0, 39, 15197, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkcaller Yanka - Start Script');
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1519704, 0, 44, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkcaller Yanka - Set Phase to 1');
DELETE FROM `event_scripts` WHERE `id`=15197;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (15197, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10861, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkcaller Yanka - Say Text');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (15197, 1, 10, 15193, 58000, 0, 0, 0, 0, 0, 0, 0, 15193, 6, 1, 1731.45, 512.753, 40.2189, 1.55334, 0, 'The Banshee Queen - Summon Creature The Banshee Queen');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (15197, 56, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkcaller Yanka - Emote State');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (15197, 56, 76, 180437, 36000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1738.43, 512.016, 39.8172, 4.60767, 0, 'Wickerman Ember - Summon GameObject Wickerman Ember');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (15197, 56, 76, 180437, 36000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1741.12, 505.333, 41.3979, 4.64258, 0, 'Wickerman Ember - Summon GameObject Wickerman Ember');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (15197, 56, 76, 180437, 36000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1731.58, 500.123, 42.5049, 4.50295, 0, 'Wickerman Ember - Summon GameObject Wickerman Ember');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (15197, 56, 76, 180437, 36000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1721.45, 505.141, 40.8856, 4.95674, 0, 'Wickerman Ember - Summon GameObject Wickerman Ember');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (15197, 56, 76, 180437, 36000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1722.22, 512.332, 39.1567, 0.209439, 0, 'Wickerman Ember - Summon GameObject Wickerman Ember');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (15197, 56, 76, 180437, 36000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1731.56, 514.596, 39.3475, 5.70723, 0, 'Wickerman Ember - Summon GameObject Wickerman Ember');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (15197, 56, 80, 0, 0, 0, 0, 180433, 30, 11, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Wickerman - Set Go State to GO\_STATE\_ACTIVE');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (15197, 36000, 80, 1, 0, 0, 0, 180433, 30, 11, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Wickerman - Set Go State to GO\_STATE\_READY');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (15197, 36000, 1, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkcaller Yanka - Stop Dancing');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (15197, 36000, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkcaller Yanka - Set Phase to 0');
DELETE FROM `event_scripts` WHERE `id`=15193;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (15193, 0, 15, 17327, 2, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Banshee Queen - Cast Spell Spirit Particles');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (15193, 0, 15, 12980, 2, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Banshee Queen - Cast Spell Simple Teleport');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (15193, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10662, 0, 0, 0, 0, 0, 0, 0, 0, 'The Banshee Queen - Say Text');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (15193, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10663, 0, 0, 0, 0, 0, 0, 0, 0, 'The Banshee Queen - Say Text');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (15193, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10664, 0, 0, 0, 0, 0, 0, 0, 0, 'The Banshee Queen - Say Text');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (15193, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10666, 0, 0, 0, 0, 0, 0, 0, 0, 'The Banshee Queen - Say Text');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (15193, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10665, 0, 0, 0, 0, 0, 0, 0, 0, 'The Banshee Queen - Say Text');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (15193, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10667, 0, 0, 0, 0, 0, 0, 0, 0, 'The Banshee Queen - Say Text');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (15193, 54, 1, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Banshee Queen - Emote OneShotSpellCast');