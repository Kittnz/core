-- Farstrider Lodge
-- Correct Malvinah Display: 16760 (missing)
replace into `creature_template` values (80200, 0, 1643, 0, 0, 0, 'Malvinah Sunblade', '', 0, 5, 5, 319, 319, 0, 0, 852, 84, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4276, 0, 0, 0, 0, 2, 'npc_malvinah_sunblade');

update creature_template set npc_flags = 3 where entry = 80200;
update creature_template set equipment_id = 0 where entry = 80200;

SET @quest_entry = 80200;
SET @quest_zone = 1519;
SET @title = 'Farstrider Lodge';
SET @description = 'Ah $N, you’re awake...\n\nThe journey south from the Remnants of Lordaeron wasn’t easy, but we have survived and this is our new home now...\n\nThere is a lot of work to be done now that we have arrived, this lodge has only been used by a few Dwarven hunters ever since the Second war, and hasn’t been maintained properly.\n\nVyrin Swiftwind in the lodge has been here much longer than any of us, why not talk to her to get you started?';
SET @objective = 'Talk to Vyrin Swiftwind in the Farstrider Lodge.';
SET @completetext = 'Ah, you wish to assist?\n\nWell your offer is welcomed. I was just a lone Ranger who took refuge down here, and next I hear about the fall of my homeland and now I have to contend with a hundred refugees.\n\nWe have a lot of work to do friend but it’s for the greater good, we Quel’dorei must stick together now!';
SET @incompletetext = 'Yes? What can I do for you?';
SET @faction_id = 269;
SET @faction_count = 75;
SET @xp_or_money = 75;
SET @reward_money = 5; 
SET @quest_level = 1;
SET @min_level = 1;
SET @questgiver_id = 80200;
SET @quest_finisher = 1156;
SET @nextquest = 0;
SET @nextquestinchain = 0;
SET @prevquest = 0;
SET @RewChoiceItemId1 = 0; 
SET @RewChoiceItemId2 = 0; 
SET @RewChoiceItemId3 = 0;
SET @RewChoiceItemId4 = 0; 
SET @RewChoiceItemCount1 = 0;
SET @RewChoiceItemCount2 = 0;
SET @RewChoiceItemCount3 = 0;
SET @RewChoiceItemCount4 = 0;
SET @reward_item_1 = 0;
SET @reward_item_2 = 0; 
SET @reward_item_3 = 0;
SET @reward_item_4 = 0;
SET @reward_item_1_count = 0;
SET @reward_item_2_count = 0;
SET @reward_item_3_count = 0;
SET @reward_item_4_count = 0;
SET @creature_to_kill_1 = 0;
SET @creature_to_kill_2 = 0; 
SET @creature_to_kill_3 = 0;
SET @creature_to_kill_4 = 0;
SET @creature_to_kill_1_count = 0;
SET @creature_to_kill_2_count = 0;
SET @creature_to_kill_3_count = 0;
SET @creature_to_kill_4_count = 0;
SET @required_item_1 = 0; 
SET @required_item_2 = 0;
SET @required_item_3 = 0;
SET @required_item_4 = 0;
SET @required_item_1_count = 8;
SET @required_item_2_count = 0;
SET @required_item_3_count = 0;
SET @required_item_4_count = 0;

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

