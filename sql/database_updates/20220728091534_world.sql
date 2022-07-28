-- Fix teleport to Caverns of Time:
replace into spell_target_position (id, target_map, target_position_x, target_position_y, target_position_z, target_orientation) VALUES (52005, 1, -8170.67, -4758.11, 33.33, 4.8);

update spell_template set effect1 = 5 where entry = 52005;