-- Set scale of npc Snarlclaw (entry 61405) to 2.4.
update creature_template set scale = 2.4 where entry = 61405;
-- Set the scale of the following NPCS to 1 (They are tiny and like scale 0 or something)
update creature_template set scale = 1 where entry in (61367,61359,61358,61356,61363,61364,61365,61366,61388,61389,61390,61391);
-- The following npcs have the error 'incorrect syntax' entry 61363, 61364.
REPLACE INTO `creature_display_info_addon` (`display_id`, `bounding_radius`, `combat_reach`, `gender`, `display_id_other_gender`) VALUES
(20283, 0, 0, 0, 0),
(20284, 0, 0, 0, 0),
(20263, 0, 0, 0, 0),
(20264, 0, 0, 0, 0);