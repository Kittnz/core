update creature_template set npc_flags = 23 where entry = 91400;
update creature_template set npc_flags = 7 where entry = 91402;
update item_template set display_id = 23292 where entry = 60127;
delete from creature_template where entry = 60421;
delete from creature where id = 60421;
update quest_template set reqcreatureorgoid1 = 91791 where entry = 40015;
update creature_template set script_name = 'npc_speaker_ganto' where entry = 91790;
update creature_template set script_name = 'npc_stone_guard' where entry = 60402;
update creature_template set faction = 8 where entry = 60402;