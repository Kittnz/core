update item_template set inventory_type = 14, class = 4, subclass = 6 where entry = 80543;
update item_template set inventory_type = 13 where entry = 80635;
update item_template set name = 'Codex: Divine Sanction' where entry = 81012;
update item_template set display_id = 30412 where entry = 16718;
update item_template set allowable_race = -1 where entry = 19377;
update item_template set allowable_race = -1 where allowable_race = 32767;
update item_template set inventory_type = 17, class = 2, subclass = 8 where entry = 80534;
update item_template set inventory_type = 26 where entry = 80207;
update item_template set sheath = 2 where entry = 80502;
update item_template set required_level = 18 where entry = 80712;

replace into item_template values (81098, 10, 4, 0, 'Revantusk Tabard', '', 50637, 1, 0, 1, 50000, 12500, 19, -1, -1, 1, 0, 0, 0, 0, 0, 0, 893, 7, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, null);

update `item_template` set `spellid_1`='0', `spelltrigger_1`='0' where (`entry`='50440') and (`patch`='0');
UPDATE `item_template` SET `spellcooldown_1`='3600000' WHERE (`entry`='80757') AND (`patch`='0');

-- Missing HE Hunter quest:

set @quest_entry = 80366;
set @quest_zone = -261;
set @title = 'The Hunter\'s Path';
set @description = 'Hello, young ranger, you appear to be doing well. Our people struggles but we must endure, we must become more able than we were before. We Rangers were trained to protect Quel’thalas and it’s forests, but now we have to operate in entirely new environments.\n\nI believe we should look to the techniques of our allies in order to improve what remains of the Ranger Corps. There is a dwarf in Dun Morogh called Grif Wildheart, he is said to be able to bend beasts to his will, such a technique would be useful to you, see if you can learn it from him.';
set @objective = 'Speak with Grif Wildheart in Kharanos. ';
set @completetext = 'What’s this? A Bleedin’ Elf comes to learn from me? Hah, I be honored. Yes, perhaps it is time for you.';
set @incompletetext = 'Yes?';
set @faction_id = 0;
set @faction_count = 0;
set @xp_or_money = 300;
set @reward_money = 0; 
set @quest_level = 10;
set @min_level = 10;
set @questgiver_id = 80458;
set @quest_finisher = 1231;
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
nextquestinchain = @nextquestinchain, prevquestid = @prevquest,
RequiredRaces = 512, RequiredClasses = 3
where entry = @quest_entry;	

update quest_template set requiredraces = requiredraces + 512 where entry in (6064, 6074, 6075, 6076, 6084, 6085, 6086);

