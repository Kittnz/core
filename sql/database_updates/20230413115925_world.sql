-- The following npcs need their scale set to 1. 61398, 61397, 61396, 61395, 61394, 61393, 61391, 61390, 61389, 61388, 61366, 61365, 61364, 61363.
update  creature_template set scale = 0 where entry in (61398, 61397, 61396, 61395, 61394, 61393, 61391, 61390, 61389, 61388, 61366, 61365, 61364, 61363);
-- Set mana of npc Nighthowl Shadowcaster (entry 61238) to 1299.
update creature_template set mana_min = 1299, mana_max = 1299, unit_class = 2 where entry = 61238;
