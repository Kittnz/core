delete from npc_vendor where entry = 80958;
delete from creature where id = 80958;
delete from creature where guid = 2561158;

-- Fix some tabard's prices:

UPDATE `item_template` SET `buy_price` = 50000, `sell_price` = 15000 WHERE `entry` = 81089;
UPDATE `item_template` SET `buy_price` = 50000, `sell_price` = 15000 WHERE `entry` = 80316;
