-- Reserved.
-- quest_template			40000-40200
-- creature_template		60300-60500
-- gameobject_template		2010700-2010900
-- item_template			60000-60200

-- In Need of Assistance --
delete from quest_template where entry = 40080;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40080,2,130,15,14,0,0,'In Need of Assistance','Ah, you are just who I need. A few days ago, Duchess Grelda of the Tirisfal Uplands asked for assistance. I already sent a detachment of my warriors, but another letter came today asking for further help.\n\nOur forces in Silverpine are already stretched thin as it is, which is why I need someone with your set of skills to head there and see what you can do to assist them.\n\nThe path to Tirisfal Uplands is just north of The Dead Field, the Duchess herself is hold up there at her manor along the road. You can\'t miss it.','Talk to the Duchess Grelda at the manor along the road to Western Tirisfal.','And who might you be?','So Hadrec refuses to send more troops, but, instead he sends you? The audacity.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,125,68,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (1952, 40080);
replace into creature_involvedrelation (id, quest) values (91711, 40080);

-- Dire Situation --
delete from quest_template where entry = 40081;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40080,40081,2,130,15,14,0,0,'Dire Situation','Well, since you are already here, I might as well put your skills to the test. You see, my dear sister claimed the title of the rightful heiress of the Tirisfal Uplands when I became "this." As if she was not enough, now we have to deal with these wretched Worgen who invaded from Silverpine.\n\nSo what you will do is head further north, past the gate to my realm and seek Apothecary Volgrin. He went there to try and deal with the Worgen, but, as you can guess, he was not very successful as we are still stranded here.','Follow the path farther north and talk to the Apothecary Volgrin.','Please don\'t tell me that you need something from me too.','Ah, so you are here to help me. I guess that pompous Grelda finally decided to listen to me and send some actual help to deal with Worgen.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,125,68,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (91711, 40081);
replace into creature_involvedrelation (id, quest) values (91713, 40081);

-- Crumblepoint Tower --
delete from quest_template where entry = 40082;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40081,40082,2,85,15,14,0,0,'Crumblepoint Tower','I have no idea how they managed to slip past our forces in the Silverpine, but these Worgen came in great numbers. If we are to have any chance of securing Tirisfal Uplands for the Forsaken, we first need to get rid of them, which is why we have to reclaim the Crumblepoint Tower above us. It is a strategically important point as it will allow us to monitor further actions from both north and south.\n\n<Volgrin sizes you up from the top down>.\n\nYou didn\'t run, well consider me impressed. Good, then head above and kill those flea-ridden wretches.','Head to the Crumblepoint Tower and kill 6 Tirisclaw Ravagers and 4 Tirislcaw Shadowcasters.','Back so soon?','You actually did it? Well... I was honestly not expecting you to return. I wish you arrived a few days earlier we might have avoided this whole situation, to begin with.',0,0,0,0,0,0,0,0,91740,6,91741,4,0,0,0,0,0,0,700,980,68,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (91713, 40082);
replace into creature_involvedrelation (id, quest) values (91713, 40082);

-- Head of The Pack --
delete from quest_template where entry = 40083;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40082,40083,2,85,15,14,0,0,'Head of The Pack','With their forces at the tower weakened, it is time for us to kill their leader. Yes, when I say us, I mean you. Their leader invaded the mine recently, and he has taken his bigger worgen down there with him. The Gracestone mine is a top priority. Without its resources, Glenshire doesn\'t stand a chance against the Humans, not to mention that the mines provide a perfect ambush point for worgens to attack any travelers between Silverpine and the Uplands.\n\nGo down there and bring me the head of their leader. Oh, and feel free to kill as many of his followers as you can.','Apothecary Volgrin has asked you to bring him the head of the Pack Leader Sharn and kill 5 Tirisclaw Ambushers and 4 Tirisclaw Scavengers.','How goes the attack?','Oh, I can smell the blood coming from your bag. Is that the head of the mongrel? Good, very good. If you keep going likes this, you might even earn the Duchess\'s favor.',60172,1,0,0,0,0,0,0,91760,5,91739,4,0,0,0,0,0,0,1000,1250,68,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (91713, 40083);
replace into creature_involvedrelation (id, quest) values (91713, 40083);

delete from item_template where entry = 60172;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values (60172,36431,'Sharn\'s Head',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'Severed Head of the Pack Leader Sharn',0);

delete from creature_loot_template where entry = 1923 and item = 60172;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (1923,60172,-100,1,1,0,10);

-- Worthy Ally --
delete from quest_template where entry = 40083;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40083,40084,2,85,16,15,0,0,'Worthy Ally','With the bulk of their forces gone, me and my Deathguards will be more than enough to get rid of any strugglers. As for you, my friend, I think you should have the honor of relaying the news of what transpired here to Duchess. No doubt that she will have more for you to do after learning of your capabilities.\n\nI rarely say this, but it has been a pleasure working with you.','Return to the Duchess Grelda and inform her about the events at Tower and the Mines.','What now?','Well, well. When I first sent you to Volgrin, I did it just so you would stop pestering me. However, it appears that Hadrec provided a worthy ally.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,290,68,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (91713, 40084);
replace into creature_involvedrelation (id, quest) values (91711, 40084);

