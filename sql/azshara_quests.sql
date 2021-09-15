-- Reserved.
-- quest_template			40000-40200
-- creature_template		60300-60500
-- gameobject_template		2010700-2010900
-- item_template			60000-60200

--Report from Gnomeregan!--
delete from quest_template where entry = 40048;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (40047,40048,2,16,50,40,0,0,'Report from Gnomeregan!','I\'m honestly shocked I heard back from Flaxwhisker Front, I had assumed that they already knew what happened in Gnomeregan! With the collapse of Gnomeregan almost all of our logistics have been destroyed heading that way, and it would be impossible to help them out.\n\nI want you to send Gigno this letter, I\'ve included some coins in there to fund the journey back for the gnomes in Azshara. Make sure he gets this, it holds all the information he will need and get him up to date on what happened!','Bring Tinkmaster Oversparks Response to Gigno Flaxwhisker.','So, is Gnomeregan sending help then?','Gnomeregan, fallen? There are no more Tinkerspark Transponders?!... We can\'t go back, theres no point in going back, Tinkertown sounds like nothing more then a ghetto compared to what Gnomeregan was! We will make Flaxwhisker Front into the new Gnomeregan, we just need time!',60147,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60147,1,0,1250,54,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (7944, 40048);
replace into creature_involvedrelation (id, quest) values (91768, 40048);

delete from item_template where entry = 60147;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values (60147,3024,'Tinkermaster Oversparks Response',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',50506);

delete from page_text where entry = 50506;
replace into page_text (entry, text, next_page) value (50506,'To Gigno Flaxwhisker of Flaxwhisker Front.\n\nIt brings me great heartbreak to inform you on the dire circumstances regarding Gnomeregan. The city is destroyed, and what once was is no longer any more! After the invasions of troggs the tunnels became irradiated beyond belief.\n\nMany of our kin still remain there, badly effect by the irradiation and turned into vile leper gnomes! The rest of us who escaped created Tinker Town in Ironforge, it is currently our new home. I have enclosed in the letter coins enough for you to travel home, find whatever means you can, and return to Tinker Town.',0);

--Reclaiming the Tinkerspark Transponder--
delete from quest_template where entry = 40057;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4, type) values (40048,40057,2,16,54,40,0,0,'Reclaiming the Tinkerspark Transponder','Now that we know Gnomeregan is destroyed and that there is no way to get a new Tinkerspark Transponder we must reclaim our old one. The naga stole it months ago, and we must have it if progress is to be made here.\n\nThere\'s no way back to Gnomeregan so we must make do with what is here in Azshara, and I know those blasted Naga still have it! The one who led the raid was called Laszan, a fearsome foe. If you want to stand a chance, bring some friends, it might be your only way of killing him for good!\n\nHe should be east of the Ruins of Eldarath, along the shoreline.','Reclaim the Tinkerspark Transponder for Gigno Flaxwhisker.','Have you done it, have you recovered the Transponder?','Wow! You\'ve gotten it, you\'ve reclaimed our most valuable tool? I cannot thank you enough outsider! We are forever in your debt, and now, the work can continue!',60151,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,15000,6250,54,300,0,0,0,0,0,0,0,0,0,60152,1,60153,1,0,0,0,0,0,0,0,0,0,0,0,0,1);

replace into creature_questrelation (id, quest) values (91768, 40057);
replace into creature_involvedrelation (id, quest) values (91768, 40057);

delete from item_template where entry = 60151;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values (60151,7841,'Tinkerspark Transponder',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

delete from item_template where entry = 60152;
replace into item_template values
 ('60152', '0', '2', '4', 'Gigno\'s Spanner', '', '7494', '3', '0', '1', '195044', '48761', '21', '-1', '-1', '59',
 '0', '202', '200', '0', '0', '0', '0', '0', '0', '1', '0', '5', '6', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2300', '0',
 '0', '72', '106', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '18384', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '3', '0', '0', '90', '0', '0', '0', '0', '47', '0', '0', '0',
 '0', '1', NULL);

delete from item_template where entry = 60153;
replace into item_template values
 ('60153', '0', '4', '2', 'Gigno\'s Overalls', '', '18428', '3', '0', '1', '105948', '26487', '5', '-1', '-1', '59',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '8', '4', '8',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '172', '0', '0', '0',
 '0', '0', '0', '7597', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '1', '0', '0', '100', '0', '0', '0', '0', '47', '0', '0', '0',
 '0', '1', NULL);

--Killing the Tide Lord--
delete from quest_template where entry = 40061;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4, type) values (40039,40061,2,16,56,45,0,0,'Killing the Tide Lord','There is one thing left for you to do outsider, if you truly wish to assist the Rethress. The one who claimed dominion over these lands, and betrayed me is named Tide Lord Naszharr. He is a vile, and despicable traitor who must be destroyed and vanquished from this world.\n\nI want him to suffer, and suffer greatly. He resides up near the Ravencrest Monument up to the north east. Go there, and rip the heart from him, bring it to me, make sure he regrets everything he has done to us.','Bring the Heart of Naszharr to Tide Mistress Rashal.','Have you killed him, have you stopped this insurrection?','So, it is done. It will take some time to bring all of the others into the fold, but without you, I would not be a step closer. When I return to the great depths I will be sure to have your name placed in honor. When we naga conquer the world, you will be saved to do as you please.\n\nTake this, as a token of my gratitude land-walker.',60157,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6600,0,0,0,0,0,0,0,0,0,0,0,60158,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1);

replace into creature_questrelation (id, quest) values (91776, 40061);
replace into creature_involvedrelation (id, quest) values (91776, 40061);

delete from creature_template where entry = 60432;
REPLACE INTO `creature_template` VALUES (60432, 0, 11258, 0, 0, 0, 'Tide Lord Naszharr', NULL, 0, 57, 57, 7842, 7842, 0, 0, 4822, 74, 0, 1.2, 1.42, 2.5, 20, 5, 0, 1, 1, 344, 444, 0, 248, 1, 2500, 2000, 1, 32768, 0, 0, 0, 0, 0, 0, 59.3, 81.57, 100, 7, 0, 60432, 7885, 0, 0, 0, 0, 0, 0, 0, 11608, 0, 0, 0, 0, 0, 425, 559, '', 0, 3, 0, 0, 3, 5746, 0, 0, 0, 0, 0, 0, '');

delete from creature_loot_template where entry = 60432 and item = 60157;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (60432,60157,-100,1,1,0,10);

delete from item_template where entry = 60157;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values (60157,7269,'Heart of Naszharr',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

delete from item_template where entry = 60158;
replace into item_template values
 ('60158', '0', '4', '0', 'Rethress Tide Crest', '', '2612', '2', '0', '1', '50444', '12611', '12', '-1', '-1', '59',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '5', '0', '0', '11789', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '8095', '0',
 '0', '0', '1800000', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);