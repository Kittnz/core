-- Fix teleport to Caverns of Time:
replace into spell_target_position (id, target_map, target_position_x, target_position_y, target_position_z, target_orientation) VALUES (52005, 1, -8170.67, -4758.11, 33.33, 4.8);

update spell_template set effect1 = 5 where entry = 52005;

-- Outline: Repaired Electro-Lantern

update item_template set spellid_1 = 46078, required_skill = 142, required_skill_rank = 90, buy_price = 100000, sell_price = 5000 where entry = 65031;
update item_template set quality = 1 where entry = 1630;

-- Double check for vendoring exploits:

update item_template set sell_price =  buy_price * 0.4 where sell_price > buy_price;