-- add the following greeting text to https://database.turtle-wow.org/?npc=60917.
set @gossip_menu_id = 41415; set @magic_number = 60917;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'My kingdom has crumbled to dust, my subjects long gone, and my memories fading. But yet, I remain here, a haunting reminder of the greatness that once was. What brings you to my forgotten realm?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;
-- https://database.turtle-wow.org/?quest=40565 deserter shouldn't have the 's.
update quest_template set details = 'It does appear that the Deserter are behind the burning of the inn. If there is ever to be justice, we must stop them from continually dragging more and more of our most loyal into their ranks.$B$BThere shall be no quarter, they are wanted and we shall dole out justice, for all of the lives lost. For the deceit caused.$B$BDirectly to the west of Theramore, to the north eastern edge of the Quagmire is the Deserter\'s Hideout, it is there that they gain their strength.$B$BFind Sellick Voss, the new leader of the camp, slay him, and bring his medallion to me as proof of the deed.' where entry = 40565;
-- Remove https://database.turtle-wow.org/?item=10605 from the loottables of bosses. Add https://database.turtle-wow.org/?item=16045 in its place. 
update creature_loot_template set item = 16045 where item = 10605 and entry in (14889,10184,6109,14888,14890,14887,11502,11583,50112,16184,14889,14887,14890,14888,11583,11502,12397);
-- https://database.turtle-wow.org/?item=81315#dropped-by should be probably dropped by Sneed, not Edwin.
delete from creature_loot_template where item = 81315 and entry = 639;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(643, 81315, -100, 6, 1, 1, 0);
-- Make https://database.turtle-wow.org/?item=51217 drop from with 100% chance, add them to separate loot group: npc=5709
update creature_loot_template set groupid = 2 where entry = 5709 and item = 10454;