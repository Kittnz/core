-- Of New and Old II
delete from quest_template where entry = 40502;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40501,40502,2,46,52,45,0,0,'Of New and Old II','Another wishes to join the Horde, so be it.\n\nI do hold concerns with those from the Blackrock Clan, for their evil runs deep, corrupted to the core. We have dealt with Old Horde refugees in the past but not an entire group looking to join us.\n\nEitrigg was once apart of the Blackrock Clan, and perhaps knows more about this \'Karfang\'. Speak with him, and figure out what he knows.','Speak with Eitrigg to find out info about Karfang for Thrall in Orgrimmar.','Yes?','Hmm, Karfang you say?',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,500,76,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

delete from creature_questrelation where quest = 40502;
delete from creature_involvedrelation where quest = 40502;
replace into creature_questrelation (id, quest) values (4949, 40502);
replace into creature_involvedrelation (id, quest) values (3144, 40502);

delete  from creature_template where entry = 60377;
update creature_template set script_name = '' where entry = 3144;

delete from gossip_menu where entry = 41175;
delete from npc_text where ID = 30028;
delete from broadcast_text where entry = 30028;

-- Of New and Old III
delete from quest_template where entry = 40503;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40502,40503,2,46,52,45,0,0,'Of New and Old III','I haven\'t heard that name in some time, though I certainly remember it.\n\nKarfang fought with the Blackrock Clan during our invasion of Azeroth, and rose through the ranks quickly. From my knowledge, he was a strong warrior, though not as blood thirsty as others.\n\nThe Karfang I remember was smart enough to deny suicidal orders, or challenge leadership when required, I am not surprised he has lasted this long.\n\nKarfang can be trusted, he is certainly wise enough to see the doom of the Old Horde before him.\n\nThrall gives approval on my word take the Warchief\'s Response to Karfang Hold, we will see if he can prove his loyalties.','Bring the Warchief\'s Response to Karfang at Karfang Hold in Burning Steppes.','Yes?','<Karfang looks out at the Warchief\'s Response, beginning to read with caution.>\n\nSo it appears the Warchief is asking us for a test of loyalty, he shall receive his demands.',60733,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60733,1,0,1000,76,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

delete from creature_questrelation where quest = 40503;
delete from creature_involvedrelation where quest = 40503;
replace into creature_questrelation (id, quest) values (3144, 40503);
replace into creature_involvedrelation (id, quest) values (60770, 40503);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60733,7694,'Warchief\'s Response',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',50545);

REPLACE INTO `page_text` (`entry`, `text`, `next_page`) VALUES (50545, 'To Warleader Karfang.\n\nI have read your letter, and have listened.\n\nThe Horde is not stranger to hardships, and adversity. All of us have had to struggle and make hard decisions as you have. We are a band of equals who share values of wisdom and honor to the wartorn and battered of this world.\n\nIf you truly wish to prove your loyalties to me as Warchief then I require something from you.\n\nThe Twilight Hammer have begun to show themselves in your region, they are a threat to this world. Remove them for me, and I will know your word is true.\n\n THRALL, WARCHIEF OF THE HORDE.', 0);
-- rename item Axe of Falgosh (60719) to Axe of Fargosh.
update item_template set name = 'Axe of Fargosh' where entry = 60719;
-- Add the following item as a loot reward for the quest 'Forest Troll Scum' (entry 40495) , it must be hidden until completion
replace into item_template values
 ('60715', '4', '0', 'Taskmaster Whip', '', '10301', '2', '0', '1', '48824', '12206', '12', '-1', '-1', '63',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '8815', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '0', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);
-- QUEST 'Removing Vital Assets' (entry 40500), change completion text to the following.
update quest_template set offerrewardtext = 'So, you\'ve done as I asked. Let\'s see what\'s in those documents.\n\n<Molk takes the documents from you, and stares intently for a few seconds.>\n\nWell, this will surely put a hamper on their plans, the information here must have taken them a while to acquire, and without it they have no leads.\n\nYou are more useful then you look, whelpling.\n\nTake this gold, as a thank you from myself.' where entry = 40500;
-- Add the following rewards to the quest 'Fueling the Blood Fury' (entry 40493), CHOICE BETWEEN 2.
replace into item_template values
 ('60742', '4', '1', 'Darkseer Acolyte Robe', '', '15232', '2', '0', '1', '61220', '15305', '5', '-1', '-1', '61',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '6', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '78', '0', '0', '0',
 '0', '10', '0', '9325', '1', '0', '0', '-1', '0', '-1', '9295', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('60743', '2', '15', 'Demonblood Dirk', '', '20414', '2', '0', '1', '184756', '46189', '21', '-1', '-1', '61',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '4', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1700', '0',
 '0', '51', '73', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '5', '0', '7689', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '3', '0', '0', '0', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);
update quest_template set rewchoiceitemid1 = 60742, rewchoiceitemcount1 = 1, rewchoiceitemid2 = 60743, rewchoiceitemcount2 = 1 where entry = 40493;
-- Quest Scrap Forager (entry 40491), change main description to the following.
update quest_template set details = 'Greetings stranger, it seems some new recruits from this new Horde are arriving at last.\n\nI\'ll keep this short, we\'re not doing so well here. It\'s like everything is being held together by worg spit, and the lack of resources certainly doesn\'t help. I\'ll say it\'s about time we fixed that.\n\nDark Iron tends to be quite scarce in the surface of the steppes, though it is carried by many. Whether it be baubles, equipment, or sitting in a creature stomach.\n\nVenture out and collect me a sizeable amount of scraps so I can keep forging equipment for our grunts to keep Karfang Hold safe.' where entry = 40491;
-- Prismatic Crystal.
update item_template set required_reputation_faction = 61, required_reputation_rank = 5, quality = 3, spellcooldown_1 = 3600000 where entry = 80805;