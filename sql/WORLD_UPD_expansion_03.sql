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

update creature_template set display_id1 = 18029, script_name = 'npc_applebough' where entry = 80460;

update creature_template set script_name = '' where script_name = 'NULL';
update creature_template set script_name = '' where script_name = 'npc_dressing_room';
update creature_template set script_name = '' where script_name = 'npc_farm_sheep';
update creature_template set script_name = '' where script_name = 'npc_lordaeron_ike';
update creature_template set script_name = '' where script_name = 'npc_nert_joining_horde';

update item_template set script_name = '' where script_name = 'item_roleplay_hub';
update item_template set script_name = '' where script_name = 'item_transmog';

delete from creature_movement where guid = 81282;
delete from creature_movement where guid = 81282;
delete from creature_movement where guid = 81282;
delete from creature_movement where guid = 81282;
delete from creature_movement where guid = 81282;
delete from creature_movement where guid = 81282;
delete from creature_movement where guid = 81282;
delete from creature_movement where guid = 81282;
delete from creature_movement where guid = 81282;
delete from creature_movement where guid = 81282;
delete from creature_movement where guid = 81282;
delete from creature_movement where guid = 81282;
delete from creature_movement where guid = 81282;
delete from creature_movement where guid = 81282;
delete from creature_movement where guid = 81282;
delete from creature_movement where guid = 81282;
delete from creature_movement where guid = 81282;
delete from creature_movement where guid = 81282;
delete from creature_movement where guid = 81282;
delete from creature_movement where guid = 81282;
delete from creature_movement where guid = 81282;
delete from creature_movement where guid = 81282;
delete from creature_movement where guid = 81282;
delete from creature_movement where guid = 81282;

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

update creature set spawndist = 0 where movementtype = 0;
update creature set movementtype = 0 where spawndist = 0;

