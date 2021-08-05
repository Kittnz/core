-- Misc. DB fixes: 

update creature_template set scale = 2.5, level_min = 63, level_max = 63 where entry = 65105;
update creature_template set level_min = 63, level_max = 63 where entry = 50113;
update creature_template set health_min = 15663, health_max = 19463 where entry = 65001;
update creature_template set display_id1 = 18544 where entry = 65004; 
update creature_template set npc_flags = 2 where entry = 80943; 

update quest_template set RewChoiceItemId1 = 61001, RewChoiceItemCount1 = 1 where entry = 80601;
update quest_template set RewChoiceItemId2 = 61002, RewChoiceItemCount2 = 1 where entry = 80601;
update quest_template set RewChoiceItemId3 = 61003, RewChoiceItemCount3 = 1 where entry = 80601;
update quest_template set RewChoiceItemId4 = 61004, RewChoiceItemCount4 = 1 where entry = 80601;
update quest_template set RewChoiceItemId5 = 61005, RewChoiceItemCount5 = 1 where entry = 80601;
update quest_template set RewChoiceItemId6 = 61013, RewChoiceItemCount6 = 1 where entry = 80601;

update quest_template set RewChoiceItemId1 = 61006, RewChoiceItemCount1 = 1 where entry = 80602;
update quest_template set RewChoiceItemId2 = 61007, RewChoiceItemCount2 = 1 where entry = 80602;
update quest_template set RewChoiceItemId3 = 61012, RewChoiceItemCount3 = 1 where entry = 80602;
update quest_template set RewChoiceItemId4 = 61011, RewChoiceItemCount4 = 1 where entry = 80602;
update quest_template set RewChoiceItemId5 = 61009, RewChoiceItemCount5 = 1 where entry = 80602;
update quest_template set RewChoiceItemId6 = 61010, RewChoiceItemCount6 = 1 where entry = 80602;

update item_template set sell_price = 0, buy_price = 55000000 where entry = 51252;

-- Quests:

replace into creature_template values 
(65019, 0, 10008, 0, 0, 0, 'Chromie', 'Keepers of Time', 2911, 63, 63, 4496, 4496, 0, 0, 4641, 35, 6, 1, 1.14286, 1.15, 20, 5, 0, 0, 1, 178, 229, 0, 290, 1, 2000, 2000, 1, 33536, 0, 0, 0, 0, 0, 0, 220.81, 105.197, 100, 2, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 10667, 0, 0, 0, 0, 2, '');

