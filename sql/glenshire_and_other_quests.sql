-- Reserved.
-- quest_template			40000-40200
-- creature_template		60300-60500
-- gameobject_template		2010700-2010900
-- item_template			60000-60200
-- gossip_menu				41000-43000
-- creature_equip_template	20000-21000

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

-- Divide and Conquer --
delete from quest_template where entry = 40097;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext4) values (40096,40097,2,85,19,15,0,0,'Divide and Conquer','With their Shaman dead, it is time for the final part of the plan. You are to return to Gnolls camp and kill their Chief Rnarl as well as those around him. Make it look like there was a large-scale battle, and after you are done plant this in their base.\n\n<The Duke hands you a Lordaeron Banner>.\n\nHopefully, this will be enough to convince those still alive, that the assault on their camp was orchestrated by the Humans and not us.','Duke Nargelas wants me to kill Chief Rnarl and his guards and pin the assault on the Humans by planting their Banner in the Gnoll camp.','Yes?','Hahaha... Good to see you back here in one piece! My scouts tell me that the Gnolls launched an assault on the Human base. Soon we will be able to retake this land to its rightful rulers.',0,0,0,0,0,0,0,0,91736,6,91737,6,91716,1,60323,1,60189,1,1700,1900,68,200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'The Banner of Lordaeron is established');

replace into creature_questrelation (id, quest) values (91712, 40097);
replace into creature_involvedrelation (id, quest) values (91712, 40097);

delete from creature_template where entry = 60323;
replace into creature_template (entry, name, display_id1) values (60323, 'quest_40097_dummy_triger', 328);

delete from item_template where entry = 60189;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values (60189,932,'Lordaeron Banner',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'A Banner used by the Remnants of Lordaeron',0);

delete from gameobject_template where entry = 2010824;
replace into gameobject_template (entry, type, displayid, size, name, flags, script_name) values (2010824, 2, 49, 0.8, 'Pile of Dirt', 32, 'go_pile_of_dirt');

