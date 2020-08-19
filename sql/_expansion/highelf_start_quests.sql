-- Farstrider Lodge

replace into `creature_template` values (80200, 0, 16760, 0, 0, 0, 'Malvinah Sunblade', '', 0, 5, 5, 319, 319, 0, 0, 852, 84, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4276, 0, 0, 0, 0, 2, 'npc_malvinah_sunblade');

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
set @xp_or_money = 75;
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
set @xp_or_money = 136;
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
set @xp_or_money = 156;
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

replace into `item_template` values (80211, 0, 2, 15, 'Camping Knife', '', 6432, 1, 0, 1, 18, 18, 21, -1, -1, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1600, 0, 0, 4, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

replace into `areatrigger_template` (`id`, `build`, `map_id`, `x`, `y`, `z`, `radius`, `box_x`, `box_y`, `box_z`, `box_orientation`) values 
(5000, 5875, 0, -5845.7, -4148.67, 387.78, 30, 0, 0, 0, 0);

replace into areatrigger_involvedrelation values (80204, 5000);

set @quest_entry = 80204;
set @quest_zone = 1519;
set @title = 'Gathering Intel';
set @description = 'You’re less green behind your ears now, which is good.\n\nThe vermins you’ve defeated are only a nuisance compared to something else that may lurk in this valley. Some of the recent refugees who arrived late last night reported seeing a figure of short stature with glowing red eyes in the woods, stalking the area...\n\nSome would say it’s mere superstition, I on the other hand believe it may be the forward scout of a Shadowforge raiding party.\n\nThe Shadowforge are one of the Dark Iron clans, corrupted red eyed dwarves who are at odds with the kingdom of Ironforge. Please investigate the area to the west where the sighting took place, but do not stray too close to the digsite, it is infested with Troggs far stronger than those vermin you fought earlier.\n\nRemember, do not engage if you find something, go in, confirm your sighting and immediately return here.';
set @objective = 'Investigate the area to the west of the the Lodge.';
set @completetext = 'A whole armed camp? Damn, this is a problem, we’ll need to devote resources into dealing with it and we don’t have many. Thank you for your help <name>! We may call upon you again once we figure out how to deal with this.';
set @incompletetext = 'Well $R, is the deed done?';
set @faction_id = 72;
set @faction_count = 250;
set @xp_or_money = 176;
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
(3000202, 0, 2, 6291, 'Fill barrel of water.', 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_farstrider_well');

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

replace into `item_template` values (80214, 0, 4, 2, 'Ragged Cloth Vest', '', 16585, 1, 0, 1, 12, 12, 5, -1, -1, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 8, 0, 0, 0, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

replace into `item_template` values (80215, 0, 4, 1, 'Stitched Leather Vest', '', 14339, 1, 0, 1, 12, 12, 5, -1, -1, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

set @quest_entry = 80205;
set @quest_zone = 1519;
set @title = 'Slaking their Thirst';
set @description = 'Hello again $N!\n\nYour wood helped feed many of the refugees, it’s wonderful! However, the situation is far from resolved...\n\nThe drinking water stores and even the ale is running low, soon we will not be able to care for the refugees, luckily there is a well to the north near the border of the valley, can I ask you to go there and fill this barrel with water?\n\nIn the mean time volunteers are trying to dig a new well here but that will take time.\n\nPlease $N, I know I can count on you!';
set @objective = 'Fill barrel of water.';
set @completetext = 'You got the water?...\n\nThank you $N at least... that’s one less problem we have to deal with.\n\nThe children will have water and the progress on the well is going wonderfully! I also don’t have to touch Dwarven ale again...\n\nNo offense to them but that stuff is vile to my palate.';
set @incompletetext = 'Did you get it? The children are thirsty...';
set @faction_id = 269;
set @faction_count = 250;
set @xp_or_money = 176;
set @reward_money = 90; 
set @quest_level = 3;
set @min_level = 3;
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
set @xp_or_money = 176;
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
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80205, 80216, 100, 0, 1, 1);	 

replace into `creature_template` values (80206, 0, 0, 0, 0, 0, 'Quest 80207 Custom Objective', '', 0, 5, 5, 319, 319, 0, 0, 852, 84, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4276, 0, 0, 0, 0, 2, '');

replace into`creature_template` values (80207, 0, 6053, 6057, 0, 0, 'Shadowforge Prowler', NULL, 0, 5, 5, 109, 109, 138, 138, 105, 16, 0, 0.92, 1.14286, 0, 20, 5, 0, 0, 1, 4, 5, 0, 52, 1, 2000, 2156, 2, 32768, 0, 0, 0, 0, 0, 0, 8.624, 11.858, 100, 7, 0, 3183, 3183, 0, 0, 0, 0, 0, 0, 0, 172, 348, 0, 0, 31830, 0, 3, 9, 'EventAI', 0, 3, 0, 0, 3, 3183, 0, 0, 0, 0, 0, '');

replace into `creature_template` values (80208, 0, 16592, 16676, 16682, 16289, 'Captured Refugee', '', 0, 5, 5, 319, 319, 0, 0, 852, 84, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4276, 0, 0, 0, 0, 2, '');

replace into `creature_template` values (80209, 0, 16825, 17658, 16103, 16704, 'Captured Refugee', '', 0, 5, 5, 319, 319, 0, 0, 852, 84, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4276, 0, 0, 0, 0, 2, '');

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
set @xp_or_money = 204;
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
objectivetext2='High Elf refugees freed' 
where entry = @quest_entry;	

-- Sunblade Reunion

replace into`creature_template` values (80211, 0, 0, 0, 0, 0, 'Quest 80208 Custom Objective', '', 0, 5, 5, 319, 319, 0, 0, 852, 84, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4276, 0, 0, 0, 0, 2, '');

replace into item_template values
 ('80221', '0', '0', '0', 'Forever-Lovely Rose', 'Just like our friendship this rose shall never wither. — Malvinah Sunblade', '942', '1', '0', '1', '0', '0', '1', '-1', '-1', '0',
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
set @xp_or_money = 204;
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
set @xp_or_money = 234;
set @reward_money = 0; 
set @quest_level = 5;
set @min_level = 4;
set @questgiver_id = 1156;
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

-- Additional NPC and citizens:

replace into `creature_template` values (80214, 0, 16705, 0, 0, 0, 'Malanius Silvershine', 'General Goods', 0, 3, 3, 219, 219, 0, 0, 852, 84, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4276, 0, 0, 0, 0, 2, '');

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

update creature_template set faction = 84 where entry = 80215; 

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

update creature_template set faction = 84 where entry = 80216; 

replace into `creature_template` values (80217, 0, 16767, 0, 0, 0, 'Valanos Dawnfire', 'Warrior Trainer', 523, 11, 11, 456, 456, 406, 406, 20, 29, 19, 1, 1.14286, 0, 20, 5, 0, 0, 1, 12, 14, 0, 64, 1, 2000, 2000, 1, 4864, 0, 0, 0, 0, 1, 0, 18.392, 25.289, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 3153, 0, 0, 0, 0, 524298, '');

update creature_template set faction = 84 where entry = 80217; 

replace into `npc_trainer` values (80217, 1343, 100, 0, 0, 6, 0, 5875);
replace into `npc_trainer` values (80217, 1423, 100, 0, 0, 4, 0, 5875);
replace into `npc_trainer` values (80217, 1738, 100, 0, 0, 4, 0, 5875);
replace into `npc_trainer` values (80217, 3128, 100, 0, 0, 6, 0, 5875);
replace into `npc_trainer` values (80217, 6674, 10, 0, 0, 1, 0, 5875);

replace into `creature_template` values (80218, 0, 17279, 0, 0, 0, 'Magister Ala\'shor Sunblood', 'Mage Trainer', 64, 10, 10, 413, 413, 370, 370, 20, 126, 19, 1, 1.14286, 0, 20, 5, 0, 0, 1, 7, 7, 0, 62, 1, 2000, 2000, 1, 4864, 0, 0, 0, 0, 8, 0, 16.808, 23.111, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 5884, 0, 0, 0, 0, 524298, '');

update creature_template set faction = 84 where entry = 80218;

replace into `npc_trainer` values (80218, 1142, 100, 0, 0, 0, 0, 5875);
replace into `npc_trainer` values (80218, 1173, 100, 0, 0, 0, 0, 5875);
replace into `npc_trainer` values (80218, 1249, 100, 0, 0, 0, 0, 5875);
replace into `npc_trainer` values (80218, 1472, 10, 0, 0, 0, 0, 5875);
replace into `npc_trainer` values (80218, 2141, 100, 0, 0, 0, 0, 5875);
replace into `npc_trainer` values (80218, 5507, 100, 0, 0, 0, 0, 5875);

replace into `creature_template` values (80219, 0, 16778, 0, 0, 0, 'Ranger Rubinah Sunsworn', 'Hunter Trainer', 4648, 8, 8, 334, 334, 297, 297, 20, 126, 19, 1, 1.14286, 0, 20, 5, 0, 0, 1, 7, 10, 0, 58, 1, 2000, 2000, 1, 4864, 0, 0, 0, 0, 3, 0, 13.5872, 18.6824, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 3154, 0, 0, 0, 0, 524298, '');

update creature_template set faction = 84 where entry = 80219;

replace into `npc_trainer` values (80219, 1547, 10, 0, 0, 1, 0, 5875);
replace into `npc_trainer` values (80219, 2003, 100, 0, 0, 4, 0, 5875);
replace into `npc_trainer` values (80219, 3048, 100, 0, 0, 6, 0, 5875);
replace into `npc_trainer` values (80219, 5298, 100, 0, 0, 6, 0, 5875);
replace into `npc_trainer` values (80219, 13164, 50, 0, 0, 4, 0, 5875);

replace into `creature_template`  values (80220, 0, 16624 , 0, 0, 0, 'Lor\'thas the Holy', 'Paladin Trainer', 4663, 5, 5, 166, 166, 190, 190, 20, 12, 19, 1, 1.14286, 0, 20, 5, 0, 0, 1, 6, 8, 0, 52, 1, 1500, 2000, 1, 4864, 0, 0, 0, 0, 2, 0, 8.624, 11.858, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 925, 0, 0, 0, 0, 524298, '');

update creature_template set faction = 84 where entry = 80220;

replace into `npc_trainer` values (80220, 1873, 100, 0, 0, 6, 0, 5875);
replace into `npc_trainer` values (80220, 1875, 10, 0, 0, 1, 0, 5875);
replace into `npc_trainer` values (80220, 1937, 100, 0, 0, 8, 0, 5875);
replace into `npc_trainer` values (80220, 10321, 100, 0, 0, 4, 0, 5875);
replace into `npc_trainer` values (80220, 19741, 100, 0, 0, 4, 0, 5875);
replace into `npc_trainer` values (80220, 21083, 100, 0, 0, 6, 0, 5875);

replace into `creature_template` values (80221, 0, 16765, 0, 0, 0, 'Priestess Maelah Sunsworn', 'Priest Trainer', 4665, 5, 5, 166, 166, 190, 190, 20, 12, 19, 1, 1.14286, 0, 20, 5, 0, 0, 1, 6, 8, 0, 52, 1, 1500, 2000, 1, 4864, 0, 0, 0, 0, 5, 0, 8.624, 11.858, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 375, 0, 0, 0, 0, 524298, '');

update creature_template set faction = 84 where entry = 80221;

replace into `npc_trainer` values (80221, 1255, 10, 0, 0, 1, 0, 5875);
replace into `npc_trainer` values (80221, 1258, 100, 0, 0, 4, 0, 5875);
replace into `npc_trainer` values (80221, 1275, 100, 0, 0, 6, 0, 5875);
replace into `npc_trainer` values (80221, 2056, 100, 0, 0, 4, 0, 5875);
replace into `npc_trainer` values (80221, 2851, 100, 0, 0, 6, 0, 5875);


replace into `creature_template` values (80222, 0, 16655, 0, 0, 0, 'Melonius Silvershine', 'Mail Armor Merchant', 0, 10, 10, 413, 413, 0, 0, 20, 29, 16388, 1.1, 1.14286, 0, 20, 5, 0, 0, 1, 9, 13, 0, 62, 1, 2000, 2101, 1, 4864, 0, 0, 0, 0, 0, 0, 16.808, 23.111, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 3161, 0, 0, 0, 0, 524298, '');

update creature_template set faction = 84 where entry = 80222; 
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

REPLACE INTO `creature_template`VALUES (80223, 0, 16889, 0, 0, 0, 'Leela the Shadow', 'Rogue Trainer', 0, 8, 8, 334, 334, 297, 297, 20, 29, 18, 1, 1.14286, 0, 20, 5, 0, 0, 1, 7, 10, 0, 58, 1, 2000, 2000, 1, 4864, 0, 0, 0, 0, 4, 0, 13.5872, 18.6824, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 3155, 0, 0, 0, 0, 524298, '');

update creature_template set faction = 84 where entry = 80223;

REPLACE INTO `npc_trainer` VALUES (80223, 1762, 100, 0, 0, 6, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (80223, 1780, 100, 0, 0, 6, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (80223, 1789, 10, 0, 0, 1, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (80223, 2592, 100, 0, 0, 4, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (80223, 5167, 100, 0, 0, 4, 0, 5875);

replace into `creature_template` values (80224, 0, 16592, 16676, 16682, 16289, 'High Elf Refugee', '', 0, 5, 5, 319, 319, 0, 0, 852, 84, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4276, 0, 0, 0, 0, 2, '');

replace into `creature_template` values (80225, 0, 16825, 17658, 16103, 16704, 'High Elf Refugee', '', 0, 5, 5, 319, 319, 0, 0, 852, 84, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4276, 0, 0, 0, 0, 2, '');

replace into `creature_template` values (80226, 0, 1435, 2027, 2045, 1297,  'Caravan Escort', '', 0, 5, 5, 319, 319, 0, 0, 852, 72, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4276, 0, 0, 0, 0, 2, '');

update creature_template set equipment_id = 0 where entry = 80226;

REPLACE INTO creature_model_info VALUES 

(15475, 5875, 2, 2, 0, 0, 0),(15476, 5875, 2, 2, 0, 0, 0),(15504, 5875, 2, 2, 0, 0, 0),(15505, 5875, 2, 2, 0, 0, 0),
(15510, 5875, 2, 2, 0, 0, 0),(15514, 5875, 2, 2, 0, 0, 0),(15515, 5875, 2, 2, 0, 0, 0),(15516, 5875, 2, 2, 0, 0, 0),
(15517, 5875, 2, 2, 0, 0, 0),(15518, 5875, 2, 2, 0, 0, 0),(15519, 5875, 2, 2, 0, 0, 0),(15520, 5875, 2, 2, 0, 0, 0),
(15521, 5875, 2, 2, 0, 0, 0),(15522, 5875, 2, 2, 0, 0, 0),(15523, 5875, 2, 2, 0, 0, 0),(15524, 5875, 2, 2, 0, 0, 0),
(15525, 5875, 2, 2, 0, 0, 0),(15526, 5875, 2, 2, 0, 0, 0),(15527, 5875, 2, 2, 0, 0, 0),(15528, 5875, 2, 2, 0, 0, 0),
(15529, 5875, 2, 2, 0, 0, 0),(15530, 5875, 2, 2, 0, 0, 0),(15531, 5875, 2, 2, 0, 0, 0),(15532, 5875, 2, 2, 0, 0, 0),
(15906, 5875, 2, 2, 0, 0, 0),(15907, 5875, 2, 2, 0, 0, 0),(15908, 5875, 2, 2, 0, 0, 0),(15909, 5875, 2, 2, 0, 0, 0),
(15910, 5875, 2, 2, 0, 0, 0),(15911, 5875, 2, 2, 0, 0, 0),(15912, 5875, 2, 2, 0, 0, 0),(15913, 5875, 2, 2, 0, 0, 0),
(15914, 5875, 2, 2, 0, 0, 0),(15915, 5875, 2, 2, 0, 0, 0),(15916, 5875, 2, 2, 0, 0, 0),(15919, 5875, 2, 2, 0, 0, 0),
(15924, 5875, 2, 2, 0, 0, 0),(15930, 5875, 2, 2, 0, 0, 0),(15933, 5875, 2, 2, 0, 0, 0),(15936, 5875, 2, 2, 0, 0, 0),
(16036, 5875, 2, 2, 0, 0, 0),(16037, 5875, 2, 2, 0, 0, 0),(16038, 5875, 2, 2, 0, 0, 0),(16046, 5875, 2, 2, 0, 0, 0),
(16047, 5875, 2, 2, 0, 0, 0),(16055, 5875, 2, 2, 0, 0, 0),(16057, 5875, 2, 2, 0, 0, 0),(16058, 5875, 2, 2, 0, 0, 0),
(16059, 5875, 2, 2, 0, 0, 0),(16065, 5875, 2, 2, 0, 0, 0),(16067, 5875, 2, 2, 0, 0, 0),(16068, 5875, 2, 2, 0, 0, 0),
(16069, 5875, 2, 2, 0, 0, 0),(16070, 5875, 2, 2, 0, 0, 0),(16079, 5875, 2, 2, 0, 0, 0),(16080, 5875, 2, 2, 0, 0, 0),
(16083, 5875, 2, 2, 0, 0, 0),(16088, 5875, 2, 2, 0, 0, 0),(16090, 5875, 2, 2, 0, 0, 0),(16103, 5875, 2, 2, 0, 0, 0),
(16112, 5875, 2, 2, 0, 0, 0),(16115, 5875, 2, 2, 0, 0, 0),(16116, 5875, 2, 2, 0, 0, 0),(16117, 5875, 2, 2, 0, 0, 0),
(16118, 5875, 2, 2, 0, 0, 0),(16119, 5875, 2, 2, 0, 0, 0),(16120, 5875, 2, 2, 0, 0, 0),(16121, 5875, 2, 2, 0, 0, 0),
(16122, 5875, 2, 2, 0, 0, 0),(16123, 5875, 2, 2, 0, 0, 0),(16133, 5875, 2, 2, 0, 0, 0),(16134, 5875, 2, 2, 0, 0, 0),
(16182, 5875, 2, 2, 0, 0, 0),(16183, 5875, 2, 2, 0, 0, 0),(16184, 5875, 2, 2, 0, 0, 0),(16192, 5875, 2, 2, 0, 0, 0),
(16193, 5875, 2, 2, 0, 0, 0),(16207, 5875, 2, 2, 0, 0, 0),(16247, 5875, 2, 2, 0, 0, 0),(16248, 5875, 2, 2, 0, 0, 0),
(16249, 5875, 2, 2, 0, 0, 0),(16250, 5875, 2, 2, 0, 0, 0),(16265, 5875, 2, 2, 0, 0, 0),(16285, 5875, 2, 2, 0, 0, 0),
(16286, 5875, 2, 2, 0, 0, 0),(16287, 5875, 2, 2, 0, 0, 0),(16288, 5875, 2, 2, 0, 0, 0),(16289, 5875, 2, 2, 0, 0, 0),
(16290, 5875, 2, 2, 0, 0, 0),(16291, 5875, 2, 2, 0, 0, 0),(16319, 5875, 2, 2, 0, 0, 0),(16321, 5875, 2, 2, 0, 0, 0),
(16469, 5875, 2, 2, 0, 0, 0),(16470, 5875, 2, 2, 0, 0, 0),(16471, 5875, 2, 2, 0, 0, 0),(16472, 5875, 2, 2, 0, 0, 0),
(16543, 5875, 2, 2, 0, 0, 0),(16544, 5875, 2, 2, 0, 0, 0),(16545, 5875, 2, 2, 0, 0, 0),(16546, 5875, 2, 2, 0, 0, 0),
(16592, 5875, 2, 2, 0, 0, 0),(16624, 5875, 2, 2, 0, 0, 0),(16625, 5875, 2, 2, 0, 0, 0),(16626, 5875, 2, 2, 0, 0, 0),
(16648, 5875, 2, 2, 0, 0, 0),(16655, 5875, 2, 2, 0, 0, 0),(16658, 5875, 2, 2, 0, 0, 0),(16675, 5875, 2, 2, 0, 0, 0),
(16676, 5875, 2, 2, 0, 0, 0),(16677, 5875, 2, 2, 0, 0, 0),(16678, 5875, 2, 2, 0, 0, 0),(16679, 5875, 2, 2, 0, 0, 0),
(16680, 5875, 2, 2, 0, 0, 0),(16681, 5875, 2, 2, 0, 0, 0),(16682, 5875, 2, 2, 0, 0, 0),(16683, 5875, 2, 2, 0, 0, 0),
(16684, 5875, 2, 2, 0, 0, 0),(16685, 5875, 2, 2, 0, 0, 0),(16686, 5875, 2, 2, 0, 0, 0),(16687, 5875, 2, 2, 0, 0, 0),
(16688, 5875, 2, 2, 0, 0, 0),(16689, 5875, 2, 2, 0, 0, 0),(16690, 5875, 2, 2, 0, 0, 0),(16691, 5875, 2, 2, 0, 0, 0),
(16692, 5875, 2, 2, 0, 0, 0),(16693, 5875, 2, 2, 0, 0, 0),(16694, 5875, 2, 2, 0, 0, 0),(16695, 5875, 2, 2, 0, 0, 0),
(16696, 5875, 2, 2, 0, 0, 0),(16697, 5875, 2, 2, 0, 0, 0),(16698, 5875, 2, 2, 0, 0, 0),(16699, 5875, 2, 2, 0, 0, 0),
(16700, 5875, 2, 2, 0, 0, 0),(16701, 5875, 2, 2, 0, 0, 0),(16702, 5875, 2, 2, 0, 0, 0),(16703, 5875, 2, 2, 0, 0, 0),
(16704, 5875, 2, 2, 0, 0, 0),(16705, 5875, 2, 2, 0, 0, 0),(16706, 5875, 2, 2, 0, 0, 0),(16707, 5875, 2, 2, 0, 0, 0),
(16708, 5875, 2, 2, 0, 0, 0),(16709, 5875, 2, 2, 0, 0, 0),(16710, 5875, 2, 2, 0, 0, 0),(16712, 5875, 2, 2, 0, 0, 0),
(16713, 5875, 2, 2, 0, 0, 0),(16714, 5875, 2, 2, 0, 0, 0),(16715, 5875, 2, 2, 0, 0, 0),(16716, 5875, 2, 2, 0, 0, 0),
(16717, 5875, 2, 2, 0, 0, 0),(16718, 5875, 2, 2, 0, 0, 0),(16719, 5875, 2, 2, 0, 0, 0),(16720, 5875, 2, 2, 0, 0, 0),
(16722, 5875, 2, 2, 0, 0, 0),(16725, 5875, 2, 2, 0, 0, 0),(16732, 5875, 2, 2, 0, 0, 0),(16733, 5875, 2, 2, 0, 0, 0),
(16734, 5875, 2, 2, 0, 0, 0),(16735, 5875, 2, 2, 0, 0, 0),(16745, 5875, 2, 2, 0, 0, 0),(16746, 5875, 2, 2, 0, 0, 0),
(16747, 5875, 2, 2, 0, 0, 0),(16748, 5875, 2, 2, 0, 0, 0),(16749, 5875, 2, 2, 0, 0, 0),(16750, 5875, 2, 2, 0, 0, 0),
(16751, 5875, 2, 2, 0, 0, 0),(16752, 5875, 2, 2, 0, 0, 0),(16753, 5875, 2, 2, 0, 0, 0),(16754, 5875, 2, 2, 0, 0, 0),
(16755, 5875, 2, 2, 0, 0, 0),(16756, 5875, 2, 2, 0, 0, 0),(16757, 5875, 2, 2, 0, 0, 0),(16758, 5875, 2, 2, 0, 0, 0),
(16759, 5875, 2, 2, 0, 0, 0),(16760, 5875, 2, 2, 0, 0, 0),(16761, 5875, 2, 2, 0, 0, 0),(16762, 5875, 2, 2, 0, 0, 0),
(16763, 5875, 2, 2, 0, 0, 0),(16764, 5875, 2, 2, 0, 0, 0),(16765, 5875, 2, 2, 0, 0, 0),(16766, 5875, 2, 2, 0, 0, 0),
(16767, 5875, 2, 2, 0, 0, 0),(16768, 5875, 2, 2, 0, 0, 0),(16769, 5875, 2, 2, 0, 0, 0),(16770, 5875, 2, 2, 0, 0, 0),
(16771, 5875, 2, 2, 0, 0, 0),(16772, 5875, 2, 2, 0, 0, 0),(16773, 5875, 2, 2, 0, 0, 0),(16774, 5875, 2, 2, 0, 0, 0),
(16775, 5875, 2, 2, 0, 0, 0),(16776, 5875, 2, 2, 0, 0, 0),(16777, 5875, 2, 2, 0, 0, 0),(16778, 5875, 2, 2, 0, 0, 0),
(16779, 5875, 2, 2, 0, 0, 0),(16780, 5875, 2, 2, 0, 0, 0),(16781, 5875, 2, 2, 0, 0, 0),(16787, 5875, 2, 2, 0, 0, 0),
(16788, 5875, 2, 2, 0, 0, 0),(16795, 5875, 2, 2, 0, 0, 0),(16796, 5875, 2, 2, 0, 0, 0),(16797, 5875, 2, 2, 0, 0, 0),
(16798, 5875, 2, 2, 0, 0, 0),(16799, 5875, 2, 2, 0, 0, 0),(16800, 5875, 2, 2, 0, 0, 0),(16801, 5875, 2, 2, 0, 0, 0),
(16802, 5875, 2, 2, 0, 0, 0),(16803, 5875, 2, 2, 0, 0, 0),(16804, 5875, 2, 2, 0, 0, 0),(16808, 5875, 2, 2, 0, 0, 0),
(16809, 5875, 2, 2, 0, 0, 0),(16810, 5875, 2, 2, 0, 0, 0),(16811, 5875, 2, 2, 0, 0, 0),(16812, 5875, 2, 2, 0, 0, 0),
(16813, 5875, 2, 2, 0, 0, 0),(16814, 5875, 2, 2, 0, 0, 0),(16815, 5875, 2, 2, 0, 0, 0),(16816, 5875, 2, 2, 0, 0, 0),
(16817, 5875, 2, 2, 0, 0, 0),(16818, 5875, 2, 2, 0, 0, 0),(16819, 5875, 2, 2, 0, 0, 0),(16820, 5875, 2, 2, 0, 0, 0),
(16821, 5875, 2, 2, 0, 0, 0),(16822, 5875, 2, 2, 0, 0, 0),(16823, 5875, 2, 2, 0, 0, 0),(16824, 5875, 2, 2, 0, 0, 0),
(16825, 5875, 2, 2, 0, 0, 0),(16826, 5875, 2, 2, 0, 0, 0),(16827, 5875, 2, 2, 0, 0, 0),(16828, 5875, 2, 2, 0, 0, 0),
(16829, 5875, 2, 2, 0, 0, 0),(16830, 5875, 2, 2, 0, 0, 0),(16831, 5875, 2, 2, 0, 0, 0),(16832, 5875, 2, 2, 0, 0, 0),
(16833, 5875, 2, 2, 0, 0, 0),(16845, 5875, 2, 2, 0, 0, 0),(16846, 5875, 2, 2, 0, 0, 0),(16847, 5875, 2, 2, 0, 0, 0),
(16848, 5875, 2, 2, 0, 0, 0),(16849, 5875, 2, 2, 0, 0, 0),(16850, 5875, 2, 2, 0, 0, 0),(16851, 5875, 2, 2, 0, 0, 0),
(16852, 5875, 2, 2, 0, 0, 0),(16859, 5875, 2, 2, 0, 0, 0),(16865, 5875, 2, 2, 0, 0, 0),(16918, 5875, 2, 2, 0, 0, 0),
(16926, 5875, 2, 2, 0, 0, 0),(16948, 5875, 2, 2, 0, 0, 0),(16954, 5875, 2, 2, 0, 0, 0),(16955, 5875, 2, 2, 0, 0, 0),
(16956, 5875, 2, 2, 0, 0, 0),(16957, 5875, 2, 2, 0, 0, 0),(16983, 5875, 2, 2, 0, 0, 0),(17115, 5875, 2, 2, 0, 0, 0),
(17116, 5875, 2, 2, 0, 0, 0),(17122, 5875, 2, 2, 0, 0, 0),(17159, 5875, 2, 2, 0, 0, 0),(17168, 5875, 2, 2, 0, 0, 0),
(17198, 5875, 2, 2, 0, 0, 0),(17199, 5875, 2, 2, 0, 0, 0),(17201, 5875, 2, 2, 0, 0, 0),(17211, 5875, 2, 2, 0, 0, 0),
(17224, 5875, 2, 2, 0, 0, 0),(17257, 5875, 2, 2, 0, 0, 0),(17258, 5875, 2, 2, 0, 0, 0),(17259, 5875, 2, 2, 0, 0, 0),
(17260, 5875, 2, 2, 0, 0, 0),(17261, 5875, 2, 2, 0, 0, 0),(17264, 5875, 2, 2, 0, 0, 0),(17265, 5875, 2, 2, 0, 0, 0),
(17266, 5875, 2, 2, 0, 0, 0),(17267, 5875, 2, 2, 0, 0, 0),(17268, 5875, 2, 2, 0, 0, 0),(17278, 5875, 2, 2, 0, 0, 0),
(17279, 5875, 2, 2, 0, 0, 0),(17284, 5875, 2, 2, 0, 0, 0),(17289, 5875, 2, 2, 0, 0, 0),(17290, 5875, 2, 2, 0, 0, 0),
(17296, 5875, 2, 2, 0, 0, 0),(17297, 5875, 2, 2, 0, 0, 0),(17325, 5875, 2, 2, 0, 0, 0),(17329, 5875, 2, 2, 0, 0, 0),
(17348, 5875, 2, 2, 0, 0, 0),(17349, 5875, 2, 2, 0, 0, 0),(17350, 5875, 2, 2, 0, 0, 0),(17351, 5875, 2, 2, 0, 0, 0),
(17352, 5875, 2, 2, 0, 0, 0),(17353, 5875, 2, 2, 0, 0, 0),(17354, 5875, 2, 2, 0, 0, 0),(17355, 5875, 2, 2, 0, 0, 0),
(17356, 5875, 2, 2, 0, 0, 0),(17357, 5875, 2, 2, 0, 0, 0),(17358, 5875, 2, 2, 0, 0, 0),(17359, 5875, 2, 2, 0, 0, 0),
(17360, 5875, 2, 2, 0, 0, 0),(17361, 5875, 2, 2, 0, 0, 0),(17362, 5875, 2, 2, 0, 0, 0),(17363, 5875, 2, 2, 0, 0, 0),
(17364, 5875, 2, 2, 0, 0, 0),(17365, 5875, 2, 2, 0, 0, 0),(17366, 5875, 2, 2, 0, 0, 0),(17367, 5875, 2, 2, 0, 0, 0),
(17368, 5875, 2, 2, 0, 0, 0),(17376, 5875, 2, 2, 0, 0, 0),(17377, 5875, 2, 2, 0, 0, 0),(17473, 5875, 2, 2, 0, 0, 0),
(17474, 5875, 2, 2, 0, 0, 0),(17475, 5875, 2, 2, 0, 0, 0),(17476, 5875, 2, 2, 0, 0, 0),(17477, 5875, 2, 2, 0, 0, 0),
(17536, 5875, 2, 2, 0, 0, 0),(17538, 5875, 2, 2, 0, 0, 0),(17539, 5875, 2, 2, 0, 0, 0),(17540, 5875, 2, 2, 0, 0, 0),
(17541, 5875, 2, 2, 0, 0, 0),(17551, 5875, 2, 2, 0, 0, 0),(17552, 5875, 2, 2, 0, 0, 0),(17553, 5875, 2, 2, 0, 0, 0),
(17568, 5875, 2, 2, 0, 0, 0),(17614, 5875, 2, 2, 0, 0, 0),(17615, 5875, 2, 2, 0, 0, 0),(17641, 5875, 2, 2, 0, 0, 0),
(17651, 5875, 2, 2, 0, 0, 0),(17658, 5875, 2, 2, 0, 0, 0),(17671, 5875, 2, 2, 0, 0, 0),(17672, 5875, 2, 2, 0, 0, 0),
(17673, 5875, 2, 2, 0, 0, 0),(17676, 5875, 2, 2, 0, 0, 0),(17681, 5875, 2, 2, 0, 0, 0),(17773, 5875, 2, 2, 0, 0, 0),
(17774, 5875, 2, 2, 0, 0, 0),(17775, 5875, 2, 2, 0, 0, 0),(17776, 5875, 2, 2, 0, 0, 0),(17777, 5875, 2, 2, 0, 0, 0),
(17778, 5875, 2, 2, 0, 0, 0),(17779, 5875, 2, 2, 0, 0, 0),(17780, 5875, 2, 2, 0, 0, 0),(17785, 5875, 2, 2, 0, 0, 0),
(17813, 5875, 2, 2, 0, 0, 0),(17815, 5875, 2, 2, 0, 0, 0),(17816, 5875, 2, 2, 0, 0, 0),(17817, 5875, 2, 2, 0, 0, 0),
(17819, 5875, 2, 2, 0, 0, 0),(17820, 5875, 2, 2, 0, 0, 0),(17827, 5875, 2, 2, 0, 0, 0),(17828, 5875, 2, 2, 0, 0, 0),
(17842, 5875, 2, 2, 0, 0, 0),(17843, 5875, 2, 2, 0, 0, 0),(17844, 5875, 2, 2, 0, 0, 0),(17845, 5875, 2, 2, 0, 0, 0),
(17874, 5875, 2, 2, 0, 0, 0),(17875, 5875, 2, 2, 0, 0, 0),(17878, 5875, 2, 2, 0, 0, 0),(17883, 5875, 2, 2, 0, 0, 0),
(17884, 5875, 2, 2, 0, 0, 0),(18236, 5875, 2, 2, 0, 0, 0),(18237, 5875, 2, 2, 0, 0, 0),(18238, 5875, 2, 2, 0, 0, 0),
(18239, 5875, 2, 2, 0, 0, 0),(18240, 5875, 2, 2, 0, 0, 0),(18241, 5875, 2, 2, 0, 0, 0),(18242, 5875, 2, 2, 0, 0, 0),
(18243, 5875, 2, 2, 0, 0, 0),(18244, 5875, 2, 2, 0, 0, 0),(18245, 5875, 2, 2, 0, 0, 0),(18246, 5875, 2, 2, 0, 0, 0),
(18247, 5875, 2, 2, 0, 0, 0),(18248, 5875, 2, 2, 0, 0, 0),(18249, 5875, 2, 2, 0, 0, 0),(18250, 5875, 2, 2, 0, 0, 0),
(18251, 5875, 2, 2, 0, 0, 0),(18252, 5875, 2, 2, 0, 0, 0),(18253, 5875, 2, 2, 0, 0, 0),(18254, 5875, 2, 2, 0, 0, 0),
(18255, 5875, 2, 2, 0, 0, 0),(18256, 5875, 2, 2, 0, 0, 0),(18257, 5875, 2, 2, 0, 0, 0),(18258, 5875, 2, 2, 0, 0, 0),
(18259, 5875, 2, 2, 0, 0, 0),(18260, 5875, 2, 2, 0, 0, 0),(18261, 5875, 2, 2, 0, 0, 0),(18262, 5875, 2, 2, 0, 0, 0),
(18263, 5875, 2, 2, 0, 0, 0),(18264, 5875, 2, 2, 0, 0, 0),(18265, 5875, 2, 2, 0, 0, 0),(18266, 5875, 2, 2, 0, 0, 0),
(18267, 5875, 2, 2, 0, 0, 0),(18268, 5875, 2, 2, 0, 0, 0),(18269, 5875, 2, 2, 0, 0, 0),(18270, 5875, 2, 2, 0, 0, 0),
(18271, 5875, 2, 2, 0, 0, 0),(18272, 5875, 2, 2, 0, 0, 0),(18273, 5875, 2, 2, 0, 0, 0),(18274, 5875, 2, 2, 0, 0, 0),
(18275, 5875, 2, 2, 0, 0, 0),(18276, 5875, 2, 2, 0, 0, 0),(18277, 5875, 2, 2, 0, 0, 0),(18278, 5875, 2, 2, 0, 0, 0),
(18279, 5875, 2, 2, 0, 0, 0),(18280, 5875, 2, 2, 0, 0, 0),(18281, 5875, 2, 2, 0, 0, 0),(18282, 5875, 2, 2, 0, 0, 0),
(18283, 5875, 2, 2, 0, 0, 0),(18284, 5875, 2, 2, 0, 0, 0),(18285, 5875, 2, 2, 0, 0, 0),(18286, 5875, 2, 2, 0, 0, 0),
(18287, 5875, 2, 2, 0, 0, 0),(18288, 5875, 2, 2, 0, 0, 0),(18289, 5875, 2, 2, 0, 0, 0),(18290, 5875, 2, 2, 0, 0, 0),
(18291, 5875, 2, 2, 0, 0, 0),(18292, 5875, 2, 2, 0, 0, 0),(18293, 5875, 2, 2, 0, 0, 0),(18294, 5875, 2, 2, 0, 0, 0),
(18295, 5875, 2, 2, 0, 0, 0),(18297, 5875, 2, 2, 0, 0, 0),(18298, 5875, 2, 2, 0, 0, 0),(18299, 5875, 2, 2, 0, 0, 0),
(18300, 5875, 2, 2, 0, 0, 0),(18301, 5875, 2, 2, 0, 0, 0),(18302, 5875, 2, 2, 0, 0, 0),(18303, 5875, 2, 2, 0, 0, 0),
(18304, 5875, 2, 2, 0, 0, 0),(18305, 5875, 2, 2, 0, 0, 0),(18306, 5875, 2, 2, 0, 0, 0),(18307, 5875, 2, 2, 0, 0, 0),
(18308, 5875, 2, 2, 0, 0, 0),(18309, 5875, 2, 2, 0, 0, 0);