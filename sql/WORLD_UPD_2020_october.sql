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
