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

-- A Silky Venture
delete from quest_template where entry = 40834;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40833,40834,2,15,35,30,0,0,'A Silky Venture','Outlander, your help so far has been tremendous, there is one last thing we need to acquire. I have sampled the corpse of a local spider Haruhiko slew earlier.\n\nIts meat is brilliant, its venom is strong, but most importantly, its silk is amazing.\n\nPlease harvest some of the Darkfang Silk for us.','Collect 8 Darkfang Silk for Mikoto Shiina in Dustwallow Marsh.','Did you get the items?','These are amazing, I am grateful that our paths have crossed. I do not know anything about your people or your land,\n\nbut I believe your people can understand honor and integrity. There is one last task I have for you.',61342,8,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,19200,3200,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61410, 40834);
replace into creature_involvedrelation	(id, quest) values (61410, 40834);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61342,18597,'Darkfang Silk',12,1,2048,1,-1,-1,1,8,-1,-1,-1,-1,4,'',0);

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(4411, 61342, -50, 0, 1, 1, 0),
(4412, 61342, -50, 0, 1, 1, 0),
(4413, 61342, -50, 0, 1, 1, 0),
(4414, 61342, -50, 0, 1, 1, 0),
(4415, 61342, -50, 0, 1, 1, 0);

-- Mikoto's Farewell
delete from quest_template where entry = 40835;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40834,40835,2,15,35,30,0,0,'Mikoto\'s Farewell','There is one final errand I\'d ask of you, $N.$B$BTravel to the northern port known as Ratchet, and deliver the news to Aneka Konko that we have what we need and are returning home.$B$BOur paths will part for now, but I hope that they will cross again in time. May the Kami guide your path.','Return to Aneka Konko at Ratchet in The Barrens.','Salutations, friend. I hope the southern marshes were not too difficult to traverse.','I am so glad for the help you gave to Mikoto. You may have this pendant, it is ancient and the enchantment has weakened through the centuries, but nonetheless it will serve you well.$B$BThe pendant has a golden fox engraved upon it. Legends tell that in times immemorial, one such blessed fox saved our people from a great flood that drowned the rest of the world. The fox thus vowed to protect our island for as long as we revered its name and obeyed its laws. I pray one day it will return and deliver us from the naga.',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,500,0,0,0,0,0,0,0,0,0,0,0, 61343,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61410, 40835);
replace into creature_involvedrelation	(id, quest) values (90983, 40835);

replace into item_template values
 ('61343', '4', '0', 'Fox Pendant', '', '1148', '2', '0', '1', '30404', '7601', '2', '-1', '-1', '40',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '9', '6', '4',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '25', '0', '0', '0',
 '0', '1', NULL);

-- To the Far West
delete from quest_template where entry = 40836;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (70085,40836,2,15,35,30,0,0,'To the Far West','Most of my people are not kind to foreigners, but our current situation has forced some of us to leave our home island to find the means of overcoming the naga.$B$BYou have helped me and if you\'re interested in aiding us further, then you may assist the group that headed inland.$B$BWe need better weapons, so we seek materials to make them. Our Onmyoji, Dae-woong Kim, has gone west with a small expedition after hearing accounts of rare magical metals. The natives call the land Desolace, and I am confident that he has found it.$B$BLook for them along the shore. Offer your assistance, but be careful, they are still wary of strangers.','Seek out Dae-Woong Kim in Desolace.','A foreigner approaches!','You claim that Aneka sent you? For all we know, you tortured her to learn of our location. You deny it? Bah, all foreigners are liars.',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,275,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (90983, 40836);
replace into creature_involvedrelation	(id, quest) values (61412, 40836);

-- Rescuing Shizuru
delete from quest_template where entry = 40837;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40837,2,15,35,30,0,0,'Rescuing Shizuru','As it stands, foreigner, you have not yet earned my trust. Our encounters with the horse people of these lands have given us reason to be cautious, but I can ill afford to refuse aid when it is so readily given.$B$BOur sworn enemies, the naga, have abducted our herbalist, Shizuru Yamada, and taken her across the water to the island over yonder.$B$BI suspect they plan to make her suffer unspeakable agonies as they sacrifice her to their Dark Kami. Go there and save her, for we cannot cross the water. She is likely to be caged and the nearby naga will hold the key. Rescue her quickly, then I will know you to be a true friend.','Find and rescue Shizuru Yamada for Dae-woong Kim in Desolace.','Where is Shizuru? We have no time to squander.','Shizuru returned shortly before you did. Yasu was ready to cut you down had you failed.$B$BI am glad it did not come to that.',0,0,0,0,0,0,0,0, 60041,1,0,0,0,0,0,0, 0,0, 0,21000,3500,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'Rescue Shizuru Yamada in Desolace.');

