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

update creature_template set scale = 0.5 where entry = 80861;
update creature_template set scale = 1.2 where entry = 80863;
update creature_template set scale = 1.2 where entry = 80871;

UPDATE creature_template SET display_id1 = 18002 WHERE entry = 80860;

delete from creature_questrelation where quest = 80305 and id = 80801;

update quest_template set requiredraces = 4 where entry in (6074, 6075, 6076);

replace into creature_questrelation (id, quest, patch_min, patch_max) values (895, 80339,'0','10'); 
replace into creature_questrelation (id, quest, patch_min, patch_max) values (5117, 80339,'0','10'); 
replace into creature_questrelation (id, quest, patch_min, patch_max) values (5515, 80339,'0','10'); 

-- Dummy NPCS for Xecc and Elodia lul

REPLACE INTO `creature_template` VALUES 
(80910, 0, 18001, 0, 0, 0, 'Xecc', '', 0, 1, 1, 64, 64, 0, 0, 0, 35, 0, 1, 1.14286, 0.8, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, ''),
(80911, 0, 18037, 0, 0, 0, 'Elodia', '', 0, 1, 1, 64, 64, 0, 0, 0, 35, 0, 1, 1.14286, 0.8, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, '');

update item_template set sheath = 0 where entry = 80106;
update item_template set sheath = 0 where entry = 80127;
 
