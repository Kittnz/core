-- Heirophant Nerseus, display ID 3253, faction 35, level 61, humanoid, scale 1, quest/gossip flags, gossip text : "It is my duty to watch over this church, and the land that it inhabits.$B$BI must warn you, stay away from the crypt. It has fallen to a great darkness." ((GHOST VISUAL)) 
REPLACE INTO creature_template VALUES
(61610, 3253, 0, 0, 0, 0, 'Heirophant Nerseus', NULL, 0, 61, 61, 11891, 11891, 0, 0, 3900, 35, 3, 1, 1.14286, 1, 20, 5, 0, 1, 1, 751, 809, 0, 284, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 203.77, 289.86, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '9617', 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @gossip_menu_id = 41518; set @magic_number = 61610;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'It is my duty to watch over this church, and the land that it inhabits.$B$BI must warn you, stay away from the crypt. It has fallen to a great darkness.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

-- Contribution to the Church
delete from quest_template where entry = 41078;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41078,2,41,60,55,0,0,'Contribution to the Church','What is it that you want; sanctity, great knowledge? You will not find these things here, for the great arcane power of the wizard Medivh has doomed me and my flock to a life of eternal, drifting torment.$B$BWe are trapped, to forever wander where we remained in life. Though there is a possibility to transition to the great beyond, and such a task requires a great excess of arcane energy.$B$BIf you can gather me arcane materials, I can offer you the invocations I was famous for years ago. Sound like a good proposition?','Gather 15 Arcane Essence, 20 Illusion Dust, and 10 Greater Eternal Essence for Heirophant Nerseus at the church outside Karazhan.','My essence lingers, have you brought the materials?','I did not expect to get these materials, not a soul has offered assistance to any here around Karazhan. Your generosity will not go unrewarded.',61673,15,16204,20,16203,10,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,43200,7200,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61610, 41078);
replace into creature_involvedrelation	(id, quest) values (61610, 41078);

-- Invocation of Shattering
delete from quest_template where entry = 41079;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41078,41079,2,41,60,55,0,1,'Invocation of Shattering','Many great powerful priests have earned the title \'Heirophant\' in the past, for their ability to conjure and imbue the Light within great enchantments. This skill is extremely difficult, and only passed on from one master to a student of great standing. Over time, the number of Heirophants have fallen and with it, the invocations of our past have faded to obscurity, lost to the pages of history.$B$BFor your selflessness I can offer you such an invocation, but I require a rare material. My powers have wained, and I require a single Overcharged Ley Energy. This energy can be found within the tower of Karazhan. Bring me one, and I can offer you the invocation of your choice.','Gather an Overcharged Ley Energy and 6 Arcane Essence for Heirophant Nerseus at the church outside Karazhan.','Have you gathered the ley energy?','May this invocation grant you the power necessary to defeat evil.',61674,1,61673,6,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,0,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 92005,1,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61610, 41079);
replace into creature_involvedrelation	(id, quest) values (61610, 41079);

-- Invocation of Greater Protection
delete from quest_template where entry = 41080;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41078,41080,2,41,60,55,0,0,'Invocation of Greater Protection','Many great powerful priests have earned the title \'Heirophant\' in the past, for their ability to conjure and imbue the Light within great enchantments. This skill is extremely difficult, and only passed on from one master to a student of great standing. Over time, the number of Heirophants have fallen and with it, the invocations of our past have faded to obscurity, lost to the pages of history.$B$BFor your selflessness I can offer you such an invocation, but I require a rare material. My powers have wained, and I require a single Overcharged Ley Energy. This energy can be found within the tower of Karazhan. Bring me one, and I can offer you the invocation of your choice.','Gather an Overcharged Ley Energy and 6 Arcane Essence for Heirophant Nerseus at the church outside Karazhan.','Have you gathered the ley energy?','May this invocation grant you the power necessary to defeat evil.',61674,1,61673,6,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,0,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 92006,1,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61610, 41080);
replace into creature_involvedrelation	(id, quest) values (61610, 41080);

