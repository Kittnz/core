-- Taming the Beast
delete from quest_template where entry = 41177;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41177,2,-261,10,10,2,2,'Taming the Beast','The hour has arrived for you to delve into the art of taming nature itself. Among us Rangers, an unwavering bond with nature has always prevailed, with many forging connections with animal companions on our journeys.$B$BTo comprehend this connection, this synergy with the wild, you must first demonstrate your readiness. Take this taming rod – a tool that will grant you the power to tame an Elder Crimson Lynx. Subdue this majestic creature, showcasing your prowess as a ranger. Your initiation into the ways of the wild begins with this task.','Use the Taming Rod to tame an Elder Crimson Lynx. Practice your skills, then return the Taming Rod to Damilara Sunsorrow in Alah\'Thalas.','You will learn, $N, and one day you will be a great $c.','Excellent work. You have proven to be a capable ranger...',41064,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 41064,1, 0,0,840, 0,0,0,0,0,0,0,0, 0,0,1, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (80245, 41177);
replace into creature_involvedrelation  (id, quest) values (80245, 41177);
update quest_template set requiredclasses = 4		 where entry = 41177;
update quest_template set requiredraces = 512		 where entry = 41177;
update quest_template set endtext = 'Tame a Elder Crimson Lynx' where entry = 41177;

REPLACE INTO item_template VALUES
(41064, 12, 0, 'Taming Rod', '', 26595, 1, 64, 1, 0, 0, 0, 2047, -1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL); -- Elder Crimson Lynx

-- Taming the Beast
delete from quest_template where entry = 41178;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41177,41178,2,-261,10,10,2,2,'Taming the Beast','Not every beast mirrors the ferocity of the lynxes that roam these lands. It\'s crucial to recognize the regal and majestic facets of the wild. The Ivory Hawkstriders, once graced the company of royalty, serving as mounts for the Sunstriders.$B$BTake this taming rod, and endeavor to tame an Ivory Hawkstrider. This task demands a distinct approach, affording you insights into the multifaceted nature of these creatures. It is through this encounter that you shall come to comprehend the true essence of the beasts that share our world.','Use the Taming Rod to tame an Ivory Hawkstrider. Practice your skills, then return the Taming Rod to Damilara Sunsorrow in Alah\'Thalas.','I am proud of your accomplishments, $N. Have you finished the last task I gave you?','Your commitment is unwavering, $c.',41065,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 41065,1, 0,0,840, 0,0,0,0,0,0,0,0, 0,0,1, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (80245, 41178);
replace into creature_involvedrelation  (id, quest) values (80245, 41178);
update quest_template set requiredclasses = 4		 where entry = 41178;
update quest_template set requiredraces = 512		 where entry = 41178;
update quest_template set endtext = 'Tame a Ivory Hawkstrider' where entry = 41178;

REPLACE INTO item_template VALUES
(41065, 12, 0, 'Taming Rod', '', 26595, 1, 64, 1, 0, 0, 0, 2047, -1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL); -- Ivory Hawkstrider

-- Taming the Beast
delete from quest_template where entry = 41179;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41178,41179,2,-261,10,10,2,2,'Taming the Beast','As Quel\'dorei, our intrinsic connection to magic sets us apart. Yet, in the realm of beasts, there exists a creature born of the pure mana of the Sunwell – the mana wyrms. Your ultimate challenge lies in taming a Lavender Mana Wyrm, dwelling amidst the southern hills.$B$BIf you can successfully tame this creature, you\'ll not only assert mastery over the beast but also showcase your prowess in the arcane arts. The Lavender Mana Wyrm represents a fusion of our elven heritage and the magical energies that course through Azeroth. May your endeavors prove you a true master of both.','Use the Taming Rod to tame an Lavender Mana Wyrm. Practice your skills, then return the Taming Rod to Damilara Sunsorrow in Alah\'Thalas.','Understanding the balance between nature and magic is a way of life for every <race>.','Congratulations. You\'ve demonstrated your worthiness to master the art of beast taming, and I take pride in your accomplishments. I am confident that you will bring honor not only to yourself but to all of us.$B$BAllow me to share a piece of advice: Exercise discretion when selecting your first companion. Will it be a creature of the land, a denizen of the water, or a creature soaring in the skies? Whichever you choose, remember that your chosen companion shall be by your side for a considerable journey. Choose wisely, and may your bond with your pet be enduring and fruitful.',41066,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 41066,1, 0,0,840, 0,0,0,0,0,0,0,0, 23356,1579,1, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (80245, 41179);
replace into creature_involvedrelation  (id, quest) values (80245, 41179);
update quest_template set requiredclasses = 4		 where entry = 41179;
update quest_template set requiredraces = 512		 where entry = 41179;
update quest_template set endtext = 'Tame a Lavender Mana Wyrm' where entry = 41179;

REPLACE INTO item_template VALUES
(41066, 12, 0, 'Taming Rod', '', 26595, 1, 64, 1, 0, 0, 0, 2047, -1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL); -- Lavender Mana Wyrm

-- Taming the Beast
delete from quest_template where entry = 41180;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41179,41180,2,-261,10,10,0,0,'Taming the Beast','You\'ve gained the power to tame a companion, yet the journey has just begun. To truly harness the potential of your new ally, seek the guidance of the foremost hunter among our people – Ranger-General Halduron Brightwing.$B$BHe stands as a paragon of our craft, and you\'ll find him in the southern reaches, stationed beside the Last Runestone. There, he leads our forces in an unyielding battle against the Scourge.$B$BApproach him, and under his tutelage, refine the skills needed to train and command your newfound companion.','Speak to Halduron Brightwing in the fortified area next to the Last Runestone.','What is it?','Ah, a fledgling ranger stands before me. Come, friend.$B$BEmbarking on the path of a ranger seems like a distant memory now, a life I can scarcely recall from the era before the fall of our homeland. Yet, it is the vitality and spirit of young hunters like yourself that kindle the flames of hope for the reclamation of our ancestral lands.$B$BAllow me to impart the knowledge of training and guiding your newfound companion. Henceforth, you shall not only instruct your pet in acquiring new abilities but also nourish and revive it should it face the perils of battle. This marks the beginning of a crucial chapter in your journey as a ranger. May you wield this knowledge with skill and purpose.$B$BI hope we will speak again soon.',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,420, 0,0,0,0,0,0,0,0, 23357,5300,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (80245, 41180);
replace into creature_involvedrelation  (id, quest) values (61801, 41180);
update quest_template set requiredclasses = 4		 where entry = 41180;
update quest_template set requiredraces = 512		 where entry = 41180;