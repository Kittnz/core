-- Reserved.
-- quest_template			40000-41000
-- creature_template		60300-61000
-- gameobject_template		2010700-2011000
-- item_template			60000-61000
-- gossip_menu				41000-43000
-- creature_equip_template	20000-21000
-- broadcast_text			30000-31000
-- creature_ai_events		2200000-2201000
-- creature_ai_scripts		2200000-2201000

-- Spiritual Guidance --
delete from quest_template where entry = 40343;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40343,2,1637,40,40,0,0,'Spiritual Guidance','Can you feel it, your destiny is calling you young one, the spirits themselves whisper your name. You have been called upon by Beram Skychaser in Thunder Bluff to go on a ritual of our kind.\n\nYou can find him in the Spirit Rise at the northeastern edge of the bluffs, go there, and find him.','Travel to Thunder Bluff and speak with Beram Skychaser.','Yes?','I am happy to see that my messages have been received from Orgrimmar, welcome to Spirit Rise, it is time for you to undergo an age old tradition.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,250,81,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (13417, 40343);
replace into creature_involvedrelation (id, quest) values (3032, 40343);

update quest_template set requiredclasses = 64 where entry = 40343;
update quest_template set requiredraces = 32 where entry = 40343;

-- The Way of Spiritwalking I --
delete from quest_template where entry = 40344;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40344,2,1638,40,40,0,0,'The Way of Spiritwalking I','Long as it been that we tauren shaman have upheld our ancient traditions. Spiritwalking is apart of our culture and around longer then you could even imagine young one. It is how we connect with those of the after life in the arms of the Earthmother.\n\nIf you wish to begin on this path, then special regeants will be required for you to first make your connection with the spirit world.\n\nTo the southwest is a land called Feralas, at Camp Mojache you will find Sage Palerunner, speak with him, and tell him I was the one who sent you.','Travel to Camp Mojache and speak with Sage Palerunner.','Yes?','So, you have been sent here by Beram Skychaser you say. You must be another who is looking to learn the ways of old, come, sit around, there is much to learn.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,250,81,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (3032, 40344);
replace into creature_involvedrelation (id, quest) values (5390, 40344);

update quest_template set requiredclasses = 64 where entry = 40344;
update quest_template set requiredraces = 32 where entry = 40344;

