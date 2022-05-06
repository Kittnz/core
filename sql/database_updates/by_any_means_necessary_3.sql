-- By Any Means Necessary III
delete from quest_template where entry = 40399;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40398,40399,2,361,53,47,0,0,'By Any Means Necessary III','If we truly wish to recover Felwood from the state it lies in now, then more must always be done. I have been fighting the corruption near endlessly and with seemingly no progress.\n\nI desire an artifact that was stolen from me many months ago. I came within contact with an orc name Ulathek who kept his intentions hidden from me. As much as he utilized shadow powers, he seemed well versed, and willing to assist myself.\n\nHe stole from me a gemstone, one of great power, I want it back to utilize its powers for the greater good of this region. This orc now lingers amongst the cultists, and demons of Jaedenar within Shadowhold, the Barrowden they have corrupted.\n\nKill him, and find the Gemstone of Salthax in that accursed place.','Venture deep within the Shadowhold in Jaedenar, slay Ulathek, and return the Gemstone of Salthax to Niremius Darkwind in Felwood.','Have you removed this deceitful orc from the world, have you recovered my Gemstone?','<A smirk would creep across Niremius\' face, he would glance upward, and nod his head.>\n\nAfter many long years, I have recovered this, and you have retrieved it for me, I thank you greatly.',60534,1,0,0,0,0,0,0,14523,1,0,0,0,0,0,0,0,0,0,5950,69,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60710, 40399);
replace into creature_involvedrelation (id, quest) values (60710, 40399);

update quest_template set type = 1 where entry = 40399;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60534,4005,'Gemstone of Salthax',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

REPLACE INTO gameobject_template VALUES
(2010885, 3, 23435, 'Demonic Chest', 0, 4, 1, 43, 2010885, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

delete from gameobject_loot_template where entry = 2010885;
replace into gameobject_loot_template values
(2010885,60534,-100,0,1,1,0);