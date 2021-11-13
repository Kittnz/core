update item_template set buy_price = 0, sell_price = 0 where name like '%tabard%';
update item_template set buy_price = 50000, sell_price = 12500 where entry in 
(81077, 19505, 80312, 7725, 20132, 20131, 80301, 81289, 80305, 80304, 81089, 80313, 19031, 80306, );

delete from npc_vendor where item = 81079;
update item_template set buy_price = 10000, sell_price = 2500 where entry = 5976;