-- Black Riding Boots are unable to be repaired #6071
update item_template set item_level = 1 where entry = 41258;
-- Unfishable school of fish in strangelthorn #6065
update gameobject set position_x = -12026.2, position_y = 534.563 where guid = 47407;
