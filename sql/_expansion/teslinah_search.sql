
-- Teslinah (Summon)

set @teslinah = 80265;

REPLACE INTO `creature_template` VALUES (@teslinah, 0, 18003, 0, 0, 0, 'Teslinah', NULL, 0, 5, 5, 64, 64, 0, 0, 20, 12, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 768, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2, '');
update creature_template set faction = 371 where entry = @teslinah;
update creature_template set npc_flags = 2 where entry = @teslinah;

replace into item_template (entry, class, subclass, name, description, display_id, quality, bonding, spellid_1, spellcooldown_1) values
(80410, 15, 2, 'High Elf Orphan Whistle', 'Summon and dismiss the orphan you\'ve agreed to look after.', 15798, 2, 1, 28505, 1500);
replace into custom_pet_entry_relation (item_entry, creature_entry) values (80410, @teslinah);
update creature_template set script_name = 'npc_teslinah' where entry = @teslinah; 

-- Help With a Compassionate Matter

set @quest_entry = 80260;
set @quest_zone = 1519;
set @title = 'Help With a Compassionate Matter';
set @description = 'I have a... troubling issue.\n\nA child was sent from Stormwind and she won’t stop babbling.\n\nQuite frankly she is interfering with my work, I was apparently the most qualified to take care of her but I’d appreciate it if you helped her out with her request since you’re a great hero and all.\n\nYes yes! I will pay you too! Please help!\n\n<Anu’delen clearly appears to be at his wits end.>';
set @objective = 'Talk to Anu’delen again if you wish to help him out.';
set @completetext = 'Thank the Sunwell! You have no idea how much this matters to me...\n\nPeace and quiet is important while doing this vital work.\n\nTalk to the girl and help her out, this whistle can call her.';
set @incompletetext = 'So? Will you help me out?';
set @faction_id = 269;
set @faction_count = 15;
set @xp_or_money = 650;
set @reward_money = 0; 
set @quest_level = 20;
set @min_level = 20;
set @questgiver_id = 80231;
set @quest_finisher = 80231;
set @nextquest = 0;
set @nextquestinchain = 0;
set @prevquest = 80256; 
set @RewChoiceItemId1 = 0; 
set @RewChoiceItemId2 = 0; 
set @RewChoiceItemId3 = 0;
set @RewChoiceItemId4 = 0; 
set @RewChoiceItemCount1 = 0;
set @RewChoiceItemCount2 = 0;
set @RewChoiceItemCount3 = 0;
set @RewChoiceItemCount4 = 0;
set @reward_item_1 = 80410;
set @reward_item_2 = 0; 
set @reward_item_3 = 0;
set @reward_item_4 = 0;
set @reward_item_1_count = 1;
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

-- Teslinah’s Search I

set @quest_entry = 80261;
set @quest_zone = 1519;
set @title = 'Teslinah’s Search I';
set @description = 'My name is Teslinah... Please I need your help!\n\nMy mommy and I were in Farstrider Lodge after fleeing from all the bad up north...\n\nBut when we were in Stormwind we got separated! Miss Elsharin found me and took me here, believing my mommy would be here, but she’s not! The grumpy man over there only told me to sit in a corner and be silent, you will help me, won’t you?';
set @objective = 'Search for Teslinah\'s mom in Stormwind.';
set @completetext = 'She\'s not in the mage district... I\'m sorry... But we can\'t give up!';
set @incompletetext = 'Please, will you help me?\n\nPretty please? ';
set @faction_id = 269;
set @faction_count = 75;
set @xp_or_money = 1650;
set @reward_money = 0; 
set @quest_level = 20;
set @min_level = 20;
set @questgiver_id = @teslinah;
set @quest_finisher = @teslinah;
set @nextquest = 0;
set @nextquestinchain = 0;
set @prevquest = 80260; 
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
set @creature_to_kill_1 = 80270;
set @creature_to_kill_2 = 80271; 
set @creature_to_kill_3 = 80272;
set @creature_to_kill_4 = 80273;
set @creature_to_kill_1_count = 1;
set @creature_to_kill_2_count = 1;
set @creature_to_kill_3_count = 1;
set @creature_to_kill_4_count = 1;
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
objectivetext1='Search Mage Tower', 
objectivetext2='Search Mage District', 
objectivetext3='Search Mage District Tavern', 
objectivetext4='Search Mage District Tavern Basement'
where entry = @quest_entry;	

