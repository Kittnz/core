-- Remove things checking if patch is below 1.10.
DELETE FROM `creature_loot_template` WHERE `condition_id` IN (4000, 4025, 4026, 4027, 4029);
DELETE FROM `disenchant_loot_template` WHERE `condition_id` IN (4000, 4025, 4026, 4027, 4029);
DELETE FROM `fishing_loot_template` WHERE `condition_id` IN (4000, 4025, 4026, 4027, 4029);
DELETE FROM `gameobject_loot_template` WHERE `condition_id` IN (4000, 4025, 4026, 4027, 4029);
DELETE FROM `item_loot_template` WHERE `condition_id` IN (4000, 4025, 4026, 4027, 4029);
DELETE FROM `mail_loot_template` WHERE `condition_id` IN (4000, 4025, 4026, 4027, 4029);
DELETE FROM `reference_loot_template` WHERE `condition_id` IN (4000, 4025, 4026, 4027, 4029);
DELETE FROM `skinning_loot_template` WHERE `condition_id` IN (4000, 4025, 4026, 4027, 4029);
DELETE FROM `gossip_menu` WHERE `condition_id` IN (4000, 4025, 4026, 4027, 4029);
DELETE FROM `gossip_menu_option` WHERE `condition_id` IN (4000, 4025, 4026, 4027, 4029);
DELETE FROM `creature_ai_events` WHERE `condition_id` IN (4000, 4025, 4026, 4027, 4029);
DELETE FROM `creature_ai_scripts` WHERE `condition_id` IN (4000, 4025, 4026, 4027, 4029);
DELETE FROM `creature_movement_scripts` WHERE `condition_id` IN (4000, 4025, 4026, 4027, 4029);
DELETE FROM `creature_spells_scripts` WHERE `condition_id` IN (4000, 4025, 4026, 4027, 4029);
DELETE FROM `event_scripts` WHERE `condition_id` IN (4000, 4025, 4026, 4027, 4029);
DELETE FROM `generic_scripts` WHERE `condition_id` IN (4000, 4025, 4026, 4027, 4029);
DELETE FROM `gossip_scripts` WHERE `condition_id` IN (4000, 4025, 4026, 4027, 4029);
DELETE FROM `gameobject_scripts` WHERE `condition_id` IN (4000, 4025, 4026, 4027, 4029);
DELETE FROM `spell_scripts` WHERE `condition_id` IN (4000, 4025, 4026, 4027, 4029);
DELETE FROM `quest_end_scripts` WHERE `condition_id` IN (4000, 4025, 4026, 4027, 4029);
DELETE FROM `quest_start_scripts` WHERE `condition_id` IN (4000, 4025, 4026, 4027, 4029);

-- Remove condition from things checking if patch is above some low value.
DELETE FROM `creature_loot_template` WHERE `condition_id` IN (4012, 4013, 4014, 4015, 4016, 4018, 4019);
DELETE FROM `disenchant_loot_template` WHERE `condition_id` IN (4012, 4013, 4014, 4015, 4016, 4018, 4019);
DELETE FROM `fishing_loot_template` WHERE `condition_id` IN (4012, 4013, 4014, 4015, 4016, 4018, 4019);
DELETE FROM `gameobject_loot_template` WHERE `condition_id` IN (4012, 4013, 4014, 4015, 4016, 4018, 4019);
DELETE FROM `item_loot_template` WHERE `condition_id` IN (4012, 4013, 4014, 4015, 4016, 4018, 4019);
DELETE FROM `mail_loot_template` WHERE `condition_id` IN (4012, 4013, 4014, 4015, 4016, 4018, 4019);
DELETE FROM `reference_loot_template` WHERE `condition_id` IN (4012, 4013, 4014, 4015, 4016, 4018, 4019);
DELETE FROM `skinning_loot_template` WHERE `condition_id` IN (4012, 4013, 4014, 4015, 4016, 4018, 4019);
DELETE FROM `gossip_menu` WHERE `condition_id` IN (4012, 4013, 4014, 4015, 4016, 4018, 4019);
DELETE FROM `gossip_menu_option` WHERE `condition_id` IN (4012, 4013, 4014, 4015, 4016, 4018, 4019);
DELETE FROM `creature_ai_events` WHERE `condition_id` IN (4012, 4013, 4014, 4015, 4016, 4018, 4019);
DELETE FROM `creature_ai_scripts` WHERE `condition_id` IN (4012, 4013, 4014, 4015, 4016, 4018, 4019);
DELETE FROM `creature_movement_scripts` WHERE `condition_id` IN (4012, 4013, 4014, 4015, 4016, 4018, 4019);
DELETE FROM `creature_spells_scripts` WHERE `condition_id` IN (4012, 4013, 4014, 4015, 4016, 4018, 4019);
DELETE FROM `event_scripts` WHERE `condition_id` IN (4012, 4013, 4014, 4015, 4016, 4018, 4019);
DELETE FROM `generic_scripts` WHERE `condition_id` IN (4012, 4013, 4014, 4015, 4016, 4018, 4019);
DELETE FROM `gossip_scripts` WHERE `condition_id` IN (4012, 4013, 4014, 4015, 4016, 4018, 4019);
DELETE FROM `gameobject_scripts` WHERE `condition_id` IN (4012, 4013, 4014, 4015, 4016, 4018, 4019);
DELETE FROM `spell_scripts` WHERE `condition_id` IN (4012, 4013, 4014, 4015, 4016, 4018, 4019);
DELETE FROM `quest_end_scripts` WHERE `condition_id` IN (4012, 4013, 4014, 4015, 4016, 4018, 4019);
DELETE FROM `quest_start_scripts` WHERE `condition_id` IN (4012, 4013, 4014, 4015, 4016, 4018, 4019);

