-- Reserved.
-- quest_template			40000-40200
-- creature_template		60300-60500
-- gameobject_template		2010700-2010900
-- item_template			60000-60200


delete from quest_template where entry = 40048;
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