SET @quest_entry = 80201;
SET @quest_zone = 1519;
SET @title = 'Stocking Up on Wood';
SET @description = 'A lot of wagons full of refugees have arrived from the north, and we know more are on the way.\n\nAs this has been used as a dwarven hunting lodge, thankfully the larders are fully stocked with meat, unfortunately most of the meat was in the process of being salted and the lodge does not have a great supply of firewood, can I ask you to go out and collect some? You’ll find plenty of wood in bundles just outside the lodge.\n\nOh and a word of warning... Do not leave the valley, the things out there are very dangerous and you are not ready to go out there yet.';
SET @objective = 'Collect 8 Bundles of Wood outside the lodge.';
SET @completetext = 'Thank you $N, with this wood we can cook enough meat to satisfy many hungry bellies!';
SET @incompletetext = 'Do you have the wood $N?';
SET @faction_id = 269;
SET @faction_count = 250;
SET @xp_or_money = 136;
SET @reward_money = 50; 
SET @quest_level = 1;
SET @min_level = 1;
SET @questgiver_id = 1156;
SET @quest_finisher = 1156;
SET @nextquest = 0;
SET @nextquestinchain = 0;
SET @prevquest = 80200;
SET @RewChoiceItemId1 = 80202; 
SET @RewChoiceItemId2 = 80203; 
SET @RewChoiceItemId3 = 0;
SET @RewChoiceItemId4 = 0; 
SET @RewChoiceItemCount1 = 1;
SET @RewChoiceItemCount2 = 1;
SET @RewChoiceItemCount3 = 0;
SET @RewChoiceItemCount4 = 0;
SET @reward_item_1 = 0;
SET @reward_item_2 = 0; 
SET @reward_item_3 = 0;
SET @reward_item_4 = 0;
SET @reward_item_1_count = 0;
SET @reward_item_2_count = 0;
SET @reward_item_3_count = 0;
SET @reward_item_4_count = 0;
SET @creature_to_kill_1 = 0;
SET @creature_to_kill_2 = 0; 
SET @creature_to_kill_3 = 0;
SET @creature_to_kill_4 = 0;
SET @creature_to_kill_1_count = 0;
SET @creature_to_kill_2_count = 0;
SET @creature_to_kill_3_count = 0;
SET @creature_to_kill_4_count = 0;
SET @required_item_1 = 80200; 
SET @required_item_2 = 0;
SET @required_item_3 = 0;
SET @required_item_4 = 0;
SET @required_item_1_count = 8;
SET @required_item_2_count = 0;
SET @required_item_3_count = 0;
SET @required_item_4_count = 0;

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

SET @quest_entry = 80203;
SET @quest_zone = 1519;
SET @title = 'Clearing Out Vermins';
SET @description = 'Excuse me $R can I borrow your attention for a moment?\n\nI am Kathy Wake, I am a member of a branch of the Alliance military responsible for ensuring the safety and prosperity of the Alliance lands. We’ve recently been sent here with a large contingent of men. Although I personally believe we were needed back home, it is not my place to question orders.\n\nOur mission has been to ensure your people arrived safely to the lodge and were able to settle in, however it is not easy to keep everyone safe from everything out here. While my men have been dealing with the larger problematic elements in the region, smaller ones have been left unattended for too long and have been allowed to run rampant...\n\nThe refugee Caravans could be in danger if something is not done quickly, I take it you can fight? If so, please go out there and take care of the Trogg vermin that have been infesting the area around the Lodge!';
SET @objective = 'Kill 8 Trogg Vermins.';
SET @completetext = 'Well done $N… This is only the beginning, but removing those Vermin will ensure the Refugees remain safe for now.\n\nWe have more work to do though, I hope you can continue to assist us...\n\nBy assisting us, you are assisting your own people as well after all.';
SET @incompletetext = 'Well $R, is the deed done?';
SET @faction_id = 269;
SET @faction_count = 250;
SET @xp_or_money = 156;
SET @reward_money = 80; 
SET @quest_level = 1;
SET @min_level = 1;
SET @questgiver_id = 80202;
SET @quest_finisher = 80202;
SET @nextquest = 0;
SET @nextquestinchain = 0;
SET @prevquest = 80200;
SET @RewChoiceItemId1 = 80204; 
SET @RewChoiceItemId2 = 80205; 
SET @RewChoiceItemId3 = 0;
SET @RewChoiceItemId4 = 0; 
SET @RewChoiceItemCount1 = 1;
SET @RewChoiceItemCount2 = 1;
SET @RewChoiceItemCount3 = 0;
SET @RewChoiceItemCount4 = 0;
SET @reward_item_1 = 0;
SET @reward_item_2 = 0; 
SET @reward_item_3 = 0;
SET @reward_item_4 = 0;
SET @reward_item_1_count = 0;
SET @reward_item_2_count = 0;
SET @reward_item_3_count = 0;
SET @reward_item_4_count = 0;
SET @creature_to_kill_1 = 80201;
SET @creature_to_kill_2 = 0; 
SET @creature_to_kill_3 = 0;
SET @creature_to_kill_4 = 0;
SET @creature_to_kill_1_count = 8;
SET @creature_to_kill_2_count = 0;
SET @creature_to_kill_3_count = 0;
SET @creature_to_kill_4_count = 0;
SET @required_item_1 = 0; 
SET @required_item_2 = 0;
SET @required_item_3 = 0;
SET @required_item_4 = 0;
SET @required_item_1_count = 0;
SET @required_item_2_count = 0;
SET @required_item_3_count = 0;
SET @required_item_4_count = 0;

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

