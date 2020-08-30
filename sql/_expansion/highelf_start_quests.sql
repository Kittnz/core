-- Farstrider Lodge

replace into `creature_template` values (80200, 0, 16760, 0, 0, 0, 'Malvinah Sunblade', '', 0, 8, 8, 319, 319, 0, 0, 852, 371, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4276, 0, 0, 0, 0, 2, 'npc_malvinah_sunblade');

update creature_template set npc_flags = 3 where entry = 80200;
update creature_template set equipment_id = 0 where entry = 80200;

set @quest_entry = 80200;
set @quest_zone = 1519;
set @title = 'Farstrider Lodge';
set @description = 'Ah $N, you’re awake...\n\nThe journey south from the Remnants of Lordaeron wasn’t easy, but we have survived and this is our new home now...\n\nThere is a lot of work to be done now that we have arrived, this lodge has only been used by a few Dwarven hunters ever since the Second war, and hasn’t been maintained properly.\n\nVyrin Swiftwind in the lodge has been here much longer than any of us, why not talk to her to get you started?';
set @objective = 'Talk to Vyrin Swiftwind in the Farstrider Lodge.';
set @completetext = 'Ah, you wish to assist?\n\nWell your offer is welcomed. I was just a lone Ranger who took refuge down here, and next I hear about the fall of my homeland and now I have to contend with a hundred refugees.\n\nWe have a lot of work to do friend but it’s for the greater good, we Quel’dorei must stick together now!';
set @incompletetext = 'Yes? What can I do for you?';
set @faction_id = 269;
set @faction_count = 75;
set @xp_or_money = 85;
set @reward_money = 5; 
set @quest_level = 1;
set @min_level = 1;
set @questgiver_id = 80200;
set @quest_finisher = 1156;
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

-- Stocking Up on Wood

replace into gameobject_template values 
(3000200, 0, 3, 1248, 'Bundle of Wood', 0, 0, 0.7, 57, 3000200, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
replace into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) values 
(3000200, 80200, 100, 1, 1, 1, 0, 0, 10);