-- Fresh Perspective --
delete from quest_template where entry = 40098;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext4) values (40097,40098,2,85,19,15,0,0,'Fresh Perspective','<As you approach the Duke, you notice that he is reading a missive marked with the Forsaken sigil>.\n\nHow is this possible?! I sent my man to scout the Humans base, and instead of telling me how the damnable Humans are suffering, they informed me that they held a celebration. How on earth are they able to celebrate without their supplies?!\n\n<The Duke suddenly calms himself and turns towards Father Birghtcopf with a troubled look>.\n\nI wished to avoid having to use her, but I guess I have no choice. Listen, northwest of here is a port called Steepcliff. I need you to take this letter and look for the orc named Norga and try your best to get on her good side she is... Ahm can be, a valuable ally.','The Duke wants me to go to Steepcliff Port and hand the letter to the orc named Norga.','What business do you have with me?','Hah! He does not listen to my warnings and now sends you to fix his mistakes. How amusing.',60190,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60190,1,0,340,68,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (91712, 40098);
replace into creature_involvedrelation (id, quest) values (91720, 40098);

delete from item_template where entry = 60190;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values (60190,3018,'Letter for a Friend',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'A letter addressed to Norga branded with the Royal Seal of Tirisfal Uplands',0);

-- The Price --
delete from quest_template where entry = 40099;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext4) values (40098,40099,2,85,19,15,0,0,'The Price','This certainly is an interesting turn of events. I can imagine that Duke didn\'t inform you of how our relationship works. So let me tell you how things work around here. I don\'t care if the Queen of the Forsaken sent you herself. The information which I offer does not come for free.\n\nWith that out the way, let\'s make a deal. Near the northern road to Tirisfal Glades lived a man called Lafford. Long story short, he owns me quite a bit, but apparently, he is gone missing when some ruffians burned his house down.\n\nWhile he maybe is gone, I learned that he has a small buried chest behind his house, so here is the deal, you get me that chest, and in return, I will share with you the information on how the Humans are able to resupply their base while being cut off from the rest of the Alliance.','Norga wants me to find Laffords house and locate his buried treasure.','How goes the treasure hunt?','Would you look at that. Who knew that the drunken stories could prove to be so reliable.',60191,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1000,68,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (91720, 40099);
replace into creature_involvedrelation (id, quest) values (91720, 40099);

delete from item_template where entry = 60191;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values (60191,36510,'Laffords Treasure',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'A Richly Decorated Chest',0);

delete from gameobject_template where entry = 2010825;
replace into gameobject_template values
(2010825, 0, 3, 49, 'Pile of Dirt', 0, 4, 1, 43, 2010825, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

delete from gameobject_loot_template where entry = 2010825;
replace into gameobject_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (2010825,60191,-100,1,1,0,10);

-- Indebted --
delete from quest_template where entry = 40127;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext4) values (40099,40127,2,85,19,15,0,0,'Indebted','Well you certainly know how to get a job done. I promised that I would get you the information that you are looking for so here it is. In the Hills directly east of Garricks Stead, there is a place called Rogue Heights, it used to be a lawless area held by the unorganized band of thieves and murderers.\n\nHowever since not so long ago they appeared to have reformed their organization and have become a formidable force. Not only that but it appears that they have allied themselves with the Remnants of Lordaeron. My sources spoke of a man named Salorn, a former Kirin Tor mage who along with his rogue brethren appears to have taken over the Rogue Heights.\n\nAnd there you go, oh and be kind to remind the Duke that he still owes quite a bit.','I need to return to Duke Nargelas and inform him about the enemy in The Rogue Heights.','So? Tell me, what are the news?','Mages in The Rogue Heights? No wonder I heard nothing from Storn if he lost the leadership of his band of misfits. Anyways, good job on getting this information out of Norga. I envy that you won\'t have to deal with her after all of this is done.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,300,500,68,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (91720, 40127);
replace into creature_involvedrelation (id, quest) values (91712, 40127);

-- An Ancient Aquisition --
delete from quest_template where entry = 40128;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext4) values (0,40128,2,17,18,18,0,0,'An Ancient Aquisition','Greetings, Torble Sparksprocket here, Junior archaeologist of the Explorer\'s League here! A few weeks ago the dig found this strange contraption. It appears to be the torso of an automaton, it is clearly of Titan make but we haven\'t seen anything like it before, that\'s why I was called here.\n\nI quickly realized that it is a modular automaton of some kind. The other parts were found some days later but someone tripped some defense and the dig is now full of Golems. Can you head in there and find the other pieces? You need two arms, two legs, and a head. Look through crates and such.','Gather two Automaton Legs, two Automaton arms, and an Automaton Head from the Bael\'modan Digsite.','Did you find it?','Well done. This contraption will take some time to repair. Do visit sometime in the future and I may have news for you!',60192,2,60193,2,60194,1,0,0,0,0,0,0,0,0,0,0,0,0,3740,1075,47,250,54,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60441, 40128);
replace into creature_involvedrelation (id, quest) values (60441, 40128);

delete from creature_template where entry = 60441 and 60442;
replace into creature_template values
(60441, 0, 6632, 0, 0, 0, 'Torble Sparksprocket', 'Junior Archaeologist', 0, 25, 25, 712, 712, 0, 0, 1009, 55, 3, 1, 1.14286, 0, 20, 5, 0, 0, 1, 31, 40, 0, 106, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 38.72, 53.24, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 'npc_torble_and_kex'),
(60442, 0, 4445, 0, 0, 0, 'Bael\'modan Golem', '', 0, 19, 20, 404, 433, 0, 0, 699, 415, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 27, 34, 0, 90, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 28.6704, 39.4218, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23, 34, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

delete from item_template where entry between 60192 and 60194;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60192,8629,'Automaton Arm',12,1,2048,1,-1,-1,1,2,-1,-1,-1,-1,4,'',0),
(60193,23856,'Automaton Leg',12,1,2048,1,-1,-1,1,2,-1,-1,-1,-1,4,'',0),
(60194,66119,'Automaton Head',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

delete from gameobject_template where entry between 2010825 and 2010827;
replace into gameobject_template values
(2010825, 0, 3, 24109, 'Crates with Mechanical Arms', 0, 4, 1, 43, 2010825, 0, 0.25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(2010826, 0, 3, 24109, 'Crates with Mechanical Legs', 0, 4, 1, 43, 2010826, 0, 0.25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(2010827, 0, 3, 33051, 'Mechagnome Head', 0, 4, 1, 43, 2010827, 0, 0.1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

delete from gameobject_loot_template where entry between 2010825 and 2010827;
replace into gameobject_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values
(2010825,60192,-100,1,1,0,10),
(2010826,60193,-100,1,1,0,10),
(2010827,60194,-100,1,1,0,10);

-- Stealing a Core --
delete from quest_template where entry = 40129;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext4) values (40128,40129,2,17,45,45,0,0,'Stealing a Core','Hello again, impeccable timing! I have done what I can with the parts you acquired from the dig, but we\'re missing a crucial piece. This automaton\'s power source is some advanced crystalline power core.\n\nUnfortunately the one in the chest has cracked and it\'s energy has been depleted. None have been found here and the dig has slowed down due to the Golems. Do not despair though, similar power sources have been found in the Uldaman dig bordering between Loch Modan and the Badlands.\n\nThat dig has also run into issues with the Dark Irons and with awakened defenders. You helped out here, so why not head over there, help them out, and grab me a power core while you\'re at it?','Acquire an Intact Power Core from Uldaman\'s Ancient Treasure.','Is that a Power core in your pocket, or are you just happy to see me?','This is it! Well done! Now I just have to fix this up, and we\'re good to go soon! Come visit again in the future.',60195,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,23740,4075,47,250,54,250,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60441, 40129);
replace into creature_involvedrelation (id, quest) values (60441, 40129);

delete from item_template where entry = 60195;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60195,24730,'Intact Power Core',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

delete from gameobject_template where entry = 2010828;
replace into gameobject_template values
(2010828, 0, 3, 259, 'Ancient Treasures Chest', 0, 4, 1, 43, 2010828, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

delete from gameobject_loot_template where entry = 2010828;
replace into gameobject_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values
(2010828,60195,-100,1,1,0,10);

-- A Profitable Aquisition --
delete from quest_template where entry = 40130;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext4) values (0,40130,2,17,18,18,0,0,'A Profitable Aquisition','Yo! You look like a capable sort! The Dwarves recently struck rich! They found some juicy technology when they found a way inside the facility across the road. See, I managed to snatch this little thing while they were distracted with the facility defenses activating, but what I got is an incomplete piece of a greater whole!\n\nGet in there and grab me the rest, if you help, we\'ll be partners! I\'ll give you a generous...\n\n40% share? We\'re talkin\' priceless technology so don\'t worry it\'s enough! Go in there find me two matching legs, arms, and a head. There\'s some defenses but it\'s nothin\' you can\'t handle!','Gather two Automaton Legs, two Automaton arms, and an Automaton Head from the Bael\'modan Digsite.','Did you find it? If not get movin\'! Time is money.','Hah! Perfect! Tell ya what, here\'s an advance payment. I may require your aid again so keep on keeping on! For now go do some other stuff, I got tinkering to do!',60192,2,60193,2,60194,1,0,0,0,0,0,0,0,0,0,0,0,0,3740,1075,76,250,1001,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60443, 40130);
replace into creature_involvedrelation (id, quest) values (60443, 40130);

delete from creature_template where entry = 60443;
replace into creature_template values
(60443, 0, 7059, 0, 0, 0, 'Kex Blowmaster', 'Tinker Extraordinaire', 0, 25, 25, 712, 712, 0, 0, 1009, 1692, 3, 1, 1.14286, 0, 20, 5, 0, 0, 1, 31, 40, 0, 106, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 38.72, 53.24, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 'npc_torble_and_kex');

-- Requisitioning a Core --
delete from quest_template where entry = 40131;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext4) values (40130,40131,2,17,45,45,0,0,'Requisitioning a Core','Yo! Good to see you man! I made progress but see, somethin\'s missing and I doubt it can be found here, not in an intact state anyway. A normal power source won\'t do, not for this baby.\n\nIt requires some major juice, so either I hook it up to a massive generator the size of a house, which I cannot currently acquire... Or we acquire a compatible power core! There\'s a ruin in the other part of the continent, Uldaman I believe it\'s called yeah!\n\nIt\'s made by those Titanics or whatever they\'re called. Go to this ruin and get me a core, the deeper complex is exposed there so you can do it!','Acquire an Intact Power Core from Uldaman\'s Ancient Treasure.','Got the core for me? Come on I\'m countin\' on you here!','Perfect! Yes this will fit, some modification and we\'ll be good to go! I knew I could count on you partner! Here\'s your share! Now leave, I got work to do. The sooner I patch this up, the sooner we\'ll strike it rich! This technology will revolutionize my position within Labor Union!',60195,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,23740,4075,76,250,1001,250,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60443, 40131);
replace into creature_involvedrelation (id, quest) values (60443, 40131);

-- The Activation --
delete from quest_template where entry = 40132;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40129,40132,2,17,55,53,0,0,'The Activation','Thank you again, I believe the core is installed. So now all that\'s left to do is the final assembly and then we\'ll have this automaton working! Speak to me again and say the word and we\'ll turn it on.','Speak to Torble Sparksprocket and activate Analyzer X-51','Stand By... Processing.','Analyzer X-51 huh? The memory banks are restricted. I\'ll have to figure out how to unlock them, imagine the secrets it may possess! The secrets of the Titans! He\'s very cooperative though, so I\'d say we\'ve made some headway.\n\nI\'ll keep working with Analyzer X-51 and see if he can help the digsite for now. I\'ll call you once I have a hint regarding the memory banks. In the mean time, I have something for you, I have modified Analyzer X-51\'s old depleted power core into an amulet you can wear.\n\nWhile the energies within are but a fraction of what the core once held, it can still sustain your magical energies if you use magic... If not, I bet it can be sold to someone who\'d be interested.',0,0,0,0,0,0,0,0,60324,1,0,0,0,0,0,0,0,0,33740,8075,47,250,54,250,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ask to Torble Sparksprocket to turn on the Analyzer X-51 and observe what will happen.');

replace into creature_questrelation (id, quest) values (60441, 40132);
replace into creature_involvedrelation (id, quest) values (60441, 40132);

delete from creature_template where entry = 60324;
replace into creature_template (entry, name, display_id1) values (60324, 'quest_40132_dummy_triger', 328);

delete from creature_template where entry = 60444;
replace into creature_template values
(60444, 0, 18594, 0, 0, 0, 'Analyzer X-51', '', 0, 55, 55, 2614, 2614, 0, 0, 4500, 35, 0, 1.1, 1.14286, 0, 20, 5, 0, 0, 1, 50, 73, 0, 248, 1, 2000, 2000, 1, 32768, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 40129, '');

-- The Profitable Activation --
delete from quest_template where entry = 40133;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40131,40133,2,17,55,53,0,0,'The Profitable Activation','Yo Partner! It\'s all done, I\'m about ready to get this thing turned on, so once you\'re ready talk to me and we will turn it on!','Speak to Kex Blowmaster and activate Analyzer X-48','Well well well...','Analyzer X-48 huh? I had expected more than a robotic Gnome, but hey! It\'s smart, and the analyzing ability can make me some dosh...\n\nBut more than that, there\'s the memory banks! I gotta find a way to dig into them, that\'s where the true treasure are partner! Schematics and knowledge belonging to the ancient Titans!\n\nWho knows what treasure it might hold! I\'ll call you soon partner! Oh wait, I made this thing for you from it\'s original power core, you may find it useful or somethin\'. Have a good one Partner!',0,0,0,0,0,0,0,0,60324,1,0,0,0,0,0,0,0,0,33740,8075,76,250,1001,250,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ask to Kex Blowmaster to turn on the Analyzer X-48 and observe what will happen.');

replace into creature_questrelation (id, quest) values (60443, 40133);
replace into creature_involvedrelation (id, quest) values (60443, 40133);

delete from creature_template where entry = 60445;
replace into creature_template values
(60445, 0, 18594, 0, 0, 0, 'Analyzer X-48', '', 0, 55, 55, 2614, 2614, 0, 0, 4500, 35, 0, 1.1, 1.14286, 0, 20, 5, 0, 0, 1, 50, 73, 0, 248, 1, 2000, 2000, 1, 32768, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 40131, '');

-- War On Two Fronts --
delete from quest_template where entry = 40134;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40127,40134,2,85,20,15,0,0,'War On Two Fronts','Listen, we do not have much time. I got the news that the Remnants are preparing for an attack on the Steepclif Port. If we send all of our forces to defend the port, that will make us open for an attack from the Rogue Heights.\n\nThat is why I need you to buy us time to defend the Port by attacking the rogues and killing their leader Salorn. While their numbers are numerous, it is very unlikely that they are expecting an attack on their camp. Now go! Every second counts.','I have been tasked with stopping the rogue army by killing their leader Salorn.','May the Dark Lady watch over you.','You are a sight for sore eyes. With the army at Rogue Heights dismantled and the attack on the port repelled, it is finally time to take the fight to Humans main base.',0,0,0,0,0,0,0,0,91761,8,91762,6,91763,3,91719,1,0,0,2000,2000,68,200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (91712, 40134);
replace into creature_involvedrelation (id, quest) values (91712, 40134);

-- Fall Of The Usurper --
delete from quest_template where entry = 40135;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40134,40135,2,85,20,15,0,0,'Fall Of The Usurper','The day when we restore Grelda as the rightful ruler of the Uplands is upon us $n. Thanks to your efforts, the Humans and those leading them have never been more vulnerable.\n\nBe that as it may, there is no denying that a direct attack on their base is not something that can easily be done. That is why I recommend you find those who would assist you in that endeavor. But have in mind that the time is at hand, and the longer we wait, the more time they have to recuperate.','Nargelas wants me to assault Remnants Camp and kill Duchess Faliona and Captain Silas.','Is it done?','You actually did it?! Who knew that there would come a day when I would celebrate the death of my sister in law. Oh, who am I kidding? It was bound to happen one way or another, hahaha.\n\nMy friend in a short time you have done more for us than all of my servants combined. With the Remnants of Lordaeron crushed it is just a matter of time before the Forsaken have total control over the whole Tirisfal.\n\nAnd don\'t think for a second that I would let your deeds go unrewarded, I think that you have more than earned this.',0,0,0,0,0,0,0,0,91352,8,91975,4,91721,1,91974,1,0,0,2500,2400,68,250,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (91712, 40135);
replace into creature_involvedrelation (id, quest) values (91712, 40135);

-- Dwindling Supplies --
delete from quest_template where entry = 40136;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40136,2,85,16,15,0,0,'Dwindling Supplies','You there! Yes, you. New in town, ay? Look, I\'m not sure if you are aware, but we are currently at war with the Humans, and as you can imagine, it has taken quite a toll on our dwindling supplies.\n\nThat is why I\'m looking for someone to collect boar meat from the local Cragtusk Boars. So, feeling up for it?','I have been tasked by Butcher Reeves to bring 8 Chunk of Meat.','Back already?','Look at that, a chunk of fine cut meat. Are you sure you are not some mysterious chef who is an adventurer by the day and chef by night? Anyways, thanks a lot, this will surely help. And here I hope this helps.',60196,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,700,950,68,75,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (91727, 40136);
replace into creature_involvedrelation (id, quest) values (91727, 40136);

delete from item_template where entry = 60196;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60196,25475,'Chunk of Meat',12,1,2048,1,-1,-1,1,8,-1,-1,-1,-1,4,'Lump of Cragtusk Meat',0);

delete from creature_loot_template where entry = 1191 and item = 60196;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (1191,60196,-100,1,1,0,10);

-- Strike Them Down --
delete from quest_template where entry = 40137;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40136,40137,2,85,17,15,0,0,'Strike Them Down','Just a person that I need. Listen. A few months ago, a pack of wolves inhabited the cave just north of here. At first, we thought it was just a small number of them, so we didn\'t pay those beasts much attention. Being busy with war and all. But they have become aggressive of late and even got bold enough to attack residents of Glenshire.\n\nSo how about this, you go and cull their numbers and in the meantime, I will try to gather some coins from the residents for you, deal?','I have been tasked by Butcher Reeves to kill 10 Graypaw Wolfs.','Any luck?','Thanks, they might not have been eradicated completely, but this will surely make them think twice before attacking us again. Oh and here is your reward.',0,0,0,0,0,0,0,0,91989,10,0,0,0,0,0,0,0,0,900,1100,68,75,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (91727, 40137);
replace into creature_involvedrelation (id, quest) values (91727, 40137);

-- Bandit Lord --
delete from quest_template where entry = 40138;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40138,2,85,19,15,0,0,'Bandit Lord','You look like someone who can get things done. I have a proposition for you. You see I have been hunting a man by the name of Storn for a while now, however, he was always surrounded by his minions and was untouchable. But it appears that he had a falling out with his man and has since been in hiding.\n\nGood thing is that I know that he is hiding in a cave close to Rogue Heights in the eastern hills of Tirisfal Uplands. The bad thing is that I need to wait for my client to get here, and she has a habit of leaving early if I do not meet her at her specific time. This is why I need someone to go and hunt Storn for me. So what do you say? You get me Storn\'s head, and I will split the reward for the bounty with you.','I need to find and kill Storn in the cave near Rogue Heights.','How goes the hunt?','You are fast. Have you ever considered changing your profession to being a bounty hunter? Anyways here is your share and thanks for the job well done.',60197,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,900,1900,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (91749, 40138);
replace into creature_involvedrelation (id, quest) values (91749, 40138);

delete from item_template where entry = 60197;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60197,1445,'Storn\'s Head',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'The head of the bandit lord Storn',0);

delete from creature_loot_template where entry = 122 and item = 60197;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (122,60197,-100,1,1,0,10);

-- Reaperence Of The Damned --
delete from quest_template where entry = 40139;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40139,2,85,17,15,0,0,'Reaperence Of The Damned','Welcome to the Glenshire. I hope that you have come to assist us. We are currently beset by the enemies on every side and could surely use any help that we can get. West of here is a farm where a large battle occurred recently between our troops and Humans of Lordaeron. We planned to use the dead there to boost our troops, but the Cult of the Damned appeared before us with the same idea.\n\nIf left unchecked, the scourge will soon have a large force to attack from the west, and we cannot let that happen. If you are feeling up to it, I got a reward ready for anyone who is willing to put a stop to the scourge advances.','Father Brightcopf wants me to put a stop to scourges advances on the Corinth Farm.','Were you successful?','Finally, some good news. As promised, here is your reward.',0,0,0,0,0,0,0,0,91756,10,91757,6,0,0,0,0,0,0,1200,1500,68,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (91726, 40139);
replace into creature_involvedrelation (id, quest) values (91726, 40139);

-- Cleaning The Farm --
delete from quest_template where entry = 40140;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40139,40140,2,85,19,15,0,0,'Cleaning The Farm','With the bulk of the undead gone, it is time to face the one responsible for taking our new troops from us. Go to the Corinth Farm once again and kill the Necromancer responsible for this.\n\nAnd be careful if the Necromancer is capable of summoning a small army of undead he is certainly not someone who should be underestimated.','I was tasked with killing the Necromancer responsible for resurrecting the undead on Corinth Farm.','Yes?','So the Necromancer is dead, this truly is reassuring news. Without you, we might have had to retreat into the Tirisfal Glades, and even worse the scourge would have been able to attack the Forsaken from both the west and east. You have done us a great service, and I think you should have this as a just reward for your deeds.',0,0,0,0,0,0,0,0,91759,1,0,0,0,0,0,0,0,0,1800,1900,68,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (91726, 40140);
replace into creature_involvedrelation (id, quest) values (91726, 40140);

-- Rewards for "War on Two Fronts"
replace into item_template values
 ('60198', '0', '2', '10', 'Acolyte\'s Staff', '', '20391', '2', '0', '1', '13924', '3481', '17', '-1', '-1', '25',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '6', '6', '5',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3300', '0',
 '0', '44', '67', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '2', '0', '0', '75', '0', '0', '0', '0', '23', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('60199', '0', '4', '1', 'Duskmind Boots', '', '4272', '2', '0', '1', '3236', '809', '8', '-1', '-1', '25',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '7', '7', '-2',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '27', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '35', '0', '0', '0', '0', '3', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('60200', '0', '2', '7', 'Infantry Shortblade', '', '28093', '2', '0', '1', '10776', '2694', '13', '-1', '-1', '25',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '4', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2500', '0',
 '0', '22', '42', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '3', '0', '0', '65', '0', '0', '0', '0', '23', '0', '0', '0',
 '0', '1', NULL);

update quest_template set rewchoiceitemid1 = 60198 where entry = 40134;
update quest_template set rewchoiceitemcount1 = 1 where entry = 40134;
update quest_template set rewchoiceitemid2 = 60199 where entry = 40134;
update quest_template set rewchoiceitemcount2 = 1 where entry = 40134;
update quest_template set rewchoiceitemid3 = 60200 where entry = 40134;
update quest_template set rewchoiceitemcount3 = 1 where entry = 40134;

-- Reward for "Fall of the Usurper"
 replace into item_template values
 ('60201', '0', '4', '0', 'Tattered Banner of Lordaeron', 'A testament of your triumph.', '932', '3', '0', '1', '21368', '5342', '12', '-1', '-1', '25',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '40', '0', '0', '0',
 '0', '0', '0', '9139', '1', '0', '0', '-1', '0', '-1', '9397', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '0', '0', '0', '0', '0', '42', '0', '0', '0',
 '0', '1', NULL);

update quest_template set rewchoiceitemid1 = 60201 where entry = 40135;
update quest_template set rewchoiceitemcount1 = 1 where entry = 40135;

-- The Boran Family --
delete from quest_template where entry = 40141;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1,objectivetext2) values (0,40141,2,409,51,40,0,0,'The Boran Family','I come from a large family, one that once occupied the boroughs of Kul Tiras. We weren\'t exactly a rich family, but we were not poor either! I traveled out with two of my brothers when the third war started up in Lordaeron, hoping to earn some fortune and glory. I helped the navy , my brother Karl started work in Menethil Harbor, while Samual went to Southshore to assist the war effort.\n\nEver since I set sail years ago, I have had no communication with them, and would like to reach out if you could deliver a letter to the both of them. They must have thought I perished after so long without a word or peep and I want to ease their minds.','Deliver the letters from Arnold Boran to his two brothers.','Have you seen my brothers yet? It will require travelling, but I would appreciate it greatly.','My family has always been close knit, and I know that such a long length without hearing from me would certainly cause worry. I am simply happy to dispell such concern and let them know all is fine. Thanks again, this has meant a lot for me.',60202,1,60203,1,0,0,0,0,60325,1,60326,1,0,0,0,0,0,0,8000,4650,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Deliver Letter to Karl','Deliver Letter to Samual');

replace into creature_questrelation (id, quest) values (91883, 40141);
replace into creature_involvedrelation (id, quest) values (91883, 40141);

delete from creature_template where entry = 60325 and 60326;
replace into creature_template (entry, name, display_id1) values (60325, 'quest_40141_dummy_triger', 328);
replace into creature_template (entry, name, display_id1) values (60326, 'quest_40141_dummy_triger', 328);

delete from item_template where entry = 60202 and 60203;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60202,3018,'Letter from Karl',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0),
(60203,13430,'Letter from Samual',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0),
(60204,3020,'Letter to Karl',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',50508),
(60205,3020,'Letter to Samual',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',50509);

replace into page_text values
(50508,'Hello Karl, it has been a long time, and I wanted to reach out in assurance that I am still alive, and kicking. It has been forever since we have seen, and I am eager to see you once again.\n\nAfter departing from Kul Tiras, the fleet spent an extended amount of time at sea. As of recently we were attacked and the ship was destroyed and now we currently reside on the Isle of Lapidis off the coast of Stranglethorn Vale. When the ship is repaired, I will be returning home, and will stop by to say hello like old times.\n\nYour Older Brother Arnold.',0),
(50509,'Little brother, it has been an eternity since we have seen one another. I am currently stranded on an island called Lapidis off the coast of Stranglethorn Vale near the south seas with others in the fleet. We call this place home, and have for a while now, and are repairing our ship.\n\nWhen repairs are done, I will be stopping to see you and Karl. I look forward to this day very well, and hope you are doing good.\n\nYour Older Brother Arnold.',0);

update creature_template set npc_flags = 3 where entry = 91883;
update creature_template set npc_flags = 3 where entry = 1242;
update creature_template set script_name = 'npc_arnold_boran' where entry = 91883;
update creature_template set script_name = 'npc_boran_brothers' where entry = 92936;
update creature_template set script_name = 'npc_boran_brothers' where entry = 1242;

-- Sailors Innovation --
delete from quest_template where entry = 40142;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40142,2,409,51,40,0,0,'Sailors Innovation','From our time at sea it is us Sailors who come up with the fine dining aboard ship and stuck on land. The same meals can get repetitive over, and over again, and so it is time to improvise and innovate.\n\nI came up with this recipe some time ago when we spent a few days on Tel\'Abim. All we had were sand crawlers and banana, fry it up together, and add a pinch of salt, and that was quite a meal! Sadly, we don\'t got bananas, but I do know that Chef Jenkel has some salt. Get the salt from him, and gather 6 Juicy Crawler Legs from any sort of sand crawler around these islands, then I can finally have a change of meal.','Collect 6 Juicy Crawler Legs and a Pinch of Salt for \'Slim\' in Caelan\'s Rest.','Make sure those crawler legs are juicy!','Ahh, yeah this should be everything, a meal worthy for the Admiral! Here, have some, as thanks.',60206,6,60207,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4850,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (91872, 40142);
replace into creature_involvedrelation (id, quest) values (91872, 40142);

delete from item_template where entry = 60206 and 60207;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60206,5825,'Juicy Crawler Leg',12,1,2048,1,-1,-1,1,6,-1,-1,-1,-1,4,'',0),
(60207,2480,'Pinch of Salt',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

update creature_template set loot_id = 91831 where entry = 91831;
update creature_template set loot_id = 91832 where entry = 91832;
update creature_template set loot_id = 91833 where entry = 91833;
update creature_template set loot_id = 91146 where entry = 91146;
update creature_template set loot_id = 91147 where entry = 91147;

delete from creature_loot_template where item = 60206 and entry between 91831 and 92147;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values
(91831,60206,-25,1,1,0,10),
(91832,60206,-25,1,1,0,10),
(91833,60206,-25,1,1,0,10),
(92146,60206,-25,1,1,0,10),
(92147,60206,-25,1,1,0,10);

update creature_template set npc_flags = 2 where entry = 91872;
update creature_template set npc_flags = 17 where entry = 91950;
update creature_template set script_name = 'npc_chef_jenkel' where entry = 91950;

-- Smashing the Southsea! --
delete from quest_template where entry = 40143;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40143,2,409,53,40,0,0,'Smashing the Southsea!','The Southsea Pirates are a direct threat to our survival on this island. Their operations here are much larger then we had first anticipated when we set out. They still have many powerful vessels, and whilst they haven\'t attempted to sail them infront of our town, the possibility is still real.\n\nKul Tiras has always been at war with piracy, those that threaten the merchants are a direct threat to our kingdom. I need you to claim the sashes of the Southsea Freebooters, a pirate gang that operates in a vast area. You can find them across both large islands and along the sandbar named after them to the south west of here off the coast of Lapidis.\n\nAs proof of your deeds, bring me twenty of their sashes that they wear. Your efforts will not only help us, but all who travel the vast sea.','Gather 20 Southsea Sashes from Southsea Pirates for Colonel Hardinus in Caelan\'s Rest.','The Southsea Freebooters must be stopped if we are to ever leave this place.','I salute you, you have made the waves a much safer place for all who travel them.',60208,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4850,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (92002, 40143);
replace into creature_involvedrelation (id, quest) values (92002, 40143);

delete from item_template where entry = 60208;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60208,1329,'Southsea Sash',12,1,2048,1,-1,-1,1,20,-1,-1,-1,-1,4,'',0);

update creature_template set loot_id = 92135 where entry = 92135;
update creature_template set loot_id = 92136 where entry = 92136;
update creature_template set loot_id = 92138 where entry = 92138;
update creature_template set loot_id = 92139 where entry = 92139;
update creature_template set loot_id = 91844 where entry = 91844;
update creature_template set loot_id = 91845 where entry = 91845;
update creature_template set loot_id = 91846 where entry = 91846;
update creature_template set loot_id = 91847 where entry = 91847;

delete from creature_loot_template where item = 60208 and entry = 92135;
delete from creature_loot_template where item = 60208 and entry = 92136;
delete from creature_loot_template where item = 60208 and entry = 92138;
delete from creature_loot_template where item = 60208 and entry = 92139;
delete from creature_loot_template where item = 60208 and entry = 6371;
delete from creature_loot_template where item = 60208 and entry = 91844;
delete from creature_loot_template where item = 60208 and entry = 91845;
delete from creature_loot_template where item = 60208 and entry = 91846;
delete from creature_loot_template where item = 60208 and entry = 91847;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values
(92135,60208,-26,1,1,0,10),
(92136,60208,-26,1,1,0,10),
(92138,60208,-26,1,1,0,10),
(92139,60208,-26,1,1,0,10),
(6371,60208,-26,1,1,0,10),
(91844,60208,-26,1,1,0,10),
(91845,60208,-26,1,1,0,10),
(91846,60208,-26,1,1,0,10),
(91847,60208,-26,1,1,0,10);

-- Southsea Interference --
delete from quest_template where entry = 40144;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40143,40144,2,409,54,44,0,0,'Southsea Interference','With each sash collected the Southsea are weakened, but not destroyed. Their strength comes from the captains of each ship and each crew. A man with great charisma and promises of wealth, fortune and adventure can easily rile up a group with no future ahead of them.\n\nIt is these individuals that we will need to target, the captains of the Southsea Freebooters. You shall find them to the south west, along a dangerous strip of sand called The Southsea Sandbar. Be cautious, it is the basecamp of the pirates on both Gilijim, and Lapidis.\n\nYou shall find the captains upon the boats there, enter each, and kill the leaders.','Slay the Southsea Captains located on The Southsea Sandbar for Colonel Hardinus in Caelan\'s Rest.','Once the leaders are dead, the pirates will be sent into a state of chaos to establish new leadership.','The Admiral would be proud of everything done. I have no doubt it will take the Southsea many weeks before someone is their new leaders, and even then, they will be very much weaker then they were. Cheers, the dead of the fleet have been avenged.',0,0,0,0,0,0,0,0,92142,1,92143,1,92144,1,0,0,0,0,4500,6350,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60209,1,60210,1,60211,1,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (92002, 40144);
replace into creature_involvedrelation (id, quest) values (92002, 40144);

replace into item_template values
 ('60209', '0', '4', '4', 'Fleet Pauldrons', '', '32903', '2', '0', '1', '46416', '11604', '3', '-1', '-1', '59',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '6', '7', '4', '12',
 '7', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '424', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '1', '0', '0', '70', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60210', '0', '4', '1', 'Hydromancer Sash', '', '16704', '2', '0', '1', '27608', '6902', '6', '-1', '-1', '59',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '11', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '43', '0', '0', '0',
 '0', '0', '0', '7703', '1', '0', '0', '-1', '0', '-1', '21624', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '25', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60211', '0', '4', '2', 'Rowdy Sailor Wraps', '', '16816', '2', '0', '1', '40508', '10127', '9', '-1', '-1', '59',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '6', '11', '4', '8',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '68', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '1', '0', '0', '30', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);

-- Mysteries of the Grove --
delete from quest_template where entry = 40145;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40145,2,331,37,26,0,0,'Mysteries of the Grove','I have heard rumorings from some of the druids in the region of an elvish grove hidden away that has been corrupted, and twisted. If such darkness can lurk and remain undisturbed it could mean horrible things for the forest and for nature itself.\n\nI have a scout who has recently checked up on such a disturbance and I would like his report before dedicating resources to eliminating corruption within Ashenvale. You can find him just down the road to the southwest, at a small camp. He goes by the name Feran Strongwind, he should tell you what he knows.','Speak with Feran Strongwind outside of Splintertree Post.','Yes? Is there anything that you need from me?','Loruk sent you, I am assuming he wishes to hear news about The Crescent Grove.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,400,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (11720, 40145);
replace into creature_involvedrelation (id, quest) values (11749, 40145);

-- Feran\'s Report --
delete from quest_template where entry = 40146;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40145,40146,2,331,37,26,0,0,'Feran\'s Report','Loruk may not like the news I am about to deliver to him, it is news of madness, and chaos. Upon studying the hidden grove I found crater marks from infernals, furbolgs enraged by corruption and much, much more.\n\nIt seems as though the elven druids were unable to stop whatever lurks deep inside, and I did not risk my life to learn more. Whatever is inside there, certainly is powerful enough to corrupt the very forest. Take this report to Loruk, it has all of the details of my findings.','Bring Feran\'s Report to Loruk Foreststrider.','So, were my suspicions correct?','So, the rumors are true, there is something evil twisting the very roots of this place, and if left unchecked, could be a force unstoppable.',60212,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60212,1,0,400,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (11749, 40146);
replace into creature_involvedrelation (id, quest) values (11720, 40146);

delete from item_template where entry = 60212;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60212,13430,'Feran\'s Report',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',50510);

replace into page_text values
(50510,'To Loruk Foreststrider\n\nYour suspicions seem to have been correct, it would seem as if something horrid lurks within the very air. The furbolg who once seemed so very friendly have been turned evil and are hostile upon sight.\n\nThe land itself is beginning to wither and fade. Large craters have dotted the landscape and most of the wildlife seems to be in a similar frenzy to that of the Furbolg. I was unable to see the one who supposedly is the keeper of this place as the area is to dangerous to travel alone.\n\nSomething terrible has happened here, and something must be done.\n\nFeran Strongwind.',0);

-- Rooting Out Evil --
delete from quest_template where entry = 40147;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40146,40147,2,331,37,26,0,0,'Rooting Out Evil','This report is chilling, there is something going on within The Crescent Grove, and it must be stopped. If we do not end the corruption it could spread as far as Mulgore and beyond. We must do our part, for the greater good of nature itself as druids.\n\nI must ask you to delve into the very depths of The Crescent Grove. It can be found to the south west near Mystral Lake. The cave entrance is just above the waterfall, there should be a pathway up. I recommend you find a band of those heroic enough to travel with you, there is no telling what lies ahead.','Venture into The Crescent Grove, and root out the evil inside.','We must root out evil, no matter the cost.','This is truly an accomplishment to be celebrated. For what you\'ve done within The Crescent Grove, please take one of these. May they assist you well in your future endeavors.',0,0,0,0,0,0,0,0,92110,1,0,0,0,0,0,0,0,0,0,3650,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60213,1,60214,1,60215,1,60216,1,0,0,'');

replace into creature_questrelation (id, quest) values (11720, 40147);
replace into creature_involvedrelation (id, quest) values (11720, 40147);

update quest_template set type = 81 where entry = 40147;

replace into item_template values
 ('60213', '0', '4', '3', 'Chain of Loruk', '', '29953', '3', '0', '1', '30016', '7504', '5', '-1', '-1', '40',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '9', '7', '15',
 '6', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '254', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '5', '1', '0', '0', '120', '0', '0', '0', '0', '43', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60214', '0', '4', '0', 'Cloak of Loruk', '', '23554', '3', '0', '1', '14816', '3704', '16', '-1', '-1', '40',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '12', '6', '4',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '0', '0', '0', '0', '0', '43', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60215', '0', '4', '2', 'Shoulders of Loruk', '', '16519', '3', '0', '1', '20824', '5206', '3', '-1', '-1', '40',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '14', '3', '8',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '91', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '1', '0', '0', '60', '0', '0', '0', '0', '43', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60216', '0', '4', '1', 'Hat of Loruk', '', '18414', '3', '0', '13624', '3406', '3406', '1', '-1', '-1', '40',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '10', '6', '6',
 '3', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '47', '0', '0', '0',
 '0', '0', '0', '7679', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '50', '0', '0', '0', '0', '43', '0', '0', '0',
 '0', '1', NULL);

-- Southsea Reserve --
delete from quest_template where entry = 40148;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40148,2,409,51,40,0,0,'Southsea Reserve','Oh to be back on the sea... back on the sea and on the way home. It\'s been hell just having this part of the island to roam around on, and the only thing us sailors have is ale and eachothers company.\n\nRum is fine, but we\'ve been craving more variety, and this is where you\'re going to come in. The Southsea Pirates have been rather known for their own recipe of Southsea Reserve, of which only they make. That is, until you go and steal the recipe from then, and then we can make it ourselves.\n\nThey are currently holed up on a strand of sand called the Southsea Sandbar and the small neighboring patch of sand known as Distillery Island. It\'s practically a damn factory of the stuff, and they have an entire trained crew working around the clock pumping this stuff out.\n\nIt\'s down in the south west, off the coast of Lapidis Isle, you should see several of their ships docked there. The one who invented the recipe is named \'Moonshine\' Marty, you\'ll get it from him.','Claim the Southsea Reserve Recipe from \'Moonshine\' Marty for Sailor Larson in Caelan\'s Rest.','Any luck matey?','This is it! Haha! Such fine work, you\'d make one excellent swashbuckler aboard the Waterbreaker when she is repaired!',60217,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4800,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (92010, 40148);
replace into creature_involvedrelation (id, quest) values (92010, 40148);

delete from item_template where entry = 60217;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60217,811,'Southsea Reserve Recipe',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

update creature_template set script_name = 'npc_marty_moonshine' where entry = 92137;

-- The Rotten Renown --
delete from quest_template where entry = 40149;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40149,2,409,51,40,0,0,'The Rotten Renown','<The chest appears to be covered in muck and incredibly damaged by the salty sea water, inside, there is a few small items and a rather heavy book that looks well kept and quite elegant. Upon further inspection it is quite obvious that this is the logbook of the pirate ship, \'Rotten Renown\' and holds information that may be of use to someone>.','Find someone who can find use for the Logbook of the Rotten Renown.','Is there something that I can help you with?','You found this in the wreck of the pirate ship? I must say, that is some rather adventurous exploring! This logbook will help us learn quite a lot about the charts, and patrol pathings of pirates, and may help us locate some of their bases at sea.',60218,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60218,1,8000,4800,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into gameobject_questrelation (id, quest) values (2010829, 40149);
replace into creature_involvedrelation (id, quest) values (92002, 40149);

delete from item_template where entry = 60218;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60218,8092,'Logbook of the Rotten',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

delete from gameobject_template where entry = 2010829;
replace into gameobject_template (entry, type, displayid, size, name, flags, script_name) values (2010829, 2, 23431, 1, 'Waterlogged Trunk', 32, '');

-- Drowning Deeptide --
delete from quest_template where entry = 40150;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40150,2,409,53,44,0,0,'Drowning Deeptide','The Naga of the Deeptide have been a problem ever since we first arrived. They attacked our vessels when we first made landing upon the island of Gillijim with the High Elves we came with. While we were victorious it still was reason enough for us to travel to Lapidis instead.\n\nUnfortunately you know what happened after we got here, but still the naga remain a threat that must be dealt with. They have a sanctum off the south western coast of Gillijim\'s Island located just south of Lapidis.\n\nHead to their sanctum, and kill what naga you find, take from them their bracelets and bring them to me.','Collect 10 Deeptide Bracelets from Deeptide Naga for Eliza Caldwell in Caelan\'s Rest.','Has it been done? Have you traveled to Gillijim?','The Deeptide Naga have been up to something, but that is not what we are here to investigate. Good work in dispatching the foul creatures, let us hope they prove no further harm to the crew.',60219,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60220,1,60221,1,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (91890, 40150);
replace into creature_involvedrelation (id, quest) values (91890, 40150);

delete from item_template where entry = 60219;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60219,18291,'Deeptide Bracelet',12,1,2048,1,-1,-1,1,10,-1,-1,-1,-1,4,'',0);

update creature_template set loot_id = 91840 where entry = 91840;
update creature_template set loot_id = 91841 where entry = 91841;
update creature_template set loot_id = 91842 where entry = 91842;
update creature_template set loot_id = 91843 where entry = 91843;

delete from creature_loot_template where item = 60219 and entry = 91840;
delete from creature_loot_template where item = 60219 and entry = 91841;
delete from creature_loot_template where item = 60219 and entry = 91842;
delete from creature_loot_template where item = 60219 and entry = 91843;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values
(91840,60219,-50,1,1,0,10),
(91841,60219,-50,1,1,0,10),
(91842,60219,-50,1,1,0,10),
(91843,60219,-50,1,1,0,10);

replace into item_template values
 ('60220', '0', '4', '3', 'Tidehunter Greaves', '', '26030', '2', '0', '1', '69044', '17261', '8', '-1', '-1', '59',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '8', '3', '5',
 '7', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '218', '0', '0', '0',
 '0', '0', '0', '7597', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '5', '1', '0', '0', '50', '0', '0', '0', '0', '8', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60221', '0', '4', '4', 'Tidehunter Girdle', '', '22678', '2', '0', '1', '31444', '7861', '6', '-1', '-1', '58',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '6', '10', '4', '6',
 '7', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '312', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '1', '0', '0', '40', '0', '0', '0', '0', '8', '0', '0', '0',
 '0', '1', NULL);

update creature_template set npc_flags = 2 where entry = 91890;

-- The Aqua Stone --
delete from quest_template where entry = 40151;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40151,2,409,51,44,0,0,'The Aqua Stone','Margon the Mighty and his son Hargul the Hardy are two sea giants that roam the island of Lapidis and the surrounding waters. Hargul especially has been something of a nuissance and attacked Caelan\'s Rest many weeks ago. Whilst no one was harmed he did make away with a few items of importance before the Marines had assembled and figured out a plan to stop him.\n\nOne such item was the Aqua Stone, a magically potent stone that has been channeled with the energy of powerful Hydromancers. With this stone we were able to store more accurately channel our abilities. I would like you to reclaim it, to slay Hargul the Hardy and reclaim this valueable treasure, not just for us Hydromancers, but so that it does not fall in the wrong hands.\n\nYou should find Hargul somewhere off the coast of Lapidis, he was last seen on the Bright Coast, to the west.','Recover the Aqua Stone from Hargul the Hardy.','The Aqua Stone is of much importance to us here and it must be recovered.','This is it! We had abandoned all serious hopes of reclaiming it, and now it is in our posession once again. A marvelous day, and it is all thanks to you.',60222,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1500,5200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60223,1,60224,1,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (92000, 40151);
replace into creature_involvedrelation (id, quest) values (92000, 40151);

update quest_template set type = 1 where entry = 40151;

delete from item_template where entry = 60222;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60222,35465,'Aqua Stone',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

update creature_template set loot_id = 92937 where entry = 92937;

replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values
(92937,60222,-100,1,1,0,10);

replace into item_template values
 ('60223', '0', '4', '1', 'Aquaweave Leggings', '', '25942', '2', '0', '1', '54748', '13687', '7', '-1', '-1', '57',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '12', '6', '7',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '0', '0', '21619', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '55', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60224', '0', '4', '4', 'Waveguard Gauntlets', '', '35217', '2', '0', '1', '28668', '7167', '10', '-1', '-1', '58',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '6', '7', '9',
 '4', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '341', '0', '0', '0',
 '0', '0', '0', '7516', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '1', '0', '0', '40', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);

-- Faelon\'s Folly --
delete from quest_template where entry = 40152;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40152,2,409,51,45,0,0,'Faelon\'s Folly','Our fleet was accompanied by a squadron of High Elf vessels, they traveled to the islands with us for a mission that was somewhat secretive. I had many friends within their crew, of which I met from Kul Tiras. The High Elves are a good people, but their leader, Faelon was a rather shady character, one who traded illegal goods and dealt with unsavory individuals.\n\nIt is sad to say that many of those people I once called good friends are now haunting the shores of Faelon\'s Folly on the island of Gillijim. They were slain by the Deeptide Naga, though one of the items Faelon coveted in hopes to trade now has left them restless.\n\nGo there, and free the souls of the dead, you will find them on the western coast of Gillijim\'s Island, south of Lapidis.','Travel to Faelon\'s Folly on Gillijim\'s Island and slay 7 Forgotten Swordsman, 7 Drowned Souls, and 7 Forgotten Crew.','Have the crew been put to rest?.','It is a shame what happened to the elves, but I know if we Kul Tirans were in a similar state, they would offer us the same kindness.',0,0,0,0,0,0,0,0,92166,7,92164,7,92165,7,0,0,0,0,1500,4900,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (91952, 40152);
replace into creature_involvedrelation (id, quest) values (91952, 40152);

update creature_template set npc_flags = 2 where entry = 91952;

set @gossip_menu_id = 53107; set @magic_number = 91950;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0');
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Cooking is a fine art, working with such few resources makes it an even finer art.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 53108; set @magic_number = 91883;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0');
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Being stuck in Caelan has left my mind worrying about family. At the least it isn\'t terrible, we have plenty to read.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 53109; set @magic_number = 1042;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0');
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Greatings $n.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

update creature_loot_template set chanceorquestchance = -23 where item = 60170;
update quest_template set details = 'I come from a large family, one that once occupied the boroughs of Kul Tiras. We weren\'t exactly a rich family, but we were not poor either! I traveled out with two of my brothers when the third war started up in Lordaeron, hoping to earn some fortune and glory. I helped the navy , my brother Karl started work in Menethil Harbor, while Samual went to Southshore to assist the war effort.\n\nEver since I set sail years ago, I have had no communication with them, and would like to reach out if you could deliver a letter to the both of them. They must have thought I perished after so long without a word or peep and I want to ease their minds.' where entry = 40141;
update broadcast_text set male_text = 'Southshore is a quaint town, and much different where I come from. I am happy it was spared from the horrors of the Third War.' where entry = 92936;
update creature_template set script_name = 'npc_samuel_boran' where entry = 92936;
update creature_template set script_name = 'npc_karl_boran' where entry = 1242;
update broadcast_text set male_text = 'Southshore is a quaint town, and much different where I come from. I am happy it was spared from the horrors of the Third War.' where entry = 92936;
update quest_template set details = 'Oh to be back on the sea... back on the sea and on the way home. It\'s been hell just having this part of the island to roam around on, and the only thing us sailors have is ale and eachothers company.\n\nRum is fine, but we\'ve been craving more variety, and this is where you\'re going to come in. The Southsea Pirates have been rather known for their own recipe of Southsea Reserve, of which only they make. That is, until you go and steal the recipe, and then we can make it ourselves.\n\nThey are currently holed up on a strand of sand called the Southsea Sandbar and the small neighboring patch of sand known as Distillery Island. It\'s practically a damn factory of the stuff, and they have an entire trained crew working around the clock pumping this stuff out.\n\nIt\'s down in the south west, off the coast of Lapidis Isle, you should see several of their ships docked there. The one who invented the recipe is named \'Moonshine\' Marty, you\'ll get it from him.' where entry = 40141;
update quest_template set requiredraces = 1101 where entry = 40149;
update creature_template set script_name = 'npc_captain_saltbeard' where entry = 92144;
update creature_template set script_name = 'npc_captain_blackeye' where entry = 92143;
update creature_template set script_name = 'npc_captain_ironhoof' where entry = 92142;

-- Insom'ni <The Great Hermit>, display ID 4534, level 61 ELITE BOSS, has 12000 mana, has 65151 hp, NEUTRAL both factions cannot be attacked, greeting text : "A great power lurks, and I seek to combat it. Those who wronged me shall pay the ultimate price, and I will make sure they suffer. You are going to be the one who helps me, and perhaps I shall reward you for your efforts. \n\n Well, make yourself at home, there is much to do and much to discuss."

REPLACE INTO creature_template VALUES
(60446, 0, 4534, 0, 0, 0, 'Insom\'ni', 'The Great Hermit', 0, 61, 61, 65151, 65151, 12000, 12000, 3791, 31, 0, 1, 1.14286, 0, 20, 5, 0, 1, 1, 873, 1039, 0, 278, 1, 2000, 2000, 2, 2, 0, 0, 0, 0, 0, 0, 61.732, 84.8815, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 503, 2517, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @gossip_menu_id = 53106; set @magic_number = 60446;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0');
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'A great power lurks, and I seek to combat it. Those who wronged me shall pay the ultimate price, and I will make sure they suffer. You are going to be the one who helps me, and perhaps I shall reward you for your efforts.\n\nWell, make yourself at home, there is much to do and much to discuss.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

-- Fishface Joe <Fisherman> , display ID 18706, level 25, weapon 6256, greeting line: "You're going to scare off all the fish!" , faction 119
-- Dirty Jacob <Bloodsail Buccaneers>, display ID 18703, level 30, weapon 2092, weapon 2 12745, greeting line : "You wouldn't happen to have a few coin on you, huh? I need it for the next time we stop somewhere." , faction 119
-- Sark Blacktooth <Bloodsail Buccaneers> , display ID 18717, level 50, weapon1 4562, greeting line : "Don't cause any trouble around here newcomer, the last freshfish we had caused all sorts of issues." , faction 119
-- Gold-Tooth Gary <Bloodsail Buccaneers> , display ID 18708, level 46, weapon 15396, greeting line : "Hey there friend, Gary is the name! If you're looking to spend your coin then heres the place, you could potentially even triple your money through me if you got luck on your side! So, what say you swashbuckler, got the heart for it?", IS A GAMBLER NPC , faction 119
-- Jessie Sugar-Tongue <Ship Bard> , display ID 18710, level 49, no weapon , faction 119
-- First Mate McCoy <Bloodsail Buccaneers> , display ID 18705, level 52, weapon1 4560, greeting line : "Welcome aboard, we Bloodsail treat eachother well at the least, if you remain loyal." , faction 119
-- Garfield Sparkblast <Admiral of the Bloodsail Buccaneers> , display ID 18707, level 54 elite , faction 119
-- Old-Tide Sam <Bloodsail Helmsman>, display ID 18713, level 52, weapon 13820, weapon 2 13079, greeting like : "Just because I'm old don't think I'm weak, ye understand young one? Ye let yer guard down for but a moment and Old-Tide Sam will pull you under." , faction 119
-- Fazzle 'The Slick' <Innkeeper> , display ID 8847, level 30, no weapon, greeting line : "No better place to rest up then on the ship! The rocking of the waves is almost gentle don't you agree?", INNKEEPER , faction 119
-- Belgrush Daggerfist <General Goods> , display ID 18701, level 45, NO WEAPONS  , SELLS GENERAL GOODS , faction 119
-- Mabel 'The Hook' <Blacksmith> , display ID 1522, level 48, weapon 5956, IS A BLACKSMITH, MAKE HER SELL BLACKSMITHING SUPPLIES AND REPAIR , faction 119
-- One-Ear Nellie <Bartender> , display ID 18714, level 43, no weapons, SELLS FOOOOD AND WATER , faction 119
-- Vil'do One-Tusk <Pirate Booty> , display ID 18722, level 45, no weapons , greeting line : "Ey mon, you be looking like you could use a few trinkets, let Vil'do tell you what you be needing.", sells junk will make later, faction 119
-- 'Ale Saint' Grida <Brewer> , display ID 18709, level 42, weapon1 2717, greeting line : "Looking for the good stuff huh? You'll find it no where else." SELLS DIFFERENT ALE , faction 119

REPLACE INTO creature_template VALUES
(60447, 0, 18706, 0, 0, 0, 'Fishface Joe', 'Fisherman', 0, 25, 25, 712, 712, 0, 0, 1026, 119, 3, 1, 1.14286, 1, 20, 5, 0, 0, 1, 37, 46, 0, 106, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 39.5824, 54.4258, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 34, 50, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60448, 0, 18703, 0, 0, 0, 'Dirty Jacob', 'Bloodsail Buccaneers', 0, 30, 30, 1002, 1002, 0, 0, 1200, 119, 3, 1, 1.14286, 1, 20, 5, 0, 0, 1, 43, 53, 0, 122, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 42.1344, 57.9348, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44, 62, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60449, 0, 18717, 0, 0, 0, 'Sark Blacktooth', 'Bloodsail Buccaneers', 0, 50, 50, 2879, 2879, 0, 0, 2999, 119, 3, 1, 1.14286, 1, 20, 5, 0, 0, 1, 88, 107, 0, 226, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.4704, 96.8968, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 103, 140, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60450, 0, 18708, 0, 0, 0, 'Gold-Tooth Gary', 'Gambler', 0, 46, 46, 2398, 2398, 0, 0, 2780, 119, 3, 1, 1.14286, 1, 20, 5, 0, 0, 1, 78, 95, 0, 208, 1, 2000, 2000, 1, 32768, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 87, 119, 'EventAI', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 'npc_agne_gambler'),
(60451, 0, 18710, 0, 0, 0, 'Jessie Sugar-Tongue', 'Ship Bard', 0, 49, 49, 2672, 2672, 0, 0, 2944, 119, 2, 1, 1.14286, 1, 20, 5, 0, 0, 1, 85, 104, 0, 220, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 62.8672, 86.4424, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 98, 133, 'EventAI', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60452, 0, 18705, 0, 0, 0, 'First Mate McCoy', 'Bloodsail Buccaneers', 0, 52, 52, 3082, 3082, 0, 0, 2669, 119, 3, 1, 1.14286, 1, 20, 5, 0, 0, 1, 106, 136, 0, 234, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.4704, 96.8968, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 104, 141, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60453, 0, 18707, 0, 0, 0, 'Garfield Sparkblast', 'Admiral of the Bloodsail Buccaneers', 0, 54, 54, 14182, 14182, 0, 0, 2641, 119, 3, 1, 1.14286, 1, 20, 5, 0, 1, 1, 344, 444, 0, 244, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 59.3256, 81.5727, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1279, 1675, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60454, 0, 18713, 0, 0, 0, 'Old-Tide Sam', 'Bloodsail Helmsman', 0, 52, 52, 3082, 3082, 0, 0, 2669, 119, 3, 1, 1.14286, 1, 20, 5, 0, 0, 1, 106, 136, 0, 234, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.4704, 96.8968, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 104, 141, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60455, 0, 8847, 0, 0, 0, 'Fazzle \'The Slick\'', 'Innkeeper', 0, 30, 30, 1002, 1002, 0, 0, 1200, 119, 135, 1, 1.14286, 1, 20, 5, 0, 0, 1, 43, 53, 0, 122, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 42.1344, 57.9348, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44, 62, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60456, 0, 18701, 0, 0, 0, 'Belgrush Daggerfist', 'General Goods', 0, 45, 45, 2200, 2200, 0, 0, 2600, 119, 6, 1, 1.14286, 1, 20, 5, 0, 0, 1, 78, 95, 0, 208, 1, 2000, 2000, 1, 32768, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 87, 119, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60457, 0, 1522, 0, 0, 0, 'Mabel \'The Hook\'', 'Blacksmith', 0, 48, 48, 2672, 2672, 0, 0, 2944, 119, 16390, 1, 1.14286, 1, 20, 5, 0, 0, 1, 85, 104, 0, 220, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 62.8672, 86.4424, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 98, 133, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60458, 0, 18714, 0, 0, 0, 'One-Ear Nellie', 'Bartender', 0, 43, 43, 2059, 2059, 0, 0, 2246, 119, 6, 1, 1.14286, 1, 20, 5, 0, 0, 1, 146, 179, 0, 182, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76, 104, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60459, 0, 18722, 0, 0, 0, 'Vil\'do One-Tusk', 'Pirate Booty', 0, 45, 45, 2200, 2200, 0, 0, 2600, 119, 7, 1, 1.14286, 1, 20, 5, 0, 0, 1, 78, 95, 0, 208, 1, 2000, 2000, 1, 32768, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 87, 119, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60460, 0, 18709, 0, 0, 0, '\'Ale Saint\' Grida', 'Brewer', 0, 42, 42, 2001, 2001, 0, 0, 2199, 119, 7, 1, 1.14286, 1, 20, 5, 0, 0, 1, 146, 179, 0, 182, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76, 104, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @equip_template = 20000; set @weapon_1 = 6256; set @weapon_2 = 0; set @creature = 60447;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20001; set @weapon_1 = 2092; set @weapon_2 = 12745; set @creature = 60448;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20002; set @weapon_1 = 4562; set @weapon_2 = 0; set @creature = 60449;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20003; set @weapon_1 = 15396; set @weapon_2 = 0; set @creature = 60450;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20004; set @weapon_1 = 4560; set @weapon_2 = 0; set @creature = 60452;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20005; set @weapon_1 = 13820; set @weapon_2 = 13079; set @creature = 60454;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20006; set @weapon_1 = 5956; set @weapon_2 = 0; set @creature = 60457;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20007; set @weapon_1 = 2717; set @weapon_2 = 0; set @creature = 60460;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @gossip_menu_id = 41000; set @magic_number = 60447;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0');
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'You\'re going to scare off all the fish!');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41001; set @magic_number = 60448;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0');
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'You wouldn\'t happen to have a few coin on you, huh? I need it for the next time we stop somewhere.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41002; set @magic_number = 60449;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0');
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Don\'t cause any trouble around here newcomer, the last freshfish we had caused all sorts of issues.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41003; set @magic_number = 60450;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0');
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Hey there friend, Gary is the name! If you\'re looking to spend your coin then heres the place, you could potentially even triple your money through me if you got luck on your side! So, what say you swashbuckler, got the heart for it?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41004; set @magic_number = 60452;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0');
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Welcome aboard, we Bloodsail treat eachother well at the least, if you remain loyal.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41005; set @magic_number = 60454;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0');
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Just because I\'m old don\'t think I\'m weak, ye understand young one? Ye let yer guard down for but a moment and Old-Tide Sam will pull you under.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41006; set @magic_number = 60455;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0');
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'No better place to rest up then on the ship! The rocking of the waves is almost gentle don\'t you agree?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41007; set @magic_number = 60459;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0');
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Ey mon, you be looking like you could use a few trinkets, let Vil\'do tell you what you be needing.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41008; set @magic_number = 60460;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0');
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Looking for the good stuff huh? You\'ll find it no where else.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

