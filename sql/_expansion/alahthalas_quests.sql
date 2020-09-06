
-- Assisting the Children of the Sun (Human)

replace into`creature_template` values (80229, 0, 0, 0, 0, 0, 'Quest 80250 Custom Objective', '', 0, 5, 5, 319, 319, 0, 0, 852, 84, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4276, 0, 0, 0, 0, 2, '');

replace into `creature_template` values (80230, 0, 18226, 0, 0, 0, 'High Elf Ranger', NULL, 0, 46, 47, 2038, 2062, 1587, 1640, 2278, 1576, 0, 1.1, 1.14286, 0, 20, 5, 0, 0, 1, 81, 105, 0, 212, 1, 1600, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 62.8672, 86.4424, 100, 7, 0, 2694, 2694, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 79, 108, 'EventAI', 1, 3, 0, 0, 3, 2694, 0, 0, 0, 0, 0, '');

update creature_template set movement_type = 0 where entry = 80230;
update creature set movementtype = 0 where id = 80230;
update creature_template set npc_flags = 2 where entry = 80230;
update creature_template set faction = 371 where entry = 80230;

replace into creature_model_info values (18209, 5875, 2, 2, 0, 0, 0);

update creature_template set npc_flags = 2 where entry = 1752;                
update creature_template set display_id1 = 18209 where entry = 1752;          
update creature_template set script_name = 'npc_caledra' where entry = 1752;  
update creature_template set faction = 371 where entry = 1752;

