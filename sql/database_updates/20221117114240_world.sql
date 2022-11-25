-- The Ape Bounty
delete from quest_template where entry = 40724;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40724,2,5121,55,48,0,0,'The Ape Bounty','The Highvale Gorillas have terrorized Tel Co. , attacking our property and sending us all the way back to this here Basecamp. They used to be in the surrounding forests, attacking our walls and fortifications, but as of recently, they returned farther north.\n\nI know they are plotting something.\n\nYou look tough kid, maybe you can deal with these banana eating savages. You can find them up north near the Highvale Rise, and around the Derelict Camp, travel there, and get me 12 Highvale Paws from the Gorillas there.','Gather 12 Highvale Paws from the Highvale Gorillas on Tel\'abim for Sneel Fizzwack at Tel Co. Basecamp.','The apes can be a savage bunch, I would be careful out in the wild.','Well, would you look at that, perhaps you\'re as good as killing apes as O\'ggon!',60956,12,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 2500,5250,0,0,0,0,0,0,0,0,0,0,0, 60970,1,60971,1,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61113, 40724);
replace into creature_involvedrelation	(id, quest) values (61113, 40724);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60956,940,'Highvale Paw',12,1,2048,1,-1,-1,1,12,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(61074, 60956, -85, 0, 1, 1, 0);

replace into item_template values
 ('60970', '4', '2', 'Fizzwack\'s Gloves of Enforcement', '', '27946', '2', '0', '1', '34588', '8647', '10', '-1', '-1', '58',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '5', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '92', '0', '0', '5',
 '0', '0', '0', '14089', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '30', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);

-- The Spitefin Bounty
delete from quest_template where entry = 40725;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40725,2,5121,55,48,0,0,'The Spitefin Bounty','Ever since our operations have slowed more and more murlocs have gathered to the beaches. These murlocs are posing a direct threat to the Basecamp, and making it harder to venture out.\n\nIf we ever want to establish work once again they will need to be dealt with, and dealt with seriously!\n\nLook around the beaches and you will find their hovels packed together all around the island. Find those grubby murlocs, and gather twenty of their claws, return them to me, and I\'ll make sure you\'re paid bub.\n\nEasy yeah?','Collect 20 Spitefin Claws from murlocs around Tel\'abim for Sneel Fizzwack at Tel Co. Basecamp.','Any luck with those murlocs?','Well would you look at that, you got the claws. As much as I hate to see money go away, it needs to be done, here.',60957,20,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 5000,5000,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61113, 40725);
replace into creature_involvedrelation	(id, quest) values (61113, 40725);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60957,1499,'Spitefin Claw',12,1,2048,1,-1,-1,1,20,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(61083, 60957, -70, 0, 1, 1, 0),
(61084, 60957, -70, 0, 1, 1, 0),
(61085, 60957, -70, 0, 1, 1, 0),
(61086, 60957, -70, 0, 1, 1, 0),
(61087, 60957, -70, 0, 1, 1, 0),
(61088, 60957, -70, 0, 1, 1, 0);

-- The Backup Seal-Valve
delete from quest_template where entry = 40726;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40726,2,5121,55,48,0,0,'The Backup Seal-Valve','Blasted valve, each and every day we are having more leaks from the main water pump, if Tel Co. Basecamp is to last, it needs a supply of fresh water, regardless of what Telraz or Nokrot say.\n\nMany of our backup parts were located far to the north of the island at Bixxle\'s Storehouse, but there has been -very- little traffic between us and them since, well, everything fell apart.\n\nI need you to head there, just follow the road all the way north, and rummage around for the \'Backup Seal-Valve\', Bixxle should have plenty, just look around for a crate labeled with the name, and return it to me, simple yea?','Travel to Bixxle\'s Storehouse in Northern Tel\'abim and collect the Backup Seal-Valve for Pumpworker Zalwan at Tel Co. Basecamp.','Had any luck finding the damn thing?','Would you look at that, perfect size too, thanks a bunch!',60958,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,2500,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61111, 40726);
replace into creature_involvedrelation	(id, quest) values (61111, 40726);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60958,7839,'Backup Seal-Valve',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

