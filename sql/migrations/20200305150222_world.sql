replace into migrations values (20200305150222);

delete from item_template where entry = 51216;
delete from item_template where entry = 51216;

update item_template set display_id = 32746  where entry = 51217;
update item_template set description = 'Fashion community currency.' where entry = 51217;
update item_template set name = 'Fashion Coin' where entry = 51217;
update item_template set quality = 2 where entry = 51217;

replace into creature_template values (51290, 0, 10573, 0, 0, 0, 'Felicia Starweaver', 'Stormwind Fashionista', 0, 35, 35, 2016, 2016, 0, 0, 1357, 35, 1, 1.11, 1.14286, 1, 20, 5, 0, 0, 1, 51, 65, 0, 138, 1, 2000, 2000, 1, 768, 0, 0, 0, 0, 0, 0, 51.128, 70.301, 100, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2, 'npc_transmog');

update creature_template set npc_flags='1' where entry='51290';	
update creature_template set faction='12' where entry='51290';


replace into creature_template values (51292, 0, 11039, 0, 0, 0, 'Ophelia Worthington', 'Fashionista Apprentice', 0, 35, 35, 2016, 2016, 0, 0, 1357, 35, 1, 1.11, 1.14286, 1, 20, 5, 0, 0, 1, 51, 65, 0, 138, 1, 2000, 2000, 1, 768, 0, 0, 0, 0, 0, 0, 51.128, 70.301, 100, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2, '');

update creature_template set npc_flags='4' where entry='51292';	
update creature_template set faction='12' where entry='51292';

replace into creature_template values (51291, 0, 11077, 0, 0, 0, 'R\'aena', 'Orgrimmar Fashionista', 0, 35, 35, 2016, 2016, 0, 0, 1357, 35, 1, 1.11, 1.14286, 1, 20, 5, 0, 0, 1, 51, 65, 0, 138, 1, 2000, 2000, 1, 768, 0, 0, 0, 0, 0, 0, 51.128, 70.301, 100, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2, 'npc_transmog');

update creature_template set npc_flags='1' where entry='51291';	
update creature_template set faction='85' where entry='51291';	

replace into `broadcast_text` (`ID`, `maletext`) VALUES ('60000', 'Greetings! I can tweak your dress and make it look different!');
replace into`broadcast_text` (`ID`, `maletext`) VALUES ('60001', 'Select item:');
 
replace into `npc_text` (`ID`, `BroadcastTextID0`) values ('60000', '60000');
replace into `npc_text` (`ID`, `BroadcastTextID0`) values ('60001', '60001');