REPLACE INTO npc_vendor VALUES
-- Fazzle 'The Slick' <Innkeeper>
(60455,2287,0,0,0,0),
(60455,1205,0,0,0,0),
(60455,1708,0,0,0,0),
(60455,3770,0,0,0,0),
(60455,117,0,0,0,0),
(60455,3771,0,0,0,0),
(60455,8952,0,0,0,0),
(60455,1179,0,0,0,0),
(60455,159,0,0,0,0),
(60455,4599,0,0,0,0),
(60455,1645,0,0,0,0),
(60455,18046,0,0,0,0),
(60455,8766,0,0,0,0),
-- Belgrush Daggerfist <General Goods>
(60456, 117, 0, 0, 0, 0),
(60456, 159, 0, 0, 0, 0),
(60456, 1179, 0, 0, 0, 0),
(60456, 1205, 0, 0, 0, 0),
(60456, 1645, 0, 0, 0, 0),
(60456, 1708, 0, 0, 0, 0),
(60456, 2287, 0, 0, 0, 0),
(60456, 2515, 0, 0, 0, 0),
(60456, 2519, 0, 0, 0, 0),
(60456, 3030, 0, 0, 0, 0),
(60456, 3033, 0, 0, 0, 0),
(60456, 3770, 0, 0, 0, 0),
(60456, 3771, 0, 0, 0, 0),
(60456, 4470, 0, 0, 0, 0),
(60456, 4471, 0, 0, 0, 0),
(60456, 4497, 0, 0, 0, 0),
(60456, 4498, 0, 0, 0, 0),
(60456, 4599, 0, 0, 0, 0),
(60456, 8766, 0, 0, 0, 0),
(60456, 8952, 0, 0, 0, 0),
(60456, 11284, 0, 0, 0, 0),
(60456, 11285, 0, 0, 0, 0),
(60456, 15758, 0, 0, 0, 0),
-- Mabel 'The Hook' <Blacksmith>
(60457, 2880, 0, 0, 0, 0),
(60457, 2901, 0, 0, 0, 0),
(60457, 3466, 0, 0, 0, 0),
(60457, 3857, 0, 0, 0, 0),
(60457, 5956, 0, 0, 0, 0),
(60457, 18567, 0, 0, 0, 0),
-- One-Ear Nellie <Bartender>
(60458, 117, 0, 0, 0, 0),
(60458, 159, 0, 0, 0, 0),
(60458, 414, 0, 0, 0, 0),
(60458, 422, 0, 0, 0, 0),
(60458, 1179, 0, 0, 0, 0),
(60458, 1205, 0, 0, 0, 0),
(60458, 1645, 0, 0, 0, 0),
(60458, 1707, 0, 0, 0, 0),
(60458, 1708, 0, 0, 0, 0),
(60458, 2070, 0, 0, 0, 0),
(60458, 2287, 0, 0, 0, 0),
(60458, 2665, 1, 300, 0, 0),
(60458, 2678, 0, 0, 0, 0),
(60458, 2692, 0, 0, 0, 0),
(60458, 3770, 0, 0, 0, 0),
(60458, 3771, 0, 0, 0, 0),
(60458, 3927, 0, 0, 0, 0),
(60458, 4540, 0, 0, 0, 0),
(60458, 4541, 0, 0, 0, 0),
(60458, 4542, 0, 0, 0, 0),
(60458, 4544, 0, 0, 0, 0),
(60458, 4599, 0, 0, 0, 0),
(60458, 4601, 0, 0, 0, 0),
(60458, 8766, 0, 0, 0, 0),
(60458, 8932, 0, 0, 0, 0),
(60458, 8950, 0, 0, 0, 0),
(60458, 8952, 0, 0, 0, 0),
(60458, 17194, 1, 300, 0, 0),
(60458, 30817, 0, 0, 0, 0),
(60458, 40000, 0, 0, 0, 0),
-- 'Ale Saint' Grida <Brewer>
(60460, 83008, 0, 0, 0, 0),
(60460, 2686, 0, 0, 0, 0),
(60460, 17402, 0, 0, 0, 0);
-- Vil'do One-Tusk <Pirate Booty> sells junk will make later.

