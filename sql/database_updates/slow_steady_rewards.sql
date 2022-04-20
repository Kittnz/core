delete from item_loot_template where entry = 50050;
delete from item_loot_template where entry = 50051;
delete from item_loot_template where entry = 50052;
delete from item_loot_template where entry = 50053;
delete from item_loot_template where entry = 50054;
delete from item_loot_template where entry = 50055;

delete from item_loot_template where item = 50058;
delete from item_loot_template where item = 50079;
delete from item_loot_template where item = 10683;

update item_template set quality = 1, description = 'Dressing for success, or at least so you don’t look homeless.' where entry = 964;
update item_template set quality = 3, name = 'Treasure Seeker\'s Torch', description = 'Never miss a chest in the dark!' where entry = 50049;
update item_template set quality = 3, name = 'Purple Tallstrider', description = 'Accidentally released by the Darkmoon Faire — makes for a surprisingly sturdy steed.' where entry = 50075;
update item_template set quality = 3 where entry = 50094;
update item_template set description = 'An easy-going traveling companion.' where entry = 50058;
update item_template set description = 'The best way to give away your position!' where entry = 23714;
update item_template set description = 'This little friend snuck into your boot to join you on your travels.' where entry = 50079;
update item_template set container_slots = 8, name = 'Adventurer\'s Belt Pouch', description = 'An adventurer’s best friend — can’t pick this pocket!' where entry = 4981;
update item_template set container_slots = 14, name = 'Adventurer\'s Satchel', description = 'Bigger pockets for bigger adventures!' where entry = 3762;
update item_template set container_slots = 16, name = 'Adventurer\'s Knapsack', description = 'With this on your back, you\'re basically a turtle.' where entry = 10683;

delete from quest_template where entry = 60003;

-- Level 10
insert into item_loot_template values (50050, 51217, 100, 1, 5, 5, 0); -- Fashion Coin x5
insert into item_loot_template values (50050, 964,   100, 2, 1, 1, 0); -- Shirt
insert into item_loot_template values (50050, 4981,  100, 3, 1, 1, 0); -- 8-slot bag

-- Level 20
insert into item_loot_template values (50051, 51217, 100, 1, 5, 5, 0); -- Fashion Coin x5
insert into item_loot_template values (50051, 50049, 100, 2, 1, 1, 0); -- Torch
insert into item_loot_template values (50051, 50058, 100, 3, 1, 1, 0); -- Piglet Pet

-- Level 30
insert into item_loot_template values (50052, 51217, 100, 1, 5, 5, 0); -- Fashion Coin x5
insert into item_loot_template values (50052, 23716, 100, 2, 1, 1, 0); -- Carved Ogre Trinket
insert into item_loot_template values (50052, 3762,  100, 3, 1, 1, 0); -- 14-slot bag

-- Level 40
insert into item_loot_template values (50053, 51217, 100, 1, 5, 5, 0); -- Fashion Coin x5
insert into item_loot_template values (50053, 23714, 100, 2, 1, 1, 0); -- Firework
insert into item_loot_template values (50053, 50079, 100, 3, 1, 1, 0); -- Island Frog Pet

-- Level 50
insert into item_loot_template values (50054, 51217, 100, 1, 5, 5, 0); -- Fashion Coin x5
insert into item_loot_template values (50054, 19054, 100, 2, 1, 1, 0); -- Red Dragon Pet
insert into item_loot_template values (50054, 10683, 100, 3, 1, 1, 0); -- 16-slot bag
insert into item_loot_template values (50054, 51836, 100, 4, 1, 1, 0); -- Murloc Illusion

-- Level 60
insert into item_loot_template values (50055, 51217, 100, 1, 5, 5, 0); -- Fashion Coin x5
insert into item_loot_template values (50055, 19160, 100, 2, 1, 1, 0); -- Tabard
insert into item_loot_template values (50055, 50094, 100, 3, 1, 1, 0); -- Sword
insert into item_loot_template values (50055, 50075, 100, 4, 1, 1, 0); -- Purple Tallstrider