replace into creature_questrelation		(id, quest) values (61412, 40837);
replace into creature_involvedrelation	(id, quest) values (61412, 40837);

REPLACE INTO creature_template VALUES
(60041, 328, 0, 0, 0, 0, 'quest_40837_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

update creature_template set name = 'Shizuru Yamada', phase_quest_id = 40837 where entry = 61414;
update creature_template set script_name = 'npc_shizuru_yamada' where entry = 61415;
update creature set spawntimesecsmin = 20, spawntimesecsmax = 20 where guid = 2575788;

-- Honorable Retribution
delete from quest_template where entry = 40838;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40838,2,15,35,30,0,0,'Honorable Retribution','I have no love for your people. I will kill you where you stand if you so much as conceive a treacherous thought.$B$BYet, I trust Dae-Woong\'s judgment. If you are truly heading out there to rescue Shizuru I only ask one thing: Kill as many Naga as you can for me.$B$BLet their blood flow in retribution for all the people they\'ve murdered. Bring me their heads!','Bring 12 Slitherblade Heads from the nearby Naga to Yasu Ping in Desolace.','I will not be content until I shall have a heap of those serpents\' skulls!','I see the blood of our enemy adorns you. You have fought well and brought justice to our people. As a Senshi of Kontsuma, I salute you.',61344,12,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,19800,3300,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61413, 40838);
replace into creature_involvedrelation	(id, quest) values (61413, 40838);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61344,40132,'Slitherblade Head',12,1,2048,1,-1,-1,1,12,-1,-1,-1,-1,4,'',0);

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(4711, 61344, -40, 0, 1, 1, 0),
(4712, 61344, -40, 0, 1, 1, 0),
(4713, 61344, -40, 0, 1, 1, 0),
(4714, 61344, -40, 0, 1, 1, 0),
(4715, 61344, -40, 0, 1, 1, 0),
(4716, 61344, -40, 0, 1, 1, 0),
(4718, 61344, -40, 0, 1, 1, 0),
(4719, 61344, -40, 0, 1, 1, 0);

-- Cloth of Power
delete from quest_template where entry = 40839;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40839,2,15,35,30,0,0,'Cloth of Power','I am humbled in your presence as I owe you my life, $N. It is a debt I can only hope to one day repay.$B$BIt is verily remiss of me to ask for more, but if you would help me again, my gratitude shall be twofold.$B$BAs we battled the naga and the horse people here, I happened to notice that they carried a textile far superior to silk.$B$BIt appeared as if the cloth itself could store the powers of the Kami. Please acquire some of this cloth for me so that I may use it to keep my companions in good health, as well as take it to my homeland to assist my people.','Bring 6 Mageweave Cloth to Shizuru Yamada in Desolace.','These lands are so alien to me, but they are not all as hideous and uncivilized as others thought.$B$BIf you know where to look, there is wonder and beauty aplenty, enough to fill the heart.','This fabric is sublime. Even in Kamio, I have never seen its like.$B$BYou have been a dear friend to me, thank you for everything you\'ve done. May fortune ever be upon your path, $N.',4338,6,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,10800,1800,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61414, 40839);
replace into creature_involvedrelation	(id, quest) values (61414, 40839);