-- An Extravagent Book --
delete from quest_template where entry = 40153;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40153,2,409,52,45,0,0,'An Extravagent Book','<The barrel appears to still be held together quite well and looks to be quite sturdy. Upon searching further you find an extravagent book, it is certainly old, but still has golden thread on the spine. It has the label \'Great Virtue - Father Ben.\' written upon the front, perhaps this belongs to someone>.','Find the owner of the book.','Yes child? Are you here to learn about the light?','Oh... I had left this book upon an elvish vessel quite some time ago, you managed to recover it? I must say, I had considered this lost after the news of what happened, thank you so much my child, for returning this book.',60225,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60225,1,0,4650,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into gameobject_questrelation (id, quest) values (2010830, 40153);
replace into creature_involvedrelation (id, quest) values (91953, 40153);

update quest_template set requiredraces = 1101 where entry = 40153;
update creature_template set npc_flags = 3 where entry = 91953;

delete from item_template where entry = 60225;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60225,1134,'Great Virtue',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

delete from gameobject_template where entry = 2010830;
replace into gameobject_template (entry, type, displayid, size, name, flags, script_name) values (2010830, 2, 23262, 1, 'Half Buried Barrel', 32, '');

-- Wallowfin Claws --
delete from quest_template where entry = 40154;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40154,2,409,51,45,0,0,'Wallowfin Claws','Murlocs, the true dread to a fisherman on a rainy day especially when the water begins to get restless. The Wallowfin have been occupying the Wallowing Coast for some time now to the south east and have only been growing in numbers. I feel its only a matter of time before one of the sailors ends up getting attacked in a late night walk or some drunken stupor.\n\nTo look out for my lads I\'d like you you to go to the Wallowing coast and clear the bastards out. Ten claws should be just enough to at the least remind them we should not be bothered.','Travel to the Wallowing Coast and gather Wallowfin Claws for Sailor Percy in Caelan\'s Rest.','You have any trouble with those gilled freaks?','Splendid, I\'m sure everyone will be sleeping much easier from now on with less of those muckdwellers around, here, some coin for the trouble.',60226,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4750,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (92025, 40154);
replace into creature_involvedrelation (id, quest) values (92025, 40154);