replace into`creature_template` values (80270, 0, 0, 0, 0, 0, 'Quest 80261 Custom Objective', '', 0, 5, 5, 319, 319, 0, 0, 852, 84, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4276, 0, 0, 0, 0, 2, '');
replace into`creature_template` values (80271, 0, 0, 0, 0, 0, 'Quest 80261 Custom Objective', '', 0, 5, 5, 319, 319, 0, 0, 852, 84, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4276, 0, 0, 0, 0, 2, '');
replace into`creature_template` values (80272, 0, 0, 0, 0, 0, 'Quest 80261 Custom Objective', '', 0, 5, 5, 319, 319, 0, 0, 852, 84, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4276, 0, 0, 0, 0, 2, '');
replace into`creature_template` values (80273, 0, 0, 0, 0, 0, 'Quest 80261 Custom Objective', '', 0, 5, 5, 319, 319, 0, 0, 852, 84, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4276, 0, 0, 0, 0, 2, '');

replace into `gameobject_template` values (3000250, 0, 5, 381, 'Teslinah Search: Mage Tower', 0, 0, 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_teslinah_search');
replace into `gameobject_template` values (3000251, 0, 5, 381, 'Teslinah Search: Mage District', 0, 0, 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_teslinah_search');
replace into `gameobject_template` values (3000252, 0, 5, 381, 'Teslinah Search: Mage District Tavern', 0, 0, 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_teslinah_search');
replace into `gameobject_template` values (3000253, 0, 5, 381, 'Teslinah Search: Mage District Tavern Basement', 0, 0, 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_teslinah_search');

-- Teslinah’s Search II

set @quest_entry = 80262;
set @quest_zone = 1519;
set @title = 'Teslinah’s Search II';
set @description = 'Let\'s try the dwarven area, the park and my people\'s district next!';
set @objective = 'Search for Teslinah\'s mom in Stormwind.';
set @completetext = 'So she\'s not here either... Mommy where are you?!';
set @incompletetext = 'Please, let\'s continue looking?\n\nPretty please? ';
set @faction_id = 269;
set @faction_count = 75;
set @xp_or_money = 1650;
set @reward_money = 0; 
set @quest_level = 20;
set @min_level = 20;
set @questgiver_id = @teslinah;
set @quest_finisher = @teslinah;
set @nextquest = 0;
set @nextquestinchain = 0;
set @prevquest = 80261; 
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
set @creature_to_kill_1 = 80274;
set @creature_to_kill_2 = 80275; 
set @creature_to_kill_3 = 80276;
set @creature_to_kill_4 = 80277;
set @creature_to_kill_1_count = 1;
set @creature_to_kill_2_count = 1;
set @creature_to_kill_3_count = 1;
set @creature_to_kill_4_count = 1;
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
objectivetext1='Search Stormwind Park', 
objectivetext2='Search Dwarf District', 
objectivetext3='Search Dwarf District Embassy', 
objectivetext4='Search Little Silvermoon'
where entry = @quest_entry;

replace into`creature_template` values (80274, 0, 0, 0, 0, 0, 'Quest 80261 Custom Objective', '', 0, 5, 5, 319, 319, 0, 0, 852, 84, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4276, 0, 0, 0, 0, 2, '');
replace into`creature_template` values (80275, 0, 0, 0, 0, 0, 'Quest 80261 Custom Objective', '', 0, 5, 5, 319, 319, 0, 0, 852, 84, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4276, 0, 0, 0, 0, 2, '');
replace into`creature_template` values (80276, 0, 0, 0, 0, 0, 'Quest 80261 Custom Objective', '', 0, 5, 5, 319, 319, 0, 0, 852, 84, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4276, 0, 0, 0, 0, 2, '');
replace into`creature_template` values (80277, 0, 0, 0, 0, 0, 'Quest 80261 Custom Objective', '', 0, 5, 5, 319, 319, 0, 0, 852, 84, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4276, 0, 0, 0, 0, 2, '');	

replace into `gameobject_template` values (3000254, 0, 5, 381, 'Teslinah Search: Stormwind Park Moonwell', 0, 0, 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_teslinah_search');
replace into `gameobject_template` values (3000255, 0, 5, 381, 'Teslinah Search: Dwarf District', 0, 0, 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_teslinah_search');
replace into `gameobject_template` values (3000256, 0, 5, 381, 'Teslinah Search: Dwarf District Embassy', 0, 0, 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_teslinah_search');
replace into `gameobject_template` values (3000257, 0, 5, 381, 'Teslinah Search: Little Silvermoon', 0, 0, 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_teslinah_search');

-- Teslinah’s Search III

set @quest_entry = 80263;
set @quest_zone = 1519;
set @title = 'Teslinah’s Search III';
set @description = 'Let\'s try the Keep, I hear the king is nice! We can also try the Old town, I think it has a tavern too... Oh and let\'s look at that Gnomish tram i\'ve heard about! Maybe she\'s there.';
set @objective = 'Search for Teslinah\'s mom in Stormwind.';
set @completetext = 'Mommy is out there somewhere... Let\'s continue please!';
set @incompletetext = 'We cannot give up right We\'ll continue right? please??\n\nPretty please? ';
set @faction_id = 269;
set @faction_count = 75;
set @xp_or_money = 1650;
set @reward_money = 0; 
set @quest_level = 20;
set @min_level = 20;
set @questgiver_id = @teslinah;
set @quest_finisher = @teslinah;
set @nextquest = 0;
set @nextquestinchain = 0;
set @prevquest = 80262; 
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
set @creature_to_kill_1 = 80278;
set @creature_to_kill_2 = 80279; 
set @creature_to_kill_3 = 80280;
set @creature_to_kill_4 = 80281;
set @creature_to_kill_1_count = 1;
set @creature_to_kill_2_count = 1;
set @creature_to_kill_3_count = 1;
set @creature_to_kill_4_count = 1;
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
objectivetext1='Search Deeprun Tram Entrance', 
objectivetext2='Search Stormwind Keep', 
objectivetext3='Search Old Town', 
objectivetext4='Search Old Town Tavern'
where entry = @quest_entry;

replace into`creature_template` values (80278, 0, 0, 0, 0, 0, 'Quest 80261 Custom Objective', '', 0, 5, 5, 319, 319, 0, 0, 852, 84, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4276, 0, 0, 0, 0, 2, '');
replace into`creature_template` values (80279, 0, 0, 0, 0, 0, 'Quest 80261 Custom Objective', '', 0, 5, 5, 319, 319, 0, 0, 852, 84, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4276, 0, 0, 0, 0, 2, '');
replace into`creature_template` values (80280, 0, 0, 0, 0, 0, 'Quest 80261 Custom Objective', '', 0, 5, 5, 319, 319, 0, 0, 852, 84, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4276, 0, 0, 0, 0, 2, '');
replace into`creature_template` values (80281, 0, 0, 0, 0, 0, 'Quest 80261 Custom Objective', '', 0, 5, 5, 319, 319, 0, 0, 852, 84, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4276, 0, 0, 0, 0, 2, '');	

replace into `gameobject_template` values (3000258, 0, 5, 381, 'Teslinah Search: Deeprun Tram Entrance', 0, 0, 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_teslinah_search');
replace into `gameobject_template` values (3000259, 0, 5, 381, 'Teslinah Search: Stormwind Keep', 0, 0, 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_teslinah_search');
replace into `gameobject_template` values (3000260, 0, 5, 381, 'Teslinah Search: Old Town', 0, 0, 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_teslinah_search');
replace into `gameobject_template` values (3000261, 0, 5, 381, 'Teslinah Search: Old Town Tavern', 0, 0, 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_teslinah_search');

-- Teslinah’s Search IV

set @quest_entry = 80264;
set @quest_zone = 1519;
set @title = 'Teslinah’s Search IV';
set @description = 'We could try the barracks in the Old Town... Oh and the Cathedral place! Maybe she went to look for me there, I heard there\'s a place for lost children, and a pretty big building!';
set @objective = 'Search for Teslinah\'s mom in Stormwind.';
set @completetext = 'Mommy... N-No, I am sure we can find her, right?';
set @incompletetext = 'Please, keep helping me...\n\n please? ';
set @faction_id = 269;
set @faction_count = 75;
set @xp_or_money = 1650;
set @reward_money = 0; 
set @quest_level = 20;
set @min_level = 20;
set @questgiver_id = @teslinah;
set @quest_finisher = @teslinah;
set @nextquest = 0;
set @nextquestinchain = 0;
set @prevquest = 80263; 
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
set @creature_to_kill_1 = 80282;
set @creature_to_kill_2 = 80283; 
set @creature_to_kill_3 = 80284;
set @creature_to_kill_4 = 80285;
set @creature_to_kill_1_count = 1;
set @creature_to_kill_2_count = 1;
set @creature_to_kill_3_count = 1;
set @creature_to_kill_4_count = 1;
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
objectivetext1='Search Old Town Barracks', 
objectivetext2='Search Cathedral Square', 
objectivetext3='Search Orphanage', 
objectivetext4='Search Cathedral'
where entry = @quest_entry;

replace into`creature_template` values (80282, 0, 0, 0, 0, 0, 'Quest 80261 Custom Objective', '', 0, 5, 5, 319, 319, 0, 0, 852, 84, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4276, 0, 0, 0, 0, 2, '');
replace into`creature_template` values (80283, 0, 0, 0, 0, 0, 'Quest 80261 Custom Objective', '', 0, 5, 5, 319, 319, 0, 0, 852, 84, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4276, 0, 0, 0, 0, 2, '');
replace into`creature_template` values (80284, 0, 0, 0, 0, 0, 'Quest 80261 Custom Objective', '', 0, 5, 5, 319, 319, 0, 0, 852, 84, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4276, 0, 0, 0, 0, 2, '');
replace into`creature_template` values (80285, 0, 0, 0, 0, 0, 'Quest 80261 Custom Objective', '', 0, 5, 5, 319, 319, 0, 0, 852, 84, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4276, 0, 0, 0, 0, 2, '');	

replace into `gameobject_template` values (3000262, 0, 5, 381, 'Teslinah Search: Old Town Barracks', 0, 0, 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_teslinah_search');
replace into `gameobject_template` values (3000263, 0, 5, 381, 'Teslinah Search: Cathedral Square', 0, 0, 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_teslinah_search');
replace into `gameobject_template` values (3000264, 0, 5, 381, 'Teslinah Search: Orphanage', 0, 0, 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_teslinah_search');
replace into `gameobject_template` values (3000265, 0, 5, 381, 'Teslinah Search: Cathedral', 0, 0, 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_teslinah_search');

-- Teslinah’s Search V

set @quest_entry = 80265;
set @quest_zone = 1519;
set @title = 'Teslinah’s Search V';
set @description = 'I don\'t think there\'s many other places left. Let\'s look everywhere we\'ve missed. There\'s more to the Cathedral, and we can look in the Trade place!';
set @objective = 'Find someone who can help in Stormwind.';
set @completetext = 'Her mom is missing you say? Let me see...\n\nThe girl’s name is Teslinah? We do have records of her and her mother’s arrival in Stormwind with the other refugees but she and her mother never showed up at the City hall for their registration.\n\nThis is troubling we can’t have people going missing in Stormwind, I will investigate, until my investigation is complete can I count on you to care for the girl?\n\nSince she was registered here in Stormwind I will issue some bonds to feed her properly.';
set @incompletetext = 'Yes, what can I do for you, $R?';
set @faction_id = 269;
set @faction_count = 75;
set @xp_or_money = 1650;
set @reward_money = 0; 
set @quest_level = 20;
set @min_level = 20;
set @questgiver_id = @teslinah;
set @quest_finisher = 4974;
set @nextquest = 0;
set @nextquestinchain = 0;
set @prevquest = 80264; 
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
set @creature_to_kill_1 = 80286;
set @creature_to_kill_2 = 80287; 
set @creature_to_kill_3 = 80288;
set @creature_to_kill_4 = 80289;
set @creature_to_kill_1_count = 1;
set @creature_to_kill_2_count = 1;
set @creature_to_kill_3_count = 1;
set @creature_to_kill_4_count = 1;
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
objectivetext1='Search Cathedral Basement', 
objectivetext2='Search Cathedral Catacombs', 
objectivetext3='Search Trade District', 
objectivetext4='Search Stormwind Visitor Center'
where entry = @quest_entry;

replace into`creature_template` values (80286, 0, 0, 0, 0, 0, 'Quest 80261 Custom Objective', '', 0, 5, 5, 319, 319, 0, 0, 852, 84, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4276, 0, 0, 0, 0, 2, '');
replace into`creature_template` values (80287, 0, 0, 0, 0, 0, 'Quest 80261 Custom Objective', '', 0, 5, 5, 319, 319, 0, 0, 852, 84, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4276, 0, 0, 0, 0, 2, '');
replace into`creature_template` values (80288, 0, 0, 0, 0, 0, 'Quest 80261 Custom Objective', '', 0, 5, 5, 319, 319, 0, 0, 852, 84, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4276, 0, 0, 0, 0, 2, '');
replace into`creature_template` values (80289, 0, 0, 0, 0, 0, 'Quest 80261 Custom Objective', '', 0, 5, 5, 319, 319, 0, 0, 852, 84, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4276, 0, 0, 0, 0, 2, '');	

replace into `gameobject_template` values (3000266, 0, 5, 381, 'Teslinah Search: Cathedral Basement', 0, 0, 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_teslinah_search');
replace into `gameobject_template` values (3000267, 0, 5, 381, 'Teslinah Search: Cathedral Catacombs', 0, 0, 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_teslinah_search');
replace into `gameobject_template` values (3000268, 0, 5, 381, 'Teslinah Search: Trade District', 0, 0, 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_teslinah_search');
replace into `gameobject_template` values (3000269, 0, 5, 381, 'Teslinah Search: Stormwind Visitor Center', 0, 0, 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_teslinah_search');
