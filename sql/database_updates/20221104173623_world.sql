UPDATE `creature_template` SET `display_id1` = 18618, `scale` = 0.8 WHERE `entry` = 50041;
REPLACE INTO `creature_display_info_addon` (`display_id`, `bounding_radius`, `combat_reach`) VALUES (18618, 0.3, 1);
UPDATE `spell_template` SET `spellVisual1` = 5160 WHERE `entry` = 18363;