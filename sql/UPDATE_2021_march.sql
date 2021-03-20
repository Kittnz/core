-- Goblin faction rewards:

delete from custom_mount_entry_relation where item_entry in (81190, 81191);

replace into `item_template` values (81190, 10, 15, 0, 'Red Shredder X-0524A', 'Fueled by a desire to extract and exploit the natural wonders of Azeroth.', 8902, 4, 64, 1, 9500000, 0, 0, -1, 0, 60, 60, 762, 150, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46504, 0, 0, 0, 1, 330, 3000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, null);

replace into `item_template` values (81191, 10, 15, 0, 'Green Shredder X-0524B', 'The destructive nature of goblins is best characterized by their shredders.', 8951, 4, 64, 1, 9500000, 0, 0, -1, 0, 60, 60, 762, 150, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46505, 0, 0, 0, 1, 330, 3000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, null);

update item_template set required_reputation_faction = 1001, required_reputation_rank = 7, required_skill = 202, required_skill_rank = 300, allowable_race = 256 where entry in (81190, 81191);

replace into `item_template` values (81196, 7, 9, 3, 'Schematic: Goblin Radio', '', 15274, 2, 64, 1, 35000, 8875, 0, -1, -1, 45, 0, 202, 225, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12775, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

replace into `item_template` values (10585, 0, 15, 0, 'Goblin Radio KABOOM-Box X23B76', 'Highly explosive tunes!', 22303, 3, 0, 1, 200000, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11593, 0, 0, 0, 900000, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'item_radio');

update item_template set required_reputation_faction = 1001, required_reputation_rank = 6, bonding = 1, quality = 3, description = 'Teaches you how to make a Goblin Radio.' where entry = 81196;

replace into `npc_vendor` values (80961, 81190, 0, 0, 0, 0);
replace into `npc_vendor` values (80961, 81191, 0, 0, 0, 0);
replace into `npc_vendor` values (80961, 81196, 0, 0, 0, 0);

-- Gnome faction rewards (mechaspiders):

delete from custom_mount_entry_relation where item_entry in (81192, 81193, 81194, 81195);

replace into `item_template` values (81192, 10, 15, 0, 'Black Scrapforged Mechaspider', 'Smoky, sparky, and loud.', 1221, 4, 64, 1, 9500000, 0, 0, -1, 0, 60, 60, 762, 150, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46507, 0, 0, 0, 1, 330, 3000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, null);

replace into `item_template` values (81193, 10, 15, 0, 'Blue Scrapforged Mechaspider', 'The check engine light is always on, it\'s when it goes off that you should be worried.', 1221, 4, 64, 1, 9500000, 0, 0, -1, 0, 60, 60, 762, 150, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46508, 0, 0, 0, 1, 330, 3000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, null);

replace into `item_template` values (81194, 10, 15, 0, 'Green Scrapforged Mechaspider', 'This mechaspider specializes in drilling, clamping, and shooting at the same time. A typical gnome invention.', 1221, 4, 64, 1, 9500000, 0, 0, -1, 0, 60, 60, 762, 150, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46509, 0, 0, 0, 1, 330, 3000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, null);

replace into `item_template` values (81195, 10, 15, 0, 'Red Scrapforged Mechaspider', 'Four-legged machine of destruction, for your riding pleasure.', 1221, 4, 64, 1, 9500000, 0, 0, -1, 0, 60, 60, 762, 150, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46506, 0, 0, 0, 1, 330, 3000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, null);

update item_template set required_reputation_faction = 54, required_reputation_rank = 7, required_skill = 202, required_skill_rank = 300, allowable_race = -1 where entry in (81192, 81193, 81194, 81195);

replace into `npc_vendor` values (80940, 81192, 0, 0, 0, 0);
replace into `npc_vendor` values (80940, 81193, 0, 0, 0, 0);
replace into `npc_vendor` values (80940, 81194, 0, 0, 0, 0);
replace into `npc_vendor` values (80940, 81195, 0, 0, 0, 0);

update creature_template set display_id1 = 18315 where entry = 80306;
update creature_template set display_id1 = 18316 where entry = 80307;
update creature_template set display_id1 = 18317 where entry = 80308;
update creature_template set display_id1 = 18318 where entry = 80305;
update creature_template set display_id1 = 15236, npc_flags = 7 where entry = 80961;
update creature_template set display_id1 = 8331 where entry = 50099;

-- Cleanup useless items: 

delete from item_template where name like '%[PH]%';
delete from item_template where name like '%unused%';
delete from item_template where name like '%epic%';
delete from item_template where name like '%(old)%';
delete from item_template where name like '%debug%';
delete from item_template where name like '%Deprecated%';
delete from item_template where name like '%QAEnchant%';

delete from item_template where entry in (50237, 50238, 50239, 50240, 50241, 50242);

replace into `item_template` values (11132, 0, 12, 0, 'Unused Scraping Vial', '', 20791, 1, 64, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13630, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, null);

update item_template set quality = 4 where entry = 50094;
update item_template set quality = 4 where entry = 50243;
update item_template set quality = 4 where entry = 51838;

-- Durotar Labor Union reputation repeatable quest:

set @quest_entry = 80386;
set @quest_zone = 15;
set @title = 'A gizmo a day…';
set @description = 'I never thought we’d have a fresh start, and not in my wildest dreams I’d think we’d do that under the Horde’s flag, but what do you know, here we are.\n\nWe currently are a small group of goblins that ran away with only scraps and dust in our pockets, but slowly we will make a name for ourselves, and if you want, you can be part of that.\n\nThe Labor Union grows day by day, goblins come our way to find a new meaning in life under the Horde’s gaze, but we lack both means and resources.\n\nIf you wish to be part of the Union’s future bring me a handful of Whirring Bronze Gizmos whenever you can. You will eventually get paid.';
set @objective = 'Bring 20 Whirring Bronze Gizmos to Vanessa Clang in Mudsprocket.';
set @completetext = 'Your help is appreciated, sugar, keep them coming!';
set @incompletetext = 'Got any of them ready yet?';
set @faction_id = 1001;
set @faction_count = 100;
set @xp_or_money = 465;
set @reward_money = 0; 
set @quest_level = 60;
set @min_level = 10;
set @questgiver_id = 80961;
set @quest_finisher = 80961;
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
set @required_item_1 = 4375; 
set @required_item_2 = 0;
set @required_item_3 = 0;
set @required_item_4 = 0;
set @required_item_1_count = 20;
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
specialflags = 1, requiredraces = 434, incompleteemote = 1, completeemote = 1, offerrewardemote1 = 4, offerrewardemote2 = 1  where entry = @quest_entry;	

-- Cleanup some unused creatures:

delete from creature_template where entry in (51298, 51294, 51297, 51295, 51296); -- Unused trasnmog. NPCs.

-- Misc. DB fixes:

update item_template set script_name = 'item_player_engie' where entry = 81145;

update item_template set display_id = 20629 where entry = 81151;

-- <Rats> guild creatures:

replace into `creature_template` values (81022, 0, 7094, 0, 0, 0, 'Innkeeper Gazz', 'Innkeeper', 2890, 30, 30, 1605, 1605, 0, 0, 1200, 1682, 135, 1, 1.14286, 0, 20, 5, 0, 0, 1, 42, 53, 0, 122, 1, 2000, 2000, 1, 4096, 0, 0, 0, 0, 0, 0, 45.144, 62.073, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 7733, 0, 0, 0, 0, 524298, '');

replace into `npc_vendor` values (81022, 117, 0, 0, 0, 0);
replace into `npc_vendor` values (81022, 159, 0, 0, 0, 0);
replace into `npc_vendor` values (81022, 1179, 0, 0, 0, 0);
replace into `npc_vendor` values (81022, 1205, 0, 0, 0, 0);
replace into `npc_vendor` values (81022, 1645, 0, 0, 0, 0);
replace into `npc_vendor` values (81022, 1708, 0, 0, 0, 0);
replace into `npc_vendor` values (81022, 2287, 0, 0, 0, 0);
replace into `npc_vendor` values (81022, 3770, 0, 0, 0, 0);
replace into `npc_vendor` values (81022, 3771, 0, 0, 0, 0);
replace into `npc_vendor` values (81022, 4599, 0, 0, 0, 0);
replace into `npc_vendor` values (81022, 8766, 0, 0, 0, 0);
replace into `npc_vendor` values (81022, 8952, 0, 0, 0, 0);
replace into `npc_vendor` values (81022, 18046, 0, 0, 0, 0);

replace into `creature_template` values (81023, 0, 18330, 0, 0, 0, 'Niffy Goodsteel', 'Blacksmithing Supplies', 2242, 40, 40, 3900, 3900, 0, 0, 560, 1682, 16391, 1, 1.14286, 0, 20, 5, 0, 0, 1, 61, 78, 0, 156, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 56.672, 77.924, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 5411, 0, 0, 0, 0, 10, '');

replace into `npc_vendor` values (81023, 2880, 0, 0, 0, 0);
replace into `npc_vendor` values (81023, 2901, 0, 0, 0, 0);
replace into `npc_vendor` values (81023, 3466, 0, 0, 0, 0);
replace into `npc_vendor` values (81023, 3857, 0, 0, 0, 0);
replace into `npc_vendor` values (81023, 5956, 0, 0, 0, 0);
replace into `npc_vendor` values (81023, 18567, 0, 0, 0, 0);

update creature_template set npc_flags = 4 where entry = 81023;

replace into `creature_template` values (81024, 0, 11675, 0, 0, 0, 'Sanzi Sparks', 'Gambler', 59037, 37, 37, 2192, 2192, 0, 0, 1340, 1682, 3, 1, 1.14286, 0, 20, 5, 0, 0, 1, 55, 70, 0, 144, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 53.3984, 73.4228, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 524298, 'npc_agne_gambler');

replace into `creature_template` values (81025, 0, 7180, 0, 0, 0, 'Dazzle Luckycatch', 'Fish Merchant', 0, 40, 40, 2471, 2471, 0, 0, 1890, 12, 6, 1, 1.14286, 0, 20, 5, 0, 0, 1, 61, 78, 0, 156, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 56.672, 77.924, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 1, 0, 3, 3540, 0, 0, 0, 0, 524298, '');

replace into `npc_vendor` values (81025, 787, 0, 0, 0, 0);
replace into `npc_vendor` values (81025, 4592, 0, 0, 0, 0);
replace into `npc_vendor` values (81025, 4593, 0, 0, 0, 0);
replace into `npc_vendor` values (81025, 4594, 0, 0, 0, 0);
replace into `npc_vendor` values (81025, 8957, 0, 0, 0, 0);
replace into `npc_vendor` values (81025, 21552, 0, 0, 0, 0);

update creature_template set equipment_id = 2834 where entry = 81025;

replace into `creature_template` values (81026, 0, 7179, 0, 0, 0, 'Vurtne', 'Arena Battlemaster', 0, 60, 60, 7845, 7845, 0, 0, 0, 35, 5, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 50000, 0, 0, 0, 'arena_master');

update creature_template set equipment_id = 3453 where entry = 81026;

replace into `creature_template` values (81027, 0, 7909, 0, 0, 0, 'Rozzy', 'Waitress', 0, 33, 33, 1846, 1846, 0, 0, 1200, 12, 6, 1, 1.14286, 0, 20, 5, 0, 0, 1, 46, 58, 0, 132, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 48.7872, 67.0824, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 0, 3, 2364, 0, 0, 0, 0, 524298, '');

replace into `npc_vendor` values (81027, 2593, 0, 0, 0, 0);
replace into `npc_vendor` values (81027, 2594, 0, 0, 0, 0);
replace into `npc_vendor` values (81027, 2595, 0, 0, 0, 0);
replace into `npc_vendor` values (81027, 2596, 0, 0, 0, 0);
replace into `npc_vendor` values (81027, 2723, 0, 0, 0, 0);
replace into `npc_vendor` values (81027, 4600, 0, 0, 0, 0);

update creature_template set npc_flags = 4 where entry = 81027;

REPLACE INTO `creature_template` VALUES (81028, 0, 7164, 0, 0, 0, 'Gizmax Leaprocket', 'Engineering Supplies', 2464, 24, 24, 683, 683, 0, 0, 975, 875, 5, 1.2, 1.14286, 1.15, 20, 5, 0, 0, 1, 30, 39, 0, 104, 1, 2000, 1947, 1, 512, 0, 0, 0, 0, 0, 0, 37.3824, 51.4008, 100, 7, 0, 9676, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 1, 3, 0, 0, 3, 9676, 0, 0, 0, 0, 10, '');

replace into `npc_vendor` values (81028, 2880, 0, 0, 0, 0);
replace into `npc_vendor` values (81028, 2901, 0, 0, 0, 0);
replace into `npc_vendor` values (81028, 3466, 0, 0, 0, 0);
replace into `npc_vendor` values (81028, 4357, 4, 10800, 0, 0);
replace into `npc_vendor` values (81028, 4364, 4, 10800, 0, 0);
replace into `npc_vendor` values (81028, 4382, 1, 10800, 0, 0);
replace into `npc_vendor` values (81028, 4399, 0, 0, 0, 0);
replace into `npc_vendor` values (81028, 4400, 0, 0, 0, 0);
replace into `npc_vendor` values (81028, 5956, 0, 0, 0, 0);
replace into `npc_vendor` values (81028, 10647, 0, 0, 0, 0);
replace into `npc_vendor` values (81028, 10648, 0, 0, 0, 0);

update creature_template set faction = 169 where entry in (81022, 81023, 81024, 81025, 81026, 81027, 81028);

-- Misc. DB fixes:

update item_template set spellid_1 = 46010 where name = 'Guild Tabard';
UPDATE `item_template` SET `spellcooldown_1`='3600000' WHERE (`entry`='5976') AND (`patch`='0');

UPDATE `item_template` SET `quality`='0' WHERE (`entry`='81140') AND (`patch`='0');
UPDATE `item_template` SET `spellid_1`='0' WHERE (`entry`='81140') AND (`patch`='0');

update creature_template set npc_flags = 4 where entry = 80934;
update creature_template set name = 'Innkeeper Frizzo' where entry = 80930;

delete from npc_vendor where item = 5976 and entry in (51593, 51568, 50559, 50555, 50560, 51580, 50539, 50520, 50101);

delete from creature_template where entry = 51580;

-- Thunder Bluff reputation rewards: 

REPLACE INTO `item_template` VALUES (81198, 10, 15, 0, 'Swift Thunder Bluff Kodo', 'An alpha member of the herd, this kodo is a prime example of the mighty creatures which thunder through Mulgore.', 29448, 4, 64, 1, 1000000, 0, 0, -1, 434, 40, 40, 762, 75, 0, 15, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 45044, 0, 0, 0, 1, 330, 3000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

replace into `npc_vendor` values (80948, 81198, 0, 0, 0, 0);

update item_template set required_reputation_faction = 81, required_reputation_rank = 7 where entry = 81198;

update item_template set name = 'Thunder Bluff Tabard' where entry = 80308;
update creature_template set name = 'Lansa Skyseer', subname = 'Thunder Bluff Quartermaster' where entry = 80948;

delete from item_template where entry = 80454;

UPDATE `item_template` SET `required_level`='60', `required_skill_rank`='150' WHERE (`entry`='81198') AND (`patch`='10');
UPDATE `item_template` SET `required_honor_rank`='0' WHERE (`entry`='81198') AND (`patch`='10');

replace into item_template values
 ('81199', '0', '2', '4', 'Guardian\'s Totem', '', '5415', '3', '0', '1', '35674', '8919', '21', '-1', '-1', '50',
 '45', '0', '0', '0', '0', '0', '81', '6', '0', '1', '0', '7', '10', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2600', '0',
 '0', '67', '107', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '50', '0', '0', '0',
 '0', '0', '0', '9138', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '2', '1', '0', '0', '90', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 update item_template set required_reputation_faction = 81, required_reputation_rank = 6 where entry = 81199;
 
 
 -- Updates to Dark Reaver
REPLACE INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (80937, 0, 9786, 7550, 0, 0, 'Forlorn Spirit', NULL, 0, 60, 60, 4500, 7800, 0, 0, 3327, 233, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 950, 1550, 0, 254, 1, 1800, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 6, 0, 10482, 0, 0, 0, 10, 10, 10, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 3, 0, 0, 3, 0, 0, 0, 283774619, 0, 0, '');
REPLACE INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (80936, 0, 18227, 0, 0, 0, 'Dark Reaver of Karazhan', NULL, 0, 62, 62, 520000, 550000, 18840, 18840, 5560, 73, 0, 1.1, 1.14286, 1.5, 20, 5, 0, 1, 1, 1129, 1481, 0, 284, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 203.77, 289.86, 100, 6, 0, 80936, 0, 0, 25, 25, 30, 30, 30, 30, 0, 0, 0, 0, 0, 0, 2057, 2692, '', 1, 3, 0, 0, 3, 10440, 0, 0, 1073741823, 0, 0, 'boss_dark_reaver');

-- Mortal Mode quest:

update item_template set description = 'You\'re a mortal. In this mode you only have one life and can only trade and group up with other mortal players.' where entry = 80188;

REPLACE INTO `item_template` VALUES (81200, 10, 4, 0, 'Tabard of Mortality', 'The path you chose is full of peril, thread carefully, a simple mistake will bring your journey to an end.', 60964, 1, 0, 1, 0, 0, 19, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

update item_template set quality = 1 where entry in (50010, 80188);

replace into creature_model_info values (18548, 5875, 2, 2, 0, 0, 0);

replace into `creature_template` values (81030, 0, 18548, 0, 0, 0, 'Mysterious Stranger', NULL, 0, 60, 60, 24000, 24000, 26400, 26400, 0, 35, 0, 1, 1.14286, 1.32, 20, 5, 0, 3, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 2, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 'npc_mysterious_stranger');

update creature_template set npc_flags = 2, scale = 1, rank = 0 where entry = 81030;

set @quest_entry = 80388;
set @quest_zone = -344;
set @title = 'Stay awhile and listen...';

set @description = 'Hmm, another one? Very well.\n\nYou wish to prove yourself to your people, to become the strongest, do you not? You wish to become more than just yet another fallen hero, do you not?\n\nI have an offer specifically for you.\n\nShould you accept it and endure the coming trials, you will become immortal.\n\nIf you die, you shall not return.\n\nI am only giving you this offer here and now. If you change your mind later, there is no coming back.';

set @objective = 'Complete this quest to become mortal. In this mode you only have one life and can only trade and group up with other mortal players. If you should die, you shall not return again. Customer service will not revive a fallen hero for any reason.';

set @completetext = 'Fine. Have it your way. Should you die, your soul will forever be mine.\n\nIf you survive on this path, we shall meet one day.';

set @incompletetext = 'Well then, have you decided, $c?\n\nDo you have what it takes to become... immortal? Once you start walking this path you will not be able to abandon it, it will forever dominate your destiny. Only those who undertake this path will be your help.\n\nNo mail will ever bring you good news.\n\nNo auction will take your money.';
set @faction_id = 0;
set @faction_count = 0;
set @xp_or_money = 0;
set @reward_money = 0; 
set @quest_level = 1;
set @min_level = 1;
set @questgiver_id = 81030;
set @quest_finisher = 81030;
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
rewspell = 50006, maxlevel = 1
where entry = @quest_entry;	

-- Rename old HC mode items to Turtle More items:

update item_template set name = 'Glyph of the Turtle', description = 'You lose %5 of your experience on death and you get half experience from creature kills.' where entry = 50010;
update item_template set name = 'Turtle WoW Tabard', description = 'Slow and steady.' where entry = 19160;

update creature_template set script_name = '', loot_id = 8959, skinning_loot_id = 8959, pet_spell_list_id = 5954, ai_name = 'EventAI', spell_id1 = 16460, spell_list_id = 0 where entry = 80259;
REPLACE INTO `creature` VALUES (2558385,80259,0,0,0,-11183.3,-1996.48,47.0739,6.14454,300,360,5,0,100,0,0,1,0,0,0,10),(2558384,80259,0,0,0,-11162.8,-2083.55,48.0452,0.31139,300,360,5,0,100,0,0,1,0,0,0,10),(2558383,80259,0,0,0,-10475.9,-2142.27,90.7802,1.1659,300,360,5,0,100,0,0,1,0,0,0,10);

replace into spell_bonus_data (entry, direct_bonus) values (16559, 1);
replace into `spell_area` (`spell`, `area`) VALUES (18173, 2677);

-- Delete obsolte items:

delete from item_template where entry = 80188;
delete from item_template where entry = 81200;

update creature_loot_template set ChanceOrQuestChance = 20 where item = 9259;

update item_template set display_id = 6430 where entry = 50004;

-- Misc. stuff:

delete from creature_template where entry = 80967;

REPLACE INTO `item_template` VALUES (80314, 10, 4, 0, 'Undead Scourge Tabard', '', 40015, 1, 0, 1, 50000, 12500, 19, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

delete from item_template where entry = 81078;
delete from item_template where entry = 51838;
delete from item_template where entry = 12947;
delete from item_template where entry = 6724;
delete from item_template where entry = 6728;
delete from item_template where entry = 6708;
delete from item_template where entry = 6711;
delete from item_template where entry = 6698;
delete from item_template where entry = 20221;
delete from item_template where entry = 16338;
delete from item_template where entry = 80450;
delete from item_template where entry = 23728;
delete from item_template where entry = 17412;
delete from item_template where entry = 16343;
delete from item_template where entry = 901;
delete from item_template where entry = 16344;

update item_template set display_id = 7694, name = 'Glyph of Diplomacy' where entry = 50012;

REPLACE INTO `item_template` VALUES (50089, 10, 4, 0, 'Dalaran Tabard', '', 10643, 1, 0, 1, 50000, 12500, 19, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

-- Mortal mode stuff:
 
replace into `mangos_string` (`entry`, `content_default`) VALUES 
(50300, 'A tragedy has occurred. Hardcore character %s has fallen in combat at level %u. May this sacrifice not be forgotten.'),
(50301, '%s has reached level %u in Hardcore mode! Their ascendance towards immortality continues, however, so do the dangers they will face.'),
(50302, '%s has transcended death and reached level 60 on Hardcore mode without dying once! %s shall henceforth be known as the Immortal!');

-- Misc. stuff:

update item_template set display_id = 60898 where entry = 81057;
update item_template set display_id = 60948 where entry = 80187;

REPLACE INTO `item_template` VALUES (81200, 10, 4, 0, 'Explorer\'s Tabard', '', 60963, 1, 0, 1, 50000, 12500, 19, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

REPLACE INTO `item_template` VALUES (81201, 10, 4, 0, 'Mag\'har Tabardd', '', 60948, 1, 0, 1, 50000, 12500, 19, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

REPLACE INTO `item_template` VALUES (81202, 10, 4, 0, 'Moro\'gai Tabard', '', 60949, 1, 0, 1, 50000, 12500, 19, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

REPLACE INTO `item_template` VALUES (81203, 10, 4, 0, 'Violet Eye Tabard', '', 60950, 1, 0, 1, 50000, 12500, 19, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

REPLACE INTO `item_template` VALUES (81204, 10, 4, 0, 'Illidari Tabard', '', 60951, 1, 0, 1, 50000, 12500, 19, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

REPLACE INTO `item_template` VALUES (81205, 10, 4, 0, 'Explorer\'s Tabard', '', 60963, 1, 0, 1, 50000, 12500, 19, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

update creature_template set display_id1 = 18546 where entry = 80959;
update creature_template set display_id1 = 18514 where entry = 80948;
update creature_template set display_id1 = 18550 where entry = 80961;
update creature_template set display_id1 = 18551 where entry = 80995;

REPLACE INTO `item_template` VALUES (81206, 0, 0, 0, 'Skin Change Token: Dark Ranger', '', 30658, 2, 0, 1, 0, 0, 0, -1, 512, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12244, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'item_skin_change');

update item_template set display_id = 30658, quality = 1 where entry in (50207, 50208, 50205, 51010, 50206, 50210, 51011, 50212, 50209, 50211, 50105);

update item_template set name = 'Skin Change Token: Blackrock Clan' where entry = 50207;
update item_template set name = 'Skin Change Token: Chaos Orc' where entry = 50208;
update item_template set name = 'Skin Change Token: Dark Iron Dwarf' where entry = 50205;
update item_template set name = 'Skin Change Token: Dark Troll' where entry = 51010;
update item_template set name = 'Skin Change Token: Earthen Dwarf' where entry = 50206;
update item_template set name = 'Skin Change Token: Forest Troll' where entry = 50210;
update item_template set name = 'Skin Change Token: Ice Troll' where entry = 51011;
update item_template set name = 'Skin Change Token: Leper Gnome' where entry = 50212;
update item_template set name = 'Skin Change Token: Mag\'Har Clan' where entry = 50209;
update item_template set name = 'Skin Change Token: Sandfury Troll' where entry = 50211;
update item_template set name = 'Skin Change Token: Sally Whitemane' where entry = 50105;
update item_template set name = 'Skin Change Token: Scholomance Student' where entry = 50106;

update item_template set description = 'This noble gryphon is as staunch a battle companion as any a member of the Alliance could ask for.' where entry = 81186;

update item_template set display_id = 37425 where entry in (81185, 81186);
update item_template set display_id = 9854 where entry = 10711;
update item_template set display_id = 8668 where entry = 1981;

replace into item_template (entry, class, subclass, name, description, display_id, quality, bonding, spellid_1, spellcooldown_1) values
(81207, 15, 2, 'Whimsyshire Cloud', 'It\'s moon is changing like a wind!', 60888, 2, 1, 28505, 1500);
replace into creature_template (entry, display_id1, display_id2, display_id3, display_id4, name, subname, level_min, level_max, health_min, health_max, faction, script_name, scale) values
(81031, 18527, 18524, 18523, 18526,  'Whimsyshire Cloud', '', '1', '1', '64', '64', '35', '', 0.4);
replace into custom_pet_entry_relation (item_entry, creature_entry) values 
(81207, 81031);

update item_template set buy_price = 530, sell_price = 130 where entry = 40000;

replace into creature_model_info values (18500, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18501, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18502, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18503, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18504, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18505, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18506, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18507, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18508, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18509, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18510, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18511, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18512, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18513, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18514, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18515, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18516, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18517, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18518, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18519, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18520, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18521, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18522, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18523, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18524, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18525, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18526, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18527, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18528, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18529, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18530, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18531, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18532, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18533, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18534, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18535, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18536, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18537, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18538, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18539, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18540, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18541, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18542, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18543, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18544, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18545, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18546, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18547, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18548, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18549, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18550, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18551, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18552, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18553, 5875, 2, 2, 0, 0, 0);

replace into creature_equip_template (entry, equipentry1) values (80460, 20536);
replace into creature_equip_template (entry, equipentry1) values (80461, 81072);

REPLACE INTO `creature_template` VALUES (81033, 0, 7192, 0, 0, 0, 'Naznik Sharpshear', 'Goblin\'s Plastic Surgeon', 0, 30, 30, 1605, 1605, 0, 0, 1200, 35, 1, 1.08, 1.14286, 0, 20, 5, 0, 0, 1, 42, 53, 0, 122, 1, 1000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 45.144, 62.073, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 100, 0, 0, 10, 'npc_surgeon_go');
REPLACE INTO `creature_template` VALUES (81034, 0, 7909, 0, 0, 0, 'Bebri Coifcurl', 'Goblin\'s Barber', 0, 30, 30, 1605, 1605, 0, 0, 1200, 35, 1, 1.08, 1.14286, 0, 20, 5, 0, 0, 1, 42, 53, 0, 122, 1, 1000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 45.144, 62.073, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 100, 0, 0, 10, 'npc_barber_go');

update creature_template set name = 'Joseph Dalton' where entry = 50028;

update item_template set name = 'Raid Management: Purple Rune', display_id = 20794 where entry = 51410;
update item_template set name = 'Raid Management: Green Rune', display_id = 20895 where entry = 51411;
update item_template set name = 'Raid Management: Blue Rune', display_id = 20608 where entry = 51412;

update creature_template set level_min = 65, level_max = 65, health_min = 14263, health_max = 14263, armor = 4292, dmg_min = 480, dmg_max = 520, rank = 1 where entry in (1423, 1642, 853, 727, 3571, 12160, 5952, 3297, 5953, 68, 1976, 3296, 5624, 3084, 4262, 5595);
update creature_template set level_min = 65, level_max = 65, health_min = 14263, health_max = 14263, armor = 4292, dmg_min = 480, dmg_max = 520, rank = 1 where entry in (select entry from creature_template where name like 'Brave %');
update creature_template set level_min = 65, level_max = 65, health_min = 14263, health_max = 14263, armor = 4292, dmg_min = 480, dmg_max = 520, rank = 1 where entry in (select entry from creature_template where name like 'Deathguard %');

REPLACE INTO creature_template (entry, patch, display_id1, display_id2, display_id3, display_id4, name, subname, gossip_menu_id, level_min, level_max, health_min, health_max, mana_min, mana_max, armor, faction, npc_flags, speed_walk, speed_run, scale, detection_range, call_for_help_range, leash_range, rank, xp_multiplier, dmg_min, dmg_max, dmg_school, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, unit_class, unit_flags, dynamic_flags, beast_family, trainer_type, trainer_spell, trainer_class, trainer_race, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, type_flags, loot_id, pickpocket_loot_id, skinning_loot_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spell_id1, spell_id2, spell_id3, spell_id4, spell_list_id, pet_spell_list_id, gold_min, gold_max, ai_name, movement_type, inhabit_type, civilian, racial_leader, regeneration, equipment_id, trainer_id, vendor_id, mechanic_immune_mask, school_immune_mask, flags_extra, script_name) VALUES

(81041, 0, 18544, 0, 0, 0, 'Kheyna Spinpistol', 'Medic', 0, 60, 60, 24182, 24182, 12364, 12364, 6340, 35, 3, 1, 1.14286, 0.9, 30, 5, 0, 0, 1, 1255, 1370, 0, 3844, 1, 1300, 1300, 1, 4608, 0, 0, 0, 0, 0, 0, 53.3984, 73.4228, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 524298, ''),
 (81042, 0, 18448, 0, 0, 0, 'Loania', '', 0, 37, 37, 2192, 2192, 0, 0, 1340, 35, 3, 1, 1.14286, 0, 20, 5, 0, 0, 1, 55, 70, 0, 144, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 53.3984, 73.4228, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 524298, ''),
 (81043, 0, 18447, 0, 0, 0, 'Lieren', '', 0, 37, 37, 2192, 2192, 0, 0, 1340, 35, 3, 1, 1.14286, 0, 20, 5, 0, 0, 1, 55, 70, 0, 144, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 53.3984, 73.4228, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 524298, ''),
 (81044, 0, 16777, 0, 0, 0, 'Voldana', '', 0, 37, 37, 2192, 2192, 0, 0, 1340, 35, 3, 1, 1.14286, 0, 20, 5, 0, 0, 1, 55, 70, 0, 144, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 53.3984, 73.4228, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 524298, ''),
(81045, 0, 18545, 0, 0, 0, 'Julia of Dalaran', 'Mage', 0, 37, 37, 2192, 2192, 0, 0, 1340, 35, 3, 1, 1.14286, 0, 20, 5, 0, 0, 1, 55, 70, 0, 144, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 53.3984, 73.4228, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 524298, ''),
(81046, 0, 18502, 0, 0, 0, 'Inunquaq', '', 0, 37, 37, 2192, 2192, 0, 0, 1340, 35, 3, 1, 1.14286, 0, 20, 5, 0, 0, 1, 55, 70, 0, 144, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 53.3984, 73.4228, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 524298, ''),
 (81047, 0, 18224, 0, 0, 0, 'Lanissa', 'Dark Ranger', 0, 37, 37, 2192, 2192, 0, 0, 1340, 35, 16, 1, 1.14286, 0, 20, 5, 0, 0, 1, 55, 70, 0, 144, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 53.3984, 73.4228, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 524298, ''),
 (81048, 0,  18495 , 0, 0, 0, 'Time Rift', '', 0, 37, 37, 2192, 2192, 0, 0, 1340, 35, 16, 1, 1.14286, 0, 20, 5, 0, 0, 1, 55, 70, 0, 144, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 53.3984, 73.4228, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 524298, ''),
 
 -- TODO: Level: 60 - Runspeed: 1.2 - Walkspeed: 0.5 - Attackspeed 0.8
 (81049, 0,  18449 , 0, 0, 0, 'Strigoi', '', 0, 60, 60, 21192, 21192, 0, 0, 1340, 21, 16, 1, 1.14286, 0, 20, 5, 0, 0, 1, 55, 70, 0, 144, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 53.3984, 73.4228, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 524298, ''),
 (81050, 0,  18224 , 0, 0, 0, 'Dark Ranger Lanissa', 'Hunter Trainer', 0, 24, 24, 21192, 21192, 0, 0, 1340, 68, 16, 1, 1.14286, 0, 20, 5, 0, 0, 1, 55, 70, 0, 144, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 53.3984, 73.4228, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 524298, '');
 
 update creature_template set equipment_id = 80461 where entry = 81041;
 
 replace into creature_model_info values (18544, 5875, 2, 2, 0, 0, 0);
 replace into creature_model_info values (18477, 5875, 2, 2, 0, 0, 0);
 replace into creature_model_info values (18478, 5875, 2, 2, 0, 0, 0);
 replace into creature_model_info values (16777, 5875, 2, 2, 0, 0, 0);
 replace into creature_model_info values (18545, 5875, 2, 2, 0, 0, 0);
 replace into creature_model_info values (18503, 5875, 2, 2, 0, 0, 0);
 replace into creature_model_info values (18224, 5875, 2, 2, 0, 0, 0);
 replace into creature_model_info values (18449, 5875, 2, 2, 0, 0, 0);
 
 replace into creature_model_info values (18447, 5875, 2, 2, 0, 0, 0);
 replace into creature_model_info values (18448, 5875, 2, 2, 0, 0, 0);
 replace into creature_model_info values (18502, 5875, 2, 2, 0, 0, 0);
 replace into creature_model_info values (18495 , 5875, 2, 2, 0, 0, 0);

update creature_template set npc_flags = 0 where entry between 81041 and 81047;

update item_template set spellid_1 = 46443 where entry = 81100;

delete from creature_template where entry = 50656;
delete from custom_mount_entry_relation where item_entry = 81100;

REPLACE INTO `creature_template` VALUES (81100, 0, 18180, 0, 0, 0, 'Raven Lord', '', 0, 1, 1, 64, 64, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, '');

update creature set position_x = 1782.63, position_y = 1328.57, position_z =144.812, orientation = 1.08393 where guid = 2561359;

update quest_template set maxlevel = 0 where entry = 60119;

replace into item_template values
 ('81211', '0', '4', '2', 'Boots of Anvilmar', '', '50174', '2', '0', '1', '1134', '1134', '8', '-1', '-1', '29',
 '23', '0', '0', '0', '0', '0', '47', '5', '0', '1', '0', '4', '7', '3', '4',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '64', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '45', '0', '0', '0', '0', '5', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('81212', '0', '4', '2', 'Tunic of Anvilmar', '', '50173', '2', '0', '1', '2316', '2316', '5', '-1', '-1', '30',
 '26', '0', '0', '0', '0', '0', '47', '5', '0', '1', '0', '7', '9', '3', '7',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '96', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '95', '0', '0', '0', '0', '5', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('81213', '0', '4', '2', 'Pants of Anvilmar', '', '50175', '2', '0', '1', '3245', '3245', '7', '-1', '-1', '34',
 '29', '0', '0', '0', '0', '0', '47', '5', '0', '1', '0', '4', '7', '3', '8',
 '7', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '88', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '65', '0', '0', '0', '0', '5', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('81214', '0', '4', '2', 'Girdle of Anvilmar', '', '50176', '2', '0', '1', '1834', '1834', '6', '-1', '-1', '25',
 '20', '0', '0', '0', '0', '0', '47', '5', '0', '1', '0', '4', '4', '0', '0',
 '7', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '50', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '35', '0', '0', '0', '0', '5', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('81215', '0', '4', '2', 'Armguards of Anvilmar', '', '50177', '2', '0', '1', '3543', '3543', '10', '-1', '-1', '35',
 '27', '0', '0', '0', '0', '0', '47', '5', '0', '1', '0', '4', '8', '0', '0',
 '3', '9', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '30', '0', '0', '0', '0', '5', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('81216', '0', '4', '2', 'Fur-Lined Orcish Helm', '', '40086', '2', '0', '1', '1763', '1763', '1', '-1', '-1', '30',
 '25', '0', '0', '0', '0', '0', '76', '5', '0', '1', '0', '4', '9', '3', '6',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '75', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '50', '0', '0', '0', '0', '4', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('81217', '0', '4', '3', 'Protective Orcish Helm', '', '40088', '2', '0', '1', '2230', '2230', '1', '-1', '-1', '30',
 '25', '0', '0', '0', '0', '0', '76', '5', '0', '1', '0', '7', '9', '4', '6',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '162', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '60', '0', '0', '0', '0', '5', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('81218', '0', '4', '2', 'Chieftain\'s Ceremonial Harness', '', '60869', '2', '0', '0', '85412', '85412', '5', '-1', '-1', '60',
 '55', '0', '0', '0', '0', '0', '81', '6', '0', '1', '0', '4', '16', '7', '17',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '155', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '85', '0', '0', '0', '0', '10', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('81219', '0', '4', '2', 'Chieftain\'s Ceremonial Anklewraps', '', '60870', '2', '0', '0', '64912', '64912', '8', '-1', '-1', '56',
 '51', '0', '0', '0', '0', '0', '81', '6', '0', '1', '0', '5', '11', '3', '14',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '102', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '45', '0', '0', '0', '0', '10', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('81220', '0', '4', '2', 'Chieftain\'s Ceremonial Legwraps', '', '60871', '2', '0', '0', '37612', '37612', '7', '-1', '-1', '46',
 '41', '0', '0', '0', '0', '0', '81', '6', '0', '1', '0', '4', '15', '6', '7',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '109', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '65', '0', '0', '0', '0', '8', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('81221', '0', '4', '2', 'Chieftain\'s Ceremonial Belt', '', '60872', '2', '0', '0', '49200', '49200', '6', '-1', '-1', '60',
 '55', '0', '0', '0', '0', '0', '81', '6', '0', '1', '0', '3', '10', '7', '18',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '88', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '35', '0', '0', '0', '0', '10', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('81222', '0', '4', '2', 'Chieftain\'s Ceremonial Handwraps', '', '60873', '2', '0', '0', '37612', '37612', '10', '-1', '-1', '54',
 '48', '0', '0', '0', '0', '0', '81', '6', '0', '1', '0', '4', '7', '7', '19',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '88', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '35', '0', '0', '0', '0', '9', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('81223', '0', '4', '2', 'Chieftain\'s Ceremonial Headdress', '', '40205', '3', '0', '0', '203467', '203467', '1', '-1', '-1', '64',
 '60', '0', '0', '0', '0', '0', '81', '7', '0', '1', '0', '5', '7', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '155', '0', '0', '0',
 '0', '0', '0', '7560', '1', '0', '0', '-1', '0', '-1', '23727', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '65', '0', '0', '0', '0', '49', '0', '0', '0',
 '0', '1', NULL);
 
UPDATE `map_template` SET `map_type`='0' WHERE (`entry`='37') AND (`patch`='0');

SET @gossip_menu_id = 90671;
SET @magic_number = 81030;
replace into gossip_menu (entry, text_id) VALUES (65535, @magic_number); 
replace into broadcast_text (ID, MaleText) values (@magic_number, 'Well, well, now you got business with me? Too little too late.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = 65535 where entry = @magic_number;


update spell_template SET attributesEx3 = 131072 WHERE entry = 5143 OR entry = 5144 OR entry = 5145 OR entry = 8416 OR entry = 8417 OR entry = 10211 OR entry = 10212 OR entry = 25345; 

update item_template set item_level = 22 where entry = 80803;

replace into `map_template` (`entry`, `map_name`) VALUES ('49', 'Quel\'Thalas Cut Scene');
replace into `map_template` (`entry`, `map_name`) VALUES ('50', 'Silvermoon City Raid');

UPDATE `item_template` SET `class`='4', `subclass`='0', `inventory_type`='23' WHERE (`entry`='80785') AND (`patch`='0');
UPDATE `item_template` SET `inventory_type`='15' WHERE (`entry`='80825') AND (`patch`='0');

replace into item_template values
 ('81225', '0', '15', '0', 'Basic Guide on Necromancy', '101 Ways to Raise a Skeleton.', '8092', '3', '0', '1', '0', '1845', '23', '-1', '-1', '30',
 '25', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '8853', '0', '0', '0', '900000', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '2', '0', '0', '0', '0', '0', '7', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 REPLACE INTO `creature_template` VALUES (80967, 0, 18135, 0, 0, 0, 'Lord Darkhallow', 'Scourge Quartermaster', 0, 11, 11, 456, 456, 0, 0, 20, 21, 16388, 1.1, 1.14286, 0, 20, 5, 0, 0, 1, 12, 14, 0, 64, 1, 2000, 2090, 1, 4864, 0, 0, 0, 0, 0, 0, 18.392, 25.289, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 524298, '');


-- ----------------------------
-- Table structure for `variables`
-- ----------------------------
DROP TABLE IF EXISTS `variables`;
CREATE TABLE `variables` (
  `index` int(10) unsigned NOT NULL DEFAULT 0,
  `value` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`index`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of variables
-- ----------------------------
INSERT INTO `variables` VALUES ('12', '1595378403');
INSERT INTO `variables` VALUES ('13', '1595378403');
INSERT INTO `variables` VALUES ('10', '440');
INSERT INTO `variables` VALUES ('11', '4');
INSERT INTO `variables` VALUES ('14', '0');
INSERT INTO `variables` VALUES ('15', '0');
INSERT INTO `variables` VALUES ('16', '0');
INSERT INTO `variables` VALUES ('17', '0');
INSERT INTO `variables` VALUES ('18', '0');
INSERT INTO `variables` VALUES ('19', '0');
INSERT INTO `variables` VALUES ('20', '0');
INSERT INTO `variables` VALUES ('21', '0');
INSERT INTO `variables` VALUES ('22', '0');
INSERT INTO `variables` VALUES ('23', '0');
INSERT INTO `variables` VALUES ('30002', '0');
INSERT INTO `variables` VALUES ('30054', '1603586531');
INSERT INTO `variables` VALUES ('30050', '5');
INSERT INTO `variables` VALUES ('30016', '1603585473');
INSERT INTO `variables` VALUES ('30017', '3');
INSERT INTO `variables` VALUES ('30012', '7');
INSERT INTO `variables` VALUES ('30008', '5');
INSERT INTO `variables` VALUES ('30020', '3');
INSERT INTO `variables` VALUES ('30015', '18');
INSERT INTO `variables` VALUES ('30011', '5');
INSERT INTO `variables` VALUES ('30019', '3');
INSERT INTO `variables` VALUES ('30014', '0');
INSERT INTO `variables` VALUES ('30010', '4');
INSERT INTO `variables` VALUES ('30018', '3');
INSERT INTO `variables` VALUES ('30013', '2');
INSERT INTO `variables` VALUES ('30009', '5');
INSERT INTO `variables` VALUES ('2318', '30000');
INSERT INTO `variables` VALUES ('30032', '100000');
INSERT INTO `variables` VALUES ('1251', '100000');
INSERT INTO `variables` VALUES ('6450', '100000');
INSERT INTO `variables` VALUES ('3575', '14000');
INSERT INTO `variables` VALUES ('2447', '12000');
INSERT INTO `variables` VALUES ('30027', '4340');
INSERT INTO `variables` VALUES ('13935', '2500');
INSERT INTO `variables` VALUES ('2319', '27500');
INSERT INTO `variables` VALUES ('30028', '13340');
INSERT INTO `variables` VALUES ('12359', '12000');
INSERT INTO `variables` VALUES ('8836', '10000');
INSERT INTO `variables` VALUES ('30033', '100000');
INSERT INTO `variables` VALUES ('3820', '5500');
INSERT INTO `variables` VALUES ('30026', '4340');
INSERT INTO `variables` VALUES ('30029', '13340');
INSERT INTO `variables` VALUES ('8544', '41680');
INSERT INTO `variables` VALUES ('30024', '15000');
INSERT INTO `variables` VALUES ('3576', '5500');
INSERT INTO `variables` VALUES ('3860', '9000');
INSERT INTO `variables` VALUES ('8170', '15000');
INSERT INTO `variables` VALUES ('3530', '41680');
INSERT INTO `variables` VALUES ('5095', '2340');
INSERT INTO `variables` VALUES ('12210', '5000');
INSERT INTO `variables` VALUES ('30030', '5680');
INSERT INTO `variables` VALUES ('1', '0');
INSERT INTO `variables` VALUES ('0', '0');
INSERT INTO `variables` VALUES ('30025', '15000');
INSERT INTO `variables` VALUES ('4234', '15000');
INSERT INTO `variables` VALUES ('4625', '4760');
INSERT INTO `variables` VALUES ('30031', '5680');
INSERT INTO `variables` VALUES ('12209', '1680');
INSERT INTO `variables` VALUES ('30022', '0');
INSERT INTO `variables` VALUES ('30023', '1');
INSERT INTO `variables` VALUES ('30021', '1603633121');
INSERT INTO `variables` VALUES ('2313', '26');
INSERT INTO `variables` VALUES ('2314', '0');
INSERT INTO `variables` VALUES ('2317', '200');
INSERT INTO `variables` VALUES ('30051', '1603912309');
INSERT INTO `variables` VALUES ('30053', '1');
INSERT INTO `variables` VALUES ('30052', '1604007207');
INSERT INTO `variables` VALUES ('30055', '5');

UPDATE `item_template` SET `description`='You lose 5% of your experience on death and you get half experience from creature kills.' WHERE (`entry`='50010') AND (`patch`='0');

delete from creature_loot_template where entry = 80936;

-- Siege Golem Rare Items
replace into item_template values
 ('51758', '0', '4', '0', 'Siege Golem Core', 'Seems unstable.', '20984', '2', '0', '1', '3467', '3467', '12', '-1', '-1', '42',
 '37', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '6', '-2', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0', '-7',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '2', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '26', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('51759', '0', '2', '3', 'Siege Bomber', 'Comes with an underbarrel bomb launcher.', '20728', '2', '0', '1', '8976', '8976', '26', '-1', '-1', '42',
 '37', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2800', '100',
 '3', '36', '68', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '4069', '5', '0', '0', '18000', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '2', '0', '0', '0', '0', '0', '1', '0', '0', '0', '65', '0', '0', '0', '0', '26', '0', '0', '0',
 '0', '1', NULL);
replace into creature_loot_template values (2749, 51758, 30, 6, 1, 1, 0, 0, 10);
replace into creature_loot_template values (2749, 51759, 70, 6, 1, 1, 0, 0, 10);
 -- Shadowforge Commander Rare Items
 replace into item_template values
 ('51760', '0', '4', '0', 'Marksman\'s Band', '', '9836', '2', '65536', '1', '2962', '2962', '11', '-1', '-1', '42',
 '37', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '7', '6', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '21432', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '2', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '26', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('51761', '0', '4', '4', 'Shadowforge Runed Gauntlets', '', '33047', '2', '0', '1', '2608', '2608', '10', '-1', '-1', '42',
 '40', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '5', '7', '9',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '212', '0', '0', '0',
 '0', '0', '0', '9395', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '2', '0', '0', '0', '0', '0', '6', '1', '0', '0', '40', '0', '0', '0', '0', '26', '0', '0', '0',
 '0', '1', NULL);
replace into creature_loot_template values (2744, 51760, 50, 6, 1, 1, 0, 0, 10);
replace into creature_loot_template values (2744, 51761, 50, 6, 1, 1, 0, 0, 10);
 -- Shleipnarr Rare Items
 replace into item_template values
 ('51762', '0', '4', '1', 'Blazerunner Boots', '', '24054', '2', '0', '1', '6832', '6832', '8', '-1', '-1', '49',
 '44', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '11', '6', '-5',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '44', '0', '0', '0',
 '0', '0', '0', '9294', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '2', '0', '0', '0', '0', '0', '7', '1', '0', '0', '35', '0', '0', '0', '0', '27', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('51763', '0', '4', '2', 'Burnout Leggings', '', '14730', '2', '0', '1', '11568', '11568', '8', '-1', '-1', '49',
 '44', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '16', '7', '14',
 '6', '-10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '114', '0', '0', '0',
 '0', '0', '0', '65', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '2', '0', '0', '0', '0', '0', '8', '1', '0', '0', '65', '0', '0', '0', '0', '27', '0', '0', '0',
 '0', '1', NULL);
replace into creature_loot_template values (2744, 51762, 50, 4, 1, 1, 0, 0, 10);
replace into creature_loot_template values (2744, 51763, 50, 4, 1, 1, 0, 0, 10);
 -- Highlord Mastrogonde Rare Items
 replace into item_template values
 ('51764', '0', '2', '10', 'Staff of Spreading Twilight', '', '5928', '3', '0', '1', '41165', '41165', '17', '-1', '-1', '53',
 '48', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '18', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2900', '0',
 '0', '106', '160', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '9413', '1', '0', '0', '-1', '0', '-1', '21364', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '2', '0', '0', '0', '0', '0', '0', '2', '0', '0', '100', '0', '0', '0', '0', '46', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('51765', '0', '4', '3', 'Highlord\'s Grasp', '', '27287', '3', '0', '1', '9753', '9753', '10', '-1', '-1', '53',
 '48', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '11', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '198', '0', '0', '0',
 '0', '0', '0', '9335', '1', '0', '0', '-1', '0', '-1', '9417', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '2', '0', '0', '0', '0', '0', '6', '1', '0', '0', '40', '0', '0', '0', '0', '46', '0', '0', '0',
 '0', '1', NULL);
replace into creature_loot_template values (8282, 51764, 50, 6, 1, 1, 0, 0, 10);
replace into creature_loot_template values (8282, 51765, 50, 6, 1, 1, 0, 0, 10);
update item_template set spellid_1 = 23727 where entry = 19120;
 -- Tamra Stormpike Rare Items
 replace into item_template values
 ('51790', '0', '2', '6', 'Stormpike', '', '22233', '2', '0', '1', '5982', '5982', '17', '-1', '-1', '30',
 '25', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3200', '0',
 '0', '51', '78', '0', '2', '5', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '17144', '2', '0', '3', '600', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '2', '0', '0', '0', '0', '0', '1', '2', '0', '0', '85', '0', '0', '0', '0', '23', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('51791', '0', '4', '2', 'Mountaineer\'s Boots', '', '12788', '2', '0', '1', '1809', '1809', '8', '-1', '-1', '31',
 '25', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '3', '4', '4',
 '7', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '64', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '2', '0', '0', '0', '0', '0', '8', '1', '0', '0', '45', '0', '0', '0', '0', '4', '0', '0', '0',
 '0', '1', NULL);
replace into creature_loot_template values (14275, 51790, 35, 6, 1, 1, 0, 0, 10);
replace into creature_loot_template values (14275, 51791, 65, 6, 1, 1, 0, 0, 10);
 -- Tamamo Quest Rewards
 replace into item_template values
 ('51766', '0', '2', '8', 'Greatblade of Quel\'Danil', '', '60753', '2', '0', '1', '28154', '28154', '17', '-1', '-1', '49',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '10', '3', '10',
 '7', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3700', '0',
 '0', '112', '169', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '1', '0', '0', '85', '0', '0', '0', '0', '27', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('51767', '0', '2', '15', 'Dagger of Quel\'Danil', '', '60715', '2', '0', '1', '19865', '19865', '21', '-1', '-1', '49',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '6', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2300', '0',
 '0', '47', '87', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '9397', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '3', '0', '0', '45', '0', '0', '0', '0', '27', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('51768', '0', '2', '2', 'Bow of Quel\'Danil', '', '40064', '2', '0', '1', '15931', '15931', '15', '-1', '-1', '49',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '4', '7', '4',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2100', '100',
 '2', '32', '59', '0', '2', '4', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '2', '0', '0', '0', '65', '0', '0', '0', '0', '27', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('51792', '0', '4', '1', 'Otherwordly Robe', 'This robe has runes you\'ve never seen before enblazoned on it, and the way it is woven is almost as if it from another world!', '37046', '2', '0', '1', '433', '433', '5', '-1', '-1', '19',
 '13', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '4', '7', '4',
 '6', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '32', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '55', '0', '0', '0', '0', '1', '0', '0', '0',
 '0', '1', NULL);
 -- Dark Reaver of Karazhan Revamped Loottable
 replace into item_template values
 ('51769', '0', '4', '4', 'Crown of the Dark Reaver', '', '40191', '4', '0', '1', '25443', '25454', '1', '-1', '-1', '66',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '16', '7', '25',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '608', '0', '0', '0',
 '0', '10', '0', '7597', '1', '0', '0', '-1', '0', '-1', '15464', '1', '0', '0', '-1', '0', '-1', '13387', '1',
 '0', '0', '-1', '0', '-1', '20885', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '1', '0', '0', '100', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('51770', '0', '4', '4', 'Shoulderguards of the Dark Reaver', '', '50171', '4', '0', '1', '27457', '27457', '3', '-1', '-1', '66',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '15', '7', '18',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '561', '0', '0', '0',
 '0', '7', '0', '7597', '1', '0', '0', '-1', '0', '-1', '21348', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '1', '0', '0', '100', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('51771', '0', '4', '4', 'Chestplate of the Dark Reaver', '', '50135', '4', '0', '1', '37243', '37243', '5', '-1', '-1', '66',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '18', '7', '30',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '749', '0', '0', '0',
 '0', '8', '6', '13665', '1', '0', '0', '-1', '0', '-1', '13387', '1', '0', '0', '-1', '0', '-1', '20885', '1',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '1', '0', '0', '165', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('51772', '0', '4', '4', 'Grasp of the Dark Reaver', '', '50139', '4', '0', '1', '17480', '17480', '10', '-1', '-1', '66',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '14', '7', '20',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '468', '0', '0', '0',
 '0', '0', '8', '21474', '1', '0', '0', '-1', '0', '-1', '7597', '1', '0', '0', '-1', '0', '-1', '21347', '1',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '1', '0', '0', '55', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('51773', '0', '4', '4', 'Girdle of the Dark Reaver', '', '50138', '4', '0', '1', '18054', '18054', '6', '-1', '-1', '66',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '16', '7', '20',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '421', '0', '0', '0',
 '0', '4', '6', '15464', '1', '0', '0', '-1', '0', '-1', '13383', '1', '0', '0', '-1', '0', '-1', '21347', '1',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '1', '0', '0', '55', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('51774', '0', '4', '4', 'Sabatons of the Dark Reaver', '', '50136', '4', '0', '1', '26912', '26912', '8', '-1', '-1', '66',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '12', '7', '20',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '515', '0', '0', '0',
 '0', '6', '4', '7597', '1', '0', '0', '-1', '0', '-1', '13383', '1', '0', '0', '-1', '0', '-1', '21348', '1',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '1', '0', '0', '75', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('51775', '0', '4', '4', 'Legguards of the Dark Reaver', '', '50137', '4', '0', '1', '36455', '36455', '7', '-1', '-1', '66',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '16', '7', '24',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '655', '0', '0', '0',
 '0', '0', '10', '7597', '1', '0', '0', '-1', '0', '-1', '13387', '1', '0', '0', '-1', '0', '-1', '20885', '1',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '1', '0', '0', '120', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('51776', '0', '4', '2', 'Plagued Mind Leggings', '', '25169', '4', '0', '1', '38538', '38538', '7', '-1', '-1', '66',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '26', '7', '18',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '162', '0', '0', '0',
 '0', '0', '0', '23729', '1', '0', '0', '-1', '0', '-1', '28869', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '1', '0', '0', '90', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('51777', '0', '4', '1', 'Necromancer\'s Visage', '', '50640', '4', '0', '1', '27487', '27487', '1', '-1', '-1', '66',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '18', '7', '26',
 '6', '-20', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '166', '0', '0', '0',
 '0', '0', '0', '24595', '1', '0', '0', '-1', '0', '-1', '23727', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '2', '1', '0', '0', '60', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('51778', '0', '4', '0', 'Lost Crusader\'s Artifact', '', '21604', '4', '192', '1', '42157', '42157', '23', '-1', '-1', '66',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '6', '6', '4',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '9316', '1', '0', '0', '-1', '0', '-1', '18384', '1', '0', '0', '-1', '0', '-1', '21619', '1',
 '0', '0', '-1', '0', '-1', '585', '5', '0', '0', '90000', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '6', '0', '0', '0', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('51779', '0', '2', '1', 'Greataxe of the Decrepit Crypt', 'Hewn from a fragment of stone from Karazhan, latent magic still resides within.', '32631', '4', '0', '1', '120985', '120985', '17', '-1', '-1', '66',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '20', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3600', '0',
 '0', '182', '269', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '7598', '1', '0', '0', '-1', '0', '-1', '18049', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '2', '1', '0', '0', '100', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('51780', '0', '2', '3', 'Ghoulslayer Shotgun', '', '35370', '4', '0', '1', '65178', '65178', '26', '-1', '-1', '66',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3100', '0',
 '0', '81', '151', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '14027', '1', '0', '0', '-1', '0', '-1', '20606', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '90', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('51781', '0', '4', '1', 'Necrotic Wake Mantle', '', '28705', '4', '0', '1', '26689', '26689', '3', '-1', '-1', '66',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '10', '7', '15',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '76', '0', '0', '0',
 '0', '0', '0', '14794', '1', '0', '0', '-1', '0', '-1', '18378', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '60', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('51782', '0', '4', '0', 'Mindpiercer Band', '', '9840', '4', '65536', '1', '65342', '65342', '11', '-1', '-1', '66',
 '60', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '5', '12', '7', '12',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '25975', '1', '0', '0', '-1', '0', '-1', '9417', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('51783', '0', '4', '2', 'Shadowskin Bracers', '', '27954', '4', '0', '1', '25895', '25895', '9', '-1', '-1', '66',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '16', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '140', '0', '0', '0',
 '0', '0', '0', '9334', '1', '0', '0', '-1', '0', '-1', '15464', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '1', '0', '0', '40', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('51784', '0', '4', '1', 'Belt of Archaic Power', 'One of Medivh\'s many experiments.', '30340', '4', '0', '1', '17683', '17683', '6', '-1', '-1', '66',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '16', '7', '10',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '57', '0', '-5', '-5',
 '-5', '-5', '-10', '17825', '1', '0', '0', '-1', '0', '-1', '21228', '1', '0', '0', '-1', '0', '-1', '16923', '1',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '35', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('51785', '0', '4', '3', 'Stoneslate Belt', '', '27323', '4', '0', '1', '27754', '27754', '6', '-1', '-1', '66',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '14', '5', '10',
 '7', '22', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '340', '0', '0', '0',
 '0', '0', '0', '13669', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '1', '0', '0', '50', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('51786', '0', '4', '3', 'Cryptbone Hauberk', '', '26204', '4', '0', '1', '54261', '54261', '5', '-1', '-1', '66',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '16', '3', '10',
 '7', '22', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '592', '0', '0', '0',
 '0', '0', '0', '13390', '1', '0', '0', '-1', '0', '-1', '15464', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '140', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('51787', '0', '4', '2', 'Spaulders of Insight', '', '4483', '4', '0', '1', '32914', '32914', '3', '-1', '-1', '66',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '14', '7', '14',
 '6', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '150', '0', '0', '0',
 '0', '0', '0', '23727', '1', '0', '0', '-1', '0', '-1', '9343', '1', '0', '0', '-1', '0', '-1', '18379', '1',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('51788', '0', '4', '2', 'Visage of the Forgotten', '', '32731', '4', '0', '1', '32690', '32690', '1', '-1', '-1', '66',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '25', '4', '18',
 '7', '22', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '163', '0', '0', '0',
 '0', '10', '0', '15464', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '1', '0', '0', '70', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('51789', '0', '4', '1', 'Circlet of Forlorn Spirits', '', '15909', '4', '0', '1', '27456', '27456', '1', '-1', '-1', '66',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '20', '7', '14',
 '6', '20', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '83', '0', '0', '0',
 '0', '0', '0', '18032', '1', '0', '0', '-1', '0', '-1', '18379', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '60', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);
 -- Lootable 1
 replace into creature_loot_template values (80936, 51769, 4.76, 1, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51770, 4.76, 1, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51771, 4.76, 1, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51772, 4.76, 1, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51773, 4.76, 1, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51774, 4.76, 1, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51775, 4.76, 1, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51776, 4.76, 1, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51777, 4.76, 1, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51778, 4.76, 1, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51779, 4.76, 1, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51780, 4.76, 1, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51781, 4.76, 1, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51782, 4.76, 1, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51783, 4.76, 1, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51784, 4.76, 1, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51785, 4.76, 1, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51786, 4.76, 1, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51787, 4.76, 1, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51788, 4.76, 1, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51789, 4.76, 1, 1, 1, 0, 0, 10);
 -- Loottable 2
 replace into creature_loot_template values (80936, 51769, 4.76, 2, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51770, 4.76, 2, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51771, 4.76, 2, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51772, 4.76, 2, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51773, 4.76, 2, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51774, 4.76, 2, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51775, 4.76, 2, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51776, 4.76, 2, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51777, 4.76, 2, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51778, 4.76, 2, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51779, 4.76, 2, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51780, 4.76, 2, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51781, 4.76, 2, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51782, 4.76, 2, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51783, 4.76, 2, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51784, 4.76, 2, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51785, 4.76, 2, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51786, 4.76, 2, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51787, 4.76, 2, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51788, 4.76, 2, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (80936, 51789, 4.76, 2, 1, 1, 0, 0, 10);
 -- Dark Rider's Steed Loottable
 replace into creature_loot_template values (80936, 81090, 1, 3, 1, 1, 0, 0, 10);
 
REPLACE INTO `item_template` VALUES (81224, 10, 15, 0, 'Armored Dalaran Warhorse', 'The powerful and unyielding white stallion.', 25132, 4, 64, 1, 2500000, 0, 0, -1, 589, 60, 60, 762, 150, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46441, 0, 0, 0, 1, 330, 3000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

REPLACE INTO `item_template` VALUES (81225, 10, 15, 0, 'Armored Knight\'s Warhorse', 'Trained to withstand brutal hand-to-hand combat in the fiercest battlefields.', 25132, 4, 64, 1, 2500000, 0, 0, -1, 589, 60, 60, 762, 150, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46442, 0, 0, 0, 1, 330, 3000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

update item_template set required_reputation_faction = 61, required_reputation_rank = 7 where entry = 81224;
update item_template set required_reputation_faction = 72, required_reputation_rank = 7 where entry = 81225;

REPLACE INTO `creature_template` VALUES (90975, 0, 18229, 0, 0, 0, 'Armored Dalaran Warhorse', '', 0, 1, 2, 64, 55, 53, 53, 30, 35, 0, 1, 1.38571, 0, 20, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 2, '');
REPLACE INTO `creature_template` VALUES (90976, 0, 18230, 0, 0, 0, 'Armored Knight\'s Warhorse', '', 0, 1, 2, 64, 55, 53, 53, 30, 35, 0, 1, 1.38571, 0, 20, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 2, '');

REPLACE INTO `item_template` VALUES (81226, 10, 15, 0, 'Armored Amani Riding Bear', 'The Amani trolls decorate these ferocious mounts in magic amulets and ceremonial masks as a way to venerate the bear god Nalorakk.', 28952, 4, 64, 1, 3000000, 0, 0, -1, 434, 60, 60, 762, 150, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46204, 0, 0, 0, 1, 330, 3000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

update item_template set required_reputation_faction = 893, required_reputation_rank = 7 where entry = 81226;

delete from item_template where entry in (81157, 80437, 80435, 80445, 80432, 21736, 51839, 80451, 80453, 80452, 8628, 8627, 8633);

update item_template set name = 'Swift Riding Turtle', quality = 1, description = 'Slow and steady might not always win you the race but it\'ll get you there... eventually.' where entry = 23720;

update item_template set name = 'Armored Frostsaber', description = 'Night elves raise frostsaber cubs from infancy, forging lifelong bonds of trust between rider and beast.' where entry = 18766;
update item_template set name = 'Armored Mistsaber', description = 'Some historians claim that this breed\'s misty grey coat is the result of ancient Highborne experiments conducted on nightsabers.' where entry = 18767;
update item_template set name = 'Armored Stormsaber', description = 'Rumor has it that this breed was named after the renowned archdruid Malfurion Stormrage.' where entry = 18902;

update item_template set name = 'Striped Nightsaber', description = 'Considered one of Azeroth\'s perfect predators, these agile beasts can sprint through dense forests without making a sound.' where entry = 8629;
update item_template set name = 'Spotted Frostsaber', description = 'This hearty mount\'s ferocious appetite earned it the nickname "Dragon Belly" in the night elf language.' where entry = 8632;
update item_template set name = 'Striped Frostsaber', description = 'This hearty mount\'s ferocious appetite earned it the nickname "Dragon Belly" in the night elf language.' where entry = 8631;

update item_template set name = 'Ancient Nightsaber', description = 'The lack of spots or stripes marks this beast as a descendant of the most ancient nightsaber line.' where entry = 12303;

update item_template set name = 'Ancient Frostsaber', description = 'The lack of spots or stripes marks this beast as a descendant of the most ancient frostsaber line.' where entry = 12302;

update item_template set name = 'Winterspring Frostsaber', description = 'Taming this savage breed requires patience, strength, and a large supply of fake mice and twine.' where entry = 13086;

update item_template set name = 'Armored Darnassian Nightsaber', description = 'When a night elf\'s mount perishes, it is custom for the rider to keep one of the saber\'s great fangs as a token of remembrance.' where entry = 80446;

update item_template set name = 'Tawny Leopard', description = 'Meow.', required_level = 1, quality = 1 where entry = 12326;
update item_template set name = 'Golden Leopard', description = 'Meow.' , required_level = 1 where entry = 12327;
update item_template set name = 'Stranglethorn Tiger', description = 'The wonderful thing about tigers is tigers are wonderful things!' , required_level = 1 where entry = 8630;
update item_template set name = 'Spotted Leopard', description = 'Meow.' , required_level = 1, quality = 1 where entry = 12325;

update item_template set name = 'Armored Dawnsaber', quality = 4, description = 'Night elves once believed that seeing this light colored saber breed in the wild was an ill omen.', required_level = 1 where entry = 18768;

REPLACE INTO `item_template` VALUES (81227, 10, 15, 0, 'Striped Dawnsaber', 'Night elves once believed that seeing this light colored saber breed in the wild was an ill omen.', 17607, 3, 80, 1, 100000, 0, 0, -1, -1, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 45035, 0, 0, 0, -1, 330, 3000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, NULL);

update item_template set required_level = 1 where entry = 81227;

REPLACE INTO `item_template` VALUES (12327, 10, 15, 0, 'Golden Leopard', 'Meow.', 17607, 3, 80, 1, 100000, 0, 0, -1, -1, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16060, 0, 0, 0, -1, 330, 3000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, NULL);

update item_template set required_level = 1, quality = 1 where entry = 12327;


REPLACE INTO `item_template` VALUES (80446, 10, 15, 0, 'Armored Nightsaber', 'When a night elf\'s mount perishes, it is custom for the rider to keep one of the saber\'s great fangs as a token of remembrance.', 17608, 4, 64, 1, 1000000, 0, 0, -1, 589, 60, 60, 762, 150, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 45036, 0, 0, 0, 0, 330, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

replace into `npc_vendor` values (4730, 80446, 0, 0, 0, 0);

delete from npc_vendor where item = 12302;
delete from npc_vendor where item = 12303;