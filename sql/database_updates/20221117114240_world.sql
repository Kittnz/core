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
(60961,6420,'Strange Tel\'abim Banana',12,1,2048,1,-1,-1,1,3,-1,-1,-1,-1,4,'',0);

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
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40730,40731,2,5121,55,48,0,0,'A Costly Favor','Well, I am stumped, All of my ideas either end up worthless, or failed. There must be something that I can...\n\n<Tazzo\'s eyes blink back to life, but soon a sigh escapes him.>\n\nThere is something actually, I just remembered. A \'friend\' of mine named Leezza used to work far in the north. When we were on better terms she once told me about seeing a ridiculously large banana, too big for her to move.\n\nThis has to be what we\'re looking for, but if we want this information, I know its going to cost me an arm and a leg... You could go to Tel Co. Basecamp, speak on my behalf, aside, I don\'t really got any gold, and I know she will ask.','Find a way to buy the information of the Gargantuan Banana from Leezza Fraxtoggle at Tel Co. Basecamp. in Tel\'abim.','Tazzo sent you huh? He\'s finally coming back crawling for that information. He made such a point about being able to figure it out all on his own, and here he is, sending a mule to do his dirty work.\n\n<Leezza begins to laugh.>\n\n That is almost as insulting as his stupidly big head wandering here and asking himself.\n\nLook $c, you want that info, it\'ll cost you.','Tazzo sent you huh? He\'s finally coming back crawling for that information. He made such a point about being able to figure it out all on his own, and here he is, sending a mule to do his dirty work.\n\n <Leezza begins to laugh.>\n\nThat is almost as insulting as his stupidly big head wandering here and asking himself.\n\nLook $c, you want that info, it\'ll cost you, lets make it one gold, fifty silver, and a favor afterwards while you\'re here.',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, -15000,1050,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

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
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40741,2,5121,56,48,0,0,'Shipments on Time','If you\'re wanting to help kid, then buckle up. First things first though, I need bananas! Wheelbarrows full of them, buckets full of them, barrels full of them!\n\nWe have a shipment due to Kezan in a months time, and all my workers are unable to venture into the jungle. Without those bananas, there will be no more Tel Co.\n\nWithout Tel Co. there will be no more bananas seen around the world, do you see how serious this is?!\n\nNow, I know you\'re much more brave than the others, so why don\'t you go out, and get me 18 ripe bananas. That way we can at least fulfill our next shipment on time.','Gather 18 Ripe Tel\'abim Bananas on Tel\'abim for Baron Telraz at Tel Co. Basecamp to help him make his schedule.','So, you get those bananas?\n\n<Baron Telraz appears to be on edge.>','<A massive sigh of relief escapes from Baron Telraz>\n\nOh, my, you just saved my day, and my company at that, I was seriously -FREAKING OUT- here, and you went and got this all done for me.\n\nHere, I pay those that help, and for saving my hide. You can take this gold coin from me, as a gesture of good will.',60954,18,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 10000,5000,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61102, 40741);
replace into creature_involvedrelation	(id, quest) values (61102, 40741);

-- The Work Must Continue
delete from quest_template where entry = 40742;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40741,40742,2,5121,56,48,512,0,'The Work Must Continue','If we ever want to get back to work, we need to make sure things are safe again. The apes are not my workers biggest concern, it is those snakes, do you believe that?\n\nAll of my workers are more terrified from those Brushtails, rather then the massive gorillas.\n\nGoblins right?\n\nThey slither in the brush and attack at dark, they need to be dealt with.\n\nOnce this monkey threat is dealt with, there will still be snakes, and I hate snakes, why don\'t you deal with them for me? The Brushtail Adders and Cobras are aggresive, attacking anything in sight. Remove them, and maybe my workers will have more courage to pick bananas.','Slay 8 Brushtail Adders, and 8 Brushtail Cobras for Baron Telraz at Tel Co. Basecamp on Tel\'abim.','Those snakes been dealt with?','Heh, those pesky Brushtails never bothered me any, maybe the workers will be able to finally get back to work with less danger out there.\n\nThanks for the work, here, as a reward, we have a bunch of extra stuff laying around these days.',0,0,0,0,0,0,0,0, 61090,8,61091,8,0,0,0,0, 0,0, 0,5000,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 60972,1,60973,1,60974,1,60975,1, 0,0,'');

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

