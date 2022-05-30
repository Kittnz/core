-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1397
update npc_vendor set maxcount = 4, incrtime = 10800 where item = 4364;
update npc_vendor set maxcount = 1, incrtime = 10800 where item = 4389;
update npc_vendor set maxcount = 1, incrtime = 7200 where item = 4389 and entry = 7200;

replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) values (1448, 4389, 1, 10800, 0, 0);
replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) values (8679, 4389, 1, 10800, 0, 0);
replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) values (2687, 4389, 1, 10800, 0, 0);
replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) values (2682, 4389, 1, 10800, 0, 0);
replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) values (2684, 4389, 1, 10800, 0, 0);
replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) values (2688, 4389, 1, 7200, 0, 0);
replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) values (3133, 4389, 1, 10800, 0, 0);
replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) values (4587, 4389, 1, 10800, 0, 0);
replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) values (5175, 4389, 1, 10800, 0, 0);
replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) values (5519, 4389, 1, 10800, 0, 0);
replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) values (6777, 4389, 1, 10800, 0, 0);
replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) values (9544, 4389, 1, 10800, 0, 0);
replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) values (11185, 4389, 1, 10800, 0, 0);
replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) values (3413, 4389, 1, 10800, 0, 0);
replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) values (8678, 4389, 1, 10800, 0, 0);
replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) values (3495, 4389, 1, 10800, 0, 0);
replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) values (14637, 4389, 1, 10800, 0, 0);
replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) values (6730, 4389, 1, 10800, 0, 0);
replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) values (2685, 4389, 1, 10800, 0, 0);
replace into npc_vendor (entry, item, maxcount, incrtime, itemflags, condition_id) values (2683, 4389, 1, 10800, 0, 0);
