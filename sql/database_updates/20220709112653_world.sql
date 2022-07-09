-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1534

update page_text set text = 'To Duke Ramon III,\n\nThanks again for everything you\'ve done. For my own safety, I had to keep my head low since I left Stormwind.\n\nIt appears that SI:7 has been keeping tabs on me, but I assure you that I have kept myself unseen so far and well-hidden within my room.' where entry = 80327;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1555
update npc_vendor set incrtime = 7200, maxcount = 1 where item = 13308;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1561
replace into npc_vendor values (6030, 853, 0, 0, 0, 0);
replace into npc_vendor values (6030, 854, 0, 0, 0, 0);
replace into npc_vendor values (6030, 2207, 0, 0, 0, 0);
replace into npc_vendor values (6030, 851, 0, 0, 0, 0);
replace into npc_vendor values (6030, 1197, 0, 0, 0, 0);
replace into npc_vendor values (6030, 1198, 0, 0, 0, 0);
replace into npc_vendor values (6030, 852, 0, 0, 0, 0);
replace into npc_vendor values (6030, 1196, 0, 0, 0, 0);