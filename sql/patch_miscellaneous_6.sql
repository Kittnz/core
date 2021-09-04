replace into creature_template values 
(91799, 0, 15759, 0, 0, 0, 'Moo', 'The Cow King', 0, 60, 60, 83643, 86398, 34335, 36510, 3075, 26, 0, 1, 1.14286, 0, 20, 5, 0, 1, 1, 474, 554, 0, 272, 1, 1200, 1500, 2, 0, 0, 0, 0, 0, 0, 0, 91.7, 134.9, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 1, 3, 0, 0, 3, 16080, 0, 0, 613105627, 0, 0, 0, 'the_cow_king');

update creature_template set npc_flags = 1, faction = 189, unit_flags = 2, equipment_id = 5838 where entry = 91799;

set @gossip_menu_id = 60117; set @magic_number = 91799; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'What do you want in my realm, mortal?'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

