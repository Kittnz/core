-- https://turtle-wow.org/bug-report?id=7277 Item Mageweave Cloth removed from loot of NPCs Gibbering Ghoul and Scourge Warder.
delete from creature_loot_template where item = 4338 and entry in (8525,8531);
