
REPLACE INTO `creature_template` VALUES (80100, 0, 7164, 0, 0, 0, 'Nert Blastentom', 'Venture Co. Foreman', 0, 5, 5, 319, 319, 0, 0, 852, 35, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4276, 0, 0, 0, 0, 2, '');

REPLACE INTO `creature_template` VALUES (80101, 0, 10746, 0, 0, 0, 'Sprat Nozzleton', 'Venture Co. Worker', 0, 3, 3, 219, 219, 0, 0, 852, 35, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4276, 0, 0, 0, 0, 2, '');

update creature_template set equipment_id = 0 where entry = 80100;
update creature_template set equipment_id = 152 where entry = 80101;

REPLACE INTO `creature_template` VALUES (80102, 0, 9132, 0, 0, 0, 'Ohgi Cardya', 'Venture Co. Trader', 0, 3, 3, 219, 219, 0, 0, 852, 35, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4276, 0, 0, 0, 0, 2, '');

update creature_template set npc_flags = 4 where entry = 80102;

REPLACE INTO `npc_vendor` VALUES 
(80102, 159, 0, 0, 0, 0),
(80102, 2512, 0, 0, 0, 0),
(80102, 2516, 0, 0, 0, 0),
(80102, 2947, 0, 0, 0, 0),
(80102, 3111, 0, 0, 0, 0),
(80102, 4540, 0, 0, 0, 0),
(80102, 6183, 0, 0, 0, 0);

update creature_template set equipment_id = 0 where entry = 80102;

REPLACE INTO `creature_template` VALUES (80103, 8, 7185, 0, 0, 0, 'Venture Co. Bruiser', '', 0, 55, 55, 4700, 4700, 0, 0, 20, 85, 0, 1, 1.42857, 0, 20, 5, 0, 0, 1, 154, 222, 0, 248, 1, 2000, 2000, 1, 36864, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 35021, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 16096, 0, 0, 0, 0, 524288, '');

REPLACE INTO `creature_template` VALUES (80104, 0, 7166, 0, 0, 0, 'Grizzie the Enforcer', 'Warrior Trainer', 523, 11, 11, 456, 456, 406, 406, 20, 29, 19, 1, 1.14286, 0, 20, 5, 0, 0, 1, 12, 14, 0, 64, 1, 2000, 2000, 1, 4864, 0, 0, 0, 0, 1, 0, 18.392, 25.289, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 3153, 0, 0, 0, 0, 524298, '');

