delete from quest_template where entry = 40120;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (0,40120,2,331,13,20,0,0,'Aggresive Wildlife','The encroaching wildlife has become a problem for both myself and my wife. In the past we lived at peace with the animals of the forest, though it now seems we must always be wary of our moves and watch the forests for the eyes of stalking predators.\n\nThe Ghostpaw have been especially troublesome and have for days now stalked our house for signs of weakness. I have given them none but I fear that something may be driving the wildlife to act in a much more aggresive manner.\n\nRegardless, gather me five of their pelts, thin the numbers so that they are not so brazen in their attacks, you can find Ghostpaw Wolves all around the forest.','Slay Ghostpaw Wolves and bring their pelts to Ardaen.','Have you made the forests a safer place, friend?','I must thank you dearly for the work you have put in, you have made it easier for us out here, but I feel one more thing must be done.',60110,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1000,1350,69,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (91288, 40120);
replace into creature_involvedrelation (id, quest) values (91288, 40120);

delete from quest_template where entry = 40121;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (40120,40121,2,331,13,21,0,0,'Alpha Aggresion','The Alpha of the Ghostpaw Wolves in the region is named Ghoststalker, he is a ferocious beast and is the one that seemingly leads the packs of wolves in the region. If a balance in nature is to be brought, the beast must be slain.\n\nYou should find him in the hills north west of of Lake Falathim, southeast of the Zoram Strand. I wish you luck in your hunt, Ghoststalker is a clever beast that has eluded me to this day.','Kill Ghoststalker and bring his paw to Ardaen Evermoon.','The beast Ghoststalker, have you dispatched him?','The balance of nature in the region will be restored over time, I thank you greatly, on both behalf of myself, and my wife, take this, a family heirloom, may it serve you well.',60111,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1650,69,100,0,0,0,0,0,0,0,0,0,60112,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (91288, 40121);
replace into creature_involvedrelation (id, quest) values (91288, 40121);

delete from creature_template where entry = 60420;
replace into creature_template (entry, display_id1, name, level_min, level_max, health_min, health_max, armor, faction, npc_flags, speed_walk, speed_run, detection_range, call_for_help_range, xp_multiplier, dmg_min, dmg_max, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, unit_class, beast_family, unit_flags, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, loot_id, skinning_loot_id, gold_min, gold_max, movement_type, inhabit_type, regeneration, flags_extra, scale) values (60420,776,'Ghoststalker',27,27,839,895,1130,38,0,1,1.14,20,5,1,31,38,116,1,1300,2000,1,1,0,42,58,100,1,60420,3825,0,0,0,3,3,0,1.5);

delete from item_template where entry = 60110;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding) values (60110,1421,'Ghostpaw Pelt',12,1,2048,1,-1,-1,1,5,-1,-1,-1,-1,4);

delete from item_template where entry = 60111;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding) values (60111,940,'Ghoststalker\'s Paw',12,1,2048,1,-1,-1,1,5,-1,-1,-1,-1,4);

delete from item_template where entry = 60112;
replace into item_template values
 ('60112', '0', '2', '10', 'Evermoon Staff', '', '22144', '2', '0', '1', '10136', '2534', '17', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '4', '4', '2',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2300', '0',
 '0', '30', '44', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '10', '0', '0', '3',
 '0', '0', '0', '7692', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '2', '2', '0', '0', '75', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (3823,60110,-35,1,1,0,10);

replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (60420,60111,-100,1,1,0,10);

delete from creature where id = 60420;
replace into creature (id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, movement_type, patch_max) values (60420,1,3310.045654,-1666.707886,173.295029,3.56,300,300,3,100,1,10);
