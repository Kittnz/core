update item_template set subclass = 5, dmg_min1 = 120, dmg_max1 = 175, delay = 3800 where entry = 81199;
update item_template set display_id = 61052 where entry = 61060;
update item_template set sheath = 0 where entry in (80546, 80646);

update item_template set display_id = 27517 where entry = 80643;
update item_template set display_id = 24014 where entry = 80642;
update item_template set display_id = 5564 where entry = 80640;
update item_template set display_id = 19743 where entry = 80632;
update item_template set display_id = 23918 where entry = 80645;
update item_template set display_id = 20311 where entry = 80629;
update item_template set display_id = 22835 where entry = 80639;
update item_template set display_id = 23917 where entry = 80644;
update item_template set display_id = 31332 where entry = 80641;
update item_template set display_id = 30927 where entry = 80646;
update item_template set display_id = 30560 where entry = 80636;
update item_template set display_id = 32397 where entry = 80628;
update item_template set display_id = 22645 where entry = 80634;
update item_template set display_id = 23254 where entry = 80630;
update item_template set display_id = 25474 where entry = 80633;
update item_template set display_id = 22654 where entry = 80637;
update item_template set display_id = 8593 where entry = 80631;

-- Fix Tirisfal Farmhand respawn times.
update creature set spawntimesecsmin = 300, spawntimesecsmax = 300 where id = 1935;
update creature_template set faction = 1682 where entry in (70060, 80903);
update item_template set display_id = 7601 where entry = 10648;