REPLACE INTO gameobject_template VALUES
(2010950, 3, 24106, 'Tel Co. Backup Seal-Valve', 0, 4, 1, 43, 2010950, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template values
(2010950,60958,-100,0,1,1,0);
-- Change quest requirement of 'In Your Own Defense' to 3 Ancient Dust instead of 7.
update quest_template set reqitemcount1 = 3 where entry = 40712;

-- Derelict Supplies
delete from quest_template where entry = 40727;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40727,2,5121,55,48,512,0,'Derelict Supplies','It\'s getting difficult to maintain repairs on much of the machinery, especially with all of the chaos recently.\n\nI am experienced, but I am lacking a lot of my tools bub, you know how hard it is to work with a spanner when you really need a Spin-wrench?\n\nJust to the north of here is a place called \'The Derelict Camp\', well at one point it wasn\'t so derelict, we had many operations there, wood cutting, banana collecting, and much more. It is there I lost my toolbox with all my gizmos and I want it back.\n\nYou can find the camp on the western edge of the island, follow the road up north, and you\'ll find it.','Travel to the Derelict Camp and recover Wazlon\'s Tools for Wazlon Headiron at Tel Co. Basecamp in Tel\'abim.','You find my tools yet kid?','Why, this is it! I will be honest with you, I thought the apes would tear you apart when you trundled out of here, but to actually have it in my hands...\n\nHere, take this ring, I\'m trying to save gold just incase this Tel Co. thing goes even more pear-shaped.',60959,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,5100,0,0,0,0,0,0,0,0,0,0,0, 60960,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61108, 40727);
replace into creature_involvedrelation	(id, quest) values (61108, 40727);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60959,7839,'Wazlon\'s Tools',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

REPLACE INTO gameobject_template VALUES
(2010961, 3, 23790, 'Wazlon\'s Toolbox', 0, 4, 1, 43, 2010961, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template values
(2010961,60959,-100,0,1,1,0);

replace into item_template values
 ('60960', '4', '0', 'Wazlon\'s Lucky Ring', '', '24087', '2', '0', '1', '29236', '7309', '11', '-1', '-1', '58',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '15', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);

-- Highvale Rise
delete from quest_template where entry = 40728;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40724,40728,2,5121,58,48,512,0,'Highvale Rise','I didn\'t think you had it in you, you certainly aint no ogre, but you did survive, and bring me those paws as proof.\n\nIf we want to -really- deal with the problem, we need to fight it at the source. All of the apes come from Highvale Rise, the giant mountain at the center of Tel\'abim. It is there you will find the biggest, and strongest of their packs.\n\nTravel there, and slay fourteen Elder Highvale Gorillas, that should put a dent in their aggression, and maybe even save some wise goblin minds.','Slay 14 Elder Highvale Gorillas around Highvale Rise on Tel\'abim for Sneel Fizzwack at Tel Co. Basecamp.','What are you waiting for, we don\'t give bonus around here kid.','Maybe we stand a chance after all! You really took the fight to them, you might of even made O\'ggon jealous.\n\nNice work out there, here, as a thanks from us here at Tel Co.',0,0,0,0,0,0,0,0, 61080,14,0,0,0,0,0,0, 0,0, 5000,5750,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 13446,2,13444,2,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61113, 40728);
replace into creature_involvedrelation	(id, quest) values (61113, 40728);