-- Exchanging Foreign Food
delete from quest_template where entry = 40743;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40743,2,5130,15,5,512,0,'Exchanging Foreign Food','Winter, a time to eat, and eat well! I always love to try new foods, and exchange cultural foods of my people with others. Perhaps we can make a trade yes? I would like to sample some of the foods of other races, you find some and I will offer you a special dish in return.\n\nGather me a variety for me and my people to enjoy in feasting, and I will make sure you are well rewarded for your seasonal spirit!','Gather 5 Soft Banana Bread, 5 Cured Ham Steak, and 5 Moon Harvest Pumpkin for Chieftain Icepaw at Icepaw Village in Winter Veil Vale!','I sure am hungry, you find an assortment of food?','<Chieftain Icepaw looks on with astonishment.>\n\nYou really are a festive individual, I prepared some things for you upon the fire, a tray of our famous cookies here in Icepaw Village, I hope you enjoy them, they are fresh and right off the pan!\n\nI will share these goods with the others in the village!',4601,5,4599,5,4602,5,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,1250,0,0,0,0,0,0,0,0,0,0,0, 60984,10,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61121, 40743);
replace into creature_involvedrelation	(id, quest) values (61121, 40743);

replace into item_template values
 ('60984', '0', '0', 'Icepaw Cookie', 'Chocolate Chip!', '66190', '1', '0', '1', '100', '25', '0', '-1', '-1', '45',
 '35', '0', '0', '0', '0', '0', '0', '0', '0', '20', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '18230', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
-- Additional Notes:At the end of the quest have nearby Icepaw Reveler and Icepaw Celebrator say some of the following lines at random:
-- "Wow, delicious!"
-- "This tastes amazing."
-- "This is exotic food!"
-- "I cannot believe my tongue, a fine feast!" 

-- Gifts to Wrap
delete from quest_template where entry = 40744;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40744,2,5130,10,5,512,0,'Gifts to Wrap','The year has come to an end, and with it, our celebrations. Our celebrations are met with exchanging gifts, for there is no better way to rejoice and share in one anothers company.\n\nThis year we are a bit light on wrapping paper, a very cheerful gnome delivered the last batch. It did last a few years, but we will need more before long, lest our holidays be ruined!\n\nMaybe you know a place to retrieve wrapping paper?','Gather 10 Red Ribboned Wrapping Paper, and 10 Blue Ribboned Wrapping Paper for Seer Coldsnout at Icepaw Village in Winter Veil Vale!','So, have you got any wrapping paper for us?','Oh, the young ones will be pleased. I may be old, but celebrating the holiday is always the highlight of my year, and to wrap gifts for others is always a favorite past time.\n\nHere, take this, as a thanks from myself.',5042,10,5048,10,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,750,0,0,0,0,0,0,0,0,0,0,0, 60985,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61122, 40744);
replace into creature_involvedrelation	(id, quest) values (61122, 40744);

replace into item_template values
 ('60985', '4', '0', 'Icepaw Talisman', '', '9466', '2', '0', '1', '1000', '250', '12', '-1', '-1', '10',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '10', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0',
 '0', '1', NULL);
-- Change the following quests to Quest Zone ID 5130: 'Bracing The Inevitable', 'Grizzlore Wants Thunder', 'Jolly Holly Dances Prolly', , 'Snowball Wars: Episode I', Snowball Wars: Episode II', 'The Icy Menace'.
update quest_template set zoneorsort = 5130 where entry in (50318,50319,50320,50321,50326,50328,50330);

