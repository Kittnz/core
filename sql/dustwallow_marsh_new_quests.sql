-- Mannoroc Demonic Sigil
delete from quest_template where entry = 40407;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40407,2,15,39,32,0,0,'Mannoroc Demonic Sigil','It has been years since the invasion of the Burning Legion during the Third War, and while they have been defeated, they still hold much sway upon Azeroth. Demonic magic is extremely potent, and it is something I have been tasked with studying.\n\nIn the region of Desolace within an area known as Mannoroc Coven there is quite a sizeable demonic presence. It is there that I ask of you to acquire a Mannoroc Demonic Sigil, finding one may be rare, but if we are to have a chance to defeat the Burning Legion, then we must know all that we can.\n\nSlay them, and bring me one of their sigils for study.','Acquire a Mannoroc Demonic Sigil for Magus Hallister at Theramore Isle in Dustwallow Marsh.','Have you found a sigil?','The power coming from this sigil is quite strong, and will prove useful for study, thanks again for everything you have done $C, I will make sure it is put to good use in defense of the realm.',60589,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2650,108,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60590,1,60591,1,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60731, 40407);
replace into creature_involvedrelation (id, quest) values (60731, 40407);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60589,34261,'Mannoroc Demonic Sigil',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into item_template values
 ('60590', '4', '1', 'Isle Watcher\'s Sash', '', '28730', '2', '0', '1', '13096', '3274', '6', '-1', '-1', '44',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '7', '3', '3',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '31', '0', '0', '0',
 '0', '0', '0', '14521', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '25', '0', '0', '0', '0', '4', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60591', '4', '3', 'Hallister\'s Cuffs', '', '28596', '2', '0', '1', '18752', '4688', '9', '-1', '-1', '44',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '7', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '109', '0', '0', '0',
 '0', '0', '0', '9141', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '5', '0', '0', '0', '35', '0', '0', '0', '0', '4', '0', '0', '0',
 '0', '1', NULL);

REPLACE INTO creature_loot_template VALUES
(4681, 60589, -10, 1, 1, 1, 0),
(4676, 60589, -9, 1, 1, 1, 0),
(4677, 60589, -11, 0, 1, 1, 0),
(4679, 60589, -11, 0, 1, 1, 0),
(4668, 60589, -9, 0, 1, 1, 0),
(4680, 60589, -13, 0, 1, 1, 0),
(4684, 60589, -13, 0, 1, 1, 0),
(4685, 60589, -13, 0, 1, 1, 0);

-- Juicy Darkfang Legs!
delete from quest_template where entry = 40408;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40408,2,15,38,33,512,0,'Juicy Darkfang Legs!','Say, since you stopped by how about we have ourselves a nice meal, it\'s been a bit since I\'ve been able to enjoy my special recipe! I damn near hunted all the Darkfang in the area, so you\'ll have to venture further out into the swamp to go and get me some of their juicy legs!\n\nFive should do, the Darkfang spiders are practically everywhere in the swamp, but especially so around the Quagmire down in the south west.\n\nOh, and make sure they\'re extra juicy, I won\'t take no dang-nabbit unjuicy spider legs now, yahear?','Gather 5 Extra Juicy Darkfang Legs for "Swamp Eye" Jarl at Swamplight Manor in Dustwallow Marsh.','Ye wrangle up them spider legs? Remember to get the extra juicy ones.','Why look at this here, you out done yourself, truly! I haven\'t seen some dang-nab spider legs this juicy in a few years now, they\'ve been getting extra fat down there!\n\nNow we can have a real good meal!',60592,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2500,108,150,0,0,0,0,0,0,0,0,0,60593,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (4792, 40408);
replace into creature_involvedrelation (id, quest) values (4792, 40408);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60592,5825,'Extra Juicy Darkfang Leg',12,1,2048,1,-1,-1,1,5,-1,-1,-1,-1,4,'',0);

replace into item_template values
 ('60593', '0', '0', 'Jarl\'s Juicy Jumbly', 'The smell is surprisingly good.', '5825', '1', '0', '1', '436', '109', '0', '-1', '-1', '0',
 '35', '0', '0', '0', '0', '0', '0', '0', '0', '20', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '18230', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0',
 '0', '1', NULL);

REPLACE INTO creature_loot_template VALUES
(4411, 60592, -50, 0, 1, 1, 0),
(4412, 60592, -55, 0, 1, 1, 0),
(4413, 60592, -50, 0, 1, 1, 0),
(4414, 60592, -70, 0, 1, 1, 0),
(4415, 60592, -100, 0, 1, 1, 0);