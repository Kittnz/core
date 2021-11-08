-- Reserved.
-- quest_template			40000-40200
-- creature_template		60300-60500
-- gameobject_template		2010700-2010900
-- item_template			60000-60200
-- gossip_menu				41000-43000
-- creature_equip_template	20000-21000
-- broadcast_text			30000-31000
-- creature_ai_events		2200000-2201000
-- creature_ai_scripts		2200000-2201000

-- Captain Barlgruf --
delete from quest_template where entry = 40228;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40228,2,3,40,34,0,0,'Captain Barlgruf','The Dark Iron Dwarves have been a long standing rival of ours, their attacks agianst our people have been ruthless. I have come to attempt to bolster our strength in the region, and if we want that to be possible, then we must set our sights on Angor Fortress.\n\nThe place is run by Captain Barlgruf, he has been sent from Shadowforge City to oversee actions here within the Badlands, cut him down, and the rest of them will be aimless. He should be inside Angor Fortress, no doubt nestled with the rest of his lackeys.\n\nKill him, and return to me.','Slay Captain Barlgruf within Angor Fortress for Senator Broadbelt in Badlands.','If there is to ever be peace, then we must act with swiftness.','Excellent work! The Dark Iron Dwarves need to be checked, and halted at each corner of the world, lest they gain the power to attack more openly.',0,0,0,0,0,0,0,0,91766,1,0,0,0,0,0,0,0,0,0,2750,47,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (91767, 40228);
replace into creature_involvedrelation (id, quest) values (91767, 40228);

-- Angor Fortress --
delete from quest_template where entry = 40229;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40229,2,3,39,33,0,0,'Angor Fortress','Angor Fortress looms like a dark cloud in the Badlands, from their the Dark Iron can muster immense amounts of power. They are one of the key players in the region for that very reason.\n\nI have been sent from Ironforge to attempt to dissolve some of their grip here, and to do so, we will need to strike hard. I desire you to travel to Angor Fortress just to the north west, and slay those that guard it. Take from them their Shadowforge Shackles they wear, 10 of them in total, and bring them to me.','Slay Dark Iron Dwarves around Angor Fortress, and collect 10 Shadowforge Shackles for Senator Broadbelt in Badlands.','They are incredibly stubborn, and will not give up without a fight.','Great work, Ironforge would be proud of the actions you have done this day, please, take these coins, as a token of our gratitude.\n\nPerhaps one day we may ressume our work here on a more larger scale!',60311,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2000,2750,47,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (91767, 40229);
replace into creature_involvedrelation (id, quest) values (91767, 40229);

delete from item_template where entry = 60311;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60311,3620,'Shadowforge Shackle',12,1,2048,1,-1,-1,1,10,-1,-1,-1,-1,4,'',0);

delete from creature_loot_template where item = 60311 and entry = 2742 and 2743;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values
(2742,60311,-34,1,1,0,10),
(2743,60311,-38,1,1,0,10);

-- Saltspittle Raiders --
delete from quest_template where entry = 40230;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40230,2,331,21,10,0,0,'Saltspittle Raiders','Lake Falathim was a place I spent much of my youth, it was a place of relaxation and good times. Only now it is taken over by the Saltspittle, who attacked with ferocity and no remorse. Some died during the attack, but I was lucky to escape.\n\nWhen I was about to leave I left behind an item that is most valueable to me. My Uncle who died during the Battle of Hyjal left me a book in my possession. It is one he wrote about both his technique in battle and his experiences regarding war. I\'ve found much knowledge and wisdom from that book, and I desire to know everything that he had jotted down before his passing.\n\nTravel to Lake Falathim to the south west, and find my belongings. While you are there, make sure to get revenge, and slay the Saltspittle, their fins should do fine.','Gather 5 Saltspittle Fins and recover the Greenblade Book.','That place is crawling with murloc, I would advise you steel yourself for what must be done.','',60312,1,60313,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1300,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60472, 40230);
replace into creature_involvedrelation (id, quest) values (60472, 40230);

delete from item_template where entry = 60312;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60312,1317,'Greenblade Book',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

