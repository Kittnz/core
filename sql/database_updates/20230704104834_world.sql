-- Reduce HP of Rotmaw to 46912, reduce armor of rotmaw to 2034.
update creature_template set health_min = 46912, health_max = 46912, armor = 2034 where entry = 65122;
-- Drifting avatar of sand make immune to sheep/stun/sleep/fear/charm.
update creature_template set mechanic_immune_mask = 68113 where entry = 61316;
-- NPC Temporal Dust make immune to bleed/poison and sheep.
update creature_template set mechanic_immune_mask = 81920 where entry = 61317;
-- NPC Echo of time make immune to bleed/poison and sheep.
update creature_template set mechanic_immune_mask = 81920 where entry = 61318;
-- Echo of the Lich King, Echo of Kael'thas Sunstrider, Echo of Lady Vashj make humanoid.
update creature_template set type = 7 where entry in (65117,65118,65119);
-- Infinite Rift-Lord reduce damage by 20%, reduce hp to 24256, set armor to 4883.
update creature_template set dmg_min = 711, dmg_max = 769, health_min = 24256, health_max = 24256, armor = 4883 where entry = 65105;
-- NPC Lord Blackwald II (entry 61222) add weapon 61247.
set @equip_template = 20413; set @weapon_1 = 61247; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 61222;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;
-- Item Premium Chocolate (61173), add spell on use 1129 with -1 charges to be consumed when eaten, add level requirement of 35.
update item_template set spellid_1 = 1512, spellcharges_1 = -1, required_level = 35 where entry = 61173;
-- Rollo Idleman <Chocolate Vendor>, display ID 1512, faction 474, level 41, scale 1, humanoid, vendor flags, sells item 61173.
REPLACE INTO creature_template VALUES
(61573, 1512, 0, 0, 0, 0, 'Rollo Idleman', 'Chocolate Vendor', 0, 41, 41, 1981, 1981, 0, 0, 2397, 474, 4, 1, 1.14286, 1, 18, 5, 0, 0, 1, 85, 109, 0, 162, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 66, 91, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61573, 61173, 0, 0, 0, 0);
-- 'Stickypaws', <Foulhide Merchant>, display ID 10795, faction 35, level 44, scale 1, humanoid, vendor/gossip flags, gossip text : "Me sick of fighting, no want no violence.$B$BNo fight, me sell-sell!"
REPLACE INTO creature_template VALUES
(61574, 10795, 0, 0, 0, 0, '\'Stickypaws\'', 'Foulhide Merchant', 0, 44, 44, 2117, 2117, 0, 0, 2625, 35, 5, 1, 1.14714, 1, 18, 5, 0, 0, 1, 78, 95, 0, 204, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 84, 115, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @gossip_menu_id = 41501; set @magic_number = 61574;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Me sick of fighting, no want no violence.$B$BNo fight, me sell-sell!');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

-- sells item with limited stock of 3, refreshes every 90 minutes:
replace into item_template values
 ('61676', '0', '0', 'Recipe: Gilneas Hot Stew', '', '811', '2', '0', '1', '2500', '500', '0', '-1', '-1', '40',
 '0', '185', '200', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '45630', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61574, 61676, 3, 5400, 0, 0);
-- sells item with limited stack of 1, refreshes every 60 minutes:
replace into item_template values
 ('61677', '4', '2', 'Foulhide Cuffs', '', '3606', '2', '0', '1', '19147', '3088', '9', '-1', '-1', '43',
 '38', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '5', '3', '5',
 '4', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '47', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '2', '0', '0', '0', '0', '0', '8', '0', '0', '0', '30', '0', '0', '0', '0', '7', '0', '0', '0',
 '0', '1', NULL);

REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61574, 61677, 1, 3600, 0, 0);
-- sells item with limited stack of 1, refreshes every 60 minutes:
replace into item_template values
 ('61678', '4', '1', 'Gnoll Seer Belt', '', '17261', '2', '0', '1', '18254', '2785', '6', '-1', '-1', '43',
 '38', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '11', '6', '5',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '31', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '2', '0', '0', '0', '0', '0', '7', '0', '0', '0', '25', '0', '0', '0', '0', '7', '0', '0', '0',
 '0', '1', NULL);

REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61574, 61678, 1, 3600, 0, 0);
-- sells item with limited stack of 1, refreshes every 60 minutes:
replace into item_template values
 ('61679', '4', '3', 'Rusted Battle Boots', '', '6952', '2', '0', '1', '30908', '6477', '8', '-1', '-1', '43',
 '38', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '11', '4', '3',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '165', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '2', '0', '0', '0', '0', '0', '5', '0', '0', '0', '50', '0', '0', '0', '0', '7', '0', '0', '0',
 '0', '1', NULL);
 
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61574, 61679, 1, 3600, 0, 0);