-- Fixed.
 replace into creature_loot_template values (12219, 80748, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (12219, 80749, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (12219, 80750, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (12219, 80751, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (12219, 80752, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (12219, 80753, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (12219, 80754, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (12219, 80755, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (12219, 80756, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (12219, 80757, 0.01, 6, 1, 1, 0, 0, 10); 

 replace into creature_loot_template values (12223, 80748, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (12223, 80749, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (12223, 80750, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (12223, 80751, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (12223, 80752, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (12223, 80753, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (12223, 80754, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (12223, 80755, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (12223, 80756, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (12223, 80757, 0.01, 6, 1, 1, 0, 0, 10); 
 
 replace into creature_loot_template values (12224, 80748, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (12224, 80749, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (12224, 80750, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (12224, 80751, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (12224, 80752, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (12224, 80753, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (12224, 80754, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (12224, 80755, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (12224, 80756, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (12224, 80757, 0.01, 6, 1, 1, 0, 0, 10); 
 
 replace into creature_loot_template values (11793, 80748, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (11793, 80749, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (11793, 80750, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (11793, 80751, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (11793, 80752, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (11793, 80753, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (11793, 80754, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (11793, 80755, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (11793, 80756, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (11793, 80757, 0.01, 6, 1, 1, 0, 0, 10);  
 
 replace into creature_loot_template values (12220, 80748, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (12220, 80749, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (12220, 80750, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (12220, 80751, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (12220, 80752, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (12220, 80753, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (12220, 80754, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (12220, 80755, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (12220, 80756, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (12220, 80757, 0.01, 6, 1, 1, 0, 0, 10); 
 
 replace into creature_loot_template values (12222, 80748, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (12222, 80749, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (12222, 80750, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (12222, 80751, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (12222, 80752, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (12222, 80753, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (12222, 80754, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (12222, 80755, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (12222, 80756, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (12222, 80757, 0.01, 6, 1, 1, 0, 0, 10); 
 
 replace into creature_loot_template values (13141, 80748, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (13141, 80749, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (13141, 80750, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (13141, 80751, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (13141, 80752, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (13141, 80753, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (13141, 80754, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (13141, 80755, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (13141, 80756, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (13141, 80757, 0.01, 6, 1, 1, 0, 0, 10); 
 
 replace into creature_loot_template values (13142, 80748, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (13142, 80749, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (13142, 80750, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (13142, 80751, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (13142, 80752, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (13142, 80753, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (13142, 80754, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (13142, 80755, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (13142, 80756, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (13142, 80757, 0.01, 6, 1, 1, 0, 0, 10); 
 
 replace into creature_loot_template values (12221, 80748, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (12221, 80749, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (12221, 80750, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (12221, 80751, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (12221, 80752, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (12221, 80753, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (12221, 80754, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (12221, 80755, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (12221, 80756, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (12221, 80757, 0.01, 6, 1, 1, 0, 0, 10); 
 
 replace into creature_loot_template values (12206, 80748, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (12206, 80749, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (12206, 80750, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (12206, 80751, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (12206, 80752, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (12206, 80753, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (12206, 80754, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (12206, 80755, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (12206, 80756, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (12206, 80757, 0.01, 6, 1, 1, 0, 0, 10); 
 
 replace into creature_loot_template values (11790, 80748, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (11790, 80749, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (11790, 80750, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (11790, 80751, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (11790, 80752, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (11790, 80753, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (11790, 80754, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (11790, 80755, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (11790, 80756, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (11790, 80757, 0.01, 6, 1, 1, 0, 0, 10); 
 
 replace into creature_loot_template values (11792, 80748, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (11792, 80749, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (11792, 80750, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (11792, 80751, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (11792, 80752, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (11792, 80753, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (11792, 80754, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (11792, 80755, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (11792, 80756, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (11792, 80757, 0.01, 6, 1, 1, 0, 0, 10); 
 
 replace into creature_loot_template values (11791, 80748, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (11791, 80749, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (11791, 80750, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (11791, 80751, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (11791, 80752, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (11791, 80753, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (11791, 80754, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (11791, 80755, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (11791, 80756, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (11791, 80757, 0.01, 6, 1, 1, 0, 0, 10); 
 
 replace into creature_loot_template values (11794, 80748, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (11794, 80748, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (11794, 80748, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (11794, 80748, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (11794, 80748, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (11794, 80748, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (11794, 80748, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (11794, 80748, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (11794, 80748, 0.01, 6, 1, 1, 0, 0, 10); 
 
 replace into creature_loot_template values (13323, 80748, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (13323, 80749, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (13323, 80750, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (13323, 80751, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (13323, 80752, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (13323, 80753, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (13323, 80754, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (13323, 80755, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (13323, 80756, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (13323, 80757, 0.01, 6, 1, 1, 0, 0, 10); 
 
 replace into creature_loot_template values (11784, 80748, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (11784, 80749, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (11784, 80750, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (11784, 80751, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (11784, 80752, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (11784, 80753, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (11784, 80754, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (11784, 80755, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (11784, 80756, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (11784, 80757, 0.01, 6, 1, 1, 0, 0, 10); 
 
 replace into creature_loot_template values (11783, 80748, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (11783, 80749, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (11783, 80750, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (11783, 80751, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (11783, 80752, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (11783, 80753, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (11783, 80753, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (11783, 80755, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (11783, 80756, 0.01, 6, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (11783, 80757, 0.01, 6, 1, 1, 0, 0, 10); 