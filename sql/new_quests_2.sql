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