-- Thieving Little Grell!
delete from quest_template where entry = 40745;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40745,2,5130,10,5,0,0,'Thieving Little Grell!','Those little, thieving, coniving Grell, they pulled the snow over my eyes this year when I was least expecting it.\n\nThey stole my gift right out from beneath my nose. Though I will admit, I was a bit drunk, and awoke to find it missing, but that is here nor there.\n\nI have good suspicion that it is the Grell to the south west who are responsible. Trust me, this gift means a lot for me, and I really want to give it to someone special, do you think you could recover it from their camp for me?','Gather Carus\' Gift from the Winter Grell Camp to the south west and return it to him in Winter Veil Vale.','Have you found it yet?','I cannot thank you enough for recovering this, those Winter Grell surely got the best of me this year, but thanks to you, all is better now, here, as a token of my thanks, have some ale on me.',60986,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,850,0,0,0,0,0,0,0,0,0,0,0, 17402,2,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (50652, 40745);
replace into creature_involvedrelation	(id, quest) values (50652, 40745);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60986,5666,'Carus\' Gift',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

REPLACE INTO gameobject_template VALUES
(2010971, 3, 24995, 'Carus\' Gift', 0, 4, 2, 43, 2010971, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

delete from gameobject_loot_template where item = 60986;
replace into gameobject_loot_template values
(2010971,60986,-100,0,1,1,0);

-- The Evil Winter Grell
delete from quest_template where entry = 40746;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40746,2,5130,10,5,0,0,'The Evil Winter Grell','The Winter Grell arrive at the start of every season, their minds filled with ideas of trickery and theft to disrupt the festive seasons here in Winter Veil Vale. They are sent by their lord Krampus, an evil spirit who despises the holiday season.\n\nIt is up to brave souls like us to prevent the Winter Grell from doing their biding and stealing presents from beneath the tree at will.\n\nYou can find them to the south west, near the edge of the mountain and the frozen lake, slay them, and remove their presence. Do not worry about causing too much harm, they will simply be sent back to the realm in which they came, only to return another season.','Slay 7 Winter Grell Tricksters, and 7 Winter Grell Schemers for Carus Silversnow in Winter Veil Vale.','It is a never ending conflict with these Winter Grell..','Excellent work out there, another season of celebrations will go with less tomfoolery.',0,0,0,0,0,0,0,0, 61127,7,61128,7,0,0,0,0, 0,0, 0,800,0,0,0,0,0,0,0,0,0,0,0, 51060,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (50652, 40746);
replace into creature_involvedrelation	(id, quest) values (50652, 40746);

-- A Programmer?
delete from quest_template where entry = 40747;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40747,2,876,10,1,512,0,'A Programmer?','Huh, what are you doing here, I don\'t recall you being on any lists, or expecting anyone on the island here.\n\nDid Mr. Shang send you, or Dragunastrasz?\n\nI assume you must be new here, a programmer like the others no doubt, we go through them quick around here with all the bug reports.\n\nWhen you\'re ready to begin, speak to me, and I\'ll issue you a set of Programmer Socks.\n\nYes they are required.','Speak with Jamey to obtain the Programmer Socks.','Yes?','Well, here you are, and here are your pair of Programmer Socks.\n\nThey are extremely comfortable and increase your skill by a considerable margain.\n\nI better not catch you without them.',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,150,0,0,0,0,0,0,0,0,0,0,0, 60982,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61138, 40747);
replace into creature_involvedrelation	(id, quest) values (61138, 40747);