SET @gossip_menu_id = 56556;
SET @magic_number = 90372; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (ID, MaleText) values (@magic_number, 'This may not be very obvious at first glance, $R, however, I assure you, we are glad to accept the help the Alliance is giving us in such dire times.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = 1752;

set @quest_entry = 80250;
set @quest_zone = 1519;
set @title = 'Assisting the Children of the Sun';
set @description = 'Bal\'a dash, malanore, $R! I represent a group of my people who seek to restore our former glory.\n\nWe seek to settle a new home for us and your assistance would be more than welcome.\n\nWhen you have the time, journey to Stormwind and speak to Caledra Dawnbreeze in the Stormwind Keep.\n\nTrust that you will be well compensated for your aid!';
set @objective = 'Speak to Caledra Dawnbreeze in Stormwind Keep.';
set @completetext = 'Ahh, so you seek to assist us in our effort?\n\nWonderful…\n\nOur people have set up a new settlement called Alah\'thalas on the coast north of Stratholme, bordering Quel\'thalas. However, setting up a new home is difficult and we have run into our share of issues.\n\nYour help will definitely be appreciated! I shall sum up our situation for you.';
set @incompletetext = 'Yes? What can I do for you, stranger?';
set @faction_id = 269;
set @faction_count = 250;
set @xp_or_money = 650;
set @reward_money = 5; 
set @quest_level = 15;
set @min_level = 10;
set @questgiver_id = 80230;
set @quest_finisher = 1752;
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
set @creature_to_kill_1 = 80229;
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
objectivetext1='Listen to Caledra\'s Story'  
where entry = @quest_entry;	 

-- To Alah'Thalas! 

update creature_template set script_name = 'npc_elsharin' where entry = 5498; 
update creature_template set faction = 371 where entry = 549;

SET @gossip_menu_id = 56555;
SET @magic_number = 90371; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (ID, MaleText) values (@magic_number, 'Magic is always around us, $R. Learn to feel it, wield it and share it for the good of all of Azeroth. Do not make the same mistakes we\'ve all witnessed.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = 5498;

replace into gameobject_template values 
(3000220, 0, 1, 2770, 'Portal to Alah\'Thalas', 35, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_portal_alahthalas'),
(3000221, 0, 1, 6696, 'Portal to Alah\'Thalas', 35, 0, 0.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_portal_alahthalas');

set @quest_entry = 80251;
set @quest_zone = 1519;
set @title = 'To Alah’Thalas!';
set @description = 'Now that you know what we’re dealing with and our history...\n\nThe time has come to act. If you’re truly interested in helping us, then this is the way.\n\nOne of our most talented mages has established a leyline connection to Alah\'thalas.\n\nGo to the Mage Tower in the Mage District, and speak to Elsharin. She will be able to take you there, once you arrive I am sure someone will tend to you.';
set @objective = 'Speak to Elsharin, she can be found beyond the portal in the Mage district Mage Tower in Stormwind.';
set @completetext = 'Oh you\'ve come to assist Alah\'thalas!\n\nI\'m quite happy I must say, I knew Caledra could find nice people! I\'m surprised she found a $C as capable as you!\n\nThe loss of Quel\'thalas has grieved me greatly, but now I see hope, hope that our people can have a future again!\n\nTalk to me when you are ready and I will send you to Alah\'thalas!';
set @incompletetext = 'Oh my! What can I do for you, $R?';
set @faction_id = 269;
set @faction_count = 250;
set @xp_or_money = 650;
set @reward_money = 5; 
set @quest_level = 15;
set @min_level = 10;
set @questgiver_id = 1752;
set @quest_finisher = 5498;
set @nextquest = 0;
set @nextquestinchain = 0;
set @prevquest = 80250;
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

-- A Crystal Clear Task

replace into `creature_template` values (80231, 0, 16037, 0, 0, 0, 'Arcanist Anu\'delen', NULL, 0, 62, 62, 4079, 4079, 6015, 6015, 4091, 12, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 174, 224, 0, 284, 1, 1000, 2000, 8, 4608, 0, 0, 0, 0, 0, 0, 203.77, 104.278, 100, 7, 0, 0, 0, 0, 0, 10, 10, 10, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 5694, 0, 0, 0, 0, 524298, '');

update creature_template set faction = 371 where entry = 80231;

replace into creature_model_info values (16037, 5875, 2, 2, 0, 0, 0);

replace into item_template values
('80240', '0', '0', '0', 'Arcane Crystal', '', '3273', '1', '0', '1', '0', '0', '0', '-1', '-1', '0','0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0','0','0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0','0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0','0', '-1', '0','-1', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '1', NULL);

update item_template set stackable = 10 where entry = 80240;

replace into gameobject_template values 
(3000222, 0, 3, 2971, 'Arcane Crystal', 0, 0, 0.5, 57, 3000222, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

update gameobject_template set flags = 4 where entry = 3000222;
update gameobject_template set data0 = 43 where entry = 3000222;
update gameobject_template set data2 = 0 where entry = 3000222;
update gameobject_template set data3 = 1 where entry = 3000222;

replace into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`)  values (3000222, 80240, -100, 1, 1, 1, 0, 0, 10);

set @quest_entry = 80252;
set @quest_zone = 1519;
set @title = 'A Crystal Clear Task';
set @description = 'Greetings, $R. Since you\'re here this means you’ve come to help so listen up. We have a situation here...You might be aware that our building use Arcane magic to operate.\n\nWhile our central crystal is the main power source, we use smaller crystals to effectively channel the arcane energy from the nexus to the outlying Ley points of the structure.\n\nThe downside is that these crystals break down overtime, if we had found this outpost a decade later the entire Academy could have collapsed.\n\nFortunately, our predecessors built this site on a location with Arcane crystal deposits. While the automated constructs have long since stopped working or malfunctioned, the mine remains full of intact crystals.\n\nI need you to head down there and bring me some crystals... Eight should do for now.\n\n...Are you still here? Get moving.';
set @objective = 'Gather 8 Arcane Crystals from the Silver Sun Mine in Alah\'Thalas.';
set @completetext = 'Oh? That\'s a nice haul... Good to see that you can be counted on, $R!\n\nAlright, time to calibrate these crystals so they can be integrated into the network...\n\nYou are still here?... Oh right, you want a reward, yes, yes. Now move along.';
set @incompletetext = 'Have you gotten the crystals yet?\n\nI don\'t care what you have to deal with...Rats or whatever\'s down there, I expect this task to be done!';
set @faction_id = 269;
set @faction_count = 75;
set @xp_or_money = 650;
set @reward_money = 5; 
set @quest_level = 15;
set @min_level = 10;
set @questgiver_id = 80231;
set @quest_finisher = 80231;
set @nextquest = 0;
set @nextquestinchain = 0;
set @prevquest = 80251; -- Change it later to "Welcome to Alah'Thalas"
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
set @required_item_1 = 80240; 
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

-- Relics in Feralas

replace into item_template values
('80241', '0', '0', '0', 'Arcane Artifact', '', '31205', '1', '0', '1', '0', '0', '0', '-1', '-1', '0','0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0','0','0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0','0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0','0', '-1', '0','-1', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '1', NULL);

update item_template set stackable = 10 where entry = 80241;

replace into gameobject_template values 
(3000223, 0, 3, 2652, 'Arcane Artefact', 0, 0, 0.7, 57, 3000223, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

update gameobject_template set flags = 4 where entry = 3000223;
update gameobject_template set data0 = 43 where entry = 3000223;
update gameobject_template set data2 = 0 where entry = 3000223;
update gameobject_template set data3 = 1 where entry = 3000223;

replace into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`)  values (3000223, 80241, -100, 1, 1, 1, 0, 0, 10);

set @quest_entry = 80253;
set @quest_zone = 1519;
set @title = 'Relics in Feralas';
set @description = 'Well well... So far you’ve proven useful so perhaps I can give you a more important task than fetching crystals.\n\nMy people descend from the Highborne, we were once the pinnacle of Kaldorei society, ruling a great empire… While few traces remain of that here in the Eastern Kingdoms, Kalimdor is filled to the brim with ruins, ruins that have not been looted!\n\nI need you to travel to the jungle of Feralas, once home to the city state of Eldre’thalas. In the area just south of Eldre’thalas there should be some ruins...\n\nI believe the locals call it the High Wilderness. Our scouts have reported that the Ogres holding the ruins have inadvertently dug up some valuable Arcane artifacts. I want you to go down there and get me those artifacts...\n\nBefore those big oafs crush them with their feet! Now get going, quickly!';
set @objective = 'Gather 4 Arcane Artifacts from the High Wilderness in Feralas.';
set @completetext = 'What’s that you got there?...\n\nBy the Sunwell! These are perfect! Yes yes, I’m sure some of these will assist our cause! You have my thanks $R, you have my thanks indeed...\n\nHere is your little trinket, now get going!\n\nI have research to do.';
set @incompletetext = 'What are you waiting for?\n\nEvery moment you delay some fat Ogre can crush an irreplaceable relic!\n\nGet going! We’re counting on you.';
set @faction_id = 269;
set @faction_count = 250;
set @xp_or_money = 4600;
set @reward_money = 5000; 
set @quest_level = 50;
set @min_level = 40;
set @questgiver_id = 80231;
set @quest_finisher = 80231;
set @nextquest = 0;
set @nextquestinchain = 0;
set @prevquest = 80252;
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
set @required_item_1 = 80241; 
set @required_item_2 = 0;
set @required_item_3 = 0;
set @required_item_4 = 0;
set @required_item_1_count = 4;
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

-- Smashing Zul'Mashar

REPLACE INTO `creature_template` VALUES (80232, 0, 18214, 0, 0, 0, 'Ranger-Captain Nasuna Dawnbringer', NULL, 0, 60, 60, 4146, 4146, 0, 0, 3791, 1576, 0, 1, 1.14286, 0, 20, 5, 0, 4, 1, 546, 705, 0, 272, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 61.732, 84.8815, 100, 7, 0, 10824, 0, 0, 0, 0, 0, 0, 0, 0, 15547, 12057, 11978, 0, 108240, 0, 139, 187, 'EventAI', 1, 3, 0, 0, 3, 10824, 0, 0, 0, 0, 0, '');

update creature_template set movement_type = 0 where entry = 80232;
update creature set movementtype = 0 where id = 80232;
update creature_template set faction = 371 where entry = 80232;
update creature_template set rank = 1 where entry = 80232;
update creature_template set npc_flags = 2 where entry = 80232;    

replace into creature_model_info values (18214, 5875, 2, 2, 0, 0, 0);

set @quest_entry = 80254;
set @quest_zone = 1519;
set @title = 'Smashing Zul’Mashar';
set @description = 'Greetings, $N! I see that you have done quite a lot of work for Anu’delen, but now the time has come for something more serious than fetching artifacts.\n\nAlah’thalas is not far from the Scourge or the Amani, after the fall of Quel’thalas our people can no longer keep the rampaging Forest Trolls in check.\n\nOur scouts have reported that the Troll population of Zul’mashar in the Eastern Plaguelands is being converted to the Undead at a rapid pace.\n\nWe cannot have this, Forest Trolls are bad enough, we don’t need to deal with an Undead version.\n\nGo there, exterminate both the living and the dead, we can’t allow those beasts to go out of control.';
set @objective = 'Venture to Zul’mashar in the Eastern Plaguelands and kill Mossflayer Scouts, Mossflayer Shadowhunter, Infected Mossflayer, Mossflayer Canniva, five each.';
set @completetext = 'Well done friend, well done indeed… Keep this up and we will continue the work started by our ancestors.\n\nThe vile Forest Trolls and the Scourge cannot be allowed to grow in numbers, it is our duty to keep them both down and eventually exterminate them.';
set @incompletetext = 'Well then? Is the deed done?';
set @faction_id = 269;
set @faction_count = 500;
set @xp_or_money = 8000;
set @reward_money = 500; 
set @quest_level = 58;
set @min_level = 58;
set @questgiver_id = 80232;
set @quest_finisher = 80232;
set @nextquest = 0;
set @nextquestinchain = 0;
set @prevquest = 80253;
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
set @creature_to_kill_1 = 8560;
set @creature_to_kill_2 = 8561;
set @creature_to_kill_3 = 12261;
set @creature_to_kill_4 = 8562;
set @creature_to_kill_1_count = 5;
set @creature_to_kill_2_count = 5;
set @creature_to_kill_3_count = 5;
set @creature_to_kill_4_count = 5;
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

-- Securing the Supply Lines

replace into`creature_template` values (80233, 0, 0, 0, 0, 0, 'Quest 80255 Custom Objective', '', 0, 5, 5, 319, 319, 0, 0, 852, 84, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4276, 0, 0, 0, 0, 2, '');

set @quest_entry = 80255;
set @quest_zone = 1519;
set @title = 'Securing the Supply Lines';
set @description = 'Greetings $R and thank you for assisting Alah’thalas’s efforts.\n\nWe’re happy to be a part of the Alliance, unfortunately our allegiance with you has put us at odds with the Horde.\n\nEven now Horde members are raiding and pillaging our supply lines and putting our territories and Alah’thalas itself at risk!\n\nPut an end to them $R it is imperative for our survival.';
set @objective = 'Kill 8 Horde Players.';
set @completetext = 'Thank you $R, I can’t imagine that this task was easy but your help is greatly appreciated. Without vital supplies, Alah’thalas cannot become self-sufficient.';
set @incompletetext = 'How are you dealing with your mission?';
set @faction_id = 269;
set @faction_count = 250;
set @xp_or_money = 8000;
set @reward_money = 1050; 
set @quest_level = 20;
set @min_level = 20;
set @questgiver_id = 80232;
set @quest_finisher = 80232;
set @nextquest = 0;
set @nextquestinchain = 0;
set @prevquest = 80254;
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
set @creature_to_kill_1 = 80233;
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
objectivetext1='Horde players slain'  
where entry = @quest_entry;	

-- Additional NPCs:

replace into `creature_template` values (80234, 0, 15517, 16047, 15523, 15531, 'Alah\'Thalas Magister', NULL, 0, 57, 58, 5842, 6078, 5340, 5461, 1742, 103, 0, 0.888888, 1.14286, 0, 20, 5, 0, 1, 1, 460, 593, 0, 262, 1, 2000, 2000, 8, 64, 0, 0, 0, 0, 0, 0, 65.7432, 90.3969, 100, 2, 0, 7437, 0, 7437, 0, 0, 0, 85, 0, 170, 15784, 15043, 0, 0, 0, 0, 357, 472, '', 1, 1, 0, 0, 3, 7437, 0, 0, 0, 0, 0, 'generic_spell_ai');
update creature_template set faction = 371 where entry = 80234;
update creature_template set type = 7 where entry = 80234;
update creature_template set movement_type = 0 where entry = 80234;
update creature set movementtype = 0 where id = 80234;

REPLACE INTO `creature_template` VALUES (80235, 0, 16036, 16038, 16182, 16184, 'Alah\'Thalas Citizen', NULL, 0, 10, 10, 413, 413, 0, 0, 20, 80, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 9, 13, 0, 62, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 16.808, 23.111, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 524298, '');
update creature_template set faction = 371 where entry = 80235;

REPLACE INTO `creature_template` VALUES (80236, 0, 18003, 0, 0, 0, 'High Elf Child', NULL, 0, 5, 5, 64, 64, 0, 0, 20, 12, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 768, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2, '');
update creature_template set faction = 371 where entry = 80236;

REPLACE INTO `creature_template` VALUES (80237, 0, 18003, 0, 0, 0, 'Teslinah', NULL, 0, 5, 5, 64, 64, 0, 0, 20, 12, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 768, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2, '');
update creature_template set faction = 371 where entry = 80237;

REPLACE INTO `creature_template` VALUES (80238, 0, 18329, 0, 0, 0, 'Joalar Solar', 'Innkeeper', 56551, 30, 30, 1605, 1605, 0, 0, 1200, 371, 135, 1, 1.14286, 0, 20, 5, 0, 0, 1, 42, 53, 0, 122, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 45.144, 62.073, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 6736, 0, 0, 0, 0, 524298, '');
replace into creature_model_info values (18329, 5875, 2, 2, 0, 0, 0);

REPLACE INTO `creature_template` VALUES (80239, 0, 10199, 0, 0, 0, 'Tanilaeh Sunkiss', 'Teleportation', 4660, 50, 50, 3517, 3517, 2103, 2103, 2344, 12, 19, 1, 1.14286, 0, 20, 5, 0, 0, 1, 85, 109, 0, 226, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 8, 0, 66.44, 91.355, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 5498, 0, 0, 0, 0, 524298, '');
update creature_template set faction = 371 where entry = 80239;

REPLACE INTO `creature_template` VALUES (80240, 0, 10381, 0, 0, 0, 'Amanaria Sunblade', 'Silvermoon Remnant Quartermaster', 0, 11, 11, 456, 456, 0, 0, 20, 371, 16388, 1.1, 1.14286, 0, 20, 5, 0, 0, 1, 12, 14, 0, 64, 1, 2000, 2090, 1, 4864, 0, 0, 0, 0, 0, 0, 18.392, 25.289, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 524298, '');

REPLACE INTO `creature_template` VALUES (80241, 0, 10381, 0, 0, 0, 'Amanaria Sunblade', 'Silvermoon Remnant Quartermaster', 0, 11, 11, 456, 456, 0, 0, 20, 371, 16388, 1.1, 1.14286, 0, 20, 5, 0, 0, 1, 12, 14, 0, 64, 1, 2000, 2090, 1, 4864, 0, 0, 0, 0, 0, 0, 18.392, 25.289, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 524298, '');

REPLACE INTO `creature_template` VALUES (80241, 0, 18022, 0, 0, 0, 'Malfunctioning Arcane Construct', '', 0, 10, 11, 221, 246, 0, 0, 556, 14, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 17, 22, 0, 66, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 12.7424, 17.5208, 100, 9, 0, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 21, '', 1, 1, 0, 0, 3, 0, 0, 0, 8405008, 0, 0, '');
replace into creature_model_info values (18022, 5875, 2, 2, 0, 0, 0);

update creature_template set loot_id = 0 where entry = 80241;

REPLACE INTO `creature_template` VALUES (80506, 1, 18019, 0, 0, 0, 'Arcane Guardian', NULL, 0, 60, 60, 16986, 17246, 9476, 9736, 3000, 834, 0, 3.2, 1.14286, 0, 20, 5, 0, 1, 1, 348, 450, 3, 272, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 60.5576, 83.2667, 100, 4, 0, 14399, 0, 0, 0, 60, 0, 120, 60, 300, 0, 0, 0, 0, 143990, 0, 157, 786, '', 1, 3, 0, 0, 3, 0, 0, 0, 16384, 8, 32, '');
update creature_template set faction = 371 where entry = 80506;
update creature_template set scale = 1.5 where entry = 80506;
update creature_template set loot_id = 0 where entry = 80506;

replace into creature_model_info values (19024, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (19025, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18324, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18325, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18326, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18327, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18328, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18329, 5875, 2, 2, 0, 0, 0);

-- Welcome to Alah’Thalas

replace into gameobject_template values 
(3000224, 0, 1, 29624, 'Translocation Orb', 35, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_translocation_orb');

replace into gameobject_template values 
(3000225, 0, 1, 29624, 'Translocation Orb', 35, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_translocation_orb');

replace into`creature_template` values (80242, 0, 0, 0, 0, 0, 'Quest 80256 Custom Objective', '', 0, 5, 5, 319, 319, 0, 0, 852, 84, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4276, 0, 0, 0, 0, 2, '');

set @quest_entry = 80256;
set @quest_zone = 1519;
set @title = 'Welcome to Alah’Thalas';
set @description = 'I am Tanilaeh Sunkiss, Ley-technician and operator of the Portal connecting Alah’thalas to the Stormwind Mage tower, when you need to return to Stormwind, I am the one you should speak to.\n\nThis place is the Golden Dawn Institute, here we house lodgings and welcome new travelers. In front of me is the Orb of Translocation, you can use that to go down to Alah’thalas proper.\n\nArcanist Anu’delen in the tower below us has requested help with a problem in the mine. There is also  innkeeper Joalar in the institute should you wish for a meal or to attune your hearthstone here.\n\nThe large floating structure is known as the Citadel of the Sun. It houses the new Magistry, the headquarters of the Rangers, and the seat of the Council.\n\nAnyway I shouldn’t keep you anymore, go speak to the Arcanist!';
set @objective = 'Speak to Arcanist Anu’delen in the tower below the Golden Dawn Institute, use the Orb of Translocation to teleport to the land below.';
set @completetext = 'You wish to assist me?... I suppose I can spare a moment to explain what you must do.';
set @incompletetext = 'More interruptions! What is it?';
set @faction_id = 269;
set @faction_count = 25;
set @xp_or_money = 600;
set @reward_money = 100; 
set @quest_level = 10;
set @min_level = 10;
set @questgiver_id = 80239;
set @quest_finisher = 80231;
set @nextquest = 0;
set @nextquestinchain = 0;
set @prevquest = 80251;
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
set @creature_to_kill_1 = 80256;
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
objectivetext1='Use the Orb of Translocation'  
where entry = @quest_entry;	

-- Everything below this line is a draft. Do not use!


-- AIDING THE SUNBORNE // Night Elf

-- SET @quest_entry = 80000;
-- SET @quest_zone = 141;
-- SET @faction_id = 269;
-- SET @faction_count = 250;
-- SET @xp_or_money = 650;
-- SET @quest_level = 15;
-- SET @min_level = 10;
-- SET @questgiver_id = 80002;
-- SET @quest_finisher = 1752;
-- SET @nextquest = 80001;
-- SET @nextquestinchain = 80001;
-- SET @prevquest = 0;
-- SET @reward_item_1 = 0;
-- SET @reward_item_2 = 0;
-- SET @reward_item_3 = 0;
-- SET @reward_item_4 = 0;
-- SET @reward_item_1_count = 0;
-- SET @reward_item_2_count = 0;
-- SET @reward_item_3_count = 0;
-- SET @reward_item_4_count = 0;
-- SET @creature_to_kill_1 = 80003;
-- SET @creature_to_kill_2 = 0;
-- SET @creature_to_kill_3 = 0;
-- SET @creature_to_kill_4 = 0;
-- SET @creature_to_kill_1_count = 1;
-- SET @creature_to_kill_2_count = 0;
-- SET @creature_to_kill_3_count = 0;
-- SET @creature_to_kill_4_count = 0;
-- SET @required_item_1 = 0;
-- SET @required_item_2 = 0;
-- SET @required_item_3 = 0;
-- SET @required_item_4 = 0;
-- SET @required_item_1_count = 0;
-- SET @required_item_2_count = 0;
-- SET @required_item_3_count = 0;
-- SET @required_item_4_count = 0;

-- (@quest_entry, '0', '2', @quest_zone, @min_level, @quest_level, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 

-- 'Aiding the Sunborne', 

-- 'Ishnu-alah, traveller! While our people struggle with problems on our borders, they\'re not the only ones.\n\nSeven thousand years ago, my husband was exiled from Hyjal due to his use of the outlawed Arcane magics.\n\nHe and the other exiles created a new kingdom called Quel\'thalas, during the last conflict their home was entirely razed, and almost their entire people slaughtered.\n\nRecently I\'ve heard from our new allies across the sea that a group of them intends to consolidate and settle a new home... While we have our reservations about their past, they are still family and they should not bear the scorn for the actions of their ancestors. If you have the time or will, please assist them!\n\nI\'ve been told that Caledra Dawnbreeze in Stormwind Keep is the representative of this movement.\n\nOh and there\'s no need to mention me. It would appear far more amicable if the offer came from yourself.', 

-- 'Speak to Caledra Dawnbreeze in Stormwind Keep.', 

-- 'Y-You seek to assist us in our efforts? Truly?\n\nI am surprised but I would never turn away a helpful hand...I apologize for my earlier outburst, the Kaldorei in this city have not been kind to my people.\n\nPerhaps by working together we could change that in time, we are both part of the Alliance after all!\n\nOur people have setup a new settlement called \'thalas on the coast north of Stratholme, bordering Quel\'thalas.\n\nHowever, setting up a new home will be difficult and we have run into our share of issues. We\'re grateful for your help! I shall sum up our current situation for you.', 

-- 'What is it Kaldorei? I do not have the time for your lectures or scorn.', 

-- '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', @faction_id, '0', '0', '0', '0', @faction_count, '0', '0', '0', '0', '0', @xp_or_money, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', 0, 0);
      
-- update quest_template set nextquestid = @nextquest where entry = @quest_entry;
-- update quest_template set nextquestinchain = @nextquestinchain where entry = @quest_entry;
-- update quest_template set prevquestid = @prevquest where entry = @quest_entry;
-- update quest_template set ObjectiveText1 = 'Listen to Caledra\'s Story' where entry = @quest_entry;
-- update quest_template set RequiredRaces = 8 where entry = @quest_entry;
	  
-- replace into creature_questrelation (id, quest, patch_min, patch_max) values (@questgiver_id, @quest_entry,'10','10');
-- replace into creature_involvedrelation (id, quest, patch_min, patch_max) values (@quest_finisher, @quest_entry,'10','10');   

-- HELP WITH A COMPASSIONATE MATTER

-- SET @quest_entry = 80006;
-- SET @quest_zone = 1519; 
-- SET @faction_id = 269;
-- SET @faction_count = 50;
-- SET @reward_money = 500; 
-- SET @xp_or_money = 1000; 
-- SET @quest_level = 20;
-- SET @min_level = 20;
-- SET @questgiver_id = 80001; 
-- SET @quest_finisher = 80001;
-- SET @nextquest = 0;
-- SET @nextquestinchain = 0;
-- SET @prevquest = 80002;
-- SET @reward_item_1 = 0;
-- SET @reward_item_2 = 0;
-- SET @reward_item_3 = 0;
-- SET @reward_item_4 = 0;
-- SET @reward_item_1_count = 80004;
-- SET @reward_item_2_count = 0;
-- SET @reward_item_3_count = 0;
-- SET @reward_item_4_count = 0;
-- SET @creature_to_kill_1 = 0;
-- SET @creature_to_kill_2 = 0;
-- SET @creature_to_kill_3 = 0;
-- SET @creature_to_kill_4 = 0;
-- SET @creature_to_kill_1_count = 0;
-- SET @creature_to_kill_2_count = 0;
-- SET @creature_to_kill_3_count = 0;
-- SET @creature_to_kill_4_count = 0;
-- SET @required_item_1 = 0;
-- SET @required_item_2 = 0;
-- SET @required_item_3 = 0;
-- SET @required_item_4 = 0;
-- SET @required_item_1_count = 0;
-- SET @required_item_2_count = 0;
-- SET @required_item_3_count = 0;
-- SET @required_item_4_count = 0;

-- (@quest_entry, '0', '2', @quest_zone, @min_level, @quest_level, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 

-- 'Help With a Compassionate Matter', 

-- 'Hello $R I have a...troubling issue.\n\nA child was sent from Stormwind and she won’t stop babbling.\n\nQuite frankly she is interfering with my work, I was apparently the most qualified to take care of her but I’d appreciate it if you helped her out with her request since you’re a great hero and all.\n\nYes yes! I will pay you too! Please help!\n\n
-- <Anu’delen clearly appears to be at his wits end!>', 

-- 'Talk to Anu’delen again if you wish to help him out.', 

-- 'Thank the Sunwell! You have no idea how much this matters to me...\n\nPeace and quiet is important while doing this vital work.\n\nTalk to the girl and help her out, this whistle can call her.', 

-- 'So? Will you help me out?', 

-- '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', @faction_id, '0', '0', '0', '0', @faction_count, '0', '0', '0', '0', '0', @xp_or_money, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', 0, 0);

-- TESLINAH’S SEARCH

-- SET @quest_entry = 80007;
-- SET @quest_zone = 1519; 
-- SET @faction_id = 269;
-- SET @faction_count = 75;
-- SET @reward_money = 50; 
-- SET @xp_or_money = 1000; 
-- SET @quest_level = 20;
-- SET @min_level = 20;
-- SET @questgiver_id = 40020; 
-- SET @quest_finisher = 40020;
-- SET @nextquest = 0;
-- SET @nextquestinchain = 0;
-- SET @prevquest = 80006;
-- SET @reward_item_1 = 0;
-- SET @reward_item_2 = 0;
-- SET @reward_item_3 = 0;
-- SET @reward_item_4 = 0;
-- SET @reward_item_1_count = 80004;

-- 'Teslinah’s Search', 

-- 'Hello miss/mister my name is Teslinah… Please I need your help!\n\nMy mommy and I were in Farstrider Lodge after fleeing from all the bad up north...\n\nBut when we were in Stormwind we got separated! Miss Elsharin found me and took me here, believing my mommy would be here, but she’s not! Please miss/mister, will you help me?\n\nPretty please? The grumpy man over there only told me to sit in a corner and be silent, you will help me, won’t you?', 

-- 'Talk to Anu’delen again if you wish to help him out.', 

-- 'Her mom is missing you say? Let me see...\n\nThe girl’s name is Teslinah? We do have records of her and her mother’s arrival in Stormwind with the other refugees but she and her mother never showed up at the City hall for their registration.\n\nThis is troubling we can’t have people going missing in Stormwind, I will investigate, until my investigation is complete can I count on you to care for the girl?\n\nSince she was registered here in Stormwind I will issue some bonds to feed her properly.', 

-- 'Yes what can I do for you $R?', 

-- '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', @faction_id, '0', '0', '0', '0', @faction_count, '0', '0', '0', '0', '0', @xp_or_money, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', 0, 0);
    

