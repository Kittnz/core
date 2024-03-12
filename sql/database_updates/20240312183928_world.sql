-- Quest 41018, change requirement of 5x 61706 corrupt dream shard to 8x.
update quest_template set ReqItemCount1 = 8 where entry = 41018;
-- Item Entry 55152, heavy gritted paper, change to trade goods.
update item_template set class = 7, subclass = 0 where entry = 55152;
-- Item entry 41344, Heavy gemstone cluster, change to junk/misc.
update item_template set class = 15, subclass = 0 where entry = 41344;
-- Item entry 41320, coarse gemstone cluster, change to junk/misc.
update item_template set class = 15, subclass = 0 where entry = 41320;
-- Item entry 2880 and 3466, change description to : "Used by blacksmiths and jewelcrafters to remove impurities."
update item_template set description = 'Used by blacksmiths and jewelcrafters to remove impurities.' where entry in (2880,3466);
-- Item Twilight Opal Cascade (55263), change display ID to 23897.
update item_template set display_id = 23897 where entry = 55263;
-- Item sunburst Tiara (55266), change display ID to 27293.
update item_template set display_id = 27293 where entry = 55266;
-- Item Prism Amulet (entry 55199), change display ID to 31603.
update item_template set display_id = 31603 where entry = 55199;
-- Item Starforge Amulet (entry 55197), change display ID to 9859.
update item_template set display_id = 9859 where entry = 55197;
-- Item Voidheart Charm (entry 55200), change display ID to 68076.
update item_template set display_id = 68076 where entry = 55200;
-- Item Gemmed Citrine Pendant (entry 55202), change display ID to 15420.
update item_template set display_id = 15420 where entry = 55202;
-- Item Runebound Amulet ( entry 55204), change display ID to 2667.
update item_template set display_id = 2667 where entry = 55204;
-- Item Astral Amulet (entry 55195), change display ID to 66201.
update item_template set display_id = 66201 where entry = 55195;
-- Item entry 56031, change display ID to 68097.
update item_template set display_id = 68097 where entry = 56031;