delete from item_template where entry = 60226;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60226,1499,'Wallowfin Claw',12,1,2048,1,-1,-1,1,10,-1,-1,-1,-1,4,'',0);

update creature_template set loot_id = 91857 where entry = 91857;
update creature_template set loot_id = 91858 where entry = 91858;
update creature_template set loot_id = 91860 where entry = 91860;
update creature_template set loot_id = 91861 where entry = 91861;
update creature_template set loot_id = 91862 where entry = 91862;

replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values
(91857,60226,-40,1,1,0,10),
(91858,60226,-40,1,1,0,10),
(91860,60226,-40,1,1,0,10),
(91861,60226,-40,1,1,0,10),
(91862,60226,-40,1,1,0,10);

-- The Gor\'dosh Ogres --
delete from quest_template where entry = 40155;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40155,2,409,51,45,0,0,'The Gor\'dosh Ogres','The Gor\'dosh Ogres are a fearsome foe, they battled us almost constantly when we made landfall, but they have been driven back. It is only a matter of time before they are ready to strike again.\n\nNow that they are allied with Lapidis they have become even bolder upon the island, and must be stopped at any, and all costs. To the Northwest they have established quite a formidable force in an area known as Gor\'dosh Heights, travel there and kill them to end the bloodshed.','Slay 12 Gor\'dosh Brutes, 8 Gor\'dosh Ogres and 5 Gor\'dosh Shamans for Sergeant Blackwell in Caelan\'s Rest.','Brutality, that is all they know, and that is all they shall recieve.','With their numbers thinned, it will take them much longer to organize an attack. Your actions have helped us greatly, but still there is more to be done.',0,0,0,0,0,0,0,0,91849,12,91848,8,91851,5,0,0,0,0,0,4900,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (92005, 40155);
replace into creature_involvedrelation (id, quest) values (92005, 40155);

