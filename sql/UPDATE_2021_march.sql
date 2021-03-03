-- Goblin faction rewards:

replace into `item_template` values (81190, 10, 15, 0, 'Red Shredder X-0524A', 'Fueled by a desire to extract and exploit the natural wonders of Azeroth.', 8902, 4, 64, 1, 9500000, 0, 0, -1, 0, 60, 60, 762, 150, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23225, 0, 0, 0, 1, 330, 3000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, null);
replace into custom_mount_entry_relation (item_entry, creature_entry) values (81190, 80303);

replace into `item_template` values (81191, 10, 15, 0, 'Green Shredder X-0524B', 'The destructive nature of goblins is best characterized by their shredders.', 8951, 4, 64, 1, 9500000, 0, 0, -1, 0, 60, 60, 762, 150, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23225, 0, 0, 0, 1, 330, 3000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, null);
replace into custom_mount_entry_relation (item_entry, creature_entry) values (81191, 80304);

update item_template set required_reputation_faction = 1001, required_reputation_rank = 7, required_skill = 202, required_skill_rank = 300, allowable_race = 256 where entry in (81190, 81191);

replace into `item_template` values (81196, 7, 9, 3, 'Schematic: Goblin Radio', '', 15274, 2, 64, 1, 35000, 8875, 0, -1, -1, 45, 0, 202, 225, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12775, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

replace into `item_template` values (10585, 0, 15, 0, 'Goblin Radio KABOOM-Box X23B76', 'Highly explosive tunes!', 22303, 3, 0, 1, 200000, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11593, 0, 0, 0, 900000, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'item_radio');

update item_template set required_reputation_faction = 1001, required_reputation_rank = 6, bonding = 1, quality = 3, description = 'Teaches you how to make a Goblin Radio.' where entry = 81196;

replace into `npc_vendor` values (80961, 81190, 0, 0, 0, 0);
replace into `npc_vendor` values (80961, 81191, 0, 0, 0, 0);
replace into `npc_vendor` values (80961, 81196, 0, 0, 0, 0);

-- Gnome faction rewards (mechaspiders):

replace into `item_template` values (81192, 10, 15, 0, 'Black Scrapforged Mechaspider', 'Smoky, sparky, and loud.', 1221, 4, 64, 1, 3500000, 0, 0, -1, 0, 60, 60, 762, 150, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23225, 0, 0, 0, 1, 330, 3000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, null);
replace into custom_mount_entry_relation (item_entry, creature_entry) values (81192, 80306);

replace into `item_template` values (81193, 10, 15, 0, 'Blue Scrapforged Mechaspider', 'The check engine light is always on, it\'s when it goes off that you should be worried.', 1221, 4, 64, 1, 3500000, 0, 0, -1, 0, 60, 60, 762, 150, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23225, 0, 0, 0, 1, 330, 3000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, null);
replace into custom_mount_entry_relation (item_entry, creature_entry) values (81193, 80307);

replace into `item_template` values (81194, 10, 15, 0, 'Green Scrapforged Mechaspider', 'This mechaspider specializes in drilling, clamping, and shooting at the same time. A typical gnome invention.', 1221, 4, 64, 1, 3500000, 0, 0, -1, 0, 60, 60, 762, 150, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23225, 0, 0, 0, 1, 330, 3000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, null);
replace into custom_mount_entry_relation (item_entry, creature_entry) values (81194, 80308);

replace into `item_template` values (81195, 10, 15, 0, 'Red Scrapforged Mechaspider', 'Four-legged machine of destruction, for your riding pleasure.', 1221, 4, 64, 1, 3500000, 0, 0, -1, 0, 60, 60, 762, 150, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23225, 0, 0, 0, 1, 330, 3000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, null);
replace into custom_mount_entry_relation (item_entry, creature_entry) values (81195, 80305);

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
update creature_template set display_id1 = 8331 entry = 50099;

-- Cleanup useless items: 

delete from item_template where name like '%[PH]%';
delete from item_template where name like '%unused%';
delete from item_template where name like '%epic%';
delete from item_template where name like '%(old)%';

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
