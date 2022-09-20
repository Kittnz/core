-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2143
update quest_template set type = 81 where entry = 40396;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2144
update creature_template set fire_res = 0, holy_res = 0, nature_res = 0, frost_res = 0, shadow_res = 0, arcane_res = 0 where entry = 157;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2148
update item_template set buy_price = 20581, sell_price = 5145 where entry = 51756;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2141
update quest_template set details = 'With Quel\'Dorei ascension in the Alliance, I do not doubt that it is only a matter of time before we rise to our former glory. But as my people celebrate, I must keep track of the problems that remain.\n\nFor years my people relied on the magic of the great fount called Sunwell. Its destruction made us realize how dependent we became on its magic.\n\nWithout it, we were vulnerable to succumbing to magic addiction. Miraculously the rangers who were hunting Dra\'lox with you stumbled upon a mystical pool of water whose effects mimic Sunwell, if only a little.\n\nIf this is true, this could be our salvation. I need you to travel to Darnassus and ask Ashylah Starcaller if those waters can be procured for the Quel\'Dorei.' where entry = 40380;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2140
update creature set spawntimesecsmin = 300, spawntimesecsmax = 300 where id = 2261;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2136
update quest_template set type = 1 where entry = 60135;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2135
update gameobject_loot_template set chanceorquestchance = -100 where entry = 1000395 and item = 51870;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2146
update gameobject set spawntimesecsmin = 150, spawntimesecsmax = 150 where id in (104564, 104575, 104574, 104569);

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2138
-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2137
update quest_template set type = 0 where entry = 40226;
update quest_template set type = 0 where entry = 40203;

