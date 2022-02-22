-- Fox name for GO Tree of Lashes:
delete from gameobject_template where entry = 2010796;
REPLACE INTO gameobject_template VALUES (2010796, 9, 25251, 'Tree of Lashes', 0, 0, 1, 50526, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '');
REPLACE INTO page_text VALUES (50526, 'The Tree of Lashes is covered in countless wounds of varied age. Some still drip with sap, while others are faint, ghostly scars. One name is torn into the tree\'s flesh, and bleeds still: "Ariele."', 0);
-- When pulling one scarab it pull the other one around him (8 yards):
REPLACE INTO `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) VALUES (7269, 209, 7269, 3, 8);
-- Correct pre-quest setted for quest 'The Completed Orb of Dar'Orahil':
update quest_template set prevquestid = 4976 where entry = 4964;
-- Phasing for NPC Vereesa removed:
update creature_template set phase_quest_id = 0 where entry = 80877;
-- New NPC 'Quorthon' added:
REPLACE INTO creature_template VALUES
(60668, 14494, 0, 0, 0, 'Quorthon', 'Nephilim', 0, 55, 55, 3398, 3398, 0, 0, 4500, 290, 16388, 1, 1.14286, 1.3, 18, 5, 0, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 3038, 0, 0, 0, 0, 0, 0, 1, '');
set @gossip_menu_id = 41093; set @magic_number = 60668;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Lok\'tar ogar!\n\nIn this camp we do not draw blood from each other, no matter what clan you come from. Here we heal our wounds and rest.\n\nTo prepare for the next battle ahead, against the pinkskins.\n\nThru blood, fire and death!');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;