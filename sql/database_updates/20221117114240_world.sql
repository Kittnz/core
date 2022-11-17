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
(60957,1499,'Spitefin Claws',12,1,2048,1,-1,-1,1,20,-1,-1,-1,-1,4,'',0);

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
(60958,918,'Backup Seal-Valve',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

REPLACE INTO gameobject_template VALUES
(2010950, 3, 24106, 'Tel Co. Backup Seal-Valve', 0, 4, 1, 43, 2010950, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template values
(2010950,60958,-100,0,1,1,0);