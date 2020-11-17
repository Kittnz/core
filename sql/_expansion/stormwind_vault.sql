
REPLACE INTO `creature_template` VALUES (80450, 0, 3387, 0, 0, 0, 'Pepin Ainsworth', '', 4660, 60, 60, 3139, 3139, 2620, 2620, 3075, 12, 19, 1, 1.14286, 0, 20, 5, 0, 0, 1, 110, 142, 0, 272, 1, 1500, 2000, 1, 4608, 0, 0, 0, 0, 8, 0, 74.448, 102.366, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 331, 0, 0, 0, 0, 0, '');

REPLACE INTO `creature_template` VALUES (80451, 0, 3108, 0, 0, 0, 'Koli Steamheart', '', 4660, 60, 60, 3139, 3139, 2620, 2620, 3075, 12, 19, 1, 1.14286, 0, 20, 5, 0, 0, 1, 110, 142, 0, 272, 1, 1500, 2000, 1, 4608, 0, 0, 0, 0, 8, 0, 74.448, 102.366, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 331, 0, 0, 0, 0, 0, '');

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

-- A Noble Fear

set @quest_entry = 80002;
set @quest_zone = 85;
set @title = 'A Noble Fear';
set @description = 'Now that you are allowed to go inside, I have a favor to ask, it’s not a personal one, think of it as serving your king more or less, a man will be inside, they called him Damien the Ripper.\n\nHe used to be a butcher, claimed every life he wanted to, now he is down there, dead, alive, I don\'t really care, I just need to bring proof of his death to the nobles, if he is long dead, bring me his ring, if he is not, take care of it.\n\n<Pepin frowns>\n\nI’m sorry, it’s an old grudge of all Stormwind against him, please do us this favor.';
set @objective = 'Kill Damien the Ripper.';
set @completetext = 'Ah yes, the mongrel is gone, this will please and reassure the nobles, thank you, $N, here have a look at these, choose whatever you\'d like.';
set @incompletetext = 'No time to waste, do it now or leave us to do our work.';
set @faction_id = 0;
set @faction_count = 0;
set @xp_or_money = 4800;
set @reward_money = 0; 
set @quest_level = 60;
set @min_level = 58;
set @questgiver_id = 80450;
set @quest_finisher = 80450;
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
nextquestinchain = @nextquestinchain, prevquestid = @prevquest
where entry = @quest_entry;

-- Alien Artifact 

set @quest_entry = 80004;
set @quest_zone = 85;
set @title = 'Alien Artifact';
set @description = '$N! Over here, let me whisper in your ear!\n\n<Koli giggled.>\n\nThere is a rumor that inside the Vault there is something very old and powerful, an artifact of sorts, carried by something we have never seen before, the Kirin Tor tried to use divination inside the Vault but the barrier still won’t let us see what it is, it certainly looks like a demon, could be a demon artifact! If that’s the case it must be destroyed, in the wrong hands it will end us.\n\n<As she said that you see her eyes wandering to the Horde representatives, and you get her point.>\n\nGrab it and bring it to me, be careful not to play with it!';
set @objective = 'Bring Alien Artifact to Koli Steamheart.';
set @completetext = 'Very strange and yet so gorgeous, enthralling even, which means it\'s a bad thing!\n\nI will take it back to Dalaran and see if we can learn more and then, destroy it, thanks for your help, I will give you one of these.';
set @incompletetext = 'Quickly now, the barrier won’t last any much longer.';
set @faction_id = 0;
set @faction_count = 0;
set @xp_or_money = 4800;
set @reward_money = 0; 
set @quest_level = 60;
set @min_level = 58;
set @questgiver_id = 80451;
set @quest_finisher = 80451;
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
nextquestinchain = @nextquestinchain, prevquestid = @prevquest
where entry = @quest_entry;

replace into gameobject_template values 
(3000226, 0, 5, 2290, 'Stormwind Vault', 0, 0, 1.4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

delete from gameobject where id = 3000226;

replace into `gameobject` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) values (3000226, 0, -8674.6, 633.4, 101, 5.37799, 0, 0, 0.437304, -0.899314, 0, 0, 100, 1, 0, 0, 0, 10);

