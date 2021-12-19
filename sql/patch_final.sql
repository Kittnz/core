replace into mangos_string values('10051','The battle for Sunnyglade Valley begins in 1 minute.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
replace into mangos_string values('10052','The battle for Sunnyglade Valley begins in 30 seconds. Prepare yourselves!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
replace into mangos_string values('10053','Let the battle for Sunnyglade Valley begin!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
replace into mangos_string values('10054','The %s has taken the %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
replace into mangos_string values('10055','$n has defended the %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
replace into mangos_string values('10056','$n has assaulted the %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
replace into mangos_string values('10057','$n claims the %s! If left unchallenged, the %s will control it in 1 minute!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
replace into mangos_string values('10058','Past grudges led you to your failure, what a waste...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
replace into mangos_string values('10059','The timeway been changed and we were unable to find which events shifted it, and now it will take unpredictable effect.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
replace into mangos_string values('10060','Great work, heroes! For these bitter few moments, lay down your weapons away from each other. And strike together at your common foe!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
replace into mangos_string values('10061','Lion\'s Pride Tower',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
replace into mangos_string values('10062','Krokvel Tower',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
replace into mangos_string values('10063','Fort Wrynn',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

REPLACE INTO creature_template VALUES
(60614, 15718, 0, 0, 0, '\'Charming\' Rudair', 'Bard', 0, 60, 60, 5000, 5000, 0, 0, 3252, 119, 0, 1, 1.14286, 0, 18, 5, 0, 0, 1, 161, 207, 0, 272, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 71.2272, 97.9374, 100, 7, 0, 60614, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 111, 150, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

update creature_template set npc_flags = 16391 where entry = 60480;
update creature_template set npc_flags = 7 where entry = 8139;

set @gossip_menu_id = 41057; set @magic_number = 8139;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Welcome, looking to get some premium wares?'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41058; set @magic_number = 65013;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'This place is quite puzzling, but it has great business!'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

REPLACE INTO npc_vendor VALUES
(60480, 2880, 0, 0, 0, 0),
(60480, 2901, 0, 0, 0, 0),
(60480, 3466, 0, 0, 0, 0),
(60480, 4357, 4, 10800, 0, 0),
(60480, 4363, 2, 10800, 0, 0),
(60480, 4364, 4, 10800, 0, 0),
(60480, 4371, 2, 10800, 0, 0),
(60480, 4382, 1, 10800, 0, 0),
(60480, 4399, 0, 0, 0, 0),
(60480, 4400, 0, 0, 0, 0),
(60480, 5956, 0, 0, 0, 0),
(60480, 10647, 0, 0, 0, 0),
(60480, 10648, 0, 0, 0, 0);

delete from creature_loot_template where entry = 65125;

-- ANTNORMI LOOT
REPLACE INTO creature_loot_template VALUES
(65125, 51044, -100, 5, 1, 1, 0),
(65125, 50203, 100, 6, 10, 15, 0),
(65125, 61014, 1, 1, 1, 1, 0),
(65125, 61027, 33.3, 2, 1, 1, 0),
(65125, 61040, 33.3, 2, 1, 1, 0),
(65125, 61031, 33.4, 2, 1, 1, 0),
(65125, 61037, 33.3, 3, 1, 1, 0),
(65125, 50429, 33.3, 3, 1, 1, 0),
(65125, 61046, 33.4, 3, 1, 1, 0),
(65125, 61053, 50, 4, 1, 1, 0),
(65125, 50427, 50, 4, 1, 1, 0);

-- Abandoned Equipment --
delete from quest_template where entry = 40327;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40327,2,33,42,35,512,0,'Abandoned Equipment','I got word a few weeks back that the Venture Co. had to abandon the Crystalvein Mine because of a basilisk problem. No doubt they left behind all sorts of equipment and tools that are ripe for pilfering. We pirates are usually operating on second hand equipment, and such a score we -cannot- pass up.\n\nThe Crystalvein Mine is located to the east and is just off the road near the Gurubashi Arena. Get there, and get there quick pal, before those Venture goons go and try to get back there stuff. If we act fast, they won\'t even know we went and snatched it all up!','Collect Venture Co. Equipment for Falgig Wazzlewrench at the Bloodsail Compound in Stranglethorn Vale.','Make sure you keep yours eyes open out there!','Look at all this stuff! Spanners, Flaxpipes, Togwig Gears! This will last the Bloodsail quite a while, and give me a whole bunch of opportunity to tinker! Thanks again $N, this is a haul!',60473,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3100,87,200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60480, 40327);
replace into creature_involvedrelation (id, quest) values (60480, 40327);

delete from item_template where entry = 60473;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60473,7839,'Venture Co. Equipment',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

delete from gameobject_template where entry = 2010861;
replace into gameobject_template values
(2010861,3,24109,'Venture Co. Equipment',0,4,1,43,2010861,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

delete from gameobject_loot_template where entry = 2010861;
replace into gameobject_loot_template values
(2010861,60473,-100,0,1,1,0);

-- Naga Tridents --
delete from quest_template where entry = 40328;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40328,2,33,44,38,512,0,'Naga Tridents','A few weeks back Naga began to enter the territory just south of the Bloodsail Compound. We don\'t know why they are here, or why they came but they seem quite drawn to the heights. The slithering wretches have done nothing but wander about and bother our ships as they sail about. I\'d like you to do battle with them for all of our slain kin.\n\nGather from the Naga Explorers their tridents and bring me them as proof of your deeds. 14 Should do just nicely, maybe we can use them as harpoons against the beasts.','Gather 14 Naga Trident\'s for Raga Darkeye at the Bloodsail Compound in Stranglethorn Vale.','The Naga can be a fearsome foe, battle hard, and put them down.','Ahh, excellent, the less of them swimming about, the better for all of us. You\'ve done well, here, keep one, it might serve you well.',60474,14,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3250,87,250,0,0,0,0,0,0,0,0,0,60475,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60481, 40328);
replace into creature_involvedrelation (id, quest) values (60481, 40328);

delete from item_template where entry = 60474;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60474,5635,'Naga Trident',12,1,2048,1,-1,-1,1,14,-1,-1,-1,-1,4,'',0);

delete from creature_loot_template where item = 60474;
replace into creature_loot_template values
(1907,60474,-88,1,1,1,0);

replace into item_template values
 ('60475', '2', '6', 'Bronze Naga Trident', '', '8745', '2', '0', '1', '59732', '14933', '17', '-1', '-1', '42',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '12', '7', '6',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3200', '0',
 '0', '81', '113', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '2', '0', '0', '85', '0', '0', '0', '0', '26', '0', '0', '0',
 '0', '1', NULL);
 
 -- Pristine Gorrila Pelt --
delete from quest_template where entry = 40329;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40329,2,33,40,35,512,0,'Pristine Gorrila Pelt','We got a contact who has been looking to buy a Pristine Gorilla Pelt for some time now. They\'re paying top dollar for one completely pristine with not a single imperfection. The Bloodsail could certainly use the coin to fund our operations.\n\nHead out into the jungles of Stranglethorn and hunt down some of the gorilla, and find me a pristine pelt. We may as well utilize the jungle while we are here afterall.','Slay Gorillas in Stranglethorn Vale and collect a Pristine Gorilla Pelt for \'Wincing\' Willy at the Bloodsail Compound.','Any luck yet? Remember, it needs to be immaculate.','<Willy would take his time inspecting the pelt for imperfections>. This might just be the one $N , nice job out there, this will certainly bring us some gold.\n\n\Here, take your cut for the good work.',60476,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5000,3450,87,250,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60479, 40329);
replace into creature_involvedrelation (id, quest) values (60479, 40329);

delete from item_template where entry = 60476;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60476,4709,'Pristine Gorrila Pelt',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'In mint condition, and completely pristine.',0);

delete from creature_loot_template where item = 60476;
replace into creature_loot_template values
(1557,60476,-16,1,1,1,0),
(1558,60476,-18,1,1,1,0),
(1114,60476,-15,1,1,1,0),
(1108,60476,-11,1,1,1,0);

-- The Bloodsail Compound I --
delete from quest_template where entry = 40330;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40330,2,33,40,30,512,0,'The Bloodsail Compound I','It sure has been a while since we\'ve heard from old \'Wincing\' Willy. He has been appointed to manage the supplies out far to the north west at Bloodsail Compound, it is located just to the southwest of the Gurubashi Arena. Something must have gone wrong, or him and his men have gone rogue.\n\nI want you to travel there, and meet up with him and figure out why there has been supply shortages. If there\'s anything we Bloodsail need, its to keep our supply lines in check!','Travel to Bloodsail Compound and meet with \'Wincing\' Willy.','Yes?','Ahh, McCoy sent you did he? Well, I can understand why, we\'ve hit some problems, and haven\'t been able to send out the goods that have been requested, perhaps you can help.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1350,87,250,21,-100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60452, 40330);
replace into creature_involvedrelation (id, quest) values (60479, 40330);

-- The Bloodsail Compound II --
delete from quest_template where entry = 40331;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40330,40331,2,33,40,30,512,0,'The Bloodsail Compound II','Five nights ago we were harassed by a band of trolls with blue hair, they threw all sorts of javelins at us. They made off with crates and bundles of supplies, not to mention killing a few good folk before we fought them off.\n\nThose trolls are Skullsplitter, and came from the Ziata\'jai Ruins to the north east of here head there, and recover 5 Bloodsail Supply Crates. While you\'re there, you may as well kill some as well to get some payback, we need to keep our image after all.','\'Wincing\' Willy at the Bloodsail Compound wants you to collect 5 Bloodsail Supply Crates and kill 10 Skullsplitter Warriors.','Those trolls can be some mean sons of bitches, make sure you are cautious out there.','Heh, we\'ve butted heads with the Skullsplitter a few times, they should know not to mess around now. Nice job in getting back the booty.',60477,5,0,0,0,0,0,0,667,10,0,0,0,0,0,0,0,0,0,3350,87,250,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60479, 40331);
replace into creature_involvedrelation (id, quest) values (60479, 40331);

delete from item_template where entry = 60477;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60477,7913,'Bloodsail Supply Crate',12,1,2048,1,-1,-1,1,5,-1,-1,-1,-1,4,'In mint condition, and completely pristine.',0);

delete from gameobject_template where entry = 2010862;
replace into gameobject_template values
(2010862,3,24107,'Satyr Coal',0,4,1,43,2010862,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

delete from gameobject_loot_template where entry = 2010862;
replace into gameobject_loot_template values
(2010862,60477,-100,0,1,1,0);