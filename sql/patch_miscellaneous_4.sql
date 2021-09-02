update item_template set display_id = 23292 where entry = 60127;

set @gossip_menu_id = 60115; set @magic_number = 2543; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'I am Ansirem Runeweaver, the one in charge of our external affairs.\n\nThe Kirin Tor has survived the onslaught of the demons and are currently rebuilding Dalaran.\n\nI am afraid I cannot let you within our shield of protection, nor offer you shelter aside from the ruins nearby.\n\n Perhaps you have come for a different reason?'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

update creature_template set entry = 49001 where entry = 91304;
update creature_template set entry = 49002 where entry = 91305;
update creature_template set entry = 49003 where entry = 91306;
update creature_template set entry = 49004 where entry = 91307;
update creature_template set entry = 49005 where entry = 91308;

update creature set id = 49001 where id = 91304;
update creature set id = 49002 where id = 91305;
update creature set id = 49003 where id = 91306;
update creature set id = 49004 where id = 91307;
update creature set id = 49005 where id = 91308;

update creature_template set loot_id = 49001 where entry = 49001;
update creature_template set loot_id = 49002 where entry = 49002;
update creature_template set loot_id = 49003 where entry = 49003;
update creature_template set loot_id = 49004 where entry = 49004;
update creature_template set loot_id = 49005 where entry = 49005;

delete from creature_loot_template where entry between 91304 and 49005;

replace into creature_loot_template values (49001, 81360, 0, 1, 1, 1, 0, 0, 0);
replace into creature_loot_template values (49001, 81361, 0, 2, 1, 1, 0, 0, 0);
replace into creature_loot_template values (49001, 81362, 0, 3, 1, 1, 0, 0, 0);
replace into creature_loot_template values (49001, 81364, 0, 4, 1, 1, 0, 0, 0);
replace into creature_loot_template values (49001, 81363, 0.5, 5, 1, 1, 0, 0, 0);
replace into creature_loot_template values (49002, 81365, 0, 6, 1, 1, 0, 0, 0);
replace into creature_loot_template values (49002, 81366, 0, 6, 1, 1, 0, 0, 0);
replace into creature_loot_template values (49002, 81367, 0, 6, 1, 1, 0, 0, 0);
replace into creature_loot_template values (49002, 81368, 0, 6, 1, 1, 0, 0, 0);
replace into creature_loot_template values (49002, 81369, 0.5, 1, 1, 1, 0, 0, 0);
replace into creature_loot_template values (49003, 81370, 0, 6, 1, 1, 0, 0, 0);
replace into creature_loot_template values (49003, 81371, 0, 6, 1, 1, 0, 0, 0);
replace into creature_loot_template values (49003, 81372, 0, 6, 1, 1, 0, 0, 0);
replace into creature_loot_template values (49003, 81373, 0, 6, 1, 1, 0, 0, 0);
replace into creature_loot_template values (49003, 81374, 0.45, 1, 1, 1, 0, 0, 0);
replace into creature_loot_template values (49004, 81375, 0, 6, 1, 1, 0, 0, 0);
replace into creature_loot_template values (49004, 81376, 0, 6, 1, 1, 0, 0, 0);
replace into creature_loot_template values (49004, 81377, 0, 6, 1, 1, 0, 0, 0);
replace into creature_loot_template values (49004, 81378, 0, 6, 1, 1, 0, 0, 0);
replace into creature_loot_template values (49004, 81379, 0.60, 1, 1, 1, 0, 0, 0);
replace into creature_loot_template values (49005, 81380, 0, 6, 1, 1, 0, 0, 0);
replace into creature_loot_template values (49005, 81381, 0, 6, 1, 1, 0, 0, 0);
replace into creature_loot_template values (49005, 81382, 0, 6, 1, 1, 0, 0, 0);
replace into creature_loot_template values (49005, 81383, 0, 6, 1, 1, 0, 0, 0);
replace into creature_loot_template values (49005, 81383, 0.5, 1, 1, 1, 0, 0, 0);