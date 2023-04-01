-- add the following greeting text to https://database.turtle-wow.org/?npc=60917.
set @gossip_menu_id = 41415; set @magic_number = 60917;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'My kingdom has crumbled to dust, my subjects long gone, and my memories fading. But yet, I remain here, a haunting reminder of the greatness that once was. What brings you to my forgotten realm?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;
-- https://database.turtle-wow.org/?quest=40565 deserter shouldn't have the 's.
update quest_template set details = 'It does appear that the Deserter are behind the burning of the inn. If there is ever to be justice, we must stop them from continually dragging more and more of our most loyal into their ranks.$B$BThere shall be no quarter, they are wanted and we shall dole out justice, for all of the lives lost. For the deceit caused.$B$BDirectly to the west of Theramore, to the north eastern edge of the Quagmire is the Deserter\'s Hideout, it is there that they gain their strength.$B$BFind Sellick Voss, the new leader of the camp, slay him, and bring his medallion to me as proof of the deed.' where entry = 40565;
