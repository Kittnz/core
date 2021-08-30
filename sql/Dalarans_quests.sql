-- Reserved.
-- quest_template			40000-40200
-- creature_template		60300-60500
-- gameobject_template		2010700-2010900
-- item_template			60000-60200

delete from quest_template where entry = 40122;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (0,40122,2,16,52,40,0,0,'The Azshara Dampening','I recieved word from a colleague within Azshara quite some time ago about a powerful energy that is dampening magic within the region. If such a threat could pose itself close to Dalaran then much of our spells, magic, and protections would be nullified.\n\nI would like you to travel there, assess if this will be a threat to Dalaran itself, and to see if action is needed to be done. You can find Magus Bromley located just south of the Ruins of Eldarath camped upon the ridgeline, seek him out, and get answers.','Head to Magus Bromley in Azshara.','Hello $r, it is good to see a friendly face in such a worn landscape.','Ahh, so Ansirem sent you, good, I forwarded a letter to him quite a while ago and it seems that this magical interference has grown ever more potent.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2175,61,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (2543, 40122);
replace into creature_involvedrelation (id, quest) values (91350, 40122);

