-- Set GUID 2578190 and 2578191 to play emote 333 TATE_READY1H.
REPLACE INTO `creature_addon` (`guid`, `display_id`, `mount_display_id`, `equipment_id`, `stand_state`, `sheath_state`, `emote_state`, `auras`) VALUES
(2578190, 0, 0, -1, 0, 1, 333, NULL),
(2578191, 0, 0, -1, 0, 1, 333, NULL);
-- Enable displayids 20439-20455 (Melanastrasza turned into a wisp so her display is still broken).
REPLACE INTO `creature_display_info_addon` (`display_id`, `bounding_radius`, `combat_reach`, `gender`, `display_id_other_gender`) VALUES
(20439, 0, 0, 0, 0),
(20440, 0, 0, 0, 0),
(20441, 0, 0, 0, 0),
(20442, 0, 0, 0, 0),
(20443, 0, 0, 0, 0),
(20444, 0, 0, 0, 0),
(20445, 0, 0, 0, 0),
(20446, 0, 0, 0, 0),
(20447, 0, 0, 0, 0),
(20448, 0, 0, 0, 0),
(20449, 0, 0, 0, 0),
(20450, 0, 0, 0, 0),
(20451, 0, 0, 0, 0),
(20452, 0, 0, 0, 0),
(20453, 0, 0, 0, 0),
(20454, 0, 0, 0, 0),
(20455, 0, 0, 0, 0);
-- NPC Lord Xanvarak is unattackable, his faction seems correct but he is in a state of standing still not doing anything and cannot be aggroed.
update creature_template set unit_flags = 0 where entry = 61609;
-- Change NPC scale of Firstborn of Arugal to 2.
update creature_template set scale = 2 where entry = 61558;
-- NPC Haunted Stable Tender and Haunted Blacksmith change damage to 389-512.
update creature_template set dmg_min = 389, dmg_max = 512 where entry in (61201,61202); 
-- Create the following dummy item: "Monster - Kamio Fan", sword, 1h, displayid: 32596
-- Npc entry 61410 and 61414 equip item: "Monster - Kamio Fan". 
set @equip_template = 20428; set @weapon_1 = 61773; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 61410;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20428; set @weapon_1 = 61773; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 61414;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;
