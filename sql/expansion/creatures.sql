update creature_template set npc_flags = 2 where entry = 1752; -- Caledra Questgiver Flag
update creature_template set display_id1 = 18209 where entry = 1752; -- Caledra Display ID
update creature_template set script_name = 'npc_caledra' where entry = 1752; -- Caledra Script
update creature_template set script_name = 'npc_elsharin' where entry = 5498; -- Elsharin Script

REPLACE INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (80004, 0, 18220, 18222, 18221, 18223, 'Alah\'Thalas Defender', NULL, 0, 60, 60, 9763, 9763, 0, 0, 3500, 1254, 268435456, 1, 1.71429, 0, 20, 5, 0, 1, 1, 825, 1244, 0, 272, 1, 2000, 2000, 1, 36864, 0, 0, 0, 0, 0, 0, 626, 687, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7918, 2480, 0, 0, 151840, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 15184, 0, 0, 613105627, 0, 1024, '');

replace into creature_template (entry, display_id1, name, subname, level_min, level_max, health_min, health_max, faction, script_name, scale, npc_flags, rank) values
(80000, 10381, 'High Elf Ranger', '', 9, 10, 350, 640, 269, '', 1, 2, 2),
(80001, 17329, 'Arcanist Anu\'delen', '', 60, 60, 3350, 4640, 269, '', 1, 2, 2),
(80002, 6631, 'Ashylah Starcaller', '', 60, 60, 3350, 4640, 269, '', 1, 2, 1),
(80003, 262, 'Caledra Gossip Trigger 1', '', 60, 60, 3350, 4640, 35, '', 1, 2, 1),
(80005, 18003, 'Norel', '', 20, 59, 1350, 3300, 269, '', 1, 2, 1),
(80006, 17329, 'Ranger-Captain Alisaeh Sunblade', '', 60, 60, 3350, 4640, 269, '', 1, 2, 2),
(80007, 17329, 'Dummy Horde Player Trigger', '', 60, 60, 3350, 4640, 35, '', 1, 2, 2),
(80008, 6631, 'Malvinah Sunblade', '', 60, 60, 3350, 4640, 269, '', 1, 2, 1),
(80009, 6631, 'Kathy Wake', '', 60, 60, 3350, 4640, 269, '', 1, 2, 1), -- Reserved. TODO.
(80010, 6631, 'Trogg Vermin', '', 60, 60, 3350, 4640, 269, '', 1, 2, 1), -- Reserved. TODO.
(80011, 6631, 'Burnt Wheels Gossip Trigger 1', '', 60, 60, 3350, 4640, 269, '', 1, 2, 1), -- Reserved. TODO.
(80012, 6631, 'Shadowforge Fire Priest', '', 60, 60, 3350, 4640, 269, '', 1, 2, 1), -- Reserved. TODO.
(80013, 6631, 'Dark Iron Scrapping Gossip Trigger 1', '', 60, 60, 3350, 4640, 269, '', 1, 2, 1), -- Reserved. TODO.
(80014, 6631, 'Sunblade Reunion Gossip Trigger 1', '', 60, 60, 3350, 4640, 269, '', 1, 2, 1), -- Reserved. TODO.
(80015, 6631, 'Porting to Goldshire Gossip Trigger 1', '', 60, 60, 3350, 4640, 269, '', 1, 2, 1); -- Reserved. TODO.

SET @npc_entry = 5498;
SET @text_id = 300000;
SET @gossip_menu_id = 60000;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @text_id, '0'); 
replace into broadcast_text (ID, MaleText) values (@text_id, 'Setting up a new home is difficult and we have run into our share of issues. It’s important to remember what’s at stake.');
replace into npc_text (ID, BroadcastTextID0) values (@text_id, @text_id);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @npc_entry;

SET @npc_entry = 1752;
SET @text_id = 300001;
SET @gossip_menu_id = 60001;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @text_id, '0'); 
replace into broadcast_text (ID, MaleText) values (@text_id, 'Recently I\'ve heard from our new allies across the sea that a group of them intends to consolidate and settle a new home...\n\nWhile we have our reservations about their past, they are still family and they should not bear the scorn for the actions of their ancestors.');
replace into npc_text (ID, BroadcastTextID0) values (@text_id, @text_id);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @npc_entry;

SET @npc_entry = 80001;
SET @text_id = 300002;
SET @gossip_menu_id = 60002;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @text_id, '0'); 
replace into broadcast_text (ID, MaleText) values (@text_id, 'Test.');
replace into npc_text (ID, BroadcastTextID0) values (@text_id, @text_id);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @npc_entry;
