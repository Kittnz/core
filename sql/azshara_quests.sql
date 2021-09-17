-- Reserved.
-- quest_template			40000-40200
-- creature_template		60300-60500
-- gameobject_template		2010700-2010900
-- item_template			60000-60200

-- Report from Gnomeregan! --
delete from quest_template where entry = 40048;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (40047,40048,2,16,50,40,0,0,'Report from Gnomeregan!','I\'m honestly shocked I heard back from Flaxwhisker Front, I had assumed that they already knew what happened in Gnomeregan! With the collapse of Gnomeregan almost all of our logistics have been destroyed heading that way, and it would be impossible to help them out.\n\nI want you to send Gigno this letter, I\'ve included some coins in there to fund the journey back for the gnomes in Azshara. Make sure he gets this, it holds all the information he will need and get him up to date on what happened!','Bring Tinkmaster Oversparks Response to Gigno Flaxwhisker.','So, is Gnomeregan sending help then?','Gnomeregan, fallen? There are no more Tinkerspark Transponders?!... We can\'t go back, theres no point in going back, Tinkertown sounds like nothing more then a ghetto compared to what Gnomeregan was! We will make Flaxwhisker Front into the new Gnomeregan, we just need time!',60147,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60147,1,0,1250,54,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (7944, 40048);
replace into creature_involvedrelation (id, quest) values (91768, 40048);

delete from item_template where entry = 60147;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values (60147,3024,'Tinkermaster Oversparks Response',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',50506);

delete from page_text where entry = 50506;
replace into page_text (entry, text, next_page) value (50506,'To Gigno Flaxwhisker of Flaxwhisker Front.\n\nIt brings me great heartbreak to inform you on the dire circumstances regarding Gnomeregan. The city is destroyed, and what once was is no longer any more! After the invasions of troggs the tunnels became irradiated beyond belief.\n\nMany of our kin still remain there, badly effect by the irradiation and turned into vile leper gnomes! The rest of us who escaped created Tinker Town in Ironforge, it is currently our new home. I have enclosed in the letter coins enough for you to travel home, find whatever means you can, and return to Tinker Town.',0);

-- Reclaiming the Tinkerspark Transponder --
delete from quest_template where entry = 40057;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4, type) values (40048,40057,2,16,54,40,0,0,'Reclaiming the Tinkerspark Transponder','Now that we know Gnomeregan is destroyed and that there is no way to get a new Tinkerspark Transponder we must reclaim our old one. The naga stole it months ago, and we must have it if progress is to be made here.\n\nThere\'s no way back to Gnomeregan so we must make do with what is here in Azshara, and I know those blasted Naga still have it! The one who led the raid was called Laszan, a fearsome foe. If you want to stand a chance, bring some friends, it might be your only way of killing him for good!\n\nHe should be east of the Ruins of Eldarath, along the shoreline.','Reclaim the Tinkerspark Transponder for Gigno Flaxwhisker.','Have you done it, have you recovered the Transponder?','Wow! You\'ve gotten it, you\'ve reclaimed our most valuable tool? I cannot thank you enough outsider! We are forever in your debt, and now, the work can continue!',60151,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,15000,6250,54,300,0,0,0,0,0,0,0,0,0,60152,1,60153,1,0,0,0,0,0,0,0,0,0,0,0,0,1);

replace into creature_questrelation (id, quest) values (91768, 40057);
replace into creature_involvedrelation (id, quest) values (91768, 40057);

delete from creature_template where entry = 60433;
REPLACE INTO `creature_template` VALUES (60433, 0, 11265, 0, 0, 0, 'Laszan', NULL, 0, 53, 53, 3188, 3188, 0, 0, 3190, 74, 0, 1.1, 1.14286, 2.3, 20, 5, 0, 0, 1, 93, 115, 0, 244, 1, 2000, 2000, 1, 32768, 0, 0, 0, 0, 0, 0, 69.696, 95.832, 100, 7, 0, 60433, 7885, 0, 0, 0, 0, 0, 0, 0, 11564, 0, 0, 0, 0, 0, 116, 157, '', 0, 3, 0, 0, 3, 4948, 0, 0, 0, 0, 0, 0, '');

delete from creature_loot_template where entry = 60433 and item = 60151;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (60433,60151,-100,1,1,0,10);

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

-- Killing the Tide Lord --
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

-- An Azure Scale for Gnomeregan! --
delete from quest_template where entry = 40062;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4, type) values (40041,40062,2,16,55,40,0,0,'An Azure Scale for Gnomeregan!','When we were first sent here we were tasked to obtain an Azure Scale from the Blue Dragonflight, sadly, we have not had the means to do so! We\'ve been to busy with other projects, and well, didn\'t want to stir the hive. Especially since we don\'t have any actual military capabilities.\n\nNow with you around though, there is a possibility! To the north west is Lake Mennar, the Dragonflight has gathered around there for. Something. Get me an Azure Scale from the Blue Dragonflight, and make sure to bring buddies, I\'d hate to have you die on my account!','Gather an Azure Scale for Blimo Gadgetspring.','So, have you tackled the Dragonflight yet?','Dragon\'s sure can be imposing, I under-... Wait, you actually got it? Wow, that\'s incredible! I\'m shocked you managed to do this, thanks again, we\'ve been needing this since we first came here.',60158,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,25000,6500,54,250,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1);

