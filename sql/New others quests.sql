-- Reserved.
-- quest_template			40000-40200
-- creature_template		60300-60500
-- gameobject_template		2010700-2010900
-- item_template			60000-60200


delete from quest_template where entry = 40114;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (0,40114,2,45,36,28,0,0,'Titiki\'s Hunt','The Troll were once the greatest hunter on Azeroth, there are tales of our legend that last even today mon! The humans once feared us, and we were close to defeating them and elf both.. But that is another story for another time.\n\nThe hunt must always continue for us, and you will help me, proving yourself by hunting the deadliest of Arathi\'s creatures.\n\nThe Plains Creeper be a deadly foe, with a venom strong enough to cripple the senses of even Giants! It creeps within the shadows and strikes with a quickness that be matched by little within the Arathi Highlands\n\nIf you wish to best this creature, then you must be careful in your actions $N. Bring me 5 Greater Venom Sacs from Giant Plains Creepers in Arathi.','Slay Giant Plains Creeper for 5 Greater Venom Sacs.','Have you bested the spiders mon?','Aye, yes mon, you are proving yourself to be skilled, but can you handle the next challenge?',60109,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1950,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (60421, 40114);
replace into creature_involvedrelation (id, quest) values (60421, 40114);

delete from creature_template where entry = 60421;
replace into creature_template (entry, display_id1, name, level_min, level_max, health_min, health_max, armor, faction, npc_flags, speed_walk, speed_run, detection_range, call_for_help_range, xp_multiplier, dmg_min, dmg_max, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, unit_class, unit_flags, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, loot_id, gold_min, gold_max, movement_type, inhabit_type, civilian, regeneration, equipment_id, flags_extra) values (60421,4070,'Titiki',40,40,1768,1768,1999,126,2,1,1.14,20,5,1,65,78,156,1,2000,2000,1,4608,67,92,100,7,0,0,0,0,3,1,3,15618,10);

delete from item_template where entry = 60109;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description) values (60109,1423,'Greater Venom Sacs',12,1,2048,1,-1,-1,1,5,-1,-1,-1,-1,4,'');

delete from creature where id = 60421;
replace into creature (id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, movement_type, patch_max) values (60421,0,-1007.324,-3555.890,56.890,6.04,300,300,3,100,0,10);

delete from creature_loot_template where entry = 2565;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (2565,60109,-20,1,1,0,10);

delete from quest_template where entry = 40122;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (40121,40122,2,45,39,28,0,0,'The Hunt for Heketh','You have done well in proving yourself, but now the real challenge begins mon. The biggest of the Greater Plains Creepers be that of Heketh, a fearsome foe with great agility, power, and cunning. To defeat Heketh you will need to have your wits about you.\n\nThe beast can be found just west of Go\'Shek Farm, find him, and slay him for the Wildtusk!','Slay Heketh within Arathi Highlands, and then return to Titiki.','Heketh is a fearsome foe, have you bested him?','You\'ve done it, you\'ve slain the beast? You are a master of the hunt mon! Take this, for da true master of creepers!',0,0,0,0,0,0,0,0,60422,1,0,0,0,0,0,0,0,0,0,2350,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (60421, 40122);
replace into creature_involvedrelation (id, quest) values (60421, 40122);

delete from creature_template where entry = 60422;
replace into creature_template (entry, display_id1, name, level_min, level_max, health_min, health_max, armor, faction, npc_flags, speed_walk, speed_run, detection_range, call_for_help_range, xp_multiplier, dmg_min, dmg_max, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, unit_class, unit_flags, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, loot_id, gold_min, gold_max, movement_type, inhabit_type, civilian, regeneration, equipment_id, scale, flags_extra) values (60422,8014,'Heketh',40,41,1828,1902,2057,22,0,1,1.14,20,5,1,69,87,162,1,2000,2000,1,0,56,78,100,1,1,2565,0,0,3,0,3,0,1.2,0);

delete from creature where id = 2565 and guid = 11607;
delete from creature where id = 60422;
replace into creature (id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, movement_type, patch_max) values (60422,0,-1484.839,-2828.699,39.106,4.64,300,300,3,100,0,10);