-- Collecting Specimens
delete from quest_template where entry = 40729;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40729,2,5121,55,48,0,0,'Collecting Specimens','My research has only just begun and already there are so many possibilities it is making my head spin!\n\nWhat do you mean you have no idea what I am talking about? I am trying to discover the secrets of the Gargantuan Banana, rumor has it that they used to grow on Tel\'abim long ago, that was until they were all harvested.\n\nNow all that remains is myth and legend, but I will get to the bottom of it!\n\nMy first hunch comes from strange banana\'s grown on the island just off the coast to the east, I haven\'t really had much luck, murlocs you see are all along the coast, and I am but one gnome, perhaps you can go there, and gather me three samples of the \'Strange Tel\'abim Banana\' that grows there.','Travel to the small island east of Tazzo\'s Shack, and collect 3 Strange Tel\'abim Banana\'s for Tazzo at Tazzo\'s Shack in Tel\'abim.','The longer you stand around, the longer my work will take, go on now, quick quick!','Why, I must say $c, you sure are resourceful. It woulda taken me a lot of cunning, or sheer luck to get my hands on these alone.\n\nAlready you\'re proving really useful to my cause!',60961,3,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,4800,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61100, 40729);
replace into creature_involvedrelation	(id, quest) values (61100, 40729);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60961,6420,'Strange Tel\'abim Banana',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

REPLACE INTO gameobject_template VALUES
(2010962, 3, 25061, 'Strange Tel\'abim Banana', 0, 4, 1, 43, 2010962, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template values
(2010962,60961,-100,0,1,1,0);

-- Early Testing
delete from quest_template where entry = 40730;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40729,40730,2,5121,55,48,0,0,'Early Testing','Those bananas from the island were warped, not like the Ripe Tel\'abim Bananas on the island here, but something deformed.\n\nIt seems we must turn to a different solution, but I am running out of ideas all cooped up in this Shack alone.\n\nWhy don\'t we try something, obvious. What if you procured an Elixir of Giant Growth, and we just, simply poured it over the banana, its worth a shot, right?','Gather an Elixir of Giant Growth for Tazzo Gearfire at Tazzo\'s Shack in Tel\'abim.','So, you end up finding that Elixir?','Well, here we go... Maybe it really is this simple.',6662,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,1850,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61100, 40730);
replace into creature_involvedrelation	(id, quest) values (61100, 40730);

-- A Costly Favor
delete from quest_template where entry = 40731;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40730,40731,2,5121,55,48,0,0,'A Costly Favor','Well, I am stumped, All of my ideas either end up worthless, or failed. There must be something that I can...\n\n<Tazzo\'s eyes blink back to life, but soon a sigh escapes him.>\n\nThere is something actually, I just remembered. A \'friend\' of mine named Leezza used to work far in the north. When we were on better terms she once told me about seeing a ridiculously large banana, too big for her to move.\n\nThis has to be what we\'re looking for, but if we want this information, I know its going to cost me an arm and a leg... You could go to Tel Co. Basecamp, speak on my behalf, aside, I don\'t really got any gold, and I know she will ask.','Find a way to buy the information of the Gargantuan Banana from Leezza Fraxtoggle at Tel Co. Basecamp. in Tel\'abim.','Tazzo sent you huh? He\'s finally coming back crawling for that information. He made such a point about being able to figure it out all on his own, and here he is, sending a mule to do his dirty work.\n\n<Leezza begins to laugh.>\n\n That is almost as insulting as his stupidly big head wandering here and asking himself.\n\nLook $c, you want that info, it\'ll cost you.','Tazzo sent you huh? He\'s finally coming back crawling for that information. He made such a point about being able to figure it out all on his own, and here he is, sending a mule to do his dirty work.\n\n <Leezza begins to laugh.>\n\nThat is almost as insulting as his stupidly big head wandering here and asking himself.\n\nLook $c, you want that info, it\'ll cost you, lets make it one gold, fifty silver, and a favor afterwards while you\'re here.',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 15000,1050,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61100, 40731);
replace into creature_involvedrelation	(id, quest) values (61116, 40731);