-- Into The Uplands --
delete from quest_template where entry = 40085;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40084,40085,2,130,16,15,0,0,'Into The Uplands','You certainly know how to impress a lady. With those pests gone, we can focus on the more pressing matters. I need you to bring supplies and this letter to my husband, Nargelas, at Glenshire. He is currently leading a campaign to reclaim the Tirisfal Uplands to its rightful ruler and the Forsaken, of course.','Find Duke Nargelas at Glenshire and deliver supplies and the letter to him.','What\'s this, a letter for me?','So you single-handedly reclaimed both the tower and the mine? While I believe Grelda, you can imagine that your situation raises quite a number of questions.',60173,1,60174,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,290,68,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (91711, 40085);
replace into creature_involvedrelation (id, quest) values (91712, 40085);

delete from item_template where entry = 60173;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values (60173,60860,'Forsaken Supplies',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'A heavy box of supplies from Undercity',0);

delete from item_template where entry = 60174;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values (60174,5567,'Grelda\'s Letter',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'A sealed letter addressed to Nargelas',0);

update creature_template set script_name = 'npc_grelda' where entry = 91711;

-- Outnumbered --
delete from quest_template where entry = 40086;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40085,40086,2,85,16,15,0,0,'Outnumbered','Here is deal, while the supplies you brought us certainly help. It does not change the fact that the living currently outnumbers us 7 to 1. The good thing is that they are not aware of that yet, and I would appreciate it if they are kept in the dark for a bit longer.\n\nAnd that is where you come in. I got information that scouts of the Lordaeron Remnants are already on their way here, and you are going to make sure that they never return to their masters.','Duke Nargelas wants you to kill 8 Remnants Scouts In The Whispering Forest north of Glenshire.','Is it done?','Well done. With those scouts gone, they will think twice before sending an attack force on Glenshire.',0,0,0,0,0,0,0,0,91773,8,0,0,0,0,0,0,0,0,800,1150,68,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (91712, 40086);
replace into creature_involvedrelation (id, quest) values (91712, 40086);

-- In The Dark --
delete from quest_template where entry = 40087;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40086,40087,2,85,16,15,0,0,'In The Dark','With their scouts gone, we can finally go on the offensive.  But before we can do anything grand, like cutting their supply lines, we need to reduce their ability to monitor our movement.\n\nJust north of The Whispering Woods, there is a tower called Shatteridge. Remnant\'s Sentries have made that tower their center of operation and are there to warn their main base of any potential danger. Their numbers at the tower are great, which is precisely why they won\'t expect a single yet powerful foe to attack them directly. So are you up to the task?','Duke Nargelas wants you to kill 10 Remnants Sentry at the Shateridge Tower.','Tell me, how goes the attack?','Ah, my greatest asset returns, successful no less. With Sentries gone, we will have a much easier time dealing with the miserable Humans.',0,0,0,0,0,0,0,0,91772,10,0,0,0,0,0,0,0,0,900,1150,68,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (91712, 40087);
replace into creature_involvedrelation (id, quest) values (91712, 40087);

-- Cutting Them Off --
delete from quest_template where entry = 40088;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40087,40088,2,85,17,15,0,0,'Cutting Them Off','While you were gone, I sent a few of our scouts to investigate supply lines for the Humans main base. It appears that most of their supplies come from the eastern road. This indicates that they are most likely getting their food from the Garrick Stead.\n\nI need you to go there and kill their Farmers and those guarding them. Also, we found out that the man in charge of supplies is called Bill. While killing his man will suffice, I want Bill\'s head so that I can send a message to my dear sister in law.','I have been tasked by Duke to kill 10 Remnants Farmers, 6 Remnants Militia and bring Head of the Foreman Bill.','Back already?','Yeees... a fine trophy. With their supplies cut off, It is just a matter of time before they start to panic.',60175,1,0,0,0,0,0,0,91980,10,91981,7,0,0,0,0,0,0,1200,1500,68,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (91712, 40088);
replace into creature_involvedrelation (id, quest) values (91712, 40088);

delete from item_template where entry = 60175;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values (60175,2945,'Foreman Bill\'s Head',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'A severed human head',0);

delete from creature_loot_template where entry = 2503 and item = 60175;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (2503,60175,-100,1,1,0,10);

-- Uncanny Allies --
delete from quest_template where entry = 40096;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40088,40096,2,85,18,15,0,0,'Uncanny Allies','There you are! Hitting their supply lines might have destabilized Humans for a time, but if we don\'t capitalize on this victory, it\'s just a matter of time before they retaliate.\n\nAlone, we cannot win against them, but what we can do is force the local Gnolls into the war with them. However, as you can imagine, they are not so fond of us either.\n\nThat\'s why we need to get rid of their leaders first before trying to deceive those small-minded creatures. You can find those mongrels northwest of Glenshire. Head there and kill their Shaman and those who are protecting him.','Duke Nargelas wants me to kill Gnoll\'s Shaman and his protectors.','Is the Shaman dead?','A job well done indeed. Without their Shaman, the Gnolls will have no one to guide them in their spiritual ways. Now we can proceed to the next part of the plan.',0,0,0,0,0,0,0,0,91735,10,91738,8,91717,1,0,0,0,0,1500,1800,68,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (91712, 40096);
replace into creature_involvedrelation (id, quest) values (91712, 40096);