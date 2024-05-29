-- https://turtle-wow.org/bug-report?id=7277 Item Mageweave Cloth removed from loot of NPCs Gibbering Ghoul and Scourge Warder.
delete from creature_loot_template where item = 4338 and entry in (8525,8531);
-- https://turtle-wow.org/bug-report?id=6932 Item Earthclad Brasers have vendor price now.
update item_template set buy_price = 52082, sell_price = 10416 where entry = 80851;
-- https://turtle-wow.org/bug-report?id=7270 NPC Moonstalker Matriarch stuck in the tree in the Darkshore is free now.
update creature set position_x = 7736.90, position_y = -1063.71, position_z = 38.11 where guid = 36959;
