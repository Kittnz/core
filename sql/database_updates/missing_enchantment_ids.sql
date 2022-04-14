update item_template set disenchant_id = 7 where entry in (81411, 81402);	

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1304

update item_template set class = 13, subclass = 0, bag_family = 9 where entry = 60302; 