-- Invocation of Expansive Mind
delete from quest_template where entry = 41081;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41078,41081,2,41,60,55,0,0,'Invocation of Expansive Mind','Many great powerful priests have earned the title \'Heirophant\' in the past, for their ability to conjure and imbue the Light within great enchantments. This skill is extremely difficult, and only passed on from one master to a student of great standing. Over time, the number of Heirophants have fallen and with it, the invocations of our past have faded to obscurity, lost to the pages of history.$B$BFor your selflessness I can offer you such an invocation, but I require a rare material. My powers have wained, and I require a single Overcharged Ley Energy. This energy can be found within the tower of Karazhan. Bring me one, and I can offer you the invocation of your choice.','Gather an Overcharged Ley Energy and 6 Arcane Essence for Heirophant Nerseus at the church outside Karazhan.','Have you gathered the ley energy?','May this invocation grant you the power necessary to defeat evil.',61674,1,61673,6,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,0,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 92007,1,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61610, 41081);
replace into creature_involvedrelation	(id, quest) values (61610, 41081);

-- Invocation of Greater Arcane Fortitude
delete from quest_template where entry = 41082;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41078,41082,2,41,60,55,0,0,'Invocation of Greater Arcane Fortitude','Many great powerful priests have earned the title \'Heirophant\' in the past, for their ability to conjure and imbue the Light within great enchantments. This skill is extremely difficult, and only passed on from one master to a student of great standing. Over time, the number of Heirophants have fallen and with it, the invocations of our past have faded to obscurity, lost to the pages of history.$B$BFor your selflessness I can offer you such an invocation, but I require a rare material. My powers have wained, and I require a single Overcharged Ley Energy. This energy can be found within the tower of Karazhan. Bring me one, and I can offer you the invocation of your choice.','Gather an Overcharged Ley Energy and 6 Arcane Essence for Heirophant Nerseus at the church outside Karazhan.','Have you gathered the ley energy?','May this invocation grant you the power necessary to defeat evil.',61674,1,61673,6,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,0,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 92008,1,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61610, 41082);
replace into creature_involvedrelation	(id, quest) values (61610, 41082);

-- Suitable Accomodations
delete from quest_template where entry = 41083;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41083,2,3457,60,55,0,0,'Suitable Accomodations','You there, servant!$B$BI must say, the room service you have here is utterly dreadful. I feel like I have been waiting years for someone to come along and help me with my issue.$B$BThe chambers I have been assigned are not suitable, and I cannot get a wink of sleep. I need a more comfortable pillow, or something of that regard. Find one for more so that I may actually get a good night\'s rest in this place.','Find a Comfortable Pillow for Councilman Kyleson in Karazhan.','What, can you not see how serious of a matter this is? If you do not hurry up, I will tell your boss just how horrendous of a job you\'re doing.$B$BNow get on with it!','Ahh, at last. Something to put my head down at night. I can\'t remember the last time I had a good night sleep... I cannot even remember the last time I did fall asleep oddly enough.',61769,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,0,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61322, 41083);
replace into creature_involvedrelation	(id, quest) values (61322, 41083);
update quest_template set type = 64 where entry = 41083;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61769,4815,'Comfortable Pillow',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,3);

REPLACE INTO gameobject_template VALUES
(2020050, 3, 24109, 'Backup Servant Storage', 0, 4, 1, 43, 2020050, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template values
(2020050,61769,-100,0,1,1,0);

update gameobject set spawntimesecsmin = 5, spawntimesecsmax = 5 where ID = 2020050;

-- A Drink to Sleep
delete from quest_template where entry = 41084;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41083,41084,2,3457,60,55,0,0,'A Drink to Sleep','You\'ve been a wonderful help in acquiring this, but I need one last thing before I can get some rest. Fetch for me a glass of wine, the best that you have. I am certain that you know exactly what I am talking about. Go on now, and find what I\'m looking for so I can get some sleep.','Speak with someone who may know how to acquire wine for Councilman Kyleson.','Can I help you?','You\'re looking for wine?$B$B<The Cook lets out a small chuckle of laughter.>$B$BSome of the spirits do not realise the predicament they are in. In fact, many still believe they are alive, walking through these halls as they did on the night before their fate was met.',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,0,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61322, 41084);
replace into creature_involvedrelation	(id, quest) values (61328, 41084);
update quest_template set type = 64 where entry = 41084;

-- Spectral Wine
delete from quest_template where entry = 41085;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41084,41085,2,3457,60,55,0,0,'Spectral Wine','Believe it or not, I do have a recipe for Spectral Wine. Wine that can be consumed by spirits was something that I did practice working on. It is somewhat complicated of a process and requires materials that are foreign here in Karazhan.$B$BIf you can acquire me three Essence of Death, five Flask of Port, and a single Ghost Mushroom, and I create Spectral Wine for Councilman Kyleson. Though I do question your sanity in doing this.','Gather 3 Essence of Death, 5 Flask of Port, and a Ghost Mushroom for The Cook in Karazhan.','You got it all?','I never once thought I would be using this formula, but here I am.',12808,3,2593,5,8845,1,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,0,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61328, 41085);
replace into creature_involvedrelation	(id, quest) values (61328, 41085);
update quest_template set type = 64 where entry = 41085;

