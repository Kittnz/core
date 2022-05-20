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

-- The Way of Spiritwalking V --
delete from quest_template where entry = 40348;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1,objectivetext2,objectivetext3) values (40347,40348,2,1638,40,40,512,0,'The Way of Spiritwalking V','We have been watching you for a long time, from the plains of Mulgore we gazed down upon your vigor and tenacity. You have improved much since those days long ago, and now, here you are, before me.\n\nIf you truly wish to be a Spiritwalker and learn our ways, then you must learn a lesson from the each of us. We can help guide you in the right direction, all you need to do is listen.\n\nSpeak with all three of us, and when you have heard our words, return to me.','Speak with the three Ancestors at Spirit Rise.','Have you spoken with everyone?','Do you understand the burdens of a Spiritwalker? It is to understand the lessons of the past, and to live in harmony with the spirit world. To pass this information on to those in the mortal realm, and to make sure these values never fade.\n\nYou have impressed us $N, you have done much for this world, and for the good of others and for that we are greatful.',0,0,0,0,0,0,0,0,60349,1,60350,1,60351,1,0,0,0,0,0,3850,81,450,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Speak to the Ancestor of Wisdom','Speak to the Ancestor of Virtue','Speak to the Ancestor of Humility');

replace into creature_questrelation (id, quest) values (60636, 40348);
replace into creature_involvedrelation (id, quest) values (60636, 40348);

update quest_template set requiredclasses = 64 where entry = 40348;
update quest_template set requiredraces = 32 where entry = 40348;

update quest_template set rewspellcast = 45500 where entry = 40348;

update creature_template set script_name = 'npc_ancestor_of_wisdom' where entry = 60636;
update creature_template set script_name = 'npc_ancestor_of_virtue' where entry = 60637;
update creature_template set script_name = 'npc_ancestor_of_humility' where entry = 60638;

delete from creature_template where entry = 60349;
replace into creature_template (entry, name, display_id1) values (60349, 'quest_40348_dummy_triger', 328);

delete from creature_template where entry = 60350;
replace into creature_template (entry, name, display_id1) values (60350, 'quest_40348_dummy_triger', 328);

delete from creature_template where entry = 60351;
replace into creature_template (entry, name, display_id1) values (60351, 'quest_40348_dummy_triger', 328);

set @gossip_menu_id = 41076; set @magic_number = 30012;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'To be wise is to have knowledge, to heed the advice of those who have seen, and know more than yourself. If you wish to truly advance in this world, you must reach out into areas of discomfort, and of which you have no experience. Grow, and experience new things, and seek new knowledge. In time, you will gain wisdom in many things young one.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41077; set @magic_number = 30013;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'To be virtuous is to be a just, and good person, the villages of our kind were built on the actions of the good hearted. In your travels there will be many decisions to make, and always you must look out for the good outcome of all, and not just yourself. To make a sacrifice for the good of your kin is to live with virtue, remember this always and do what is right.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41078; set @magic_number = 30014;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'To live with humility is to live with modesty, to never take more than what is neccesary, and to save everything with care for the future. Free yourself from pride, and arrogance, for they only get in the way of true progress. Do for those that cannot, and give what excess you have, to those that may be in need, be a pillar of the community, there may come dark days, when people need someone to look up to for support, let it be you, young one.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

-- The Way Of The Witch Doctor I --
delete from quest_template where entry = 40349;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40349,2,1637,40,40,0,0,'The Way Of The Witch Doctor I','Ahh, yes, it would appear that you have gained much power, and word of your name has travelled to my ear. Perhaps it is time for your next step, troll, to learn the ways of our kind. We trolls have had a unique way with nature for a long time, one that these orc or tauren cannot understand.\n\nIt be the way of the witch doctor, and to learn, you must speak with one of our kind. Seek out Bom\'bay at the Sen\'jin Village, he\'ll teach you good.','Travel to Sen\'jin Village and speak with Bom\'bay.','Yes?','Ahh, you be a new one, I can feel it within your spirit mon. Let us not waste time.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,250,530,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (3403, 40349);
replace into creature_involvedrelation (id, quest) values (10578, 40349);

update creature_template set npc_flags = 3 where entry = 10578;

update quest_template set requiredclasses = 64 where entry = 40349;
update quest_template set requiredraces = 128 where entry = 40349;

-- The Way Of The Witch Doctor II --
delete from quest_template where entry = 40350;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40349,40350,2,1637,40,40,0,0,'The Way Of The Witch Doctor II','You wish to learn da ways of the Witch Doctor huh? We troll shamans be masters of the voodoo, and perhaps you can learn my ways. First, I need you to get your hands on some Skullsplitter Mojo for me. I will be usin\' it in ma ritual to bestow power upon ye. That, and well, let\'s say I don\'t exactly like them Skullsplitters.\n\nThey can be found deep in the jungles of Stranglethorn, by ruins in the eastern parts of the region. Go there, and get me 20 of them, that should do, just nicely.','Travel to Stranglethorn Vale and bring 20 Skullsplitter Mojo to Bom\'bay.','You be gettin that mojo mon?','Such fine samples, yes... This shall do nicely!',60508,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3550,530,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (10578, 40350);
replace into creature_involvedrelation (id, quest) values (10578, 40350);

update quest_template set requiredclasses = 64 where entry = 40350;
update quest_template set requiredraces = 128 where entry = 40350;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60508,1275,'Skullsplitter Mojo',12,1,2048,1,-1,-1,1,20,-1,-1,-1,-1,4,'',0);