-- Winter Veil Brew
delete from quest_template where entry = 40748;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40748,2,1584,55,45,512,0,'Winter Veil Brew','What a better way to cap off the end of a long year other than drinking? Of course, the best of the best only makes the celebrations better.\n\nYou heard tales of the Winter Veil Brew I made a few seasons past? Oh, it surely was magical, probably the best batch I made in my wee life.\n\nThose dastardly Dark Irons stole it, no doubt hidden away in their tavern deep within the Blackrock Depths.\n\nYou recover it, and I share some of it, that sounds like a deal, yeah?','Recover the Winter Veil Keg in the caverns of Blackrock Depths for Bomarn Fireaxe at Winter Veil Vale.','You had any luck finding the barrel down there?','<Bomarn beams with excitement.>\n\nOh, this is it, the mystical keg of Winter Veil Brew! I haven\'t had a drink in ages past.\n\n <Bomarn quickly drinks from the barrel with an eagerness.>\n\nOh, where has me manners gone, here, like I promised, take a couple tankards, only the best for a brave adventurer like yerself.',60987,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,5600,0,0,0,0,0,0,0,0,0,0,0, 60983,5,60988,1,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (50647, 40748);
replace into creature_involvedrelation	(id, quest) values (50647, 40748);

update quest_template set type = 81 where entry = 40748;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60987,8381,'Winter Veil Keg',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

REPLACE INTO gameobject_template VALUES
(2010967, 3, 23262, 'Winter Veil Keg', 0, 4, 1, 43, 2010967, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template values
(2010967,60987,-100,0,1,1,0);
-- Object 'Winter Veil Keg' set respawn time to 25 seconds.
update gameobject set spawntimesecsmin = 25, spawntimesecsmax = 25 where id = 2010967;

replace into item_template values
 ('60988', '4', '1', 'Bomarn\'s Lucky Socks', 'Surprisingly warm and comfy.', '66299', '2', '0', '1', '400', '100', '8', '-1', '-1', '55',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '6', '10', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '0', '0', '0',
 '10', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '25', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

-- Translating The Unknown
delete from quest_template where entry = 40749;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40749,2,5121,52,48,0,0,'Translating The Unknown','The parchment is written in an unknown script that appears to be logographic. Judging by your surroundings, this building does not belong to any native culture to Tel\'Abim. The calligraphy is elegant the strokes for each character appears perfect. Seek out someone who may be able to decipher the script.','Find someone capable of deciphering the script on the parchment.','Yes? What do you have there? It appears to be written in my language.','Ah, so you need someone to translate this for you? Let me see it.',60989,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 60989,1, 0,1875,1010,25,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_involvedrelation	(id, quest) values (90983, 40749);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60989,7588,'A Strange Parchment',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'You cannot understand hide or tail from this text but you have a sensation that it is important.',0);
update item_template set start_quest = 40749 where entry = 60989;

REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `phase_quest_id`, `script_name`) VALUES
(2010968, 3, 23431, 'Foreign Chest', 0, 0, 1, 43, 2010968, 30, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template values
(2010968,60989,100,0,1,1,0);

-- An Exile's Regret
delete from quest_template where entry = 40750;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40749,40750,2,5121,52,48,0,0,'An Exile\'s Regret','<Aneka furrows her brow for a moment as she reads.>\n\nThis is written by an exile of my people. A senshi that was afflicted by soul rot who fled the island trying to find a cure, she was filled with regret for abandoning her oath and home. It seems she was attempting a ritual to cure herself but evidently failed in doing so since you are here.\n\nSoul rot is an affliction that happens when someone is tainted by the dark Kami. Evil beings that only seek to corrupt, twist and destroy, with the ultimate aim of stealing one\'s soul. Return where you found the parchment, and seek out a totem near the dwelling, you may receive further guidance there.','Find a totem near the abandoned house in Tel\'Abim.','The totem seems to beckon you further.','As you stand before the totem, a voice touches your mind. It seems to call for help.',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,1375,1010,25,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation (id, quest) values (90983, 40750);
replace into gameobject_involvedrelation (id, quest) values (2010969, 40750);

REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `phase_quest_id`, `script_name`) VALUES
(2010969, 2, 25942, 'Inconspicuous Totem', 0, 32, 0.4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- Danonzo's Tel'Abim Surprise
delete from quest_template where entry = 40752;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40738,40752,2,5121,58,48,512,0,'Danonzo\'s Tel\'Abim Surprise','Now, where to begin, so many ideas, so many possibilities, why not a tried and true classic, with a twist. Banana bread is a staple to some and quite delicious, but Danonzo can put a twist on things.\n\nEnfusing the Gargantuan Tel\'Abim Banana into the bread with a dash of Heart of the Wild can calm the nerves and much a keen aftertaste that lingers upon the tongue.\n\nGather me the ingredients, and I can prepare it at once!','Gather a Gargantuan Tel\'Abim Banana, a Heart of the Wild and a Soothing Spices for Chef Danonzo Laxjolt at Tel Co. Basecamp in Tel\'abim.','You gather everything yet? I\'m dying for the opportunity to cook wonderous dishes here!','Here it is, a magical delicacy for fresh minds!\n\nI present Danonzo\'s Tel\'Abim Delight, just like its name implies, a sheer treat to the tongue. A mix of both chewy and sweet textures served warm with a sheer lovely taste. Thanks to the garnish of Mountain Silversage.\n\nAs I promised, here is the recipe. Don\'t forget to tell people who figured this all out now, ya\'hear?',60955,1,10286,1,3713,1,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,3500,0,0,0,0,0,0,0,0,0,0,0, 60976,1,60979,1,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61112, 40752);
replace into creature_involvedrelation	(id, quest) values (61112, 40752);

