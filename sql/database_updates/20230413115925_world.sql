-- The following npcs need their scale set to 1. 61398, 61397, 61396, 61395, 61394, 61393, 61391, 61390, 61389, 61388, 61366, 61365, 61364, 61363.
update  creature_template set scale = 0 where entry in (61398, 61397, 61396, 61395, 61394, 61393, 61391, 61390, 61389, 61388, 61366, 61365, 61364, 61363);
-- Set mana of npc Nighthowl Shadowcaster (entry 61238) to 1299.
update creature_template set mana_min = 1299, mana_max = 1299, unit_class = 2 where entry = 61238;
-- The following npcs have the error 'incorrect syntax' 61366, 61365, 61364, 61363, 61356, 61357, 61358, 61359, 61367.
REPLACE INTO creature_display_info_addon (`display_id`, `bounding_radius`, `combat_reach`, `gender`, `display_id_other_gender`) VALUES
(20283, 0, 0, 0, 0),
(20263, 0, 0, 0, 0),
(20277, 0, 0, 0, 0),
(20275, 0, 0, 0, 0),
(20287, 0, 0, 0, 0),
(20288, 0, 0, 0, 0),
(20289, 0, 0, 0, 0),
(20290, 0, 0, 0, 0),
(20291, 0, 0, 0, 0),
(20292, 0, 0, 0, 0),
(20293, 0, 0, 0, 0),
(20294, 0, 0, 0, 0),
(20295, 0, 0, 0, 0),
(20296, 0, 0, 0, 0);
