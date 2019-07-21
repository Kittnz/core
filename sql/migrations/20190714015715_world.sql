DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190714015715');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190714015715');
-- Add your query below.

update creature set position_x = -11017.14, position_y = -1884.88, position_z = 49.83, orientation = 2.37 where guid = 4008;
update creature set position_x = -11002.20, position_y = -1913.02, position_z = 49.95, orientation = 4.57 where guid = 4007;

-- Fix gossip option for Torwa Pathfinder.
UPDATE `gossip_menu_option` SET `action_menu_id` = 2201 WHERE `menu_id` = 2188 AND `id` = 0 AND `action_menu_id` = 2189;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `condition_id`) VALUES
(2201, 2835, 0);

-- Molten War Golem should have massive frost vulnerability.
-- https://www.wowhead.com/npc=8908/molten-war-golem#comments
-- Assuming the giant hits reported in wowhead comments were a
-- wotlk bug, because they are all from 2009/2010.
UPDATE `creature_template` SET `frost_res`=-140 WHERE `entry`=8908;

-- Tar mobs should have fire vulnerability.
-- https://classic.wowhead.com/npc=6517/tar-beast#comments
-- https://classic.wowhead.com/npc=6527/tar-creeper#screenshots
-- https://classic.wowhead.com/npc=6519/tar-lord#comments
-- https://classic.wowhead.com/npc=6518/tar-lurker#comments
UPDATE `creature_template` SET `fire_res`=-51 WHERE `entry` IN (6518, 6519, 6527, 6517);

-- Creatures with vulnerability in cmangos db.
UPDATE `creature_template` SET `frost_res`=-52 WHERE `entry`=8909;
UPDATE `creature_template` SET `fire_res`=-58 WHERE `entry`=11461;
UPDATE `creature_template` SET `fire_res`=-55 WHERE `entry`=11462;
UPDATE `creature_template` SET `fire_res`=-56 WHERE `entry`=11464;
UPDATE `creature_template` SET `fire_res`=-58 WHERE `entry`=11465;
UPDATE `creature_template` SET `frost_res`=-93 WHERE `entry`=11664;
UPDATE `creature_template` SET `frost_res`=-93 WHERE `entry`=11666;
UPDATE `creature_template` SET `frost_res`=-93 WHERE `entry`=11667;
UPDATE `creature_template` SET `frost_res`=-93 WHERE `entry`=11668;
UPDATE `creature_template` SET `frost_res`=-93 WHERE `entry`=12143;
UPDATE `creature_template` SET `frost_res`=-186 WHERE `entry`=12265;

REPLACE INTO `creature_spells` (`entry`, `name`, `spellId_1`, `probability_1`, `castTarget_1`, `targetParam1_1`, `targetParam2_1`, `castFlags_1`, `delayInitialMin_1`, `delayInitialMax_1`, `delayRepeatMin_1`, `delayRepeatMax_1`, `scriptId_1`, `spellId_2`, `probability_2`, `castTarget_2`, `targetParam1_2`, `targetParam2_2`, `castFlags_2`, `delayInitialMin_2`, `delayInitialMax_2`, `delayRepeatMin_2`, `delayRepeatMax_2`, `scriptId_2`, `spellId_3`, `probability_3`, `castTarget_3`, `targetParam1_3`, `targetParam2_3`, `castFlags_3`, `delayInitialMin_3`, `delayInitialMax_3`, `delayRepeatMin_3`, `delayRepeatMax_3`, `scriptId_3`, `spellId_4`, `probability_4`, `castTarget_4`, `targetParam1_4`, `targetParam2_4`, `castFlags_4`, `delayInitialMin_4`, `delayInitialMax_4`, `delayRepeatMin_4`, `delayRepeatMax_4`, `scriptId_4`, `spellId_5`, `probability_5`, `castTarget_5`, `targetParam1_5`, `targetParam2_5`, `castFlags_5`, `delayInitialMin_5`, `delayInitialMax_5`, `delayRepeatMin_5`, `delayRepeatMax_5`, `scriptId_5`, `spellId_6`, `probability_6`, `castTarget_6`, `targetParam1_6`, `targetParam2_6`, `castFlags_6`, `delayInitialMin_6`, `delayInitialMax_6`, `delayRepeatMin_6`, `delayRepeatMax_6`, `scriptId_6`, `spellId_7`, `probability_7`, `castTarget_7`, `targetParam1_7`, `targetParam2_7`, `castFlags_7`, `delayInitialMin_7`, `delayInitialMax_7`, `delayRepeatMin_7`, `delayRepeatMax_7`, `scriptId_7`, `spellId_8`, `probability_8`, `castTarget_8`, `targetParam1_8`, `targetParam2_8`, `castFlags_8`, `delayInitialMin_8`, `delayInitialMax_8`, `delayRepeatMin_8`, `delayRepeatMax_8`, `scriptId_8`) VALUES (50106, 'Time Anomaly', 27989, 100, 0, 0, 0, 0, 10, 10, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
delete from creature_template_addon where entry = 50106;
replace into creature_template_addon (entry, auras) values (50106, 28126);
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount) values
(50106, 50203, 50, 1, 1);
replace into creature_template (entry, display_id1, name, subname, level_min, level_max, health_min, health_max, mana_min, mana_max, armor, faction, speed_walk, speed_run, scale, detection_range, rank, dmg_min, dmg_max, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, type_flags, loot_id, gold_min, gold_max, movement_type, inhabit_type, regeneration, equipment_id, mechanic_immune_mask, flags_extra, spell_list_id, ai_name) values
(50106, 7857, 'Time Anomaly', '', 58, 61, 4235, 5641, 1912, 2890, 2431, 7, 1, 1.14286, 1, 20, 0, 141, 162, 286, 1, 2000, 1500, 600, 825, 100, 10, 76, 50106, 0, 0, 0, 1, 3, 0, 8413718, 0, 50106, '');
-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