-- Stormwind Vault Bosses

replace into creature_template values (80850, 0, 10698, 0, 0, 0, 'Black Bride', NULL, 0, 59, 59, 65804, 66094, 9476, 9476, 2832, 21, 0, 1, 1.14286, 0, 20, 5, 0, 1, 1, 354, 456, 0, 268, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 59.9488, 82.4296, 100, 6, 0, 10436, 0, 0, 0, 0, 0, 0, 0, 0, 16867, 16565, 18327, 17244, 0, 0, 1670, 2185, '', 1, 3, 0, 0, 3, 0, 0, 0, 617316315, 0, 0, 'boss_black_bride');

replace into creature_template values (80851, 0, 6044, 0, 0, 0, 'Volkan Cruelblade', NULL, 0, 62, 62, 60957, 61030, 8343, 8343, 4091, 90, 0, 1, 1.14286, 0, 20, 5, 0, 1, 1, 771, 937, 0, 284, 1, 1150, 1265, 1, 0, 0, 0, 0, 0, 0, 0, 61.732, 84.8815, 100, 3, 0, 10813, 10812, 0, 0, 5, 5, 5, 5, 248, 20603, 15398, 9256, 20741, 0, 0, 461, 2307, '', 1, 3, 0, 0, 3, 0, 0, 0, 617299931, 0, 0, 'boss_volkan_cruelblade');

replace into creature_template values (80852, 1, 11564, 0, 0, 0, 'Tham\'Grarr', '', 5739, 61, 61, 57986, 57986, 0, 0, 4091, 1374, 3, 2, 1.14286, 0, 20, 5, 0, 1, 1, 389, 502, 0, 278, 3.4, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 172.1, 240.07, 100, 7, 0, 14325, 0, 0, 0, 5, 5, 5, 5, 5, 22857, 22859, 5246, 0, 0, 0, 1291, 1690, '', 0, 3, 0, 0, 3, 14325, 0, 0, 613105627, 0, 0, 'boss_thamgrarr');

replace into creature_template values (80853, 0, 11070, 0, 0, 0, 'Aszosh Grimflame', NULL, 0, 61, 61, 59116, 60827, 7458, 7458, 3791, 21, 0, 1, 1.14286, 0, 20, 5, 0, 1, 1, 873, 1039, 0, 278, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 61.732, 84.8815, 100, 7, 0, 1853, 0, 0, 0, 0, 0, 0, 0, 0, 18702, 10212, 18116, 0, 0, 0, 503, 2517, '', 1, 3, 0, 0, 3, 1853, 0, 0, 650854363, 0, 0, 'boss_aszosh_grimflame');

replace into creature_template values (80854, 0, 3282, 0, 0, 0, 'Damian', 'The Ripper', 0, 60, 60, 47504, 47544, 0, 0, 3791, 233, 0, 1, 1.14286, 0, 20, 5, 0, 1, 1, 544, 703, 0, 272, 1, 2000, 2000, 1, 32832, 0, 0, 0, 0, 0, 0, 60.5576, 83.2667, 100, 6, 0, 10504, 0, 0, 0, 0, 0, 0, 0, 0, 11668, 11700, 18116, 0, 0, 0, 1247, 1633, '', 1, 3, 0, 0, 3, 10504, 0, 0, 617299931, 0, 0, 'boss_damian_the_ripper');

REPLACE INTO `creature_template` VALUES (80855, 0,  10925, 0, 0, 0, 'Nazorna', NULL, 0, 62, 62, 60957, 61030, 8343, 8343, 4091, 90, 0, 1, 1.14286, 0, 20, 5, 0, 1, 1, 771, 937, 0, 284, 1, 1150, 1265, 1, 0, 0, 0, 0, 0, 0, 0, 61.732, 84.8815, 100, 3, 0, 10813, 10812, 0, 0, 5, 5, 5, 5, 248, 20603, 15398, 9256, 20741, 0, 0, 461, 2307, '', 1, 3, 0, 0, 3, 0, 0, 0, 617299931, 0, 0, 'boss_nazorna');
