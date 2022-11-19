-- The Ape Bounty
delete from quest_template where entry = 40724;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40724,2,5121,55,48,0,0,'The Ape Bounty','The Highvale Gorillas have terrorized Tel Co. , attacking our property and sending us all the way back to this here Basecamp. They used to be in the surrounding forests, attacking our walls and fortifications, but as of recently, they returned farther north.\n\nI know they are plotting something.\n\nYou look tough kid, maybe you can deal with these banana eating savages. You can find them up north near the Highvale Rise, and around the Derelict Camp, travel there, and get me 12 Highvale Paws from the Gorillas there.','Gather 12 Highvale Paws from the Highvale Gorillas on Tel\'abim for Sneel Fizzwack at Tel Co. Basecamp.','The apes can be a savage bunch, I would be careful out in the wild.','Well, would you look at that, perhaps you\'re as good as killing apes as O\'ggon!',60956,12,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 2500,5250,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61113, 40724);
replace into creature_involvedrelation	(id, quest) values (61113, 40724);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60956,940,'Highvale Paw',12,1,2048,1,-1,-1,1,12,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(61074, 60956, -85, 0, 1, 1, 0);

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
