-- Misc. DB fixes:

delete from playercreateinfo_spell where race = 9 and class = 3;
replace into playercreateinfo_spell values (9, 3, 266, 0, 5875, 'Guns');

replace into broadcast_text (ID, MaleText) values (80601, 'Hey, if you aren\'t spending coins, you might as well get out. You\'re bothering my real customers.');

REPLACE INTO `map_template` VALUES (26, 0, 0, 3, 0, 60, 60, 0, 0, -1, 0, 0, 'Blood Ring', '');

replace into `gameobject` VALUES (3998658, 1771652, 26, 15780.8, 16746.8, 3.35, 0, 0, 0, 0.999999, -0.00130956, 0, 0, 100, 1, 0, 0, 0, 10);
replace into `gameobject` VALUES (3998657, 1771652, 26, 15688.6, 16796.4, 3.43, 0, 0, 0, 0.0049958, 0.999988, 0, 0, 100, 1, 0, 0, 0, 10);

replace into `battleground_events` (`map`, `event1`, `event2`, `description`) VALUES (26, 254, 0, 'Doors');

update quest_template set requiredraces = -1 where entry in (2382,2379,2458,2479,2480,2378,2381,2478,2460);
update quest_template set requiredraces = requiredraces + 256 where entry = 1858;

update creature_template set armor = 76, dmg_min = 2, dmg_max = 5, attack_power = 50 where entry = 80201;
update creature_template set armor = 76, dmg_min = 3, dmg_max = 7, attack_power = 50 where entry = 80507;
update creature_template set armor = 76, dmg_min = 4, dmg_max = 8, attack_power = 50 where entry = 80508;