delete from creature_loot_template where item = 60508;
replace into creature_loot_template values
(667,60508,-75,1,1,1,0),
(780,60508,-75,1,1,1,0),
(696,60508,-75,1,1,1,0),
(782,60508,-80,1,1,1,0),
(672,60508,-100,1,1,1,0),
(781,60508,-100,1,1,1,0),
(783,60508,-100,1,1,1,0),
(669,60508,-80,1,1,1,0);

-- The Way Of The Witch Doctor III --
delete from quest_template where entry = 40351;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40350,40351,2,1637,40,40,0,0,'The Way Of The Witch Doctor III','With the samples you have provided I will begun to conjure a special serum, this serum will be needed for your next task. So please, give me some time to prepare it, for one mess up, be the end of ya!','Wait for Bom\'bay to finish creating the serum.','Yes Mon?','Heh, it took quite a lot of concentration, but here we are mon!',0,0,0,0,0,0,0,0,60352,1,0,0,0,0,0,0,0,0,0,350,530,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'The serum has been created');

replace into creature_questrelation (id, quest) values (10578, 40351);
replace into creature_involvedrelation (id, quest) values (10578, 40351);

update quest_template set requiredclasses = 64 where entry = 40351;
update quest_template set requiredraces = 128 where entry = 40351;

update creature_template set script_name = 'npc_bombay' where entry = 10578;

delete from creature_template where entry = 60352;
replace into creature_template (entry, name, display_id1) values (60352, 'quest_40351_dummy_triger', 328);

-- The Way Of The Witch Doctor IV --
delete from quest_template where entry = 40352;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40351,40352,2,1637,40,40,0,0,'The Way Of The Witch Doctor IV','With this serum you may speak with the spirit of the toad, he is a patient, and incredibly wise one. We trolls have been hexin\' our enemies for quite some time, and it is about time for you to pay respects.\n\nN\'ribbi is the one you seek, and he can be found deep in Dustwallow Marsh, far to the north west, at the very edge of the Bluefen. Go there, and speak with him, bring this serum, and offer it to N\'ribbi as tribute.','Travel to Dustwallow Marsh and find N\'ribbi, and offer him Bom\'bay\'s Serum.','<N\'ribbi stares at you>.','So, that is why you are here, you seek my wisdom, and my knowledge as your ancestors before you have, very well.',0,0,0,0,0,0,0,0,60353,1,0,0,0,0,0,0,60509,1,0,1650,530,200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Speak with N\'ribbi');

replace into creature_questrelation (id, quest) values (10578, 40352);
replace into creature_involvedrelation (id, quest) values (60631, 40352);

update quest_template set requiredclasses = 64 where entry = 40352;
update quest_template set requiredraces = 128 where entry = 40352;

update creature_template set script_name = 'npc_nribbi' where entry = 60631;

delete from creature_template where entry = 60353;
replace into creature_template (entry, name, display_id1) values (60353, 'quest_40352_dummy_triger', 328);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60509,1275,'Bom\'bay\'s Serum',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

-- The Way Of The Witch Doctor V --
delete from quest_template where entry = 40353;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40352,40353,2,1637,40,40,0,0,'The Way Of The Witch Doctor V','The power of the witch doctor is derived from the spirits of azeroth, the loa. It is us who look after the smaller of our kind, and channel our energies into those who follow us. If you so wish to prove yourself to N\'ribbi, you must show me your courage and ability with magic.\n\nLong has it been that a massive crocolisk named Clampjaw has terrorized the toads of Dustwallow. I do not have the power to challenge him directly, but perhaps with your powers, you can.\n\nI want you to find Clampjaw in the Quagmire, and slay him for all of my kin. Do this, and I will bless you with my power young one.','Slay the mighty crocolisk Clampjaw for N\'ribbi in Dustwallow Marsh.','<N\'ribbi stares at you>.','You have done it, I am impressed. You are worthy of my power, and I bestow upon you the energies that many of your ancestors have used.\n\nMay your travels be plentiful, there is a future ahead of you shaman.',0,0,0,0,0,0,0,0,60632,1,0,0,0,0,0,0,0,0,0,3650,530,200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60631, 40353);
replace into creature_involvedrelation (id, quest) values (60631, 40353);

update quest_template set requiredclasses = 64 where entry = 40353;
update quest_template set requiredraces = 128 where entry = 40353;

update quest_template set rewspellcast = 45504 where entry = 40353;

REPLACE INTO creature_template VALUES
(60639, 901, 0, 0, 0, 'Toad', '', 0, 1, 1, 8, 8, 0, 0, 20, 188, 0, 1, 0.857143, 0, 18, 5, 0, 0, 0, 2, 2, 0, 44, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2, 0, ''),
(60640, 901, 0, 0, 0, 'Toad', '', 0, 1, 1, 8, 8, 0, 0, 20, 188, 0, 1, 0.857143, 0, 18, 5, 0, 0, 0, 2, 2, 0, 44, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2, 0, ''),
(60641, 901, 0, 0, 0, 'Toad', '', 0, 1, 1, 8, 8, 0, 0, 20, 188, 0, 1, 0.857143, 0, 18, 5, 0, 0, 0, 2, 2, 0, 44, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2, 0, '');

update creature set id = 60639 where guid = 2569110;
update creature set id = 60640 where guid = 2569099;
update creature set id = 60641 where guid = 2569109;