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