-- The Tyrant King --
delete from quest_template where entry = 40156;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40155,40156,2,409,53,46,0,0,'The Tyrant King','Spurred by their leader the Gor\'dosh may never leave us alone. The Tyrant King has gotten his name for being a rather intimidating brute who led the first attacks of ogres here. He is stubborn and doesn\'t even listen to the advice of his shamans or his wisest seers.\n\nIf the Gor\'dosh are truly to be stopped this Tyrant King must be eradicated and killed. You will find him within the Gor\'dosh heights, more then likely within their largest camp there. Venture forth, and make sure he can no longer cause us issues, bring me the crooked crown he wears upon his head.','Slay the Tyrant King, and bring his crown to Sergeant Blackwell in Caelan\'s Rest.','There is no diplomacy to be had, all that is left is to remove kill the king.','Such a crude thing, an ugly trophy it will make. With the Tyrant King removed, the Gor\'dosh will be splintered without leadership, and may truly never recover. Many thanks, you have done good work this day.',60227,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,11000,5300,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60228,1,60229,1,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (92005, 40156);
replace into creature_involvedrelation (id, quest) values (92005, 40156);

delete from item_template where entry = 60227;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60227,15492,'Tyrants Crown',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

delete from item_template where entry = 60228;
replace into item_template values
 ('60228', '0', '4', '2', 'Mantle of the Ogre Slayer', '', '25734', '2', '0', '1', '57068', '14267', '3', '-1', '-1', '58',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '6', '7', '4',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '114', '0', '0', '0',
 '0', '0', '0', '15464', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '1', '0', '0', '50', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);

