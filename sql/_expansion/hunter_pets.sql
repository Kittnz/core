REPLACE INTO `creature_template` VALUES (80250, 0, 18027, 0, 0, 0, 'Crimson Lynx', NULL, 0, 10, 10, 197, 197, 618, 618, 20, 16, 0, 1, 1.42857, 0, 20, 5, 0, 4, 1, 11, 19, 0, 62, 1, 1200, 2000, 1, 0, 0, 2, 0, 0, 0, 0, 15.1624, 20.8483, 100, 1, 1, 5807, 0, 5807, 0, 0, 0, 0, 0, 0, 12166, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 1, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, '');

update creature_template set faction = 7 where entry = 80250;
update creature_template set rank = 0 where entry = 80250;

REPLACE INTO `creature_template` VALUES (80251, 0, 18244, 0, 0, 0, 'Spirit Fox', NULL, 0, 53, 53, 3418, 3662, 0, 0, 3163, 14, 0, 1, 1.42857, 0, 20, 5, 0, 4, 1, 452, 584, 0, 238, 1, 1200, 1329, 1, 0, 0, 1, 0, 0, 0, 0, 57.4128, 78.9426, 100, 1, 1, 10077, 0, 0, 0, 100, 100, 100, 100, 100, 0, 0, 0, 0, 100770, 0, 0, 0, '', 1, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, '');

update creature_template set movement_type = 1 where entry = 80251;
update creature_template set scale = 1.2 where entry = 80251;