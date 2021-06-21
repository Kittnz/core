replace into quest_template (entry, method, zoneorsort, title, details, objectives, offerrewardtext, minlevel, questlevel, questflags, rewrepfaction1, rewrepvalue1, rewxp, rewmoneymaxlevel) values (40001, 2, 14, 'Puffing Peace', 'Ah, Earthmother’s blessings, $r.\n\nIsn\'t it great? Out here in the open, surrounded by nature.\n\n<Shagu takes a deep breath, inhaling the fumes from his hookah before lettting out a hacking cough.>\n\nNot the good stuff, not at all.\n\nSay, think you could do me a favor?\n\nI am expecting a package but it has yet to arrive. Could you go and check with Mishiki in Sen\’jin Village and find out what happened to my special delivery?\n\n<Shagu blows a puff of smoke from his lips and then winks at you with a grin on his face.>', 'Speak to Mishiki in Sen\'jin Village.', 'Ah mon, Shagu sent ya for his herbs? Mishiki wanted to send it as soon as possible but ya see we got a bit of a problem.', 8, 10, 8, 81, 100, 910, 540);

replace into creature_questrelation (id, quest) values (60300, 40001);
replace into creature_involvedrelation (id, quest) values (3185, 40001);


replace into quest_template (entry, method, zoneorsort, minlevel, questlevel, questflags, title, details, objectives, requestitemstext, offerrewardtext, prevquestid, reqitemid1, reqitemcount1, rewrepfaction1, rewrepvalue1, rewxp, rewmoneymaxlevel) values (40002, 2, 14, 8, 10, 8, 'Grand Herbal Theft', 'So, I sent me usual messenger to deliver the good stuff to Mulgore, but, ya see, that grumpy orc riding his wolf around Durotar reported seeing him dead and with me herbs missing!\n\nDa quillboars be more aggressive than usual if dey came down from da roads to slay me messenger!\n\nI mean, Durotar be no walk in the park either, everything can kill ya here if ya not paying attention.\n\nI bet dey took his satchel after killing him and took it back to dey camp, or maybe dey are even carrying it on dem!\n\nTry killing some of da scouts. If ya do find da satchel take it back to Shagu and keep da pay fo yourself!
\n\nSafe travels, mon. Loa guide ya steps.', 'Find Shagu\'s Satchel of Mixed Herbs', 'Mixed herbs give mixed feelings, friend!', 'You\'ve returned my friend. And with the herbs no less, here\'s the payment I owe.', 40001, 60000, 1, 81, 100, 840, 510);

replace into creature_questrelation (id, quest) values (3185, 40002);
replace into creature_involvedrelation (id, quest) values (60300, 40002);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding) values (60000, 2593, 'Satchel of Mixed Herbs', 12, 1, 2048, 1, -1, -1, 1, 1, -1, -1, -1, -1, 4);

replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref) values (3112, 60000, -40, 1);


replace into creature_template (entry, name, display_id1) values (60301, 'quest_40003_dummy_triger', 328);

delete from creature_template where entry = 60300;
replace into creature_template (entry, display_id1, name, level_min, level_max, health_min, health_max, armor, faction, npc_flags, speed_walk, speed_run, scale, detection_range, call_for_help_range, xp_multiplier, dmg_min, dmg_max, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, unit_class, unit_flags, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, ai_name, inhabit_type, regeneration, flags_extra) values (60300, 2105, 'Shagu', 9, 9, 176, 176, 20, 104, 2, 2, 1.14286, 1.35, 20, 5, 1, 9, 13, 60, 1, 2000, 2000, 1, 4608, 15.2064, 20.9088, 100, 7, 'eventai', 1, 3, 2);
delete from creature where id = 60300 and position_x = -2324.818624;
replace into creature (id, map, display_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, health_percent, patch_max) values (60300, 1, 2105, -2324.818624, -262.519501, -8.090123, 0.711100, 120, 120, 100, 10);
replace into creature_template_addon (entry, bytes1) values (60300, 4);

delete from creature_template where entry = 60302;
replace into creature_template (entry, display_id1, name, subname, level_min, level_max, health_min, health_max, armor, faction, speed_walk, speed_run, detection_range, call_for_help_range, xp_multiplier, dmg_min, dmg_max, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, unit_class, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, loot_id, skinning_loot_id, spell_id1, spell_list_id, inhabit_type, regeneration, flags_extra) values (60302, 11416, 'Flup', 'Shagu\'s pet', 9, 9, 176, 176, 406, 104, 1, 2.00, 20, 5, 1, 11, 15, 60, 1, 1900, 2090, 1, 15.2064, 20.9088, 100, 1, 1133, 1133, 3151, 11330, 3, 3, 2);
delete from creature where id = 60302 and position_x = -2322.468994;
replace into creature (id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, health_percent, patch_max) values (60302, 1, -2322.468994, -263.209900, -8.240777, 1.872133, 120, 120, 100, 10);
replace into creature_template_addon (entry, bytes1) values (60302, 3);