-- Danonzo's Tel'Abim Delight
delete from quest_template where entry = 40753;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40738,40753,2,5121,58,48,512,0,'Danonzo\'s Tel\'Abim Delight','My mind is flooding with ideas, so much to choose from, so much to do! I got it why don\'t we create a wonderous stew, the Gargantuan Banana itself is surely capable of producing a wonderous cream.\n\nA creamy broth served hot with fresh chunks of grilled banana overtop, now doesn\'t that sound magical!\n\nAll I need is a Gargantuan Tel\'Abim Banana, a Mountain Silversage and a Soothing Spices, bring them to me, and we can get cooking kid.','Gather a Gargantuan Tel\'Abim Banana, a Mountain Silversage and a Soothing Spices for Chef Danonzo Laxjolt at Tel Co. Basecamp in Tel\'abim.','My destiny is ahead of me, what\'s taking you so long to collect everything?','Here it is, a magical delicacy for fresh minds!\n\n I present Danonzo\'s Tel\'Abim Delight, just like its name implies, a sheer treat to the tongue, a mix of bow chewy and sweet textures served warm with a sheer lovely taste thanks to the garnish of Mountain Silversage.\n\nAs I promised, here is the recipe, don\'t forget to tell people who figured this all out now, ya\'hear?',60955,1,13465,1,3713,1,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,3500,0,0,0,0,0,0,0,0,0,0,0, 60977,1,60980,1,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61112, 40753);
replace into creature_involvedrelation	(id, quest) values (61112, 40753);

-- Danonzo's Tel'Abim Medley
delete from quest_template where entry = 40754;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40738,40754,2,5121,58,48,512,0,'Danonzo\'s Tel\'Abim Medley','Oh how the other goblins of Kezan will bask in the awe of my genius once they discover all of the recipes in my mind. My idea of a cold Banana cake filled with banana cream is the next on my mind, that sure does sound delicious, does it not?\n\nCooked at a high heat with a seperate filling added later and cooled after completion will add quite the punch of flavors, its just missing one thing... I got it!\n\nGather me the following ingredients, and I can get to work, A Gargantuan Tel\'Abim Banana, an Essence of Air, and a Soothing Spices, once you acquire them, I can get started.','Gather a Gargantuan Tel\'Abim Banana, a Essence of Air and a Soothing Spices for Chef Danonzo Laxjolt at Tel Co. Basecamp in Tel\'abim.','I can wait no longer to start, hurry up with gathering what I need!','It is complete, Danonzo\'s Tel\'Abim Medley!\n\nServed cold, this banana cake is filled with a airy banana cream, incredibly sweet, with a crumbly outer layer! With this, I shall dominate Kezan, and potentially even other markets!\n\nI did promise to share this recipe, and I am an honest goblin, perhaps rare for my kind.\n\nJust remember where you got it huh, I don\'t want anyone stealing my ideas now, you know?',60955,1,7082,1,3713,1,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,3500,0,0,0,0,0,0,0,0,0,0,0, 60978,1,60981,1,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61112, 40754);
replace into creature_involvedrelation	(id, quest) values (61112, 40754);