replace into item_template values
 ('80200', '0', '0', '0', 'Bundle of Wood', '', '929', '1', '0', '1', '0', '0', '0', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

replace into `item_template` values (80202, 0, 4, 2, 'Worn Gloves', '', 17184, 1, 0, 1, 2, 2, 10, -1, -1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 8, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

replace into `item_template` values (80203, 0, 4, 1, 'Ragged Cloth Pants', '', 12388, 1, 0, 1, 2, 2, 7, -1, -1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

set @quest_entry = 80201;
set @quest_zone = 1519;
set @title = 'Stocking Up on Wood';
set @description = 'A lot of wagons full of refugees have arrived from the north, and we know more are on the way.\n\nAs this has been used as a dwarven hunting lodge, thankfully the larders are fully stocked with meat, unfortunately most of the meat was in the process of being salted and the lodge does not have a great supply of firewood, can I ask you to go out and collect some? You’ll find plenty of wood in bundles just outside the lodge.\n\nOh and a word of warning... Do not leave the valley, the things out there are very dangerous and you are not ready to go out there yet.';
set @objective = 'Collect 8 Bundles of Wood outside the lodge.';
set @completetext = 'Thank you $N, with this wood we can cook enough meat to satisfy many hungry bellies!';
set @incompletetext = 'Do you have the wood $N?';
set @faction_id = 269;
set @faction_count = 250;
set @xp_or_money = 156;
set @reward_money = 50; 
set @quest_level = 1;
set @min_level = 1;
set @questgiver_id = 1156;
set @quest_finisher = 1156;
set @nextquest = 0;
set @nextquestinchain = 0;
set @prevquest = 80200;
set @RewChoiceItemId1 = 80202; 
set @RewChoiceItemId2 = 80203; 
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
set @required_item_1 = 80200; 
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

-- Clearing Out Vermins

replace into `creature_template` values (80201, 0, 10285, 0, 0, 0, 'Trogg Vermin', '', 0, 1, 2, 42, 55, 0, 0, 15, 25, 0, 1, 0.857143, 0, 20, 5, 0, 0, 1, 0, 1, 0, 46, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 4, 'EventAI', 1, 1, 0, 0, 3, 6, 0, 0, 0, 0, 2, '');

update creature_template set loot_id = 707 where entry = 80201;

replace into `item_template` values (80204, 0, 4, 1, 'Ragged Cloth Sash', '', 28170, 1, 0, 1, 13, 13, 6, -1, -1, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

replace into `item_template` values (80205, 0, 4, 2, 'Studded Bracers', '', 17002, 1, 0, 1, 12, 12, 9, -1, -1, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 8, 0, 0, 0, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

replace into `creature_template` values (80202, 0, 4618, 0, 0, 0, 'Kathy Wake', '', 0, 5, 5, 319, 319, 0, 0, 852, 84, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4276, 0, 0, 0, 0, 2, 'npc_kathy_wake');

update creature_template set level_min = 60, level_max = 60 where entry = 80202;
update creature_template set rank = 2 where entry = 80202;
update creature_template set faction = 12 where entry = 80202;

update creature_template set equipment_id = 0 where entry = 80202;

set @quest_entry = 80203;
set @quest_zone = 1519;
set @title = 'Clearing Out Vermins';
set @description = 'Excuse me $R can I borrow your attention for a moment?\n\nI am Kathy Wake, I am a member of a branch of the Alliance military responsible for ensuring the safety and prosperity of the Alliance lands. We’ve recently been sent here with a large contingent of men. Although I personally believe we were needed back home, it is not my place to question orders.\n\nOur mission has been to ensure your people arrived safely to the lodge and were able to settle in, however it is not easy to keep everyone safe from everything out here. While my men have been dealing with the larger problematic elements in the region, smaller ones have been left unattended for too long and have been allowed to run rampant...\n\nThe refugee Caravans could be in danger if something is not done quickly, I take it you can fight? If so, please go out there and take care of the Trogg vermin that have been infesting the area around the Lodge!';
set @objective = 'Kill 8 Trogg Vermins.';
set @completetext = 'Well done $N… This is only the beginning, but removing those Vermin will ensure the Refugees remain safe for now.\n\nWe have more work to do though, I hope you can continue to assist us...\n\nBy assisting us, you are assisting your own people as well after all.';
set @incompletetext = 'Well $R, is the deed done?';
set @faction_id = 269;
set @faction_count = 250;
set @xp_or_money = 186;
set @reward_money = 80; 
set @quest_level = 1;
set @min_level = 1;
set @questgiver_id = 80202;
set @quest_finisher = 80202;
set @nextquest = 0;
set @nextquestinchain = 0;
set @prevquest = 80200;
set @RewChoiceItemId1 = 80204; 
set @RewChoiceItemId2 = 80205; 
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
set @creature_to_kill_1 = 80201;
set @creature_to_kill_2 = 0; 
set @creature_to_kill_3 = 0;
set @creature_to_kill_4 = 0;
set @creature_to_kill_1_count = 8;
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

-- Gathering Intel

replace into `gameobject_template` values (3000201, 0, 5, 381, 'Quest 80204 Custom Trigger', 0, 0, 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_exploration_trigger');

replace into `creature_template` values (80203, 0, 0, 0, 0, 0, 'Quest 80204 Custom Objective', '', 0, 5, 5, 319, 319, 0, 0, 852, 84, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4276, 0, 0, 0, 0, 2, '');

replace into `item_template` values (80206, '0', '2', '8', 'Rusted Bastard Sword', '', '2399', '1', '0', '1', '2', '2', '17', '-1', '-1', '6','0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3500', '0','0', '8', '13', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0','0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0','-1', '1', '0', '0', '0', '0', '0', '2', '3', '0', '0', '35', '0', '0', '0', '0', '0', '0', '0', '0','0', '1', NULL);

replace into `item_template` values (80207, 0, 2, 2, 'Worn Wooden Bow', '', 28235, 1, 0, 1, 2, 2, 15, -1, -1, 6,0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0,0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2800, 100,3, 5, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0,0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0,-1, 1, 0, 0, 0, 0, 0, 1, 3, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0,0, 1, NULL);

replace into `item_template` values (80208, 0, 2, 10, 'Crooked Tree Branch', '', 5404, 1, 0, 1, 2, 2, 17, -1, -1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3200, 0, 0, 8, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 1, 3, 0, 0, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

update item_template set sheath = 2 where entry = 80208;

replace into `item_template` values (80211, 0, 2, 15, 'Camping Knife', '', 6432, 1, 0, 1, 18, 18, 21, -1, -1, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1600, 0, 0, 4, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

update item_template set sheath = 3 where entry = 80211;

replace into `areatrigger_template` (`id`, `build`, `map_id`, `x`, `y`, `z`, `radius`, `box_x`, `box_y`, `box_z`, `box_orientation`) values 
(5000, 5875, 0, -5845.7, -4148.67, 387.78, 30, 0, 0, 0, 0);

replace into areatrigger_involvedrelation values (80204, 5000);

set @quest_entry = 80204;
set @quest_zone = 1519;
set @title = 'Gathering Intel';
set @description = 'You’re less green behind your ears now, which is good.\n\nThe vermins you’ve defeated are only a nuisance compared to something else that may lurk in this valley. Some of the recent refugees who arrived late last night reported seeing a figure of short stature with glowing red eyes in the woods, stalking the area...\n\nSome would say it’s mere superstition, I on the other hand believe it may be the forward scout of a Shadowforge raiding party.\n\nThe Shadowforge are one of the Dark Iron clans, corrupted red eyed dwarves who are at odds with the kingdom of Ironforge. Please investigate the area to the west where the sighting took place, but do not stray too close to the digsite, it is infested with Troggs far stronger than those vermin you fought earlier.\n\nRemember, do not engage if you find something, go in, confirm your sighting and immediately return here.';
set @objective = 'Investigate the area to the southwest of the the Lodge.';
set @completetext = 'A whole armed camp? Damn, this is a problem, we’ll need to devote resources into dealing with it and we don’t have many. Thank you for your help, $N! We may call upon you again once we figure out how to deal with this.';
set @incompletetext = 'Well $R, is the deed done?';
set @faction_id = 72;
set @faction_count = 250;
set @xp_or_money = 206;
set @reward_money = 90; 
set @quest_level = 3;
set @min_level = 2;
set @questgiver_id = 80202;
set @quest_finisher = 80202;
set @nextquest = 0;
set @nextquestinchain = 0;
set @prevquest = 80203;
set @RewChoiceItemId1 = 80206; 
set @RewChoiceItemId2 = 80207; 
set @RewChoiceItemId3 = 80208;
set @RewChoiceItemId4 = 80211; 
set @RewChoiceItemCount1 = 1;
set @RewChoiceItemCount2 = 1;
set @RewChoiceItemCount3 = 1;
set @RewChoiceItemCount4 = 1;
set @reward_item_1 = 0;
set @reward_item_2 = 0; 
set @reward_item_3 = 0;
set @reward_item_4 = 0;
set @reward_item_1_count = 0;
set @reward_item_2_count = 0;
set @reward_item_3_count = 0;
set @reward_item_4_count = 0;
set @creature_to_kill_1 = 80203;
set @creature_to_kill_2 = 0; 
set @creature_to_kill_3 = 0;
set @creature_to_kill_4 = 0;
set @creature_to_kill_1_count = 1;
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
nextquestinchain = @nextquestinchain, prevquestid = @prevquest,
objectivetext1='Location scouting completed' where entry = @quest_entry;	

-- Slaking Their Thirst

replace into `gameobject_template` values 
(3000202, 0, 2, 25386, 'Well', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_farstrider_well');

replace into item_template values
 ('80209', '0', '0', '0', 'Empty Barrel', '', '8381', '1', '0', '1', '0', '0', '0', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('80210', '0', '0', '0', 'Filled Barrel of Water', '', '8381', '1', '0', '1', '0', '0', '0', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

replace into `item_template` values (80212, 0, 4, 3, 'Polished Scalemail', '', 8672, 1, 0, 1, 12, 12, 5, -1, -1, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 86, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 5, 0, 0, 0, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

replace into `item_template` values (80213, 0, 4, 1, 'Comfy Robe', '', 14549, 1, 0, 1, 12, 12, 5, -1, -1, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

replace into `item_template` values (80214, 0, 4, 2, 'Stitched Leather Vest', '', 16585, 1, 0, 1, 12, 12, 5, -1, -1, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 8, 0, 0, 0, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

replace into `item_template` values (80215, 0, 4, 1, 'Ragged Cloth Vest', '', 14339, 1, 0, 1, 12, 12, 5, -1, -1, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

set @quest_entry = 80205;
set @quest_zone = 1519;
set @title = 'Slaking their Thirst';
set @description = 'Hello again $N!\n\nYour wood helped feed many of the refugees, it’s wonderful! However, the situation is far from resolved...\n\nThe drinking water stores and even the ale is running low, soon we will not be able to care for the refugees, luckily there is a well to the north near the border of the valley, can I ask you to go there and fill this barrel with water?\n\nIn the mean time volunteers are trying to dig a new well here but that will take time.\n\nPlease $N, I know I can count on you!';
set @objective = 'Fill barrel of water.';
set @completetext = 'You got the water?...\n\nThank you $N at least... that’s one less problem we have to deal with.\n\nThe children will have water and the progress on the well is going wonderfully! I also don’t have to touch Dwarven ale again...\n\nNo offense to them but that stuff is vile to my palate.';
set @incompletetext = 'Did you get it? The children are thirsty...';
set @faction_id = 269;
set @faction_count = 250;
set @xp_or_money = 206;
set @reward_money = 90; 
set @quest_level = 3;
set @min_level = 2;
set @questgiver_id = 1156;
set @quest_finisher = 1156;
set @nextquest = 0;
set @nextquestinchain = 0;
set @prevquest = 80201;
set @RewChoiceItemId1 = 80212; 
set @RewChoiceItemId2 = 80213; 
set @RewChoiceItemId3 = 80214;
set @RewChoiceItemId4 = 80215; 
set @RewChoiceItemCount1 = 1;
set @RewChoiceItemCount2 = 1;
set @RewChoiceItemCount3 = 1;
set @RewChoiceItemCount4 = 1;
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
set @required_item_1 = 80210; 
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
srcItemId = 80209, srcitemcount = 1
where entry = @quest_entry;	

-- Burnt Wheels

replace into `creature_template` values (80204, 0, 0, 0, 0, 0, 'Quest 80206 Custom Objective', '', 0, 5, 5, 319, 319, 0, 0, 852, 84, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4276, 0, 0, 0, 0, 2, '');

replace into broadcast_text (ID, MaleText) values (100200, 'It\'s so good that you\'re here with me $N, what can I do for you?');
replace into npc_text (ID, BroadcastTextID0) values (100200, 100200);

set @quest_entry = 80206;
set @quest_zone = 1519;
set @title = 'Burnt Wheels';
set @description = '<Vyrin looks extremely gloomy, she turns to look at you.>\n\nWe found a wagon burnt down, with the corpses of the escort near it, and no sign of the refugees... It’s... terrible… $N, it’s absolutely terrible!\n\nPlease speak to your companion... Malvinah was it? I am trying to keep people calm as we try to figure this out but she is very disturbed and is spreading panic and confusion among the refugees.';
set @objective = 'Speak to Malvinah Sunblade and report to Kathy Wake.';
set @completetext = 'So you know about it then? My scouts have confirmed it...\n\nIt’s the damn Shadowforge raiding party you found... We should have struck right away but instead I wanted to prepare... damnit!\n\nIt’s as if they knew we were on to them, you didn’t attack any of them did you?... well no matter, the time to regret is not now, now is the time to act!\n\nThe refugees have been put in cages and the Dark Irons are preparing to ritually sacrifice them to their god, the firelord Ragnaros.\n\nWe can’t allow this $N! I’m going to need your help with this!';
set @incompletetext = 'What is it $N? This isn’t a good time...';
set @faction_id = 269;
set @faction_count = 250;
set @xp_or_money = 206;
set @reward_money = 0; 
set @quest_level = 4;
set @min_level = 3;
set @questgiver_id = 1156;
set @quest_finisher = 80202;
set @nextquest = 0;
set @nextquestinchain = 0;
set @prevquest = 80205;
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
set @creature_to_kill_1 = 80204;
set @creature_to_kill_2 = 0; 
set @creature_to_kill_3 = 0;
set @creature_to_kill_4 = 0;
set @creature_to_kill_1_count = 1;
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
nextquestinchain = @nextquestinchain, prevquestid = @prevquest,
objectivetext1='Listen to Malvinah Sunblade\'s story' 
where entry = @quest_entry;	

-- Dark Iron Scrapping

replace into item_template values
 ('80216', '0', '0', '0', 'Dark Key', '', '16100', '1', '0', '1', '0', '0', '0', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL); 
 
replace into `item_template` values (80217, 0, 4, 2, 'Stitched Leather Boots', '', 14354, 1, 0, 1, 12, 12, 8, -1, -1, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 8, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);
replace into `item_template` values (80218, 0, 4, 3, 'Polished Scale Boots', '', 16980, 1, 0, 1, 12, 12, 8, -1, -1, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 5, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);
replace into `item_template` values (80219, 0, 4, 1, 'Ragged Cloth Gloves', '', 16586, 1, 0, 1, 15, 15, 10, -1, -1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);
replace into `item_template` values (80220, 0, 4, 2, 'Stitched Leather Gloves', '', 17184, 1, 0, 1, 15, 15, 10, -1, -1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 8, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

replace into`creature_template` values (80205, 0, 6055, 0, 0, 0, 'Shadowforge Fire Priest', NULL, 0, 5, 5, 109, 109, 138, 138, 105, 16, 0, 0.92, 1.14286, 0, 20, 5, 0, 0, 1, 4, 5, 0, 52, 1, 2000, 2156, 2, 32768, 0, 0, 0, 0, 0, 0, 8.624, 11.858, 100, 7, 0, 3183, 3183, 0, 0, 0, 0, 0, 0, 0, 172, 348, 0, 0, 31830, 0, 3, 9, 'EventAI', 0, 3, 0, 0, 3, 3183, 0, 0, 0, 0, 0, '');

update creature_template set loot_id = 80205 where entry = 80205; 

delete from creature_loot_template where entry = 80205 and item = 80216;
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80205, 80216, -100, 1, 1, 1);	 

replace into `creature_template` values (80206, 0, 0, 0, 0, 0, 'Quest 80207 Custom Objective', '', 0, 5, 5, 319, 319, 0, 0, 852, 84, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4276, 0, 0, 0, 0, 2, '');

replace into`creature_template` values (80207, 0, 6053, 6057, 0, 0, 'Shadowforge Prowler', NULL, 0, 5, 5, 109, 109, 138, 138, 105, 16, 0, 0.92, 1.14286, 0, 20, 5, 0, 0, 1, 4, 5, 0, 52, 1, 2000, 2156, 2, 32768, 0, 0, 0, 0, 0, 0, 8.624, 11.858, 100, 7, 0, 3183, 3183, 0, 0, 0, 0, 0, 0, 0, 172, 348, 0, 0, 31830, 0, 3, 9, 'EventAI', 0, 3, 0, 0, 3, 3183, 0, 0, 0, 0, 0, '');

replace into `creature_template` values (80208, 0, 16592, 16676, 16682, 16289, 'High Elf Refugee', '', 0, 5, 5, 319, 319, 0, 0, 852, 84, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4276, 0, 0, 0, 0, 2, '');

replace into `creature_template` values (80209, 0, 16825, 17658, 16103, 16704, 'High Elf Refugee', '', 0, 5, 5, 319, 319, 0, 0, 852, 84, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4276, 0, 0, 0, 0, 2, '');

replace into `creature_template` values (80210, 0, 18003, 0, 0, 0, 'Arisha Sunblade', '', 0, 5, 5, 319, 319, 0, 0, 852, 84, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4276, 0, 0, 0, 0, 2, '');

update creature_template set equipment_id = 0 where entry = 80208;
update creature_template set equipment_id = 0 where entry = 80209;
update creature_template set equipment_id = 0 where entry = 80210;

replace into creature_template_addon (entry, bytes1, emote) values ('80208', '1', 0); 

replace into `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) values (3000203, 0, 0, 25794, 'Shadowforge Cage', 0, 32, 1, 0, 0, 0, 0, 21400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_shadowforge_cage');

set @quest_entry = 80207;
set @quest_zone = 1519;
set @title = 'Dark Iron Scrapping';
set @description = 'Alright, $N, here is the plan. We have established a perimeter but we believe that if we move in in force, then they will execute the refugees, we have been ordered to not engage.\n\nHowever if we do not act now, the refugees will be executed. We need an outsider to sneak into their camp, kill the Fire Cleric, acquire the key to the cells and free the refugees.\n\nI can think of no one more worthy for this task, you have proven yourself to be strong and resourceful in the short time we’ve known each other.\n\nI believe that you can do this $N! Go now and save those people!';
set @objective = 'Kill Shadowforge Fire Priest, acquire Dark Key and free High Elf refugees.';
set @completetext = 'They are all safe... I can’t believe it, we have averted a disaster! I can’t thank you enough, $N! We take our duty very seriously and losing those people would have been terrible.\n\nThe time is now, we will take care of the raiding party... Now I believe someone wishes to talk to you, go see Vyrin!';
set @incompletetext = 'Time is of the essence, $N, do not delay!';
set @faction_id = 269;
set @faction_count = 250;
set @xp_or_money = 224;
set @reward_money = 200; 
set @quest_level = 4;
set @min_level = 4;
set @questgiver_id = 80202;
set @quest_finisher = 80202;
set @nextquest = 0;
set @nextquestinchain = 0;
set @prevquest = 80205;
set @RewChoiceItemId1 = 80217; 
set @RewChoiceItemId2 = 80218; 
set @RewChoiceItemId3 = 80219;
set @RewChoiceItemId4 = 80220; 
set @RewChoiceItemCount1 = 1;
set @RewChoiceItemCount2 = 1;
set @RewChoiceItemCount3 = 1;
set @RewChoiceItemCount4 = 1;
set @reward_item_1 = 0;
set @reward_item_2 = 0; 
set @reward_item_3 = 0;
set @reward_item_4 = 0;
set @reward_item_1_count = 0;
set @reward_item_2_count = 0;
set @reward_item_3_count = 0;
set @reward_item_4_count = 0;
set @creature_to_kill_1 = 80205;
set @creature_to_kill_2 = 80206; 
set @creature_to_kill_3 = 0;
set @creature_to_kill_4 = 0;
set @creature_to_kill_1_count = 1;
set @creature_to_kill_2_count = 1;
set @creature_to_kill_3_count = 0;
set @creature_to_kill_4_count = 0;
set @required_item_1 = 80216; 
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
objectivetext2='High Elf refugees freed' 
where entry = @quest_entry;	

-- Sunblade Reunion

replace into`creature_template` values (80211, 0, 0, 0, 0, 0, 'Quest 80208 Custom Objective', '', 0, 5, 5, 319, 319, 0, 0, 852, 84, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4276, 0, 0, 0, 0, 2, '');

replace into item_template values
 ('80221', '0', '0', '0', 'Forever-Lovely Rose', 'Just like our friendship this rose shall never wither. — Malvinah Sunblade', '50199', '1', '0', '1', '0', '0', '1', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

set @quest_entry = 80208;
set @quest_zone = 1519;
set @title = 'Sunblade Reunion';
set @description = 'You’re the hero of the hour, $N! All the Refugees are speaking your name!\n\nI believe a friend is grateful in particular, why not go and speak with Malvinah Sunblade?';
set @objective = 'Speak to Malvinah Sunblade.';
set @completetext = 'You did well, $N, you deserve all this praise.\n\nIt may not seem like much to save a few refugees, but once you consider that this is just the start of your journey, combined with the courage you exhibited. \n\nWell I can safely say that I am proud to have met you. However, there is another matter we much talk about.\n\nSeveral of the Refugee caravans have decided to move on to Stormwind, we can escort them part of the way, but eventually they will arrive in a region beset by strife.\n\nWhile bandits and beasts run amok, we are ordered to outlying areas such as this.\n\nWe can’t go against our orders, but adventurers like you can make a difference back home.\n\nThink about it and talk to me again.';
set @incompletetext = 'The Hero of the hour returns huh?';
set @faction_id = 269;
set @faction_count = 250;
set @xp_or_money = 224;
set @reward_money = 100; 
set @quest_level = 5;
set @min_level = 4;
set @questgiver_id = 1156;
set @quest_finisher = 1156;
set @nextquest = 0;
set @nextquestinchain = 0;
set @prevquest = 80207;
set @RewChoiceItemId1 = 0; 
set @RewChoiceItemId2 = 0; 
set @RewChoiceItemId3 = 0;
set @RewChoiceItemId4 = 0; 
set @RewChoiceItemCount1 = 0;
set @RewChoiceItemCount2 = 0;
set @RewChoiceItemCount3 = 0;
set @RewChoiceItemCount4 = 0;
set @reward_item_1 = 80221;
set @reward_item_2 = 0; 
set @reward_item_3 = 0;
set @reward_item_4 = 0;
set @reward_item_1_count = 1;
set @reward_item_2_count = 0;
set @reward_item_3_count = 0;
set @reward_item_4_count = 0;
set @creature_to_kill_1 = 80211;
set @creature_to_kill_2 = 0; 
set @creature_to_kill_3 = 0;
set @creature_to_kill_4 = 0;
set @creature_to_kill_1_count = 1;
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
nextquestinchain = @nextquestinchain, prevquestid = @prevquest,
objectivetext1='Listen to Malvinah Sunblade' 
where entry = @quest_entry;	

-- Porting to Goldshire

replace into broadcast_text (ID, MaleText) values (100201, 'Ah if it isn’t $N! You’ve certainly become famous here...\n\nAh you need to get to Goldshire? Well I can’t deny you after all you’ve done for us. I will be able to teleport you there this one time as a special favor.\n\nAre you ready to go? It will be a while before you can return here once you leave.');
replace into npc_text (ID, BroadcastTextID0) values (100201, 100201);

replace into`creature_template` values (80212, 0, 0, 0, 0, 0, 'Quest 80209 Custom Objective', '', 0, 5, 5, 319, 319, 0, 0, 852, 84, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4276, 0, 0, 0, 0, 2, '');

replace into `creature_template` values (80213, 0, 16115, 0, 0, 0, 'Magistrix Ishalah', '', 0, 6, 7, 319, 319, 0, 0, 852, 84, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4276, 0, 0, 0, 0, 2, 'npc_magistrix_ishalah');

update creature_template set npc_flags = 1 where entry = 80213;
update creature_template set equipment_id = 0 where entry = 80213;

replace into gameobject_template values 
(3000204, 0, 1, 2770,  'Portal to Goldshire', 35, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_portal_goldshire'),
(3000205, 0, 1, 6696,  'Portal to Goldshire', 35, 0, 0.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_portal_goldshire');

set @quest_entry = 80209;
set @quest_zone = 1519;
set @title = 'Porting to Goldshire';
set @description = 'You’ve decided to assist then? I am grateful $N!\n\nThe situation back home is dire and we simply are not allowed to go back. I do not know what kind of affliction ails the Stormwind nobles. Ever since King Varian disappeared, the Kingdom has been run into the ground!\n\nAlas while we cannot deal with the nobles, we can deal with the problems in the provinces! Elwynn Forest is a good place to start, the capital itself is located in this region and it has been beset by issues. Kobolds raiding the mines, Gnolls raiding towns and Bandits raiding the roads. \n\nMy friend Marshal Dugan is stationed in Goldshire and he can put you to good use, I believe the Magistrix here can teleport you to Goldshire.';
set @objective = 'Speak to Magistrix Ishalah to be teleported to Goldshire, report to Marshal Dugan.';
set @completetext = 'Kathy Wake sent you?! You’ve certainly made connections if an SI... I mean, if a member of the Alliance military sent you!\n\nIf you’re here to assist, I can assure you that we’ll need the help. I have requested for reinforcements from the capital several times and received nothing.\n\nIf Kathy vouches for you, then it’s good enough for me. I believe I have your first assignment in mind!\n\nOh and don’t forget to visit the inn, you may want to attune your Hearthstone there if you have one.';
set @incompletetext = 'A High elf here? What can I do for you stranger';
set @faction_id = 72;
set @faction_count = 250;
set @xp_or_money = 254;
set @reward_money = 0; 
set @quest_level = 5;
set @min_level = 4;
set @questgiver_id = 80202;
set @quest_finisher = 240;
set @nextquest = 0;
set @nextquestinchain = 0;
set @prevquest = 80208;
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
set @creature_to_kill_1 = 80212;
set @creature_to_kill_2 = 0; 
set @creature_to_kill_3 = 0;
set @creature_to_kill_4 = 0;
set @creature_to_kill_1_count = 1;
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
nextquestinchain = @nextquestinchain, prevquestid = @prevquest,
objectivetext1='Teleport to Goldshire' 
where entry = @quest_entry;	

-- Providing a Balanced Diet

replace into gameobject_template values 
(3000206, 0, 3, 60, 'Loch Modan Pumpkin', 0, 0, 0.4, 57, 3000206, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
replace into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) values 
(3000206, 80224, -100, 1, 1, 1, 0, 0, 10);

replace into gameobject_template values 
(3000207, 0, 3, 28, 'Loch Modan Berry Bush', 0, 0, 0.3, 57, 3000207, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
replace into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) values 
(3000207, 80225, -100, 1, 1, 1, 0, 0, 10);

replace into item_template values
 ('80224', '0', '0', '0', 'Loch Modan Pumpkin', '', '3225', '1', '0', '1', '0', '0', '0', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '10', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('80225', '0', '0', '0', 'Loch Modan Berries', '', '20770', '1', '0', '1', '0', '0', '0', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '10', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

set @quest_entry = 80210;
set @quest_zone = 1519;
set @title = 'Providing a Balanced Diet';
set @description = 'Greetings, $N! You’ve done amazing progress so far, but there still remains so much to do.\n\nWhile the lodge is stocked with an abundance of grain and meat, we’re lacking other types of nourishment, especially fruits and vegetables.\n\nLuckily, the area around the lodge has an overabundance of pumpkin and berries at this time of the year. Can I count on you to search the area for berries and pumpkins?\n\nOur people’s welfare depends on it!';
set @objective = 'Collect Four Loch Modan Pumpkins and Eight Loch Modan berries from the area surrounding the Farstrider Lodge.';
set @completetext = 'Wonderful! This will last for a while until we can acquire supplies from the Alliance.\n\nWe can also use the seeds from the pumpkins to plan our own pumpkin patch.';
set @incompletetext = 'Did you get the berries and fruits?';
set @faction_id = 269;
set @faction_count = 250;
set @xp_or_money = 264;
set @reward_money = 150; 
set @quest_level = 4;
set @min_level = 3;
set @questgiver_id = 1156;
set @quest_finisher = 1156;
set @nextquest = 0;
set @nextquestinchain = 0;
set @prevquest = 80201;
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
set @required_item_1 = 80224; 
set @required_item_2 = 80225;
set @required_item_3 = 0;
set @required_item_4 = 0;
set @required_item_1_count = 4;
set @required_item_2_count = 8;
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

-- Seeking Further Guidance (Hunter)

replace into item_template values
 ('80226', '0', '15', '0', 'Ranger\'s Letter', '', '3029', '1', '0', '1', '0', '0', '0', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '4', '80226', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
replace into page_text values (80226, 'Greetings, $n!\n\nMy name is Rubinah Sunsworn! I have watched your exploits with interest. You are an initiate Ranger but the loss of our homeland has left your training incomplete.\n\nTwenty years ago during the Second war, the Rangers planted a seed from our homeland outside the lodge, now that tree is more than a reminder, it is hope that our home may one day be reclaimed.\n\nIt is the job of all Rangers to defend our people wherever they live. I will be able to resume your training, if you’re interested come speak to me, I reside within the lodge.', 0);

set @quest_entry = 80211;
set @quest_zone = 1519;
set @title = 'Seeking Further Guidance';
set @description = '$N, the fall of our homeland has affected all of us. But even if our education and path was cut short, there are still ways…\n\nRecently someone left a letter on the desk, and it was addressed to you.\n\nPerhaps you should read it and see what it says?';
set @objective = 'Read the Ranger\'s Letter and speak to Rubinah Sunsworn.';
set @completetext = 'So you’ve chosen to begin your training, I am pleased, $N, very pleased. Talk to me again and I will do my best to guide you with knowledge.\n\nIn time I believe you will grow to become someone all Rangers can be proud of calling a comrade!\n\nMy bearded friend Claude Erksine can also assist you with beast related training once you are prepared.';
set @incompletetext = 'Yes? What is it?';
set @faction_id = 269;
set @faction_count = 250;
set @xp_or_money = 154;
set @reward_money = 0; 
set @quest_level = 3;
set @min_level = 3;
set @questgiver_id = 1156;
set @quest_finisher = 80219;
set @nextquest = 0;
set @nextquestinchain = 0;
set @prevquest = 80200;
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
set @required_item_1 = 80226; 
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
srcItemId = 80226, srcitemcount = 1, RequiredClasses = 4
where entry = @quest_entry;	

-- Seeking Further Guidance (Paladin)

replace into item_template values
 ('80227', '0', '15', '0', 'Paladin\'s Letter', '', '3029', '1', '0', '1', '0', '0', '0', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '4', '80227', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
replace into page_text values (80227, '$N, I am known as Lor\'thas the Holy. I was once part of the Order of the Silverhand.\n\nBefore the fall of the Order and the Kingdom of Lordaeron I was known as Paladin, a valiant servant of the light, banishing Darkness wherever it may be. Your path is taking you down one similar to mine, you carry the will of the Light alongside great martial prowess.\n\nSeek me out in the lodge and I shall train you to the best of my abilities!', 0);

set @quest_entry = 80212;
set @quest_zone = 1519;
set @title = 'Seeking Further Guidance';
set @description = '$N, the fall of our homeland has affected all of us. But even if our education and path was cut short, there are still ways…\n\nRecently someone left a letter on the desk, and it was addressed to you.\n\nPerhaps you should read it and see what it says?';
set @objective = 'Read the Paladin\'s Letter and speak to Lor\'thas the Holy.';
set @completetext = 'Light be with you, $N!\n\nIt honors and brings me endless joy to see you take the first step on the path of becoming a Paladin.\n\nKnow that I shall do my outmost to guide you through the tenets and through your training.\n\nTalk to me again whenever you wish to seek my counsel.';
set @incompletetext = 'Yes? What is it?';
set @faction_id = 269;
set @faction_count = 250;
set @xp_or_money = 154;
set @reward_money = 0; 
set @quest_level = 3;
set @min_level = 3;
set @questgiver_id = 1156;
set @quest_finisher = 80220;
set @nextquest = 0;
set @nextquestinchain = 0;
set @prevquest = 80200;
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
set @required_item_1 = 80227; 
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
srcItemId = 80227, srcitemcount = 1, RequiredClasses = 2
where entry = @quest_entry;	

-- Seeking Further Guidance (Priest)

replace into item_template values
 ('80228', '0', '15', '0', 'Priest\'s Letter', '', '3029', '1', '0', '1', '0', '0', '0', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '4', '80228', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
replace into page_text values (80228, 'Light be with you, $N!\n\nI am Maelah Sunsworn.\n\nI was once ordained in Temples of Quel’thalas, preaching the Light of the Sun, I walked the same halls as High Priest Belo’vir.\n\nIt is with much sadness that those days are gone, our Temples lay in ruin, and the warmth of the Sun lays forsaken.\n\nI have seen within you the spark of devotion and faith… \n\nCome to me within the lodge, I will gladly guide your path so that one day our people’s faith may be restored, not only in the Light, but in our future.', 0);

set @quest_entry = 80213;
set @quest_zone = 1519;
set @title = 'Seeking Further Guidance';
set @description = '$N, the fall of our homeland has affected all of us. But even if our education and path was cut short, there are still ways…\n\nRecently someone left a letter on the desk, and it was addressed to you.\n\nPerhaps you should read it and see what it says?';
set @objective = 'Read the Priest\'s Letter and speak to Maelah Sunsworn.';
set @completetext = 'By the Sun you\'ve come! I am so happy.\n\nSo many of our people have lost their faith in the Light of the Sun, wandering like lost sheep in the dark. \n\nTogether we can be the beacon guiding them to salvation and to the warmth of the Sun!\n\nI shall of course do my best to be your beacon, $N, you shall but ask and I will teach you what I can.';
set @incompletetext = 'Yes? What is it?';
set @faction_id = 269;
set @faction_count = 250;
set @xp_or_money = 154;
set @reward_money = 0; 
set @quest_level = 3;
set @min_level = 3;
set @questgiver_id = 1156;
set @quest_finisher = 80221;
set @nextquest = 0;
set @nextquestinchain = 0;
set @prevquest = 80200;
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
set @required_item_1 = 80228; 
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
srcItemId = 80228, srcitemcount = 1, RequiredClasses = 16
where entry = @quest_entry;	

-- Seeking Further Guidance (Mage)

replace into item_template values
 ('80229', '0', '15', '0', 'Magister\'s Letter', '', '3029', '1', '0', '1', '0', '0', '0', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '4', '80229', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
replace into page_text values (80229, 'Bal’a’desh $N, you have the honor of being addressed by Magister Ala’shor of house Sunblood.\n\nI see that you have a meager grasp of magic that exceeds the common refugee. The Magisterium these days is a shadow of what it once was: As a Magister of Quel’thalas I cannot allow this to continue.\n\nWhatever may have befallen our homeland, my duties or those of the Magisterium do not cease there.\n\nCome to me, and I shall make you my apprentice. If you can handle my training you will become a capable Magic Caster, one worthy of a rebuilt Magisterium one day.\n\nI reside within the lodge.', 0);

set @quest_entry = 80214;
set @quest_zone = 1519;
set @title = 'Seeking Further Guidance';
set @description = '$N, the fall of our homeland has affected all of us. But even if our education and path was cut short, there are still ways…\n\nRecently someone left a letter on the desk, and it was addressed to you.\n\nPerhaps you should read it and see what it says?';
set @objective = 'Read the Magister\'s Letter and speak to Magister Ala\'shor.';
set @completetext = 'Ah $N, I take it you’re here to become my apprentice then?\n\nIf so, then know that I do not mean to coddle you. You will be serving under a proud member of the Magisterium.\n\nYou will be taught what I deem necessary for your progress, continue to perform adequately and I shall continue to guide you.\n\nEventually you will be deemed fit for the Magisterium.\n\nTalk to me again if you are prepared.';
set @incompletetext = 'Yes? What is it?';
set @faction_id = 269;
set @faction_count = 250;
set @xp_or_money = 154;
set @reward_money = 0; 
set @quest_level = 3;
set @min_level = 3;
set @questgiver_id = 1156;
set @quest_finisher = 80218;
set @nextquest = 0;
set @nextquestinchain = 0;
set @prevquest = 80200;
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
set @required_item_1 = 80229; 
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
srcItemId = 80229, srcitemcount = 1, RequiredClasses = 128
where entry = @quest_entry;	

-- Seeking Further Guidance (Rogue)

replace into item_template values
 ('80230', '0', '15', '0', 'Shady Letter', '', '3029', '1', '0', '1', '0', '0', '0', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '4', '80230', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
replace into page_text values (80230, 'Heya $N, I write to you because you appear to be a useful asset.\n\nEveryone here will gladly boast of honor, integrity, the sun or other crap like that. Well not me, I know that to keep our people safe, harsher methods must be taken in place.\n\nOur people need someone to skulk the shadows, learn things, report them, or even end threats prematurely. I sense within you an affinity for the kind of order I wish to form.\n\nSeek me out, I shall make it worth your time! I’ll be waiting for you within the lodge.', 0);

set @quest_entry = 80215;
set @quest_zone = 1519;
set @title = 'Seeking Further Guidance';
set @description = '$N, the fall of our homeland has affected all of us. But even if our education and path was cut short, there are still ways…\n\nRecently someone left a letter on the desk, and it was addressed to you.\n\nPerhaps you should read it and see what it says?';
set @objective = 'Read Shady Letter and speak to Leela the Shadow.';
set @completetext = 'So you really came huh?\n\nAmusing... Well you’ve completed your first test, but don’t think it’s the last one.\n\nLet’s see how well you fare under my training, talk to me again when you’re ready and I’ll teach you some tricks, if you continue to show potential, then expect me to continue teaching you.';
set @incompletetext = 'Yes? What is it?';
set @faction_id = 269;
set @faction_count = 250;
set @xp_or_money = 154;
set @reward_money = 0; 
set @quest_level = 3;
set @min_level = 3;
set @questgiver_id = 1156;
set @quest_finisher = 80223;
set @nextquest = 0;
set @nextquestinchain = 0;
set @prevquest = 80200;
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
set @required_item_1 = 80230;
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
srcItemId = 80230, srcitemcount = 1, RequiredClasses = 8
where entry = @quest_entry;	

-- Seeking Further Guidance (Warrior)

replace into item_template values
 ('80231', '0', '15', '0', 'Swordsman\'s Letter', '', '3029', '1', '0', '1', '0', '0', '0', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '4', '80231', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
replace into page_text values (80231, 'Hail to you, $N!\n\nI am Valanos Dawnfire, a swordsman of the Thalassian army.\n\nWith the fall of Quel’thalas, my duties now lay on protecting what’s left of us, on protecting our heritage, our people, and wherever they may reside.\n\nThat duty includes training new warriors who can fight for our people.\n\nSeek me out in the lodge $N and I shall hone your inexperienced body into that of a warrior, one that can protect our people!', 0);

set @quest_entry = 80216;
set @quest_zone = 1519;
set @title = 'Seeking Further Guidance';
set @description = '$N, the fall of our homeland has affected all of us. But even if our education and path was cut short, there are still ways…\n\nRecently someone left a letter on the desk, and it was addressed to you.\n\nPerhaps you should read it and see what it says?';
set @objective = 'Read Swordsman\'s Letter and speak to Valanos Dawnfire.';
set @completetext = 'I must say, your appearance gives me hope.\n\nFew of our people take on the path of the sword, it is a long and arduous journey, but I have faith that you can overcome it with my training.\n\nIt doesn’t matter how many Rangers or Mages you have, in the end you need someone on the frontlines to win battles.\n\nWhen you’re ready to take up that mantle talk to me again.';
set @incompletetext = 'Yes? What is it?';
set @faction_id = 269;
set @faction_count = 250;
set @xp_or_money = 154;
set @reward_money = 0; 
set @quest_level = 3;
set @min_level = 3;
set @questgiver_id = 1156;
set @quest_finisher = 80217;
set @nextquest = 0;
set @nextquestinchain = 0;
set @prevquest = 80200;
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
set @required_item_1 = 80231;
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
srcItemId = 80231, srcitemcount = 1, RequiredClasses = 1
where entry = @quest_entry;	

-- Additional NPC and citizens:

replace into `creature_template` values (80214, 0, 16705, 0, 0, 0, 'Malanius Silvershine', 'Food Merchant', 0, 3, 3, 219, 219, 0, 0, 852, 84, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4276, 0, 0, 0, 0, 2, '');

update creature_template set npc_flags = 4 where entry = 80214;
update creature_template set equipment_id = 0 where entry = 80214;

replace into `npc_vendor` values 
(80214, 159, 0, 0, 0, 0),
(80214, 2512, 0, 0, 0, 0),
(80214, 2516, 0, 0, 0, 0),
(80214, 2947, 0, 0, 0, 0),
(80214, 3111, 0, 0, 0, 0),
(80214, 4540, 0, 0, 0, 0),
(80214, 6183, 0, 0, 0, 0);

replace into `creature_template` values (80215, 0, 16133, 0, 0, 0, 'Alyssia Solar', 'Cloth & Leather Armor Merchant', 0, 11, 11, 456, 456, 0, 0, 20, 29, 16388, 1.1, 1.14286, 0, 20, 5, 0, 0, 1, 12, 14, 0, 64, 1, 2000, 2090, 1, 4864, 0, 0, 0, 0, 0, 0, 18.392, 25.289, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 524298, '');

update creature_template set faction = 371 where entry = 80215; 

replace into `npc_vendor` values 
(80215, 2117, 0, 0, 0, 0),
(80215, 2119, 0, 0, 0, 0),
(80215, 2120, 0, 0, 0, 0),
(80215, 2121, 0, 0, 0, 0),
(80215, 2122, 0, 0, 0, 0),
(80215, 2123, 0, 0, 0, 0),
(80215, 2124, 0, 0, 0, 0),
(80215, 2125, 0, 0, 0, 0),
(80215, 2126, 0, 0, 0, 0),
(80215, 2127, 0, 0, 0, 0),
(80215, 3599, 0, 0, 0, 0),
(80215, 3600, 0, 0, 0, 0);

replace into `creature_template` values (80216, 0, 18220, 18221, 18222, 18223, 'Ranger Protector', 'Silvermoon Remnant', 0, 55, 55, 4700, 4700, 0, 0, 20, 85, 0, 1, 1.42857, 0, 20, 5, 0, 0, 1, 154, 222, 0, 248, 1, 2000, 2000, 1, 36864, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 35021, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 16096, 0, 0, 0, 0, 524288, '');

update creature_template set faction = 371 where entry = 80216; 

REPLACE INTO `item_template` values (80222, 0, 2, 8, 'Farstrider Lodge Protector\'s Sword', '', 35898, 2, 0, 1, 8842, 1768, 17, -1, -1, 20, 15, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 4, 4, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2900, 0, 0, 30, 46, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 1, 1, 0, 0, 65, 0, 0, 0, 0, 22, 0, 0, 0, 0, 1, NULL);

REPLACE INTO `item_template` values (80223, 6, 2, 2, 'Farstrider Lodge Protector\'s Bow', '', 40143, 3, 32768, 1, 9126, 1825, 15, 2047, 255, 23, 18, 0, 0, 0, 0, 0, 0, 6, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 100, 2, 19, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, -1, 1, 0, 0, 0, 0, 0, 2, 0, 0, 0, 65, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

update item_template set allowable_race = -1 where entry = 80223;

replace into `creature_equip_template` (`entry`, `equipentry1`, `equipentry3`) values ('80216', '80222', '80223');

update creature_template set equipment_id = 80216 where entry = 80216;

replace into `creature_template` values (80217, 0, 16767, 0, 0, 0, 'Valanos Dawnfire', 'Warrior Trainer', 523, 11, 11, 456, 456, 406, 406, 20, 29, 19, 1, 1.14286, 0, 20, 5, 0, 0, 1, 12, 14, 0, 64, 1, 2000, 2000, 1, 4864, 0, 0, 0, 0, 1, 0, 18.392, 25.289, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 3153, 0, 0, 0, 0, 524298, '');

update creature_template set faction = 371 where entry = 80217; 

SET @gossip_menu_id = 56540;
SET @magic_number = 80217; -- Warrior
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (ID, MaleText) values (@magic_number, 'Our kin prides itself with intellect and magic, but you and I know that sometimes a more brutish approach is needed.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

replace into `npc_trainer` values (80217, 1343, 100, 0, 0, 6, 0, 5875);
replace into `npc_trainer` values (80217, 1423, 100, 0, 0, 4, 0, 5875);
replace into `npc_trainer` values (80217, 1738, 100, 0, 0, 4, 0, 5875);
replace into `npc_trainer` values (80217, 3128, 100, 0, 0, 6, 0, 5875);
replace into `npc_trainer` values (80217, 6674, 10, 0, 0, 1, 0, 5875);

replace into `creature_template` values (80218, 0, 17279, 0, 0, 0, 'Magister Ala\'shor Sunblood', 'Mage Trainer', 64, 10, 10, 413, 413, 370, 370, 20, 126, 19, 1, 1.14286, 0, 20, 5, 0, 0, 1, 7, 7, 0, 62, 1, 2000, 2000, 1, 4864, 0, 0, 0, 0, 8, 0, 16.808, 23.111, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 5884, 0, 0, 0, 0, 524298, '');

update creature_template set faction = 371 where entry = 80218;

SET @gossip_menu_id = 56541;
SET @magic_number = 80218; -- Mage
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (ID, MaleText) values (@magic_number, 'With the Sunwell gone, we strife to use as little mana as possible, we used to be a pillar of the Arcane, $N, now look at us.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

replace into `npc_trainer` values (80218, 1142, 100, 0, 0, 0, 0, 5875);
replace into `npc_trainer` values (80218, 1173, 100, 0, 0, 0, 0, 5875);
replace into `npc_trainer` values (80218, 1249, 100, 0, 0, 0, 0, 5875);
replace into `npc_trainer` values (80218, 1472, 10, 0, 0, 0, 0, 5875);
replace into `npc_trainer` values (80218, 2141, 100, 0, 0, 0, 0, 5875);
replace into `npc_trainer` values (80218, 5507, 100, 0, 0, 0, 0, 5875);

replace into `creature_template` values (80219, 0, 16778, 0, 0, 0, 'Ranger Rubinah Sunsworn', 'Hunter Trainer', 4648, 8, 8, 334, 334, 297, 297, 20, 126, 19, 1, 1.14286, 0, 20, 5, 0, 0, 1, 7, 10, 0, 58, 1, 2000, 2000, 1, 4864, 0, 0, 0, 0, 3, 0, 13.5872, 18.6824, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 3154, 0, 0, 0, 0, 524298, '');

update creature_template set faction = 371 where entry = 80219;

SET @gossip_menu_id = 56542;
SET @magic_number = 80219; -- Hunter
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (ID, MaleText) values (@magic_number, 'The Farstriders were a proud group of rangers, with the fall of our land they too have been left behind, yet it is in us that their legacy will live on.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

replace into `npc_trainer` values (80219, 1547, 10, 0, 0, 1, 0, 5875);
replace into `npc_trainer` values (80219, 2003, 100, 0, 0, 4, 0, 5875);
replace into `npc_trainer` values (80219, 3048, 100, 0, 0, 6, 0, 5875);
replace into `npc_trainer` values (80219, 5298, 100, 0, 0, 6, 0, 5875);
replace into `npc_trainer` values (80219, 13164, 50, 0, 0, 4, 0, 5875);

replace into `creature_template`  values (80220, 0, 16624 , 0, 0, 0, 'Lor\'thas the Holy', 'Paladin Trainer', 4663, 5, 5, 166, 166, 190, 190, 20, 12, 19, 1, 1.14286, 0, 20, 5, 0, 0, 1, 6, 8, 0, 52, 1, 1500, 2000, 1, 4864, 0, 0, 0, 0, 2, 0, 8.624, 11.858, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 925, 0, 0, 0, 0, 524298, '');

update creature_template set faction = 371 where entry = 80220;

SET @gossip_menu_id = 56543;
SET @magic_number = 80220; -- Paladin
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (ID, MaleText) values (@magic_number, 'It is by the blessings of the Light we both stand here today, $N, we will be the ones to avenge our people, against the Scourge and other threads, but remember the teachings, vengeance by justice.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

replace into `npc_trainer` values (80220, 1873, 100, 0, 0, 6, 0, 5875);
replace into `npc_trainer` values (80220, 1875, 10, 0, 0, 1, 0, 5875);
replace into `npc_trainer` values (80220, 1937, 100, 0, 0, 8, 0, 5875);
replace into `npc_trainer` values (80220, 10321, 100, 0, 0, 4, 0, 5875);
replace into `npc_trainer` values (80220, 19741, 100, 0, 0, 4, 0, 5875);
replace into `npc_trainer` values (80220, 21083, 100, 0, 0, 6, 0, 5875);

replace into `creature_template` values (80221, 0, 16765, 0, 0, 0, 'Priestess Maelah Sunsworn', 'Priest Trainer', 4665, 5, 5, 166, 166, 190, 190, 20, 12, 19, 1, 1.14286, 0, 20, 5, 0, 0, 1, 6, 8, 0, 52, 1, 1500, 2000, 1, 4864, 0, 0, 0, 0, 5, 0, 8.624, 11.858, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 375, 0, 0, 0, 0, 524298, '');

update creature_template set faction = 371 where entry = 80221;

SET @gossip_menu_id = 56544;
SET @magic_number = 80221; -- Priest
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (ID, MaleText) values (@magic_number, 'These are dark times, $N, but we must guide our kin to the Light, and we must tend to their wounds as best as we can.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

replace into `npc_trainer` values (80221, 1255, 10, 0, 0, 1, 0, 5875);
replace into `npc_trainer` values (80221, 1258, 100, 0, 0, 4, 0, 5875);
replace into `npc_trainer` values (80221, 1275, 100, 0, 0, 6, 0, 5875);
replace into `npc_trainer` values (80221, 2056, 100, 0, 0, 4, 0, 5875);
replace into `npc_trainer` values (80221, 2851, 100, 0, 0, 6, 0, 5875);

REPLACE INTO `creature_template`VALUES (80223, 0, 16796, 0, 0, 0, 'Leela the Shadow', 'Rogue Trainer', 0, 8, 8, 334, 334, 297, 297, 20, 29, 18, 1, 1.14286, 0, 20, 5, 0, 0, 1, 7, 10, 0, 58, 1, 2000, 2000, 1, 4864, 0, 0, 0, 0, 4, 0, 13.5872, 18.6824, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 3155, 0, 0, 0, 0, 524298, '');

update creature_template set faction = 371 where entry = 80223;
update creature_template set npc_flags = 19 where entry = 80223;

SET @gossip_menu_id = 56545;
SET @magic_number = 80223; -- Rogue
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (ID, MaleText) values (@magic_number, 'Whether you want to steal from a noble\'s pocket, crawl into the shadows or lockpick\'s someones\' chest, remember the Sunwell.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

REPLACE INTO `npc_trainer` VALUES (80223, 1762, 100, 0, 0, 6, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (80223, 1780, 100, 0, 0, 6, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (80223, 1789, 10, 0, 0, 1, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (80223, 2592, 100, 0, 0, 4, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (80223, 5167, 100, 0, 0, 4, 0, 5875);

replace into `creature_template` values (80222, 0, 16655, 0, 0, 0, 'Melonius Silvershine', 'Mail Armor Merchant', 0, 10, 10, 413, 413, 0, 0, 20, 29, 16388, 1.1, 1.14286, 0, 20, 5, 0, 0, 1, 9, 13, 0, 62, 1, 2000, 2101, 1, 4864, 0, 0, 0, 0, 0, 0, 16.808, 23.111, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 3161, 0, 0, 0, 0, 524298, '');

update creature_template set faction = 371 where entry = 80222; 
update creature_template set equipment_id = 0 where entry = 80222;

replace into `npc_vendor` values
(80222, 2129, 0, 0, 0, 0),
(80222, 2379, 0, 0, 0, 0),
(80222, 2380, 0, 0, 0, 0),
(80222, 2381, 0, 0, 0, 0),
(80222, 2383, 0, 0, 0, 0),
(80222, 2384, 0, 0, 0, 0),
(80222, 2385, 0, 0, 0, 0),
(80222, 17184, 0, 0, 0, 0);

replace into `creature_template` values (80224, 0, 16592, 16676, 16682, 16289, 'Captured Refugee', '', 0, 5, 5, 319, 319, 0, 0, 852, 84, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4276, 0, 0, 0, 0, 2, '');

update creature_template set equipment_id = 0 where entry = 80224;

replace into `creature_template` values (80225, 0, 16825, 17658, 16103, 16704, 'Captured Refugee', '', 0, 5, 5, 319, 319, 0, 0, 852, 84, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4276, 0, 0, 0, 0, 2, '');

update creature_template set equipment_id = 0 where entry = 80225;

replace into `creature_template` values (80226, 0, 1435, 2027, 2045, 1297, 'Caravan Escort', '', 0, 55, 55, 4700, 4700, 0, 0, 20, 85, 0, 1, 1.42857, 0, 20, 5, 0, 0, 1, 154, 222, 0, 248, 1, 2000, 2000, 1, 36864, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 35021, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 16096, 0, 0, 0, 0, 524288, '');

update creature_template set equipment_id = 1423 where entry = 80226;
update creature_template set faction = 12 where entry = 80226;

REPLACE INTO `creature_template` values (80227, 0, 17676, 0, 0, 0, 'Ashanya Quel\'belore', 'Innkeeper', 1293, 30, 30, 1605, 1605, 0, 0, 1200, 80, 135, 1, 1.14286, 0, 20, 5, 0, 0, 1, 42, 53, 0, 122, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 45.144, 62.073, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 6736, 0, 0, 0, 0, 524298, '');

replace into`creature_template` values (80228, 0, 16818, 0, 0, 0, 'Toranial Mishulas', 'Weapon Master', 5271, 50, 50, 6830, 6830, 0, 0, 2999, 12, 17, 1, 1.14286, 0, 20, 5, 0, 1, 1, 292, 333, 0, 226, 1, 1500, 2000, 1, 4096, 0, 0, 2, 0, 0, 0, 55.36, 76.12, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 11867, 0, 0, 0, 0, 524298, '');

update creature_template set faction = 371 where entry = 80228;

REPLACE INTO `npc_trainer` VALUES 
(80228, 1847, 1000, 0, 0, 5, 0, 5875),
(80228, 15983, 1000, 0, 0, 5, 0, 5875),
(80228, 15988, 1000, 0, 0, 5, 0, 5875),
(80228, 15989, 1000, 0, 0, 5, 0, 5875),
(80228, 15991, 10000, 0, 0, 5, 0, 5875),
(80228, 15995, 1000, 0, 0, 5, 0, 5875);

-- Misc. fixes.:

update gameobject_template set size = 0.5 where entry = 2003285;
update gameobject_template set displayid = 32841 where entry = 2010516;
update creature_template set faction = 371 where entry in (80208, 80209, 80210,80213,80214,80224,80225,80227);
update creature_template set faction = 371 where entry = 1156;

-- Starting items:

replace into item_template values

 ('24146', '0', '4', '0', 'Initiate\'s Boots', '', '36793', '0', '0', '1', '1', '1', '8', '-1', '-1', '1',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL), 

 ('24143', '0', '4', '0', 'Initiate\'s Shirt', '', '36789', '0', '0', '1', '1', '1', '4', '-1', '-1', '1',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL), 

 ('24145', '0', '4', '1', 'Initiate\'s Pants', '', '36790', '0', '0', '1', '1', '1', '7', '-1', '-1', '1',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '25', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL), 

 ('20895', '0', '4', '0', 'Apprentice\'s Boots', '', '33260', '0', '0', '1', '1', '1', '8', '-1', '-1', '1',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL), 

 ('20893', '0', '4', '1', 'Apprentice\'s Robe', '', '33258', '0', '0', '1', '1', '1', '5', '-1', '-1', '1',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '35', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL), 

 ('20891', '0', '4', '1', 'Neophyte\'s Robe', '', '33256', '0', '0', '1', '1', '1', '5', '-1', '-1', '1',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '35', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL), 

 ('20898', '0', '4', '0', 'Lookout\'s Boots', '', '36764', '0', '0', '1', '1', '1', '8', '-1', '-1', '1',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL), 

 ('20897', '0', '4', '0', 'Lookout\'s Shirt', '', '33353', '0', '0', '1', '1', '1', '4', '-1', '-1', '1',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL),  

 ('20896', '0', '4', '1', 'Lookout\'s Pants', '', '33342', '0', '0', '1', '1', '1', '7', '-1', '-1', '1',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '25', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL), 

 ('20900', '0', '4', '0', 'Warder\'s Boots', '', '33350', '0', '0', '1', '1', '1', '8', '-1', '-1', '1',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL), 

 ('20901', '0', '4', '0', 'Warder\'s Shirt', '', '33352', '0', '0', '1', '1', '1', '4', '-1', '-1', '1',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL), 

 ('20899', '0', '4', '1', 'Warder\'s Pants', '', '33351', '0', '0', '1', '1', '1', '7', '-1', '-1', '1',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '25', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
-- Populating the area:

delete from creature where id in (80200,80202,80219,80221,80220,80208,80209,80208,80208,80209,80209,80209,80214,80215,80217,80213,80218,80201,80201,80201,80201,80201,80226,80226,10930,1686,1687,954,80223,80226,80226,80226,80226,80216,80216,80216,80208,80208,80226,80226,80208,80226,40009,80209,80209,80209,80208,80208,80208,80208,80216,80216,80216,80216,80216,80216,80216,80216,80227,1685,1155,40013,80216,80216,80216,80216,80216,80216,80216,80216,80216,80216,80216,80216,80250,80250,80250,40013,40013,40019,40013,40013,80209,40020,40013,40013,80250,80250,80216,80216,80216,80216,80216,40012,80216,80208,11480,11480,80506,40012,80228,14268,1194,1194,1194,1194,1194,80207,80205,80207,80207,80207,80207,80207,80207,80207,80207,80207,80207,80207,80207,80207,80207,80207,80208,80207,80207,80226,80226,80226,6491,80210,80224,80225,80222,1412,1412,1412,721,721,1412,721,80257,80257,80257,80257,80257,80257,80257,80257,80257,80257,80257,80257,80257,80257,80257,80257,80257,80257,80257,80257,80257);

replace into `creature` (`id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `deathstate`, `movementtype`, `spawnflags`, `visibilitymod`, `patch_min`, `patch_max`) values 
 
(80200, 0, 0, 0, -5628.11, -4319.9, 401.17, 3.82049, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80202, 0, 0, 0, -5669.32, -4264.92, 407.024, 1.52278, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80219, 0, 0, 3154, -5635.93, -4267.83, 407.824, 2.17981, 25, 25, 0, 0, 100, 100, 0, 0, 0, 0, 0, 10),
(80221, 0, 0, 375, -5618.42, -4255.25, 407.828, 3.52129, 25, 25, 0, 0, 100, 100, 0, 0, 0, 0, 0, 10),
(80220, 0, 0, 925, -5619.34, -4254.12, 407.828, 3.86012, 25, 25, 0, 0, 100, 100, 0, 0, 0, 0, 0, 10),
(80208, 0, 0, 0, -5633.21, -4326.53, 401.697, 0.296463, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80209, 0, 0, 0, -5634.46, -4327.36, 401.812, 5.34814, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80208, 0, 0, 0, -5668.67, -4289.01, 407.82, 0.938128, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80208, 0, 0, 0, -5672.04, -4291.54, 407.826, 2.35578, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80209, 0, 0, 0, -5664.44, -4286.26, 407.814, 3.15374, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80209, 0, 0, 0, -5681.7, -4293.48, 407.827, 4.32437, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80209, 0, 0, 0, -5640.24, -4324.09, 402.616, 4.17869, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80214, 0, 0, 0, -5641.3, -4282.37, 407.812, 3.68813, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80215, 0, 0, 0, -5641.98, -4281.25, 407.812, 3.75489, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80217, 0, 0, 3153, -5638.29, -4269.56, 407.82, 2.25919, 25, 25, 0, 0, 100, 100, 0, 0, 0, 0, 0, 10),
(80213, 0, 0, 0, -5660.59, -4259.88, 407.025, 2.89537, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80218, 0, 0, 5884, -5660.01, -4256.86, 407.024, 3.29984, 25, 25, 0, 0, 100, 100, 0, 0, 0, 0, 0, 10),
(80201, 0, 0, 6, -5597.32, -4321.57, 400.662, 2.54666, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80201, 0, 0, 6, -5564.5, -4296.4, 392.275, 0.230515, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80201, 0, 0, 6, -5531.52, -4296.54, 389.328, 2.48618, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80201, 0, 0, 6, -5571.05, -4235.98, 382.343, 2.23014, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80201, 0, 0, 6, -5591.04, -4266.35, 386.573, 5.32853, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80226, 0, 0, 0, -5670.62, -4264.97, 407.023, 1.50445, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80226, 0, 0, 0, -5668.01, -4265.15, 407.025, 1.50445, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(10930, 0, 0, 10930, -5365.06, -2958.17, 323.813, 1.20196, 25, 25, 0, 0, 100, 100, 0, 0, 0, 0, 0, 10),
(1686, 0, 0, 1686, -5316.28, -2989.24, 322.12, 0.991482, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(1687, 0, 0, 0, -5349.06, -3022, 326.232, 2.78219, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(954, 0, 0, 0, -5329.84, -2985.33, 325.176, 4.29565, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80223, 0, 0, 3155, -5654.42, -4294.52, 407.813, 0.608212, 25, 25, 0, 0, 100, 100, 0, 0, 0, 0, 0, 10),
(80226, 0, 0, 0, -5575.95, -4168.3, 377.916, 1.15798, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80226, 0, 0, 0, -5561.2, -4179.01, 379.936, 1.09436, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80226, 0, 0, 0, -5569.34, -4194.15, 379.067, 2.23319, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80226, 0, 0, 0, -5573.54, -4182.49, 378.348, 5.16901, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80216, 0, 0, 16096, -5570.29, -4182.69, 378.109, 3.89509, 25, 25, 0, 0, 100, 0, 1, 0, 0, 0, 0, 10),
(80216, 0, 0, 16096, -5582.35, -4188.12, 382.458, 3.55894, 25, 25, 0, 0, 100, 0, 1, 0, 0, 0, 0, 10),
(80216, 0, 0, 16096, -5569.3, -4190.92, 378.881, 0.81869, 25, 25, 0, 0, 100, 0, 1, 0, 0, 0, 0, 10),
(80208, 0, 0, 0, -5571.12, -4183.39, 378.13, 3.04136, 25, 25, 0, 0, 100, 0, 1, 0, 0, 0, 0, 10),
(80208, 0, 0, 0, -5576.26, -4187.83, 379.688, 4.94046, 25, 25, 0, 0, 100, 0, 1, 0, 0, 0, 0, 10),
(80226, 0, 0, 0, -5698.25, -4170.38, 384.908, 2.72644, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80226, 0, 0, 0, -5711.83, -4211.66, 386.876, 2.51046, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80208, 0, 0, 0, -5677.97, -4290.89, 407.826, 5.40429, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80226, 0, 0, 0, -5674.39, -4259.18, 407.014, 5.9115, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(40009, 0, 0, 0, -5641.8, -4261.53, 407.828, 5.03577, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80209, 0, 0, 0, -5670.4, -4279.26, 407.826, 4.55903, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80209, 0, 0, 0, -5688.63, -4293.09, 407.827, 2.16322, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80209, 0, 0, 0, -5684.86, -4288.66, 407.828, 3.80393, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80208, 0, 0, 0, -5643.83, -4278.07, 407.813, 3.8055, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80208, 0, 0, 0, -5658.78, -4287.71, 407.813, 0.589293, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80208, 0, 0, 0, -5674.3, -4282.17, 407.826, 5.17602, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80208, 0, 0, 0, -5637.91, -4287.54, 407.813, 3.60208, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80216, 0, 0, 80216, -5640.06, -4290.77, 407.812, 2.16184, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80216, 0, 0, 80216, -5648.71, -4295.67, 407.812, 2.18676, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80216, 0, 0, 80216, -5637.44, -4294.43, 407.868, 5.36638, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80216, 0, 0, 80216, -5646.25, -4300.35, 407.858, 5.33593, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80216, 0, 0, 80216, -5662.95, -4285.02, 407.815, 2.2994, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80216, 0, 0, 80216, -5678.21, -4251.58, 407.007, 5.95916, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80216, 0, 0, 80216, -5668.57, -4245.44, 407.007, 4.67503, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80216, 0, 0, 80216, -5633.96, -4321.13, 401.622, 0.218406, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80227, 0, 0, 6736, -5667.71, -4273.97, 407.753, 6.01888, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(1685, 0, 0, 0, -5651.91, -4264.11, 407.765, 4.35698, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(1155, 0, 0, 0, -5678.51, -4253.57, 407.009, 6.05098, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(40013, 0, 0, 0, -5550.13, -4285.31, 387.627, 3.52908, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80216, 0, 0, 80216, -5644.56, -4272.65, 407.816, 2.2446, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80216, 0, 0, 80216, -5627.75, -4250.87, 407.829, 5.34692, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80216, 0, 0, 80216, 4304.94, -2844.82, 5.51466, 5.52953, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80216, 0, 0, 80216, 4273.74, -2773.62, 5.81607, 4.02471, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80216, 0, 0, 80216, 4239.66, -2752.13, 7.62386, 1.45018, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80216, 0, 0, 80216, 4240.73, -2736, 6.4857, 4.70801, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80216, 0, 0, 80216, 4262.86, -2764.86, 6.49893, 5.30178, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80216, 0, 0, 80216, 4262.55, -2789.65, 6.33673, 0.822651, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80216, 0, 0, 80216, 4234.06, -2675.08, 4.19829, 4.21871, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80216, 0, 0, 80216, 4214.53, -2673.71, 4.38541, 5.22638, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80216, 0, 0, 80216, 4236.91, -2616.65, 27.0411, 4.88002, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80216, 0, 0, 80216, 4182.77, -2598.84, 27.0277, 5.13685, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80250, 0, 0, 0, 4252.29, -2691.71, 6.88686, 4.11034, 25, 25, 5, 0, 100, 100, 0, 1, 0, 0, 0, 10),
(80250, 0, 0, 0, 4265.28, -2704.44, 5.60545, 5.87434, 25, 25, 5, 0, 100, 100, 0, 1, 0, 0, 0, 10),
(80250, 0, 0, 0, 4218.01, -2781.59, 5.9007, 5.58689, 25, 25, 5, 0, 100, 100, 0, 1, 0, 0, 0, 10),
(40013, 0, 0, 0, 4243.61, -2713.32, 6.06064, 1.61042, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(40013, 0, 0, 0, 4247.03, -2704.86, 6.68264, 4.01845, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(40019, 0, 0, 0, 4280.84, -2699.17, 6.27102, 4.08207, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(40013, 0, 0, 0, 4274.06, -2709.37, 5.10722, 5.79031, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(40013, 0, 0, 0, 4274.66, -2715.68, 5.61398, 0.757476, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80209, 0, 0, 0, 4274.62, -2785.02, 5.48803, 3.05005, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(40020, 0, 0, 0, 4274.72, -2786.11, 5.47219, 3.02649, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(40013, 0, 0, 0, 4304.34, -2799.1, 5.10344, 6.18222, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(40013, 0, 0, 0, 4309.19, -2803.77, 4.88828, 1.80284, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80250, 0, 0, 0, 4319.1, -2816.84, 5.22041, 6.19636, 25, 25, 5, 0, 100, 100, 0, 1, 0, 0, 0, 10),
(80250, 0, 0, 0, 4300.5, -2862.27, 4.79091, 4.27056, 25, 25, 5, 0, 100, 100, 0, 1, 0, 0, 0, 10),
(80216, 0, 0, 80216, 4339.83, -2890.54, 9.82484, 2.24578, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80216, 0, 0, 80216, 4330.08, -2907.85, 6.16718, 0.622394, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80216, 0, 0, 80216, 4349.12, -2906.88, 9.54595, 5.31669, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80216, 0, 0, 80216, 4380.44, -2882.81, 10.2682, 5.39288, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80216, 0, 0, 80216, 4374.74, -2872.31, 10.8428, 2.13505, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(40012, 0, 0, 0, 4281.55, -2773.34, 7.91268, 1.7416, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80216, 0, 0, 80216, 4285.13, -2769.93, 7.887, 4.16848, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80208, 0, 0, 0, 4280.47, -2864.07, 5.39675, 5.6179, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(11480, 0, 0, 0, 4173.17, -2751.17, 3.82408, 0.567892, 25, 25, 0, 0, 100, 100, 0, 0, 0, 0, 0, 10),
(11480, 0, 0, 0, 4158.38, -2740.84, 2.1377, 5.85441, 25, 25, 0, 0, 100, 100, 0, 0, 0, 0, 0, 10),
(80506, 0, 0, 0, 4272.86, -2802.77, 5.24785, 5.19938, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(40012, 0, 0, 0, -5660.41, -4261.51, 407.026, 2.43048, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80228, 0, 0, 11867, -5656, -4291.94, 407.812, 0.55416, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(14268, 0, 0, 0, -5613.98, -4110.11, 385.745, 5.21368, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(1194, 0, 0, 0, -5623.59, -4107.02, 386.116, 2.64857, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(1194, 0, 0, 0, -5615.61, -4122.73, 386.091, 0.658374, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(1194, 0, 0, 0, -5643.61, -4099.79, 388.029, 1.62127, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(1194, 0, 0, 0, -5595.49, -4110.24, 379.761, 0.581407, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(1194, 0, 0, 0, -5532.08, -4141.39, 372.999, 1.80742, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80207, 0, 0, 3183, -5899.67, -4141.34, 394.02, 1.04095, 25, 25, 0, 0, 100, 100, 0, 0, 0, 0, 0, 10),
(80205, 0, 0, 3183, -5895.02, -4156.89, 393.863, 0.754321, 25, 25, 0, 0, 100, 100, 0, 0, 0, 0, 0, 10),
(80207, 0, 0, 3183, -5837.75, -4140.8, 385.966, 5.85627, 25, 25, 0, 0, 100, 100, 0, 0, 0, 0, 0, 10),
(80207, 0, 0, 3183, -5837.95, -4150.49, 386.359, 6.11387, 25, 25, 0, 0, 100, 100, 0, 0, 0, 0, 0, 10),
(80207, 0, 0, 3183, -5858.17, -4149.48, 390.453, 2.58194, 25, 25, 0, 0, 100, 100, 0, 0, 0, 0, 0, 10),
(80207, 0, 0, 3183, -5863.71, -4149.12, 390.49, 0.271296, 25, 25, 0, 0, 100, 100, 0, 0, 0, 0, 0, 10),
(80207, 0, 0, 3183, -5858.58, -4117.72, 390.527, 3.81894, 25, 25, 0, 0, 100, 100, 0, 0, 0, 0, 0, 10),
(80207, 0, 0, 3183, -5875.07, -4137.03, 387.592, 0.176265, 25, 25, 0, 0, 100, 100, 0, 0, 0, 0, 0, 10),
(80207, 0, 0, 3183, -5836.21, -4118, 387.997, 6.07382, 25, 25, 0, 0, 100, 100, 0, 0, 0, 0, 0, 10),
(80207, 0, 0, 3183, -5838.22, -4104.35, 388.137, 0.821865, 25, 25, 0, 0, 100, 100, 0, 0, 0, 0, 0, 10),
(80207, 0, 0, 3183, -5848.79, -4087.11, 385.683, 0.294865, 25, 25, 0, 0, 100, 100, 0, 0, 0, 0, 0, 10),
(80207, 0, 0, 3183, -5844.25, -4100.76, 389.734, 0.623947, 25, 25, 0, 0, 100, 100, 0, 0, 0, 0, 0, 10),
(80207, 0, 0, 3183, -5885.61, -4156.57, 391.991, 0.822648, 25, 25, 0, 0, 100, 100, 0, 0, 0, 0, 0, 10),
(80207, 0, 0, 3183, -5856.54, -4131.56, 387.394, 5.99842, 25, 25, 0, 0, 100, 100, 0, 0, 0, 0, 0, 10),
(80207, 0, 0, 3183, -5876.38, -4090.15, 389.003, 0.423666, 25, 25, 0, 0, 100, 100, 0, 0, 0, 0, 0, 10),
(80207, 0, 0, 3183, -5872.07, -4089.93, 389.264, 3.09481, 25, 25, 0, 0, 100, 100, 0, 0, 0, 0, 0, 10),
(80207, 0, 0, 3183, -5873.45, -4087.17, 389.108, 4.25955, 25, 25, 0, 0, 100, 100, 0, 0, 0, 0, 0, 10),
(80208, 0, 0, 0, -5875, -4088.62, 389.095, 5.60808, 25, 25, 0, 0, 100, 0, 1, 0, 0, 0, 0, 10),
(80207, 0, 0, 3183, -5877.81, -4173.83, 405.132, 1.16452, 25, 25, 0, 0, 100, 100, 0, 0, 0, 0, 0, 10),
(80207, 0, 0, 3183, -5863.94, -4120.34, 390.42, 6.17534, 25, 25, 0, 0, 100, 100, 0, 0, 0, 0, 0, 10),
(80226, 0, 0, 1423, -5687.98, -4203.55, 385.431, 3.75623, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80226, 0, 0, 1423, -5685.41, -4200.04, 385.718, 1.74561, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80226, 0, 0, 1423, -5640.17, -4232.52, 383.69, 1.86106, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(6491, 0, 0, 0, -5649.84, -4176.96, 391.316, 4.2874, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80210, 0, 0, 0, -5887.44, -4132.59, 388.671, 0.267526, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80224, 0, 0, 0, -5888.76, -4132.21, 388.84, 0.0256236, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80225, 0, 0, 0, -5888.56, -4133.17, 388.764, 0.379838, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80222, 0, 0, 0, -5639.94, -4270.5, 407.818, 2.12983, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(1412, 0, 0, 0, -5697.73, -4131.42, 389.535, 4.21541, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(1412, 0, 0, 0, -5698.87, -4174.03, 385.287, 6.14356, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(1412, 0, 0, 0, -5662.86, -4196.31, 388.338, 5.76657, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(721, 0, 0, 0, -5689.28, -4235.41, 386.448, 1.47987, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(721, 0, 0, 0, -5622.53, -4193.08, 390.967, 5.69196, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(1412, 0, 0, 0, -5564.91, -4224.6, 382.741, 1.99116, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(721, 0, 0, 0, -5542.39, -4301.6, 392.56, 2.01944, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80257, 0, 0, 0, -5502.6, -2895.48, 357.019, 2.1818, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80257, 0, 0, 0, -5520.65, -2774.45, 366.12, 1.80874, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80257, 0, 0, 0, -5406.2, -2763.59, 368.82, 0.112278, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80257, 0, 0, 0, -5276.29, -2825.95, 348.761, 5.51267, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80257, 0, 0, 0, -5254.2, -2736.49, 352.188, 0.854481, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80257, 0, 0, 0, -5057.43, -2732.08, 344.138, 0.0808621, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80257, 0, 0, 0, -5020.58, -2890.97, 336.757, 4.95348, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80257, 0, 0, 0, -5004.88, -2972.12, 340.581, 5.87867, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80257, 0, 0, 0, -5059.47, -2923.19, 330.615, 2.65147, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80257, 0, 0, 0, -5176.71, -2995.15, 337.087, 4.21285, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80257, 0, 0, 0, -5411.26, -3124.33, 350.392, 6.08288, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80257, 0, 0, 0, -5540.98, -3170.79, 342.842, 2.408, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80257, 0, 0, 0, -5047.92, -3058.06, 325.381, 1.3163, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80257, 0, 0, 0, -5028.09, -2986.26, 334.703, 0.407594, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80257, 0, 0, 0, -5184.28, -2969.71, 337.005, 3.42981, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80257, 0, 0, 0, -5460.78, -2969.43, 358.545, 4.95426, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80257, 0, 0, 0, -5562.76, -2809.95, 364.604, 5.69175, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80257, 0, 0, 0, -5709.6, -2783.15, 361.925, 2.64912, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80257, 0, 0, 0, -5877.31, -2608.49, 313.518, 3.79738, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80257, 0, 0, 0, -5799.44, -2559.93, 309.776, 4.16887, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80257, 0, 0, 0, -6028.1, -2535.77, 309.255, 0.788511, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10);

update creature set spawntimesecsmin = 70, spawntimesecsmax = 160 where id in (80200,80202,80219,80221,80220,80208,80209,80208,80208,80209,80209,80209,80214,80215,80217,80213,80218,80201,80201,80201,80201,80201,80226,80226,10930,1686,1687,954,80223,80226,80226,80226,80226,80216,80216,80216,80208,80208,80226,80226,80208,80226,40009,80209,80209,80209,80208,80208,80208,80208,80216,80216,80216,80216,80216,80216,80216,80216,80227,1685,1155,40013,80216,80216,80216,80216,80216,80216,80216,80216,80216,80216,80216,80216,80250,80250,80250,40013,40013,40019,40013,40013,80209,40020,40013,40013,80250,80250,80216,80216,80216,80216,80216,40012,80216,80208,11480,11480,80506,40012,80228,14268,1194,1194,1194,1194,1194,80207,80205,80207,80207,80207,80207,80207,80207,80207,80207,80207,80207,80207,80207,80207,80207,80207,80208,80207,80207,80226,80226,80226,6491,80210,80224,80225,80222,1412,1412,1412,721,721,1412,721,80257,80257,80257,80257,80257,80257,80257,80257,80257,80257,80257,80257,80257,80257,80257,80257,80257,80257,80257,80257,80257);