replace into quest_template (entry, method, zoneorsort, minlevel, questlevel, questflags, title, details, objectives, requestitemstext, offerrewardtext, prevquestid, reqitemid1, reqitemcount1, reqcreatureorgoid1, reqcreatureorgocount1, rewrepfaction1, rewrepvalue1, rewxp, rewmoneymaxlevel, objectivetext1) values (40003, 2, 215, 8, 10, 8, 'Hookah For Your Troubles', 'Now that you\'ve brought the herbs I can set up my hookah and truly enjoy the real good stuff.\n\nIt is by the Earthmother\'s blessings that such a combination exists. I would like you to try this and see for yourself what the gifts of the Earthmother bestow!\n\nSit down, sit down. Let us enjoy the smoke and bond with one another and of course with the Earthmother.', 'Share a smoke with Shagu.', 'Come on my friend, sit down and take a toke.
It will be well worth it.', 'An eye opener, isn\'t it $n?
You now feel closer to the Earthmother than ever before.\n\nRejoice and be one with nature!', 40002, 0, 0, 60301, 1, 81, 100, 910, 540, 'Share a smoke with Shagu');

replace into creature_questrelation (id, quest) values (60300, 40003);
replace into creature_involvedrelation (id, quest) values (60300, 40003);

replace into gameobject_template (entry, type, displayid, size, name, flags, script_name) values (2010700, 1, 24710, 1, 'Shagu\'s Shisha', 32, 'go_shagu_shisha');
replace into gameobject_template (entry, patch, type, displayid, name, size, data3) values (2010701, 5, 5, 758, 'Flup\'s bone', 1, 1);

delete from gameobject where id = 2010701 and position_x = -2322.729982;
replace into gameobject (id, map, position_x, position_y, position_z, orientation) values (2010701, 1, -2322.729982, -261.812988, -8.174910, 2.732180);
delete from gameobject where id = 20326 and position_x = -2318.912598;
replace into gameobject (guid, id, map, position_x, position_y, position_z, orientation) values (20326, 2912, 1, -2318.912598, -258.732117, -8.464744, 2.992660);
delete from gameobject where id = 176427 and position_x = -2322.469971;
replace into gameobject (id, map, position_x, position_y, position_z, orientation) values (176427, 1, -2322.469971, -259.363007, -8.136130, 4.992660);
delete from gameobject where id = 126052 and position_x = -2325.040039;
replace into gameobject (id, map, position_x, position_y, position_z, orientation) values (126052, 1, -2325.040039, -262.264008, -7.990120, 0.711100);
delete from gameobject where id = 126052 and position_x = -2325.689941;
replace into gameobject (id, map, position_x, position_y, position_z, orientation) values (126052, 1, -2325.689941, -257.164001, -7.804740, 5.589860);
delete from gameobject where id = 126052 and position_x = -2321.100098;
replace into gameobject (id, map, position_x, position_y, position_z, orientation) values (126052, 1, -2321.100098, -255.304001, -8.218660, 4.243640);
delete from gameobject where id = 126052 and position_x = -2319.310059;
replace into gameobject (id, map, position_x, position_y, position_z, orientation) values (126052, 1, -2319.310059, -262.487000, -8.502380, 2.373110);
delete from gameobject where id = 2010700 and position_x = -2324.290039;
replace into gameobject (id, map, position_x, position_y, position_z, orientation) values (2010700, 1, -2324.290039, -260.894012, -8.014290, 3.456070);
delete from gameobject where id = 2010700 and position_x = -2322.340088;
replace into gameobject (id, map, position_x, position_y, position_z, orientation) values (2010700, 1, -2322.340088, -256.303009, -8.100590, 2.730700);
delete from gameobject where id = 180329 and position_x = -2320.699951;
replace into gameobject (id, map, position_x, position_y, position_z, orientation) values (180329, 1, -2320.699951, -261.308014, -8.342500, 3.730700);
delete from gameobject where id = 180329 and position_x = -2324.159912;
replace into gameobject (id, map, position_x, position_y, position_z, orientation) values (180342, 1, -2324.159912, -257.188995, -7.938770, 3.730700);
delete from gameobject where id = 180329 and position_x = -2322.300049;
replace into gameobject (id, map, position_x, position_y, position_z, orientation) values (180330, 1, -2322.300049, -254.684006, -7.876870, 3.730700);
delete from gameobject where id = 2004750 and position_y = -2327.5;
replace into gameobject (id, map, position_x, position_y, position_z, orientation) values (2004750, 1, -2327.5, -260.435394, -7.759786, 3.170700);
delete from gameobject where id = 2002798 and position_y = -2324.239990;
replace into gameobject (id, map, position_x, position_y, position_z, orientation) values (2002798, 1, -2324.239990, -263.286987, -7.7, 5.696910);