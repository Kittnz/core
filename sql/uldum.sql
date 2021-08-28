-- Reserved.
-- quest_template			40000-40200
-- creature_template		60300-60500
-- gameobject_template		2010700-2010900
-- item_template			60000-60200


delete from quest_template where entry = 40100;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (0,40100,2,1537,60,58,0,0,'Unusual Partnership','There you are $N! I know it took quite a while, but we finally have new information on the missing plates of Uldum.\n\nWell, when I say that we “have” something, I mean we found someone who might be able to get it for us. She is a smuggler named Vess, at least I think that\'s what she calls herself these days. Anyways, I have arranged for you to meet her at the Booty Bay inn.\n\nOnce you go there, make sure to get on her good side, as I doubt we will get another chance like this.','High Explorer wants you to locate his contact Vess in the Booty Bay Inn.','Yes?','Ah, I assume you are the famous $N of whom I heard so much about, a pleasure to meet you. You can call me Vess.\n\nI understand that you need something from me, as it so happens, I also need something from you. So shall we talk business?',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,660,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (5387, 40100);
replace into creature_involvedrelation (id, quest) values (60400, 40100);

delete from quest_template where entry = 40101;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (40100,40101,2,35,60,58,0,0,'Original Owner','Here is the deal, sweetcheeks. Once upon a time, not so long ago, a not-so-smart pirate by the name of Bannor thought he could double-cross me and get away with it.\n\nWell, you see, no one double-crosses me. So in exchange for me finding the location of your precious plates, I need you to end his miserable life and kindly retrieve my locket from his possession.\n\nHe has a camp on an island east of here, so that\'s most likely where you will find him. And don\'t worry, I will have what you seek by the time you return. So, do we have a deal?','Search island east of Booty Bay and retrieve Vess\'s locket from the pirate Bannor.','Your still here? Don\'t tell me that you are scared of few pirates.','I will assume that you and Magellas didn\'t know what you got me into by sending me after those damned plates. I should have sent you to rob the royal treasury of Stormwind instead of giving you a menial task such as Bannor.\n\nBut a deal is a deal, and the Black Rose always holds up to her end of the bargain.',60100,1,0,0,0,0,0,0,60401,1,0,0,0,0,0,0,0,0,0,6600,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (60400, 40101);
replace into creature_involvedrelation (id, quest) values (60400, 40101);

delete from quest_template where entry = 40102;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (40101,40102,2,35,60,58,0,0,'What Lurks In The Dark','Listen, I like you, sweetcheeks. Which, is the reason I will give you this information as a bonus. It appears that I was not the only one looking into your damned plates.\n\nA cult of some kind was also after them. And believe me when I tell you that they are the kind of people you do not wish to have as enemies.\n\n<Vess hands you the letter>.\n\nHere is the information your High Explorer seeks. While I enjoy spending time with you, I have other business to attend to, so off with you now.','Bring the information from Vess to High Explorer in the Hall of Explorers.','$N I sure damn hope that you have good news for me because it appears that the Horde is on the move as well.','<Reads the letter>.\n\nShave my beard and call me an Elf. How in the world did she manage this? Ahm… I mean, this is more than good news $N, we know the exact locations of the missing plates. And what is this mentioning of a cult?',60101,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60101,1,15000,660,47,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (60400, 40102);
replace into creature_involvedrelation (id, quest) values (5387, 40102);

delete from quest_template where entry = 40103;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (40102,40103,2,1537,60,58,0,0,'The Race','So not only the Horde, but now we have to worry about some damned cult as well? Uh, I must say I don\'t like this, but this is only one more reason why we must acquire plates before anyone else. Who knows what secrets Uldum hides.\n\n<He pulls out a map and points to a place in the northern mountains of Un\'goro Crater>.\n\nIf what Vess found out is true, then the first piece of the set should be right at this location. While you are busy with this task, I will prepare a well-armed expedition to search for the second piece at the Swamp of Sorrows.','Disable 6 Altar Guardians at Titans Ruined Altar in North Un\'goro Crater and bring the Plate of Uldum to High Explorer Magellas at Ironforge.','<Magellas appears not to notice you as he mumbles to himself>.','Your back! And you have the first plate as well. Finally, some good news, I was starting to think that I\'m cursed with some bad luck.',60102,1,0,0,0,0,0,0,60402,6,0,0,0,0,0,0,0,0,30000,6600,47,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (5387, 40103);
replace into creature_involvedrelation (id, quest) values (5387, 40103);

delete from quest_template where entry = 40104;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (40103,40104,2,1537,60,58,0,0,'The Missing Expedition','Something is not right $N. There is still no word of the expedition that I have sent.\n\nWhile I try to keep my optimism high, I can feel that something\'s wrong. I hate to ask this of you as you have done so much already, but you are the only one I can rely on getting this done.\n\nPlease, go to The Swamp of Sorrows and find out what happened to my people. The location Vess marked for us points towards the southeastern part of the swamps along the mountains.','High Explorer Magellas wants you to search for his missing Expedition in the Eastern part of The Swamp of Sorrows.','$N?','We…\n\n <Coughs>.\n\nWe were trying to come to an agreement with the Horde about the plates when those monsters fell upon us. They slew both our brethren and the Horde with such ease.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,660,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (5387, 40104);
replace into creature_involvedrelation (id, quest) values (60403, 40104);

delete from quest_template where entry = 40105;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (40104,40105,2,8,60,58,0,0,'Pride of The Dwarves','I never begged in my life $r but I will now. Please avenge us and show those bastards what happens when you make an enemy of the Alliance! They. <Coughs>. Went north of here.\n\nFor Khaz Mo...','Slay 4 Twilight Cultists and retrieve the Second Plate of Uldum north of the "Temple of Old". Return to High Explorer Magellas with the plate and news of his expedition.','Any news?','So that\'s what happened. I should have taken Vess\'s warning more seriously.\n\nBy Muradins beard, I hope that you killed every last one of them. But what of the plate? Tell me that Grungis sacrifice and the sacrifice of his man weren\'t for nothing.',60103,1,0,0,0,0,0,0,60404,1,60405,1,60406,1,60407,1,0,0,30000,6600,47,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (60403, 40105);
replace into creature_involvedrelation (id, quest) values (5387, 40105);

delete from quest_template where entry = 40106;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (40105,40106,2,1537,60,58,0,0,'Gates of Uldum','So we finally have the full set. Then there is only one thing left for us to do. It is time to unlock Uldum and find out what secrets it holds.\n\nAfter all, you have done $n, I think you should have the honor of being the first one to enter. From what we have seen at Uldaman, I doubt that this endeavor will prove to be simple, which is why I think you should find adventures who are willing to accompany you on this journey.\n\nI would be happy to join you myself, but there is still the matter of telling the grim news to the families of the expedition.','Head to the Valley of the Watcher in Tanaris and activate the Pedestal in front of the gate by using the Plates of Uldum.','<The pedestal appears dormant>','<I should get ready. Once I activate the pedestal, who knows what awaits inside.>',60102,1,60103,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,660,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (5387, 40106);
replace into gameobject_involvedrelation (id, quest) values (142343, 40106);

delete from quest_template where entry = 40107;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (40106,40107,2,440,60,58,0,0,'Gate Keeper','As you place the plates on the pedestal, a sudden burst of light suddenly surrounds the pedestal\n\nInitiating unlock sequence.\n\nPlates present, scanning for item validation.\n\nPlates authentication complete, unlocking the gates.\n\nActivating Gate Keeper to greet the guests.','Defeat Ostarius. Return to the Hall of Explorers and inform High Explorer Magellas about the events that occurred at the gate.','Yes?','And the prodigy returns, in one piece too. I\'m glad to see you $n, so how did it go?\n\n<Magellas listens to your story with eyes wide open>\n\nYou fought what? And the Gate has been locked again? Marvelous. Well, not the part about Uldum getting locked again. But imagine what awaits us inside if the entrance alone was that exciting.\n\nNow we can inspect the second lock, and who knows, maybe one day make it into the Uldum itself. But don\'t think for a second that I forgot about your reward. Here I think you have more than earned this.',60102,1,60103,1,0,0,0,0,80935,1,0,0,0,0,0,0,0,0,50000,9950,47,250,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into gameobject_questrelation (id, quest) values (142343, 40107);
replace into creature_involvedrelation (id, quest) values (5387, 40107);

delete from quest_template where entry = 40108;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (0,40108,2,1638,60,58,0,0,'The Lone Wolf','The time has come $n. A new path has been shown to me by The Earth Mother. What was once lost must be found again. The shards of this vision still echo in my mind $c. Travel to the North Barrens and seek out a powerful Farseer Logrash amongst the mountains west of Durotar. Only with his help will we be able to locate the missing plates of Uldum. go now, and my The Earth Mother guide your path.','Sage Truth Seeker wants you to search for the Farseer Logrash in the Northern part of Barrens.','I was wondering when you would show up. Speak up then.?','So, Truthseeker sends his emissary. I tend to avoid meddling in the affairs of the Horde, but I own my life to the Sage, so you have my ear $n.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,660,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (3978, 40108);
replace into creature_involvedrelation (id, quest) values (60408, 40108);

delete from quest_template where entry = 40109;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (40108,40109,2,17,60,58,0,0,'Scars of the Past','Four years ago, I was betrayed by my own people for refusing to do the very same thing that doomed us in the first place, drinking the blood of a demon Mannaroth. If not for my companion Korvir and Truthseeker, my body would have rotted away in the forests of Ashenvale.\n\n<Logrash caresses the scars on his chest with a painful expression>.\n\nThe spirits whisper of a Demon scum called Naxiar hiding around the eastern lakes of Ashenvale. If you wish to have my aid, I need you to kill him and retrieve my wolf totem.','Kill Naxiar in the Eastern Ashenvale and bring back the wolf totem to Logrash in Barrens.','How goes the hunt?','Mok\'ra $n. I\'m assuming that the accursed Demon is dead. Good, his ilk does not deserve anything more than death. Though my rage towards them runs deep, revenge was not my only motive.',60104,1,0,0,0,0,0,0,60409,1,0,0,0,0,0,0,0,0,0,6600,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (60408, 40109);
replace into creature_involvedrelation (id, quest) values (60408, 40109);

delete from quest_template where entry = 40110;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (40109,40110,2,17,60,58,0,0,'Unseen Enemy','This totem will help me enter a deeper state of trance and allow me to commune with the spirits of old. With their help, we might be able to locate your missing plates.\n\n<Logrash begins his ritual, and his eyes turn pale>.\n\nBah, I forgot how taxing this ritual is. The plates you seek are immensely powerful $n, show this message to the Truthseeker he will understand where to send you next. But be warned, it appears that we are not the only ones looking for the plates. Someone or something dark is on the trail as well.','Logrash wants you to travel to Thunder Bluff and bring the Inscribed Boar Pelt to Sage Truth Seeker.','Any news $n?','The winds guided you back to me $n. I\'m glad to hear that my friend is still alive and well. A letter, you say? Show me.\n\n<The Sage reads the letter, and a grin shows up on his face>.\n\nAh, words of a long-lost friend bring warmth to my heart $c, but how did he manage to locate the exact location of the plates, and what is this talk about the danger ahead?',60105,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60105,1,15000,660,81,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (60408, 40110);
replace into creature_involvedrelation (id, quest) values (3978, 40110);

delete from quest_template where entry = 40111;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (40110,40111,2,1638,60,58,0,0,'In a Rush','The path ahead is clear now, friend. With both locations revealed, it is time to act. I will gather a war party of Horde\'s finest warriors to secure one of the plates at The Swamp of Sorrows while you make your way to the northern mountains of Un\'goro Crater and recover the other plate.\n\n<Sage rubs his chin>.\n\nBut the grave news Logrash spoke of still trouble my mind. Be careful, friend, and may the Earthmother watch over you.','Disable 6 Altar Guardians at Titans Ruined Altar in North Un\'goro Crater and bring the Plate of Uldum to Sage Truthseeker at Thunder Bluff.','Is there something you need?','Your back! And you have the plate with you as well. The Sun shines upon us today.',60102,1,0,0,0,0,0,0,60402,6,0,0,0,0,0,0,0,0,30000,6600,81,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (3978, 40111);
replace into creature_involvedrelation (id, quest) values (3978, 40111);

delete from quest_template where entry = 40112;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (40111,40112,2,1638,60,58,0,0,'Disturbing Silence','While I\'m glad to see you return, I feel a disturbance in the air. The war party that I have to send to The Swamp of Sorrows has not returned, nor did they send any message. Logrash\'s warning still circles my mind.\n\n$n you have done so much already for us, but I would ask you to check on the war party. The location Logrash marked for us points us towards the southeastern part of the swamps along the mountains.\n\nMaybe this is just an old man worrying, but I cannot shake this feeling of unease.','Sage Truthseeker wants you to search for his missing War Party in the Eastern part of The Swamp of Sorrows.','It be you $n.','We were trying to negotiate with the Alliance when they attacked. The madman\'s fought with the power I have never seen.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,660,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (3978, 40112);
replace into creature_involvedrelation (id, quest) values (60410, 40112);

delete from quest_template where entry = 40113;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (40112,40113,2,8,60,58,0,0,'Might of the Horde','Hahaha, this be not the death I thought I would end up with, but Bwonsamdi appears to have other plans for me.\n\n<Cough, cough>.\n\nI lived a life with no regrets <name>, until now. I ask this of you, friend. Go north of here after those bastards and show them that if it be the war they seek, then the Horde will stand against them.\n\nLok-Tar... Ogar.','Slay 4 Twilight Cultists, and retrieve the Second Plate of Uldum north of the "Temple of Old." Return to Sage Truthseeker with the second plate and news of his expedition.','You return, what did you find?','Dead? All of them? This... this is my fault for not listening to the warning of the spirits.\n\nThey will be remembered as the true warriors of the Horde. But what of the plates $n, tell me that the lives of our friends were not sacrificed for nothing.',60103,1,0,0,0,0,0,0,60404,1,60405,1,60406,1,60407,1,0,0,30000,6600,81,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (60410, 40113);
replace into creature_involvedrelation (id, quest) values (3978, 40113);

delete from quest_template where entry = 40114;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (40113,40114,2,1638,60,58,0,0,'Uldum Awaits','The time has come, it is as the Earthmother told me. We have no idea what we might find in Uldum. And if there are dangerous factions that seek to enter as well. Then all the more reason for us to take extreme precautions.\n\nI urge you to avoid the mistake I have made with the war party. Before you go, find trustworthy allies who would accompany you to the gates. There is no telling what awaits you there. And I. I will be working on putting our friends to rest. It is the least I can do to atone for my mistake. Go now, and may the winds be ever at your back.','Head to the Valley of the Watcher in Tanaris and activate the Pedestal in front of the gate by using the Plates of Uldum.','<The pedestal appears dormant>.','<I should get ready. Once I activate the pedestal, who knows what awaits inside>.',60102,1,60103,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,660,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (3978, 40114);
replace into gameobject_involvedrelation (id, quest) values (142343, 40114);

delete from quest_template where entry = 40115;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (40114,40115,2,440,60,58,0,0,'Guardian of the Gate','As you place the plates on the pedestal, a sudden burst of light suddenly surrounds the pedestal\n\nInitiating unlock sequence.\n\nPlates present, scanning for item validation.\n\nPlates authentication complete, unlocking the gates.\n\nActivating Gate Keeper to greet the guests.','Defeat Ostarius. Return to the Thunder Bluff and inform Sage Truthseeker about the events that occurred at the gate.','How are you, my friend?','This only shows that there is much we need to learn. Between the gatekeeper that you have fought and the new lock on the gate, it would appear that we have work cut out for us. I can only imagine what secrets Uldum hides inside. But $n, that is the story for another time. You have done for us more than you can imagine, and for that, you have my eternal gratitude. I know that there will come a day when we will have to ask you for assistance again. Until then, I want you to have this for all you had to go through to help us.',60102,1,60103,1,0,0,0,0,80935,1,0,0,0,0,0,0,0,0,50000,9950,47,250,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into gameobject_questrelation (id, quest) values (142343, 40115);
replace into creature_involvedrelation (id, quest) values (3978, 41015);

delete from creature_template where entry = 60400;
replace into creature_template (entry, display_id1, name, subname, level_min, level_max, health_min, health_max, armor, faction, npc_flags, speed_walk, speed_run, detection_range, call_for_help_range, xp_multiplier, dmg_min, dmg_max, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, unit_class, unit_flags, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, loot_id, gold_min, gold_max, movement_type, inhabit_type, regeneration, flags_extra) values (60400,6435,'Vess','Black Rose',50,50,2768,2768,2999,120,2,1,1.14,20,5,1,85,109,226,1,2000,2000,1,512,67,92,100,7,0,0,0,0,3,3,10);

delete from creature_template where entry = 60401;
replace into creature_template (entry, equipment_id, display_id1, name, level_min, level_max, health_min, health_max, armor, faction, npc_flags, speed_walk, speed_run, detection_range, call_for_help_range, xp_multiplier, dmg_min, dmg_max, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, unit_class, unit_flags, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, loot_id, gold_min, gold_max, movement_type, inhabit_type, regeneration, flags_extra) values (60401,11867,797,'Bannor',60,60,3997,4120,3640,16,0,1,1.14,20,5,1,104,130,272,1,2000,2000,1,0,72,99,100,7,60401,136,183,0,3,3,0);

delete from creature_template where entry = 60402;
replace into creature_template (entry, display_id1, name, level_min, level_max, health_min, health_max, armor, faction, npc_flags, speed_walk, speed_run, detection_range, call_for_help_range, xp_multiplier, dmg_min, dmg_max, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, unit_class, unit_flags, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, loot_id, gold_min, gold_max, movement_type, inhabit_type, regeneration, flags_extra, phase_quest_id) values (60402,8395,'Stone Guardian',60,60,3997,4120,3640,16,0,1,1.14,20,5,1,104,130,272,1,2000,2000,1,0,72,99,100,7,6560,136,183,0,3,3,0,0);

delete from creature_template where entry = 60403;
replace into creature_template (entry, equipment_id, display_id1, name, subname, level_min, level_max, health_min, health_max, armor, faction, npc_flags, speed_walk, speed_run, detection_range, call_for_help_range, xp_multiplier, dmg_min, dmg_max, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, unit_class, unit_flags, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, loot_id, gold_min, gold_max, movement_type, inhabit_type, regeneration, flags_extra) values (60403,14365,14405,'Grungi','Expedition Leader',55,55,2768,2768,2999,57,2,1,1.14,20,5,1,85,109,226,1,2000,2000,1,512,67,92,100,7,0,0,0,0,3,0,10);

delete from creature_template where entry = 60404;
replace into creature_template (entry, equipment_id, display_id1, name, subname, level_min, level_max, health_min, health_max, armor, faction, npc_flags, speed_walk, speed_run, detection_range, call_for_help_range, xp_multiplier, dmg_min, dmg_max, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, unit_class, unit_flags, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, loot_id, gold_min, gold_max, movement_type, inhabit_type, regeneration, flags_extra, phase_quest_id) values (60404,11881,14526,'Dietmar Onlooker','Cultist\'s Leader',60,60,3997,4120,3640,16,0,1,1.14,20,5,1,104,130,272,1,2000,2000,1,0,72,99,100,7,60404,136,183,0,3,3,0,0);

delete from creature_template where entry = 60405;
replace into creature_template (entry, display_id1, name, level_min, level_max, health_min, health_max, armor, faction, npc_flags, speed_walk, speed_run, detection_range, call_for_help_range, xp_multiplier, dmg_min, dmg_max, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, unit_class, unit_flags, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, loot_id, gold_min, gold_max, movement_type, inhabit_type, regeneration, flags_extra, phase_quest_id) values (60405,4939,'Zokk Flamefist',60,60,3997,4120,3640,16,0,1,1.14,20,5,1,104,130,272,1,2000,2000,1,0,72,99,100,7,0,136,183,0,3,3,0,0);

delete from creature_template where entry = 60406;
replace into creature_template (entry, equipment_id, display_id1, name, level_min, level_max, health_min, health_max, armor, faction, npc_flags, speed_walk, speed_run, detection_range, call_for_help_range, xp_multiplier, dmg_min, dmg_max, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, unit_class, unit_flags, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, loot_id, gold_min, gold_max, movement_type, inhabit_type, regeneration, flags_extra, phase_quest_id) values (60406,11881,6702,'Wahjez\'fon',60,60,3997,4120,3640,16,0,1,1.14,20,5,1,104,130,272,1,2000,2000,1,0,72,99,100,7,0,136,183,0,3,3,0,0);

delete from creature_template where entry = 60407;
replace into creature_template (entry, display_id1, name, level_min, level_max, health_min, health_max, armor, faction, npc_flags, speed_walk, speed_run, detection_range, call_for_help_range, xp_multiplier, dmg_min, dmg_max, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, unit_class, unit_flags, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, loot_id, gold_min, gold_max, movement_type, inhabit_type, regeneration, flags_extra, phase_quest_id) values (60407,11824,'Jovany Staunch',60,60,3997,4120,3640,16,0,1,1.14,20,5,1,104,130,272,1,2000,2000,1,0,72,99,100,7,0,136,183,0,3,0,0,0);

delete from creature_template where entry = 60408;
replace into creature_template (entry, display_id1, name, subname, level_min, level_max, health_min, health_max, armor, faction, npc_flags, speed_walk, speed_run, detection_range, call_for_help_range, xp_multiplier, dmg_min, dmg_max, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, unit_class, unit_flags, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, loot_id, gold_min, gold_max, movement_type, inhabit_type, regeneration, flags_extra) values (60408,4364,'Logrash','The Lone Wolf',50,50,2768,2768,2999,29,2,1,1.14,20,5,1,85,109,226,1,2000,2000,1,512,67,92,100,7,0,0,0,0,3,3,10);

delete from creature_template where entry = 60409;
replace into creature_template (entry, equipment_id, display_id1, name, level_min, level_max, health_min, health_max, armor, faction, npc_flags, speed_walk, speed_run, detection_range, call_for_help_range, xp_multiplier, dmg_min, dmg_max, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, unit_class, unit_flags, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, loot_id, gold_min, gold_max, movement_type, inhabit_type, regeneration, flags_extra, scale) values (60409,11792,12334,'Naxiar',60,60,3997,4120,3640,16,0,1,1.14,20,5,1,104,130,272,1,2000,2000,1,0,72,99,100,7,60409,136,183,0,3,3,0,1.3);

delete from creature_template where entry = 60410;
replace into creature_template (entry, equipment_id, display_id1, name, subname, level_min, level_max, health_min, health_max, armor, faction, npc_flags, speed_walk, speed_run, detection_range, call_for_help_range, xp_multiplier, dmg_min, dmg_max, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, unit_class, unit_flags, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, loot_id, gold_min, gold_max, movement_type, inhabit_type, regeneration, flags_extra) values (60410,3615,4239,'Re\’than','Leader of War Party',55,55,2768,2768,2999,65,2,1,1.14,20,5,1,85,109,226,1,2000,2000,1,512,67,92,100,7,0,0,0,0,3,0,10);

delete from creature_template where entry = 60411;
replace into creature_template (entry, display_id1, name, subname, level_min, level_max, health_min, health_max, armor, faction, npc_flags, speed_walk, speed_run, detection_range, call_for_help_range, xp_multiplier, dmg_min, dmg_max, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, unit_class, unit_flags, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, loot_id, gold_min, gold_max, movement_type, inhabit_type, regeneration, flags_extra, scale) values (60411,903,'Korvir','Logrash\'s Companion',50,50,2768,2768,2999,29,2,1,1.14,20,5,1,85,109,226,1,2000,2000,1,512,67,92,100,7,0,0,0,0,3,3,10,1.1);

delete from creature_template where entry = 60412;
replace into creature_template (entry, display_id1, name, level_min, level_max, health_min, health_max, armor, faction, npc_flags, speed_walk, speed_run, detection_range, call_for_help_range, xp_multiplier, dmg_min, dmg_max, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, unit_class, unit_flags, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, loot_id, gold_min, gold_max, movement_type, inhabit_type, regeneration, flags_extra, scale) values (60412,4442,'Korvir\'s Prey',20,20,2768,2768,2999,0,2,1,1.14,20,5,1,85,109,226,1,2000,2000,1,512,67,92,100,7,0,0,0,0,3,0,10,0.7);

delete from creature_template where entry = 60413;
replace into creature_template (entry, display_id1, name, level_min, level_max, health_min, health_max, armor, faction, npc_flags, speed_walk, speed_run, detection_range, call_for_help_range, xp_multiplier, dmg_min, dmg_max, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, unit_class, unit_flags, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, loot_id, gold_min, gold_max, movement_type, inhabit_type, regeneration, flags_extra, scale) values (60413,4843,'The Tortured Elf',20,20,2768,2768,2999,0,2,1,1.14,20,5,1,85,109,226,1,2000,2000,1,512,67,92,100,7,0,0,0,0,3,0,10,1.0);

delete from creature_template where entry = 60414;
replace into creature_template (entry, display_id1, name, subname, level_min, level_max, health_min, health_max, armor, faction, npc_flags, speed_walk, speed_run, detection_range, call_for_help_range, xp_multiplier, dmg_min, dmg_max, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, unit_class, unit_flags, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, loot_id, gold_min, gold_max, movement_type, inhabit_type, regeneration, flags_extra, scale) values (60414,4442,'Tulu','Re\'than\'s War Raptor',50,50,2768,2768,2999,29,2,1,1.14,20,5,1,85,109,226,1,2000,2000,1,512,67,92,100,7,0,0,0,0,3,0,10,1.1);

delete from creature_template where entry = 60415;
replace into creature_template (entry, display_id1, name, level_min, level_max, health_min, health_max, armor, faction, npc_flags, speed_walk, speed_run, detection_range, call_for_help_range, xp_multiplier, dmg_min, dmg_max, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, unit_class, unit_flags, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, loot_id, gold_min, gold_max, movement_type, inhabit_type, regeneration, flags_extra, scale) values (60415,1311,'Fallen Warrior',50,50,2768,2768,2999,29,2,1,1.14,20,5,1,85,109,226,1,2000,2000,1,512,67,92,100,7,0,0,0,0,3,0,10,1.1);

delete from creature_template where entry = 60416;
replace into creature_template (entry, equipment_id, display_id1, name, level_min, level_max, health_min, health_max, armor, faction, npc_flags, speed_walk, speed_run, detection_range, call_for_help_range, xp_multiplier, dmg_min, dmg_max, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, unit_class, unit_flags, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, loot_id, gold_min, gold_max, movement_type, inhabit_type, regeneration, flags_extra, scale) values (60416,3296,1874,'Fallen Warrior',50,50,2768,2768,2999,29,2,1,1.14,20,5,1,85,109,226,1,2000,2000,1,512,67,92,100,7,0,0,0,0,3,0,10,1.1);

delete from creature_template where entry = 60417;
replace into creature_template (entry, equipment_id, display_id1, name, level_min, level_max, health_min, health_max, armor, faction, npc_flags, speed_walk, speed_run, detection_range, call_for_help_range, xp_multiplier, dmg_min, dmg_max, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, unit_class, unit_flags, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, loot_id, gold_min, gold_max, movement_type, inhabit_type, regeneration, flags_extra) values (60417,3296,3525,'Fallen Soldier',55,55,2768,2768,2999,57,2,1,1.14,20,5,1,85,109,226,1,2000,2000,1,512,67,92,100,7,0,0,0,0,3,0,10);

delete from creature_template where entry = 60418;
replace into creature_template (entry, equipment_id, display_id1, name, level_min, level_max, health_min, health_max, armor, faction, npc_flags, speed_walk, speed_run, detection_range, call_for_help_range, xp_multiplier, dmg_min, dmg_max, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, unit_class, unit_flags, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, loot_id, gold_min, gold_max, movement_type, inhabit_type, regeneration, flags_extra) values (60418,68,3167,'Fallen Soldier',55,55,2768,2768,2999,0,2,1,1.14,20,5,1,85,109,226,1,2000,2000,1,512,67,92,100,7,0,0,0,0,3,0,10);

update creature_template set script_name = 'npc_high_explorer_magellas' where entry = 5387;

delete from gameobject_template where entry = 2010800;
replace into gameobject_template (entry, type, displayid, size, name, flags, data0, data1, data3) values (2010800,3,27184,1,'Pedestal',4,43,2010800,1);

delete from item_template where entry = 60100;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description) values (60100,609,'Family Locket',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'A necklace with an old family crest engraved on it');

delete from item_template where entry = 60101;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description) values (60101,811,'Sealed Scroll',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4, 'Tightly sealed information for the High Explorer.');

delete from item_template where entry = 60102;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description) values (60102,40146,'Plate of Uldum',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4, 'The plate radiates with power as you hold it');

delete from item_template where entry = 60103;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description) values (60103,16265,'Second Plate of Uldum',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4, 'The plate radiates with power as you hold it');

delete from item_template where entry = 60104;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description) values (60104,50462,'Wolf Totem',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'Thou battered and scarred the totem still brims with energy');

delete from item_template where entry = 60105;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description) values (60105,21470,'Inscribed Boar Pelt',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'A boar pelt with Logrash\'s message inscribed on it');

delete from creature where id = 60400;
replace into creature (id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, movement_type, patch_max) values (60400,0,-14448.299609,504.408997,21.677200,0.564129,300,300,3,100,0,10);

delete from creature where id = 60401;
replace into creature (id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, movement_type, patch_max) values (60401,0,-14765.231445,-331.874207,2.795885,2.60,300,300,3,100,0,10);

delete from creature where id = 60402;
replace into creature (id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, movement_type, patch_max) values (60402,1,-6172.458496,-1580.704956,-206.885834,0.91,300,300,3,100,0,10);

replace into creature (id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, movement_type, patch_max) values (60402,1,-6164.000000,-1580.802368,-205.810501,2.00,300,300,3,100,0,10);

replace into creature (id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, movement_type, patch_max) values (60402,1,-6159.399414,-1573.935181,-205.954712,3.07,300,300,3,100,0,10);

replace into creature (id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, movement_type, patch_max) values (60402,1,-6163.561523,-1567.371094,-209.534592,4.17,300,300,3,100,0,10);

replace into creature (id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, movement_type, patch_max) values (60402,1,-6175.191895,-1573.817139,-210.744019,0.00,300,300,3,100,0,10);

replace into creature (id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, movement_type, patch_max) values (60402,1,-6171.748535,-1566.871948,-212.277679,5.35,300,300,3,100,0,10);

delete from creature where id = 60403;
replace into creature (id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, movement_type, patch_max) values (60403,0,-10887.811523,-3870.185303,22.642441,3.95,300,300,3,1,0,10);

delete from creature where id = 60404;   
replace into creature (id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, movement_type, patch_max) values (60404,0,-10241.998,-3833.001,18.980,1.38,300,300,3,100,0,10);

delete from creature where id = 60405;
replace into creature (id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, movement_type, patch_max) values (60405,0,-10241.244,-3827.805,19.513,4.38,300,300,3,100,0,10);

delete from creature where id = 60406;
replace into creature (id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, movement_type, patch_max) values (60406,0,-10244.535,-3822.573,18.927,4.41,300,300,3,100,0,10);

delete from creature where id = 60407;
replace into creature (id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, movement_type, patch_max) values (60407,0,-10245.345,-3830.569,19.002,1.67,300,300,3,20,0,10);

delete from creature where id = 60408;
replace into creature (id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, movement_type, patch_max) values (60408,1,1218.892456,-3334.516113,91.691727,3.09,300,300,3,20,0,10);

delete from creature where id = 60409;
replace into creature (id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, movement_type, patch_max) values (60409,1,1790.908081,-2977.406006,115.794563,3.68,300,300,3,20,0,10);  

delete from creature where id = 60410;
replace into creature (id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, movement_type, patch_max) values (60410,0,-10910.900391,-3875.795410,23.781332,0.45,300,300,3,1,0,10);

delete from creature where id = 60411;
replace into creature (id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, movement_type, patch_max) values (60411,1,1209.272461,-3324.221924,92.186539,3.65,300,300,3,100,0,10);

delete from creature where id = 60412;
replace into creature (id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, movement_type, patch_max) values (60412,1,1207.732910,-3324.852295,91.980316,1.94,300,300,3,0,0,10);

delete from creature where id = 60413 and position_x between 1789.15905 and 1789.15906;
replace into creature (id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, movement_type, patch_max) values (60413,1,1789.159058,-2979.637939,117.382995,2.03,300,300,3,0,0,10);

delete from creature where id = 1563 and position_x between -14808.540 and -14808.530;
replace into creature (id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, movement_type, patch_max) values (1563,0,-14808.533,-297.044,4.402,3.73,300,300,3,100,0,10);

delete from creature where id = 1563 and position_x between -14811.890 and -14811.870;
replace into creature (id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, movement_type, patch_max) values (1563,0,-14811.88,-300.707,6.101,0.77,300,300,3,100,0,10);

delete from creature where id = 60414;
replace into creature (id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, movement_type, patch_max) values (60414,0,-10898.166,-3877.132,21.691,0.25,300,300,3,0,0,10);

delete from creature where id = 60415;
replace into creature (id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, movement_type, patch_max) values (60415,0,-10890.277,-3873.313,22.700,0.09,300,300,3,0,0,10);

delete from creature where id = 60416;
replace into creature (id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, movement_type, patch_max) values (60416,0,-10897.992,-3867.843,21.826,0.21,300,300,3,0,0,10);

delete from creature where id = 60417;
replace into creature (id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, movement_type, patch_max) values (60417,0,-10901.061,-3874.775,22.212,5.39,300,300,3,0,0,10);

delete from creature where id = 60418;
replace into creature (id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, movement_type, patch_max) values (60418,0,-10908.191,-3878.867,23.3231,3.51,300,300,3,0,0,10);

delete from gameobject where id = 2010800;
replace into gameobject (id, map, position_x, position_y, position_z, orientation) values (2010800, 1, -6167.819824, -1573.680054, -211, 5.31);

delete from gameobject where id = 29784 and position_x between 1215.256830 and 1215.256840;
replace into gameobject (id, map, position_x, position_y, position_z, orientation) values (29784, 1, 1215.256836, -3334.443359, 91.675957, 0.00);

delete from gameobject where id = 2000335 and position_x between 1218.890010 and 1218.890020;   
replace into gameobject (id, map, position_x, position_y, position_z, orientation) values (2000335, 1, 1218.890015, -3334.520020, 91.691704, 3.24);

delete from gameobject where id = 2003825 and position_x between 1222.395870 and 1222.395880;
replace into gameobject (id, map, position_x, position_y, position_z, orientation) values (2003825, 1, 1222.395874, -3333.910400, 91.761620, 1.67);   

delete from gameobject where id = 2001585 and position_x between 1218.890010 and 1218.890020;
replace into gameobject (id, map, position_x, position_y, position_z, orientation) values (2001585, 1, 1218.890015, -3334.520020, 91.721704, 3.320380);

delete from gameobject where id = 2003910 and position_x between 1220.872550 and 1220.872560;
replace into gameobject (id, map, position_x, position_y, position_z, orientation) values (2003910, 1, 1220.872559, -3331.800049, 91.835999, 3.89);

delete from gameobject where id = 2004026 and position_x between 1218.780020 and 1218.780030;
replace into gameobject (id, map, position_x, position_y, position_z, orientation) values (2004026, 1, 1218.780029, -3332.639893, 91.748001, 6.00);

delete from gameobject where id = 2003796 and position_x between 1217.520870 and 1217.520880;
replace into gameobject (id, map, position_x, position_y, position_z, orientation) values (2003796, 1, 1217.520874, -3336.038818, 91.669861, 0.87);

delete from gameobject where id = 2003831 and position_x between 1218.182000 and 1218.182010;
replace into gameobject (id, map, position_x, position_y, position_z, orientation) values (2003831, 1, 1218.182007, -3333.054199, 91.721352, 6.11);

delete from gameobject where id = 2001566 and position_x between 1789.4 and 1789.5;
replace into gameobject (id, map, position_x, position_y, position_z, orientation) values (2001566, 1, 1789.410034, -2979.296631, 115.099871, 3.66);

delete from gameobject where id = 2005063 and position_x between 1784.239980 and 1784.240000;
replace into gameobject (id, map, position_x, position_y, position_z, orientation) values (2005063, 1, 1784.239990, -2982.090088, 118.129997, 0.64);

delete from gameobject where id = 2004577 and position_x between 1786.680050 and 1786.680060;
replace into gameobject (id, map, position_x, position_y, position_z, orientation) values (2004577, 1, 1786.680054, -2980.689941, 117.360001, 0.50);

delete from gameobject where id = 2004574 and position_x between 1789.040030 and 1789.040040;
replace into gameobject (id, map, position_x, position_y, position_z, orientation) values (2004574, 1, 1789.040039, -2981.570068, 117.322998, 0.44);

delete from gameobject where id = 2004572 and position_x between 1787.369990 and 1787.370000;
replace into gameobject (id, map, position_x, position_y, position_z, orientation) values (2004572, 1, 1787.369995, -2978.139893, 117.322998, 0.61);

delete from gameobject where id = 2004573 and position_x between 1790.079950 and 1790.079960;
replace into gameobject (id, map, position_x, position_y, position_z, orientation) values (2004573, 1, 1790.079956, -2976.100098, 115.793999, 3.87);

delete from gameobject where id = 2004576 and position_x between 1794.280020 and 1794.280030;
replace into gameobject (id, map, position_x, position_y, position_z, orientation) values (2004576, 1, 1794.280029, -2966.699951, 114.739998, 5.48);

delete from gameobject where id = 2001593 and position_x between 1793.540030 and 1793.540040;
replace into gameobject (id, map, position_x, position_y, position_z, orientation) values (2001593, 1, 1793.540039, -2972.780029, 114.693001, 4.34);

delete from gameobject where id = 2004153 and position_x between 1802.910030 and 1802.910040;
replace into gameobject (id, map, position_x, position_y, position_z, orientation) values (2004153, 1, 1802.910034, -2977.389883, 114.574997, 1.02);
  
delete from gameobject where id = 2005022 and position_x between -14763.000010 and -14762.999990;
replace into gameobject (id, map, position_x, position_y, position_z, orientation) values (2005022, 0, -14763.0, -333.312012, 3.018920, 2.56);

delete from gameobject where id = 2003232 and position_x between -14767.000010 and -14767.999990;
replace into gameobject (id, map, position_x, position_y, position_z, orientation) values (2003232, 0, -14767.0, -326.102997, 1.708880, 3.88);

delete from gameobject where id = 2002208 and position_x between -14762.938480 and -14762.938470;
replace into gameobject (id, map, position_x, position_y, position_z, orientation) values (2002208, 0, -14762.938477, -335.064697, 3.449473, 3.88);

delete from gameobject where id = 2002208 and position_x between -14762.442390 and -14762.442380;
replace into gameobject (id, map, position_x, position_y, position_z, orientation) values (2002208, 0, -14762.442383, -334.270081, 3.225238, 3.88);

delete from gameobject where id = 2002208 and position_x between -14762.572270 and -14762.572260;
replace into gameobject (id, map, position_x, position_y, position_z, orientation) values (2002208, 0, -14762.572266, -334.647247, 4.127857, 3.88);

delete from gameobject where id = 2003233 and position_x between -14812.000010 and -14811.999999;
replace into gameobject (id, map, position_x, position_y, position_z, orientation) values (2003233, 0, -14812.000000, -300.634003, 4.598880, 3.72);

delete from gameobject where id = 1000002 and position_x between -14815.700200 and -14815.700190;
replace into gameobject (id, map, position_x, position_y, position_z, orientation) values (1000002, 0, -14815.700195, -294.647003, 5.02, 2.35);

delete from gameobject where id = 1000002 and position_x between -10245.050 and -10245.040;
replace into gameobject (id, map, position_x, position_y, position_z, orientation) values (1000002, 0, -10245.049,-3828.632,18.428,1.76);

delete from gameobject where id = 2001825 and position_x between -14777.400400 and -14777.400390;
replace into gameobject (id, map, position_x, position_y, position_z, orientation) values (2001825, 0, -14777.400391, -322.790985, 2.390940, 2.35);

delete from gameobject where id = 2002271 and position_x between -14767.000001 and -14766.999999;
replace into gameobject (id, map, position_x, position_y, position_z, orientation) values (2002271, 0, -14767.000000, -327.556000, 1.956200, 0.39);

delete from gameobject where id = 2002271 and position_x between -14768.799810 and -14768.799800;
replace into gameobject (id, map, position_x, position_y, position_z, orientation) values (2002271, 0, -14768.799805, -331.789001, 2.542860, 1.52);

delete from gameobject where id = 2003561 and position_x between -10896.199 and -10896.210;
replace into gameobject (id, map, position_x, position_y, position_z, orientation) values (2003561, 0, -10896.200, -3878.239, 21.748, 1.52);

delete from creature_loot_template where entry = 60401;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (60401,60100,-100,1,1,0,10);

delete from creature_loot_template where entry = 60404;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (60404,60103,-100,1,1,0,10);

delete from creature_loot_template where entry = 60409;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (60409,60104,-100,1,1,0,10);

delete from gameobject_loot_template where entry = 2010800;
replace into gameobject_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (2010800,60102,-100,1,1,0,10);

replace into creature_template_addon (entry, bytes1) values (60400,6);
replace into creature_template_addon (entry, bytes1) values (60403,7);
replace into creature_template_addon (entry, bytes1) values (60406,1);
replace into creature_template_addon (entry, bytes1) values (60407,3);
replace into creature_template_addon (entry, bytes1) values (60408,1);
replace into creature_template_addon (entry, bytes1) values (60410,7);
replace into creature_template_addon (entry, bytes1) values (60411,1);
replace into creature_template_addon (entry, bytes1) values (60412,7);
replace into creature_template_addon (entry, bytes1) values (60413,7);

update creature_template set script_name = 'npc_ardaen_evermoon' where entry = 91288;