-- To heal a Soul
delete from quest_template where entry = 40751;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40750,40751,2,5121,52,48,0,0,'To heal a Soul','<A female voice seems to penetrate through your mind.>\n\nThe beast seeks to end... everything that I am. As I prepared the ritual site after years of work, one of the naga slew me, and my bones were taken. Reclaim my bones, from the slithering foe. Burn my bones in the incense bowl by the totem. A shade of the dark temptress will reveal itself, destroy it and set me free!','Gather the Senshi Bones from the Wave Crest Explorers, once collected, burn the bones at the incense brazier near the Inconspicous Totem to summon forth the Shade of the Temptress, once the Shade of the Temptress is slain, bring news to Aneka Konko at Ratchet.','You have returned...','You have helped one of my kin, redeemed her in the eyes of the kami, cast aside her dishonor, and saved her soul. Her spirit is free to be reborn once more. Take this as a symbol of my gratitude.',60990,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,5875,1010,250,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into gameobject_questrelation (id, quest) values (2010969, 40751);
replace into creature_involvedrelation (id, quest) values (90983, 40751);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60990,940,'Senshi Bones',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(61129, 60990, -15, 0, 1, 1, 0);

REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `phase_quest_id`, `script_name`) VALUES
(2010970, 2, 7289, 'Incense Brazier', 0, 32, 0.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_incense_brazier');

-- REPLACE INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES
-- (30053, 'Shade of the Senshi: I am… free. The dark Kami\'s vile hold over me is gone. I can ill repay this debt stranger, I thank you from the deepest recess of my soul. You may use my house as you see fit. I shan\'t be needing it any longer. Go to the one who sent you hither and report what has transpired, goodbye and thank you!', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);
-- 
-- delete from creature_ai_scripts where id = 2200027;
-- REPLACE INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
-- (2200027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30053, 0, 0, 0, 0, 0, 0, 0, 0, 'Shade of the Senshi - Say On Spawn');
-- 
-- delete from creature_ai_events where id = 2200027;
-- REPLACE INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES
-- (2200027, 61120, 0, 11, 0, 100, 1, 0, 0, 0, 0, 2200027, 0, 0, 'Shade of the Senshi - Say On Spawn');

-- When the brazier is used, it should burn for a few seconds, afterwards spawn npc 'Shade of the Temptress' at the coordinates (Map 1, X:-9039.6689, Y:-7196.9521, Z:9.0471, Orientation: 3.2133)

-- Have npc 'Shade of the Temptress' say the following line 2 seconds after spawning
-- Shade of the Temptress: You dare interfere with my prey? She is mine! After I am done with her, you’re next!
-- Upon her death she will say:
-- Shade of the Temptress: This isn't over! I will find you one day…And your soul will be the price for the one you stole today.

-- After the shade is killed, spawn the npc Shade of the Senshi at the same coordinates as above, wait 3 seconds, and have shade of senshi say the following line.
-- Shade of the Senshi: I am… free. The dark Kami’s vile hold over me is gone. I can ill repay this debt stranger, I thank you from the deepest recess of my soul. You may use my house as you see fit. I shan't be needing it any longer. Go to the one who sent you hither and report what has transpired, goodbye and thank you!
-- She will despawn after 10 seconds.

-- ((If Shade of the Temptress is not engaged in combat for 10 seconds, despawn the npc))