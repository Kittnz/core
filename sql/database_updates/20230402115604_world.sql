-- Item: Jungle Venom Gland #3124
delete from creature_loot_template where entry = 9776 and item = 60250;
-- Item: Scalding Flamekin Heart #3125
delete from creature_loot_template where entry in (9779,91966) and item = 60712;
-- Item: Junglepaw Fang #3123
delete from creature_loot_template where entry = 2522 and item = 60248;
-- Head of Bazil Thredd shouldn't be dropped from goblins in STV #2998.
delete from creature_loot_template where entry = 921 and item = 2926;
-- https://database.turtle-wow.org/?item=61153 should onyl drop for alliance.
update item_template set allowable_race = 589 where entry = 61153;
-- Set respawn timer of Carver Molson to 5m.
update creature set spawntimesecsmin = 300, spawntimesecsmax = 300 where ID = 60878;