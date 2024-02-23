-- Item Azuresilk Hood, remove the equip spell effect, reduce intellect to 6.
update item_template set spellid_1 = 0, stat_value1 = 7 where entry = 7048;
-- Item Rough Copper Ring (Entry 55156), change sell value to 5c and buy value to 20c.
update item_template set buy_price = 20, sell_price = 5 where entry = 55156;
-- Item Rough Copper Ring (Entry 55156), remove equipable armor effect, change item to trade goods, and allow it to stack to 10.
update item_template set stackable = 10, inventory_type = 0 where entry = 55156;
-- Item Rough Bronze Ring (Entry 55174), remove equipable armor effect, change item to trade goods, and allow it to stack to 10.
update item_template set stackable = 10, inventory_type = 0 where entry = 55174;
-- Item Earthrock Loop, change moving in inventory (Material) sound to jewelry/ring effect.
update item_template set display_id = 3666, material = 4 where entry = 55176;