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

-- Gnome faction rewards (mechaspiders)(todo)

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