-- Remove existing db conditions for checking patch.
DELETE FROM `conditions` WHERE `condition_entry` IN (4000, 4012, 4013, 4014, 4015, 4016, 4018, 4019, 4025, 4026, 4027, 4029);

-- 4209:  Not (Not (4204: Target Is Revered Or Better With Faction 749))
UPDATE `conditions` SET `type`=-3, `value1`=4204, `value2`=0, `flags`=1 WHERE `condition_entry`=4209;

-- 4210: Not (4204: Target Is Revered Or Better With Faction 749)
UPDATE `conditions` SET `type`=-3, `value1`=4204, `value2`=0, `flags`=0 WHERE `condition_entry`=4210;

-- 4215:  Not (Not (2: Target Is Team Horde))
UPDATE `conditions` SET `type`=-3, `value2`=0, `flags`=1 WHERE `condition_entry`=4215;

-- 4500:  Not (Not (402: Target's Level Is Equal Or Greater Than 17))
UPDATE `conditions` SET `type`=-3, `value2`=0, `flags`=1 WHERE `condition_entry`=4500;

-- 4719:  Not (Not (717: Hardcoded Condition 4 For Map 4))
UPDATE `conditions` SET `type`=-3, `value2`=0, `flags`=1 WHERE `condition_entry`=4719;

-- 4720:  Not (Not (718: Hardcoded Condition 8 For Map 8))
UPDATE `conditions` SET `type`=-3, `value2`=0, `flags`=1 WHERE `condition_entry`=4720;

-- 7408:  Not (Not (7407: (2767: Target Has Done Quest 2767) Or (7406: (648: Target Has Done Quest 648) Or (836: Target Has Done Quest 836))))
UPDATE `conditions` SET `type`=-3, `value1`=7407, `value2`=0, `flags`=1 WHERE `condition_entry`=7408;

-- 18717:  Not (Not (18714: (18713:  Not (Target Has 1 Stacks Of Item 18713 In Inventory)) And (18712: (7635: Target Has Done Quest 7635) And (7636: Target Has Done Quest 7636))))
UPDATE `conditions` SET `type`=-3, `value2`=0, `flags`=1 WHERE `condition_entry`=18717;

-- 18718:  Not (Not (18716: (18715:  Not (Target Has 1 Stacks Of Item 18715 In Inventory)) And (18712: (7635: Target Has Done Quest 7635) And (7636: Target Has Done Quest 7636))))
UPDATE `conditions` SET `type`=-3, `value2`=0, `flags`=1 WHERE `condition_entry`=18718;

-- 50414:  Not (Not (50413: (50409: Target Has Done Quest 5213) And (50412: (50410:  Not (Target Has 1 Stacks Of Item 13209 In Inventory)) And (50411:  Not (Target Has 1 Stacks Of Item 19812 In Inventory)))))
UPDATE `conditions` SET `type`=-3, `value1`=50413, `value2`=0, `flags`=1 WHERE `condition_entry`=50414;

-- Add required phase column.
ALTER TABLE `areatrigger_teleport`
	ADD COLUMN `required_phase` TINYINT UNSIGNED NOT NULL DEFAULT '0' AFTER `required_condition`;
ALTER TABLE `game_event`
	ADD COLUMN `required_phase` TINYINT(4) NOT NULL DEFAULT '0' AFTER `disabled`;

-- Text when attempting to enter unreleased instance.
SET NAMES utf8;
INSERT INTO `mangos_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES (60, 'This instance will become available in phase %u.', '이 인스턴스는 %u 단계에서 사용할 수 있게 됩니다.', 'Cette instance sera disponible dans la phase %u.', 'Diese Instanz wird in Phase %u verfügbar sein.', '该实例将在阶段 %u 中变得可用。', '該實例將在階段 %u 中變得可用。', 'Esta instancia estará disponible en la fase %u.', '', 'Этот экземпляр станет доступен на этапе %u.');

-- Phase 2 raids
UPDATE `areatrigger_teleport` SET `required_phase`=1 WHERE `id`=3726; -- Blackwing Lair - Entrance
UPDATE `areatrigger_teleport` SET `required_phase`=1 WHERE `id`=3928; -- Zul'Gurub - Entrance
UPDATE `areatrigger_teleport` SET `required_phase`=1 WHERE `id`=5017; -- Emerald Sanctum - Entrance

-- Phase 3 raids
UPDATE `areatrigger_teleport` SET `required_phase`=2 WHERE `id`=4008; -- Ruins Of Ahn'Qiraj - Entrance
UPDATE `areatrigger_teleport` SET `required_phase`=2 WHERE `id`=4010; -- Temple of Ahn'Qiraj - Entrance

-- Phase 4 raids
UPDATE `areatrigger_teleport` SET `required_phase`=3 WHERE `id`=4055; -- Naxxramas - Entrance

-- Phase 2 events.
UPDATE `game_event` SET `required_phase`=1 WHERE `entry`=66; -- Dragons of Nightmare Spawn

-- Phase 3 events.
UPDATE `game_event` SET `required_phase`=2 WHERE `entry`=62; -- AQ War - Secrets of the Colossus Ashi
UPDATE `game_event` SET `required_phase`=2 WHERE `entry`=63; -- AQ War - Secrets of the Colossus Regal
UPDATE `game_event` SET `required_phase`=2 WHERE `entry`=64; -- AQ War - Secrets of the Colossus Zora
UPDATE `game_event` SET `required_phase`=2 WHERE `entry`=65; -- AQ War - Spawn of Crystals
UPDATE `game_event` SET `required_phase`=2 WHERE `entry`=59; -- AQ War Effort (Cenarion Hold attack)
UPDATE `game_event` SET `required_phase`=2 WHERE `entry`=85; -- AQ War Effort (gong)
UPDATE `game_event` SET `required_phase`=2 WHERE `entry`=84; -- AQ War Effort (master event)
UPDATE `game_event` SET `required_phase`=2 WHERE `entry`=22; -- AQ War Effort (NPC & GO 'Initial')
UPDATE `game_event` SET `required_phase`=2 WHERE `entry`=52; -- AQ War Effort (NPC Reput 'Only War Effort')
UPDATE `game_event` SET `required_phase`=2 WHERE `entry`=53; -- AQ War Effort (NPC Reput Named 'Officer')
UPDATE `game_event` SET `required_phase`=2 WHERE `entry`=86; -- AQ War Effort (post-event)
UPDATE `game_event` SET `required_phase`=2 WHERE `entry`=61; -- AQ War Final Battle (NPC)
UPDATE `game_event` SET `required_phase`=2 WHERE `entry`=54; -- AQ War Troop Silithus (NPC & GO) DAY 1
UPDATE `game_event` SET `required_phase`=2 WHERE `entry`=55; -- AQ War Troop Silithus (NPC & GO) DAY 2
UPDATE `game_event` SET `required_phase`=2 WHERE `entry`=56; -- AQ War Troop Silithus (NPC & GO) DAY 3
UPDATE `game_event` SET `required_phase`=2 WHERE `entry`=57; -- AQ War Troop Silithus (NPC & GO) DAY 4
UPDATE `game_event` SET `required_phase`=2 WHERE `entry`=58; -- AQ War Troop Silithus (NPC & GO) DAY 5
UPDATE `game_event` SET `required_phase`=2 WHERE `entry`=60; -- AQ War Troop Silithus 3 (NPC & GO)

-- Phase 4 events.
UPDATE `game_event` SET `required_phase`=3 WHERE `entry`=17; -- Scourge Invasion
UPDATE `game_event` SET `required_phase`=3 WHERE `entry`=81; -- Scourge Invasion - Boss in instance activation
UPDATE `game_event` SET `required_phase`=3 WHERE `entry`=129; -- Scourge Invasion - Phase 2 - Invasion Stormwind
UPDATE `game_event` SET `required_phase`=3 WHERE `entry`=130; -- Scourge Invasion - Phase 2 - Invasion Undercity
UPDATE `game_event` SET `required_phase`=3 WHERE `entry`=80; -- Scourge Invasion - Skeleton spawn / Quest activation lvl 9-11
