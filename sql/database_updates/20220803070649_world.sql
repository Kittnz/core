delete from creature_template where entry = 50072;
delete from creature_template where entry = 50071;

-- Table 'creature_loot_template' entry 92145 isn't creature entry and not referenced from loot, and then useless.

delete from creature_loot_template where entry = 92145;

-- Script registering but script_name boss_kintozo is not assigned in database. Script will not be used.

update creature_template set script_name = 'boss_kintozo' where entry = 80269;

-- Creature (Entry: 60884) has nonexistent display_id1 (4651), can crash client
-- Creature (Entry: 60884) is using display_id1 (0), but creature_display_info_addon data is missing for this id.
-- Creature (Entry: 60884) does not have any valid display id

update creature_template set display_id1 = 1504 where entry = 60884;

-- Table `npc_trainer` have data for creature (Entry: 3689) without trainer flag, ignore

delete from npc_trainer where entry = 3689;

-- Gossip menu option (MenuId: 50450) for nonexistent menu

delete from gossip_menu_option where menu_id = 50450;

-- Table creature_movement has waypoint for creature guid 27973 (entry 4690), but MovementType is not WAYPOINT_MOTION_TYPE(2). Creature will not use this path.
-- creature_template for this entry has MovementType WAYPOINT_MOTION_TYPE(2), did you intend to use creature_movement_template?
	
delete from creature_movement where id = 27973;