delete from gameobject_template where entry = 2010845;
replace into gameobject_template values
(2010845, 0, 3, 24015, 'Mucky Book', 0, 4, 1, 43, 2010845, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

delete from gameobject_loot_template where entry = 2010845;
replace into gameobject_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (2010845,60312,-100,1,1,0,10);

delete from item_template where entry = 60313;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60313,555,'Saltspittle Fin',12,1,2048,1,-1,-1,1,5,-1,-1,-1,-1,4,'',0);

delete from creature_loot_template where item = 60313 and entry between 3737 and 3742;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values
(3737,60313,-40,1,1,0,10),
(3739,60313,-40,1,1,0,10),
(3742,60313,-45,1,1,0,10);

-- The Forgotten Tome --
delete from quest_template where entry = 40231;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40095,40231,2,8,38,30,0,0,'The Forgotten Tome','This tome holds a great history to the nation of Stormwind, and should be stored as such. A holy warrior fell on this battlefield many years ago, and this tome remains intact. The tomes words are holy scripture, and I would ask it be placed amongst the Cathedral\'s great books.\n\nI ask of you to travel to Stormwind, and speak with Archbishop Benedictus, to see if he would take this book within the Cathedral to be preserved. My mentor would ask this of me, I am certain, let us do our duty.','Take the Forgotten Tome to Archbishop Benedictus in Stormwind.','How may I assist you?','Watch Paladin Janathos sent you, well I know the man well. He spoke with me before his departure out to Sorrowguard. It is good to hear that he is alive. If he desires me to keep this book within the Cathedral I will do as such, perhaps the words written inside will benefit those of the faith.',60188,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60188,1,0,450,72,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (92017, 40231);
replace into creature_involvedrelation (id, quest) values (1284, 40231);

-- Returning to Janathos --
delete from quest_template where entry = 40232;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40231,40232,2,8,38,30,0,0,'Returning to Janathos','With the tome in my charge I would ask of you to bring a scroll to Watch Paladin Janathos in Sorrowguard Keep. From this scroll I hope to bless him and those underneath his command, for the light to watch over them safely, and deliver them from evil.\n\n When you see him, be sure to mention I wish him well.','Deliver the Scroll of Blessing to Watch Paladin Janathos at Sorrowguard Keep in Swamp of Sorrows.','Have you spoken with Benedictus?','So, then it is done? The Archbishop has always been a friend of mine, his convictions and word in the light has always been true.\n\nThis scroll will continue to guide our actions here, and keep us safe within Sorrowguard.',60314,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60314,1,0,450,72,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (1284, 40232);
replace into creature_involvedrelation (id, quest) values (92017, 40232);

delete from item_template where entry = 60314;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60314,1037,'Scroll of Blessing',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'Contains written scriptures in bright golden ink',0);

-- The Orb of Kaladus --
delete from quest_template where entry = 40233;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40232,40233,2,8,38,30,0,0,'The Orb of Kaladus','I would ask one last thing from you, my mentor came from Lordaeron, a kingdom far to the north that is now desecrated and torn beyond imagining. It is filled with the undead that roam freely upon the broken landscape.\n\nWithin this land is an order known as the Scarlet Crusade, remnants of an old paladin order. They are fanatical, and heartless to the core, it is from them I require something.\n\nWithin the Scarlet Monastery, in northern Tirisfal Glades is a mighty Cathedral, it was built well before these zealots time, and it is there my mentor studied the light.\n\nI would ask that you bring to me the Orb of Kaladus, a stone enfused with the power of the light. Ever since my mentor departed from Lordaeron, those holy brigands have kept it to themselves.\n\nEnter the Cathedral, and bring it to me, the light should be wielded by the true of heart, not the black of soul.','Venture within the Scarlet Monastery and find the Orb of Kaladus, retrieve it, and return to Watch Paladin Janathos at Sorrowguard Keep.','The Orb of Kaladus holds great power in the light. My mentors artifact should not be wielded by zealots.','<A smile would crest across Janathos\' face as he looks upon the orb>. My mentor would be proud of us to recover such an item. You truly are blessed of the light for your services here in this dark corner of Azeroth.\n\nPlease, take this as a token of my appreciation, and walk with swiftness upon this earth, as blessed by the light.',60315,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3550,72,250,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60316,1,60317,1,60318,1,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (92017, 40233);
replace into creature_involvedrelation (id, quest) values (92017, 40233);