replace into creature_questrelation (id, quest) values (12957, 40062);
replace into creature_involvedrelation (id, quest) values (12957, 40062);

delete from item_template where entry = 60158;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values (60158,22641,'Azure Scale',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

delete from creature_loot_template where entry = 6130 and item = 60158;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (6130,60158,-8,1,1,0,10);

delete from creature_loot_template where entry = 6131 and item = 60158;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (6131,60158,-10,1,1,0,10);

delete from creature_loot_template where entry = 6129 and item = 60158;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (6129,60158,-14,1,1,0,10);

update creature_template set npc_flags = 7 where entry = 12957;

-- In Need of Sprugbolts --
delete from quest_template where entry = 40063;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4, type) values (40041,40063,2,16,53,40,0,0,'In Need of Sprugbolts','Hey there! Good to have new blood around, especially with everything that has been going on lately. It feels like every project we\'ve had has just been grinded into the dirty, either from some outside force messing with us, or well, something breaking down!\n\nI\'m sort of in charge of the supplies around here, and murlocs took a bunch of Sprugbolts a few weeks back. I want you to get them back, you can find the crafty murlocs in the waters all around us.\n\nBring me back 5 Sprugbolts , I hope you like swimming!','Bring 5 Sprugbolts to Jubie Gadgetspring at the Flaxwhisker Front.','We need those Sprugbolts, they are an intricate part that we cannot just make.','Ahh, wow, you did it, great job! I sure hope those murlocs didn\'t give you much trouble, they sure can be nasty when you harm them, or scare them!',60159,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5650,54,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (8678, 40063);
replace into creature_involvedrelation (id, quest) values (8678, 40063);

delete from item_template where entry = 60159;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values (60159,3257,'Sprugbolt',12,1,2048,1,-1,-1,1,5,-1,-1,-1,-1,4,'',0);

delete from creature_loot_template where entry = 6351 and item = 60159;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (6351,60159,-15,1,1,0,10);

delete from creature_loot_template where entry = 6371 and item = 60159;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (6371,60159,-18,1,1,0,10);

update creature_template set npc_flags = 7 where entry = 8678;

-- The Gyronautical Compass --
delete from quest_template where entry = 40064;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4, type) values (40063,40064,2,16,53,40,0,0,'The Gyronautical Compass','A few days back this human ship was passing through, it didn\'t seem like anything weird, aside from a boat being all the way out here. That was until fire started upon the deck, and all manner of chaos seemed to erupt. The ship was attacked by naga and murloc both!\n\nIt was dragged down, and the crew seemed to escape somewhere along the coast to the east of here. I\'d imagine the boat is still resting somewhere along the bottom of the sea, and I want you to go through the wreckage! If the crew knew any gnomes, or used any gnomish tools, then there is a very high chance that they had a Gyronautical Compass!\n\nI feel bad for the dead - surely, but it would help us quite a bit if we had such a device! Search the ship and its wreckage, it sank to the south east.','Search the wreckage for a Gyronautical Compass.','Have you found the boat?','Splendid! So there really was one, this is going to help a bunch around here, thanks again for everything you\ve done. As a thanks, take this, we can do without it.',60160,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6000,54,200,0,0,0,0,0,0,0,0,0,60161,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (8678, 40064);
replace into creature_involvedrelation (id, quest) values (8678, 40064);

delete from item_template where entry = 60160;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values (60160,1270,'Gyronautical Compass',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'Looks very complicated',0);

delete from item_template where entry = 60161;
replace into item_template values
 ('60161', '0', '4', '1', 'Flaxwhisker Sash', '', '27614', '2', '0', '1', '33664', '8416', '6', '-1', '-1', '59',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '20', '6', '6',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '43', '0', '0', '0',
 '0', '0', '0', '21592', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '25', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);

delete from gameobject_template where entry = 2010816;
replace into gameobject_template values
(2010816, 0, 3, 23434, 'Sunken Locker', 0, 4, 1, 43, 2010816, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

delete from gameobject_loot_template where entry = 2010816;
replace into gameobject_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (2010816,60160,-100,1,1,0,10);

-- The Turbo-Charged Wobblefree Fizz-disk --
delete from quest_template where entry = 40065;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4, type) values (40041,40065,2,16,54,40,0,0,'The Turbo-Charged Wobblefree Fizz-disk','Now that Gigno has vouched for you I\'d like to get some real work done around here! The Turbo-Charged Wobblefree Fizz-disk is an invention I made, and did a lot of work for reading magic and ley-levels within Azshara. We had a good thing going, for a while, until all of the naga and the murlocs showed up months ago!\n\nWe were driven from our site, and I had to abandon the Fizz-disk or I would have certainly lost my life prying it free. I want you to go and get it back for me, so that I can continue my work and not have to start over, this was something I was cooking up in Gnomeregan, and a lot of my plans are still back there.\n\nTo the east is where the Rethress Naga have taken sanctuary, if you head north of the Sanctum,there is a canyon that is somewhat maze-like. Within that Canyon is where the cave is located, and in that cave, a control panel. Search the inside of the control panel for the Turbo-Charged Wobblefree Fizz-disk.','Retrieve the Turbo-Charged Wobblefree Fizz-disk for Fendo Wobblefizz at Flaxwhisker Front.','Have you found our old work site, have you reclaimed the Turbo-Charged Wobblefree Fizz-disk?!','Wonderous! Oh by my name you\'ve done a great job in getting this back. I was getting myself mentally prepared for having to work for another few months to get this thing back.\n\nOh... My, it seems to have taken some damage...',60162,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5500,54,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (91770, 40065);
replace into creature_involvedrelation (id, quest) values (91770, 40065);

delete from item_template where entry = 60162;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values (60162,1221,'Turbo-Charged Wobblefree Fizz-disk',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'Turbo Charged, and Wobble Free',0);

delete from gameobject_template where entry = 2010817;
replace into gameobject_template values
(2010817, 0, 3, 23886, 'Site Control Panel', 0, 4, 1, 43, 2010817, 0, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

delete from gameobject_loot_template where entry = 2010817;
replace into gameobject_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (2010817,60162,-100,1,1,0,10);

-- Repair the Fizz-disk --
delete from quest_template where entry = 40066;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4, type) values (40065,40066,2,16,54,40,0,0,'Repair the Fizz-disk','The Turbo-Charged Wobblefree Fizz-disk must have fallen in a state of disrepair after I left, we did leave the control panel running. While this thing is durable, it\'s not so durable to be put up to so much pressure for that long. \n\nI\'m going to need this thing repaired, and with your help, surely it will get done! The list of materials required is going to be, somewhat long, but I promise I will make it worth your time if you can get the items.\n\nAside, we\'re kind of.. Lacking in materials lately. I am going to need the following.\n\n10 Thorium Bars.\n1 Thorium Widget.\n5 Iron Struts.\n1 Unstable Trigger.','Gather 10 Thorium Bars, 1 Thorium Widget, 5 Iron Struts, and 1 Unstable Trigger for Fendo Wobblefizz in Flaxwhisker Front.','I know its quite the list, but the quicker it is done, the quicker I can get started!','My my, look at that, you\'ve gotten everything I\'ve needed, now I can get to work on putting this technology to good work for you!',12359,10,15994,1,4387,5,10560,1,0,0,0,0,0,0,0,0,0,0,0,5500,54,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (91770, 40066);
replace into creature_involvedrelation (id, quest) values (91770, 40066);

-- Fendo\'s Spanner --
delete from quest_template where entry = 40067;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4, type) values (40066,40067,2,16,54,40,0,0,'Fendo\'s Spanner','Thanks for getting it all, now I can get to work... Where is my...\n\n<Fendo begins to look around>.\n\nHuh, I don\'t have my spanner on me, can you look inside? If anything it should be on the second floor, in my toolbox, once I have it, I\'ll get started.','Find Fendo Wobblefizz\'s Spanner.','Any luck? I\'m still looking around, but I can\'t find it.','That\'s it! I knew it would be on the second floor, now lets get started!',60163,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,400,54,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (91770, 40067);
replace into creature_involvedrelation (id, quest) values (91770, 40067);

delete from item_template where entry = 60163;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values (60163,7494,'Fendo\'s Spanner',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

delete from gameobject_template where entry = 2010818;
replace into gameobject_template values
(2010818, 0, 3, 23790, 'Fendo\'s Toolbox', 0, 4, 1, 43, 2010818, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

delete from gameobject_loot_template where entry = 2010818;
replace into gameobject_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (2010818,60163,-100,1,1,0,10);