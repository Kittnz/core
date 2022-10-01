-- New NPC: Snarles Shadowpaw (40052) 
INSERT INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES (60316, 'Grrrr... Called Snarles Shadowpaw. Work is good if you need killing. Murky Waters take contract to do work others donӴ like doing. You want to have something kill you come to right place. Ask with bag of gold...', 'Grrrr... Called Snarles Shadowpaw. Work is good if you need killing. Murky Waters take contract to do work others donӴ like doing. You want to have something kill you come to right place. Ask with bag of gold...', 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `npc_text` (`ID`, `BroadcastTextID0`, `Probability0`, `BroadcastTextID1`, `Probability1`, `BroadcastTextID2`, `Probability2`, `BroadcastTextID3`, `Probability3`, `BroadcastTextID4`, `Probability4`, `BroadcastTextID5`, `Probability5`, `BroadcastTextID6`, `Probability6`, `BroadcastTextID7`, `Probability7`) VALUES (60316, 60316, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `condition_id`) VALUES (60316, 60316, 0);
INSERT INTO `creature_template` (`entry`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `mount_display_id`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `auras`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `phase_quest_id`, `script_name`) VALUES (40052, 1217, 0, 0, 0, 0, 'Snarles Shadowpaw', 'Murky Waters', 60316, 38, 38, 1395, 1395, 0, 0, 1724, 35, 1, 1, 1.14286, 0, 18, 5, 0, 0, 1, 52.6588, 69.8453, 0, 128, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

-- New NPC: Brunilda Wildstout (40053)
INSERT INTO `creature_template` (`entry`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `mount_display_id`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `auras`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `phase_quest_id`, `script_name`) VALUES (40053, 3050, 0, 0, 0, 0, 'Brunilda Wildstout', 'Murky Waters', 0, 24, 24, 651, 651, 0, 0, 1002, 35, 16388, 1, 1.14286, 0, 18, 5, 0, 0, 1, 24.5065, 34.1883, 0, 36, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 1963, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES 
(40053, 159, 0, 0, 0, 0),
(40053, 1179, 0, 0, 0, 0),
(40053, 1205, 0, 0, 0, 0),
(40053, 1645, 0, 0, 0, 0),
(40053, 1708, 0, 0, 0, 0),
(40053, 2593, 0, 0, 0, 0),
(40053, 2594, 0, 0, 0, 0),
(40053, 2595, 0, 0, 0, 0),
(40053, 2596, 0, 0, 0, 0),
(40053, 2723, 0, 0, 0, 0),
(40053, 4600, 0, 0, 0, 0),
(40053, 8766, 0, 0, 0, 0);
