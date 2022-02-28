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
-- Leash range of NPC 'Lazsan' encreesed by 100:
update creature_template set leash_range = 100 where entry = 60433;
-- Position for GO 'Small Thorium Vein' fixed:
update gameobject set position_x = -7261.74, position_y = -780.343, position_z = 298.363 where guid = 154;
-- Position for GO 'Iron Deposit' fixed:
update gameobject set position_x = -562.582, position_y = -1993.33, position_z = 79.0787 where guid = 5331;
-- Correct npc 'Quorthon' flag setted:
update creature_template set npc_flags = 1 where entry = 60668;
-- Quest 'The Brokering of Peace' starting added to NPC 'Gorn One Eye':
replace into creature_questrelation (id, quest) values (11555, 8484);
-- 'Slime maggots' it pull the other one or other elite NPC around him (10 yards):
REPLACE INTO `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) VALUES
(8311, 109, 8311, 3, 10),
(5226, 109, 8311, 3, 10),
(8384, 109, 8311, 3, 10);
-- NPC 'Groveweald Ursa' is humanoid and not skinnable alredy:
update creature_template set type = 7, skinning_loot_id = 0 where entry = 92104;
-- NPC 'Blacktooth Grunt' and 'Raider Vilefeast' alredy is PvP:
update creature_template set flags_extra = 524296 where entry in (60664,60665);
-- Grammar fix for quest 'Red flag over the sea':
update quest_template set objectives = 'Speak to Garfield \'The Fox\' Sparkleblast if you wish to aid him.\n\n(This will make the Bloodsail Buccaneers not see you as an enemy anymore.)' where entry = 40172;