-- Two Favors For The Price of One
delete from quest_template where entry = 40732;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40731,40732,2,5121,55,48,0,0,'Two Favors For The Price of One','Hello again mule, ready for work?\n\nI will be honest, I aint sticking around on this rock as Tel Co. burns to the ground, and to get my way out, I need materials, ones a goblin can\'t find back on Kezan.\n\n All around the jungle are these flying serpents with wings. They go by the moniker \'Venomflayer\', you see, they have a really potent Sac deep within them, and it is this Venomflayer Sac that I am looking for. Lets make it eight of them, bring me eight, and I\'ll tell you about this stupidly large banana.','Collect 8 Venomwing Sacs for Leezza Fraxtoggle at Tel Co. Basecamp in Tel\'abim.','So, mule, you get those sacs yet?','Well, about time.',60962,8,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,5100,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61116, 40732);
replace into creature_involvedrelation	(id, quest) values (61116, 40732);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60962,1438,'Venomflayer Sac',12,1,2048,1,-1,-1,1,8,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(61095, 60962, -70, 0, 1, 1, 0),
(61096, 60962, -70, 0, 1, 1, 0);

-- Gargantuan Information!
delete from quest_template where entry = 40733;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40732,40733,2,5121,55,48,0,0,'Gargantuan Information!','I suppose you did me a few favors, and paid that gold that Tazzo owed me.\n\nWhenever you\'re ready to hear my tale, let me know, and then you can bring that to Tazzo like a good mule.','Listen to the information about the Gargantuan Banana from Leezza Fraxtoggle, and bring it to Tazzo Gearfire at Tazzo\'s Shack in Tel\'abim','So, you hear anything?','So, her rumors -were- true!\n\nThe secrets of the Gargantuan Banana were real!',0,0,0,0,0,0,0,0, 60013,1,0,0,0,0,0,0, 0,0, 0,500,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'Listen to the information from Leezza Fraxtoggle');

replace into creature_questrelation		(id, quest) values (61116, 40733);
replace into creature_involvedrelation	(id, quest) values (61100, 40733);

replace into creature_template values 
(60013, 328, 0, 0, 0, 0, 'quest_40733_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

-- A Must Have Discovery
delete from quest_template where entry = 40734;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40733,40734,2,5121,58,48,0,0,'A Must Have Discovery','Nestled deep within the largest of the Jagged Isles, tangled in roots and bushes, It\'s almost like we\'re finding a relic lost in time!\n\n<The gnome looks absolutely eager and excited with the information.>\n\nIf that is the only Gargantuan Banana left, than I must have it. I want you to recover it, and bring it here, if I had a chance to study an actual Gargantuan, I could possibly even work to replicate it!\n\nHead north, immediately, and find that banana!','Find the Gargantuan Tel\'abim Banana on the Jagged Isles and bring it to Tazzo Gearfire at Tazzo\'s Shack in Tel\'abim.','So, do you got it?!','It\'s... It\'s...\n\n<Tazzo is lost for words, his face a mix of wonder, and amazement as he takes his time to study the banana. Placing a single hand upon the skin, the gnome would gently pat it.>\n\nBeautiful.',60963,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,5550,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61100, 40734);
replace into creature_involvedrelation	(id, quest) values (61100, 40734);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60963,17881,'Gargantuan Banana',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

REPLACE INTO gameobject_template VALUES
(2010963, 3, 25061, 'The Gargantuan Banana', 0, 4, 3, 43, 2010963, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template values
(2010963,60963,-100,0,1,1,0);

update gameobject set spawntimesecsmin = 15, spawntimesecsmax = 15 where id = 2010963;

-- The Micro Filter Tazzo-Scope
delete from quest_template where entry = 40735;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40734,40735,2,5121,58,48,0,0,'The Micro Filter Tazzo-Scope','Would you just look at that thing? A sheer Marvel of nature itself!\n\nI wouldn\'t want to risk planting this in the ground before I use all other options. I am a mage after all, and what better way than to make a formula to transform regular bananas into something like this!\n\nFor that to be an option, I need to study the Gargantuan Banana. I need a Micro Filter Tazzo-Scope, patent pending.\n\nTo create the scope I need you to get me the following materials, but trust me, they will be worth it! I need a Star Ruby, A Blue Sapphire, and an Accurate Scope. Once you get them, come back to me, and I\'ll make it.','Collect a Star Ruby, a Blue Sapphire, and an Accurate scope for Tazzo Gearfire to create the Micro Filter Tazzo-Scope.','You get those materials yet?','My my, you are resourceful!\n\n I could probably tell you to go and get me the head of Illidan, and you\'d be back in a couple days!\n\nNow now, lets get to it..',7910,1,12361,1,4407,1,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,3550,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61100, 40735);
replace into creature_involvedrelation	(id, quest) values (61100, 40735);

