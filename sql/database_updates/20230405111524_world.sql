-- NPC Bloodclaw Worgen (Entry 61251), Bloodclaw Alpha (61252), and Bloodclaw Rager (61253) all look like wisps and need their display ID corrected to 61191
update creature_template set display_id1 = 18174 where entry in (61251,61252,61253);
-- NPC Brother Elias (61387) change display ID to 18677
update creature_template set display_id1 = 18677 where entry = 61387;
-- NPC Odon Shademoore (61380) change display ID to 221
update creature_template set display_id1 = 221 where entry = 61380;
-- npc 61374, npc 61375 error incorrect syntax
REPLACE INTO `creature_display_info_addon` (`display_id`, `bounding_radius`, `combat_reach`, `gender`, `display_id_other_gender`) VALUES
(18174, 0, 0, 0, 0),
(18728, 0, 0, 0, 0),
(19137, 0, 0, 0, 0);
-- NPC Frell Rosewick, change scale to 1
update creature_template set scale = 0 where entry = 61381;
