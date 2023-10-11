-- Whops.
update item_template set stat_value1 = 15, stat_value2 = 20, spellid_2 = 14799, spellid_3 = 23727 where entry = 16928; -- Nemesis Gloves
update item_template set stat_value3 = 13, spellid_1 = 13679 where entry = 61212; -- Sanctum Bark Wraps
update item_template set spellid_3 = 23727 where entry = 84504; -- Ring of Nature's Duality
-- Change health of npc:
-- 65104 to 9103-9374.
update creature_template set health_min = 9103, health_max = 9374 where entry = 65104;
-- 65105 to 26356.
update creature_template set health_min = 26356, health_max = 26356 where entry = 65105;
-- 65100 to 14220.
update creature_template set health_min = 14220, health_max = 14220 where entry = 65100;
-- 65101 to 16104.
update creature_template set health_min = 16104, health_max = 16104 where entry = 65101;
-- 65102 to 12179.
update creature_template set health_min = 12179, health_max = 12179 where entry = 65102;
-- 65106 to 26784.
update creature_template set health_min = 26784, health_max = 26784 where entry = 65106;
-- Nightmare Effigy can drop even if youre not on its related quest, should be fixed. 
delete from creature_loot_template where item = 61556 and chanceorquestchance = 50;
-- Change armor of npc:
-- 65104, 65105 to 3552.
update creature_template set armor = 3552 where entry = 65105;
-- 65100, 65101, 65102 to 4035.
update creature_template set armor = 4035 where entry in (65100, 65101, 65102);
-- 65106 to 4426.
update creature_template set armor = 4426 where entry = 65106;
-- Increase the damage of Dark Rider Champion (Entry 61204) by 30%.
update creature_template set dmg_min = 1178, dmg_max = 1536 where entry = 61204;
-- Increase the hp of Dark Rider Champion (Entry 61204) to 85305.
update creature_template set health_min = 85305, health_max = 85305 where entry = 61204;
-- Item 61733 make Bind on Pickup.
update item_template set bonding = 1 where entry = 61733;
-- Change drop chance of Golden Frog (Entry 54007) to 0.015% from all sources.
update creature_loot_template set chanceorquestchance = 0.015 where item = 54007 and entry in (61083,61084,61085,61086,61087,61088,61129,61130,61131,61079);