-- Gargantuan Studies
delete from quest_template where entry = 40736;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40735,40736,2,5121,58,48,0,0,'Gargantuan Studies','It took me a little bit, but I was able to fully analyze our specimen. It really is a marvel of nature, full with nutrients and extremely dense.\n\nAfter studying and taking notes I believe I may have some ideas on how to replicate such a feat. Firstly, I will need enchanting materials, their arcane properties will be maniputed by yours truly. Secondly, I need Ripe Tel\'abim Bananas, they are scattered around the island, get me five of them.\n\nOnce you have gathered everything, we can do our final testing.','Gather 1 Dream Dust, 1 Greater Eternal Essence, 1 Small Radiant Shard, and 5 Ripe Tel\'abim Bananas for Tazzo Gearfire at Tazzo\'s Shack in Tel\'abim.','You get a chance to find everything I need?','Brilliant, I will make sure to put them to good use.',60954,5,11176,1,16203,1,11177,1, 0,0,0,0,0,0,0,0, 0,0, 0,2550,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61100, 40736);
replace into creature_involvedrelation	(id, quest) values (61100, 40736);

-- The Final Test
delete from quest_template where entry = 40737;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40736,40737,2,5121,58,48,0,0,'The Final Test','So, it appears some of these materials are not exactly cooperative with what I am trying to do, that said I think I may have figured it out!\n\nIt appears that Dream Dust, with the Banana, and some arcane energy could indeed produce what it is we are looking for. All I need to do is one final test to make sure everything works properly, so stand back, and speak to me after the experiment.','Wait for Tazzo Gearfire fo finish his experiments at Tazzo\'s Shack in Tel\'abim.','Yes?','We did it $N, with my powers, and your handiness we figured out the secret to the Gargantuan Banana. I never thought I would see the day where I could pull something off like this!\n\nI have you to thank for this, without you, I\'d still be here fiddling with bananas and putting giant elixirs on them if I was lucky.\n\nFrom now on, if you ever need another Gargantuan Tel\'abim Banana, you come here, and I\'ll make one, should you have the materials of course!',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,2150,0,0,0,0,0,0,0,0,0,0,0, 60955,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61100, 40737);
replace into creature_involvedrelation	(id, quest) values (61100, 40737);

-- News for Danonzo!
delete from quest_template where entry = 40738;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40737,40738,2,5121,58,48,0,0,'News for Danonzo!','I can\'t believe we were able to do it, but if there is anyone to thank aside yourself, it has to be Danonzo, he convinced me to continue my work and even vouched for me to stay here at this shack.\n\nHe has been wanting to work on a unique recipe for a while now, aparently he is having trouble thinking of something, well, special.\n\nPerhaps a Gargantuan Tel\'abim Banana will help him!','Bring a Gargantuan Tel\'abim Banana to Chef Danonzo Laxjolt in Tel\'abim.','Yes? What is it?','What is this thing, it\'s massive! Such a unique texture, this is one of those gargantuan bananas that Tazzo has been going on about, he finally did it?\n\n<The goblin smirks from ear to ear.>\n\nWith this thing I could become a legend back at Kezan. Say, why don\'t you help me develop some recipes? You help me, and I\'ll even share. With my name on them of course.',60955,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,2150,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61100, 40738);
replace into creature_involvedrelation	(id, quest) values (61112, 40738);

