-- Misc. DB fixes:

delete from playercreateinfo_spell where race = 9 and class = 3;
replace into playercreateinfo_spell values (9, 3, 266, 0, 5875, 'Guns');

replace into broadcast_text (ID, MaleText) values (80601, 'Hey, if you aren\'t spending coins, you might as well get out. You\'re bothering my real customers.');

REPLACE INTO `map_template` VALUES (26, 0, 0, 3, 0, 60, 60, 0, 0, -1, 0, 0, 'Blood Ring', '');

replace into `gameobject` VALUES (3998658, 1771652, 26, 15780.8, 16746.8, 3.35, 0, 0, 0, 0.999999, -0.00130956, 0, 0, 100, 1, 0, 0, 0, 10);
replace into `gameobject` VALUES (3998657, 1771652, 26, 15688.6, 16796.4, 3.43, 0, 0, 0, 0.0049958, 0.999988, 0, 0, 100, 1, 0, 0, 0, 10);

replace into `battleground_events` (`map`, `event1`, `event2`, `description`) VALUES (26, 254, 0, 'Doors');

update quest_template set requiredraces = -1 where entry in (2382,2379,2458,2479,2480,2378,2381,2478,2460);
update quest_template set requiredraces = requiredraces + 256 where entry = 1858;

update creature_template set armor = 76, dmg_min = 2, dmg_max = 5, attack_power = 50 where entry = 80201;
update creature_template set armor = 76, dmg_min = 3, dmg_max = 7, attack_power = 50 where entry = 80507;
update creature_template set armor = 76, dmg_min = 4, dmg_max = 8, attack_power = 50 where entry = 80508;

update creature_template set scale = 0.5 where entry = 80861;
update creature_template set scale = 1.2 where entry = 80863;
update creature_template set scale = 1.2 where entry = 80871;

UPDATE creature_template SET display_id1 = 18002 WHERE entry = 80860;

delete from creature_questrelation where quest = 80305 and id = 80801;

update quest_template set requiredraces = 4 where entry in (6074, 6075, 6076);

replace into creature_questrelation (id, quest, patch_min, patch_max) values (895, 80339,'0','10'); 
replace into creature_questrelation (id, quest, patch_min, patch_max) values (5117, 80339,'0','10'); 
replace into creature_questrelation (id, quest, patch_min, patch_max) values (5515, 80339,'0','10'); 

-- Dummy NPCS for Xecc and Elodia lul

REPLACE INTO `creature_template` VALUES 
(80910, 0, 18001, 0, 0, 0, 'Xecc', '', 0, 1, 1, 64, 64, 0, 0, 0, 35, 0, 1, 1.14286, 0.8, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, ''),
(80911, 0, 18037, 0, 0, 0, 'Elodia', '', 0, 1, 1, 64, 64, 0, 0, 0, 35, 0, 1, 1.14286, 0.8, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, '');

update item_template set sheath = 0 where entry = 80106;
update item_template set sheath = 0 where entry = 80127;
 
-- AH and AA daily quest reputation values:
 
 update quest_template set rewrepvalue1 = 200 where entry in (80252, 80253, 80254, 80255, 80258);
 update quest_template set rewrepvalue1 = 100  where entry in (80250, 80251, 80256, 80257);
   
 update quest_template set rewrepvalue1 = 200 where entry in (80301, 80302, 80303, 80304, 80305);
 update quest_template set rewrepvalue1 = 100  where entry in (80300);
 
-- Misc. DB fixes:

update creature_template set scale = 1 where entry = 80402;

