replace into item_template values
 ('51801', '0', '9', '3', 'Schematic: Recharge Manual Crowd Pummeler', '', '1097', '3', '0', '1', '5000', '5000', '0', '-1', '-1', '0',
 '0', '202', '250', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '46609', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
replace into creature_loot_template values (13601, 51801, 7.5, 2, 1, 1, 0, 0, 10);

replace into item_template values
 ('80690', '0', '15', '0', 'Gazlowe\'s Letter', '', '3033', '1', '0', '1', '0', '0', '0', '-1', '-1', '1',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '4', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
update creature_template set npc_flags = 2 where entry = 80134;

set @quest_entry = 80390;
set @quest_zone = 15;
set @title = 'Letter to Mudsprocket';
set @description = 'A group of former Venture Co. Goblins have joined the Horde.\n\nSome of them chose to settle in Dustwallow Marsh in a town they now call Mudsprocket, while not yet forgiven for their past sins, the boss wants me to send whoever is willing to get some coin to deliver this letter to whoever is in charge.\n\nNo idea how the Undermine is gonna take this and frankly not my business to think of, anyway, you will find them in South Dustwallow Marsh, careful not to mistake the place for the Dragon\'s lair instead though.\n\nTake care, kid.';
set @objective = 'Deliver the letter to the leader of Mudsprocket.';
set @completetext = 'What\'s this, a letter from Gazlowe?';
set @incompletetext = 'Durotar Labor Union, has a nice ring to it, doesn\'t it?';
set @faction_id = 1001;
set @faction_count = 250;
set @xp_or_money = 1865;
set @reward_money = 0; 
set @quest_level = 30;
set @min_level = 28;
set @questgiver_id = 3391;
set @quest_finisher = 80134;
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
set @required_item_1 = 80690; 
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
nextquestinchain = @nextquestinchain, prevquestid = @prevquest,
srcitemid = 80690, srcitemcount = 1
where entry = @quest_entry;	

UPDATE `item_template` SET `required_reputation_faction`='0', `required_reputation_rank`='0' WHERE (`entry`='81079') AND (`patch`='0');

replace into item_template values
 ('51802', '0', '4', '8', 'Idol of Evergrowth', '', '37394', '3', '65536', '1', '12762', '12762', '28', '-1', '-1', '51',
 '46', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '21972', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '2', '1', '0', '0', '0', '0', '0', '0', '0', '46', '0', '0', '0',
 '0', '1', NULL);
replace into creature_loot_template values (12258, 51802, 7.5, 2, 1, 1, 0, 0, 10);

replace into item_template values
 ('51803', '0', '4', '9', 'Totem of the Endless Flicker', '', '5686', '3', '65536', '1', '11876', '11876', '28', '-1', '-1', '47',
 '42', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '16085', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '2', '1', '0', '0', '0', '0', '0', '0', '0', '45', '0', '0', '0',
 '0', '1', NULL);
replace into creature_loot_template values (7271, 51803, 7.5, 2, 1, 1, 0, 0, 10);
replace into item_template values
 ('51804', '0', '4', '7', 'Libram of the Resolute', '', '1134', '3', '65536', '1', '9845', '9845', '28', '-1', '-1', '44',
 '39', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '20106', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '1', '0', '0', '0', '0', '0', '0', '0', '44', '0', '0', '0',
 '0', '1', NULL);
replace into creature_loot_template values (3976, 51804, 7.5, 2, 1, 1, 0, 0, 10);


update creature_template set npc_flags = 2 where entry = 81046;

set @quest_entry = 80391;
set @quest_zone = 148;
set @title = 'Crawling for Meat';
set @description = 'Greetings! Your company is welcome. I am Inunquaq of Moa\'ki Harbor. I find myself in this strange land after weeks of sailing.\n\nMy tale began when a Winter Tauren friend of mine known as Buniq visited my settlement in her canoe, she invited me to accompany her to the village of Taunka\'le. But as I entered the canoe, a strong icy gust blew the rope out of Buniq\'s hands. Within moments a strong current had taken me out to the open sea!\n\nBuniq had the oars so all I could do was to desperately cling to the canoe and hope for the best.\n\nEventually the current took me here to this warm land that looks nothing like my home. Listen friend, the canoe had some provisions but I have finished them days ago. Would you please collect some meat from these shelled creatures nearby?\n\nWe have similar creatures in the far north, but I am without the tools and the knowledge I need to try and approach them, as far as I can guess they are edible. If you do so, I will be forever in your debt.';
set @objective = 'Collect 8 bunches of Crawler Meat.';
set @completetext = 'My hunger has finally been sated, and my belly feels overjoyed!\n\nYou can have these odd objects I found while scavenging for tools as well as my friendship and gratitude. Hopefully in time I can find my way back to my homeland.\n\nThank you so much friend. I have the strength and soon I will have the tools to hunt for myself now as I seek a way home, you need not worry for me anymore, may our paths unite again one day.';
set @incompletetext = 'Did you get the meat? I feel my strength vane...';
set @faction_id = 0;
set @faction_count = 0;
set @xp_or_money = 1865;
set @reward_money = 0; 
set @quest_level = 18;
set @min_level = 17;
set @questgiver_id = 81046;
set @quest_finisher = 81046;
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
set @reward_item_1 = 2683;
set @reward_item_2 = 0; 
set @reward_item_3 = 0;
set @reward_item_4 = 0;
set @reward_item_1_count = 5;
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
set @required_item_1 = 2674; 
set @required_item_2 = 0;
set @required_item_3 = 0;
set @required_item_4 = 0;
set @required_item_1_count = 8;
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

update item_template set name = 'Armored Spectral Tiger' where entry =  80430;
delete from creature_loot_template where entry = 50056 and item = 50203;

update creature_template set display_id1 = 18545 where entry = 81045; 
update creature_template set display_id1 = 18448 where entry = 81042; 
update creature_template set display_id1 = 18447 where entry = 81043; 

update item_template set display_id = 60954 where entry = 51792;

replace into item_template values
 ('80691', '0', '15', '0', 'Basic Guide on Necromancy', '101 Ways to Raise a Skeleton.', '8092', '3', '0', '1', '0', '1845', '23', '-1', '-1', '30',
 '25', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '8853', '0', '0', '0', '900000', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '2', '0', '0', '0', '0', '0', '7', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 delete from item_template where name like '%dummy item%';

update creature set spawntimesecsmin = 9000, spawntimesecsmax = 9000 where id = 14268;

replace into item_template values
 ('80691', '0', '15', '0', 'Lieren\'s Package', '', '7918', '1', '0', '1', '0', '0', '0', '-1', '-1', '1',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '4', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
update creature_template set npc_flags = 2 where entry in (81042, 81043);
 
set @quest_entry = 80392;
set @quest_zone = 47;
set @title = 'Package to Quel\'Danil';
set @description = 'Excuse me, may I have your attention for a second?\n\nMy name is Lieren and you look like a seasoned traveler. I have a task for you if you do not mind helping me, I am quite busy with my own, I need a package taken to Quel\'Danil Northwest of here.\n\nJust look for an Elf lodge there and take it to my sister.  My sister has similar features to mine, but she is all of elvish ancestry.\n\nI\'ve attached your payment to the package, now what do you say pipsqueak , will you help me out?';
set @objective = 'Take Lieren\'s Package to Quel\'Danil and delier it to Loania.';
set @completetext = 'A package for me? From my sister? thank you so much. Here is your payment as promised.\n\nActually there is one more thing I would like you to help me out with...';
set @incompletetext = 'Welcome to Quel\'Danil, how may I be of assistance?';
set @faction_id = 269;
set @faction_count = 250;
set @xp_or_money = 2100;
set @reward_money = 1000; 
set @quest_level = 41;
set @min_level = 40;
set @questgiver_id = 81043;
set @quest_finisher = 81042;
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
set @required_item_1 = 80691; 
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
nextquestinchain = @nextquestinchain, prevquestid = @prevquest,
srcitemid = 80691, srcitemcount = 1
where entry = @quest_entry;	

set @quest_entry = 80393;
set @quest_zone = 47;
set @title = 'Errand for Quel\'Danil';
set @description = 'I hope it is not too much to ask for, but you look like the strong type.\n\nThe people of Quel\'Danil are my family and they\'ve been at odds with the terrible Witherbark Trolls for a long time! I am asking you to reduce their numbers, I don\'t want to see any more suffering, we have all lost so much already.\n\nShandra\'lor hosts sadistic trolls and their pet spiders, I would like you to focus on those.\n\nOnce the job is done please report to my adoptive mother Voldana. She is deeper inside the lodge!';
set @objective = 'Kill 10 Witherbark Sadist and 8 Witherbark Broodguards in Shadra\'alor.';
set @completetext = 'You have my deepest gratitude, $c, and of course I\'ll make sure to thank Loania too.\n\nYou must be curious why a human among us. If you are interested, then I shall tell you...';
set @incompletetext = 'Yes, $c? What brings you here?';
set @faction_id = 269;
set @faction_count = 500;
set @xp_or_money = 2900;
set @reward_money = 800; 
set @quest_level = 41;
set @min_level = 40;
set @questgiver_id = 81042;
set @quest_finisher = 81044;
set @nextquest = 0;
set @nextquestinchain = 0;
set @prevquest = 80392;
set @RewChoiceItemId1 = 51766; 
set @RewChoiceItemId2 = 51767; 
set @RewChoiceItemId3 = 51768;
set @RewChoiceItemId4 = 0; 
set @RewChoiceItemCount1 = 1;
set @RewChoiceItemCount2 = 1;
set @RewChoiceItemCount3 = 1;
set @RewChoiceItemCount4 = 0;
set @reward_item_1 = 0;
set @reward_item_2 = 0; 
set @reward_item_3 = 0;
set @reward_item_4 = 0;
set @reward_item_1_count = 0;
set @reward_item_2_count = 0;
set @reward_item_3_count = 0;
set @reward_item_4_count = 0;
set @creature_to_kill_1 = 2653;
set @creature_to_kill_2 = 2686; 
set @creature_to_kill_3 = 0;
set @creature_to_kill_4 = 0;
set @creature_to_kill_1_count = 10;
set @creature_to_kill_2_count = 8;
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

update creature_template set script_name = 'npc_voldana', npc_flags = 2 where entry = 81044;

update item_template set display_id = 37409 where entry = 51766;

REPLACE INTO `item_template` VALUES (80692, 10, 15, 0, 'Armored Azure Drake', 'But the most important rule, the rule you can never forget, no matter how much he cries, no matter how much he begs, never feed him after midnight.', 31434, 4, 64, 1, 0, 0, 0, -1, -1, 60, 60, 762, 150, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46216, 0, 0, 0, 0, 330, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);
update item_template set bonding = 6 where entry = 80692;

update item_template set display_id = 28225 where entry = 51764;
update item_template set sell_price = 0, buy_price = 0 where entry = 81088;

REPLACE INTO `item_template` VALUES (80694, 0, 12, 0, 'Illusion: Scourge', 'Do you smell something? *sniff* Oh, it\'s just the troops.', 37241, 1, 0, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31726, 0, 0, 0, 10, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'item_morph_scourge');

REPLACE INTO `creature_template` VALUES (81060, 1, 10374, 0, 0, 0, 'Prospector Brotalus', 'Explorer\'s League', 0, 45, 45, 1500, 1500, 2000, 2000, 4500, 694, 2, 1, 1.14286, 1, 16, 5, 30, 0, 1, 350, 275, 0, 300, 1, 2000, 0, 1, 4608, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 200, 300, '', 0, 3, 0, 0, 1, 23171, 0, 0, 0, 0, 524296, '');

replace into `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`) VALUES (80461, 9608, 2714);
update creature_template set equipment_id = 80461, movement_type = 1, npc_flags = 2, faction = 35 where entry = 81060;

REPLACE INTO `creature_template` VALUES (81061, 1, 10575, 0, 0, 0, 'Noli', 'Explorer\'s League', 0, 45, 45, 1500, 1500, 2000, 2000, 4500, 694, 2, 1, 1.14286, 1, 16, 5, 30, 0, 1, 350, 275, 0, 300, 1, 2000, 0, 1, 4608, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 200, 300, '', 0, 3, 0, 0, 1, 23171, 0, 0, 0, 0, 524296, '');

update creature_template set equipment_id = 11026, movement_type = 0, npc_flags = 0, faction = 35 where entry = 81061;
