
replace into `gameobject_template` values 
(2010670, 0, 14, 32842, 'Prison', 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(2010671, 0, 14, 32843, 'Longhouse', 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(2010672, 0, 14, 32856, 'Priory', 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(2010673, 0, 14, 32857, 'Camp', 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(2010674, 0, 14, 32858, 'Camp2', 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),



replace into `creature_template` values (80805, 0, 18335, 18336, 18337, 0, 'Amani\'Alor Settler', NULL, 0, 10, 10, 413, 413, 0, 0, 20, 893, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 9, 13, 0, 62, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 16.808, 23.111, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 524298, '');

replace into creature_model_info values (18329, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18330, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18331, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18332, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18333, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18334, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18335, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18336, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18337, 5875, 2, 2, 0, 0, 0);

REPLACE INTO `creature_template` VALUES (80806, 0, 6436, 6437, 0, 0, 'Risen Troll', NULL, 0, 11, 12, 220, 285, 0, 0, 560, 21, 0, 0.777776, 1.14286, 0, 20, 5, 0, 0, 1, 17, 22, 0, 66, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 21.2784, 29.2578, 100, 6, 0, 1866, 1866, 0, 0, 0, 0, 0, 0, 0, 7761, 0, 0, 0, 18660, 0, 12, 20, '', 1, 1, 0, 0, 3, 0, 0, 0, 8388624, 0, 0, '');

replace into creature_model_info values (6436, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (6437, 5875, 2, 2, 0, 0, 0);

-- A Tusken Affair 

replace into `creature_template` values (80800, 0, 14760, 0, 0, 0, 'Revantusk Watcher', NULL, 0, 46, 47, 2038, 2062, 1587, 1640, 2278, 1576, 0, 1.1, 1.14286, 0, 20, 5, 0, 0, 1, 81, 105, 0, 212, 1, 1600, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 62.8672, 86.4424, 100, 7, 0, 2694, 2694, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 79, 108, 'EventAI', 1, 3, 0, 0, 3, 2694, 0, 0, 0, 0, 0, '');

update creature_template set movement_type = 0 where entry = 80800;
update creature set movementtype = 0 where id = 80800;
update creature_template set npc_flags = 2 where entry = 80800;
update creature_template set faction = 893 where entry = 80800;

replace into creature_model_info values (18209, 5875, 2, 2, 0, 0, 0);

update creature_template set npc_flags = 3 where entry = 5885;    
update creature_template set script_name = 'npc_deino' where entry = 5885;  

replace into gameobject_template values 
(3000240, 0, 1, 2770, 'Portal to Amani\'Alor', 35, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_portal_amanialor'),
(3000241, 0, 1, 6696, 'Portal to Amani\'Alor', 35, 0, 0.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_portal_amanialor');

set @quest_entry = 80300;
set @quest_zone = 331;
set @title = 'A Tusken Affair';
set @description = 'Greetings Mon!\n\nI come with a proposal for you, some of my brethren are preparing to setup a new settlement in Kalimdor.\n\nIt be far away from home but da threat of da Undead an’ da Alliance cannot be ignored so we com’ here to make a new home.\n\nHowever, we hav’ run into some difficulties recently, if you can spare da time we would appreciate some help. Talk to Deino in Orgrimmar, the Mage Trainer in da Valley of Spirits.\n\nDon\'t worry, you will be rewarded!';
set @objective = 'Talk to Deino, the Mage Trainer in the Valley of Spirits in Orgrimmar.';
set @completetext = 'Da Revantusk sent you?\n\nAh...Amani\'alor. Dey came to Kalimdor in secret a few months ago and setup da village in da hills of Stonetalon Mountains.\n\nA secret new home for the people after da struggles in the other continent dey could use da help as settling in a new land be difficult.\n\nI will teleport you there when you be ready.';
set @incompletetext = 'What brings you to Deino?';
set @faction_id = 893;
set @faction_count = 250;
set @xp_or_money = 650;
set @reward_money = 0; 
set @quest_level = 10;
set @min_level = 10;
set @questgiver_id = 80800;
set @quest_finisher = 5885;
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

-- Lighting the Pyres

replace into `creature_template` values (80801, 0, 18334, 0, 0, 0, 'Mystic Guay’Jin', NULL, 0, 62, 62, 4079, 4079, 6015, 6015, 4091, 12, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 174, 224, 0, 284, 1, 1000, 2000, 8, 4608, 0, 0, 0, 0, 0, 0, 203.77, 104.278, 100, 7, 0, 0, 0, 0, 0, 10, 10, 10, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 5694, 0, 0, 0, 0, 524298, '');

replace into`creature_template` values (80803, 0, 0, 0, 0, 0, 'Quest 80301 Custom Objective', '', 0, 5, 5, 319, 319, 0, 0, 852, 84, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4276, 0, 0, 0, 0, 2, '');

replace into `gameobject_template` values
(3000242, 0, 2, 759, 'Spirit Pyre', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_spirit_pyre');

update creature_template set movement_type = 0 where entry = 80801;
update creature set movementtype = 0 where id = 80801;
update creature_template set npc_flags = 2 where entry = 80801;
update creature_template set faction = 893 where entry = 80801;

set @quest_entry = 80301;
set @quest_zone = 331;
set @title = 'Lighting the Pyres';
set @description = 'Ah good, what a beauty ya be, $R exactly what ol’ Guay’jin be needin’ today.\n\nWhen we first came to this land, we found an ancient Zandalari tomb dating the da ancient days when the mighty Zandalari were fightin’ da Aqiri menace… Ya see mon, we settled here, and received the blessing from the spirits and the loa that make our home here...Anyways, we discovered soon that dark forces are at play here, bad mojo be hiding in da tombs. Somethin’ be disturbin’ da dead, the spirits lash out in anger. I have prepared pyres that guide the disturbed back where they rest, enter the tomb and light the pyres, bring peace to the spirits $R!\n\nYa can find the tomb in the hills behind my hut, look for a stone entrance in the cliff.';
set @objective = 'Light 3 Spirit Pyres inside the Tomb.';
set @completetext = 'Good... The spirits be restin’ for now. We might need you to be light the pyres again soon, once the fires go out. I will continue my investigation, try to find out why the spirits cannot seem to find rest ‘ere... Be it because of a battle? Or is there somethin’ nasty restin’ in this place? No idea mon, wonder why this tomb was abandoned after all… Well, that be a problem for another time, you’ve been doin’ us all a favor $R! Guay’jin be thankin’ ya.';
set @incompletetext = 'Is it done mon? Have the spirits been put to rest? As long as the spirits are restless, our dead will finding no peace here.';
set @faction_id = 893;
set @faction_count = 75;
set @xp_or_money = 650;
set @reward_money = 5; 
set @quest_level = 10;
set @min_level = 10;
set @questgiver_id = 80801;
set @quest_finisher = 80801;
set @nextquest = 0;
set @nextquestinchain = 0;
set @prevquest = 80300;
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
set @creature_to_kill_1 = 80803;
set @creature_to_kill_2 = 0; 
set @creature_to_kill_3 = 0;
set @creature_to_kill_4 = 0;
set @creature_to_kill_1_count = 3;
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
specialflags = 1
where entry = @quest_entry;	 

-- Unwanted Eyes

replace into `creature_template` values (80802, 0, 18332, 0, 0, 0, 'Warleader Wetnose', NULL, 0, 62, 62, 4079, 4079, 6015, 6015, 4091, 12, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 174, 224, 0, 284, 1, 1000, 2000, 8, 4608, 0, 0, 0, 0, 0, 0, 203.77, 104.278, 100, 7, 0, 0, 0, 0, 0, 10, 10, 10, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 5694, 0, 0, 0, 0, 524298, '');

replace into`creature_template` values (80804, 0, 0, 0, 0, 0, 'Quest 80302 Custom Objective', '', 0, 5, 5, 319, 319, 0, 0, 852, 84, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4276, 0, 0, 0, 0, 2, '');

update creature_template set movement_type = 0 where entry = 80802;
update creature set movementtype = 0 where id = 80802;
update creature_template set npc_flags = 2 where entry = 80802;
update creature_template set faction = 893 where entry = 80802;

set @quest_entry = 80302;
set @quest_zone = 331;
set @title = 'Unwanted Eyes';
set @description = 'Greetings $R, it’s good to see your willingness to aid our cause.\n\nOur journey here wasn’t easy and we lost a lot of our supplies to the raging storms, and now the Alliance is after the rest. Most of us are preoccupied with settling on this new land so you’ll be the one to get rid of them.\n\nGo out there, slaughter their heroes, prove yourself to us.';
set @objective = 'Kill 8 Alliance Players.';
set @completetext = 'Thank you $R, This should deter them for a good while, your service will be remembered.';
set @incompletetext = 'We can’t scuff at the potential of an Alliance assault backed by our elven nemesis, make their heroes an example of our power.';
set @faction_id = 893;
set @faction_count = 250;
set @xp_or_money = 8000;
set @reward_money = 1050; 
set @quest_level = 20;
set @min_level = 20;
set @questgiver_id = 80801;
set @quest_finisher = 80801;
set @nextquest = 0;
set @nextquestinchain = 0;
set @prevquest = 80300;
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
set @creature_to_kill_1 = 80804;
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
nextquestinchain = @nextquestinchain, prevquestid = @prevquest,
specialflags = 1
where entry = @quest_entry;	 

-- Raiding Quel’lithen Lodge

set @quest_entry = 80303;
set @quest_zone = 331;
set @title = 'Raiding Quel’lithen Lodge';
set @description = 'It’s good to see you again $C, you have done so much for us yet our enemy never sleeps. Our scouts have reported increased activity in the Quel’lithen Lodge in the Eastern Plaguelands and that dey preparing for an expedition. Even though we don’t know why, it’s almost certain that they’re plotting against us. This is where you come into play, go into their lodge, leave no elf alive. Our heritage wills it.';
set @objective = 'Venture to Quel’lithen Lodge in the Eastern Plaguelands and slay your enemies.';
set @completetext = 'You have proven your worth to us again. These lands will return to their true owners in time, us.\n\nThe Amani will return to power once more... As part of the new Horde!';
set @incompletetext = 'Is it done? Have our enemies been defeated?';
set @faction_id = 893;
set @faction_count = 500;
set @xp_or_money = 8000;
set @reward_money = 20500; 
set @quest_level = 55;
set @min_level = 55;
set @questgiver_id = 80802;
set @quest_finisher = 80802;
set @nextquest = 0;
set @nextquestinchain = 0;
set @prevquest = 80300;
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
set @creature_to_kill_1 = 8564;
set @creature_to_kill_2 = 8563; 
set @creature_to_kill_3 = 8565;
set @creature_to_kill_4 = 0;
set @creature_to_kill_1_count = 6;
set @creature_to_kill_2_count = 6;
set @creature_to_kill_3_count = 6;
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
specialflags = 1
where entry = @quest_entry;	 


