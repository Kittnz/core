replace into migrations values ('20191127010759');

REPLACE INTO `creature_template` VALUES (50112,0,16361,0,0,0,'Snowball','Greatfather Winter\'s Little Pet',0,63,63,428528,428528,128821,128821,4960,7,0,1,1.14286,4.2,20,5,0,3,1,1468,1926,0,312,1,2400,2000,8,0,0,17,0,0,0,0,400,550,100,10,4,50112,0,0,30,30,30,30,30,30,0,0,0,0,0,0,324687,561234,'',1,3,0,0,3,0,0,0,2798337883,0,0,'boss_xmas_wolf');
update creature_template set type = 10, beast_family = 0 where entry = 50056;
update creature_template set display_id1 = 10278, armor = 5200, dmg_min = 1920, dmg_max = 2456, frost_res = 100, type = 10,
                             beast_family = 1, attack_power = 364, base_attack_time = 2200 where entry = 50112;
replace into creature_template_addon (entry, auras) values (50112, 26000);