delete from item_template where entry = 60229;
replace into item_template values
 ('60229', '0', '4', '2', 'Tyrant Cuffs', '', '28013', '2', '0', '1', '38012', '9503', '9', '-1', '-1', '58',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '7', '6', '3',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '0', '0', '9396', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '1', '0', '0', '30', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);

update creature_template set loot_id = 91853 where entry = 91853;

replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values
(91853,60227,-100,1,1,0,10);

-- Hazzuri Dark Vessels --
delete from quest_template where entry = 40157;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40157,2,409,54,45,0,0,'Hazzuri Dark Vessels','We come from the great city of Zul\'Hazu to the south west, it is where our ancestors called home. Though, now we are nothing more then outcasts, our people have turned away from the roots of our past. They are swayed by a great shadowy magic that taints their minds and twists them to madness. We primalists have lost our way in the past while, and with whispering shadows, and a great magic to wield, Chieftain Woh\'zo chose the darkness, over our heritage.\n\nOur people may have turned their back on us, but perhaps there may be a chance to save them. All across the city are Hazzuri Dark Vessels, they are hidden away in small baskets and pouches around the city. These Dark Vessels are used in ceremonies, rituals, and contain shadowy energies that can twist minds.\n\nGo into Zul\'Hazu, get me these Dark Vessels, but be careful mon, they wont let you in, and they wont just let you leave.','Gather 8 Hazzuri Dark Vessels, and bring them to Primalist Jongi in the Hazzuri Glade.','I would suggest bringing friends for such a task, the city will be hard to enter.','<Primalist Jongi lets a small sigh escape from him, and nods his head>. I know what I had to be done to gather these mon. It was neccesary for my people, and eventually, the wounds may heal once more. Thanks for what you have done.',60230,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10000,6000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (91867, 40157);
replace into creature_involvedrelation (id, quest) values (91867, 40157);

update quest_template set type = 1 where entry = 40157;

delete from item_template where entry = 60230;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60230,1257,'Hazzuri Dark Vessel',12,1,2048,1,-1,-1,1,8,-1,-1,-1,-1,4,'',0);

delete from gameobject_template where entry = 2010831;
replace into gameobject_template values
(2010831, 0, 3, 25452, 'Hazzuri Basket', 0, 4, 1, 43, 2010831, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

delete from gameobject_loot_template where entry = 2010831;
replace into gameobject_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (2010831,60230,-100,1,1,0,10);

-- Thunderhead Horn --
delete from quest_template where entry = 40158;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40158,2,409,52,45,0,0,'Thunderhead Horn','Welcome to the Hazzuri Glade, you be welcomed here, as long as you keep the peace. We have found ourselves on our own, and I am seeking ancient recipes and powers. Far away on the continent of Kalimdor, there is a place called Azshara. This place holds many secrets and great energies that I wish to harness here in Hazu.\n\nIn this place, there are hippogryphs that go by the name \'Thunderhead\' from these I desire one Pristine Thunderhead Horn. This horn shall help me , and the primalists greatly.','Gather 1 Pristine Thunderhead Horn for Head-Primalist Manaz\'ago in the Hazzuri Glade.','The Thunderhead I hear be a powerful creature, keep your wits about you.','<Manaz\'ago takes his time to inspect the horn, slowly cracking a grin>. This be it, this be the one, nice job outsider, you did me good. There still be more to do though if you be wanting to help.',60231,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5000,4800,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (91871, 40158);
replace into creature_involvedrelation (id, quest) values (91871, 40158);

delete from item_template where entry = 60231;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60231,1416,'Pristine Thunderhead Horn',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values
(6375,60231,-8,1,1,0,10),
(6377,60231,-9,1,1,0,10),
(6378,60231,-10,1,1,0,10),
(6379,60231,-12,1,1,0,10),
(6380,60231,-14,1,1,0,10);

-- Rumors of the Great Fire Plume --
delete from quest_template where entry = 40159;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40158,40159,2,409,55,45,0,0,'Rumors of the Great Fire Plume','Long ago I heard rumors of a deep jungle in a crater of the earth. It was filled with dinosaurs, raptors, and other massive, strange creatures that I have not seen. I long to visit such a paradise one day, but for now, it holds something I seek.\n\nIn this foreign landscape there be a great volcano at its center. It is holds some of the hottest substance in the world, and is protected by elemental beings of flame! From these very flaming elementals I seek a Pure Volcanic Ember, hot enough to burn for many long years. It is with this, that my people can regain access to magic that has been lost for a long time\n\nGo to this place, get me what I seek.','Bring a Pure Volcanic Ember to Head-Primalist Manaz\'ago in the Hazzuri Glade.','This jungle, you find it yet?','This be it mon, it radiates a heat that is almost unbearable, and when lit, should go up in a mighty fire hotter then anything we can produce. You done me well, and thank you mon, your efforts here may bring back our old magics.',60232,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5000,5600,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60233,1,60234,1,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (91871, 40159);
replace into creature_involvedrelation (id, quest) values (91871, 40159);

delete from item_template where entry = 60232;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60232,23727,'Pure Volcanic Ember',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into item_template values
 ('60233', '0', '4', '2', 'Hazzuri Primalist Headdress', '', '13259', '2', '0', '1', '64816', '16204', '1', '-1', '-1', '59',
 '', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '14', '7', '5',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '124', '0', '0', '0',
 '0', '0', '0', '9360', '1', '0', '0', '-1', '0', '-1', '7680', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '1', '0', '0', '50', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60234', '0', '4', '6', 'Hazzuri Primalist Defender', '', '23847', '2', '0', '1', '104416', '26104', '14', '-1', '-1', '59',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '4', '7', '2',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '33', '1826', '0', '0', '0',
 '0', '0', '0', '7517', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '1', '0', '0', '85', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);

replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values
(6520,60232,-5,1,1,0,10),
(6521,60232,-7,1,1,0,10);

-- Bengal Fangs --
delete from quest_template where entry = 40160;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40160,2,409,52,45,0,0,'Bengal Fangs','The Bengal Tigers of the region are a capable predator, one you should not dismiss easily mon. They stalk for their prey and attack with a vicious speed that cannot be matched. It is from these tigers that I have produced many a potent elixir.\n\nYou see, the Hazzuri use this battle elixir made from Bengal Fangs to enhance their battle capabilities. It is we the Primalists who came up with this long ago mon. Go out into the jungle, and gather me 5 Bengal Fangs, our camp needs some of this elixir.','Gather 5 Bengal Fangs for Primalist Palaz in the Hazzuri Glade.','You be havin\' trouble?','I expected the Bengals be to much for you, with these fangs I will be creating the elixirs for our people, thanks again mon.',60235,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4750,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (91869, 40160);
replace into creature_involvedrelation (id, quest) values (91869, 40160);

delete from item_template where entry = 60235;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60235,1227,'Bengal Fang',12,1,2048,1,-1,-1,1,5,-1,-1,-1,-1,4,'',0);

