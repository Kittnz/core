-- Change disenchant id of grayson's hat to 1:
update item_template set disenchant_id = 1 where entry = 70070;

-- Undercity bucket hat does not have a mode or in game icon
update item_template set display_id = 34495 where entry = 84037;

-- golded plated crossbbow animation is broken
update item_template set display_id = 31239 where entry = 60624;

-- karavan kodo still has the 10 minutes cooldown
replace into spell_mod (id, recoverytime) values (46483, 0);
update spell_template set recoverytime = 0 where entry = 46483;

-- Cube:
delete from item_template where entry = 0;

-- shadowcaller axe can't be repaired
update item_template set item_level = 54 where entry = 60616;

-- Embrace of the Fang Rebalance
update item_template set stat_value2 = 3 where entry = 10412; -- Belt of the Fang
update item_template set stat_value2 = 3, required_level = 16, item_level = 21, armor = 49 where entry = 10412; -- Gloves of the Fang
update item_template set stat_type2 = 7 where entry = 10412; -- Armor of the Fang
update item_template set set_id = 162 where entry = 81006; -- Cowl of the Fang
-- Defias Leather Rebalance
update item_template set stat_value2 = 4, stat_value1 = 3, required_level = 16, item_level = 21, armor = 54 where entry = 10402; -- Blackened Defias Boots
update item_template set stat_value2 = 3, stat_value1 = 3, required_level = 16, item_level = 21, armor = 49 where entry = 10401; -- Blackened Defias Gloves
update item_template set stat_value2 = 5, stat_value1 = 4, required_level = 16, item_level = 21, armor = 69 where entry = 10400; -- Blackened Defias Leggings
update item_template set stat_type1 = 7, stat_value1 = 4, allowable_race = -1, set_id = 161, bonding = 1, name = 'Blackened Defias Mask' where entry = 81007; -- Enchanted Defias Mask

-- Quest 'The Ramolus Gem' change the first sentence 'Ironforge' to 'Stormwind' in main description to be the following : "My trip to Stormwind has been a failure, and truth be told ... 

update quest_template set details = 'My trip to Stormwind has been a failure, and truth be told, I don\'t really have the courage to return just yet.\n\nI was ambushed by a group of troggs heading to Ironforge, and I just so happened to drop the most important item on me, The Ramolus Gem.\n\nThe Trogg that happened to take it was enfused with the latent arcane power of the gem, and now has some ability with magic... Or so I heard.\n\n<Ansela pouts.>\n\nCan you recover it for me by chance? The Trogg named Grash can be found deep in the Gol\'Bolar Quarry.' where entry = 40518;

/* 

Change subname of Soalara Dawnstar to <Silvermoon Remnant Quartermaster>
Change subname of Alinerenah Sunsparrow to <Alliance Cloth Quartermaster>

Change subname of Tan'Pogo to <Revantusk Trolls Quartermaster>
Change subname of Reolis Riptusk to <Horde Cloth Quartermaster>

Remove Vendor Flags from Reolis Riptusk, Alinerenah Sunsparrow.

*/

update creature_template set subname = 'Silvermoon Remnant Quartermaster' where entry = 80266;
update creature_template set subname = 'Alliance Cloth Quartermaster' where entry = 80459;

update creature_template set subname = 'Revantusk Trolls Quartermaster' where entry = 80915;
update creature_template set subname = 'Horde Cloth Quartermaster' where entry = 80807;

update creature_template set npc_flags = 3 where entry in (80459, 80807);

/*
REMOVE ALL ITEMS from Soalara Dawnstar, Alinerenah, Tan'Pogo, and Reolis Riptusk vendor tables

Add items to Soalara Dawnstar Vendor Table

https://database.turtle-wow.org/?item=80524
https://database.turtle-wow.org/?item=80523
https://database.turtle-wow.org/?item=80525
https://database.turtle-wow.org/?item=80522
https://database.turtle-wow.org/?item=80526
https://database.turtle-wow.org/?item=80317
https://database.turtle-wow.org/?item=80537
https://database.turtle-wow.org/?item=80546
https://database.turtle-wow.org/?item=80502
https://database.turtle-wow.org/?item=80504
https://database.turtle-wow.org/?item=80501
https://database.turtle-wow.org/?item=80500
https://database.turtle-wow.org/?item=80503
https://database.turtle-wow.org/?item=80536

Add items to Tan'Pogo Vendor Table

https://database.turtle-wow.org/?item=80612
https://database.turtle-wow.org/?item=80616
https://database.turtle-wow.org/?item=80615
https://database.turtle-wow.org/?item=80613
https://database.turtle-wow.org/?item=80614
https://database.turtle-wow.org/?item=80605
https://database.turtle-wow.org/?item=80606
https://database.turtle-wow.org/?item=81098
https://database.turtle-wow.org/?item=80646
https://database.turtle-wow.org/?item=80638
https://database.turtle-wow.org/?item=80602
https://database.turtle-wow.org/?item=80600
https://database.turtle-wow.org/?item=80603
https://database.turtle-wow.org/?item=80604
https://database.turtle-wow.org/?item=80636
*/

delete from npc_vendor where entry in (80266, 80915);

replace into npc_vendor (entry, item) values 

(80266, 80524),
(80266, 80523),
(80266, 80525),
(80266, 80522),
(80266, 80526),
(80266, 80317),
(80266, 80537),
(80266, 80546),
(80266, 80502),
(80266, 80504),
(80266, 80501),
(80266, 80500),
(80266, 80503),
(80266, 80536),

(80915, 80612),
(80915, 80616),
(80915, 80615),
(80915, 80613),
(80915, 80614),
(80915, 80605),
(80915, 80606),
(80915, 81098),
(80915, 80646),
(80915, 80638),
(80915, 80602),
(80915, 80600),
(80915, 80603),
(80915, 80604),
(80915, 80636);