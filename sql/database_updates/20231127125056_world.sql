-- For the quests Claws From The Deep ( entry 41158) , Under the Sea (41160), and Dirty Deeds Drowned Deep Below (41159), remove the previous quest so that there is NO previous quests required to start these.
update quest_template set prevquestid = 0 where entry in (41158,41160,41159);
-- The quest 80120 Garbage Man, change area ID to 5536, remove the item rewards and money reward so that it gives no items or money upon completion.
update quest_template set zoneorsort = 5536, reworreqmoney = 0, reqitemid1 = 0, rewitemcount1 = 0 where entry = 80120;
-- Npc 61695 61696 61694 61692 61691 61689 61716 need their display ids enabled serverside.
REPLACE INTO `creature_display_info_addon` (`display_id`, `bounding_radius`, `combat_reach`, `gender`, `display_id_other_gender`) VALUES (20504, 0, 0, 0, 0);
REPLACE INTO `creature_display_info_addon` (`display_id`, `bounding_radius`, `combat_reach`, `gender`, `display_id_other_gender`) VALUES (20511, 0, 0, 0, 0);
REPLACE INTO `creature_display_info_addon` (`display_id`, `bounding_radius`, `combat_reach`, `gender`, `display_id_other_gender`) VALUES (20504, 0, 0, 0, 0);
REPLACE INTO `creature_display_info_addon` (`display_id`, `bounding_radius`, `combat_reach`, `gender`, `display_id_other_gender`) VALUES (20507, 0, 0, 0, 0);
REPLACE INTO `creature_display_info_addon` (`display_id`, `bounding_radius`, `combat_reach`, `gender`, `display_id_other_gender`) VALUES (20510, 0, 0, 0, 0);
REPLACE INTO `creature_display_info_addon` (`display_id`, `bounding_radius`, `combat_reach`, `gender`, `display_id_other_gender`) VALUES (20504, 0, 0, 0, 0);
REPLACE INTO `creature_display_info_addon` (`display_id`, `bounding_radius`, `combat_reach`, `gender`, `display_id_other_gender`) VALUES (20512, 0, 0, 0, 0);
-- Apply SQL and add this item as reward to Thunderforge Mastery.
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, random_property, required_reputation_faction, required_reputation_rank) values (40080, 'Thunderforge Lance', '', 2, 6, 1, 3, 67827, 1, 0, 0, -1, -1, 241153, 48330, 17, 1, 0, 0, 1, 1, 0, 115, 214, 3500, 0, 0, 100, 0, 0, 0, 55, 0, 47, 0, 0, 0, 0, 0, 0, 4, 5, 16921, 2, 0, 0.9, 0, 0, -1, 0, 0, 0);
update quest_template set reqitemid1 = 40080, rewitemcount1 = 1 where entry = 41143;
-- Apply SQL for TH Trash Drops.
update item_template set display_id = 29842 where entry = 40070; -- Arcane Sliver.
update item_template set display_id = 13496 where entry = 40075; -- Drained Manacrystal.
update item_template set display_id = 1216 where entry = 40073; -- Arcane Golem Splinter.
-- Respawn Timers for New Resource Nodes and Chests:
-- GO Entry 1731 set to timer 900 IF below 300 seconds.
update gameobject set spawntimesecsmin = 900, spawntimesecsmax = 900 WHERE id = 1731 AND spawntimesecsmin <= 300;
-- GO Entry 1619 set to timer 900 IF below 300 seconds.
update gameobject set spawntimesecsmin = 900, spawntimesecsmax = 900 WHERE id = 1619 AND spawntimesecsmin <= 300;
-- GO Entry 1617 set to timer 900 IF below 300 seconds.
update gameobject set spawntimesecsmin = 900, spawntimesecsmax = 900 WHERE id = 1617 AND spawntimesecsmin <= 300;
-- GO Entry 1618 set to timer 900 IF below 300 seconds.
update gameobject set spawntimesecsmin = 900, spawntimesecsmax = 900 WHERE id = 1618 AND spawntimesecsmin <= 300;
-- GO Entry 2045 set to timer 900 IF below 300 seconds.
update gameobject set spawntimesecsmin = 900, spawntimesecsmax = 900 WHERE id = 2045 AND spawntimesecsmin <= 300;
-- GO Entry 2843 set to timer 3600 IF below 300 seconds.
update gameobject set spawntimesecsmin = 3600, spawntimesecsmax = 3600 WHERE id = 2843 AND spawntimesecsmin <= 300;
-- GO Entry 106318 set to timer 7200 IF below 300 seconds.
update gameobject set spawntimesecsmin = 7200, spawntimesecsmax = 7200 WHERE id = 106318 AND spawntimesecsmin <= 300;
-- GO Entry 176587 set to timer 2700 IF below 300 seconds.
update gameobject set spawntimesecsmin = 2700, spawntimesecsmax = 2700 WHERE id = 176587 AND spawntimesecsmin <= 300;
-- GO Entry 142141 set to timer 2700 IF below 300 seconds.
update gameobject set spawntimesecsmin = 2700, spawntimesecsmax = 2700 WHERE id = 142141 AND spawntimesecsmin <= 300;
-- GO Entry 324 set to timer 2700 IF below 300 seconds.
update gameobject set spawntimesecsmin = 2700, spawntimesecsmax = 2700 WHERE id = 324 AND spawntimesecsmin <= 300;
-- GO Entry 175404 set to timer 2700 IF below 300 seconds.
update gameobject set spawntimesecsmin = 2700, spawntimesecsmax = 2700 WHERE id = 175404 AND spawntimesecsmin <= 300;
-- GO Entry 153454 set to timer 7200 IF below 300 seconds.
update gameobject set spawntimesecsmin = 7200, spawntimesecsmax = 7200 WHERE id = 153454 AND spawntimesecsmin <= 300;
-- Quest 'Why Not Both?' from Frig Thunderforge in Aerie Peak needs a money reward, 1g50s should be fine.
update quest_template set reworreqmoney = 15000 where entry = 41142;
-- Change name of npc 80877 to Vereesa Windrunner, <Regency Council>.
update creature_template set name = 'Vereesa Windrunner', subname = 'Regency Council' where entry = 80877;
-- Also rename Bright Lynx Martiarch to Bright Lynx Matriarch.
update creature_template set name = 'Bright Lynx Matriarch' where entry = 61698;
-- NPC Gelwex Goldfingers make elite, adjust his stats to match this change.
REPLACE INTO creature_template VALUES
(61670, 7242, 0, 0, 0, 0, 'Gelwex Goldfingers', NULL, 0, 11, 11, 666, 666, 639, 639, 538, 47, 0, 1, 1.14286, 1, 20, 5, 0, 1, 1, 32, 47, 0, 64, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 17.732, 24.3815, 100, 7, 0, 61670, 1537, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 44, 63, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, '');