update quest_template set type = 81 where entry = 40233;

delete from item_template where entry = 60315;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60315,24730,'Orb of Kaladus',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'Glows brightly with holy energy',0);

delete from gameobject_template where entry = 2010846;
replace into gameobject_template values
(2010846, 0, 3, 1, 'Aged Wooden Chest', 0, 4, 1, 43, 2010846, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

delete from gameobject_loot_template where entry = 2010846;
replace into gameobject_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (2010846,60315,-100,1,1,0,10);

replace into item_template values
 ('60316', '0', '4', '4', 'Truthkeeper Mantle', '', '26164', '3', '0', '1', '31924', '7981', '3', '-1', '-1', '47',
 '40', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '7', '4', '8',
 '6', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '332', '0', '0', '0',
 '0', '0', '0', '21503', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '1', '0', '0', '80', '0', '0', '0', '0', '44', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60317', '0', '2', '4', 'Lightgraced Mallet', '', '5195', '3', '0', '1', '72536', '18134', '21', '-1', '-1', '45',
 '40', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '6', '6', '2',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2800', '0',
 '0', '58', '111', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '7676', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '2', '3', '0', '0', '90', '0', '0', '0', '0', '44', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60318', '0', '4', '2', 'Sorrowguard Clutch', '', '27708', '3', '0', '1', '18348', '4587', '6', '-1', '-1', '45',
 '40', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '12', '7', '8',
 '3', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '75', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '1', '0', '0', '35', '0', '0', '0', '0', '44', '0', '0', '0',
 '0', '1', NULL);

-- A New Rune-Frontier --
delete from quest_template where entry = 40234;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40234,2,139,58,55,0,0,'A New Rune-Frontier','Omarion left behind plenty of work and research on various topics, one of which I have taken quite an interest within! Runeblades, Rune Armor, such fascinating things, imbued and powered directly by Dreadlords. I heard that Baron Rivendare fellow had one, but I am seeking the knowledge of imbuing a freshly created blade, and tempering it with great power! If we could unlock such secrets then certainly it would be a new frontier of all sorts of magical crafting!\n\nIf you can figure out a way to create your own Untempered Runeblade I would be more then willing to share my knowledge!','Craft an Untempered Runeblade, and return to Craftsman Wilhelm.','Have you had any luck? I would suggest you focus your attention towards the Dreadlords.','Would ye look at that! You actually managed to get your hands on one, its not like every day I go asking for someone to produce a rare weapon, and expect them to bring it to me. This is rare $N, very rare, its not every day someone gets there hands on an Untempered Runeblade.\n\nI made a promise that I would share my knowledge, and I will, perhaps we can temper the blade!',60293,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,800,529,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (16376, 40234);
replace into creature_involvedrelation (id, quest) values (16376, 40234);

update quest_template set requiredskill = 164, requiredskillvalue = 200 where entry = 40234;

-- The Secrets of Darkforging --
delete from quest_template where entry = 40235;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40234,40235,2,139,58,55,0,0,'The Secrets of Darkforging','I Wilhelm, am a dwarf of my word, and I will keep my word to unveil this new frontier ahead of us. The first place we should begin to look is Corin\'s Crossing, it is a place over-run by the scourge, and not somewhere I would travel!\n\nA book named \'The Secrets of Darkforging\' may be the first step to uncovering what we seek, it is held by a Jacob Malwright. He was a rather famed smith in his days amongst the living and now walks among the dead. No doubt he still has it on him, or keeps it close by, kill him, bring me the book, let us begin to learn their tricks!','Travel to Corin\'s Crossing and recover The Secrets of Darkforging, bring it to Craftsman Wilhelm at Light\'s Hope Chapel.','I would make sure to look over both shoulders while you are there, and bring some holy water, the place is cursed I tell ye!','I shudder to imagine traveling that deep into Corin\'s Crossing for a book- one that might not even have what we\'re looking for. You did good work either way, now, lets see if this book holds any knowledge that we can use!',60319,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5850,529,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (16376, 40235);
replace into creature_involvedrelation (id, quest) values (16376, 40235);

update quest_template set requiredskill = 164, requiredskillvalue = 200 where entry = 40235;

-- Jacob Malwright, display ID 7847, level 58 faction 21, weapon 5956, undead
delete from creature_template where entry = 60508;
replace into creature_template values
(60508, 0, 7847, 0, 0, 0, 'Jacob Malwright', '', 0, 58, 58, 3875, 3875, 0, 0, 3408, 21, 0, 0.888888, 1.14286, 0, 20, 5, 0, 0, 1, 101, 125, 0, 262, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 71.2272, 97.9374, 100, 6, 0, 60508, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 128, 172, 'EventAI', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @equip_template = 20028; set @weapon_1 = 5956; set @weapon_2 = 0; set @creature = 60508;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

delete from item_template where entry = 60319;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60319,8092,'Secrets of Darkforging',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

delete from creature_loot_template where item = 60319 and entry = 60508;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values
(60508,60319,-100,1,1,0,10);

-- The Secrets of Darkforging --
delete from quest_template where entry = 40236;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40235,40236,2,139,58,55,0,0,'The Secrets of Darkforging','<Craftsman Wilhelm would take his time reading through the book, intrigue marks his features, and interest sparks his eyes>.\n\nThis book holds a lot of information, most of it doesn\'t seem to even relate to what we are doing, I mean, why would we even want Dark Binding Shackles in the first place?!\n\nThere are a few sections that may relate though, one of which is tainted, and twisted by a dark magic, making it unintelligable and frankly, unnerving. The other section seems to be written by a Dreadlord named Lorthiras, who could be of some use.\n\nI would first like to uncover the dark magic, and I believe I know someone who may be of help! Strahad Farsan used to be a friend of mine - we\'re not on the best terms, but he is quite deeply involved with shadowy magic, and demons both.\n\nHe is located in Ratchet, go and find him there, bring him the book.','Travel to Ratchet and speak with Strahad Farsan.','Yes, are you here to learn the deeper secrets of Arcana?','<Farsan\'s brow twitches upon hearing the name \'Wilhelm\'>. Him huh? Didn\'t he sign up to go and join those Argent fellows?',60319,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60319,1,0,450,529,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (16376, 40236);
replace into creature_involvedrelation (id, quest) values (6251, 40236);

update quest_template set requiredskill = 164, requiredskillvalue = 200 where entry = 40236;

-- A Favor for Farsan --
delete from quest_template where entry = 40237;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40236,40237,2,139,58,55,0,0,'A Favor for Farsan','What you are dealing with here is quite interesting, this book seems to mention quite a lot of patterns all pertaining to Darkforging, of which you will gain very little use. The armor, and weapons the undead use are quite deeply entwined with the very magic that keeps their minions standing.\n\nIf you desire my help, then I would also desire yours, I can uncover what this text reads, and point you and Wilhelm in the correct direction, but this would require a favor.\n\nTravel to Scholomance, and venture deep within. Inside I am looking for an old book that was archived there some time ago, titled \'Fire Beckoning and Command\'.\n\nBring me this book, and I shall do as you have asked.','Venture into Scholomance and recover the book \'Fire Beckoning and Command\' for Strahad Farsan in Ratchet.','Have you procured what I have asked?','<Upon seeing the book, Farsan would smirk from ear to ear>. Excellent, as I have said, a favor for a favor then.',60320,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (6251, 40237);
replace into creature_involvedrelation (id, quest) values (6251, 40237);

update quest_template set requiredskill = 164, requiredskillvalue = 200 where entry = 40237;
update quest_template set type = 81 where entry = 40237;

delete from item_template where entry = 60320;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60320,1134,'Fire Beckoning and Command',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

delete from gameobject_template where entry = 2010847;
replace into gameobject_template values
(2010847, 0, 3, 430, 'Fire Beckoning and Command', 0, 4, 1, 43, 2010847, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

delete from gameobject_loot_template where entry = 2010847;
replace into gameobject_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (2010847,60320,-100,1,1,0,10);

-- A Meeting With The Dreadlord --
delete from quest_template where entry = 40238;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40237,40238,2,139,58,55,0,0,'A Meeting With The Dreadlord','While you were gone collecting what I asked I took the time to decipher the incoherent text. It was written by a Dreadlord named Lorthiras and contained some insights into the secrets of Rune crafting.\n\nNow, in truth, there is not much to be gained from the text, to be able to temper a Runeblade, one would need to possess the powers that Dreadlords would, and such knowledge is very rarely given out.\n\nWithin the text were mentions of a place that Lorthirus spent much of his time studying in his magic and if you wish to have a chance at tempering the Runeblade then you must seek him out.\n\nI feel like I can not be of further assistance, but I have jotted down the text onto a script for your reading, perhaps you can make more sense of it then me.','Find Lorthiras on Azeroth, and speak with him.','Yes, mortal?','Heh... So that is why you have come, it is not often that I am intrigued by your kind, not many would be so bold as to approach me willingly, knowing what I am capable of. Very well then, perhaps you may be of use for me, and should you prove a good asset, I will grant you what you desire.',60321,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60321,1,0,6250,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (6251, 40238);
replace into creature_involvedrelation (id, quest) values (60503, 40238);

update quest_template set requiredskill = 164, requiredskillvalue = 200 where entry = 40238;

delete from item_template where entry = 60321;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60321,8927,'Deciphered Script',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',50514);

REPLACE INTO page_text VALUES
(50514, 'The temperance of great metal and the emboldening with dark magic is the key to much of our work. To channel such magic within the runes of blade takes vast amount of resources plentiful to our kin.\n\nDark Runes must be etched upon the surface of the blade, and heated to extreme temperature, these runes must be placed at the very center of the blade itself, lest the powers be diminished.\n\nEnchanted Leather must be bound and wrapped about the hilt, as to secure the magical potency and balance of the weapon itself.\n\n', 50515),
(50515, 'These are the first techniques required to master for the true creation of the Runeblade, and if one is to master our great magic, then they too can learn such methods.\n\nFor those who have been loyal, and wish to seek such knowledge, they must seek me out at my study upon this mortal world. You can find me within the ravine, lackered in shadow, accompanied by those who I call servants.', 0);

-- The Will of Lorthiras --
delete from quest_template where entry = 40239;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40238,40239,2,139,58,55,0,0,'The Will of Lorthiras','My time here within Shadowbreak Ravine has been a period of thought, and research. I desire to gain knowledge within the fields of magic of the various factions on Azeroth, and see just how far they have come.\n\nAs much as I could infiltrate, and spend effort to gain access to each through time, to sow desent, and chaos, I would much rather recruit you, to do as such for me. If you truly desire to gain knowledge to temper this Runeblade, I will grant it to you temporarily.\n\nFirst, travel to the Upper Blackrock Spire, and from the Rage Talon Fire Tongues, gather me a Rage Talon Charm, Secondly, travel to Dire Maul, from the Ogre Mage-Lords bring me a set Gordok Beads. Finally, from the pits of the Blackrock Depths, gather from a Doomforge Arcanasmith their Doomforge Rod.','Gather a Rage Talon Charm from Upper Blackrock Spire, Gordok Beads from Dire Maul, and a Doomforge Rod from Blackrock Depths for Lorthiras in Shadowbreak Ravine.','Do my bidding mortal, and dispatch my enemies. It is for the greater good of this world for these magics to be taken from the hands of lesser beings.','You have done well, incredibly well, much more then I had originally expected, If you wish to learn how to create a Tempered Runeblade, I shall grant you such knowledge.',60322,1,60323,1,60324,1,0,0,0,0,0,0,0,0,0,0,0,0,0,8250,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60503, 40239);
replace into creature_involvedrelation (id, quest) values (60503, 40239);

update quest_template set requiredskill = 164, requiredskillvalue = 200 where entry = 40239;

delete from item_template where entry between 60322 and 60324;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60322,18816,'Rage Talon Charm',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0),
(60323,32326,'Gordok Beads',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0),
(60324,18368,'Doomforge Rod',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

delete from creature_loot_template where item = 60322 and entry = 10372;
delete from creature_loot_template where item = 60323 and entry = 11444;
delete from creature_loot_template where item = 60324 and entry = 8900;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values
(10372,60322,-100,1,1,0,10),
(11444,60323,-100,1,1,0,10),
(8900,60324,-100,1,1,0,10);

-- Knowledge of Lorthiras --
delete from quest_template where entry = 40240;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40239,40240,2,139,58,55,0,0,'Knowledge of Lorthiras','Now then, mortal, it is time that we bid eachother goodbye. Once you let the magic I have given you flow from your hands, into the hammer that you will temper, it will no longer be of knowledge to you. I suggest you be careful in what you craft.\n\nI have felt a purpose about you ever since you first came, return to the one who sent you on this path. Inform him of your newfound ability, and you will be instructed of what to do next.','With your new found knowledge, return to Craftsman Wilhelm at Light\'s Hope Chapel.','Welcome back friend! What have you learned, was my friend of much help to you?','I must say, with how long you have been gone, I figured you were lost to the madness of some terrible curse! Hah! Phew, what a relief that is, knowing that you\'re still alive, so, I take it you learned something valueable?',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,300,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60503, 40240);
replace into creature_involvedrelation (id, quest) values (16376, 40240);

update quest_template set requiredskill = 164, requiredskillvalue = 200 where entry = 40240;

-- The Materials of Runeforging --
delete from quest_template where entry = 40241;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40240,40241,2,139,58,55,0,0,'The Materials of Runeforging','I must say, I am almost in shock of what you say! If that is true then, well we are given a very rare opportunity! The very acts of tempering a Runeblade may, in itself reveal prospects of how it is done!\n\nI must say, already I have learned quite a bit, just from the book you found, and the story of this Dreadlord.\n\nWe are closing in on finishing our adventure friend, we will need materials in order to ready you for this process! You will need 20 Dark Runes, 5 Enchanted Leather, 40 Thorium Bars, and 10 Essence of Undeath.\n\nBring me these items, and we can begin the tempering!','Collect 20 Dark Runes, 5 Enchanted Leather, 40 Thorium Bars, and 10 Essence of Undeath for Craftsman Wilhelm at Light\'s Hope Chapel.','It will be a lengthy process to require so many materials, but they will be required for the tempering process!','This is all that is required, well done $N! Now, I can direct you to where it must be done, once you temper the blade, it will be bound to you and you alone!',20520,20,12810,5,12359,40,12808,10,0,0,0,0,0,0,0,0,0,0,0,8500,529,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (16376, 40241);
replace into creature_involvedrelation (id, quest) values (16376, 40241);

update quest_template set requiredskill = 164, requiredskillvalue = 200 where entry = 40241;

-- Shell Shields --
delete from quest_template where entry = 40242;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40041,40242,2,16,53,46,0,0,'Shell Shields','Howdy, and welcome to Flaxwhisker Front newcomer! I am Genzil Spannerlight, in charge of starting new projects and archiving the success and failure of old ones.\n\nI have a new idea that may potentially work, a charged shell to act as either a shield, or barrier to be both protective, and resistant to magic! Of course, we will need some shells first, and we don\'t have a bunch of metal to waste, but there are turtles around!\n\nGo out, and gather me 3 Pristine Lurker Shells!','Gather 3 Pristine Lurker Shells for Genzil Spannerlight at the Flaxwhisker Front','We need more methods to shield our projects, have you had any luck?','Why look at these beauties! These shells could certainly be used for all sorts of things, thanks again, no wonder Gigno saw good things in you!',60325,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5650,54,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (92219, 40242);
replace into creature_involvedrelation (id, quest) values (92219, 40242);

delete from item_template where entry = 60325;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60325,22805,'Pristine Lurker Shell',12,1,2048,1,-1,-1,1,3,-1,-1,-1,-1,4,'',0);

delete from creature_loot_template where item = 60324 and entry = 6352;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values
(6352,60325,-20,1,1,0,10);
