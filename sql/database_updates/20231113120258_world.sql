-- Display IDs turned on for Morbiena NPC.
REPLACE INTO `creature_display_info_addon` (`display_id`, `bounding_radius`, `combat_reach`, `gender`, `display_id_other_gender`) VALUES (20520, 0, 0, 0, 0);
REPLACE INTO `creature_display_info_addon` (`display_id`, `bounding_radius`, `combat_reach`, `gender`, `display_id_other_gender`) VALUES (20521, 0, 0, 0, 0);
REPLACE INTO `creature_display_info_addon` (`display_id`, `bounding_radius`, `combat_reach`, `gender`, `display_id_other_gender`) VALUES (20522, 0, 0, 0, 0);
-- Rename npc Stoneshell Scrabbler Viceclaw to just Stoneshell Scrabbler.
update creature_template set name = 'Stoneshell Scrabbler' where entry = 61679;