SET @quest_entry = 80204;
SET @quest_zone = 1519;
SET @title = 'Gathering Intel';
SET @description = 'You’re less green behind your ears now, which is good.\n\nThe vermins you’ve defeated are only a nuisance compared to something else that may lurk in this valley. Some of the recent refugees who arrived late last night reported seeing a figure of short stature with glowing red eyes in the woods, stalking the area...\n\nSome would say it’s mere superstition, I on the other hand believe it may be the forward scout of a Shadowforge raiding party.\n\nThe Shadowforge are one of the Dark Iron clans, corrupted red eyed dwarves who are at odds with the kingdom of Ironforge. Please investigate the area to the west where the sighting took place, but do not stray too close to the digsite, it is infested with Troggs far stronger than those vermin you fought earlier.\n\nRemember, do not engage if you find something, go in, confirm your sighting and immediately return here.';
SET @objective = 'Investigate the area to the west of the the Lodge.';
SET @completetext = 'A whole armed camp? Damn, this is a problem, we’ll need to devote resources into dealing with it and we don’t have many. Thank you for your help <name>! We may call upon you again once we figure out how to deal with this.';
SET @incompletetext = 'Well $R, is the deed done?';
SET @faction_id = 72;
SET @faction_count = 250;
SET @xp_or_money = 176;
SET @reward_money = 90; 
SET @quest_level = 3;
SET @min_level = 2;
SET @questgiver_id = 80202;
SET @quest_finisher = 80202;
SET @nextquest = 0;
SET @nextquestinchain = 0;
SET @prevquest = 80203;
SET @RewChoiceItemId1 = 80206; 
SET @RewChoiceItemId2 = 80207; 
SET @RewChoiceItemId3 = 80208;
SET @RewChoiceItemId4 = 80211; 
SET @RewChoiceItemCount1 = 1;
SET @RewChoiceItemCount2 = 1;
SET @RewChoiceItemCount3 = 1;
SET @RewChoiceItemCount4 = 1;
SET @reward_item_1 = 0;
SET @reward_item_2 = 0; 
SET @reward_item_3 = 0;
SET @reward_item_4 = 0;
SET @reward_item_1_count = 0;
SET @reward_item_2_count = 0;
SET @reward_item_3_count = 0;
SET @reward_item_4_count = 0;
SET @creature_to_kill_1 = 80203;
SET @creature_to_kill_2 = 0; 
SET @creature_to_kill_3 = 0;
SET @creature_to_kill_4 = 0;
SET @creature_to_kill_1_count = 1;
SET @creature_to_kill_2_count = 0;
SET @creature_to_kill_3_count = 0;
SET @creature_to_kill_4_count = 0;
SET @required_item_1 = 0; 
SET @required_item_2 = 0;
SET @required_item_3 = 0;
SET @required_item_4 = 0;
SET @required_item_1_count = 0;
SET @required_item_2_count = 0;
SET @required_item_3_count = 0;
SET @required_item_4_count = 0;

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