SET @gossip_menu_id = 59137;
SET @magic_number = 80903; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (ID, MaleText) values (@magic_number, 'I teach goblins to use both their muscles and brain.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

-- Added level 40 quest for Amani Alor.

replace into item_template values
 ('80422', '0', '0', '0', 'Juju of Kimbul', '', '32280', '1', '0', '1', '0', '0', '0', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '10', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

set @quest_entry = 80360;
set @quest_zone = 331;
set @title = 'Times Be Changing';
set @description = 'Hello, mon. You be a good asset for the trolls. Guya’jin thanks you, but she also has another mission for you. There is a tribe of former jungle trolls that are now called sand trolls. Those of Zul’Farrak, they be having a connection with Kimbul, the loa of tigers. He usually is a loa of the jungle trolls, but it’s time for the Amani to praise a new loa.\n\nYou know, this is taking time and jujus that we lack, so you will have to go and obtain some of these jujus from them. They are not worthy of his blessings anymore. They’re toying with bad mojo, resurrecting their dead! Very bad mojo, mon, but if the Amani could connect to Kimbul again, he could be a very powerful loa and one that would be helpful in the battles to come.';
set @objective = 'Obtain 10 Jujus of Kimbul and bring them to Mystic Guay’jin.';
set @completetext = 'You make sure you do that again, soon, $N. The more, the better, believe Guya’jin. Kimbul’s eyes be on you now!';
set @incompletetext = 'Having a poweful loa on our side is for the best, $N. Kimbul believes in the predators, and you are a mighty one yourself. You will be our only way to commune with him';
set @faction_id = 893;
set @faction_count = 250;
set @xp_or_money = 4600;
set @reward_money = 5000; 
set @quest_level = 40;
set @min_level = 40;
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
set @creature_to_kill_1 = 0;
set @creature_to_kill_2 = 0; 
set @creature_to_kill_3 = 0;
set @creature_to_kill_4 = 0;
set @creature_to_kill_1_count = 0;
set @creature_to_kill_2_count = 0;
set @creature_to_kill_3_count = 0;
set @creature_to_kill_4_count = 0;
set @required_item_1 = 80422; 
set @required_item_2 = 0;
set @required_item_3 = 0;
set @required_item_4 = 0;
set @required_item_1_count = 10;
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
specialflags = 4
where entry = @quest_entry;	

-- Fixed Alah'Thalas and Goblin's riding trainers:

REPLACE INTO `creature_template` VALUES (80452, 0, 16822, 0, 0, 0, 'Chaddus Suncarrier', 'Riding Trainer', 4018, 10, 10, 413, 413, 100, 100, 464, 12, 17, 1, 1.14286, 0, 20, 5, 0, 0, 1, 9, 13, 0, 62, 1, 2000, 2000, 1, 4608, 0, 0, 1, 0, 0, 1, 16.808, 23.111, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 1, 0, 0, 0, 524298, '');

UPDATE `creature_template` SET `trainer_race`='10' WHERE (`entry`='80452') AND (`patch`='0');

SET @gossip_menu_id = 59138;
SET @magic_number = 80452; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (ID, MaleText) values (@magic_number, 'I teach only elves of Silvermoon Remnants and their allies.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

REPLACE INTO `creature_template` VALUES (80136, 0, 7179, 0, 0, 0, 'Gaxx Speedcrank', 'Driving Instructor', 4018, 10, 10, 413, 413, 100, 100, 464, 12, 17, 1, 1.14286, 0, 20, 5, 0, 0, 1, 9, 13, 0, 62, 1, 2000, 2000, 1, 4608, 0, 0, 1, 0, 0, 1, 16.808, 23.111, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 1, 0, 0, 0, 524298, '');

UPDATE `creature_template` SET `trainer_race`='9', faction = 35 WHERE (`entry`='80136') AND (`patch`='0');

SET @gossip_menu_id = 59139;
SET @magic_number = 80136; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (ID, MaleText) values (@magic_number, 'I don’t just teach anyone, pal. Come back to me when we’re on better terms.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

-- Misc. DB fixes:

update quest_template set objectivetext1='Alliance players slain' where entry = 80302;

-- Fix too much experience from daily quests:

update quest_template set rewmoneymaxlevel = 540 where entry = 80252;  -- 10
update quest_template set rewmoneymaxlevel = 690 where entry = 80255;  -- 20 PvP
update quest_template set rewmoneymaxlevel = 690 where entry = 80258;  -- 20
update quest_template set rewmoneymaxlevel = 1530 where entry = 80253; -- 40
update quest_template set rewmoneymaxlevel = 3390 where entry = 80254; -- 55

update quest_template set rewmoneymaxlevel = 540 where entry = 80301;  -- 10
update quest_template set rewmoneymaxlevel = 690 where entry = 80302;  -- 20 PvP
update quest_template set rewmoneymaxlevel = 690 where entry = 80304;  -- 20
update quest_template set rewmoneymaxlevel = 1530 where entry = 80305; -- 40
update quest_template set rewmoneymaxlevel = 3390 where entry = 80303; -- 55


REPLACE INTO `item_template` VALUES (80870, 0, 4, 1, 'Kazgrim\'s Test Helmet 1', '', 50638, 0, 0, 1, 8019, 1603, 1, -1, -1, 43, 38, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

REPLACE INTO `item_template` VALUES (80871, 0, 4, 1, 'Kazgrim\'s Test Helmet 2 ', '', 50639, 0, 0, 1, 8019, 1603, 1, -1, -1, 43, 38, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

REPLACE INTO `item_template` VALUES (80872, 0, 4, 1, 'Kazgrim\'s Test Helmet 3', '', 50640, 0, 0, 1, 8019, 1603, 1, -1, -1, 43, 38, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

REPLACE INTO `item_template` VALUES (80873, 0, 4, 1, 'Kazgrim\'s Test Helmet 4', '', 40190, 0, 0, 1, 8019, 1603, 1, -1, -1, 43, 38, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

REPLACE INTO `item_template` VALUES (80874, 0, 4, 1, 'Kazgrim\'s Test Helmet 5 ', '', 40191, 0, 0, 1, 8019, 1603, 1, -1, -1, 43, 38, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

REPLACE INTO `item_template` VALUES (80875, 0, 4, 1, 'Kazgrim\'s Test Helmet 6', '', 50168, 0, 0, 1, 8019, 1603, 1, -1, -1, 43, 38, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

update creature_template set equipment_id = 80458 where entry = 80458;
replace into creature_equip_template values (80458, 0, 80876, 0, 0);

REPLACE INTO `item_template` VALUES (80876, 0, 2, 2, 'Silvermoon Bow', '', 40053, 1, 0, 1, 29, 5, 15, -1, -1, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2300, 100, 2, 2, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

-- Assign Goblin's faction IDs to where it belongs:
-- Quests and items: 1001
-- Creatures: 1682

-- Rocket cars:
update item_template set required_reputation_faction = 1001, required_reputation_rank = 4 where entry = 80460;
update item_template set required_reputation_faction = 1001, required_reputation_rank = 4 where entry = 80461;
update item_template set required_reputation_faction = 1001, required_reputation_rank = 4 where entry = 80462;

-- First quitter's team in Durotar:
update creature_template set faction = 1682, subname = '' where entry = 80121;
update creature_template set faction = 1682, subname = '' where entry = 80122;
update creature_template set faction = 1682, subname = '' where entry = 80123;
update creature_template set faction = 1682, subname = '' where entry = 80124;
update creature_template set faction = 1682, subname = '' where entry = 80125;
update creature_template set faction = 1682, subname = '' where entry = 80126;
update creature_template set faction = 1682, subname = '' where entry = 80127;
update creature_template set faction = 1682, subname = '' where entry = 80128;
update creature_template set faction = 1682 where entry = 80903;
update creature_template set faction = 1682 where entry = 80902;
update creature_template set faction = 1682 where entry = 80601;
update creature_template set faction = 1682 where entry = 80602;
update creature_template set faction = 1682 where entry = 80603;
update creature_template set faction = 1682 where entry = 80604;
update creature_template set faction = 1682 where entry = 80605;

-- Durotar quest chains:
update quest_template set rewrepfaction1 = 1001, rewrepvalue1 = 350, rewrepfaction2 = 0, rewrepvalue2 = 0 where entry = 80108;
update quest_template set rewrepfaction1 = 1001, rewrepvalue1 = 350, rewrepfaction2 = 0, rewrepvalue2 = 0 where entry = 80109;
update quest_template set rewrepfaction1 = 1001, rewrepvalue1 = 350, rewrepfaction2 = 76, rewrepvalue2 = 3000 where entry = 80110;
update quest_template set rewrepfaction1 = 1001, rewrepvalue1 = 75, rewrepfaction2 = 76, rewrepvalue2 = 75 where entry = 80320;
update quest_template set rewrepfaction1 = 1001, rewrepvalue1 = 75, rewrepfaction2 = 76, rewrepvalue2 = 75 where entry = 80321;
update quest_template set rewrepfaction1 = 1001, rewrepvalue1 = 75, rewrepfaction2 = 76, rewrepvalue2 = 75 where entry = 80322;
update quest_template set rewrepfaction1 = 1001, rewrepvalue1 = 75, rewrepfaction2 = 76, rewrepvalue2 = 75 where entry = 80323;
update quest_template set rewrepfaction1 = 1001, rewrepvalue1 = 75, rewrepfaction2 = 76, rewrepvalue2 = 75 where entry = 80330;
update quest_template set rewrepfaction1 = 1001, rewrepvalue1 = 75, rewrepfaction2 = 76, rewrepvalue2 = 75 where entry = 80331;
update quest_template set rewrepfaction1 = 1001, rewrepvalue1 = 75, rewrepfaction2 = 76, rewrepvalue2 = 75 where entry = 80332;
update quest_template set rewrepfaction1 = 1001, rewrepvalue1 = 75, rewrepfaction2 = 76, rewrepvalue2 = 75 where entry = 80333;
update quest_template set rewrepfaction1 = 1001, rewrepvalue1 = 150, rewrepfaction2 = 76, rewrepvalue2 = 75 where entry = 60121;
update quest_template set rewrepfaction1 = 1001, rewrepvalue1 = 150, rewrepfaction2 = 76, rewrepvalue2 = 75 where entry = 60122;
-- Quark's quests:
update quest_template set rewrepfaction1 = 1001, rewrepvalue1 = 75, rewrepfaction2 = 76, rewrepvalue2 = 75 where entry = 80305;
update quest_template set rewrepfaction1 = 1001, rewrepvalue1 = 150, rewrepfaction2 = 76, rewrepvalue2 = 75 where entry = 80306;
update quest_template set rewrepfaction1 = 1001, rewrepvalue1 = 150, rewrepfaction2 = 76, rewrepvalue2 = 75 where entry = 80307;
update quest_template set rewrepfaction1 = 1001, rewrepvalue1 = 150, rewrepfaction2 = 76, rewrepvalue2 = 75 where entry = 80308;
update quest_template set rewrepfaction1 = 1001, rewrepvalue1 = 150, rewrepfaction2 = 76, rewrepvalue2 = 75 where entry = 80309;
update quest_template set rewrepfaction1 = 1001, rewrepvalue1 = 150, rewrepfaction2 = 76, rewrepvalue2 = 75 where entry = 80310;

delete from quest_template where entry = 80123;

-- Misc. DB fixes:

UPDATE `item_template` SET `display_id`='31403' WHERE (`entry`='16678') AND (`patch`='3');
UPDATE `item_template` SET `display_id`='31403' WHERE (`entry`='16678') AND (`patch`='0');

UPDATE `quest_template` SET `ReqCreatureOrGOCount1`='14' WHERE (`entry`='518') AND (`patch`='0');
UPDATE `quest_template` SET `RewRepFaction1`='68', `RewRepValue1`='100' WHERE (`entry`='518') AND (`patch`='0');
-- ^ TODO: need the right values for EXP. I don't know it.

-- Exclusive group for Holy Strike quests:
UPDATE `quest_template` SET `ExclusiveGroup`='60011' WHERE (`entry`='60012') AND (`patch`='0');
UPDATE `quest_template` SET `ExclusiveGroup`='60011' WHERE (`entry`='60011') AND (`patch`='0');


-- Fix target for script to despawn ooze for quest A Little Slime Goes a Long Way Part 2.
DELETE FROM `spell_scripts` WHERE `id`=15702;
INSERT INTO `spell_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (15702, 0, 17, 11954, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty Pure Sample Jar - Create Item Filled Pure Sample Jar');
INSERT INTO `spell_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (15702, 0, 18, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty Pure Sample Jar - Despawn Creature');

update creature_template set display_id1 = 18029, script_name = 'npc_applebough', faction = 371 where entry = 80460;

update creature_template set script_name = '' where script_name = 'NULL';
update creature_template set script_name = '' where script_name = 'npc_dressing_room';
update creature_template set script_name = '' where script_name = 'npc_farm_sheep';
update creature_template set script_name = '' where script_name = 'npc_lordaeron_ike';
update creature_template set script_name = '' where script_name = 'npc_nert_joining_horde';
update creature_template set script_name = '' where script_name = 'npc_rholo';

update item_template set script_name = '' where script_name = 'item_roleplay_hub';
update item_template set script_name = '' where script_name = 'item_transmog';

delete from creature_movement where id = 81282;
delete from creature_movement where id = 81282;
delete from creature_movement where id = 81282;
delete from creature_movement where id = 81282;
delete from creature_movement where id = 81282;
delete from creature_movement where id = 81282;
delete from creature_movement where id = 81282;
delete from creature_movement where id = 81282;
delete from creature_movement where id = 81282;
delete from creature_movement where id = 81282;
delete from creature_movement where id = 81282;
delete from creature_movement where id = 81282;
delete from creature_movement where id = 81282;
delete from creature_movement where id = 81282;
delete from creature_movement where id = 81282;
delete from creature_movement where id = 81282;
delete from creature_movement where id = 81282;
delete from creature_movement where id = 81282;
delete from creature_movement where id = 81282;
delete from creature_movement where id = 81282;
delete from creature_movement where id = 81282;
delete from creature_movement where id = 81282;
delete from creature_movement where id = 81282;
delete from creature_movement where id = 81282;

update creature set spawntimesecsmax = 300 where guid = 2560814; 
update creature set spawntimesecsmax = 25000 where guid = 2560624; 
update creature set spawntimesecsmax = 300 where guid = 202776; 
update creature set spawntimesecsmax = 300 where guid = 2560816;
update creature set spawntimesecsmax = 300 where guid = 2560817; 
update creature set spawntimesecsmax = 300 where guid = 2560818;
update creature set spawntimesecsmax = 300 where guid = 2560819; 
update creature set spawntimesecsmax = 300 where guid = 2560820;
update creature set spawntimesecsmax = 300 where guid = 2560821;
update creature set spawntimesecsmax = 300 where guid = 2560822; 
update creature set spawntimesecsmax = 300 where guid = 2560823; 
update creature set spawntimesecsmax = 300 where guid = 2560824;
update creature set spawntimesecsmax = 300 where guid = 2560825; 
update creature set spawntimesecsmax = 300 where guid = 2560826; 
update creature set spawntimesecsmax = 300 where guid = 2560827; 
update creature set spawntimesecsmax = 300 where guid = 2560828; 
update creature set spawntimesecsmax = 300 where guid = 2560829; 
update creature set spawntimesecsmax = 300 where guid = 2560830; 
update creature set spawntimesecsmax = 300 where guid = 2560831; 
update creature set spawntimesecsmax = 300 where guid = 2560832; 
update creature set spawntimesecsmax = 300 where guid = 2560834;
update creature set spawntimesecsmax = 300 where guid = 2560835; 
update creature set spawntimesecsmax = 300 where guid = 2560846; 
update creature set spawntimesecsmax = 300 where guid = 2560848;
update creature set spawntimesecsmax = 300 where guid = 2560849;
update creature set spawntimesecsmax = 300 where guid = 2560850; 
update creature set spawntimesecsmax = 300 where guid = 2560851; 
update creature set spawntimesecsmax = 300 where guid = 2560853;
update creature set spawntimesecsmax = 300 where guid = 2560856;
update creature set spawntimesecsmax = 300 where guid = 2560858;
update creature set spawntimesecsmax = 300 where guid = 2560859; 
update creature set spawntimesecsmax = 300 where guid = 2560860; 
update creature set spawntimesecsmax = 300 where guid = 2560861; 

REPLACE INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (80912, 0, 11327, 0, 0, 0, 'Ho\'jo', 'Pet Collector', 0, 11, 11, 456, 456, 0, 0, 20, 1494, 16388, 1.1, 1.14286, 0, 20, 5, 0, 0, 1, 12, 14, 0, 64, 1, 2000, 2090, 1, 4864, 0, 0, 0, 0, 0, 0, 18.392, 25.289, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 524298, '');

REPLACE INTO `npc_vendor` VALUES (80912, 80878, 0, 0, 0, 0);

REPLACE INTO `item_template` VALUES (80878, 0, 15, 0, 'Amani Eagle', 'These birds often prey on turtles by dropping them from great heights to break open their shell.', 5696 , 1, 0, 1, 6000, 1500, 0, -1, -1, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 45000, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

update item_template set required_reputation_faction = 893, required_reputation_rank = 7  where entry = 80878;

update item_template set description = 'This glyph prevents you from ever receiving rested experience. Exhausted mind tends to optimize actions and practice makes perfect.', quality = 2, bonding = 1 where entry = 50521;

update item_template set quality = 3 where entry = 50010;

update creature_template set subname = '' where entry = 5498;

UPDATE `quest_template` SET `Objectives`='Speak to Elsharin, she can be in the Little Silvermoon district of Stormwind.' WHERE (`entry`='80251') AND (`patch`='0');

UPDATE `quest_template` SET `Details`='Now that you know what we’re dealing with and our history...\n\nThe time has come to act. If you’re truly interested in helping us, then this is the way.\n\nOne of our most talented mages has established a leyline connection to Alah\'thalas.\n\nGo to the Little Silvermoon district, and speak to Elsharin. She will be able to take you there, once you arrive I am sure someone will tend to you.' WHERE (`entry`='80251') AND (`patch`='0');

UPDATE `quest_template` SET `MinLevel`='8', `QuestLevel`='8' WHERE (`entry`='80315') AND (`patch`='0');

-- Update faction data:

delete from faction where id between 1 and 1005;

INSERT INTO `faction` VALUES 
(1, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'PLAYER, Human', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'PLAYER, Orc', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(3, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'PLAYER, Dwarf', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(4, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'PLAYER, Night Elf', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(5, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'PLAYER, Undead', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(6, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'PLAYER, Tauren ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Creature', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(8, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'PLAYER, Gnome', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(9, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'PLAYER, Troll', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(14, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Monster', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(15, 5875, -1, 589, 434, 0, 0, 0, 0, 0, 0, -6500, -42000, 0, 0, 0, 0, 0, 0, 0, 'Defias Brotherhood', '', '', '', '', '', '', '', 'The Defias Brotherhood is a criminal organization seeking to tear down the Stormwind ruling class and establish a new society through revolution. The Defias are not beyond working with dangerous beings to achieve their goals.', '', '', '', '', '', '', ''),
(16, 5875, -1, 1023, 0, 0, 0, 0, 0, 0, 0, -42000, 0, 0, 0, 0, 0, 0, 0, 0, 'Riverpaw Gnolls', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(17, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gnoll - Redridge', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(18, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gnoll - Shadowhide', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(19, 5875, -1, 1023, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Murloc', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20, 5875, 58, 1023, 0, 0, 0, 0, 0, 0, 0, -42000, 0, 0, 0, 0, 0, 0, 0, 0, 'Undead Scourge', '', '', '', '', '', '', '', 'The Undead Scourge is a massive army of the dead which has laid waste to the Northern Kingdoms, the Scourge seeks to consume all life on Azeroth, enslaving everyone as Undead.', '', '', '', '', '', '', ''),
(21, 5875, 1, 767, 256, 0, 0, 0, 0, 0, 0, 500, 3500, 0, 0, 0, 0, 0, 0, 169, 'Booty Bay', '', '', '', '', '', '', '', 'This booming coastal city is run by Baron Revilgaz of the Blackwater Raiders.  Mortal enemies of the Bloodsail Buccaneers and part of the Steamwheedle Cartel.', '', '', '', '', '', '', ''),
(22, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Beast - Spider', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(23, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Beast - Boar', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(24, 5875, -1, 1023, 0, 0, 0, 0, 0, 0, 0, -42000, 0, 0, 0, 0, 0, 0, 0, 0, 'Worgen', '', '', '', '', '', '', '', 'The Worgen are mysterious beings summoned from another dimension. Their intentions and purpose is unknown.', '', '', '', '', '', '', ''),
(25, 5875, -1, 1023, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kobold', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(26, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Troll, Bloodscalp', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(27, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Troll, Skullsplitter', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(28, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Prey', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(29, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Beast - Wolf', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(30, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Defias Brotherhood Traitor', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(31, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Friendly', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(32, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Trogg', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(33, 5875, -1, 589, 434, 0, 0, 0, 0, 0, 0, -42000, -6500, 0, 0, 0, 0, 0, 0, 0, 'Frostmane Tribe', '', '', '', '', '', '', '', 'The Frostmane is a tribe of Ice Trolls making a meager living within Dun Morogh at odds with the Dwarven and Gnomish inhabitants of the region.', '', '', '', '', '', '', ''),
(34, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Orc, Blackrock', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(35, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Villian', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(36, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Victim', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(37, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Beast - Bear', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(38, 5875, -1, 1023, 0, 0, 0, 0, 0, 0, 0, -42000, 0, 0, 0, 0, 0, 0, 0, 0, 'Ogre', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(39, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kurzen\'s Mercenaries', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(40, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Escortee', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(41, 5875, -1, 1023, 0, 0, 0, 0, 0, 0, 0, -42000, 0, 0, 0, 0, 0, 0, 0, 0, 'Venture Company', '', '', '', '', '', '', '', 'The Venture Company is a Goblin-run cutthroat organization that seeks to attain profit at any cost. The Venture Company will employ anyone they find useful and treat it\'s workers fairly in order to gain the greatest profit possible.', '', '', '', '', '', '', ''),
(42, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Beast - Raptor', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(43, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Basilisk', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(44, 5875, -1, 589, 434, 0, 0, 0, 0, 0, 0, -6500, -42000, 0, 0, 0, 0, 0, 0, 0, 'Brood of Ysera', '', '', '', '', '', '', '', 'The children of the Dreamer, Aspect of Nature, Ysera. They have dealings with Druids and rule over the Emerald Dream, they prefer not to interfere in mortal affairs.', '', '', '', '', '', '', ''),
(45, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Lost Ones', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(46, 5875, 29, 1023, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, ' Blacksmithing - Armorsmithing', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(47, 5875, 20, 73, 434, 4, 0, 0, 0, 0, 0, 3100, -42000, 4000, 0, 17, 2, 17, 0, 469, 'Ironforge', '', '', '', '', '', '', '', 'This Alliance capital is the pride of the Dun Morogh dwarves.  Home to King Magni.', '', '', '', '', '', '', ''),
(48, 5875, -1, 1023, 0, 0, 0, 0, 0, 0, 0, -42000, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Iron Dwarves', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(49, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Human, Night Watch', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(50, 5875, -1, 589, 434, 0, 0, 0, 0, 0, 0, -6500, -42000, 0, 0, 0, 0, 0, 0, 0, 'Brood of Alexstrasza', '', '', '', '', '', '', '', 'The descendants and children of the Red aspect of life! The Red Dragonflight has suffered much during the Second war, and has a great disdain for the Horde.', '', '', '', '', '', '', ''),
(51, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gnoll - Mosshide', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(52, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Orc, Dragonmaw', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(53, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gnome - Leper', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(54, 5875, 18, 13, 434, 64, 0, 0, 0, 0, 0, 3100, -42000, 4000, 0, 17, 2, 17, 0, 469, 'Gnomeregan Exiles', '', '', '', '', '', '', '', 'The former denizens of Gnomeregan, now living in exile in Ironforge and in league with the Alliance.', '', '', '', '', '', '', ''),
(55, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Leopard', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(56, 5875, 63, 1023, 0, 0, 0, 0, 0, 0, 0, -42000, 0, 0, 0, 2, 0, 0, 0, 0, 'Scarlet Crusade', '', '', '', '', '', '', '', 'The Scarlet Crusade is a religious organization dedicated to the eradication of the undead. They seldom trust outsiders, believing them to carry the Plague of Undeath.', '', '', '', '', '', '', ''),
(57, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gnoll - Rothide', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(58, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Beast - Gorilla', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(59, 5875, 4, 1023, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 'Thorium Brotherhood', '', '', '', '', '', '', '', 'The dwarves of the Thorium Brotherhood epitomize excellence in craftsmanship and are bent on unlocking the secrets of Blackrock Mountain.', '', '', '', '', '', '', ''),
(60, 5875, -1, 1023, 0, 0, 0, 0, 0, 0, 0, -42000, 0, 0, 0, 0, 0, 0, 0, 0, 'Naga', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(61, 5875, 60, 589, 434, 0, 0, 0, 0, 0, 0, 3300, -42000, 0, 0, 16, 2, 0, 0, 0, 'Dalaran', '', '', '', '', '', '', '', 'The once mighty Magical citystate of Dalaran was destroyed by the Burning Legion! Today it\'s surviving inhabitants struggle to rebuild their home and defend their territories from the Horde and Scourge!', '', '', '', '', '', '', ''),
(62, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Forlorn Spirit', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(63, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkhowl', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(64, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Grell', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(65, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Furbolg', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(66, 5875, -1, 434, 589, 0, 0, 0, 0, 0, 0, 3500, -42000, 0, 0, 0, 0, 0, 0, 0, 'Horde Civilians', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(67, 5875, 12, 434, 589, 0, 0, 0, 0, 0, 0, 3500, -42000, 0, 0, 17, 2, 0, 0, 0, 'Horde', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(68, 5875, 17, 162, 589, 16, 0, 0, 0, 0, 0, 500, -42000, 4000, 0, 17, 2, 17, 0, 67, 'Undercity', '', '', '', '', '', '', '', 'Led by Sylvanas Windrunner, the Forsaken have joined a tenuous alliance with the Horde and established this capital in the vast depths under the Ruins of Lordaeron.', '', '', '', '', '', '', ''),
(69, 5875, 21, 69, 434, 8, 0, 0, 0, 0, 0, 3100, -42000, 4000, 0, 17, 2, 17, 0, 469, 'Darnassus', '', '', '', '', '', '', '', 'The Alliance capital is populated by Night Elves and is located in the island of Teldrassil.  Ruled by the Priestess of the Moon, Tyrande Whisperwind.', '', '', '', '', '', '', ''),
(70, 5875, 6, 1023, 0, 0, 0, 0, 0, 0, 0, -10000, 0, 0, 0, 2, 0, 0, 0, 0, 'Syndicate', '', '', '', '', '', '', '', 'A primarily human criminal organization that operates mostly out of the Alterac Mountains and Hillsbrad Foothills.', '', '', '', '', '', '', ''),
(71, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hillsbrad Militia', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(72, 5875, 19, 76, 434, 1, 0, 0, 0, 0, 0, 3100, -42000, 4000, 0, 17, 2, 17, 0, 469, 'Stormwind', '', '', '', '', '', '', '', 'One of the last bastions of human power, this Alliance capital is ruled by the child king, Anduin Wrynn.', '', '', '', '', '', '', ''),
(73, 5875, 59, 1023, 0, 0, 0, 0, 0, 0, 0, -42000, 0, 0, 0, 0, 0, 0, 0, 0, 'Burning Legion', '', '', '', '', '', '', '', 'An army of Demons bent on conquering, corrupting, defiling and destroying every world in the universe. The Burning Legion is the enemy of most mortal races.', '', '', '', '', '', '', ''),
(74, 5875, -1, 1023, 0, 0, 0, 0, 0, 0, 0, -42000, 0, 0, 0, 0, 0, 0, 0, 0, 'Elemental', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(75, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Spirit', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(76, 5875, 14, 160, 589, 2, 16, 0, 0, 0, 0, 3100, -42000, 4000, 500, 17, 2, 17, 17, 67, 'Orgrimmar', '', '', '', '', '', '', '', 'Founded by Thrall, this Horde capital city is home to many of the proud orc clans of Durotar.', '', '', '', '', '', '', ''),
(77, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Treasure', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(78, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gnoll - Mudsnout', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(79, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'HIllsbrad, Southshore Mayor', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(80, 5875, -1, 1023, 0, 0, 0, 0, 0, 0, 0, -42000, 0, 0, 0, 0, 0, 0, 0, 0, 'Brood of Deathwing', '', '', '', '', '', '', '', 'The children of what was once Neltharion, the Earth Warder. The Black Dragonflight only seeks to consume and corrupt the world while serving their insane dark master.', '', '', '', '', '', '', ''),
(81, 5875, 16, 130, 589, 16, 32, 0, 0, 0, 0, 3100, -42000, 500, 4000, 17, 2, 17, 17, 67, 'Thunder Bluff', '', '', '', '', '', '', '', 'Cairne Bloodhoof leads his people, the Proud Tauren, from this mighty Horde capital.', '', '', '', '', '', '', ''),
(82, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Troll, Witherbark', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(83, 5875, 23, 1023, 0, 0, 0, 0, 0, 0, 0, 2999, 0, 0, 0, 4, 0, 0, 0, 0, ' Leatherworking - Elemental', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(84, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Quilboar, Razormane', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(85, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Quilboar, Bristleback', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(86, 5875, 22, 1023, 0, 0, 0, 0, 0, 0, 0, 2999, 0, 0, 0, 4, 0, 0, 0, 0, ' Leatherworking - Dragonscale', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(87, 5875, 0, 1023, 0, 0, 0, 0, 0, 0, 0, -6500, 0, 0, 0, 2, 0, 0, 0, 0, 'Bloodsail Buccaneers', '', '', '', '', '', '', '', 'These bloodthirsty corsairs are the bane of many a merchant in the high seas.  Sworn enemies of Booty Bay.', '', '', '', '', '', '', ''),
(88, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Blackfathom', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(89, 5875, -1, 1023, 0, 0, 0, 0, 0, 0, 0, -42000, 0, 0, 0, 0, 0, 0, 0, 0, 'Makrura', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(90, 5875, -1, 589, 434, 0, 0, 0, 0, 0, 0, -6500, -42000, 0, 0, 0, 0, 0, 0, 0, 'Kolkar Clan Centaur', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(91, 5875, -1, 1023, 0, 0, 0, 0, 0, 0, 0, -6500, 0, 0, 0, 0, 0, 0, 0, 0, 'Galak Clan Centaur', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(92, 5875, 2, 1023, 0, 0, 0, 0, 0, 0, 0, 2000, 0, 0, 0, 2, 0, 0, 0, 0, 'Gelkis Clan Centaur', '', '', '', '', '', '', '', 'These centaur have made their home in the southern region of Desolace.  Mortal enemies of the Magram Centaur.', '', '', '', '', '', '', ''),
(93, 5875, 3, 1023, 0, 0, 0, 0, 0, 0, 0, 2000, 0, 0, 0, 2, 0, 0, 0, 0, 'Magram Clan Centaur', '', '', '', '', '', '', '', 'These centaur have made their home in the eastern region of Desolace.  Mortal enemies of the Gelkis Centaur.', '', '', '', '', '', '', ''),
(94, 5875, -1, 1023, 0, 0, 0, 0, 0, 0, 0, -42000, 0, 0, 0, 0, 0, 0, 0, 0, 'Maraudine Clan Centaur', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(108, 5875, 56, 589, 434, 0, 0, 0, 0, 0, 0, 3300, -8500, 0, 0, 16, 2, 0, 0, 0, 'Theramore', '', '', '', '', '', '', '', 'Theramore Isle was settled by Jaina Proudmoore and the refugees who fled from Lordaeron and it\'s neighboring kingdoms. Following the Battle at Mount Hyjal, Theramore has maintained cordial ties with the Horde and sought peace. ', '', '', '', '', '', '', ''),
(109, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Quilboar, Razorfen', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(110, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Quilboar, Razormane 2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(111, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Quilboar, Deathshead', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(128, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Enemy', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(148, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ambient', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(168, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Nethergarde Caravan', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(169, 5875, 10, 767, 256, 0, 0, 0, 0, 0, 0, 500, 3500, 0, 0, 8, 0, 0, 0, 0, 'Steamwheedle Cartel', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(189, 5875, -1, 589, 434, 0, 0, 0, 0, 0, 0, 3300, -42000, 0, 0, 0, 0, 0, 0, 0, 'Alliance Civilians', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(209, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Nethergarde', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(229, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Wailing Caverns', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(249, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Silithid', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(269, 5875, 57, 77, 434, 512, 0, 0, 0, 0, 0, 3300, -42000, 5500, 0, 17, 2, 17, 0, 469, 'Silvermoon Remnant', '', '', '', '', '', '', '', 'The remaining High elves are reeling from the loss of their homeland and the Sunwell. They have rallied behind the Alliance as their people struggle to survive.', '', '', '', '', '', '', ''),
(270, 5875, 51, 1023, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 'Zandalar Tribe', '', '', '', '', '', '', '', 'These trolls have come to Yojamba Isle in an effort to recruit help against the resurrected Blood God and his Atal\'ai Priests in Zul\'Gurub.', '', '', '', '', '', '', ''),
(289, 5875, 30, 1023, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, ' Blacksmithing - Weaponsmithing', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(309, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Scorpid', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(310, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Beast - Bat', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(311, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Titan', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(329, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Taskmaster Fizzule', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(349, 5875, 5, 1023, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ravenholdt', '', '', '', '', '', '', '', 'This guild of thieves and assassins welcomes only those of extraordinary prowess into its fold.  Sworn rivals of the Syndicate.', '', '', '', '', '', '', ''),
(369, 5875, 7, 767, 256, 0, 0, 0, 0, 0, 0, 500, 3500, 0, 0, 0, 0, 0, 0, 169, 'Gadgetzan', '', '', '', '', '', '', '', 'Capital of the Steamwheedle Cartel and home to goblinhood\'s finest engineers, alchemists and merchants.', '', '', '', '', '', '', ''),
(389, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gnomeregan Bug', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(409, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Harpy', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(429, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Burning Blade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(449, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shadowsilk Poacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(450, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Searing Spider', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(469, 5875, 11, 589, 434, 0, 0, 0, 0, 0, 0, 3300, -42000, 0, 0, 17, 2, 0, 0, 0, 'Alliance', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(470, 5875, 9, 767, 256, 0, 0, 0, 0, 0, 0, 500, 3500, 0, 0, 0, 0, 0, 0, 169, 'Ratchet', '', '', '', '', '', '', '', 'Part of the Steamwheedle Cartel, this goblin city provides a neutral haven for those that wish to trade goods and services in the Barrens.', '', '', '', '', '', '', ''),
(471, 5875, 8, 73, 434, 4, 0, 0, 0, 0, 0, 150, -42000, 500, 0, 16, 2, 0, 0, 0, 'Wildhammer Clan', '', '', '', '', '', '', '', 'Though not a part of the Alliance, the dwarves of Aerie Peak have opened their doors to it and hold the Horde as enemies.', '', '', '', '', '', '', ''),
(489, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Goblin, Dark Iron Bar Patron', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(509, 5875, 53, 589, 434, 0, 0, 0, 0, 0, 0, 0, -42000, 0, 0, 16, 2, 0, 0, 891, 'The League of Arathor', '', '', '', '', '', '', '', 'The League of Arathor seeks to reclaim lost land of Arathi Basin for their benefactors in Stormwind.', '', '', '', '', '', '', ''),
(510, 5875, 52, 434, 589, 0, 0, 0, 0, 0, 0, 0, -42000, 0, 0, 16, 2, 0, 0, 892, 'The Defilers', '', '', '', '', '', '', '', 'The Defilers seek to claim Arathi Basin\'s valuable resources for the Horde.', '', '', '', '', '', '', ''),
(511, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Giant', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(529, 5875, 13, 1023, 0, 0, 0, 0, 0, 0, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 'Argent Dawn', '', '', '', '', '', '', '', 'An organization focused on protecting Azeroth from the threat of the Scourge.  Strongholds of the Argent Dawn can be found in the Eastern and Western Plaguelands.', '', '', '', '', '', '', ''),
(530, 5875, 15, 34, 589, 16, 128, 0, 0, 0, 0, 3100, -42000, 500, 4000, 17, 2, 17, 17, 67, 'Darkspear Trolls', '', '', '', '', '', '', '', 'This tribe of exiled trolls has joined forces with Thrall and the Horde.  They now call Durotar their home, which they share with their orc allies.', '', '', '', '', '', '', ''),
(531, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dragonflight, Bronze', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(532, 5875, -1, 1023, 0, 0, 0, 0, 0, 0, 0, -6500, 0, 0, 0, 0, 0, 0, 0, 0, 'Brood of Malygos', '', '', '', '', '', '', '', 'The Blue Dragonflight are protectors of Magic, and guard it\'s domain. The brood suffered much during the War of the Ancients and is diminished to this day.', '', '', '', '', '', '', ''),
(549, 5875, 24, 1023, 0, 0, 0, 0, 0, 0, 0, 2999, 0, 0, 0, 4, 0, 0, 0, 0, ' Leatherworking - Tribal', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(550, 5875, 26, 1023, 0, 0, 0, 0, 0, 0, 0, 2999, 0, 0, 0, 4, 0, 0, 0, 0, ' Engineering - Goblin', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(551, 5875, 25, 1023, 0, 0, 0, 0, 0, 0, 0, 2999, 0, 0, 0, 4, 0, 0, 0, 0, ' Engineering - Gnome', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(569, 5875, 33, 1023, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, ' Blacksmithing - Hammersmithing', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(570, 5875, 31, 1023, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, ' Blacksmithing - Axesmithing', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(571, 5875, 32, 1023, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, ' Blacksmithing - Swordsmithing', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(572, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Troll, Vilebranch', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(573, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Southsea Freebooters', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(574, 5875, -1, 1023, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 'Caer Darrow', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(575, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Furbolg, Uncorrupted', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(576, 5875, 35, 1023, 0, 0, 0, 0, 0, 0, 0, -3500, 0, 0, 0, 2, 0, 0, 0, 0, 'Timbermaw Hold', '', '', '', '', '', '', '', 'As the last uncorrupted furbolg tribe, the Timbermaw seek to preserve their spiritual ways and end the suffering of their brethren.', '', '', '', '', '', '', ''),
(577, 5875, 28, 1023, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 169, 'Everlook', '', '', '', '', '', '', '', 'This trading post is run by the goblins of the Steamwheedle Cartel and it sits in the crossroads of Winterspring\'s main trade routes.', '', '', '', '', '', '', ''),
(589, 5875, 27, 434, 589, 0, 0, 0, 0, 0, 0, -42000, 0, 0, 0, 0, 0, 0, 0, 0, 'Wintersaber Trainers', '', '', '', '', '', '', '', 'This small group of reclusive night elves raises and trains wintersabers in the Winterspring area.', '', '', '', '', '', '', ''),
(609, 5875, 36, 1023, 40, 0, 0, 479, 1024, 0, 0, 0, 2000, 0, 0, 2, 0, 0, 0, 0, 'Cenarion Circle', '', '', '', '', '', '', '', 'The druids of Cenarion Circle are guardians of nature and make their home in tranquil Moonglade.', '', '', '', '', '', '', ''),
(629, 5875, 37, 1023, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 'Shatterspear Trolls', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(630, 5875, 38, 434, 589, 0, 0, 0, 0, 0, 0, 0, -42000, 0, 0, 0, 0, 0, 0, 0, 'Ravasaur Trainers', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(649, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Majordomo Executus', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(669, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Beast - Carrion Bird', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(670, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Beast - Cat', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(671, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Beast - Crab', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(672, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Beast - Crocilisk', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(673, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Beast - Hyena', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(674, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Beast - Owl', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(675, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Beast - Scorpid', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(676, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Beast - Tallstrider', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(677, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Beast - Turtle', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(678, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Beast - Wind Serpent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(679, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Training Dummy', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(689, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dragonflight, Black - Bait', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(709, 5875, 39, 1023, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 'Battleground Neutral', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(729, 5875, 41, 434, 589, 0, 0, 0, 0, 0, 0, 0, -42000, 0, 0, 16, 2, 0, 0, 892, 'Frostwolf Clan', '', '', '', '', '', '', '', 'The Frostwolf Clan seeks to drive out the dwarves of the Stormpike Expedition from Alterac Valley.', '', '', '', '', '', '', ''),
(730, 5875, 40, 589, 434, 0, 0, 0, 0, 0, 0, 0, -42000, 0, 0, 16, 2, 0, 0, 891, 'Stormpike Guard', '', '', '', '', '', '', '', 'The Stormpike Dwarves have set up residence in Alterac Valley, where they\'re locked in battle with the Frostwolf Orcs.', '', '', '', '', '', '', ''),
(749, 5875, 42, 1023, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hydraxian Waterlords', '', '', '', '', '', '', '', 'These elementals have made their home on the islands east of Azshara.  Sworn enemies of the armies of Ragnaros.', '', '', '', '', '', '', ''),
(750, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sulfuron Firelords', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(769, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gizlock\'s Dummy', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(770, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gizlock\'s Charm', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(771, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gizlock', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(789, 5875, 43, 1023, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 'Moro\'gai', '', '', '', '', '', '', '', 'This faction of Draenei from across the Dark portal is trying to make a new home in the Swamps of Sorrow while beset by strife and the madness of their kin.', '', '', '', '', '', '', ''),
(790, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Spirit Guide - Alliance', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(809, 5875, 44, 1023, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 'Shen\'dralar', '', '', '', '', '', '', '', 'A remnant of the once powerful elves living in Dire Maul, yet still wise and knowledgeable about great secrets. ', '', '', '', '', '', '', ''),
(829, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ogre (Captain Kromcrush)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(849, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Spirit Guide - Horde', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(869, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jaedenar', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(889, 5875, 46, 434, 589, 0, 0, 0, 0, 0, 0, 0, -42000, 0, 0, 16, 2, 0, 0, 892, 'Warsong Outriders', '', '', '', '', '', '', '', 'Fierce orcs of the Warsong Clan, locked in battle against the Silverwing Sentinels in Warsong Gulch.', '', '', '', '', '', '', ''),
(890, 5875, 45, 589, 434, 0, 0, 0, 0, 0, 0, 0, -42000, 0, 0, 16, 2, 0, 0, 891, 'Silverwing Sentinels', '', '', '', '', '', '', '', 'Staunch defenders of Ashenvale, locked in battle against the Warsong Outriders in Warsong Gulch.', '', '', '', '', '', '', ''),
(891, 5875, 47, 589, 434, 0, 0, 0, 0, 0, 0, 0, -42000, 0, 0, 24, 2, 0, 0, 0, 'Alliance Forces', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(892, 5875, 48, 434, 589, 0, 0, 0, 0, 0, 0, 0, -42000, 0, 0, 24, 2, 0, 0, 0, 'Horde Forces', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(893, 5875, 55, 434, 589, 0, 0, 0, 0, 0, 0, 0, -42000, 0, 0, 16, 2, 0, 0, 67, 'Revantusk Trolls', '', '', '', '', '', '', '', 'The Revantusk Trolls are a tribe of Forest Trolls in the Hinterlands seeking closer ties to the Horde.', '', '', '', '', '', '', ''),
(909, 5875, 50, 1023, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 'Darkmoon Faire', '', '', '', '', '', '', '', 'A traveling fair that showcases the weird and the extraordinary.  Often spotted in Elwynn Forest and Mulgore.', '', '', '', '', '', '', ''),
(910, 5875, 54, 1023, 0, 0, 0, 0, 0, 0, 0, -42000, 0, 0, 0, 0, 0, 0, 0, 0, 'Brood of Nozdormu', '', '', '', '', '', '', '', 'The descendants of the Bronze Dragonflight are the guardians of time and care little for the mortal races.', '', '', '', '', '', '', ''),
(912, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Might of Kalimdor', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(914, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'PLAYER, High Elf', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(915, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Armies of C\'Thun', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(916, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Silithid Attackers', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(917, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Ironforge Brigade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(918, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'RC Enemies', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(919, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'RC Objects', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(920, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(921, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Blue', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(927, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'PLAYER, Goblin', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(928, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Scourge Invaders', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(931, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Test Faction (not a real faction)', '', '', '', '', '', '', '', 'This faction only exists to test the editing of faction names and descriptions...', '', '', '', '', '', '', ''),
(950, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'ToWoW - Flag', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(951, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'ToWoW - Flag Trigger Alliance (DND)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(954, 5875, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'ToWoW - Flag Trigger Horde (DND)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(999, 5875, 61, 1023, 0, 0, 0, 0, 0, 0, 0, -3500, 0, 0, 0, 2, 0, 0, 0, 0, 'Illidari', '', '', '', '', '', '', '', 'The Illidari are the followers of Illidan Stormrage, consisting of Naga, Blood Elves, Rogue demons, and Draenei who struggle to claim Outland from the Legion.', '', '', '', '', '', '', ''),
(1000, 5875, 62, 1023, 0, 0, 0, 0, 0, 0, 0, -3500, 0, 0, 0, 2, 0, 0, 0, 0, 'Wardens', '', '', '', '', '', '', '', 'The Wardens led by Maiev Shadowsong have sworn to capture or execute Illidan Stormrage at any cost.', '', '', '', '', '', '', ''),
(1001, 5875, 34, 168, 589, 256, 0, 0, 0, 0, 0, 0, -42000, 3500, 0, 17, 2, 17, 0, 67, 'Durotar Labor Union.', '', '', '', '', '', '', '', 'The Durotar Labor Union are a group of Goblins that joined the Horde after defecting from the Venture Co. They\'re eager to prove themselves as capable members of the Horde.', '', '', '', '', '', '', '');

delete from faction_template where id between 1 and 1690;

INSERT INTO `faction_template` VALUES 
(1, 5875, 1, 72, 3, 2, 12, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 5875, 2, 72, 5, 4, 10, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 5875, 3, 72, 3, 2, 12, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 5875, 4, 72, 3, 2, 12, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 5875, 5, 72, 5, 4, 10, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 5875, 6, 72, 5, 4, 10, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 5875, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 5875, 40, 2056, 3, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11, 5875, 72, 2081, 3, 2, 12, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 5875, 72, 0, 2, 2, 4, 0, 0, 0, 0, 72, 0, 0, 0),
(14, 5875, 14, 0, 8, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(15, 5875, 7, 1, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0),
(16, 5875, 14, 1, 8, 0, 1, 0, 0, 0, 0, 14, 0, 0, 0),
(17, 5875, 15, 1, 8, 0, 1, 0, 0, 0, 0, 15, 0, 0, 0),
(18, 5875, 19, 1, 8, 0, 1, 0, 0, 0, 0, 19, 0, 0, 0),
(19, 5875, 17, 1, 8, 0, 1, 0, 0, 0, 0, 17, 0, 0, 0),
(20, 5875, 16, 1, 8, 0, 1, 0, 0, 0, 0, 16, 0, 0, 0),
(21, 5875, 20, 1, 8, 0, 1, 0, 0, 0, 0, 20, 0, 0, 0),
(22, 5875, 22, 0, 8, 0, 1, 0, 0, 0, 0, 22, 0, 0, 0),
(23, 5875, 54, 2049, 2, 2, 4, 0, 0, 0, 0, 0, 0, 0, 0),
(24, 5875, 24, 1, 8, 0, 1, 0, 0, 0, 0, 24, 0, 0, 0),
(25, 5875, 25, 0, 8, 0, 0, 0, 0, 0, 0, 25, 0, 0, 0),
(26, 5875, 25, 1, 8, 0, 1, 0, 0, 0, 0, 25, 0, 0, 0),
(27, 5875, 15, 1, 8, 0, 1, 1, 0, 0, 0, 15, 0, 0, 0),
(28, 5875, 26, 1, 8, 0, 1, 0, 0, 0, 0, 26, 0, 0, 0),
(29, 5875, 76, 0, 4, 4, 2, 0, 0, 0, 0, 0, 0, 0, 0),
(30, 5875, 27, 1, 8, 0, 1, 0, 0, 0, 0, 27, 0, 0, 0),
(31, 5875, 28, 1024, 0, 0, 0, 0, 0, 0, 0, 148, 28, 0, 0),
(32, 5875, 29, 16, 0, 0, 0, 28, 0, 0, 0, 0, 0, 0, 0),
(33, 5875, 40, 2056, 5, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(34, 5875, 15, 1, 8, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0),
(35, 5875, 31, 0, 0, 1, 0, 0, 0, 0, 0, 31, 0, 0, 0),
(36, 5875, 32, 1025, 0, 0, 0, 0, 0, 0, 0, 32, 0, 0, 0),
(37, 5875, 33, 1, 8, 0, 1, 0, 0, 0, 0, 33, 0, 0, 0),
(38, 5875, 29, 17, 8, 0, 1, 28, 0, 0, 0, 29, 0, 0, 0),
(39, 5875, 18, 1, 8, 0, 1, 0, 0, 0, 0, 18, 0, 0, 0),
(40, 5875, 34, 1, 8, 0, 1, 0, 0, 0, 0, 34, 0, 0, 0),
(41, 5875, 35, 49, 8, 0, 1, 36, 0, 0, 0, 35, 0, 0, 0),
(42, 5875, 36, 9, 1, 1, 0, 0, 0, 0, 0, 36, 0, 0, 0),
(43, 5875, 35, 33, 8, 0, 0, 36, 0, 0, 0, 35, 0, 0, 0),
(44, 5875, 37, 1, 8, 0, 1, 0, 0, 0, 0, 37, 0, 0, 0),
(45, 5875, 38, 1, 8, 0, 1, 0, 0, 0, 0, 38, 0, 0, 0),
(46, 5875, 39, 1, 8, 0, 1, 0, 0, 0, 0, 39, 0, 0, 0),
(47, 5875, 41, 1, 8, 0, 1, 0, 0, 0, 0, 41, 0, 0, 0),
(48, 5875, 42, 1, 8, 0, 1, 0, 0, 0, 0, 42, 0, 0, 0),
(49, 5875, 43, 0, 8, 0, 1, 0, 0, 0, 0, 43, 0, 0, 0),
(50, 5875, 44, 1, 8, 0, 1, 0, 0, 0, 0, 44, 0, 0, 0),
(51, 5875, 45, 1, 8, 0, 1, 46, 40, 0, 0, 45, 0, 0, 0),
(52, 5875, 769, 8, 8, 0, 0, 770, 0, 0, 0, 0, 0, 0, 0),
(53, 5875, 49, 0, 2, 2, 12, 0, 0, 0, 0, 49, 0, 0, 0),
(54, 5875, 48, 1, 8, 0, 1, 0, 0, 0, 0, 48, 0, 0, 0),
(55, 5875, 47, 0, 2, 2, 4, 0, 0, 0, 0, 47, 0, 0, 0),
(56, 5875, 49, 33, 2, 2, 12, 0, 0, 0, 0, 49, 0, 0, 0),
(57, 5875, 47, 2081, 3, 2, 12, 0, 0, 0, 0, 0, 0, 0, 0),
(58, 5875, 7, 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(59, 5875, 32, 1, 8, 0, 1, 0, 0, 0, 0, 32, 0, 0, 0),
(60, 5875, 50, 1, 8, 0, 1, 0, 0, 0, 0, 50, 0, 0, 0),
(61, 5875, 51, 1, 8, 0, 1, 0, 0, 0, 0, 51, 0, 0, 0),
(62, 5875, 52, 1, 8, 0, 1, 0, 0, 0, 0, 52, 0, 0, 0),
(63, 5875, 53, 1, 8, 0, 1, 0, 0, 0, 0, 53, 0, 0, 0),
(64, 5875, 54, 1, 2, 2, 4, 0, 0, 0, 0, 0, 0, 0, 0),
(65, 5875, 76, 1, 0, 0, 0, 45, 0, 0, 0, 76, 0, 0, 0),
(66, 5875, 55, 17, 8, 0, 1, 28, 0, 0, 0, 55, 0, 0, 0),
(67, 5875, 56, 1, 8, 0, 1, 0, 0, 0, 0, 56, 0, 0, 0),
(68, 5875, 68, 0, 4, 4, 2, 0, 0, 0, 0, 0, 0, 0, 0),
(69, 5875, 470, 0, 0, 0, 0, 0, 0, 0, 0, 470, 0, 0, 0),
(70, 5875, 57, 1, 8, 0, 1, 0, 0, 0, 0, 57, 0, 0, 0),
(71, 5875, 68, 2081, 5, 4, 10, 0, 0, 0, 0, 0, 0, 0, 0),
(72, 5875, 58, 1, 8, 0, 1, 0, 0, 0, 0, 58, 0, 0, 0),
(73, 5875, 669, 1, 8, 0, 1, 0, 0, 0, 0, 669, 0, 0, 0),
(74, 5875, 60, 1, 8, 0, 1, 289, 0, 0, 0, 60, 0, 0, 0),
(76, 5875, 61, 33, 0, 2, 4, 0, 0, 0, 0, 61, 0, 0, 0),
(77, 5875, 62, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(78, 5875, 63, 0, 8, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(79, 5875, 69, 2081, 3, 2, 12, 0, 0, 0, 0, 0, 0, 0, 0),
(80, 5875, 69, 0, 2, 2, 4, 0, 0, 0, 0, 69, 0, 0, 0),
(81, 5875, 64, 1025, 8, 0, 1, 0, 0, 0, 0, 64, 0, 0, 0),
(82, 5875, 65, 1, 8, 0, 1, 0, 0, 0, 0, 65, 0, 0, 0),
(83, 5875, 66, 33, 4, 4, 2, 0, 0, 0, 0, 0, 0, 0, 0),
(84, 5875, 189, 33, 2, 2, 4, 0, 0, 0, 0, 0, 0, 0, 0),
(85, 5875, 76, 2081, 5, 4, 10, 0, 0, 0, 0, 0, 0, 0, 0),
(86, 5875, 770, 64, 0, 1, 0, 769, 0, 0, 0, 771, 0, 0, 0),
(87, 5875, 70, 1, 8, 0, 1, 0, 0, 0, 0, 70, 0, 0, 0),
(88, 5875, 71, 33, 2, 2, 4, 0, 0, 0, 0, 71, 0, 0, 0),
(89, 5875, 56, 33, 8, 0, 1, 20, 0, 0, 0, 56, 0, 0, 0),
(90, 5875, 73, 1, 8, 0, 1, 0, 0, 0, 0, 73, 0, 0, 0),
(91, 5875, 74, 0, 8, 0, 1, 0, 0, 0, 0, 74, 0, 0, 0),
(92, 5875, 75, 0, 8, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(93, 5875, 14, 8, 8, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(94, 5875, 77, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(95, 5875, 78, 1, 8, 0, 1, 0, 0, 0, 0, 78, 0, 0, 0),
(96, 5875, 79, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(97, 5875, 70, 64, 8, 0, 0, 79, 0, 0, 0, 70, 0, 0, 0),
(98, 5875, 68, 8, 4, 4, 10, 0, 0, 0, 0, 0, 0, 0, 0),
(99, 5875, 36, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(100, 5875, 77, 32, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0),
(101, 5875, 77, 0, 0, 8, 4, 0, 0, 0, 0, 0, 0, 0, 0),
(102, 5875, 77, 0, 0, 8, 2, 0, 0, 0, 0, 0, 0, 0, 0),
(103, 5875, 80, 65, 8, 0, 1, 689, 0, 0, 0, 80, 0, 0, 0),
(104, 5875, 81, 0, 4, 4, 2, 0, 0, 0, 0, 0, 0, 0, 0),
(105, 5875, 81, 2081, 5, 4, 10, 0, 0, 0, 0, 0, 0, 0, 0),
(106, 5875, 66, 33, 4, 4, 10, 0, 0, 0, 0, 0, 0, 0, 0),
(107, 5875, 33, 0, 8, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(108, 5875, 70, 64, 0, 0, 0, 79, 0, 0, 0, 70, 0, 0, 0),
(109, 5875, 110, 1, 8, 0, 1, 0, 0, 0, 0, 110, 111, 0, 0),
(110, 5875, 110, 33, 8, 0, 1, 85, 0, 0, 0, 110, 0, 0, 0),
(111, 5875, 85, 1, 8, 0, 1, 0, 0, 0, 0, 85, 111, 0, 0),
(112, 5875, 85, 33, 8, 0, 1, 110, 0, 0, 0, 85, 111, 0, 0),
(113, 5875, 40, 2056, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(114, 5875, 77, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(115, 5875, 8, 72, 3, 2, 12, 0, 0, 0, 0, 0, 0, 0, 0),
(116, 5875, 9, 72, 5, 4, 10, 0, 0, 0, 0, 0, 0, 0, 0),
(118, 5875, 68, 33, 4, 4, 2, 0, 0, 0, 0, 0, 0, 0, 0),
(119, 5875, 87, 1, 8, 0, 1, 0, 0, 0, 0, 87, 0, 0, 0),
(120, 5875, 21, 0, 0, 0, 0, 0, 0, 0, 0, 21, 0, 0, 0),
(121, 5875, 21, 6177, 1, 0, 8, 0, 0, 0, 0, 21, 0, 0, 0),
(122, 5875, 47, 33, 2, 2, 4, 0, 0, 0, 0, 0, 0, 0, 0),
(123, 5875, 72, 33, 2, 2, 4, 0, 0, 0, 0, 0, 0, 0, 0),
(124, 5875, 69, 33, 2, 2, 4, 0, 0, 0, 0, 0, 0, 0, 0),
(125, 5875, 76, 33, 4, 4, 2, 0, 0, 0, 0, 0, 0, 0, 0),
(126, 5875, 530, 0, 4, 4, 2, 0, 0, 0, 0, 0, 0, 0, 0),
(127, 5875, 35, 32, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(128, 5875, 88, 1, 8, 0, 1, 0, 0, 0, 0, 88, 0, 0, 0),
(129, 5875, 89, 1, 8, 0, 1, 0, 0, 0, 0, 89, 0, 0, 0),
(130, 5875, 90, 1, 8, 0, 1, 0, 0, 0, 0, 90, 0, 0, 0),
(131, 5875, 91, 1, 8, 0, 1, 0, 0, 0, 0, 91, 0, 0, 0),
(132, 5875, 92, 1, 8, 0, 1, 0, 0, 0, 0, 92, 0, 0, 0),
(133, 5875, 93, 1, 8, 0, 1, 0, 0, 0, 0, 93, 0, 0, 0),
(134, 5875, 94, 1, 8, 0, 1, 0, 0, 0, 0, 94, 0, 0, 0),
(148, 5875, 14, 0, 8, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(149, 5875, 108, 1025, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(150, 5875, 108, 2081, 3, 2, 12, 0, 0, 0, 0, 0, 0, 0, 0),
(151, 5875, 108, 0, 2, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0),
(152, 5875, 109, 1, 8, 0, 1, 0, 0, 0, 0, 109, 111, 0, 0),
(153, 5875, 109, 0, 8, 0, 0, 0, 0, 0, 0, 109, 111, 0, 0),
(154, 5875, 111, 1, 8, 0, 1, 0, 0, 0, 0, 109, 85, 111, 110),
(168, 5875, 128, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(188, 5875, 148, 1025, 0, 8, 0, 0, 0, 0, 0, 148, 28, 0, 0),
(189, 5875, 7, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(190, 5875, 148, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(208, 5875, 168, 5, 2, 2, 0, 0, 0, 0, 0, 168, 0, 0, 0),
(209, 5875, 168, 2, 2, 2, 0, 0, 0, 0, 0, 168, 0, 0, 0),
(210, 5875, 189, 33, 2, 2, 12, 0, 0, 0, 0, 189, 0, 0, 0),
(230, 5875, 573, 1, 8, 0, 1, 0, 0, 0, 0, 573, 0, 0, 0),
(231, 5875, 40, 2120, 3, 2, 8, 0, 0, 0, 0, 0, 0, 0, 0),
(232, 5875, 40, 2120, 5, 4, 8, 0, 0, 0, 0, 0, 0, 0, 0),
(233, 5875, 20, 33, 8, 0, 1, 68, 0, 0, 0, 20, 0, 0, 0),
(250, 5875, 40, 2120, 1, 1, 8, 0, 0, 0, 0, 0, 0, 0, 0),
(270, 5875, 229, 1, 8, 0, 1, 0, 0, 0, 0, 229, 0, 0, 0),
(290, 5875, 40, 8, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(310, 5875, 249, 1, 8, 0, 1, 0, 0, 0, 0, 249, 0, 0, 0),
(311, 5875, 249, 1, 8, 0, 0, 0, 0, 0, 0, 249, 0, 0, 0),
(312, 5875, 22, 1, 8, 0, 1, 0, 0, 0, 0, 22, 0, 0, 0),
(330, 5875, 229, 1, 8, 0, 0, 0, 0, 0, 0, 229, 0, 0, 0),
(350, 5875, 88, 0, 8, 0, 0, 0, 0, 0, 0, 88, 0, 0, 0),
(370, 5875, 915, 33, 8, 8, 1, 912, 0, 0, 0, 915, 0, 0, 0),
(371, 5875, 269, 0, 2, 2, 4, 0, 0, 0, 0, 269, 0, 0, 0),
(390, 5875, 21, 33, 0, 0, 0, 60, 0, 0, 0, 21, 0, 0, 0),
(410, 5875, 43, 1, 8, 0, 1, 0, 0, 0, 0, 43, 0, 0, 0),
(411, 5875, 310, 1, 8, 0, 1, 0, 0, 0, 0, 310, 0, 0, 0),
(412, 5875, 510, 33, 4, 4, 2, 509, 0, 0, 0, 510, 0, 0, 0),
(413, 5875, 309, 1, 8, 0, 1, 0, 0, 0, 0, 309, 0, 0, 0),
(414, 5875, 576, 1, 8, 0, 1, 65, 0, 0, 0, 576, 0, 0, 0),
(415, 5875, 311, 1, 8, 0, 1, 0, 0, 0, 0, 311, 0, 0, 0),
(416, 5875, 311, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(430, 5875, 329, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(450, 5875, 229, 33, 8, 0, 1, 40, 0, 0, 0, 229, 0, 0, 0),
(470, 5875, 311, 0, 8, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(471, 5875, 349, 1, 0, 0, 0, 0, 0, 0, 0, 349, 0, 0, 0),
(472, 5875, 70, 65, 8, 0, 1, 349, 0, 0, 0, 70, 0, 0, 0),
(473, 5875, 349, 65, 0, 0, 0, 70, 0, 0, 0, 349, 0, 0, 0),
(474, 5875, 369, 0, 0, 0, 0, 0, 0, 0, 0, 369, 0, 0, 0),
(475, 5875, 369, 6177, 1, 0, 8, 0, 0, 0, 0, 369, 0, 0, 0),
(494, 5875, 389, 32, 8, 0, 1, 53, 0, 0, 0, 389, 0, 0, 0),
(495, 5875, 40, 2121, 1, 1, 8, 0, 0, 0, 0, 40, 0, 0, 0),
(514, 5875, 409, 1, 8, 0, 1, 0, 0, 0, 0, 409, 0, 0, 0),
(534, 5875, 189, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(554, 5875, 429, 1, 8, 0, 7, 0, 0, 0, 0, 429, 0, 0, 0),
(574, 5875, 449, 33, 8, 0, 1, 450, 0, 0, 0, 449, 0, 0, 0),
(575, 5875, 450, 0, 8, 0, 1, 0, 0, 0, 0, 450, 0, 0, 0),
(594, 5875, 32, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(614, 5875, 36, 9, 0, 1, 0, 0, 0, 0, 0, 36, 0, 0, 0),
(634, 5875, 14, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(635, 5875, 609, 1, 0, 0, 0, 0, 0, 0, 0, 609, 0, 0, 0),
(636, 5875, 576, 0, 8, 0, 1, 65, 0, 0, 0, 576, 0, 0, 0),
(637, 5875, 470, 6177, 1, 0, 8, 0, 0, 0, 0, 470, 0, 0, 0),
(654, 5875, 82, 1, 8, 0, 1, 0, 0, 0, 0, 82, 0, 0, 0),
(655, 5875, 90, 9, 8, 0, 5, 0, 0, 0, 0, 90, 0, 0, 0),
(674, 5875, 48, 1, 0, 0, 0, 0, 0, 0, 0, 48, 0, 0, 0),
(694, 5875, 471, 0, 2, 2, 4, 0, 0, 0, 0, 471, 0, 0, 0),
(695, 5875, 749, 1, 0, 0, 0, 0, 0, 0, 0, 749, 0, 0, 0),
(714, 5875, 66, 33, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(734, 5875, 48, 1, 1, 1, 0, 0, 0, 0, 0, 48, 0, 0, 0),
(735, 5875, 489, 0, 1, 1, 0, 0, 0, 0, 0, 489, 0, 0, 0),
(736, 5875, 489, 1, 8, 0, 1, 0, 0, 0, 0, 489, 0, 0, 0),
(754, 5875, 48, 65, 8, 0, 1, 34, 0, 0, 0, 48, 0, 0, 0),
(774, 5875, 40, 8, 3, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(775, 5875, 40, 8, 5, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(776, 5875, 910, 0, 0, 0, 0, 249, 80, 0, 0, 910, 531, 0, 0),
(777, 5875, 912, 33, 1, 1, 0, 915, 0, 0, 0, 912, 0, 0, 0),
(778, 5875, 511, 1, 8, 0, 1, 0, 0, 0, 0, 511, 0, 0, 0),
(794, 5875, 529, 0, 0, 0, 0, 0, 0, 0, 0, 529, 0, 0, 0),
(795, 5875, 572, 1, 8, 0, 1, 0, 0, 0, 0, 572, 0, 0, 0),
(814, 5875, 529, 1, 0, 0, 0, 0, 0, 0, 0, 529, 0, 0, 0),
(834, 5875, 74, 1, 8, 0, 1, 0, 0, 0, 0, 74, 0, 0, 0),
(854, 5875, 577, 6177, 1, 0, 8, 0, 0, 0, 0, 577, 0, 0, 0),
(855, 5875, 577, 0, 0, 0, 0, 0, 0, 0, 0, 577, 0, 0, 0),
(874, 5875, 589, 33, 2, 2, 4, 0, 0, 0, 0, 0, 0, 0, 0),
(875, 5875, 54, 0, 2, 2, 4, 0, 0, 0, 0, 0, 0, 0, 0),
(876, 5875, 530, 33, 4, 4, 2, 0, 0, 0, 0, 0, 0, 0, 0),
(877, 5875, 530, 2081, 5, 4, 10, 0, 0, 0, 0, 0, 0, 0, 0),
(894, 5875, 108, 0, 2, 2, 4, 0, 0, 0, 0, 108, 0, 0, 0),
(914, 5875, 679, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(934, 5875, 575, 0, 8, 0, 1, 0, 0, 0, 0, 575, 0, 0, 0),
(954, 5875, 73, 0, 8, 0, 1, 0, 0, 0, 0, 73, 0, 0, 0),
(974, 5875, 20, 0, 8, 0, 1, 0, 0, 0, 0, 20, 0, 0, 0),
(994, 5875, 609, 0, 0, 0, 0, 0, 0, 0, 0, 609, 0, 0, 0),
(995, 5875, 81, 33, 4, 4, 2, 0, 0, 0, 0, 0, 0, 0, 0),
(996, 5875, 609, 33, 1, 0, 8, 249, 0, 0, 0, 609, 0, 0, 0),
(1014, 5875, 629, 1, 0, 0, 0, 0, 0, 0, 0, 629, 0, 0, 0),
(1015, 5875, 629, 0, 0, 0, 0, 0, 0, 0, 0, 629, 0, 0, 0),
(1034, 5875, 66, 0, 4, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0),
(1054, 5875, 471, 2081, 3, 2, 12, 0, 0, 0, 0, 471, 0, 0, 0),
(1055, 5875, 471, 33, 2, 2, 4, 0, 0, 0, 0, 471, 0, 0, 0),
(1074, 5875, 76, 1, 4, 4, 2, 0, 0, 0, 0, 0, 0, 0, 0),
(1075, 5875, 108, 1, 2, 2, 4, 0, 0, 0, 0, 108, 0, 0, 0),
(1076, 5875, 69, 1, 2, 2, 4, 0, 0, 0, 0, 69, 0, 0, 0),
(1077, 5875, 108, 33, 2, 2, 4, 0, 0, 0, 0, 108, 0, 0, 0),
(1078, 5875, 72, 1, 2, 2, 4, 0, 0, 0, 0, 72, 0, 0, 0),
(1080, 5875, 31, 8, 0, 1, 0, 74, 0, 0, 0, 31, 649, 0, 0),
(1081, 5875, 74, 1, 8, 0, 1, 649, 0, 0, 0, 74, 0, 0, 0),
(1094, 5875, 23, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1095, 5875, 679, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1096, 5875, 108, 2080, 3, 2, 12, 679, 0, 0, 0, 0, 0, 0, 0),
(1097, 5875, 69, 32, 2, 2, 4, 0, 0, 0, 0, 0, 0, 0, 0),
(1114, 5875, 689, 64, 8, 0, 1, 80, 0, 0, 0, 689, 0, 0, 0),
(1134, 5875, 68, 2080, 5, 4, 10, 679, 0, 0, 0, 0, 0, 0, 0),
(1154, 5875, 68, 2080, 5, 4, 10, 679, 0, 0, 0, 0, 0, 0, 0),
(1174, 5875, 76, 73, 4, 4, 2, 0, 0, 0, 0, 0, 0, 0, 0),
(1194, 5875, 709, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1214, 5875, 729, 33, 5, 4, 10, 730, 0, 0, 0, 729, 0, 0, 0),
(1215, 5875, 729, 1, 4, 4, 2, 730, 0, 0, 0, 729, 0, 0, 0),
(1216, 5875, 730, 33, 3, 2, 12, 729, 0, 0, 0, 730, 0, 0, 0),
(1217, 5875, 730, 1, 2, 2, 4, 729, 0, 0, 0, 730, 0, 0, 0),
(1234, 5875, 750, 33, 8, 0, 1, 749, 0, 0, 0, 750, 0, 0, 0),
(1235, 5875, 750, 1, 8, 0, 1, 749, 0, 0, 0, 750, 0, 0, 0),
(1236, 5875, 750, 0, 8, 0, 1, 749, 0, 0, 0, 750, 0, 0, 0),
(1254, 5875, 609, 4129, 1, 0, 8, 0, 0, 0, 0, 609, 0, 0, 0),
(1274, 5875, 7, 33, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0),
(1275, 5875, 7, 33, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0),
(1294, 5875, 771, 0, 8, 0, 1, 770, 0, 0, 0, 0, 0, 0, 0),
(1314, 5875, 66, 65, 4, 4, 2, 0, 0, 0, 0, 0, 0, 0, 0),
(1315, 5875, 189, 65, 2, 2, 4, 0, 0, 0, 0, 0, 0, 0, 0),
(1334, 5875, 730, 0, 2, 2, 4, 729, 0, 0, 0, 730, 0, 0, 0),
(1335, 5875, 729, 0, 4, 4, 2, 730, 0, 0, 0, 729, 0, 0, 0),
(1354, 5875, 809, 0, 0, 0, 0, 0, 0, 0, 0, 809, 0, 0, 0),
(1355, 5875, 809, 1, 0, 0, 0, 0, 0, 0, 0, 809, 0, 0, 0),
(1374, 5875, 829, 1, 8, 0, 1, 0, 0, 0, 0, 38, 0, 0, 0),
(1375, 5875, 77, 32, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0),
(1394, 5875, 80, 33, 8, 0, 1, 689, 47, 0, 0, 80, 0, 0, 0),
(1395, 5875, 916, 1, 8, 0, 1, 0, 0, 0, 0, 916, 0, 0, 0),
(1414, 5875, 790, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0),
(1415, 5875, 849, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0),
(1434, 5875, 869, 1, 8, 0, 1, 0, 0, 0, 0, 869, 0, 0, 0),
(1454, 5875, 36, 9, 0, 1, 0, 35, 0, 0, 0, 36, 0, 0, 0),
(1474, 5875, 59, 1, 0, 0, 0, 0, 0, 0, 0, 59, 0, 0, 0),
(1475, 5875, 59, 0, 0, 0, 0, 0, 0, 0, 0, 59, 0, 0, 0),
(1494, 5875, 893, 0, 4, 4, 2, 0, 0, 0, 0, 893, 0, 0, 0),
(1495, 5875, 893, 2081, 5, 4, 10, 0, 0, 0, 0, 893, 0, 0, 0),
(1496, 5875, 893, 33, 4, 4, 2, 0, 0, 0, 0, 893, 0, 0, 0),
(1514, 5875, 890, 33, 2, 2, 4, 0, 0, 0, 0, 0, 0, 0, 0),
(1515, 5875, 889, 33, 4, 4, 2, 0, 0, 0, 0, 0, 0, 0, 0),
(1534, 5875, 730, 33, 2, 2, 4, 729, 0, 0, 0, 730, 0, 0, 0),
(1554, 5875, 729, 2120, 5, 4, 8, 0, 0, 0, 0, 0, 0, 0, 0),
(1555, 5875, 909, 0, 0, 0, 0, 0, 0, 0, 0, 909, 0, 0, 0),
(1574, 5875, 270, 0, 0, 0, 0, 0, 0, 0, 0, 270, 0, 0, 0),
(1575, 5875, 72, 33, 3, 2, 12, 0, 0, 0, 0, 0, 0, 0, 0),
(1576, 5875, 269, 33, 2, 2, 4, 0, 0, 0, 0, 269, 0, 0, 0),
(1577, 5875, 509, 33, 2, 2, 4, 510, 0, 0, 0, 509, 0, 0, 0),
(1594, 5875, 69, 33, 3, 2, 12, 0, 0, 0, 0, 0, 0, 0, 0),
(1595, 5875, 76, 33, 5, 4, 10, 0, 0, 0, 0, 0, 0, 0, 0),
(1596, 5875, 730, 33, 3, 2, 12, 729, 0, 0, 0, 730, 0, 0, 0),
(1597, 5875, 729, 33, 5, 4, 10, 730, 0, 0, 0, 729, 0, 0, 0),
(1598, 5875, 510, 0, 4, 4, 2, 509, 0, 0, 0, 510, 0, 0, 0),
(1599, 5875, 509, 0, 2, 2, 4, 510, 0, 0, 0, 509, 0, 0, 0),
(1600, 5875, 69, 33, 2, 2, 8, 0, 0, 0, 0, 0, 0, 0, 0),
(1601, 5875, 910, 33, 0, 0, 0, 249, 80, 0, 0, 910, 531, 0, 0),
(1605, 5875, 531, 0, 0, 0, 1, 0, 0, 0, 0, 531, 0, 0, 0),
(1606, 5875, 7, 0, 0, 4, 2, 7, 0, 0, 0, 0, 0, 0, 0),
(1607, 5875, 7, 0, 0, 4, 2, 7, 0, 0, 0, 0, 0, 0, 0),
(1608, 5875, 609, 73, 1, 0, 8, 249, 0, 0, 0, 609, 0, 0, 0),
(1609, 5875, 927, 72, 5, 4, 10, 0, 0, 0, 0, 0, 0, 0, 0),
(1610, 5875, 914, 72, 3, 2, 12, 0, 0, 0, 0, 0, 0, 0, 0),
(1611, 5875, 47, 65, 3, 2, 4, 916, 0, 0, 0, 0, 0, 0, 0),
(1612, 5875, 76, 65, 5, 4, 2, 916, 0, 0, 0, 0, 0, 0, 0),
(1613, 5875, 912, 0, 1, 1, 0, 915, 0, 0, 0, 912, 0, 0, 0),
(1614, 5875, 14, 1, 8, 0, 1, 0, 0, 0, 0, 14, 0, 0, 0),
(1615, 5875, 169, 6177, 1, 0, 8, 0, 0, 0, 0, 21, 577, 369, 0),
(1616, 5875, 919, 0, 0, 15, 0, 918, 0, 0, 0, 919, 0, 0, 0),
(1617, 5875, 918, 64, 0, 0, 1, 919, 0, 0, 0, 918, 0, 0, 0),
(1618, 5875, 47, 33, 2, 2, 12, 0, 0, 0, 0, 0, 0, 0, 0),
(1619, 5875, 76, 33, 4, 4, 10, 0, 0, 0, 0, 0, 0, 0, 0),
(1620, 5875, 128, 0, 0, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0),
(1621, 5875, 921, 0, 2, 0, 4, 920, 0, 0, 0, 0, 0, 0, 0),
(1622, 5875, 920, 0, 2, 0, 4, 921, 0, 0, 0, 0, 0, 0, 0),
(1624, 5875, 529, 2115, 1, 0, 8, 0, 0, 0, 0, 529, 0, 0, 0),
(1625, 5875, 529, 4129, 1, 0, 8, 0, 0, 0, 0, 529, 0, 0, 0),
(1626, 5875, 20, 33, 8, 0, 1, 679, 0, 0, 0, 20, 0, 0, 0),
(1630, 5875, 928, 37, 0, 0, 15, 14, 148, 0, 0, 928, 20, 0, 0),
(1634, 5875, 928, 33, 8, 0, 0, 68, 72, 0, 0, 928, 20, 0, 0),
(1635, 5875, 169, 6161, 0, 0, 0, 891, 0, 0, 0, 169, 892, 0, 0),
(1641, 5875, 889, 1, 4, 4, 2, 0, 0, 0, 0, 0, 0, 0, 0),
(1642, 5875, 890, 1, 2, 2, 4, 0, 0, 0, 0, 0, 0, 0, 0),
(1673, 5875, 950, 0, 0, 0, 0, 951, 0, 0, 0, 950, 0, 0, 0),
(1676, 5875, 954, 0, 0, 15, 0, 0, 0, 0, 0, 954, 0, 0, 0),
(1677, 5875, 951, 0, 0, 15, 0, 0, 0, 0, 0, 954, 0, 0, 0),
(1678, 5875, 789, 1, 0, 0, 0, 0, 0, 0, 0, 789, 0, 0, 0),
(1679, 5875, 630, 1, 0, 0, 0, 0, 0, 0, 0, 630, 0, 0, 0),
(1680, 5875, 999, 1, 0, 0, 0, 0, 0, 0, 0, 999, 0, 0, 0),
(1681, 5875, 1000, 1, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0),
(1682, 5875, 1001, 1, 0, 0, 0, 0, 0, 0, 0, 1001, 0, 0, 0);

update quest_template set zoneorsort = -241 where entry in (80252, 80253, 80255, 80301, 80302, 80303, 80304, 80258, 80360);

UPDATE `creature_template` SET `ai_name`='0' WHERE (`entry`='80457') AND (`patch`='0');
UPDATE `creature_template` SET `gossip_menu_id`='0' WHERE (`entry`='80457') AND (`patch`='0');

update gameobject_template set type = 5 where entry = 2010653;

-- Tamamo's new wurst objects:

REPLACE INTO `gameobject_template` VALUES 

(3000290, 0, 14, 32867, 'darkstatue', 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(3000291, 0, 14, 32868, 'ND_Necropolis01', 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(3000292, 0, 5, 32869, 'g_thanksgivingtable_01', 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(3000293, 0, 14, 32870, 'PVP_Lordaeron_Arena', 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(3000294, 0, 14, 32871, 'PVP_Ogre_Arena01', 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(3000295, 0, 5, 32871, 'PVP_Ogre_Arena01', 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(3000296, 0, 5, 32872, 'PBaby_He', 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(3000297, 0, 5, 32873, 'PVP_Lordaeron_Door', 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(3000298, 0, 5, 32874, 'PVP_Ogre_Door_Front', 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(3000299, 0, 5, 32875, 'PVP_Ogre_Door_Enterior', 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(3000300, 0, 5, 32876, 'BE_Tent_Red_01', 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(3000300, 0, 5, 32877, 'BE_Tent_Red_02', 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(3000301, 0, 5, 32878, 'LD_FoodCart01', 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(3000302, 0, 5, 32879, 'LD_FoodCart02', 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(3000303, 0, 14, 32880, 'Sherpa_Bedroll_0', 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(3000304, 0, 14, 32881, 'Sherpa_Bedroll_2', 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(3000305, 0, 14, 32882, 'Goblin_Oildrum_01', 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(3000306, 0, 14, 32883, 'Goblin_Tub_02', 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(3000307, 0, 14, 32884, 'Goblin_Kezan_BeachChair_01', 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(3000308, 0, 14, 32885, '\Goblin_Kezan_BeachChair_02', 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(3000309, 0, 14, 32886, 'Goblin_Kezan_PoolPony_Floating_Blue_01', 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(3000310, 0, 14, 32887, 'Goblin_Kezan_PoolPony_Floating_Green_01', 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(3000311, 0, 14, 32888, 'Goblin_Kezan_PoolPony_Floating_Orange_01', 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(3000312, 0, 14, 32889, 'Goblin_Kezan_PoolPony_Stationary_Blue_01', 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(3000313, 0, 14, 32890, 'Goblin_Kezan_PoolPony_Stationary_Orange_01.', 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(3000314, 0, 14, 32891, 'Goblin_Kezan_PoolPony_Stationary_Green_01', 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(3000315, 0, 14, 32892, 'Goblin_BeachBucket_01', 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(3000316, 0, 14, 32893, 'Goblin_BeachBucket_02', 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(3000317, 0, 14, 32894, 'Goblin_BeachParasol_02', 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(3000318, 0, 14, 32895, 'Goblin_BeachParasol_03', 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(3000319, 0, 14, 32896, 'Goblin_BeachParasol_04', 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(3000320, 0, 14, 32897, 'Goblin_BeachParasol_06', 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(3000321, 0, 14, 32898, 'Goblin_BeachTowel_01', 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(3000322, 0, 14, 32899, 'Goblin_BeachTowel_02', 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
