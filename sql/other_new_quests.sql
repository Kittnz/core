-- Reserved.
-- quest_template			40000-40200
-- creature_template		60300-60500
-- gameobject_template		2010700-2010900
-- item_template			60000-60200


delete from quest_template where entry = 40014;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (0,40014,2,45,36,28,0,0,'Titiki\'s Hunt','The Troll were once the greatest hunter on Azeroth, there are tales of our legend that last even today mon! The humans once feared us, and we were close to defeating them and elf both.. But that is another story for another time.\n\nThe hunt must always continue for us, and you will help me, proving yourself by hunting the deadliest of Arathi\'s creatures.\n\nThe Plains Creeper be a deadly foe, with a venom strong enough to cripple the senses of even Giants! It creeps within the shadows and strikes with a quickness that be matched by little within the Arathi Highlands\n\nIf you wish to best this creature, then you must be careful in your actions $N. Bring me 5 Greater Venom Sacs from Giant Plains Creepers in Arathi.','Slay Giant Plains Creeper for 5 Greater Venom Sacs.','Have you bested the spiders mon?','Aye, yes mon, you are proving yourself to be skilled, but can you handle the next challenge?',60109,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1950,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (91415, 40014);
replace into creature_involvedrelation (id, quest) values (91415, 40014);

delete from quest_template where entry = 40015;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (40014,40015,2,45,39,28,0,0,'The Hunt for Heketh','You have done well in proving yourself, but now the real challenge begins mon. The biggest of the Greater Plains Creepers be that of Heketh, a fearsome foe with great agility, power, and cunning. To defeat Heketh you will need to have your wits about you.\n\nThe beast can be found just west of Go\'Shek Farm, find him, and slay him for the Wildtusk!','Slay Heketh within Arathi Highlands, and then return to Titiki.','Heketh is a fearsome foe, have you bested him?','You\'ve done it, you\'ve slain the beast? You are a master of the hunt mon! Take this, for da true master of creepers!',0,0,0,0,0,0,0,0,60421,1,0,0,0,0,0,0,0,0,0,2350,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (91415, 40015);
replace into creature_involvedrelation (id, quest) values (91415, 40015);

delete from creature_template where entry = 60421;
replace into creature_template (entry, display_id1, name, level_min, level_max, health_min, health_max, armor, faction, npc_flags, speed_walk, speed_run, detection_range, call_for_help_range, xp_multiplier, dmg_min, dmg_max, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, unit_class, unit_flags, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, loot_id, gold_min, gold_max, movement_type, inhabit_type, civilian, regeneration, equipment_id, scale, flags_extra) values (60421,8014,'Heketh',40,41,1828,1902,2057,22,0,1,1.14,20,5,1,69,87,162,1,2000,2000,1,0,56,78,100,1,1,2565,0,0,3,0,3,0,1.2,0);

delete from item_template where entry = 60109;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description) values (60109,1423,'Greater Venom Sacs',12,1,2048,1,-1,-1,1,5,-1,-1,-1,-1,4,'');

delete from creature where id = 2565 and guid = 11607;
delete from creature where id = 60421;
replace into creature (id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, movement_type, patch_max) values (60421,0,-1484.839,-2828.699,39.106,4.64,300,300,3,100,0,10);

delete from creature_loot_template where entry = 2565 and item = 60109;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (2565,60109,-20,1,1,0,10);


delete from quest_template where entry = 40016;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (0,40016,2,45,34,25,0,0,'Gortog\'s Beads','Gortog was once member of Boulderfist Ogres, we smash anyone who stop us! Gortog spoke out against leader about fighting Horde, and was kicked out of Boulderfist. Gortog did stupid, but Gortog still want Ogre Beads, given to me for smashing.\n\nOne of Boulderfist Ogres at the Outpost still have, I know it, it is just south west of here. Go smash Boulderfists and get my Beads back, they are important!','Smash Ogres at the Boulderfist Outpost and retrieve Gortog\'s Beads','Have you smashed ogre for my beads?','Raaaar!',60108,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1000,2100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (91412, 40016);
replace into creature_involvedrelation (id, quest) values (91412, 40016);

delete from item_template where entry = 60108;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description) values (60108,32326,'Gortog\'s Beads',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'');

delete from creature_loot_template where entry = 2562 and item = 60108;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (2562,60108,-10,1,1,0,10);

delete from creature_loot_template where entry = 2564 and item = 60108;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (2564,60108,-12,1,1,0,10);


delete from quest_template where entry = 40017;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (0,40017,2,45,35,25,0,0,'Preparing for War','Dere be a war $r , between us and the Witherbark and we must prepare for it. Yin\'do be telling me to created as much armor as I can for the upcoming battle, but my supplies are limited. If we are to survive against a stronger foe, then we need all the help we can get, especially from sturdy armor.\n\nI need you to gather me Arathi Raptor Hide from the beasts down south from the mountains. It be the strongest hide from the creatures in the region.','Collect 10 Arathi Raptor Hide from Raptor\'s in Arathi.','Have you gathered the war materials?','You\'ve done Wildtusk Village a favor, and me as well, take this silver, as a thanks for helping.',60119,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2500,2000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (91400, 40017);
replace into creature_involvedrelation (id, quest) values (91400, 40017);

delete from item_template where entry = 60119;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description) values (60119,7594,'Arathi Raptor Hide',12,1,2048,1,-1,-1,1,10,-1,-1,-1,-1,4,'');

delete from creature_loot_template where entry = 2559 and item = 60119;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (2559,60119,-20,1,1,0,10);

delete from creature_loot_template where entry = 2561 and item = 60119;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (2561,60119,-20,1,1,0,10);

delete from creature_loot_template where entry = 2560 and item = 60119;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (2560,60119,-20,1,1,0,10);


delete from quest_template where entry = 40018;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (0,40018,2,45,37,30,0,0,'War on the Witherbark','The Witherbark be a brutal enemy, one that attacked in the dark of night and had no mercy for our kind. We were lucky to escape, what few we did and hold off their attacks. It seems as though they are biding their strength for the next attack, and we will not let it be so.\n\nWe are heavily outnumbered and need to reduce their numbers. Head to the Ruins of Zul\'Rasaz through the trail to the north west. Kill them, and show them that the spirits be on our side, that we be the masters of these heights.','Kill 14 Witherbark Raiders, 8 Witherbark Soothsayers, and 5 Witherbark Rogues.','Have you destroyed the Witherbark, and thinned their strength?','You\'ve done it $r, we may sleep another night thanks to the work you have done. Take these coins as a token of appreciation.',0,0,0,0,0,0,0,0,91784,14,91786,8,91785,5,0,0,0,0,2500,2475,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (91401, 40018);
replace into creature_involvedrelation (id, quest) values (91401, 40018);


delete from quest_template where entry = 40019;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (0,40019,2,45,36,25,0,0,'The Wildtusk Charms','The spirits be watching us, always watching. They be upset at our abandoning of the charms in Zul\'Rasaz and it feels as if their judgements at any time could lead to the voodoo abandoning us. Without the Voodoo or the Spirits, we be lost, and I mean lost from the afterlife and this life both. The spirits abandoned the Witherbark long ago and it be the only reason we still alive!\n\nWe need to recover the charms and quickly. Within our old home, the Ruins of Zul\'Rasaz to the north west be the Wildtusk Charms, collect me 5 of them to please the spirits before we anger them!','Collect 5 Wildtusk Charms from the Ruins of Zul\'Rasaz.','Have you done what I asked yet mon?','I can feel it already, the spirits be pleased, and the voodoo flows! Thank ya mon, for all you done!',60120,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (91402, 40019);
replace into creature_involvedrelation (id, quest) values (91402, 40019);

delete from item_template where entry = 60120;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description) values (60120,1040,'Wildtusk Charm',12,1,2048,1,-1,-1,1,5,-1,-1,-1,-1,4,'');

delete from gameobject_template where entry = 2010802;
replace into gameobject_template values
(2010802, 0, 3, 22973, 'Wildtusk Shrine', 0, 4, 1, 43, 2010802, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

delete from gameobject_loot_template where entry = 2010802;
replace into gameobject_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (2010802,60120,-100,1,1,0,10);


delete from quest_template where entry = 40020;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (0,40020,2,45,36,25,0,0,'The Chief\'s Necklace','In the chaos of the battle for Zul Rasaz items were left behind that are important to many. When we were forced to retreat I left behind a valuable family necklace that means the world to me mon. It was handed down from my father and his own all the way to me, back to the Troll Wars long, long ago.\n\nI cannot stand by while my necklace lays in the Ruins of Zul\'Rasaz, you must get it for me. You can find the ruins of my old city by following a trail outside of the town to the north west. Once in Zul\'Rasaz, you can find my necklace in a hut at the top of the ruins there, in the heights near the Rasaz trails.','Find Yin\'dos necklace in the Ruins of Zul\'Rasaz.','Have you found my family heirloom?','I cannot believe you have got it mon! My ancestors would have been angered if I had lost it, you just saved me a lot of bad juju!',60121,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1950,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (91290, 40020);
replace into creature_involvedrelation (id, quest) values (91290, 40020);

delete from item_template where entry = 60121;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description) values (60121,9852,'The Chief\'s Necklace',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'');

delete from gameobject_template where entry = 2010803;
replace into gameobject_template values
(2010803, 0, 3, 25452, 'Woven Basket', 0, 4, 1, 43, 2010803, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

delete from gameobject_loot_template where entry = 2010803;
replace into gameobject_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (2010803,60121,-100,1,1,0,10);