SET @quest_entry = 80205;
SET @quest_zone = 1519;
SET @title = 'Slaking their Thirst';
SET @description = 'Hello again $N!\n\nYour wood helped feed many of the refugees, it’s wonderful! However, the situation is far from resolved...\n\nThe drinking water stores and even the ale is running low, soon we will not be able to care for the refugees, luckily there is a well to the north near the border of the valley, can I ask you to go there and fill this barrel with water?\n\nIn the mean time volunteers are trying to dig a new well here but that will take time.\n\nPlease $N, I know I can count on you!';
SET @objective = 'Fill barrel of water.';
SET @completetext = 'You got the water?...\n\nThank you $N at least... that’s one less problem we have to deal with.\n\nThe children will have water and the progress on the well is going wonderfully! I also don’t have to touch Dwarven ale again...\n\nNo offense to them but that stuff is vile to my palate.';
SET @incompletetext = 'Did you get it? The children are thirsty...';
SET @faction_id = 269;
SET @faction_count = 250;
SET @xp_or_money = 176;
SET @reward_money = 90; 
SET @quest_level = 3;
SET @min_level = 3;
SET @questgiver_id = 1156;
SET @quest_finisher = 1156;
SET @nextquest = 0;
SET @nextquestinchain = 0;
SET @prevquest = 80201;
SET @RewChoiceItemId1 = 80212; 
SET @RewChoiceItemId2 = 80213; 
SET @RewChoiceItemId3 = 80214;
SET @RewChoiceItemId4 = 80215; 
SET @RewChoiceItemCount1 = 1;
SET @RewChoiceItemCount2 = 1;
SET @RewChoiceItemCount3 = 1;
SET @RewChoiceItemCount4 = 1;
SET @reward_item_1 = 0;
SET @reward_item_2 = 0; 
SET @reward_item_3 = 0;
SET @reward_item_4 = 0;
SET @reward_item_1_count = 0;
SET @reward_item_2_count = 0;
SET @reward_item_3_count = 0;
SET @reward_item_4_count = 0;
SET @creature_to_kill_1 = 0;
SET @creature_to_kill_2 = 0; 
SET @creature_to_kill_3 = 0;
SET @creature_to_kill_4 = 0;
SET @creature_to_kill_1_count = 0;
SET @creature_to_kill_2_count = 0;
SET @creature_to_kill_3_count = 0;
SET @creature_to_kill_4_count = 0;
SET @required_item_1 = 80210; 
SET @required_item_2 = 0;
SET @required_item_3 = 0;
SET @required_item_4 = 0;
SET @required_item_1_count = 1;
SET @required_item_2_count = 0;
SET @required_item_3_count = 0;
SET @required_item_4_count = 0;

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

