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
-- Quest 'In Service of the Light' deleted:
delete * from quest_template where entry = 50300;
-- Respawn time fixed:
update creature set spawntimesecsmin = 600, spawntimesecsmax = 600 where id = 6147;
-- Quest 'Fashion Demands Sacrifices' updated:
update quest_template set details = 'Looks like you indeed require my services. However this won\'t be an easy task. Fashion, be it known to you, demands sacrifices.\n\nWith that said and out of the way you should also know that I won\'t be awaiting for your miserable donation for too long. Time is short and I need the materials NOW!\n\nWhat? Oh, which materials? That should be an easy task even for someone like you.', objectives = 'Bring 10 Linen Cloth, 5 Light Leather, 5 Malachite and 5 Small Leather Collar to Fashionista Apprentice.', offerrewardtext = 'Wasn\'t that hard, right? Good. Knock yourself out until you ready to be useful again.', requestitemstext = 'Be so kind and make yourself brief and stealthy as you\'ve been before my improvements.', reqitemcount1 = 10, rewxp = 125 where entry = 60030;
update quest_template set details = 'As if I had nothing better to do… Oh, you again? Well then, this time my services will cost you much more than just some lousy malachite. Fashion, as you know, demands sacrifices and dedication.\n\nI will not be waiting long for your delivery. You come too late – demands shall be greater.\n\nMake sure that goods you bring will be of perfect condition. No less.', objectives = 'Bring 10 Wool Cloth, 5 Medium Leather, 5 Shadowgems and 5 Small Furry Paw to Fashionista Apprentice.', offerrewardtext = 'Finally, something of value. Feel free to knock yourself out. Yes, have a nice day.', requestitemstext = 'Those materials better be in perfect condition. Well? Do you have it?', reqitemcount1 = 10, rewxp = 375 where entry = 60031;
-- Quest 'Food for Baby' text fixed:
update quest_template set details = 'Sprite darters are omnivores--that means they eat both meat and vegetation. If your egg here\'s gonna hatch, we best be prepared. Some good eats for these little guys are flanks of meat, raw and juicy, believe it or not. I was never able to find out why, but it has somethin\' to do with Elune\'s plan for the elves... maybe they were to be protectors or somethin\'. I don\'t know.\n\nI\'ll take care of the egg for now. Why don\'t you get me some good Silvermane Stalker flanks for it to eat when it hatches.' where entry = 4297;
-- NPC 'Corrupted Felstone' changed to GO:
delete from creature where id = 60428;
delete from creature_template where entry = 60428;
REPLACE INTO gameobject_template VALUES
(2010883, 2, 236, 'Corrupted Felstone', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_felstone');
delete from gameobject where id = 2010883 and position_x = 3536.35;
delete from gameobject where id = 181174 and position_x = 3536.35;
REPLACE INTO `gameobject` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`) VALUES
(2010883, 1, 3536.35, -1570.49, 170.42, 1.24, 0, 0, 0.59716, -0.802122, 25, 25, 100, 1, 0, 0),
(181174, 1, 3536.35, -1570.49, 170.42, 1.24, 0, 0, 0.59716, -0.802122, 25, 25, 100, 1, 0, 0);