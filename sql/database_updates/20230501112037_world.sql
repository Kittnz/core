-- To the Southern Marshes
delete from quest_template where entry = 40831;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (70085,40831,2,15,35,30,0,0,'To the Southern Marshes','You have helped me before and for that I am grateful. However, I am not the only one of my people who has come to this land in need of aid.$B$BYou are now strong enough to assist our alchemist, Mikoto Shiina. She and an armed companion have braved the waters of the southern provinces.$B$BHer last missive said they set camp on the coast of a region marked by marshes and bogs. Please seek her out and help her if you can.','Seek out Mikoto Shiina in Dustwallow Marsh.','Who are you, stranger?','Aneka sent you? Thank the Kami! I take heart in your arrival, for I can indeed use your aid.',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,350,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (90983, 40831);
replace into creature_involvedrelation	(id, quest) values (61410, 40831);

-- Harvesting Organic Oil
delete from quest_template where entry = 40832;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40831,40832,2,15,35,30,0,0,'Harvesting Organic Oil','We have come to this land for alchemical reagents. Our enemies, the malevolent naga, have disrupted the trade routes of our homeland, so it has been hard to import anything of value.$B$BI require oil from the local murlocs. My protector Haruhiko is not strong enough to handle them all, and his priority is to guard me. You will be rewarded if you decide to assist.','Gather 8 Murloc Oil from the local Mirefin Murlocs for Mikoto Shiina in Dustwallow Marsh.','Did you retrieve the oil? You might have to squeeze those creatures with substantial force.','This oil, when processed in different ways and with different elements, can be turned into a healing draught, a strong poison, or even a flammable substance.$B$BWe need every advantage we can get in the war for the survival of our people. Thank you, stranger.',61340,10,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,18600,3100,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61410, 40832);
replace into creature_involvedrelation	(id, quest) values (61410, 40832);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61340,15732,'Murloc Oil',12,1,2048,1,-1,-1,1,10,-1,-1,-1,-1,4,'',0);

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(4358, 61340, -46, 0, 1, 1, 0),
(4359, 61340, -46, 0, 1, 1, 0),
(4360, 61340, -46, 0, 1, 1, 0),
(4361, 61340, -46, 0, 1, 1, 0),
(4362, 61340, -46, 0, 1, 1, 0),
(4363, 61340, -46, 0, 1, 1, 0);

-- Searching For Mudrock Meat
delete from quest_template where entry = 40833;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40833,2,15,35,30,0,0,'Searching For Mudrock Meat','You, stranger! Our food stocks are low and I cannot leave mistress Mikoto undefended.$B$BI need you to hunt for the turtles of this region to replenish our provisions. You will find them paddling in the strait of Dustwallow Bay, between Theramore Isle and the mainland.$B$BReturn with their meat and you will earn my trust as well as aid our cause.','Collect 8 Mudrock Meat for Haruhiko Yoshino in Dustwallow Marsh.','I hope you know how to cut into a turtle without ruining its contents.$B$B<Haruhiko sniffs the air.>$B$BIs that turtle I smell on you?','Giant, fearsome dragon turtles are used as beasts of war by the naga, they are carnivorous and can swallow a grown man whole.$B$BBut this meat is in fine condition. Succulent, adequately cut and unspoiled. In cooking it I know I shall feel a sense of… justice.$B$BWell done, stranger.',61341,8,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,18000,3000,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61411, 40833);
replace into creature_involvedrelation	(id, quest) values (61411, 40833);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61341,1117,'Mudrock Meat',12,1,2048,1,-1,-1,1,8,-1,-1,-1,-1,4,'',0);

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(4396, 61341, -45, 0, 1, 1, 0),
(4397, 61341, -45, 0, 1, 1, 0),
(4398, 61341, -45, 0, 1, 1, 0),
(4399, 61341, -45, 0, 1, 1, 0),
(4400, 61341, -45, 0, 1, 1, 0);
