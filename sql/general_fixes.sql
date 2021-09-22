update creature_template set speed_walk = 1 where entry = 80506;
update creature_template set equipment_id = 0, name = '\'Sly\' Duncan' where entry = 92022;

replace into npc_vendor values (92022, 4604, 0, 0, 0, 0);
replace into npc_vendor values (92022, 4605, 0, 0, 0, 0);
replace into npc_vendor values (92022, 4606, 0, 0, 0, 0);
replace into npc_vendor values (92022, 4607, 0, 0, 0, 0);
replace into npc_vendor values (92022, 4608, 0, 0, 0, 0);
replace into npc_vendor values (92022, 8948, 0, 0, 0, 0);
