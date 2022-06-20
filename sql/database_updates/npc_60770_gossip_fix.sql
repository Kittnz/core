set @gossip_menu_id = 41119; set @magic_number = 60770;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'My name is Karfang, I am leader here.\n\nMy people should cause you no harm, lest you insult, or bother them too much. There are many things to discuss, and many things to do for us to secure our place in this world.\n\nThe Blackrock Clan find themselves manipulated by greater forces. The Old Horde is a shell of what it once was, and I will not allow my people to follow them into madness.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;