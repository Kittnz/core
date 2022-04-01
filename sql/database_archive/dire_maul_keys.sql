-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1208
-- The Dire Maul North instance has a door key to open the final door dropped by the first boss called the Gordok inner door key. This key is suppose to despawn if you leave the instance while alive, but in fact it despawns if you die, making any wipes a run ender:
update item_template set area_bound = 2557, map_bound = 429 where entry = 18268;
update item_template set area_bound = 2557, map_bound = 429 where entry = 18266;