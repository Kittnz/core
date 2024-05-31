-- Update script name for Krug Skullsplit
UPDATE `creature_template` SET `script_name` = 'npc_krug_skullsplit' WHERE `entry` = 15612;

-- Update script name for Merok Longstride
UPDATE `creature_template` SET `script_name` = 'npc_merok_longstride' WHERE `entry` = 15613;

-- Update script name for Shadow Priestess Shai
UPDATE `creature_template` SET `script_name` = 'npc_shadow_priestess_shai' WHERE `entry` = 15615;

-- Update script name for Hive'Regal Hunter-Killer
UPDATE `creature_template` SET `script_name` = 'npc_hiveregal_hunterkiller' WHERE `entry` = 15620;

-- Create Alliance quest trigger NPC
REPLACE INTO `creature_template` (
    `entry`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `mount_display_id`, `name`, `subname`, `gossip_menu_id`,
    `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`,
    `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`,
    `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`,
    `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`,
    `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`,
    `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `spawn_spell_id`,
    `auras`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`,
    `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `immunity_flags`, `flags_extra`, `phase_quest_id`, `script_name`
) VALUES (
    2509000, 10045, 0, 0, 0, 0, 'Field Duty (Alliance) Trigger', '', 0, 54, 55, 25432, 26225, 0, 0, 0, 495, 0, 1.5, 1.14286, 0, 20, 5, 0, 1, 1, 1469, 1504,
    0, 248, 1, 1500, 1650, 1, 6, 0, 0, 0, 0, 0, 0, 0, 1, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 599, 4836, '', 0, 3, 0, 0, 3, 0, 0, 0,
    16384, 0, 0, 128, 0, 'trigger_field_duty_alliance'
);

REPLACE INTO `creature` (
    `guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, 
    `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, 
    `movement_type`, `spawn_flags`, `visibility_mod`
) VALUES (
    2582815, 2509000, 0, 0, 0, 1, -7182.17, 1406.58, 2.37713, 5.85506, 
    120, 120, 0, 100, 100, 0, 0, 0
);

-- Move Captain Blackanvil to the front of the war table
UPDATE `creature` 
SET `position_x` = -7165.353516, `position_y` = 1381.246460, 
    `position_z` = 2.919770, `orientation` = 4.331480 
WHERE `guid` = 166513;

-- Move Ironforge Brigade Riflemen to a line next to the fire
UPDATE `creature` 
SET `position_x` = -7177.499023, `position_y` = 1385.545288, 
    `position_z` = 2.919770, `orientation` = 2.285518 
WHERE `guid` = 42910;

UPDATE `creature` 
SET `position_x` = -7175.782715, `position_y` = 1387.070435, 
    `position_z` = 2.919770, `orientation` = 2.285518 
WHERE `guid` = 42907;

UPDATE `creature` 
SET `position_x` = -7173.817383, `position_y` = 1388.816772, 
    `position_z` = 2.917540, `orientation` = 2.285518 
WHERE `guid` = 42909;

UPDATE `creature` 
SET `position_x` = -7171.614258, `position_y` = 1390.774292, 
    `position_z` = 2.881454, `orientation` = 2.285518 
WHERE `guid` = 42908;

-- Move Ironforge Brigade Riflemen to a line behind the above riflemen
UPDATE `creature` 
SET `position_x` = -7175.584473, `position_y` = 1383.584717, 
    `position_z` = 2.919770, `orientation` = 2.285518 
WHERE `guid` = 42905;

UPDATE `creature` 
SET `position_x` = -7173.808594, `position_y` = 1385.200684, 
    `position_z` = 2.919770, `orientation` = 2.285518 
WHERE `guid` = 42906;

UPDATE `creature` 
SET `position_x` = -7172.032227, `position_y` = 1386.816528, 
    `position_z` = 2.919770, `orientation` = 2.285518 
WHERE `guid` = 42904;

-- Add missing rifleman
REPLACE INTO `creature` (
    `guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, 
    `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, 
    `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, 
    `spawn_flags`, `visibility_mod`
) VALUES (
    2582816, 15441, 0, 0, 0, 1, -7169.93, 1388.73, 2.91418, 2.28552, 
    120, 120, 0, 100, 100, 0, 0, 0
);

-- Move Ironforge Brigade Footmen in front of the riflemen
UPDATE `creature` 
SET `position_x` = -7179.231445, `position_y` = 1387.700317, 
    `position_z` = 2.918770, `orientation` = 2.28552 
WHERE `guid` = 42912;

UPDATE `creature` 
SET `position_x` = -7177.375000, `position_y` = 1389.222656, 
    `position_z` = 2.918175, `orientation` = 2.28552 
WHERE `guid` = 42913;

UPDATE `creature` 
SET `position_x` = -7175.549805, `position_y` = 1390.849243, 
    `position_z` = 2.858345, `orientation` = 2.28552 
WHERE `guid` = 42911;

-- Add missing Ironforge Brigade Footman
REPLACE INTO `creature` (
    `guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, 
    `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, 
    `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, 
    `spawn_flags`, `visibility_mod`
) VALUES (
    2582817, 15442, 0, 0, 0, 1, -7173.26, 1392.86, 2.6812, 2.29339, 
    120, 120, 0, 100, 100, 0, 0, 0
);

-- Move Janela Stouthammer to the front of the battalion
UPDATE `creature` 
SET `position_x` = -7178.992676, `position_y` = 1391.631470, 
    `position_z` = 2.871707, `orientation` = 2.28552
WHERE `guid` = 42914;

-- Move Arcanist Nozzlespring to the front of the battalion
UPDATE `creature` 
SET `position_x` = -7177.598633, `position_y` = 1393.167969, 
    `position_z` = 2.645966, `orientation` = 2.28552 
WHERE `guid` = 42915;

-- Move Sergeant Carnes to the side of the middle of the battalion
UPDATE `creature` 
SET `position_x` = -7169.549805, `position_y` = 1393.961304, 
    `position_z` = 2.706470, `orientation` = 3.019884 
WHERE `guid` = 42749;