-- The Tel'abim Banana Transmutation
delete from quest_template where entry = 40739;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40737,40739,2,5121,58,48,0,1,'The Tel\'abim Banana Transmutation','So, back around to get another Gargantuan Tel\'abim Banana are you? I know, the flavor is spectacular, I couldn\'t get enough of it!\n\nAll I require is three Ripe Tel\'abim Bananas, and a single Dream dust, once you provide me with that, I can make one for you, yes, it\'s that easy!','Gather 3 Ripe Tel\'abim Bananas and 1 Dream Dust for Tazzo Gearfire at Tazzo\'s Shack in Tel\'abim.','So, you got the stuff?','<Within a matter of seconds, the gnome processes the bananas, procuring one large, gargantuan banana before your eyes.>\n\nI have refined my technique, if you ever need more, come my way!',60954,3,11176,1,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,0,0,0,0,0,0,0,0,0,0,0, 60955,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61100, 40739);
replace into creature_involvedrelation	(id, quest) values (61100, 40739);

-- Tel'abim Transmutations!
delete from quest_template where entry = 40740;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40737,40740,2,5121,58,48,0,1,'Tel\'abim Transmutations!','I have refined my process, and even expanded my lab, the ability to create multiple Gargantuan Bananas at one time is now possible, all I need of course is the required materials to make it happen.\n\nTo make five it should take fifteen Ripe Tel\'abim Bananas, as well as five Dream Dust, if you ever need this much banana, come to me, and I\'ll make your dreams come true.','Gather 15 Ripe Tel\'abim Bananas and 5 Dream Dust for Tazzo Gearfire at Tazzo\'s Shack in Tel\'abim.','So, you got the stuff?','<Within a matter of seconds, the gnome processes the bananas, procuring five large, gargantuan bananas before your eyes.>\n\nSee, its all refined now! If you ever need more, come my way!',60954,15,11176,5,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,0,0,0,0,0,0,0,0,0,0,0, 60955,5,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61100, 40740);
replace into creature_involvedrelation	(id, quest) values (61100, 40740);

-- Shipments on Time
delete from quest_template where entry = 40741;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40741,2,5121,56,48,0,0,'Shipments on Time','If you\'re wanting to help kid, then buckle up. First things first though, I need bananas! Wheelbarrows full of them, buckets full of them, barrels full of them!\n\nWe have a shipment due to Kezan in a months time, and all my workers are unable to venture into the jungle. Without those bananas, there will be no more Tel Co.\n\nWithout Tel Co. there will be more more bananas seen around the world, do you see how serious this is?!\n\nNow, I know you\'re much more brave than the others, so why don\'t you go out, and get me 18 ripe bananas. That way we can at least fulfill our next shipment on time.','Gather 18 Ripe Tel\'abim Bananas on Tel\'abim for Baron Telraz at Tel Co. Basecamp to help him make his schedule.','So, you get those bananas?\n\n<Baron Telraz appears to be on edge.>','<A massive sigh of relief escapes from Baron Telraz>\n\nOh, my, you just saved my day, and my company at that, I was seriously -FREAKING OUT- here, and you went and got this all done for me.\n\nHere, I pay those that help, and for saving my hide. You can take this gold coin from me, as a gesture of good will.',60954,18,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 10000,5000,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61102, 40741);
replace into creature_involvedrelation	(id, quest) values (61102, 40741);

-- The Work Must Continue
delete from quest_template where entry = 40742;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40741,40742,2,5121,56,48,512,0,'The Work Must Continue','If we ever want to get back to work, we need to make sure things are safe again. The apes are not my workers biggest concern, it is those snakes, do you believe that?\n\nAll of my workers are more terrified from those Brushtails, rather then the massive gorillas.\n\nGoblins right?\n\n.They slither in the brush and attack at dark, they need to be dealt with.\n\nOnce this monkey threat is dealt with, there will still be snakes, and I hate snakes, why don\'t you deal with them for me? The Brushtail Adders and Cobras are aggresive, attacking anything in sight. Remove them, and maybe my workers will have more courage to pick bananas.','Slay 8 Brushtail Adders, and 8 Brushtail Cobras for Baron Telraz at Tel Co. Basecamp on Tel\'abim.','Those snakes been dealt with?','Heh, those pesky Brushtails never bothered me any, maybe the workers will be able to finally get back to work with less danger out there.\n\nThanks for the work, here, as a reward, we have a bunch of extra stuff laying around these days.',0,0,0,0,0,0,0,0, 61090,8,61091,8,0,0,0,0, 0,0, 0,5000,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 60972,1,60973,1,60974,1,60975,1, 0,0,'');

