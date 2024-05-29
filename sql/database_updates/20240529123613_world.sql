-- https://turtle-wow.org/bug-report?id=7277 Item Mageweave Cloth removed from loot of NPCs Gibbering Ghoul and Scourge Warder.
delete from creature_loot_template where item = 4338 and entry in (8525,8531);
-- https://turtle-wow.org/bug-report?id=6932 Item Earthclad Brasers have vendor price now.
update item_template set buy_price = 52082, sell_price = 10416 where entry = 80851;