update creature_template set npc_flags = 2 where entry = 65019; 

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (0,80604,2300,60,60,0,0,'A Journey Into The Caverns','Our enemy is no longer in this time, but I have reason to believe they are in the past. I will tell you more but not here, you never know who might be listening.\n\nTravel to the Caverns of Time in Tanaris.\n\nI have given you authorization to enter since you are involved in this matter.\n\nOnce you arrive talk to me again.','Travel to the Caverns of Time and speak to Chromie.','There you are... Try not to step into the time streams, and whatever you do never try to enter the hourglass.','Do not mind the weirdness here too much, it\'s all timey wimey.\n\nYou\'ll get used to it... Maybe. Anyway. Thank you for coming and welcome to the Caverns of Time!\n\nThis is where the Bronze Dragonflight lives, and it is also where the time ways to different periods in history are.\n\nThe corridors that you can see here are ever changing and shifting.\n\nFrom one moment to the next a corridor before you can be replaced with another.\n\nAlas you can never truly experience the timeways with your limited perception of time.\n\nBut I digress, we have a job to do!',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100,0,910,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (10667, 80604);
replace into creature_involvedrelation (id, quest) values (65019, 80604);

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (80604,80605,2300,60,60,0,0,'The First Opening of The Dark Portal','Roughly seventeen years ago, Medivh the last guardian under the control of Sargeras opened the Dark Portal, and let the Orcish Horde into this world.\n\nWe have detected a temporal anomaly in the area consistent with the same energy that Kheyna and Antnormi had.\n\nKheyna is all but certain that Antnormi is behind this, please take the timeway to the right and stop Antnormi before she damages history, I will oversee the situation from here.\n\nBefore you doubt whether this is a bad thing, the Orcs were instrumental in defeating the Legion, I assure you, the outcome if they didn\'t arrive is catastrophic!','Enter the Timeways into Black Morass\'s past and slay Antnormi. Bring her head to Kheyna.','Please... You cannot let her win!','<Kheyna stares somberly at the head, her ocular implants contracts for a moment>\n\nAntnormi was like a sister to me once.\n\nI wish this could have ended differently, but alas... We did what we had to.\n\nFor the time being I will remain here until Chromie figures out what to do with me. I was once a Bronze dragon after all, maybe I can be one again if we find a cure.\n\nRemember when I had you collect brains for me? That work paid off, and I\'ve made a version of my implant that can connect to your brain without needing to drill into your skull.\n\nIt\'s your reward for what you\'ve done. Take it, it\'ll help you.\n\nI also wish to introduce myself to you properly. My real name is Keridormi. I\'ve never had many friends, so thank you for everything you\'ve done for me.\n\nPerhaps we will meet again in time. Stay safe!',51044,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,30000,0,910,500,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (65004, 65004);
replace into creature_involvedrelation (id, quest) values (65004, 65004);

replace into item_template values (51044, 0, 12, 0, 'Antnormi\'s Head', '', 31434, 1, 0, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 4, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, null);
update item_template set flags = 2048 where entry = 51044;

update quest_template set title = 'Time-Worn Rune' where entry = 80600;
update quest_template set title = 'Timewarden\'s Armaments' where entry = 80601;
update quest_template set title = 'Epic Timewarden\'s Armaments' where entry = 80602;
update quest_template set title = 'Void-Linked Satchel' where entry = 80603;

-- Spawns:

delete from creature WHERE id  BETWEEN 65000 AND 65200;
delete from creature WHERE id = 80943;

REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65000, 1, -8175, -4731.38, 32.156, 1.77983, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65001, 1, -8636.89, -4211.25, -207.405, 5.66552, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65001, 1, -8073.95, -4882.69, 1.52269, 2.68292, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65001, 1, -8093.3, -4921.82, -47.0088, 2.11872, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65001, 1, -8057.23, -4848.91, -70.2969, 3.29832, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65001, 1, -8111.36, -4643.55, -117.807, 4.32409, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65001, 1, -8284.67, -4559.46, -165.646, 4.56876, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65001, 1, -8500.5, -4673.48, -206.259, 0.838816, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65001, 1, -8368.71, -4670.16, -192.761, 2.1191, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65001, 1, -8527.36, -4589.08, -211.59, 0.111616, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65001, 1, -8547.3, -4493.05, -212.427, 1.32365, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65001, 1, -8607.54, -4428.99, -209.377, 1.38964, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65001, 1, -8655.62, -4395.98, -207.735, 0.370978, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65001, 1, -8652.75, -4336.35, -207.748, 0.528226, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65001, 1, -8519.74, -4194.8, -211.537, 4.74268, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65001, 1, -8468.78, -4166.66, -213.337, 5.90302, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65001, 1, -8388.58, -4181.02, -204.42, 3.84104, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65001, 1, -8331.35, -4239.37, -204.703, 3.70391, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65001, 1, -8358.61, -4405.35, -203.918, 2.48898, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65001, 1, -8756.52, -4238.06, -208.22, 6.15663, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65001, 1, -8687.21, -4207.98, -207.501, 4.94064, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65002, 1, -8517.99, -4623.7, -212.322, 0.801385, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65003, 1, -8527.19, -4617.99, -212.235, 0.269481, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65004, 1, -8597.23, -4188.38, -208.436, 5.42581, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65005, 1, -8593.87, -4188.28, -208.572, 4.47469, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65006, 1, -8301.08, -4351.98, -207.777, 1.83503, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65007, 1, -8303.44, -4345.31, -208.151, 5.06773, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65008, 1, -8298.87, -4347.14, -207.53, 3.52826, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65009, 1, -8305.28, -4349.6, -208.36, 0.349139, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65010, 1, -8428.63, -4171.9, -207.114, 5.74976, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65011, 1, -8421.25, -4176.7, -206.859, 2.63957, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65013, 1, -8492.39, -4181.23, -208.163, 6.11791, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65014, 1, -8637, -4312.65, -210.133, 0.089313, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65015, 1, -8156.38, -4772.26, 35.8956, 2.46155, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65017, 1, -8417.94, -4320.62, -173.024, 5.65527, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65017, 1, -8442.39, -4364.42, -176.908, 5.38718, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65017, 1, -8554.84, -4330.86, -193.762, 3.43625, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65017, 1, -8543.78, -4257.8, -194.277, 2.61237, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65017, 1, -8421.44, -4274.91, -191.319, 0.29152, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65018, 1, -8158.63, -4777.27, 35.6012, 1.98327, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65100, 269, -1860.46, 6690.28, -179.651, 4.06806, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65100, 269, -1848.96, 6679.74, -180.275, 3.97687, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65100, 269, -1849.5, 6690.24, -181.585, 3.83269, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65100, 269, -1682.67, 6697.73, -211.523, 3.97448, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65100, 269, -1799.26, 6681.33, -189.899, 2.90773, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65100, 269, -1688.42, 6704.85, -211.046, 3.97448, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65100, 269, -1794.06, 6693.86, -190.527, 2.86293, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65100, 269, -1751.42, 6665.21, -201.957, 2.835, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65100, 269, -1748.94, 6673.06, -201.878, 2.835, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65100, 269, -1682.14, 6661.57, -211.116, 3.06192, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65100, 269, -1684.32, 6670.27, -211.546, 3.39179, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65100, 269, -1643, 6731, -221.116, 4.62902, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65100, 269, -1629.2, 6716.21, -220.933, 3.52162, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65100, 269, -1630.07, 6723.76, -222.889, 3.90935, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65100, 269, -1636.04, 6729.12, -222.818, 4.13083, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65100, 269, -1601.29, 6780.28, -230.253, 4.33654, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65100, 269, -1608.37, 6784.15, -229.806, 4.33654, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65100, 269, -1564.93, 6798.71, -232.599, 4.05873, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65100, 269, -1581.17, 6811.15, -232.599, 4.05873, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65100, 269, -1500.3, 6911.23, -232.591, 4.26147, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65100, 269, -1416.25, 7051.17, -220.075, 2.49293, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65100, 269, -1416.46, 6970.68, -196.887, 0.660408, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65100, 269, -1412.3, 6965.33, -197.531, 0.660408, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65100, 269, -1451.82, 6969.25, -189.941, 6.12123, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65100, 269, -1461.04, 7021.7, -177.144, 4.09307, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65100, 269, -1468.16, 7026.78, -176.863, 4.09307, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65100, 269, -1466.63, 7021.32, -177.929, 4.09857, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65100, 269, -1412.58, 6915.71, -138.015, 0.144013, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65100, 269, -1409.99, 6903.5, -138.015, 0.222552, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65101, 269, -1691.33, 6697.01, -211.284, 3.97448, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65101, 269, -1678.12, 6667.71, -211.301, 3.31076, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65101, 269, -1606.47, 6778.03, -230.018, 4.33654, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65101, 269, -1563.01, 6810.84, -232.598, 3.96447, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65101, 269, -1569.76, 6816.31, -232.598, 4.10977, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65101, 269, -1409.03, 7053.99, -218.375, 2.73392, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65101, 269, -1444.78, 6972.06, -190.695, 5.9186, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65101, 269, -1446.43, 6964.65, -191.329, 6.06626, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65101, 269, -1461.59, 7028.47, -175.261, 4.09857, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65101, 269, -1351.13, 6972.1, -147.787, 1.28328, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65101, 269, -1342.71, 6971.04, -147.25, 1.54089, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65102, 269, -1585.64, 6759.23, -229.724, 4.13237, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65102, 269, -1492.78, 6904.6, -232.588, 3.72301, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65102, 269, -1408.61, 7046.44, -217.475, 2.29495, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65102, 269, -1420.06, 6964.27, -195.869, 0.480508, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65102, 269, -1354.13, 7018.21, -158.465, 1.98385, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65102, 269, -1346.66, 7018.15, -157.972, 2.14643, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65102, 269, -1344.34, 7027.21, -159.032, 2.1425, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65103, 269, -1740.15, 6675.61, -204.195, 2.67215, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65103, 269, -1739.81, 6669.2, -204.832, 3.76779, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65103, 269, -1791.67, 6681.36, -191.757, 2.24812, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65103, 269, -1742.39, 6663.17, -204.115, 0.979333, 300, 300, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65103, 269, -1714.08, 6685.85, -210.875, 4.74659, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65103, 269, -1707.26, 6670.2, -211.998, 3.9612, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65103, 269, -1714.32, 6678.13, -210.904, 4.12356, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65103, 269, -1710.37, 6665.19, -210.947, 3.92957, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65103, 269, -1712.74, 6659.07, -209.594, 2.5669, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65103, 269, -1649.91, 6701.45, -214.888, 3.22759, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65103, 269, -1665.76, 6707.65, -212.669, 4.85729, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65103, 269, -1653.14, 6684.24, -211.361, 2.68567, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65103, 269, -1580.27, 6757.57, -229.442, 4.32319, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65103, 269, -1583.17, 6751.88, -229.332, 3.32966, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65103, 269, -1585.44, 6764.03, -229.904, 4.32401, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65103, 269, -1590.52, 6759.54, -229.97, 4.76772, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65103, 269, -1604.11, 6783.74, -230.073, 4.19281, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65103, 269, -1535.17, 6844.54, -232.598, 3.70054, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65103, 269, -1543.51, 6851.43, -232.598, 4.92811, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65103, 269, -1537.49, 6851.04, -232.598, 4.29086, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65103, 269, -1486.18, 6909.34, -232.576, 3.46155, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65103, 269, -1490.89, 6915.2, -232.575, 4.12521, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65103, 269, -1499.52, 6918.42, -232.585, 4.54932, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65103, 269, -1469.96, 6933.29, -232.535, 3.59507, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65103, 269, -1477.45, 6937.36, -232.536, 3.9555, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65103, 269, -1473.86, 6944.18, -232.53, 3.63434, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65103, 269, -1480.99, 6945.62, -232.553, 4.44251, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65103, 269, -1465.19, 6936.31, -232.527, 3.50389, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65103, 269, -1471.24, 6938.38, -232.528, 3.65705, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65103, 269, -1392.66, 7014.72, -210.221, 1.40824, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65103, 269, -1385.34, 7015.79, -209.694, 2.29181, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65103, 269, -1384.45, 7024.27, -211.395, 3.47226, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65103, 269, -1394.04, 7024.13, -212.028, 5.6965, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65103, 269, -1391.55, 6987.78, -203.369, 2.24995, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65103, 269, -1393.8, 6995.42, -204.804, 5.25017, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65103, 269, -1389.41, 6994.13, -204.955, 1.93579, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65103, 269, -1789.06, 6689.14, -191.581, 3.44978, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65103, 269, -1352.16, 6965.38, -146.046, 1.05865, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65103, 269, -1345.91, 6962.07, -145.326, 1.50244, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65103, 269, -1337.55, 6966.27, -146.38, 2.0404, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65104, 269, -1404.89, 6910.69, -138.016, 0.521612, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65105, 269, -1513.28, 6885.61, -232.599, 4.07408, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65105, 269, -1394.47, 7084.93, -164.956, 3.17354, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (65106, 269, -1435.07, 6997.6, -14.3512, 4.08954, 25, 25, 100, 10);
REPLACE INTO `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `health_percent`, `patch_max`) VALUES (80943, 1, -8527.94, -4601.97, -211.901, 5.2182, 25, 25, 100, 10);

replace into item_template values
 ('61012', '0', '4', '0', 'Shard of Eternity', '', '40150', '4', '0', '1', '48616', '12154', '2', '-1', '-1', '65',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '8', '4', '8',
 '5', '8', '7', '8', '6', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '30', '0', '0', '0',
 '0', '0', '0', '25109', '1', '0', '0', '-1', '0', '-1', '7679', '1', '0', '0', '-1', '0', '-1', '13383', '1',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);

update item_template set stat_value1 = 5 where entry = 61011;
update item_template set spellid_2 = 9346 where entry = 61006;
update item_template set spellid_1 = 9408 where entry = 61009;
update item_template set stat_value1 = 8, stat_value2 = 9, stat_value3 = 23, spellid_1 = 13674, spellid_2 = 23731 where entry = 61007;

-- Tabard Vendor:

update item_template set quality = 2, description = 'Unto you is charged the great task of keeping the purity of time. Know that there is only one true timeline, though there are those who would have it otherwise.',  sell_price = 0, buy_price = 150000 where entry = 80300;

-- General Goods 
replace into npc_vendor values 
-- Taradormi
(65012, 80300, 0, 0, 0, 0);