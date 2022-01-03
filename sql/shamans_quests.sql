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

-- The Way of Spiritwalking II --
delete from quest_template where entry = 40345;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40344,40345,2,1638,40,40,0,0,'The Way of Spiritwalking II','The path of the spiritwalker is one of devotion to the ancestors, to keep in communication with the spirits of old. We are to respect them, and pay our tributes when we can, through this we are able to hone a power of the supernatural world.\n\nFrom the ravenous Centaur, to the vile Quilboar, even they practice elements of shamanism linking to their ancestry. It is almost entwined with Kalimdor itself, in a way.\n\nTo get you aquainted with the powers of the spirit world we will need you to gather an age-old leaf that grows in the area. Believe it or not there was a time when it was common place amongst Stonetalon and the oasis of the Barrens, but no longer.\n\nOut in the forests of Feralas grows a potent plant called Spiritleaf. It is quite rare but can be seen glittering in the air, and is needed for ones spiritual awakening.','Find and collect a Spiritleaf for Sage Palerunner in Camp Mojache.','You must be dedicated in your path if you wish to learn the ways of the spiritwalker.','A dedicated mind, it takes true perseverance to find such a rare plant, you have done well.',60507,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3350,81,350,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (5390, 40345);
replace into creature_involvedrelation (id, quest) values (5390, 40345);

update quest_template set requiredclasses = 64 where entry = 40345;
update quest_template set requiredraces = 32 where entry = 40345;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60507,24692,'Spiritleaf',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

delete from gameobject_template where entry = 2010869;
replace into gameobject_template values
(2010869,3,28257,'Spiritleaf',0,4,1,43,2010869,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

delete from gameobject_loot_template where entry = 2010869;
replace into gameobject_loot_template values
(2010869,60507,-100,0,1,1,0);

-- The Way of Spiritwalking III --
delete from quest_template where entry = 40346;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40345,40346,2,1638,40,40,0,0,'The Way of Spiritwalking III','Now that you have collected the Spiritleaf we can begin the ceremony, I have prepared everything that was needed while you were searching.\n\nI will begin to communicate with the spirits in order to send you on your spirit quest. As I channel my energy upon the leaf, it will flow throw your body, and you will gain its magical properties. Inhale deeply, and let it flow through your form uninhibited.\n\nWhen you are ready to begin, I will channel my magic into the Spiritleaf.','Wait for Sage Palerunner to finish the ceremony.','Yes?','It is done, the spirits have communicated with me.',0,0,0,0,0,0,0,0,60348,1,0,0,0,0,0,0,0,0,0,350,81,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'The ceremony finished.');

replace into creature_questrelation (id, quest) values (5390, 40346);
replace into creature_involvedrelation (id, quest) values (5390, 40346);

update quest_template set requiredclasses = 64 where entry = 40346;
update quest_template set requiredraces = 32 where entry = 40346;

update creature_template set script_name = 'npc_sage_palerunner' where entry = 5390;

delete from creature_template where entry = 60348;
replace into creature_template (entry, name, display_id1) values (60348, 'quest_40346_dummy_triger', 328);

REPLACE INTO creature_template VALUES
(60636, 3814, 0, 0, 0, 'Ancestor of Wisdom', '', 1404, 40, 40, 1752, 1752, 0, 0, 1890, 104, 3, 1, 1.14286, 0, 18, 5, 0, 0, 1, 61, 78, 0, 156, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 56.672, 77.924, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 40346, ''),
(60637, 6550, 0, 0, 0, 'Ancestor of Virtue', '', 1404, 40, 40, 1752, 1752, 0, 0, 1890, 104, 3, 1, 1.14286, 0, 18, 5, 0, 0, 1, 61, 78, 0, 156, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 56.672, 77.924, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 40346, ''),
(60638, 3895, 0, 0, 0, 'Ancestor of Humility', '', 1404, 40, 40, 1752, 1752, 0, 0, 1890, 104, 3, 1, 1.14286, 0, 18, 5, 0, 0, 1, 61, 78, 0, 156, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 56.672, 77.924, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 40346, '');

REPLACE INTO creature_template_addon VALUES
(60636, 0, 0, 0, 0, 0, 0, 9617),
(60637, 0, 0, 0, 0, 0, 0, 9617),
(60638, 0, 0, 0, 0, 0, 0, 9617);

set @gossip_menu_id = 41073; set @magic_number = 60636;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, '<You can feel your ancestors gaze upon you>.'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41074; set @magic_number = 60637;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, '<You can feel your ancestors gaze upon you>.'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41075; set @magic_number = 60638;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, '<You can feel your ancestors gaze upon you>.'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

-- The Way of Spiritwalking IV --
delete from quest_template where entry = 40347;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40346,40347,2,1638,40,40,0,0,'The Way of Spiritwalking IV','It is time to make the journey to meet with your ancestors, they know you more than you may know yourself but do not fear them. They look out for us all in the end, and they desire to see if you are truly ready to take up this mantle.\n\nAt the Spirit Rise in Thunder Bluff, they will be there, speak with the Ancestor of Wisdom, they will bring you through your next step.\n\nAnd lastly, goodluck $N, may the winds be at your back.','Travel to Thunder Bluff, and speak with the Ancestor of Wisdom.','Yes?','I have been expecting you.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,850,81,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (5390, 40347);
replace into creature_involvedrelation (id, quest) values (60636, 40347);

update quest_template set requiredclasses = 64 where entry = 40347;
update quest_template set requiredraces = 32 where entry = 40347;