REPLACE INTO `npc_trainer` VALUES (80104, 1343, 100, 0, 0, 6, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (80104, 1423, 100, 0, 0, 4, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (80104, 1738, 100, 0, 0, 4, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (80104, 3128, 100, 0, 0, 6, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (80104, 6674, 10, 0, 0, 1, 0, 5875);

REPLACE INTO `creature_template` VALUES (80105, 0, 7179, 0, 0, 0, 'Mayten Boomrifle', 'Hunter Trainer', 4648, 8, 8, 334, 334, 297, 297, 20, 126, 19, 1, 1.14286, 0, 20, 5, 0, 0, 1, 7, 10, 0, 58, 1, 2000, 2000, 1, 4864, 0, 0, 0, 0, 3, 0, 13.5872, 18.6824, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 3154, 0, 0, 0, 0, 524298, '');

REPLACE INTO `npc_trainer` VALUES (80105, 1547, 10, 0, 0, 1, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (80105, 2003, 100, 0, 0, 4, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (80105, 3048, 100, 0, 0, 6, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (80105, 5298, 100, 0, 0, 6, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (80105, 13164, 50, 0, 0, 4, 0, 5875);

REPLACE INTO `creature_template`VALUES (80106, 0, 15300, 0, 0, 0, 'Leyti Quicktongue', 'Rogue Trainer', 0, 8, 8, 334, 334, 297, 297, 20, 29, 18, 1, 1.14286, 0, 20, 5, 0, 0, 1, 7, 10, 0, 58, 1, 2000, 2000, 1, 4864, 0, 0, 0, 0, 4, 0, 13.5872, 18.6824, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 3155, 0, 0, 0, 0, 524298, '');

REPLACE INTO `npc_trainer` VALUES (80106, 1762, 100, 0, 0, 6, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (80106, 1780, 100, 0, 0, 6, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (80106, 1789, 10, 0, 0, 1, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (80106, 2592, 100, 0, 0, 4, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (80106, 5167, 100, 0, 0, 4, 0, 5875);

REPLACE INTO `creature_template` VALUES (80107, 0, 9780, 0, 0, 0, 'Amri Demondeal', 'Warlock Trainer', 4670, 9, 9, 372, 372, 333, 333, 20, 29, 19, 1, 1.14286, 0, 20, 5, 0, 0, 1, 9, 13, 0, 60, 1, 2000, 2000, 1, 4864, 0, 0, 0, 0, 9, 0, 15.2064, 20.9088, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 3156, 0, 0, 0, 0, 524298, '');

REPLACE INTO `npc_trainer` VALUES (80107, 1374, 10, 0, 0, 1, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (80107, 1381, 100, 0, 0, 6, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (80107, 1393, 100, 0, 0, 4, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (80107, 1476, 100, 0, 0, 6, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (80107, 6221, 100, 0, 0, 4, 0, 5875);

REPLACE INTO `creature_template` VALUES (80108, 0, 10745, 0, 0, 0, 'Wizette Icewhistle', 'Mage Trainer', 64, 10, 10, 413, 413, 370, 370, 20, 126, 19, 1, 1.14286, 0, 20, 5, 0, 0, 1, 7, 7, 0, 62, 1, 2000, 2000, 1, 4864, 0, 0, 0, 0, 8, 0, 16.808, 23.111, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 5884, 0, 0, 0, 0, 524298, '');

REPLACE INTO `npc_trainer` VALUES (80108, 1142, 100, 0, 0, 0, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (80108, 1173, 100, 0, 0, 0, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (80108, 1249, 100, 0, 0, 0, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (80108, 1472, 10, 0, 0, 0, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (80108, 2141, 100, 0, 0, 0, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (80108, 5507, 100, 0, 0, 0, 0, 5875);


REPLACE INTO `creature_template` VALUES (80109, 0, 7174, 0, 0, 0, 'Flarnt Tightstitch', 'Cloth & Leather Armor Merchant', 0, 11, 11, 456, 456, 0, 0, 20, 29, 16388, 1.1, 1.14286, 0, 20, 5, 0, 0, 1, 12, 14, 0, 64, 1, 2000, 2090, 1, 4864, 0, 0, 0, 0, 0, 0, 18.392, 25.289, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 524298, '');

REPLACE INTO `npc_vendor` VALUES 
(80109, 2117, 0, 0, 0, 0),
(80109, 2119, 0, 0, 0, 0),
(80109, 2120, 0, 0, 0, 0),
(80109, 2121, 0, 0, 0, 0),
(80109, 2122, 0, 0, 0, 0),
(80109, 2123, 0, 0, 0, 0),
(80109, 2124, 0, 0, 0, 0),
(80109, 2125, 0, 0, 0, 0),
(80109, 2126, 0, 0, 0, 0),
(80109, 2127, 0, 0, 0, 0),
(80109, 3599, 0, 0, 0, 0),
(80109, 3600, 0, 0, 0, 0);

REPLACE INTO `creature_template` VALUES (80110, 0, 7188, 0, 0, 0, 'Toxx Ringweave', 'Venture Co. Mail Armor Trader', 0, 10, 10, 413, 413, 0, 0, 20, 29, 16388, 1.1, 1.14286, 0, 20, 5, 0, 0, 1, 9, 13, 0, 62, 1, 2000, 2101, 1, 4864, 0, 0, 0, 0, 0, 0, 16.808, 23.111, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 3161, 0, 0, 0, 0, 524298, '');

REPLACE INTO `npc_vendor` VALUES
(80110, 2129, 0, 0, 0, 0),
(80110, 2379, 0, 0, 0, 0),
(80110, 2380, 0, 0, 0, 0),
(80110, 2381, 0, 0, 0, 0),
(80110, 2383, 0, 0, 0, 0),
(80110, 2384, 0, 0, 0, 0),
(80110, 2385, 0, 0, 0, 0),
(80110, 17184, 0, 0, 0, 0);


update creature_template set equipment_id = 0 where entry = 80110;

REPLACE INTO `creature_template` VALUES (80111, 0, 7180, 0, 0, 0, 'Nagus', 'Venture Co. Field Cook', 0, 14, 14, 594, 594, 0, 0, 20, 29, 6, 1, 1.14286, 0, 20, 5, 0, 0, 1, 15, 19, 0, 70, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 23.0384, 31.6778, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 3881, 0, 0, 0, 0, 524298, '');

update creature_template set faction = 35 where entry between 80100 and 80111;

-- A New Ad-Venture

REPLACE INTO `creature_template` VALUES (80112, 7, 1150, 0, 0, 0, 'Whirling Whizz-Bot', NULL, 0, 1, 2, 42, 60, 0, 0, 16, 189, 0, 1, 0.857143, 0, 20, 5, 0, 0, 1, 0, 1, 0, 46, 1, 2000, 2000, 1, 0, 0, 5, 0, 0, 0, 0, 1.76, 2.42, 100, 9, 1, 3098, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9074, 0, 0, '', 1, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, '');

update creature_template set scale = 0.8, type = 9 where entry = 80112;

replace into item_template values
 ('80100', '0', '0', '0', 'Whirling Whizmagig', '', '20628', '1', '0', '1', '0', '0', '0', '-1', '-1', '1',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '10', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
replace into item_template values
 ('80101', '0', '4', '2', 'Mud Covered Gloves', '', '17184', '1', '0', '1', '2', '2', '10', '-1', '-1', '4',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '16', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '16', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
replace into item_template values
 ('80102', '0', '4', '1', 'Torn Pants', '', '16796', '1', '0', '1', '2', '2', '7', '-1', '-1', '4',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '25', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
update creature_template set loot_id = 80112 where entry = 80112; 
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80112, 80100, 100, 0, 1, 1);

SET @quest_entry = 80100;
SET @quest_zone = 406;
SET @title = 'A New Ad-Venture';
SET @description = 'Alright, pal, listen up. I know this is your first mission for the Venture Company, so I’ll speak real slow.\n\nWe’re up here to find a special treasure, you hear? Supposed to be worth more than half the jewels in Undermine all by itself. Boss can’t wait to get his hands on it, but the last guys he sent up here never sent anything back. Thievin’ jerks think they’re gonna keep the boss’s treasure for themselves? Not if I have anything to say about it. Boss says don’t come home unless we get what we came for.\n\nWe busted up a few gizmos on our flyer gettin’ down here, but lucky for us, it seems like those other guys left some of their bots behind. Run around and grab some whizmagigs from them, would ya?';
SET @objective = 'Gather 8 Whirling Whizmagigs from Whirling Whizzbots,then return to Nert Blastentom.';
SET @completetext = 'Nice job, kid. You keep that up, you might be a foreman in, uh, eighteen or nineteen years.\n\nCompetition’s tough, you know.';
SET @incompletetext = 'You know what they say. Time is money, employee.';
SET @faction_id = 0;
SET @faction_count = 0;
SET @xp_or_money = 105;
SET @reward_money = 100; 
SET @quest_level = 1;
SET @min_level = 1;
SET @questgiver_id = 80100;
SET @quest_finisher = 80100;
SET @nextquest = 0;
SET @nextquestinchain = 0;
SET @prevquest = 0;
SET @RewChoiceItemId1 = 80101; 
SET @RewChoiceItemId2 = 80102; 
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
SET @required_item_1 = 80100; 
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

-- Venture Vultures

REPLACE INTO `creature_template` VALUES (80113, 0, 10825, 0, 0, 0, 'Plateau Vulture', NULL, 0, 2, 3, 55, 71, 0, 0, 29, 32, 0, 1, 0.857143, 0.71, 20, 5, 0, 0, 1, 3, 5, 0, 48, 1, 2000, 2000, 1, 0, 0, 7, 0, 0, 0, 0, 5.2272, 7.1874, 100, 1, 1, 1509, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 5935, 0, 0, 'EventAI', 1, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, '');

replace into item_template values
 ('80103', '0', '0', '0', 'Plateau Vulture Meat', '', '25467', '1', '0', '1', '0', '0', '0', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL); 
  
update item_template set stackable = 10 where entry = 80103;
update creature_template set loot_id = 80113 where entry = 80113; 
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80113, 80103, 70, 0, 1, 1);

REPLACE INTO `item_template` VALUES (80104, 0, 0, 0, 'Sprat’s Crunchy Vulture Surprise', '', 22200, 1, 0, 1, 40, 10, 0, -1, -1, 7, 1, 0, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5004, 0, -1, 0, 0, 11, 1000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, NULL);

SET @quest_entry = 80101;
SET @quest_zone = 406;
SET @title = 'Venture Vultures';
SET @description = 'This is the wooooorst!\n\nThe Venture Co. was supposed to be about fun and adventure and sweet sweet profits, but all we’ve done so far is fly up to the middle of nowhere and sit around without any food.\n\nListen, I don’t care what Nert says, I’m not workin’ any more without dinner. You’re going out into the forest, arentcha? Then you’re gonna bring me back some meat from those buzzards. It’s no Booty Bay steak, but you let ol’ Sprat show ya how it’s cooked!';
SET @objective = 'Bring Sprat Nozzleton 6 pieces of Plateau Vulture Meat.';
SET @completetext = 'Nice! You just wait, mama Sprat’s gonna make magic out of these here buzzard bits.\n\nYou won’t even know you’re basically eatin’ a bird that eats rotting stuff!\n\nUh, forget I said that.';
SET @incompletetext = 'I’ve got the best meals anywhere!';
SET @faction_id = 0;
SET @faction_count = 0;
SET @xp_or_money = 125;
SET @reward_money = 0; 
SET @quest_level = 2;
SET @min_level = 2;
SET @questgiver_id = 80101;
SET @quest_finisher = 80101;
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
SET @reward_item_1 = 80104;
SET @reward_item_2 = 0; 
SET @reward_item_3 = 0;
SET @reward_item_4 = 0;
SET @reward_item_1_count = 5;
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
SET @required_item_1 = 80103; 
SET @required_item_2 = 0;
SET @required_item_3 = 0;
SET @required_item_4 = 0;
SET @required_item_1_count = 6;
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

-- Green Versus Green

REPLACE INTO `creature_template` VALUES (80114, 0, 4249, 4250, 4247, 4248, 'Stonetalon Environmentalist', NULL, 0, 2, 3, 74, 80, 0, 0, 49, 91, 0, 1, 0.857143, 0, 20, 5, 0, 0, 1, 3, 5, 0, 50, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 6.9344, 9.5348, 100, 7, 0, 38, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 7, 'EventAI', 1, 3, 0, 0, 3, 38, 0, 0, 0, 0, 0, '');

REPLACE INTO `creature_template` VALUES (80115, 0, 8172, 0, 0, 0, 'Highpeak Lasher', NULL, 0, 3, 3, 40, 45, 0, 0, 50, 91, 0, 0.93, 1.14286, 1, 20, 5, 0, 0, 1, 10, 12, 0, 40, 1, 1960, 2156, 8, 0, 0, 0, 0, 0, 0, 0, 8.624, 11.858, 100, 4, 0, 3569, 0, 0, 0, 5, 5, 5, 10, 5, 0, 0, 0, 0, 0, 0, 1, 4, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 16384, 0, 0, '');

replace into item_template values
 ('80105', '0', '2', '5', 'Bruiser Club', '', '19544', '1', '0', '1', '2', '2', '17', '-1', '-1', '6',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3500', '0',
 '0', '8', '13', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '2', '3', '0', '0', '35', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('80106', '0', '2', '3', 'Miscalibrated Rifle', '', '20738', '1', '0', '1', '2', '2', '15', '-1', '-1', '6',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2800', '35',
 '3', '5', '9', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '3', '0', '0', '25', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 update item_template set Range_Mod = 100 where entry = 80106;
 
 replace into item_template values
 ('80107', '0', '2', '10', 'Smooth Wooden Staff', '', '10654', '1', '0', '1', '2', '2', '17', '-1', '-1', '6',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3200', '0',
 '0', '8', '12', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '3', '0', '0', '35', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('80113', '0', '2', '15', 'Pocket Knife', '', '6433', '1', '0', '1', '18', '18', '21', '-1', '-1', '9',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1600', '0',
 '0', '4', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '1', '0', '0', '25', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

SET @quest_entry = 80102;
SET @quest_zone = 406;
SET @title = 'Green Versus Green';
SET @description = 'You gotta be kidding me. Here we are, a mile above every mountain pass, and there’s elves up here?\n\nListen, kid, elves are the most irrational creatures in the world. A good goblin, he looks at a forest and he sees profit! But what does an elf see? Bears? Owls? Little baby squirrels with the big eyes? It makes me sick.\n\nCongratulations, you get to be the muscle today. Go out and cut down a few tree-huggers, would ya? And some of their weird living plants while you’re at it. I don’t trust anything that walks around on vines.';
SET @objective = 'Kill 7 Stonetalon Environmentalists and 5 Highpeak Lashers, then return to Nert Blastentom.';
SET @completetext = 'Alright then, recruit, you’re officially on my good list. Stick with old Nert and you’re gonna go far!\n\nOh, uh, I guess if you’re gonna be fighting stuff it might be good for you to have a weapon. But don’t tell anyone I gave you one for free!';
SET @incompletetext = 'Stupid elves love trees so much. You know they grew themselves a giant tree to live in off the coast?\n\nThey got the magic to grow a tree the size of a city and they never think of the lumber market. It’s madness.';
SET @faction_id = 0;
SET @faction_count = 0;
SET @xp_or_money = 130;
SET @reward_money = 0; 
SET @quest_level = 2;
SET @min_level = 2;
SET @questgiver_id = 80100;
SET @quest_finisher = 80100;
SET @nextquest = 0;
SET @nextquestinchain = 0;
SET @prevquest = 0;
SET @RewChoiceItemId1 = 80105; 
SET @RewChoiceItemId2 = 80106; 
SET @RewChoiceItemId3 = 80107;
SET @RewChoiceItemId4 = 80113; 
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
SET @creature_to_kill_1 = 80114;
SET @creature_to_kill_2 = 80115; 
SET @creature_to_kill_3 = 0;
SET @creature_to_kill_4 = 0;
SET @creature_to_kill_1_count = 7;
SET @creature_to_kill_2_count = 5;
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

-- Risen Oilblazes

replace into item_template values
 ('80112', '0', '0', '0', 'Living Petroleum', '', '9518', '1', '0', '1', '0', '0', '0', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 update item_template set stackable = 10 where entry = 80112;
 
 replace into item_template values
 ('80114', '0', '0', '0', 'Oil-Scorched Note', '', '3020', '1', '0', '1', '0', '0', '0', '-1', '-1', '3',
 '4', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '4', '0', '0', '0', '80105', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 update item_template set max_count = 1 where entry = 80114;
 
 replace into item_template values
 ('80110', '0', '4', '2', 'Scorched Vest', '', '14190', '1', '0', '1', '12', '12', '5', '-1', '-1', '9',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '46', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '55', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('80109', '0', '4', '1', 'Oil Splattered Robe', '', '12648', '1', '0', '1', '12', '12', '5', '-1', '-1', '9',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '16', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '40', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('80108', '0', '4', '3', 'Charred Chainmail', '', '954', '1', '0', '1', '12', '12', '5', '-1', '-1', '9',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '86', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '5', '0', '0', '0', '60', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL); 
 
replace into item_template values
 ('80111', '0', '4', '1', 'Ash Covered Tunic', '', '8717', '1', '0', '1', '12', '12', '5', '-1', '-1', '9',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '16', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '40', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
REPLACE INTO `creature_template` VALUES (80116, 0, 1070, 0, 0, 0, 'Risen Oilblaze', NULL, 0, 3, 4, 72, 89, 0, 0, 59, 22, 0, 1, 0.857143, 0, 20, 5, 0, 0, 1, 3, 5, 0, 50, 1, 2000, 2000, 1, 0, 0, 3, 0, 0, 0, 0, 6.9344, 9.5348, 100, 4, 1, 1505, 0, 0, 0, 0, 0, 0, 0, 0, 6751, 0, 0, 0, 0, 5879, 0, 0, 'EventAI', 1, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, '');

update creature_template set loot_id = 80116 where entry = 80116; 
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80116, 80114, 30, 0, 1, 1);
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80116, 80112, 60, 1, 1, 1);

SET @quest_entry = 80103;
SET @quest_zone = 406;
SET @title = 'Risen Oilblazes';
SET @description = 'Well, I guess we figured out why the elves are up here. The whole dang forest up ahead is on fire! And it’s gotta be goblin-made, too, because no one else uses the same kind of oil! That’s Undermine stuff, kid, there’s not a gnome in the world that can buy that.\n\nI don’t know what’s goin’ on, but I don’t like it. Go out and get some of that oil. Maybe it’ll tell us what’s goin’ on, or at least it’ll be a nice prize when we go back if not.';
SET @objective = 'Collect 10 Living Petroleum from Risen Oilblazes in the Scorched Stand, then return to Nerd Blasentom.';
SET @completetext = 'This doesn’t make any sense. Why would they leave such valuable stuff behind?\n\nWhere the heck did everybody go?';
SET @incompletetext = 'This stuff will burn for years if you let it. There’s a reason it’s a goblin trade secret. There’s no profit in burning down a whole forest!';
SET @faction_id = 0;
SET @faction_count = 0;
SET @xp_or_money = 150;
SET @reward_money = 250; 
SET @quest_level = 4;
SET @min_level = 3;
SET @questgiver_id = 80100;
SET @quest_finisher = 80100;
SET @nextquest = 0;
SET @nextquestinchain = 0;
SET @prevquest = 0;
SET @RewChoiceItemId1 = 80108; 
SET @RewChoiceItemId2 = 80109; 
SET @RewChoiceItemId3 = 80110;
SET @RewChoiceItemId4 = 80111; 
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
SET @required_item_1 = 80112; 
SET @required_item_2 = 0;
SET @required_item_3 = 0;
SET @required_item_4 = 0;
SET @required_item_1_count = 10;
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

-- The Other White Mech

replace into item_template values
 ('80115', '0', '4', '1', 'Frayed Sash', '', '27958', '1', '0', '1', '13', '13', '6', '-1', '-1', '9',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '9', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '16', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('80116', '0', '4', '2', 'Studded Bracers', '', '17002', '1', '0', '1', '12', '12', '9', '-1', '-1', '9',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '21', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '18', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('80117', '0', '4', '2', 'Charred Boots', '', '16980', '1', '0', '1', '12', '12', '8', '-1', '-1', '9',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '34', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '25', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('80118', '0', '4', '3', 'Scrapmetal Boots', '', '6903', '1', '0', '1', '12', '12', '8', '-1', '-1', '9',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '62', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '5', '0', '0', '0', '30', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

REPLACE INTO `creature_template` VALUES (80117, 0, 7920, 0, 0, 0, 'Haywire Battlechicken', NULL, 0, 3, 4, 72, 89, 0, 0, 59, 22, 0, 1, 0.857143, 0, 20, 5, 0, 0, 1, 3, 5, 0, 50, 1, 2000, 2000, 1, 0, 0, 3, 0, 0, 0, 0, 6.9344, 9.5348, 100, 4, 1, 1505, 0, 0, 0, 0, 0, 0, 0, 0, 6751, 0, 0, 0, 0, 5879, 0, 0, 'EventAI', 1, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, '');

update creature_template set scale = 3, type = 9 where entry = 80117;

replace into item_template values
 ('80119', '0', '0', '0', 'Mechanical Drumstick', '', '17923', '1', '0', '1', '0', '0', '0', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '10', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);      

update creature_template set loot_id = 80117 where entry = 80117; 
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80117, 80119, 50, 0, 1, 1);
	 
SET @quest_entry = 80104;
SET @quest_zone = 406;
SET @title = 'The Other White Mech';
SET @description = 'If there’s one thing I like better than cookin’ up buzzards, it’s cookin’ up brand-new mechanical marvels. There’s a whole butcher’s shop of parts out there in those burnt woods, and buddy, my mouth is waterin’ for a big old mechanical feast!\n\nI don’t know why the other expedition would leave so much behind and I don’t care - bring me some of those parts!';
SET @objective = 'Collect 5 Mechanical Drumsticks from the mechanical chickens in the Scorched Stand and return to Sprat Nozzleton.';
SET @completetext = 'Alright then, recruit, you’re officially on my good list. Stick with old Sprat and you’re gonna go far!\n\nOh, uh, I guess if you’re gonna be fighting stuff it might be good for you to have a weapon. But don’t tell anyone I gave you one for free!';
SET @incompletetext = 'Well, what are you waiting for?\n\nYou’re supposed to be some kind of big tough enforcer now, right? Go get me some parts!';
SET @faction_id = 0;
SET @faction_count = 0;
SET @xp_or_money = 160;
SET @reward_money = 100; 
SET @quest_level = 4;
SET @min_level = 3;
SET @questgiver_id = 80101;
SET @quest_finisher = 80101;
SET @nextquest = 0;
SET @nextquestinchain = 0;
SET @prevquest = 0;
SET @RewChoiceItemId1 = 80115; 
SET @RewChoiceItemId2 = 80116; 
SET @RewChoiceItemId3 = 80117;
SET @RewChoiceItemId4 = 80118; 
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
SET @required_item_1 = 80119; 
SET @required_item_2 = 0;
SET @required_item_3 = 0;
SET @required_item_4 = 0;
SET @required_item_1_count = 5;
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

-- Ventured Too Far

replace into item_template values
 ('80120', '0', '4', '1', 'Oil Splattered Gloves', '', '16581', '1', '0', '1', '15', '15', '10', '-1', '-1', '10',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '11', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '16', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('80121', '0', '4', '2', 'Scorched Gloves', '', '17074', '1', '0', '1', '15', '15', '10', '-1', '-1', '10',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '33', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '20', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
	 
SET @quest_entry = 80105;
SET @quest_zone = 406;
SET @title = 'Ventured Too Far';
SET @description = '<The note is soaked in oil and scorched by the elemental among whose remains you found it. It’s difficult to make out most of the writing, but you can decipher one critical fragment.>\n\n...stupid boss didn’t tell us anythin’ about...place. Not a norm-…...tomb. Somethin’ bad buried...-enter of forest...\n\n<This seems like it’s worth reporting back to the expedition.>';
SET @objective = 'Bring the Oil-Scorched Note to Nert Blastentom back at the landing site.';
SET @completetext = '<Nert reads the note over.>\n\nWell. That probably ain’t good, but we didn’t come here to be stopped now, did we? Can’t, uh. Can’t go back to the boss empty-handed, right?\n\n<Nert seems like he’s trying to convince himself as much as he is you.>';
SET @incompletetext = 'Why are you bringin’ me a piece of paper, kid? I look like your teacher?';
SET @faction_id = 0;
SET @faction_count = 0;
SET @xp_or_money = 200;
SET @reward_money = 0; 
SET @quest_level = 5;
SET @min_level = 4;
SET @questgiver_id = 0;
SET @quest_finisher = 80100;
SET @nextquest = 0;
SET @nextquestinchain = 0;
SET @prevquest = 0;
SET @RewChoiceItemId1 = 80120; 
SET @RewChoiceItemId2 = 80121; 
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
SET @required_item_1 = 80114; 
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
nextquestinchain = @nextquestinchain, prevquestid = @prevquest 
where entry = @quest_entry;	

-- The Grumbling Grove 

REPLACE INTO `creature_template` VALUES (80118, 0, 6915, 0, 0, 0, 'Whispering Spidertank', NULL, 0, 5, 6, 100, 120, 0, 0, 147, 22, 0, 1, 0.857143, 0, 20, 5, 0, 0, 1, 7, 10, 0, 54, 1, 2000, 2000, 1, 0, 0, 3, 0, 0, 0, 0, 8.58, 11.7975, 100, 9, 1, 30, 0, 0, 0, 0, 0, 0, 0, 0, 744, 0, 0, 0, 0, 5880, 0, 0, 'EventAI', 1, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `creature_template` VALUES (80119, 0, 1228, 0, 0, 0, 'Muttering Vulture', NULL, 0, 5, 7, 80, 100, 0, 0, 180, 73, 0, 1, 0.857143, 0, 20, 5, 0, 0, 1, 6, 11, 0, 56, 1, 2000, 2000, 1, 0, 0, 7, 0, 0, 0, 0, 13.4464, 18.4888, 100, 1, 1, 2969, 0, 0, 0, 0, 0, 0, 0, 0, 5708, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 1, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, '');
	 
replace into item_template values
 ('80122', '0', '4', '1', 'Oil Splattered Boots', '', '27725', '1', '0', '1', '18', '18', '8', '-1', '-1', '10',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '13', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '25', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('80123', '0', '4', '2', 'Oilrag Boots', '', '4016', '1', '0', '1', '18', '18', '8', '-1', '-1', '10',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '36', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '25', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL); 
	 
SET @quest_entry = 80106;
SET @quest_zone = 406;
SET @title = 'The Grumbling Grove';
SET @description = 'Okay, look. Any treasure hunter is gonna find some haunted treasure from time to time, see? And we CAN’T go back to the boss empty-handed. I mean CAN’T.\n\nLike, he’ll have us shipped off to the mines, can’t.\n\nSo here’s what we’re gonna do, okay? We’re gonna try and get this thing anyway. You’ve done good so far, kid, so you think you’re up for a little more “enforcing”? There seem to be more of the first expedition’s mechs in the little forest on the other side of the valley, and, uh, some vultures that don’t look real natural. Clear ‘em out, and we’ll see what’s in there.';
SET @objective = 'Kill 7 Whispering Spidertanks and 7 Muttering Vultures in the Grumbling Grove.';
SET @completetext = 'This place gives me the willies. The sooner we’re out of here, the better, right kid?';
SET @incompletetext = 'I don’t like the look of ‘em any more than you do, kid. But what choice we got?';
SET @faction_id = 0;
SET @faction_count = 0;
SET @xp_or_money = 200;
SET @reward_money = 200; 
SET @quest_level = 6;
SET @min_level = 4;
SET @questgiver_id = 80100;
SET @quest_finisher = 80100;
SET @nextquest = 0;
SET @nextquestinchain = 0;
SET @prevquest = 80105;
SET @RewChoiceItemId1 = 80122; 
SET @RewChoiceItemId2 = 80123; 
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
SET @creature_to_kill_1 = 80118;
SET @creature_to_kill_2 = 80119; 
SET @creature_to_kill_3 = 0;
SET @creature_to_kill_4 = 0;
SET @creature_to_kill_1_count = 7;
SET @creature_to_kill_2_count = 7;
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

-- Shadow On The Plateau

replace into item_template values
 ('80124', '0', '4', '2', 'Scorched Belt', '', '16932', '1', '0', '1', '20', '20', '6', '-1', '-1', '10',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '20', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('80125', '0', '4', '3', 'Charred Belt', '', '26930', '1', '0', '1', '20', '20', '6', '-1', '-1', '10',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '58', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '5', '0', '0', '0', '20', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

REPLACE INTO `creature_template` VALUES (80120, 0, 12074, 0, 0, 0, 'Tomb Shadow', NULL, 0, 6, 7, 120, 136, 0, 0, 207, 21, 0, 0.888888, 0.857143, 0, 20, 5, 0, 0, 1, 7, 10, 0, 56, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 13.4464, 18.4888, 100, 6, 0, 1520, 1520, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 12, '', 1, 1, 0, 0, 3, 1520, 0, 0, 8602131, 0, 0, '');
	 
update creature_template set script_name = "npc_tomb_shadow" where entry = 80120;
	 
update creature_template set faction = 22 where entry = 80120;
update creature_template set loot_id = 1531 where entry = 80120;
update creature_template set equipment_id = 0 where entry = 80120;

update creature_template set script_name = "npc_nert_blastentom" where entry = 80100;
	 
SET @quest_entry = 80107;
SET @quest_zone = 406;
SET @title = 'Shadow On The Plateau';
SET @description = 'I don’t envy you right now, kid.\n\nSee, those weird vultures aren’t the worst thing in the woods. Some of the other bruisers were havin’ a look around, and they saw...something...in the woods, next to a tomb that looks like it’s from Suramar for how old it is.\n\nI’ll fight elves, I’ll fight plant monsters, I’ll fight our own tanks, but I am not messing with some ancient cursed undead. You go out there and fight that thing, and you and me are friends for good, alright?';
SET @objective = 'Find and defeat the Tomb Shadow in the Grumbling Grove, then return to Nert Blastentom.';
SET @completetext = 'The first of many? Nope, nope, nope. I don’t care what the boss says, I am not gettin’ cursed by some angry ghost. We gotta get out of here, kid.';
SET @incompletetext = 'This place gives me the heebie-jeebies.';
SET @faction_id = 0;
SET @faction_count = 0;
SET @xp_or_money = 250;
SET @reward_money = 0; 
SET @quest_level = 6;
SET @min_level = 4;
SET @questgiver_id = 80100;
SET @quest_finisher = 80100;
SET @nextquest = 0;
SET @nextquestinchain = 0;
SET @prevquest = 80106;
SET @RewChoiceItemId1 = 80124; 
SET @RewChoiceItemId2 = 80125; 
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
SET @creature_to_kill_1 = 80120;
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
nextquestinchain = @nextquestinchain, prevquestid = @prevquest 
where entry = @quest_entry;

-- Part II, Durotar

-- Me Not Any Kind Of Orc

replace into `gameobject_template` values 
(3000100, 0, 1, 330, 'FM Acquisition, Blastentom\'s Property', 0, 0, 0.8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_fm_acquisition');

replace into broadcast_text (ID, MaleText) values (100100, 'As you inspect the plane more carefully, you notice the words "Property of Nert Blastentom" scribbled onto the side.\n\nThe plane is decorated with small stickers, among them a small coin, a yellow parrot, and a hammer.\n\nThe words "FM Acquisition" are inscribed on the bottom.');
replace into npc_text (ID, BroadcastTextID0) values (100100, 100100);

replace into item_template values
 ('80126', '0', '2', '8', 'Sharpened Bastard Sword', '', '31400', '2', '0', '1', '235', '235', '17', '-1', '-1', '11',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '1', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3100', '0',
 '0', '19', '27', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '3', '0', '0', '45', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('80127', '0', '2', '3', 'Polished Boomstick', '', '6600', '2', '0', '1', '213', '213', '15', '-1', '-1', '11',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2400', '100',
 '3', '8', '15', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '3', '0', '0', '35', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('80128', '0', '2', '10', 'Pearltip Staff', '', '20424', '2', '0', '1', '311', '311', '17', '-1', '-1', '11',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '1', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2500', '0',
 '0', '15', '22', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '2', '3', '0', '0', '45', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('80129', '0', '2', '15', 'Balanced Hand Blade', '', '6472', '2', '0', '1', '312', '312', '21', '-1', '-1', '11',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '1', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1400', '0',
 '0', '6', '11', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '5', '0', '0', '30', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

REPLACE INTO `creature_template` VALUES (80121, 0, 7164, 0, 0, 0, 'Nert Blastentom', 'Venture Refugee', 0, 5, 5, 319, 319, 0, 0, 852, 35, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4276, 0, 0, 0, 0, 2, '');

update creature_template set equipment_id = 0 where entry = 80121;

REPLACE INTO `creature_template` VALUES (80122, 0, 10746, 0, 0, 0, 'Sprat Nozzleton', 'Venture Refugee', 0, 3, 3, 219, 219, 0, 0, 852, 35, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4276, 0, 0, 0, 0, 2, '');

update creature_template set equipment_id = 0 where entry = 80122;	

REPLACE INTO `creature_template` VALUES (80123, 0, 7180, 0, 0, 0, 'Nagus', 'Venture Refugee', 0, 14, 14, 594, 594, 0, 0, 20, 29, 6, 1, 1.14286, 0, 20, 5, 0, 0, 1, 15, 19, 0, 70, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 23.0384, 31.6778, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 3881, 0, 0, 0, 0, 524298, '');

update creature_template set equipment_id = 0 where entry = 80123;	

REPLACE INTO `creature_template` VALUES (80124, 0, 7166, 0, 0, 0, 'Grizzie the Enforcer', 'Venture Refugee', 523, 11, 11, 456, 456, 406, 406, 20, 29, 19, 1, 1.14286, 0, 20, 5, 0, 0, 1, 12, 14, 0, 64, 1, 2000, 2000, 1, 4864, 0, 0, 0, 0, 1, 0, 18.392, 25.289, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 3153, 0, 0, 0, 0, 524298, '');

REPLACE INTO `creature_template` VALUES (80125, 0, 7179, 0, 0, 0, 'Mayten Boomrifle', 'Venture Refugee', 4648, 8, 8, 334, 334, 297, 297, 20, 126, 19, 1, 1.14286, 0, 20, 5, 0, 0, 1, 7, 10, 0, 58, 1, 2000, 2000, 1, 4864, 0, 0, 0, 0, 3, 0, 13.5872, 18.6824, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 3154, 0, 0, 0, 0, 524298, '');

REPLACE INTO `creature_template`VALUES (80126, 0, 15300, 0, 0, 0, 'Leyti Quicktongue', 'Venture Refugee', 0, 8, 8, 334, 334, 297, 297, 20, 29, 18, 1, 1.14286, 0, 20, 5, 0, 0, 1, 7, 10, 0, 58, 1, 2000, 2000, 1, 4864, 0, 0, 0, 0, 4, 0, 13.5872, 18.6824, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 3155, 0, 0, 0, 0, 524298, '');

REPLACE INTO `creature_template` VALUES (80127, 0, 9780, 0, 0, 0, 'Amri Demondeal', 'Venture Refugee', 4670, 9, 9, 372, 372, 333, 333, 20, 29, 19, 1, 1.14286, 0, 20, 5, 0, 0, 1, 9, 13, 0, 60, 1, 2000, 2000, 1, 4864, 0, 0, 0, 0, 9, 0, 15.2064, 20.9088, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 3156, 0, 0, 0, 0, 524298, '');

REPLACE INTO `creature_template` VALUES (80128, 0, 10745, 0, 0, 0, 'Wizette Icewhistle', 'Venture Refugee', 64, 10, 10, 413, 413, 370, 370, 20, 126, 19, 1, 1.14286, 0, 20, 5, 0, 0, 1, 7, 7, 0, 62, 1, 2000, 2000, 1, 4864, 0, 0, 0, 0, 8, 0, 16.808, 23.111, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 5884, 0, 0, 0, 0, 524298, '');

update creature_template set equipment_id = 0 where entry in (80123,80124,80125,80126,80127,80128);
update creature_template set npc_flags = 0 where entry in (80123,80124,80125,80126,80127,80128);

replace into creature_template_addon (entry, bytes1, emote) values ('80122', '1', 0),('80123', '1', 0); 
	
SET @quest_entry = 80108;
SET @quest_zone = 406;
SET @title = 'Me Not Any Kind Of Orc';
SET @description = 'There’s only one place in the world that would take in a bunch of smelly refugees with nothing to contribute, kid. The Horde.\n\nYeah, I know they don’t like us. But they don’t like us less than our former associates, get it? We got a chance of winning them over, and there’s no way the Venture Co is gonna get us if we’re holed up inside Orgrimmar!\n\nIt’s time to go straight, little buddy.';
SET @objective = 'Join Nert Blastentom and travel to Durotar to join the Horde.';
SET @completetext = 'Alright.\n\nWe made it to Durotar. Step 1 complete.\n\nNow, for step 2 of my master plan that I just made up...';
SET @incompletetext = 'Bit of a bumpy flight, but not as bumpy as being tossed off the cliffs of Mulgore, I bet.';
SET @faction_id = 0;
SET @faction_count = 0;
SET @xp_or_money = 200;
SET @reward_money = 200; 
SET @quest_level = 6;
SET @min_level = 4;
SET @questgiver_id = 80100;
SET @quest_finisher = 80121;
SET @nextquest = 0;
SET @nextquestinchain = 0;
SET @prevquest = 80107;
SET @RewChoiceItemId1 = 80126; 
SET @RewChoiceItemId2 = 80127; 
SET @RewChoiceItemId3 = 80128;
SET @RewChoiceItemId4 = 80129; 
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

-- Zug-zug Or Somethin’
	 
SET @quest_entry = 80109;
SET @quest_zone = 14;
SET @title = 'Zug-zug Or Somethin’';
SET @description = 'Our situation ain’t good. If the Horde won’t help us, I don’t know where else we could go. But I’ve got a plan, see.\n\nAn old orc friend of mine is the cook in Razor Hill, the orc town just down below us. We write every now and then, and from what he tells me, the head of the guard there just goes nuts for roasted boar.\n\nWhy don’t you hunt some of the boar around here, take them to him? I bet he can put in a good word. And as any good goblin knows, one good word is all you need to take it all the way to the top!';
SET @objective = 'Collect 5 Chunks of Boar Meat and bring them to Cook Torka in Razor Hill.';
SET @completetext = 'Boar meat? How did you know to bring boar...oh.\n\nYou’re friends with Nert, aren’t you.';
SET @incompletetext = 'Oh, hello there! It’s been a long time since I’ve seen a goblin around here!';
SET @faction_id = 0;
SET @faction_count = 0;
SET @xp_or_money = 200;
SET @reward_money = 0; 
SET @quest_level = 6;
SET @min_level = 4;
SET @questgiver_id = 80121;
SET @quest_finisher = 3191;
SET @nextquest = 0;
SET @nextquestinchain = 0;
SET @prevquest = 80108;
SET @RewChoiceItemId1 = 159; 
SET @RewChoiceItemId2 = 7097; 
SET @RewChoiceItemId3 = 0;
SET @RewChoiceItemId4 = 0; 
SET @RewChoiceItemCount1 = 5;
SET @RewChoiceItemCount2 = 5;
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
SET @required_item_1 = 769; 
SET @required_item_2 = 0;
SET @required_item_3 = 0;
SET @required_item_4 = 0;
SET @required_item_1_count = 5;
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

-- Green Goes Red

replace into item_template values
 ('80131', '0', '4', '2', 'Tanned Hide Vest', '', '17093', '2', '0', '1', '204', '204', '5', '-1', '-1', '11',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '1', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '58', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '55', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('80132', '0', '4', '3', 'Chainmail Harness', '', '11382', '2', '0', '1', '181', '181', '5', '-1', '-1', '11',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '1', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '115', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '5', '0', '0', '0', '65', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('80133', '0', '4', '1', 'Bloodstained Robe', '', '12687', '2', '0', '1', '203', '203', '5', '-1', '-1', '11',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '1', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '21', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '45', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('80130', '0', '0', '0', 'Torka’s Boarbecue Ribs', '', '21327', '1', '0', '1', '0', '0', '0', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL); 
 
update creature_template set script_name = "npc_garthok" where entry = 3139;

delete from creature where id = 3139;

replace into `creature` (`id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `deathstate`, `movementtype`, `spawnflags`, `visibilitymod`, `patch_min`, `patch_max`) values (3139, 1, 0, 3139, 280.431, -4713.14, 11.6292, 5.74273, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10);
	 
SET @quest_entry = 80110;
SET @quest_zone = 14;
SET @title = 'Green Goes Red';
SET @description = 'I owe Nert a favor, but getting you into the Horde is a tall order!\n\nI know Gar’thok likes boar meat, but I’d like to think he’s got a better head on his shoulders than to sign off on you as recruits just for a good lunch.\n\nOh well. Knock yourself out, I guess.\n\nAnd tell Nert I said hi!';
SET @objective = 'Bring Torka’s Boarbecue Ribs to Gar’thok in Razor Hill and ask him to help you join the Horde.';
SET @completetext = '<You hand over the boar and begin to explain your situation. Gar’thok does not appear to be fully listening as he devours the food with relish. It takes him a moment to realize you’ve finished.>\n\n...huh? Oh, yes.\n\n<Gar’thok regains his composure.>\n\nAre you prepared to fight with honor?\n\nTo join the ranks of the Warchief’s forces?\n\nTo be his fist in lands unknown, and to serve the Horde without question?';
SET @incompletetext = '<Gar’thok appears to be salivating slightly.>\n\nWhat are you doing here, and why do you smell like Torka’s cooking?';
SET @faction_id = 76;
SET @faction_count = 3500;
SET @xp_or_money = 200;
SET @reward_money = 0; 
SET @quest_level = 6;
SET @min_level = 4;
SET @questgiver_id = 3191;
SET @quest_finisher = 3139;
SET @nextquest = 0;
SET @nextquestinchain = 0;
SET @prevquest = 80109;
SET @RewChoiceItemId1 = 80131; 
SET @RewChoiceItemId2 = 80132; 
SET @RewChoiceItemId3 = 80133;
SET @RewChoiceItemId4 = 0; 
SET @RewChoiceItemCount1 = 1;
SET @RewChoiceItemCount2 = 1;
SET @RewChoiceItemCount3 = 1;
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
SET @required_item_1 = 80130; 
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

update quest_template set SrcItemId = 80130, SrcItemCount = 1 where entry = @quest_entry;

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

-- Populating the area:

-- Object GUID:   4004067

delete from creature where id between 80100 and 80130;

replace into `creature` (`id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `deathstate`, `movementtype`, `spawnflags`, `visibilitymod`, `patch_min`, `patch_max`) values 
(4075, 1, 0, 0, 1836.26, 1406.97, 144.469, 3.76829, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80101, 1, 0, 152, 1843.85, 1414.34, 143.525, 5.09949, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80103, 1, 0, 16096, 1852.73, 1348.54, 142.269, 3.04066, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80103, 1, 0, 16096, 1905.75, 1383.53, 148.711, 0.66719, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80104, 1, 0, 3153, 1930.98, 1385.29, 148.817, 0.155697, 25, 25, 0, 0, 100, 100, 0, 0, 0, 0, 0, 10),
(80105, 1, 0, 3154, 1894.19, 1332.83, 144.969, 1.37806, 25, 25, 0, 0, 100, 100, 0, 0, 0, 0, 0, 10),
(80107, 1, 0, 3156, 1959.3, 1324.5, 146.361, 1.84328, 25, 25, 0, 0, 100, 100, 0, 0, 0, 0, 0, 10),
(416, 1, 0, 0, 1959.58, 1327.49, 145.946, 4.8106, 25, 25, 0, 0, 100, 100, 0, 0, 0, 0, 0, 10),
(80106, 1, 0, 3155, 1954.54, 1336.18, 147.322, 4.19833, 25, 25, 0, 0, 100, 100, 0, 0, 0, 0, 0, 10),
(80108, 1, 0, 5884, 1796.09, 1382.46, 149.459, 0.407838, 25, 25, 0, 0, 100, 100, 0, 0, 0, 0, 0, 10),
(80100, 1, 0, 51260, 1839.5, 1382.96, 146.483, 3.01878, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80111, 1, 0, 3881, 1836.99, 1412.36, 144.362, 6.00343, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80112, 1, 0, 0, 1895.66, 1449.16, 143.397, 4.09804, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80112, 1, 0, 0, 1937.52, 1361.82, 150.777, 0.436495, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80112, 1, 0, 0, 1913.79, 1344.24, 144.926, 2.59634, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80112, 1, 0, 0, 1910.56, 1390.85, 149.062, 2.21935, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80113, 1, 0, 0, 1803.18, 1433.39, 167.68, 4.17653, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80113, 1, 0, 0, 1769.97, 1366.2, 166.32, 0.0728144, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80113, 1, 0, 0, 1824.8, 1290.41, 175.783, 5.12703, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80113, 1, 0, 0, 1884.28, 1293.14, 164.385, 0.553653, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80113, 1, 0, 0, 1962.72, 1367.29, 166.305, 2.50929, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80113, 1, 0, 0, 1936.7, 1422.82, 185.585, 1.53068, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80113, 1, 0, 0, 1859.81, 1638.7, 176.119, 4.58588, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80113, 1, 0, 0, 1792.46, 1589.52, 167.665, 1.40895, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80113, 1, 0, 0, 1733.78, 1617.92, 156.729, 0.171958, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80113, 1, 0, 0, 1725.73, 1517.5, 145.287, 5.49303, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80113, 1, 0, 0, 1797.08, 1492.7, 176.016, 1.6807, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80113, 1, 0, 0, 1926.67, 1437.73, 167.078, 3.66226, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80114, 1, 0, 38, 1886.11, 1518.79, 144.826, 4.50815, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80114, 1, 0, 38, 1870.36, 1521.52, 142.919, 2.80462, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80114, 1, 0, 38, 1850.2, 1529.6, 140.65, 2.65854, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80114, 1, 0, 38, 1846.91, 1500.88, 140.958, 5.08699, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80114, 1, 0, 38, 1862.29, 1480.54, 141.527, 0.643995, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80114, 1, 0, 38, 1884.16, 1468.26, 142.898, 5.11212, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80114, 1, 0, 38, 1847.62, 1468.57, 143.245, 2.86117, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80114, 1, 0, 38, 1889.93, 1496.2, 144.553, 6.28237, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80114, 1, 0, 38, 1860.35, 1555.19, 147.251, 4.15787, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80114, 1, 0, 38, 1880.32, 1546.18, 166.643, 3.96937, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80114, 1, 0, 38, 1890.96, 1543.33, 166.871, 5.26998, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80114, 1, 0, 38, 1900.07, 1557.57, 159.388, 2.5792, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80114, 1, 0, 38, 1866.48, 1503.12, 141.085, 4.91655, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80114, 1, 0, 38, 1824.13, 1527.4, 137.412, 5.94071, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80114, 1, 0, 38, 1859.06, 1529.01, 141.835, 0.441347, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80112, 1, 0, 0, 1861.08, 1437.81, 141.712, 5.00766, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80112, 1, 0, 0, 1889.98, 1413.76, 143.65, 3.77851, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80112, 1, 0, 0, 1825.96, 1337.18, 145.636, 5.74201, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80112, 1, 0, 0, 1872.34, 1417.69, 141.428, 1.49929, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80115, 1, 0, 0, 1858, 1498.82, 140.807, 0.840344, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80115, 1, 0, 0, 1878.07, 1518.31, 143.568, 1.31865, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80115, 1, 0, 0, 1896.76, 1497.05, 146.109, 5.44121, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80115, 1, 0, 0, 1864.03, 1475.7, 141.538, 5.01159, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80115, 1, 0, 0, 1848.08, 1458.41, 143.017, 4.97547, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80115, 1, 0, 0, 1873.57, 1492.72, 141.701, 4.03535, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80115, 1, 0, 0, 1843.15, 1516.49, 139.403, 2.52424, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80115, 1, 0, 0, 1816.93, 1525.19, 137.285, 3.14863, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80115, 1, 0, 0, 1874.79, 1533.48, 144.296, 5.56452, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80115, 1, 0, 0, 1874.02, 1467.96, 141.873, 5.81192, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80115, 1, 0, 0, 1867.12, 1452.8, 143.212, 5.34775, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80116, 1, 0, 0, 1738.02, 1538.06, 130.654, 2.37674, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80116, 1, 0, 0, 1744.23, 1563.01, 136.668, 1.01721, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80116, 1, 0, 0, 1698.48, 1537.98, 121.096, 3.87999, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80116, 1, 0, 0, 1701.39, 1562.39, 132.058, 1.96833, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80116, 1, 0, 0, 1707.16, 1595.93, 135.757, 2.05394, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80116, 1, 0, 0, 1676.39, 1594.23, 138.379, 3.63573, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80116, 1, 0, 0, 1686.76, 1617.4, 136.529, 0.356693, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80116, 1, 0, 0, 1695.59, 1638.18, 139.315, 1.64789, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80116, 1, 0, 0, 1665.73, 1628.89, 143.538, 3.17942, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80116, 1, 0, 0, 1784.68, 1544.42, 135.94, 2.90845, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80117, 1, 0, 0, 1702.01, 1675.12, 138.124, 5.03453, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80117, 1, 0, 0, 1691.79, 1681.89, 140.541, 2.66812, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80117, 1, 0, 0, 1693.1, 1674.04, 138.954, 4.81227, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80117, 1, 0, 0, 1696.12, 1658.04, 138.881, 0.845226, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80117, 1, 0, 0, 1685.33, 1653.05, 140.076, 4.60414, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80120, 1, 0, 0, 1637.74, 1691.25, 144.51, 5.69768, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80118, 1, 0, 0, 1635.39, 1658.93, 148.163, 0.191462, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80118, 1, 0, 0, 1650.64, 1668.06, 145.501, 5.56594, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80118, 1, 0, 0, 1662.44, 1679.53, 144.663, 0.570809, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80118, 1, 0, 0, 1684.83, 1714.67, 143.811, 4.30852, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80118, 1, 0, 0, 1684.4, 1693.39, 144.519, 5.05779, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80118, 1, 0, 0, 1664.04, 1650.66, 144.882, 4.83945, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80118, 1, 0, 0, 1648.11, 1704.29, 145.6, 4.47396, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80119, 1, 0, 0, 1601.35, 1668.72, 165.864, 5.02531, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80119, 1, 0, 0, 1604.49, 1648.64, 159.703, 5.16589, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80119, 1, 0, 0, 1587.28, 1613.3, 167.261, 0.889398, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80119, 1, 0, 0, 1640.44, 1601.22, 168.249, 5.24365, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80119, 1, 0, 0, 1637.37, 1616.33, 166.927, 2.04944, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80119, 1, 0, 0, 1650.63, 1637.41, 149.959, 1.56406, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80119, 1, 0, 0, 1657.31, 1696.52, 150.126, 3.94774, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80119, 1, 0, 0, 1730.94, 1669.79, 156.888, 5.08579, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80119, 1, 0, 0, 1744, 1635.19, 170.082, 1.58684, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80119, 1, 0, 0, 1650.24, 1575.82, 155.855, 0.648282, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80119, 1, 0, 0, 1625.51, 1640.57, 149.826, 0.472356, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80122, 1, 0, 0, 547.771, -4595.78, 42.5796, 2.4584, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80123, 1, 0, 0, 543.767, -4591.4, 43.6736, 6.17177, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80121, 1, 0, 0, 542.451, -4609.85, 41.9945, 4.24615, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80102, 1, 0, 0, 1796.03, 1370.26, 149.137, 0.370035, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80109, 1, 0, 0, 1808.43, 1370.39, 146.76, 1.95794, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80110, 1, 0, 3161, 1801.37, 1369.84, 148.162, 1.77753, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80112, 1, 0, 0, 1861.04, 1341.04, 142.265, 6.22054, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80112, 1, 0, 0, 1869.06, 1355.98, 143.688, 1.24504, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80112, 1, 0, 0, 1874.94, 1325.37, 144.172, 1.99431, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80112, 1, 0, 0, 1887.05, 1394.17, 144.478, 0.102289, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80103, 1, 0, 16096, 1864.96, 1372.25, 143.686, 1.48537, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10),
(80112, 1, 0, 0, 1861.93, 1395.63, 140.884, 3.00652, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80113, 1, 0, 0, 1907.54, 1336.85, 145.286, 2.16261, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80113, 1, 0, 0, 1899.03, 1373.85, 146.758, 2.74772, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80113, 1, 0, 0, 1778.17, 1394.98, 160.201, 3.06581, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80113, 1, 0, 0, 1798.27, 1306.37, 162.906, 1.01436, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80113, 1, 0, 0, 1845.98, 1299.65, 164.589, 4.87459, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80113, 1, 0, 0, 1982.18, 1404.93, 169.319, 3.42396, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10),
(80113, 1, 0, 0, 1801.5, 1416.77, 166.634, 4.94763, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10);

update creature set spawntimesecsmin = 60, spawntimesecsmax = 120 where id between 80101 and 80125;
update creature set spawntimesecsmin = 1, spawntimesecsmax = 4 where id = 80100;