SET @quest_entry = 80206;
SET @quest_zone = 1519;
SET @title = 'Burnt Wheels';
SET @description = '<Vyrin looks extremely gloomy, she turns to look at you.>\n\nWe found a wagon burnt down, with the corpses of the escort near it, and no sign of the refugees... It’s... terrible… $N, it’s absolutely terrible!\n\nPlease speak to your companion... Malvinah was it? I am trying to keep people calm as we try to figure this out but she is very disturbed and is spreading panic and confusion among the refugees.';
SET @objective = 'Speak to Malvinah Sunblade and report to Kathy Wake.';
SET @completetext = 'So you know about it then? My scouts have confirmed it...\n\nIt’s the damn Shadowforge raiding party you found... We should have struck right away but instead I wanted to prepare... damnit!\n\nIt’s as if they knew we were on to them, you didn’t attack any of them did you?... well no matter, the time to regret is not now, now is the time to act!\n\nThe refugees have been put in cages and the Dark Irons are preparing to ritually sacrifice them to their god, the firelord Ragnaros.\n\nWe can’t allow this $N! I’m going to need your help with this!';
SET @incompletetext = 'What is it $N? This isn’t a good time...';
SET @faction_id = 269;
SET @faction_count = 250;
SET @xp_or_money = 176;
SET @reward_money = 0; 
SET @quest_level = 4;
SET @min_level = 3;
SET @questgiver_id = 1156;
SET @quest_finisher = 80202;
SET @nextquest = 0;
SET @nextquestinchain = 0;
SET @prevquest = 80205;
SET @RewChoiceItemId1 = 0; 
SET @RewChoiceItemId2 = 0; 
SET @RewChoiceItemId3 = 0;
SET @RewChoiceItemId4 = 0; 
SET @RewChoiceItemCount1 = 0;
SET @RewChoiceItemCount2 = 0;
SET @RewChoiceItemCount3 = 0;
SET @RewChoiceItemCount4 = 0;
SET @reward_item_1 = 0;
SET @reward_item_2 = 0; 
SET @reward_item_3 = 0;
SET @reward_item_4 = 0;
SET @reward_item_1_count = 0;
SET @reward_item_2_count = 0;
SET @reward_item_3_count = 0;
SET @reward_item_4_count = 0;
SET @creature_to_kill_1 = 80204;
SET @creature_to_kill_2 = 0; 
SET @creature_to_kill_3 = 0;
SET @creature_to_kill_4 = 0;
SET @creature_to_kill_1_count = 1;
SET @creature_to_kill_2_count = 0;
SET @creature_to_kill_3_count = 0;
SET @creature_to_kill_4_count = 0;
SET @required_item_1 = 0; 
SET @required_item_2 = 0;
SET @required_item_3 = 0;
SET @required_item_4 = 0;
SET @required_item_1_count = 0;
SET @required_item_2_count = 0;
SET @required_item_3_count = 0;
SET @required_item_4_count = 0;

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

REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (3000203, 0, 0, 25794, 'Shadowforge Cage', 0, 32, 1, 0, 0, 0, 0, 21400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_shadowforge_cage');

SET @quest_entry = 80207;
SET @quest_zone = 1519;
SET @title = 'Dark Iron Scrapping';
SET @description = 'Alright, $N, here is the plan. We have established a perimeter but we believe that if we move in in force, then they will execute the refugees, we have been ordered to not engage.\n\nHowever if we do not act now, the refugees will be executed. We need an outsider to sneak into their camp, kill the Fire Cleric, acquire the key to the cells and free the refugees.\n\nI can think of no one more worthy for this task, you have proven yourself to be strong and resourceful in the short time we’ve known each other.\n\nI believe that you can do this $N! Go now and save those people!';
SET @objective = 'Kill Shadowforge Fire Priest, acquire Dark Key and free High Elf refugees.';
SET @completetext = 'They are all safe... I can’t believe it, we have averted a disaster! I can’t thank you enough, $N! We take our duty very seriously and losing those people would have been terrible.\n\nThe time is now, we will take care of the raiding party... Now I believe someone wishes to talk to you, go see Vyrin!';
SET @incompletetext = 'Time is of the essence, $N, do not delay!';
SET @faction_id = 269;
SET @faction_count = 250;
SET @xp_or_money = 204;
SET @reward_money = 200; 
SET @quest_level = 4;
SET @min_level = 4;
SET @questgiver_id = 80202;
SET @quest_finisher = 80202;
SET @nextquest = 0;
SET @nextquestinchain = 0;
SET @prevquest = 80205;
SET @RewChoiceItemId1 = 80217; 
SET @RewChoiceItemId2 = 80218; 
SET @RewChoiceItemId3 = 80219;
SET @RewChoiceItemId4 = 80220; 
SET @RewChoiceItemCount1 = 1;
SET @RewChoiceItemCount2 = 1;
SET @RewChoiceItemCount3 = 1;
SET @RewChoiceItemCount4 = 1;
SET @reward_item_1 = 0;
SET @reward_item_2 = 0; 
SET @reward_item_3 = 0;
SET @reward_item_4 = 0;
SET @reward_item_1_count = 0;
SET @reward_item_2_count = 0;
SET @reward_item_3_count = 0;
SET @reward_item_4_count = 0;
SET @creature_to_kill_1 = 80205;
SET @creature_to_kill_2 = 80206; 
SET @creature_to_kill_3 = 0;
SET @creature_to_kill_4 = 0;
SET @creature_to_kill_1_count = 1;
SET @creature_to_kill_2_count = 1;
SET @creature_to_kill_3_count = 0;
SET @creature_to_kill_4_count = 0;
SET @required_item_1 = 0; 
SET @required_item_2 = 0;
SET @required_item_3 = 0;
SET @required_item_4 = 0;
SET @required_item_1_count = 0;
SET @required_item_2_count = 0;
SET @required_item_3_count = 0;
SET @required_item_4_count = 0;

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

SET @quest_entry = 80208;
SET @quest_zone = 1519;
SET @title = 'Sunblade Reunion';
SET @description = 'You’re the hero of the hour, $N! All the Refugees are speaking your name...\n\nI believe a friend is grateful in particular, why not go and speak with Malvinah Sunblade?';
SET @objective = 'Speak to Malvinah Sunblade.';
SET @completetext = 'You did well, $N, you deserve all this praise.\n\nIt may not seem like much to save a few refugees, but once you consider that this is just the start of your journey, combined with the courage you exhibited. \n\nWell I can safely say that I am proud to have met you. However, there is another matter we much talk about.\n\nSeveral of the Refugee caravans have decided to move on to Stormwind, we can escort them part of the way, but eventually they will arrive in a region beset by strife.\n\nWhile bandits and beasts run amok, we are ordered to outlying areas such as this.\n\nWe can’t go against our orders, but adventurers like you can make a difference back home.\n\nThink about it and talk to me again.';
SET @incompletetext = 'The Hero of the hour returns huh?';
SET @faction_id = 269;
SET @faction_count = 250;
SET @xp_or_money = 204;
SET @reward_money = 100; 
SET @quest_level = 5;
SET @min_level = 4;
SET @questgiver_id = 1156;
SET @quest_finisher = 1156;
SET @nextquest = 0;
SET @nextquestinchain = 0;
SET @prevquest = 80207;
SET @RewChoiceItemId1 = 80221; 
SET @RewChoiceItemId2 = 0; 
SET @RewChoiceItemId3 = 0;
SET @RewChoiceItemId4 = 0; 
SET @RewChoiceItemCount1 = 1;
SET @RewChoiceItemCount2 = 0;
SET @RewChoiceItemCount3 = 0;
SET @RewChoiceItemCount4 = 0;
SET @reward_item_1 = 0;
SET @reward_item_2 = 0; 
SET @reward_item_3 = 0;
SET @reward_item_4 = 0;
SET @reward_item_1_count = 0;
SET @reward_item_2_count = 0;
SET @reward_item_3_count = 0;
SET @reward_item_4_count = 0;
SET @creature_to_kill_1 = 80211;
SET @creature_to_kill_2 = 0; 
SET @creature_to_kill_3 = 0;
SET @creature_to_kill_4 = 0;
SET @creature_to_kill_1_count = 1;
SET @creature_to_kill_2_count = 0;
SET @creature_to_kill_3_count = 0;
SET @creature_to_kill_4_count = 0;
SET @required_item_1 = 0; 
SET @required_item_2 = 0;
SET @required_item_3 = 0;
SET @required_item_4 = 0;
SET @required_item_1_count = 0;
SET @required_item_2_count = 0;
SET @required_item_3_count = 0;
SET @required_item_4_count = 0;

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

-- EVERYTHING BELOW SHOULD NOT BE USED OR APPLIED!!!! DRAFT!!!
-- PORTING TO GOLDSHIRE

SET @quest_entry = 80016;
SET @quest_zone = 1519; 
SET @faction_id = 269;
SET @faction_count = 75; -- TODO: Add SW rep.
SET @xp_or_money = 286;  
SET @reward_money = 0;  
SET @quest_level = 5;
SET @min_level = 5;
SET @questgiver_id = 80009; 
SET @quest_finisher = 240;
SET @nextquestinchain = 0;
SET @prevquest = 80015;
SET @reward_item_1 = 0; 
SET @reward_item_2 = 0;
SET @reward_item_3 = 0;
SET @reward_item_4 = 0;
SET @reward_item_1_count = 0;
SET @reward_item_2_count = 0;
SET @reward_item_3_count = 0;
SET @reward_item_4_count = 0;
SET @creature_to_kill_1 = 80015; -- TODO: Script this trigger.
SET @creature_to_kill_2 = 0; 
SET @creature_to_kill_3 = 0;
SET @creature_to_kill_4 = 0;
SET @creature_to_kill_1_count = 1;
SET @creature_to_kill_2_count = 0;
SET @creature_to_kill_3_count = 0;
SET @creature_to_kill_4_count = 0;
SET @required_item_1 = 0; 
SET @required_item_2 = 0;
SET @required_item_3 = 0;
SET @required_item_4 = 0;
SET @required_item_1_count = 0;
SET @required_item_2_count = 0;
SET @required_item_3_count = 0;
SET @required_item_4_count = 0;

-- TODO GOSSIP SCRIPT Gossip text during this stage: Ah if it isn’t <name> ! You’ve certainly become famous here...Ah you need to get to Goldshire? Well I can’t deny you after all you’ve done for us. I will be able to teleport you there this one time as a special favor. Are you ready to go? It will be a while before you can return here once you leave. Yes/No


'Porting to Goldshire', 

'You’ve decided to assist then? I am grateful $N!\n\nThe situation back home is dire and we simply are not allowed to go back. I do not know what kind of affliction ails the Stormwind nobles...Ever since King Varian disappeared, the Kingdom has been run into the ground!\n\nAlas while we cannot deal with the nobles, we can deal with the problems in the provinces! Elwynn Forest is a good place to start, the capital itself is located in this region and it has been beset by issues. Kobolds raiding the mines, Gnolls raiding towns and Bandits raiding the roads...\n\nMy friend Marshal Dugan is stationed in Goldshire and he can put you to good use, I believe the Magistrix here can teleport you to Goldshire.', 

'Speak to Magistrix Ishalah to be teleported to Goldshire, report to Marshal Dugan.', 

'Kathy Wake sent you?! You’ve certainly made connections if an SI...I mean, if a member of the Alliance military sent you! If you’re here to assist, I can assure you that we’ll need the help. I have requested for reinforcements from the capital several times and received nothing. If Kathy vouches for you, then it’s good enough for me.  I believe I have your first assignment in mind! Oh and don’t forget to visit the inn, you may want to attune your Hearthstone there if you have one.', 

'A High elf here? What can I do for you stranger?', 

'', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', @faction_id, '0', '0', '0', '0', @faction_count, '0', '0', '0', '0', '0', @xp_or_money, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', 0, 0);
      
16592 16676 16682 16289 - Female Refugee
16103 16704 16825 17658 - Male Refugee
18220 18221 18222 18223 - Ranger Protector <Silvermoon Remnant>
1435 2027 2045 1297 - Caravan Escort
16624 - Lor'thas the Holy <Paladin Trainer>
wait 16624 is better for paladin, fixed it
16767 - Valanos Dawnfire <Warrior Trainer>
16655 - Melonius Silvershine <Armor Merchant>
16705 - Malanius Silvershine <Food Merchant>
17279 - Magister Ala'shor Sunblood <Mage Trainer>
16133 - Alyssia Solar <Weapon Merchant>

16115 - Magistrix Ishalah (The NPC teleporting you to Goldshire)
16760 - Malvinah Sunblade
16765 - Priestess Maelah Sunsworn <Priest Trainer>
16778 - Ranger Rubinah Sunsworn <Hunter Trainer>
(Move the resident dwarven Hunter trainer elsewhere, perhaps to Stormwind, pet trainer can stay)
17842 (stand by for this)