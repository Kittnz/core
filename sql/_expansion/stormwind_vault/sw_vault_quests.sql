

REPLACE INTO `creature_template` VALUES (80450, 0, 3387, 0, 0, 0, 'Pepin Ainsworth', 'Union of Magical Arts', 4660, 60, 60, 3139, 3139, 2620, 2620, 3075, 12, 19, 1, 1.14286, 0, 20, 5, 0, 0, 1, 110, 142, 0, 272, 1, 1500, 2000, 1, 4608, 0, 0, 0, 0, 8, 0, 74.448, 102.366, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 331, 0, 0, 0, 0, 0, '');

REPLACE INTO `creature_template` VALUES (80451, 0, 3108, 0, 0, 0, 'Koli Steamheart', 'Union of Magical Arts', 4660, 60, 60, 3139, 3139, 2620, 2620, 3075, 12, 19, 1, 1.14286, 0, 20, 5, 0, 0, 1, 110, 142, 0, 272, 1, 1500, 2000, 1, 4608, 0, 0, 0, 0, 8, 0, 74.448, 102.366, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 331, 0, 0, 0, 0, 0, '');

REPLACE INTO `creature_template` VALUES (80452, 0, 4009, 0, 0, 0, 'Zenobia Blazecaller', 'Union of Magical Arts', 4660, 60, 60, 3139, 3139, 2620, 2620, 3075, 12, 19, 1, 1.14286, 0, 20, 5, 0, 0, 1, 110, 142, 0, 272, 1, 1500, 2000, 1, 4608, 0, 0, 0, 0, 8, 0, 74.448, 102.366, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 331, 0, 0, 0, 0, 0, '');

REPLACE INTO `creature_template` VALUES (80453, 0, 12036, 0, 0, 0, 'Zanji', 'Union of Magical Arts', 4660, 60, 60, 3139, 3139, 2620, 2620, 3075, 12, 19, 1, 1.14286, 0, 20, 5, 0, 0, 1, 110, 142, 0, 272, 1, 1500, 2000, 1, 4608, 0, 0, 0, 0, 8, 0, 74.448, 102.366, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 331, 0, 0, 0, 0, 0, '');

update creature_template set faction = 35 where entry in (80450, 80451, 80452, 80453); 
update creature_template set npc_flags = 2 where entry in (80450, 80451, 80452, 80453); 

SET @gossip_menu_id = 59030;
SET @magic_number = 80450; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (ID, MaleText) values (@magic_number, 'Greetings, $C, are you here to aid us? If so I will be more than rejoiced, as soon as we stabilize the barrier or neutralize the targets, the better, you have no idea what crawls in there.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

SET @gossip_menu_id = 59031;
SET @magic_number = 80451; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (ID, MaleText) values (@magic_number, 'Hi, how are you?\n\nI’m Koli, here to make sure we deal with this, please be friendly to one another, no time to squabble!\n\nThere will be enough violence when you reach inside.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

SET @gossip_menu_id = 59032;
SET @magic_number = 80452; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (ID, MaleText) values (@magic_number, 'Come closer, $N, my sight was lacking in life and in death it is almost gone, I will not tell you how important cleansing that damned prison is, you should know that yourself, while your down there hit him a couple of times in my stead, that monster should have been buried alive long ago.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

SET @gossip_menu_id = 59033;
SET @magic_number = 80453; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (ID, MaleText) values (@magic_number, '\'Ello mon! How ya be today? Not so good eh, yea mon, Zanji knows, this prison or somethin\' be bad, be very bad, Zanji wishes he came with ya, me arcane missiles be goin\' -woosh- when I cast them at the enemy!/n/nBut ya mon, good luck, ol’ Zanji waits for ya to come back.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

-- BELOW IS CRAP:

replace into gameobject_template values 
(3000226, 0, 1, 6696, 'Portal to Stormwind Vaults', 35, 0, 0.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_portal_stormwind_vaults');

set @quest_entry = 80000;
set @quest_zone = 85;
set @title = 'My friend is my enemy but he wasn\'t always...';
set @description = 'I’ve received a letter from a long lost friend to say so... A great dark presence looms in the city of Stormwind, something very powerful and old, I have no idea how Stormwind even came across such a beast but nor do I wish to!\n\nThis place I am sending you to is very, very dangerous, yet at the same time could aid both you and me and of course, the Horde.\n\nIt is said that the mastermind behind the enchantments and seals to contain the monsters of that place was none other than Medivh, the Last Guardian, what manner of idiot would refuse a chance to see with his/her own eyes such a masterwork probably familiar to Karazhan?\n\nWhat I want you to do is jump in this here portal and find out if there is any information left about those seals, and of course aid the Alliance for the greater good if you are particularly keen to that.\n\nOh and if by any means you meet Elsharin on the way in or out tell her Gunther says hi and that he would very much enjoy meeting her again.';
set @objective = 'Take Gunther’s portal to the Stormwind Vaults.';
set @completetext = 'Do you want me to push you or something?';
set @incompletetext = '$N, it is good to have someone as competent as yourself aid us with this matter of secrecy.';
set @faction_id = 269;
set @faction_count = 250;
set @xp_or_money = 2500;
set @reward_money = 0; 
set @quest_level = 60;
set @min_level = 58;
set @questgiver_id = 1497;
set @quest_finisher = 1497;
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
set @creature_to_kill_1 = 80000;
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

update creature_template set npc_flags = 3 where entry = @questgiver_id;  
update creature_template set script_name = "npc_gunther" where entry = @questgiver_id;  
	 
update quest_template set 
rewitemid1 = @reward_item_1, rewitemcount1 = @reward_item_1_count,
rewitemid2 = @reward_item_2, rewitemcount2 = @reward_item_2_count,
rewitemid3 = @reward_item_3, rewitemcount3 = @reward_item_3_count,
rewitemid4 = @reward_item_4, rewitemcount4 = @reward_item_4_count,
RewChoiceItemId1 = @RewChoiceItemId1, RewChoiceItemCount1 = @RewChoiceItemCount1,
RewChoiceItemId2 = @RewChoiceItemId2, RewChoiceItemCount2 = @RewChoiceItemCount2,
RewChoiceItemId3 = @RewChoiceItemId3, RewChoiceItemCount3 = @RewChoiceItemCount3,
RewChoiceItemId4 = @RewChoiceItemId4, RewChoiceItemCount4 = @RewChoiceItemCount4	,
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
objectivetext1='Ask Gunther to open a portal'  
where entry = @quest_entry;	 