-- Wine for Kyleson
delete from quest_template where entry = 41086;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41085,41086,2,3457,60,55,0,0,'Wine for Kyleson','I have prepared the Spectral Wine for you, and I have it here. I do hope that Councilman Kyleson is offering you something in exchange for all your work. Bring it to him, and do not waste time. After a few years, the Spectral Wine will lose its magical potency, and may just become normal wine.','Deliver the Spectral Wine to Councilman Kyleson in Karazhan.','So, have you fetched that wine that I asked for?','<Councilman Kyleson takes a drink from the Spectral Wine, and looks lost. Savoring it for a few, brief moments.>$B$BI must say, this is certainly exquisite. Nothing has parched my intense thirst for what seems like years. I must say, this is the most fascinating wine I have tasted in quite a long time. You have gone above and beyond to make sure I was treated well here in Karazhan.$B$BSuch a fine servant, you will go a long way here in Karazhan, and you deserve a worthy tip.$B$B<Kyleson places a single coin in your pocket.>$B$BDo not spend such wealth at one place. If you need anything at all, just ask me.',61770,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61770,1, 10000,0,0,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61328, 41086);
replace into creature_involvedrelation	(id, quest) values (61322, 41086);
update quest_template set type = 64 where entry = 41086;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61770,18080,'Spectral Wine',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,3);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61771,20309,'Obsidian Rod',12,1,524288,1,-1,-1,1,1,-1,-1,-1,-1,1,'',0,4);

update creature_template set script_name = 'npc_councilman_kyleson' where entry = 61322;

replace into broadcast_text (entry, Male_Text) values (30131, 'Hmm, now that you mention it, I do have something to share.$B$BDuring the festivities some time ago, Medivh paid the guests a visit, on a few occasions actually. Though, one time something seemed off. He was carrying what looked to be a long and dark object, and inspected what looked to be a marble statue in the dining hall. I remember seeing him walk away a few seconds later without the dark object.$B$BIt may be nothing, but it stood out to me for some reason. I suspect he and his magic to be behind such trickery, of course.');
replace into npc_text (ID, BroadcastTextID0) values (30131, 30131);

replace into broadcast_text (entry, Male_Text) values (30132, '<This marble statue seems oddly out of place.>');
replace into npc_text (ID, BroadcastTextID0) values (30132, 30132);

REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `phase_quest_id`, `script_name`) VALUES
(2020051, 2, 24381, 'Strange Marble Bust', 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_strange_marble_bust');

-- Scythe of the Goddess
delete from quest_template where entry = 41087;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41067,41087,2,10,60,60,0,0,'Scythe of the Goddess','In the whispers of ancient legends, tales unfurl about the upper reaches of Medivh\'s Tower—a sacred haven where the profound wisdom of the Guardians was once safeguarded. Alas, the passage to this sanctum has succumbed to the passage of time, and the tower now stands in disrepair. The library nestled within the upper parts has been sealed away from mortal reach.$B$BYet, in the tides of destiny, hope gleams amidst the darkness. If you can find a means to breach the barriers that guard Upper Karazhan, there exists a chance—an opportunity—that an untouched copy of the precious book lies within its depths. The secrets you seek may be held within the hallowed halls, hidden from the ravages of time, awaiting discovery by a determined seeker like you.','Retrieve a copy of "Vorgendor: Myths from the Blood Dimension" from Upper Karazhan.','The Tower of Karazhan looms over the Deadwind Pass.','To witness the life\'s work of Ur unfold before our very eyes is an extraordinary gift. Though the book bears the scars of time, its essence remains mostly intact, a precious treasure of forgotten knowledge.$B$BLet us delve into its ancient pages, embracing the wisdom held within its weathered embrace. The secrets of Vorgendor, the mysteries of the worgen, and the truths of realms beyond our own may be unveiled before us. And most importantly, the secrets of the Scythe.',61772,1,61759,1,0,0,0,0, 0,0,0,0,0,0,0,0, 61759,1, 10000,0,0,0,0,0,0,0,0,0,0,0,0,0, 0,57300,9550,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61512, 41087);
replace into creature_involvedrelation	(id, quest) values (61512, 41087);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61772,36062,'Vorgendor: Myths from the Blood Dimension',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,4);

