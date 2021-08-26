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
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (40108,40107,2,440,60,58,0,0,'Gate Keeper','As you place the plates on the pedestal, a sudden burst of light suddenly surrounds the pedestal \n\n Initiating unlock sequence. \n\n Plates present, scanning for item validation. \n\n Plates authentication complete, unlocking the gates. \n\n Activating Gate Keeper to greet the guests.','Defeat Ostarius. Return to the Hall of Explorers and inform High Explorer Magellas about the events that occurred at the gate.','Yes?','And the prodigy returns, in one piece too. I\'m glad to see you $n, so how did it go? \n\n <Magellas listens to your story with eyes wide open> \n\n You fought what? And the Gate has been locked again? Marvelous. Well, not the part about Uldum getting locked again. But imagine what awaits us inside if the entrance alone was that exciting. Now we can inspect the second lock, and who knows, maybe one day make it into the Uldum itself. But don\'t think for a second that I forgot about your reward. Here I think you have more than earned this.',60102,1,60103,1,0,0,0,0,80935,1,0,0,0,0,0,0,0,0,500000,9950,47,250,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (142343, 40107);
replace into gameobject_involvedrelation (id, quest) values (5387, 40107);

delete from quest_template where entry = 40108;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (0,40108,2,1638,60,58,0,0,'The Lone Wolf','The time has come $n. A new path has been shown to me by The Earth Mother. What was once lost must be found again. The shards of this vision still echo in my mind $c. Travel to the North Barrens and seek out a powerful Farseer Logrash amongst the mountains west of Durotar. Only with his help will we be able to locate the missing plates of Uldum. go now, and my The Earth Mother guide your path.','Sage Truth Seeker wants you to search for the Farseer Logrash in the Northern part of Barrens.','I was wondering when you would show up. Speak up then.?','So, Truthseeker sends his emissary. I tend to avoid meddling in the affairs of the Horde, but I own my life to the Sage, so you have my ear $n.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,660,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (3978, 40108);
replace into creature_involvedrelation (id, quest) values (60408, 40108);

delete from quest_template where entry = 40109;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (40108,40109,2,17,60,58,0,0,'Scars of the Past','Four years ago, I was betrayed by my own people for refusing to do the very same thing that doomed us in the first place, drinking the blood of a demon Mannaroth. If not for my companion Korvir and Truthseeker, my body would have rotted away in the forests of Ashenvale.\n\n <Logrash caresses the scars on his chest with a painful expression>.\n\n The spirits whisper of a Demon scum called Naxiar hiding around the eastern lakes of Ashenvale. If you wish to have my aid, I need you to kill him and retrieve my wolf totem.','Kill Naxiar in the Eastern Ashenvale and bring back the wolf totem to Logrash in Barrens.','How goes the hunt?','Mok\'ra $n. I\'m assuming that the accursed Demon is dead. Good, his ilk does not deserve anything more than death. Though my rage towards them runs deep, revenge was not my only motive.',60104,1,0,0,0,0,0,0,60409,1,0,0,0,0,0,0,0,0,0,6600,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (60408, 40109);
replace into creature_involvedrelation (id, quest) values (60408, 40109);

delete from creature_template where entry = 60400;
replace into creature_template (entry, display_id1, name, subname, level_min, level_max, health_min, health_max, armor, faction, npc_flags, speed_walk, speed_run, detection_range, call_for_help_range, xp_multiplier, dmg_min, dmg_max, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, unit_class, unit_flags, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, loot_id, gold_min, gold_max, movement_type, inhabit_type, regeneration, flags_extra) values (60400,6435,'Vess','Black Rose',50,50,2768,2768,2999,120,2,1,1.14,20,5,1,85,109,226,1,2000,2000,1,512,67,92,100,7,0,0,0,0,3,3,10);

delete from creature_template where entry = 60401;
replace into creature_template (entry, display_id1, name, level_min, level_max, health_min, health_max, armor, faction, npc_flags, speed_walk, speed_run, detection_range, call_for_help_range, xp_multiplier, dmg_min, dmg_max, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, unit_class, unit_flags, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, loot_id, gold_min, gold_max, movement_type, inhabit_type, regeneration, flags_extra) values (60401,797,'Bannor',60,60,3997,4120,3640,16,0,1,1.14,20,5,1,104,130,272,1,2000,2000,1,0,72,99,100,7,60401,136,183,0,3,3,0);

delete from creature_template where entry = 60402;
replace into creature_template (entry, display_id1, name, level_min, level_max, health_min, health_max, armor, faction, npc_flags, speed_walk, speed_run, detection_range, call_for_help_range, xp_multiplier, dmg_min, dmg_max, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, unit_class, unit_flags, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, loot_id, gold_min, gold_max, movement_type, inhabit_type, regeneration, flags_extra, phase_quest_id) values (60402,8395,'Stone Guardian',60,60,3997,4120,3640,16,0,1,1.14,20,5,1,104,130,272,1,2000,2000,1,0,72,99,100,7,6560,136,183,0,3,3,0,0);

delete from creature_template where entry = 60403;
replace into creature_template (entry, display_id1, name, subname, level_min, level_max, health_min, health_max, armor, faction, npc_flags, speed_walk, speed_run, detection_range, call_for_help_range, xp_multiplier, dmg_min, dmg_max, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, unit_class, unit_flags, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, loot_id, gold_min, gold_max, movement_type, inhabit_type, regeneration, flags_extra) values (60403,14405,'Grungi','Expedition Leader',55,55,2768,2768,2999,57,2,1,1.14,20,5,1,85,109,226,1,2000,2000,1,512,67,92,100,7,0,0,0,0,3,0,10);

delete from creature_template where entry = 60404;
replace into creature_template (entry, display_id1, name, subname, level_min, level_max, health_min, health_max, armor, faction, npc_flags, speed_walk, speed_run, detection_range, call_for_help_range, xp_multiplier, dmg_min, dmg_max, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, unit_class, unit_flags, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, loot_id, gold_min, gold_max, movement_type, inhabit_type, regeneration, flags_extra, phase_quest_id) values (60404,14526,'Dietmar Onlooker','Cultist\'s Leader',60,60,3997,4120,3640,16,0,1,1.14,20,5,1,104,130,272,1,2000,2000,1,0,72,99,100,7,60404,136,183,0,3,3,0,0);

delete from creature_template where entry = 60405;
replace into creature_template (entry, display_id1, name, level_min, level_max, health_min, health_max, armor, faction, npc_flags, speed_walk, speed_run, detection_range, call_for_help_range, xp_multiplier, dmg_min, dmg_max, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, unit_class, unit_flags, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, loot_id, gold_min, gold_max, movement_type, inhabit_type, regeneration, flags_extra, phase_quest_id) values (60405,4939,'Zokk Flamefist',60,60,3997,4120,3640,16,0,1,1.14,20,5,1,104,130,272,1,2000,2000,1,0,72,99,100,7,0,136,183,0,3,3,0,0);

delete from creature_template where entry = 60406;
replace into creature_template (entry, display_id1, name, level_min, level_max, health_min, health_max, armor, faction, npc_flags, speed_walk, speed_run, detection_range, call_for_help_range, xp_multiplier, dmg_min, dmg_max, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, unit_class, unit_flags, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, loot_id, gold_min, gold_max, movement_type, inhabit_type, regeneration, flags_extra, phase_quest_id) values (60406,6702,'Wahjez\'fon',60,60,3997,4120,3640,16,0,1,1.14,20,5,1,104,130,272,1,2000,2000,1,0,72,99,100,7,0,136,183,0,3,3,0,0);

delete from creature_template where entry = 60407;
replace into creature_template (entry, display_id1, name, level_min, level_max, health_min, health_max, armor, faction, npc_flags, speed_walk, speed_run, detection_range, call_for_help_range, xp_multiplier, dmg_min, dmg_max, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, unit_class, unit_flags, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, loot_id, gold_min, gold_max, movement_type, inhabit_type, regeneration, flags_extra, phase_quest_id) values (60407,11824,'Eric Staunch',60,60,3997,4120,3640,16,0,1,1.14,20,5,1,104,130,272,1,2000,2000,1,0,72,99,100,7,0,136,183,0,3,0,0,0);

delete from creature_template where entry = 60408;
replace into creature_template (entry, display_id1, name, subname, level_min, level_max, health_min, health_max, armor, faction, npc_flags, speed_walk, speed_run, detection_range, call_for_help_range, xp_multiplier, dmg_min, dmg_max, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, unit_class, unit_flags, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, loot_id, gold_min, gold_max, movement_type, inhabit_type, regeneration, flags_extra) values (60408,4364,'Logrash','The Lone Wolf',50,50,2768,2768,2999,29,2,1,1.14,20,5,1,85,109,226,1,2000,2000,1,512,67,92,100,7,0,0,0,0,3,3,10);

delete from creature_template where entry = 60409;
replace into creature_template (entry, display_id1, name, level_min, level_max, health_min, health_max, armor, faction, npc_flags, speed_walk, speed_run, detection_range, call_for_help_range, xp_multiplier, dmg_min, dmg_max, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, unit_class, unit_flags, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, loot_id, gold_min, gold_max, movement_type, inhabit_type, regeneration, flags_extra) values (60409,12334,'Naxiar',60,60,3997,4120,3640,16,0,1,1.14,20,5,1,104,130,272,1,2000,2000,1,0,72,99,100,7,60409,136,183,0,3,3,0);

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

delete from creature where id = 60400;
replace into creature (id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, movement_type, patch_max) values (60400,0,-14448.299609,504.408997,21.677200,0.564129,300,300,3,100,0,10);

delete from creature where id = 60401;
replace into creature (id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, movement_type, patch_max) values (60401,0,-14768.414062,-329.454865,2.249216,5.81,300,300,3,100,0,10);

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
replace into creature (id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, movement_type, patch_max) values (60404,0,-10620.739258,-3835.562012,21.520676,3.14,300,300,3,100,0,10);

delete from creature where id = 60405;
replace into creature (id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, movement_type, patch_max) values (60405,0,-10623.062500,-3831.632812,22.557604,4.20,300,300,3,100,0,10);

delete from creature where id = 60406;
replace into creature (id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, movement_type, patch_max) values (60406,0,-10625.928711,-3840.545654,23.016504,0.71,300,300,3,100,0,10);

delete from creature where id = 60407;
replace into creature (id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, movement_type, patch_max) values (60407,0,-10625.306641,-3835.292969,22.778433,0.71,300,300,3,20,0,10);

delete from creature where id = 60408;
replace into creature (id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, movement_type, patch_max) values (60408,1,1218.892456,-3334.516113,91.691727,3.09,300,300,3,20,0,10);

delete from creature where id = 60409;
replace into creature (id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, movement_type, patch_max) values (60409,1,1793.752319,-2975.766113,114.890640,3.73,300,300,3,20,0,10);

delete from gameobject where id = 2010800;
replace into gameobject (id, map, position_x, position_y, position_z, orientation) values (2010800, 1, -6167.819824, -1573.680054, -211, 5.31);

delete from creature_loot_template where entry = 60401;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (60401,60100,-100,1,1,0,10);

delete from creature_loot_template where entry = 60404;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (60404,60103,-100,1,1,0,10);

delete from creature_loot_template where entry = 60409;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (60409,60104,-100,1,1,0,10);

delete from gameobject_loot_template where entry = 2010800;
replace into gameobject_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (2010800,60102,-100,1,1,0,10);

replace into creature_template_addon (entry, bytes1) values (60400, 6);
replace into creature_template_addon (entry, bytes1) values (60403, 7);
replace into creature_template_addon (entry, bytes1) values (60406, 1);
replace into creature_template_addon (entry, bytes1) values (60407, 3);




sdelat' GO dla lutaniya 1 diska
kinzhal na stol dlya vess
sdelat' repliku dlya Bannora i Naxiara
sdelat' script na poluchenie diskov pri vzyatii kvesta u Maggelasa