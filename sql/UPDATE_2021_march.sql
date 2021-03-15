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
set @description = 'Hmm, another one, eh? Alright then.\n\nRules are simple. You have only one life, so cherish it...\n\nForget this business. Lead a normal life, like any other. What would misery, frustration and pain bring you? Fame? Glory? Nothing lasts forever.';
set @objective = 'Complete this quest to become mortal. In this mode you only have one life and can only trade and group up with other hardcore players. If you should die, you shall not return again. Customer service will not revive a fallen hero for any reason.';
set @completetext = 'Fine. Have it your way with your absurd goal to live one life only.\n\nJust remember to stay safe on your road!\n\nIf you continue on this path, we shall meet one day.';
set @incompletetext = 'Still here? Oh well, I warned you.\n\nBecoming an Immortal won\'t be an easy walk in the park.\n\nOnly those who undertakes this path will be your help.\n\nNo mail will ever bring you good news.\n\nNo auction will take your money.';
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
(81031, 18527, 18524, 18525, 18526,  'Whimsyshire Cloud', '', '1', '1', '64', '64', '35', '', 0.4);
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

REPLACE INTO `creature_template` VALUES (81033, 0, 7192, 0, 0, 0, 'Naznik Sharpshear', 'Goblin\'s Plastic Surgeon', 0, 30, 30, 1605, 1605, 0, 0, 1200, 35, 1, 1.08, 1.14286, 0, 20, 5, 0, 0, 1, 42, 53, 0, 122, 1, 1000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 45.144, 62.073, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 100, 0, 0, 10, 'npc_surgeon_go');
REPLACE INTO `creature_template` VALUES (81034, 0, 7909, 0, 0, 0, 'Bebri Coifcurl', 'Goblin\'s Barber', 0, 30, 30, 1605, 1605, 0, 0, 1200, 35, 1, 1.08, 1.14286, 0, 20, 5, 0, 0, 1, 42, 53, 0, 122, 1, 1000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 45.144, 62.073, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 100, 0, 0, 10, 'npc_barber_go');

