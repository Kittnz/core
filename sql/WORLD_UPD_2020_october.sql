update quest_template set prevquestid = 0 where entry = 60116;

-- scripts for ony/nef turnins to npc, commented out cause i'm not sure they have the same entry, torta please check
update creature_template set script_name = 'npc_overlord_runthak' where entry = 14392;
update creature_template set script_name = 'npc_major_mattingly' where entry = 14394;
update creature_template set script_name = 'npc_field_marshal_afrasiabi' where entry = 14721;
update creature_template set script_name = 'npc_overlord_saurfang' where entry = 14720;

-- Misc.

update quest_template set 
details = 'Hey, $R, down here!\n\nIf you got any spare time I could really use a favor. You see, I hear that there\'s this big creature in northern Un’Goro Crater. I think the Horde calls it a kodo.\n\nIt seems that this creature likes to eat a lot of bloodpetals. It might even be its favorite food, who knows!\n\nAnyway, these sprouts are found all around the crater, and I’d really love to get my hands on some. Apparently there''s also a kodo named Dodogo who gives you a package if you feed it.\n\nIt sounds like this package has a nice surprise in it, and I love surprises!\n\nBring me 30 of these sprouts and I will pay you. I will also give you something I cooked, right here in Gadgetzan. It’s a new original recipe!',
requestitemstext = 'Have you collected the sprouts yet?\n\nHopefully I get that recipe I’ve been searching for!',
objectives = 'Reas wants you to bring 30 Bloodpetal Sprouts.',
offerrewardtext = 'Ah yes! \n\nThank you very much my friend, you made my day. Here, I’ll also make yours!\n\nThis is for you, a few coins and my original recipe: The Pizza Bottle. Trust me you won’t find anything like this ever again! What\'s a pizza you say? It\'s a local delicacy. Quite delicious!\n\nGoodbye $R, and remember to stay safe inside during sandstorms!\n\nMent to be a text update for the quest with the same name which is already in game.' where entry = 60010;

-- New Booty Bay quests:

REPLACE INTO `creature_template` VALUES (51607, 9, 2557, 0, 0, 0, 'Ian Storm', NULL, 0, 43, 44, 2059, 2138, 0, 0, 2557, 35, 3, 1, 1.14286, 0, 20, 5, 0, 0, 1, 68, 88, 0, 194, 1, 2000, 2000, 1, 32768, 0, 0, 0, 0, 0, 0, 201.913, 288.031, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 3, 0, 0, 3, 16399, 0, 0, 0, 0, 0, '');

set @quest_entry = 60152;
set @quest_zone = 5339;
set @title = 'They Call Him Ian the Storm';
set @description = '$N, I hear you are on your way to slay the scoundrels they call leaders of the worst crew of pirates, the Bloodsail Buccaneers./n/nYou see these fools took a new member and they in their deluded mind think he will aid them greatly.\n\n<Baron Revilgaz scoffs.>\n\nI have a man on the inside, his name is Ian Storm, look for a fellow that won’t shank you on sight.';
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
set @prevquest = 0;
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
set @quest_zone = 5339;
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
set @RewChoiceItemId1 = 0; 
set @RewChoiceItemId2 = 0; 
set @RewChoiceItemId3 = 0;
set @RewChoiceItemId4 = 0; 
set @RewChoiceItemCount1 = 0;
set @RewChoiceItemCount2 = 0;
set @RewChoiceItemCount3 = 0;
set @RewChoiceItemCount4 = 0;
set @reward_item_1 = 51896;
set @reward_item_2 = 51897; 
set @reward_item_3 = 0;
set @reward_item_4 = 0;
set @reward_item_1_count = 1;
set @reward_item_2_count = 1;
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