replace into creature_questrelation		(id, quest) values (61102, 40742);
replace into creature_involvedrelation	(id, quest) values (61102, 40742);

replace into item_template values
 ('60972', '4', '2', 'Tel Co. Jungle Pants', '', '15020', '2', '0', '1', '69552', '17388', '7', '-1', '-1', '58',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '11', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '130', '0', '0', '7',
 '0', '0', '0', '15464', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '65', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60973', '4', '1', 'Tel Co. Vest', '', '18471', '2', '0', '1', '61612', '15403', '5', '-1', '-1', '58',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '22', '7', '6',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '81', '0', '0', '7',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '70', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60974', '4', '4', 'Tel Co. Protective Helmet', '', '27423', '2', '0', '1', '47752', '11938', '1', '-1', '-1', '58',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '8', '3', '6',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '461', '0', '0', '7',
 '0', '0', '0', '7517', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '0', '0', '0', '70', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60975', '4', '3', 'Tel Co. Huntsman Pauldrons', '', '33812', '2', '0', '1', '63928', '15982', '3', '-1', '-1', '58',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '14', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '236', '0', '0', '7',
 '0', '0', '0', '21432', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '60', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);
-- Quest With us or Against us change name to With Us or Against Us.
-- Quest With Us or Against Us, remove all previous quests, remove all required reputation.
update quest_template set title = 'With Us or Against Us', requiredminrepfaction = 0, requiredminrepvalue = 0, prevquestid = 0 where entry = 40609;
-- Fix for quest "Ritual of Divination".
update quest_template set ObjectiveText1 = 'Information from Paval Reethe', Objectives = 'Assist Magus Halister during the ritual and report the findings to Garran Vimes at Theramore Isle in Dustwallow Marsh.', details = 'I shall need your help during the ritual. Perhaps we may learn more from the spirit realm.\n\nLet\'s begin.' where entry = 40562;
-- New items added.
replace into item_template values
 ('60976', '0', '0', 'Danonzo\'s Tel\'Abim Surprise', '', '1483', '1', '0', '1', '1000', '250', '0', '-1', '-1', '65',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '20', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '57041', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60977', '0', '0', 'Danonzo\'s Tel\'abim Delight', '', '24733', '1', '0', '1', '1000', '250', '0', '-1', '-1', '65',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '20', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '57043', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60978', '0', '0', 'Danonzo\'s Tel\'abim Medley', '', '6345', '1', '0', '1', '1000', '250', '0', '-1', '-1', '65',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '20', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '57045', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60979', '9', '5', 'Recipe: Danonzo\'s Tel\'Abim Surprise', '', '634', '3', '0', '1', '40000', '10000', '0', '-1', '-1', '65',
 '0', '185', '300', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '57048', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60980', '9', '5', 'Recipe: Danonzo\'s Tel\'Abim Delight', '', '1097', '3', '0', '1', '40000', '10000', '0', '-1', '-1', '65',
 '0', '185', '300', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '57050', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60981', '9', '5', 'Recipe: Danonzo\'s Tel\'Abim Medley', '', '15274', '3', '0', '1', '40000', '10000', '0', '-1', '-1', '65',
 '0', '185', '300', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '57052', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
-- Set respawn timer of Turbo-Scan Filtronomitor to 5 seconds.
update gameobject set spawntimesecsmin = 5, spawntimesecsmax = 15 where id = 2010926;