update creature_template set loot_id = 91825 where entry = 91825;
update creature_template set loot_id = 91826 where entry = 91826;
update creature_template set loot_id = 91827 where entry = 91827;
update creature_template set loot_id = 91828 where entry = 91828;

replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values
(91825,60235,-15,1,1,0,10),
(91826,60235,-44,1,1,0,10),
(91827,60235,-24,1,1,0,10),
(91828,60235,-34,1,1,0,10);

-- Hazu Leaf --
delete from quest_template where entry = 40161;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40161,2,409,52,45,0,0,'Hazu Leaf','On dis island there be a powerful herb that we use in many of our most ancient recipes mon. This herb has been harder to get since we left Zul\'Hazu and founded our own destiny. You see, hidin\' up here, we cannot leave the safety of the Glade for long.\n\nI speak of the Hazu Leaf, that only grows upon this island and can send someone who uses it into a dream like state. I need you to get us this mon, to help our ability to see things. You can find it all over the island, get me 10 of them, and that should be enough.','Gather 10 Hazu Leaf for Primalist Yango in the Hazzuri Glade.','Any luck finding Hazu Leaf out there mon?','Excellent work, without the Hazu Leaf it would be much harder to make many of the recipes that we do. That, and make it much harder to just as simply relax mon, take this, as a reward for my gratitude.',60236,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4800,0,0,0,0,0,0,0,0,0,0,0,60237,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (91870, 40161);
replace into creature_involvedrelation (id, quest) values (91870, 40161);

delete from item_template where entry = 60236;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60236,7346,'Hazu Leaf',12,1,2048,1,-1,-1,1,10,-1,-1,-1,-1,4,'',0);

replace into item_template values
 ('60237', '0', '4', '1', 'Shawl of the Hazu Leaf', '', '15820', '2', '0', '1', '52428', '13107', '5', '-1', '-1', '57',
 '52', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '12', '6', '6',
 '3', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '74', '0', '0', '6',
 '0', '0', '0', '21362', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '70', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);

delete from gameobject_template where entry = 2010832;
replace into gameobject_template values
(2010832, 0, 3, 27136, 'Hazu Leaf', 0, 4, 0.5, 43, 2010832, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

delete from gameobject_loot_template where entry = 2010832;
replace into gameobject_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (2010832,60236,-100,1,1,0,10);

-- The Evil Deeptide --
delete from quest_template where entry = 40162;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40162,2,408,52,45,0,0,'The Evil Deeptide','Hello! My name is Tinyfin, I was once apart of the Murlocs, all until we came here, and they joined with the slithery naga! They go by the name Deeptide now, and attack any who come near, they even stole my necklaces!\n\nThose were mine, that I made, and that I gave to friends, and they stole each and every one of them. I tried to ask nicely but they hurt me, and I want them back. Could you please, oh very please get me some my necklaces back? I don\'t need all of them, just a few, maybe six? I know that the other murlocs around here have them, so, make sure you ask nicely.','Collect 6 Lovely Shell Necklace\'s for Tinyfin in Gillijim\'s Island.','Any luck with getting back my Shell Necklace\'s?','They had it coming for stealing all of my stuff and being so mean to me! Thanks for getting some of them back, it means a lot, here, for the hard work, one for you!',60238,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4650,0,0,0,0,0,0,0,0,0,0,0,60239,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (92145, 40162);
replace into creature_involvedrelation (id, quest) values (92145, 40162);

delete from item_template where entry = 60238;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60238,9858,'Lovely Shell Necklace',12,1,2048,1,-1,-1,1,6,-1,-1,-1,-1,4,'',0);

replace into item_template values
 ('60239', '0', '4', '0', 'Tinyfin\'s Shell Necklace', '', '9858', '2', '0', '1', '27648', '6912', '2', '-1', '-1', '57',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '6', '16', '5', '5',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);

update creature_template set loot_id = 92159 where entry = 92159;
update creature_template set loot_id = 92160 where entry = 92160;

replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values
(92159,60238,-20,1,1,0,10),
(92160,60238,-25,1,1,0,10);

-- The Tower of Lapidis --
delete from quest_template where entry = 40163;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40163,2,409,55,45,0,0,'The Tower of Lapidis','The Tower of Lapidis looms over us like a great evil that could destroy us at any minute. When we first arrived upon this island the Arch Hydromancer Lapidis set to constructing a tower with the help of some of our workers and his own elementals of water. With his great power, the tower was constructed much before the town of Caelan\'s Rest had gotten its footing.\n\nWith his power he gained an alliance with both the trolls of Zul\'Hazu, and the ogres of the Gor\dosh Heights. He has been working against us since then, and has not spoken with us since the tower has been erected, guarded constantly by powerful water elementals, and sealed by a magical door.\n\nIf there is ever to be a hope for us, the Arch Hydromancer Lapidis must be slain. Flakereef was a fellow Hydromancer, and worked beneath Lapidis, if there is anyone who knows where to begin, it will be him.','Speak with Hydromancer Flakereef in Caelan\'s Rest.','Oh, yes, has the Colonel sent you?','So, we are finally doing something about Lapidis. It will be a tough task, given how powerful the man is.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,300,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (92002, 40163);
replace into creature_involvedrelation (id, quest) values (92001, 40163);

-- The Tower of Lapidis II --
delete from quest_template where entry = 40164;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40163,40164,2,409,55,45,0,0,'The Tower of Lapidis II','Arch Hydromancer Lapidis held incredibly skills in Hydromancy, and was much stronger then many even upon Boralus. Many had their opinions on how the man was able to achieve such power, though I always gave him the benefit of the doubt. I believe he has had some assistance from either a magical artifact, or an outside force, though I cannot prove my suspicions.\n\nRegardless, if there is a way in the tower, I would believe it to be this key. <Hydromancer Flakereef produces a small Shimmering Brass Key>.\n\nThis key was given to me by Lapidis before we had arrived, he entrusted it within my care, I was to be one of his pupils, but after he created the large tower, and began to close himself off from the rest I instead returned here. This key fits the lock to the tower, but cannot open it, and perhaps requires some magical attuning to grant access.\n\nWe must look to those with a greater knowledge of the Arcana, Archmage Ansirem Runeweaver of Dalaran may perhaps help, seek him out.','Bring the Shimmering Brass Key to Archmage Ansirem Runeweaver in Dalaran.','What brings you to Dalaran?','Hydromancer Lapidis, I have heard the name from before the horrific Third War. He was spoken as one of the most powerful of his kind. He refused to give us a lesson within Dalaran of his great magics, or to at the least, show us how it was done.',60240,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60240,1,0,300,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (92001, 40164);
replace into creature_involvedrelation (id, quest) values (2543, 40164);

delete from item_template where entry = 60240;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60240,9153,'Shimmering Brass Key',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'Lightly shimmers with dim magic',0);

-- The Tower of Lapidis III --
delete from quest_template where entry = 40165;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40164,40165,2,409,55,45,0,0,'The Tower of Lapidis III','Lapidis was always an interesting, if strange man, at the time we hadn\'t considered his refusal to our curiosity as something potentially bad. But hearing of what he has done upon Lapidis Isle has certainly shifted my opinion. n\n<Ansirem Runeweaver studies the Shimmering Brass Key>. It would appear that this key still has lingering of magic upon it. It is possible to reconstruct the enchantment, but may take considerable power and regeants to do so. If the key is to work upon the lock as suggested, it will need to be both attuned, and enchanted to the magic that once powered it.\n\nIt is within my power to enchant this key with the same magic that once powered it. The coast of Feralas is covered in water elementals. Bring me a Pure Aqua Orb from one of them, it should be sufficient and powerful enough to mimic the magic of the key.','Gather a Pure Aqua Orb from Water Elementals in Feralas, and bring it to Archmage Ansirem Runeweaver.','Has the orb been obtained?','Excellent work, with this orb I can begin to work with the magic of this key to replicate some of the traces that are present.',60241,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4750,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (2543, 40165);
replace into creature_involvedrelation (id, quest) values (2543, 40165);

delete from item_template where entry = 60241;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60241,13103,'Pure Aqua Orb',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values
(5461,60241,-9,1,1,0,10),
(5462,60241,-9,1,1,0,10);

-- The Tower of Lapidis IV --
delete from quest_template where entry = 40166;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40165,40166,2,409,55,45,0,0,'The Tower of Lapidis IV','Now, to begin, I will transmute some of the energy from the Pure Aqua Orb and enchant the key with the magic that once was present. This may take a few moments to do, and I require precise concentration. Give me but a moment, and I will be done.','Wait for Archmage Ansirem Runeweaver to finish his magic.','I think I\'ve done it.','There.. It is done, the key has had its magical properties manipulated, and should contain similar enchantment.',0,0,0,0,0,0,0,0,60327,1,0,0,0,0,0,0,0,0,0,400,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Archmage Ansirem finished enchanting');

replace into creature_questrelation (id, quest) values (2543, 40166);
replace into creature_involvedrelation (id, quest) values (2543, 40166);

delete from creature_template where entry = 60327;
replace into creature_template (entry, name, display_id1) values (60327, 'quest_40166_dummy_triger', 328);

-- The Tower of Lapidis V --
delete from quest_template where entry = 40167;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40166,40167,2,409,55,45,0,0,'The Tower of Lapidis V','With the key enchanted, one piece of the puzzle has been put into place. I however, do not possess the skillset able to give this key an attunement of that who created it. The power that once attuned this key is incredibly potent, and complex, and will need someone of greater skill then I to do this. You may return the key to Hydromancer Flakereef, perhaps he may know of another.','Return the Enchanted Brass Key to Hydromancer Flakereef.','Have you learned anything new about the key?','Hmm. So there is still more to be done, who knew that Lapidis had such potent magic that not even Dalaran could crack it. There must be some other way.',60242,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60242,1,0,400,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (2543, 40167);
replace into creature_involvedrelation (id, quest) values (92001, 40167);

delete from item_template where entry = 60242;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60242,9153,'Enchanted Brass key',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'Swirls with powerful arcana',0);