-- Item "Font of Arcana" (entry 61484), needs to have its drop chance increased to 72% and must drop from Azurescale Manaweaver (Entry 60910).
update creature_template set loot_id = 60910 where entry = 60910;
update creature_loot_template set ChanceOrQuestChance = -72 where entry = 60910 and item = 61484;

REPLACE INTO `creature_display_info_addon` (`display_id`, `bounding_radius`, `combat_reach`, `gender`, `display_id_other_gender`) VALUES
(20273, 0, 0, 0, 0);
-- Guard Captain Marson, display ID 20273, faction 14, level 45, humanoid, scale 1, weapon 61074
REPLACE INTO creature_template VALUES
(61543, 20273, 0, 0, 0, 0, 'Guard Captain Marson', NULL, 0, 45, 45, 3120, 3120, 0, 0, 3100, 14, 0, 1, 1.14714, 1, 18, 5, 0, 0, 1, 97, 119, 0, 204, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 7, 0, 61543, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 84, 115, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @equip_template = 20403; set @weapon_1 = 61074; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 61543;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;
