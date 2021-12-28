-- Make War Mode available from any level:
delete from npc_vendor where item = 80060;
replace into npc_vendor values (51540, 80060, 0, 0, 0, 0);
replace into npc_vendor values (51541, 80060, 0, 0, 0, 0);
replace into npc_vendor values (51542, 80060, 0, 0, 0, 0);
replace into npc_vendor values (51543, 80060, 0, 0, 0, 0);
replace into npc_vendor values (51544, 80060, 0, 0, 0, 0);
replace into npc_vendor values (51545, 80060, 0, 0, 0, 0);
replace into npc_vendor values (51546, 80060, 0, 0, 0, 0);
replace into npc_vendor values (51547, 80060, 0, 0, 0, 0);
-- Icepoint Crawler:
update creature_template set display_id1 = 981 where entry = 60545;
-- Greaves of the Elite Guard
update item_template set armor = 603 where entry = 60434;
-- Spawn timers (random):
update creature set spawntimesecsmin = 7200, spawntimesecsmax = 7200 where guid = 2567945 
-- Karazhan Crypt spawn timers:
update creature set spawntimesecsmin = 10800, spawntimesecsmax = 10800 where map = 800 and spawntimesecsmin = 300;
update creature set spawntimesecsmin = 10800, spawntimesecsmax = 10800 where map = 800 and spawntimesecsmin = 25;
-- Delete buggy PvP quests:
delete from quest_template where entry in (80255, 80302);
delete from creature_questrelation where quest in (80255, 80302);
delete from creature_involvedrelation where quest in (80255, 80302);