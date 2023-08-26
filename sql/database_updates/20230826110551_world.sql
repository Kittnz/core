-- Change display id of 61426 to 20492, 20495 and enable serverside.
-- Change display id of 61238 to 20493 and enable serverside.
-- Change display id of 61405 to 20495 and enable serverside.
REPLACE INTO `creature_display_info_addon` (`display_id`, `bounding_radius`, `combat_reach`, `gender`, `display_id_other_gender`) VALUES
(20492, 0, 0, 0, 0),
(20493, 0, 0, 0, 0),
(20495, 0, 0, 0, 0),
(20496, 0, 0, 0, 0);
update creature_template set display_id1 = 20492, display_id2 = 20495 where entry = 61426;
update creature_template set display_id1 = 20493 where entry = 61238;
update creature_template set display_id1 = 20495 where entry = 61405;
