-- Shard Harmonization
delete from quest_template where entry = 40813;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40813,2,616,60,55,0,1,'Kaldorei Weaponry','We must all do our part here in Hyjal, and my part is to harmonize Small Dream Shards into Bright Dream Shards. The harmonization process makes the shards much more potent in regards to their magical properties. If you have any work that you need me to do, bring me three Small Dream Shards, they can be found around Hyjal, or no doubt earned by those in town for tasks in maintaining Nordrassil.','Collect 3 Small Dream Shards for Lantho Talonmoon at Nordanaar in Hyjal.','So you\'ve returned, do you have those shards ready for me?','Excellent work, the harmonization process does not take me long, especially with all this practice, if you find any more, come and let me know.',61198,3,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,450,0,0,0,0,0,0,0,0,0,0,0, 61199,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61325, 40813);
replace into creature_involvedrelation	(id, quest) values (61325, 40813);

-- quest Kaldorei Weaponry (entry 40813) rename to Shard Harmonization.
update quest_template set title = 'Shard Harmonization' where entry = 40813;

-- Enchanted Leather Collection
delete from quest_template where entry = 40814;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40814,2,616,60,55,0,1,'Enchanted Leather Collection','Druidic magic requires concentration, skill, the blessing of nature, and a touch of Enchanted Leather.$B$BWe go through our stocks fairly quickly here at Nordrassil when the needs arise and it is my duty to keep us ready.$B$BIf you are willing to assist, I can trade a Bright Dream Shard in exchange for ten Enchanted Leather at any time.','Gather 10 Enchanted Leather for Tanalla Sagebranch at Nordanaar in Hyjal.','Have you had any luck $c?','Hmm, everything seems to be in order here, your assistance to our efforts is well appreciated, here, take this.',12810,10,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,450,0,0,0,0,0,0,0,0,0,0,0, 61199,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61327, 40814);
replace into creature_involvedrelation	(id, quest) values (61327, 40814);

-- Enchanted Thorium Collection
delete from quest_template where entry = 40815;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40815,2,616,60,55,0,1,'Enchanted Thorium Collection','Our enemies on Hyjal continue to grow, day after day. I may not know how to craft a weapon, but I do know our druidic weapons require quite a lot of Enchanted Thorium, and it is my duty to make sure we are prepared.$B$BIf you are willing to help us here in Nordranaar, I can trade a Bright Dream Shard in exchange for ten Enchanted Thorium at any time.','Gather 10 Enchanted Thorium for Tanalla Sagebranch at Nordanaar in Hyjal.','Have you had any luck $c?','I am sure our blacksmith will be eager to work with this new material, thanks again $c!',12655,10,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,450,0,0,0,0,0,0,0,0,0,0,0, 61199,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61327, 40815);
replace into creature_involvedrelation	(id, quest) values (61327, 40815);

-- Mooncloth Collection
delete from quest_template where entry = 40816;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40816,2,616,60,55,0,1,'Mooncloth Collection','The beautiful fabric of Mooncloth has often eluded us with its rarity and is in quite high demand for all sorts of purpose. If you could get your hands on a single piece, it would go quite a long way for us in Nordranaar.$B$BI could even exchange you with a single Bright Dream Shard to make it worth your while. If you end up finding one, let me know!','Gather 1 Mooncloth for Tanalla Sagebranch at Nordanaar in Hyjal.','Have you had any luck $c?','Mooncloth, so divine, and majestic. I can feel the grace of Elune radiating from it.$B$BThank you $c, take this as thanks for helping us.',14342,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,450,0,0,0,0,0,0,0,0,0,0,0, 61199,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61327, 40816);
replace into creature_involvedrelation	(id, quest) values (61327, 40816);

-- The Key to Karazhan I
delete from quest_template where entry = 40817;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40817,2,2562,60,58,0,0,'The Key to Karazhan I','The Living? Here? I thought I would never see the day.$B$BMy cursed spirit is forever bound here, unable to find the sweet release of true death. The memories of my past still haunt me, a never-ending reminder of the consequences of my actions.$B$BYet, here you stand, wandering through these halls, oblivious to the horrors that await you. Stay for a while and listen to my story if you care enough, and maybe the mysteries of Karazhan will unravel to you. But be warned, for there are more secrets buried within these walls than even I could comprehend.$B$BPerhaps, if you are brave enough to delve into the enigmas left by Medivh, the true purpose of this cursed place will reveal itself. Or perhaps, like so many before you, you will become lost in the maddening puzzles that have ensnared so many others. Either way, I will remain here, a cursed ghost of the past, forever trapped within these walls.','Listen to the story of Lord Ebonlocke.','Let my story be a reminder to all that seek power beyond their comprehension.','After years spent wandering these halls as a cursed spirit, I have come to accept the weight of my actions and the consequences that have befallen me. I do not seek absolution or forgiveness from you, for that is not within your power to grant.$B$BInstead, I ask that you consider the truth that I have revealed to you. Reflect upon my story and the lessons that can be learned from it. Perhaps you too have had a hunger for power or knowledge that has clouded your judgment in the past. Or maybe you have made mistakes that you regret and wish to make amends for.$B$BAnd as for the next course of action, that too is for you to decide. Will you seek out the key to the Upper Part of Karazhan and uncover its secrets? Or will you leave this cursed place behind and seek your fortunes elsewhere? Only you can decide the path that lies ahead.',0,0,0,0,0,0,0,0, 60034,1,0,0,0,0,0,0, 0,0, 0,19100,3150,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61255, 40817);
replace into creature_involvedrelation	(id, quest) values (61255, 40817);

update quest_template set objectivetext1 = 'Listen to the story of Lord Ebonlocke.' where entry = 40817;

update creature_template set script_name = 'npc_lord_ebonlocke' where entry = 61255;

REPLACE INTO creature_template VALUES
(60034, 328, 0, 0, 0, 0, 'quest_40817_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES
(30092, 'Thou may be pondering upon how I, Lord Ebonlocke, came to be in such a wretched condition. But like many tales of woe, mine started with an insatiable thirst for power. As the ruler of the Great Hamlet, I yearned for more, craving proximity to the seat of power in Stormwind, desiring to meet the most influential individuals, and striving to climb the ranks of society, ultimately aiming for the crown itself.$B$BIn my hunger for greater power, I was heedless of my own people, resorting to ruthless, brutal, and unjust deeds to get what I wanted. The atrocities I have committed are beyond what I can bear to recollect. Nevertheless, my misdeeds pale in comparison to the sins of Medivh, that accursed sorcerer whose wicked deeds continue to haunt me even in death.', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30093, 'Many years have passed since I first set my sights on this towering structure, yearning to gain an audience with the great lord of Karazhan, Medivh. Oh, how I coveted his power and knowledge.$B$BThe secrets that lay hidden within Karazhan called out to me, promising dark magic and enigmatic mysteries that I could wield to further my goals. And so, I became obsessed, visiting the tower time and time again, forsaking my duties, my people, and even my own family, all for the chance to speak with the sorcerer.$B$BBut alas, my efforts were for naught, for Medivh never granted me an audience, no matter how fervently I beseeched him. I could see the lavish banquets and grand parties he hosted, to which others were invited. Why did he elude me so?', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30094, 'Now, with the benefit of hindsight, I realize the foolishness of my obsession. How much I had sacrificed for the fleeting promise of power, all for naught. And yet, my heart still aches with the regret of missed opportunities and wasted years. If only I had known then what I know now. But alas, the past is set in stone, and I am left to ponder the might-have-beens and the what-ifs, forever trapped in the shadow of my own obsession.$B$BThe day that changed everything arrived in the form of a simple raven. It flew into my abode, bearing a letter from none other than Moroes, the castellan of Karazhan, inviting me to a grand ball to be held within the tower\'s walls.', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30095, 'It was an opportunity I couldn\'t pass up, for it was my chance to finally meet the great Medivh and learn from his boundless wisdom.$B$BWithout a second thought, I rushed out of my castle and set off for Karazhan, leaving my duties and my people behind. I was driven by a feverish energy, a feeling that I simply had to be there, no matter the cost. Looking back now, I can\'t help but think that Medivh had already begun manipulating me, even before I had set foot within his hallowed halls.', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30096, 'Upon reaching the tower, I was ushered inside and allowed to roam freely while Medivh himself mingled with the other guests. It was an experience I shall never forget, for the tower was alive with magic and wonder, the likes of which I had never seen before. Was this all just a game to Medivh? A way to toy with his guests, drawing them ever deeper into his web of influence and power?$B$BLooking back on that night, I realize that it was the beginning of the end for me. The first step on a path that would lead to my downfall, my ruin, and my eventual damnation.$B$BAs I wandered the twisting halls and endless ballrooms of Karazhan, time seemed to slip away from me. It felt as though mere moments had passed. It was then that I realized something was amiss, for the tower was now vastly different from the one I had been admiring just moments before.', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30097, 'Where once there had been merriment and laughter, now there was only emptiness and decay. Apparitions crawled through the corridors, their moans and whispers echoing through the empty halls. How much time had passed since I had first arrived? I could not say, for time flowed differently within the confines of Karazhan.$B$BIt was then that I looked upon my own body, only to find that there was no body to look upon. I, and all of the guests have been killed, our essences drained to fuel Medivh\'s dark plans. The realization hit me like a bolt of lightning, and I knew then that I had been a fool to ever trust in his power and seek his knowledge.$B$BThe memory of my own arrogance and obsession with power burned within me, a constant reminder of my own folly. And so I remain, a ghost of the past, forever cursed to haunt the halls of Karazhan and warn others of the dangers that lurk within.', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30098, 'Bound to this cursed tower, my spirit lingers, tormented by the memories of my past and the horrors that surround me. The darkness of this place has consumed the souls of those who once walked these halls, leaving them lost and deranged. Yet, I have managed to hold onto my sanity, though barely.$B$BI do not seek revenge against Medivh, for I have long since accepted my fate. Instead, my only desire is to uncover the secrets that he kept hidden in this tower. As a ruler, I sought power and knowledge, and now, I am driven by that same hunger, but for different reasons.', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30099, 'The Lower Part of Karazhan holds only a fraction of the knowledge that I seek. The true power of this tower can only be accessed through the Upper Part, which is sealed off by Moroes, the castellan. He guards the key to the Upper Tower with a fierce dedication and I believe that he serves an even darker master now…$B$BI implore you to help me uncover the mysteries of this tower. Share with me the knowledge that you find in the Upper Part of Karazhan. Together, we can piece together the truth of what happened in this cursed place and perhaps find some measure of peace for the tormented souls that still reside here.', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);
replace into npc_text (ID, BroadcastTextID0) values
(30092, 30092),
(30093, 30093),
(30094, 30094),
(30095, 30095),
(30096, 30096),
(30097, 30097),
(30098, 30098),
(30099, 30099);

-- The Key to Karazhan II
delete from quest_template where entry = 40818;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40817,40818,2,2562,60,58,0,0,'The Key to Karazhan II','Ah, so you have made the decision to seek the forbidden knowledge of Karazhan. I cannot blame you, for the allure of such power and secrets can be irresistible to even the most noble of intentions. Perhaps you seek this knowledge in the hopes of using it for the greater good of this world, and for that, I commend you.$B$BIf you truly wish to unlock the secrets of the Upper Chambers, you must first find Moroes, the cursed and undead castellan who guards the key to the forbidden section of the tower. It will not be an easy task, for he is cunning and fiercely protective of the secrets he guards. Be wary, as I do not know who the true master of Moroes is.$B$BBut if you can overcome his defenses and obtain the key, you may be able to enter the Upper Chambers and uncover the knowledge you seek.','Kill Moroes and retrieve the Key to the Upper Chambers. Moroes resides in Lower Karazhan Halls. Bring back the key to Lord Ebonlocke.','Have you found Moroes and the key?','The key... now lies broken and useless, its magical essence lost to time and it is no longer of any use to us in its current state. It appears that even in death, Medivh has one final trick up his sleeve to guard his secrets from the prying eyes of the living.$B$BHowever, we must not lose hope. There must be a way to restore the key to its former glory and unlock the gates to the Upper Chambers. We cannot let the secrets of Karazhan be lost forever. There must be those who still possess the knowledge and ability to revive the key, to mend what was once broken.$B$BI wish I could offer you more assistance, but this is where my part in this quest ends. I can only hope that your journey to restore the key is a successful one, and that the secrets of Karazhan may be unveiled to those who seek them.',61231,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,19100,3150,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61255, 40818);
replace into creature_involvedrelation	(id, quest) values (61255, 40818);

update quest_template set type = 64 where entry = 40818;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61231,22185,'Key to the Upper Chambers',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(61225, 61231, -100, 0, 1, 1, 0);

-- The Key to Karazhan III
delete from quest_template where entry = 40819;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40818,40819,2,2562,60,58,0,0,'The Key to Karazhan III','I sense that you possess Medivh\'s key. Though I am unsure how you came into its possession, I must warn you: not all is what it seems, and the powers residing in Upper Chambers are beyond your comprehension.$B$BWhen Medivh was younger, he often hosted a certain Kirin Tor mage in the tower. His name was Vandol, and if anyone could be able to repair the key, it\'s him.$B$BMake haste, for there are ominous noises emanating from the Upper Chambers, and I fear that the situation there will only become worse.','Find someone from the Kirin Tor who might know something about Vandol. Dalaran could be a good place to start your search.','Yes?','Hmmm, Vandol, you say?',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,19100,3150,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61328, 40819);
replace into creature_involvedrelation	(id, quest) values (2543 , 40819);

update quest_template set requiredraces = 589 where entry = 40819;

-- The Key to Karazhan IV
delete from quest_template where entry = 40820;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40819,40820,2,2562,60,58,0,0,'The Key to Karazhan IV','Yes, yes, Archmage Vandol was truly one of the greatest minds of the Kirin Tor. He was a dear friend of Medivh, if you can believe such a thing. Although, some might argue that Medivh had no true friends.$B$BAlas, I fear I cannot be of much assistance to you. After the devastation of Dalaran at the hands of Archimonde, Vandol suffered injuries that took a great toll on him. He spent many moons in recovery and eventually retired as one of the most accomplished mages of our time.$B$BI seem to recall him expressing a desire to settle in or around Theramore. If he still lives, I suggest asking for him in the city itself. One of our apprentices, Magus Halister, might know of his whereabouts.','Ask Magus Hallister in Theramore for the whereabouts of Vandol.','Welcome to Theramore. Is there anything I could help you with?','Vandol? Let me check the records.',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,19100,3150,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (2543 , 40820);
replace into creature_involvedrelation	(id, quest) values (60731, 40820);

-- The Key to Karazhan V
delete from quest_template where entry = 40821;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40820,40821,2,2562,60,58,0,0,'The Key to Karazhan V','<Magus Halister carefully combs through the pages of thick tomes, his eyes scanning every line with an intensity that speaks of decades of study and experience. After several minutes of diligent searching, he finally looks up at you with a wry smile.>$B$BAh, yes. Vandol. He was here, in Theramore, some four years ago. Paid a visit to Lady Jaina, in fact. But he did not stay in the city for long. Found it too bustling for an old man like him, I suppose.$B$BAccording to our records, Vandol purchased a small boat not long after his visit. Loaded it up with vital supplies, food, and even seeds, if you can believe it. He set sail for the south, seeking a quieter life, I imagine. The coastline would be your best bet if you seek to find him.','Find Vandol. He is living somewhere on the eastern coast of Kalimdor, south of Theramore.','What brings you to my secluded house?','I sense that you have come seeking me, and that you know who I really am. It seems that my past has finally caught up with me, and I must admit that I am not surprised. $B$BTake a moment to consider the gravity of what you are about to say. For you see, I have lived a long life filled with both triumphs and tragedies. I have seen the fall of great kingdoms, and I have witnessed the atrocities that people are capable of committing in the name of power.$B$B
If you are here to confront me about the sins of my past, and the many mistakes that I have made, then I will not fight back. I will accept whatever consequences may come.',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,19100,3150,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (60731, 40821);
replace into creature_involvedrelation	(id, quest) values (61137, 40821);

-- The Key to Karazhan III
delete from quest_template where entry = 40822;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40818,40822,2,2562,60,58,0,0,'The Key to Karazhan III','I sense that you possess Medivh\'s key. Though I am unsure how you came into its possession, I must warn you: not all is what it seems, and the powers residing in Upper Chambers are beyond your comprehension.$B$BWhen Medivh was younger, he often hosted a certain Kirin Tor mage in the tower. His name was Vandol, and if anyone could be able to repair the key, it\'s him.$B$BMake haste, for there are ominous noises emanating from the Upper Chambers, and I fear that the situation there will only become worse.','Find someone from Kirin Tor who might know something about Vandol. Undercity could be a good place to start your search.','You better have a damn good reason for interrupting me.','So you\'re looking for Vandol? Very well.',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,19100,3150,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61328, 40822);
replace into creature_involvedrelation	(id, quest) values (1498 , 40822);

update quest_template set requiredraces = 434 where entry = 40822;

-- The Key to Karazhan IV
delete from quest_template where entry = 40823;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40822,40823,2,2562,60,58,0,0,'The Key to Karazhan IV','Vandol.$B$BHe was senior to me, and I begrudgingly admit that I learned much from him about the arcane and its rules. They say he was friends with Medivh, but I think it was a relationship of mutual benefit more than anything else.$B$BThe last I heard, Vandol had barely survived the fall of Dalaran and had retired to some backwater swamp in Dustwallow. Our ogre "allies" has set up a settlement in those lands, so if you want any chance of finding him, you\'ll have to deal with them.$B$B<He leans in closer, his voice dropping to a low, dangerous whisper.>$B$BBut if you manage to find Vandol, tell him that his old colleague sends his regards. And if you fail, well...let\'s just say that I have a way of dealing with people who waste my time.','Ask someone in Brackenwall Village about the whereabouts of Vandol.','Throm-ka. Is there anything I can help you with, $r?','Vandol?',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,19100,3150,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (1498, 40823);
replace into creature_involvedrelation	(id, quest) values (4926, 40823);

-- The Key to Karazhan V
delete from quest_template where entry = 40824;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40823,40824,2,2562,60,58,0,0,'The Key to Karazhan V','<Krog lets out a deep, rumbling laugh.> What do you think, that we are spying on Theramore? Ha! As if we\'d waste our time on those weaklings. No, no, my friend. It\'s just a coincidence that we happened to come into possession of their ledgers. They lost them somewhere in the swamp, it seems. Lucky for us, eh?$B$B<Krog flips open the ledger and runs a thick, green finger down the page.>$B$BLet\'s see here... Ah, yes. V-A-N-D-O-L. He arrived via boat about four years ago, and then departed on a small ship heading south along the coastline. That\'s all we\'ve got to go on, I\'m afraid.$B$BNow, if you\'re really keen on finding him, I suppose you could try hiring a boat from the smugglers and sailing along the coast. Just be careful, though. There are rumors of a vengeful sailor who\'s been terrorizing the shores lately.','Find Vandol. He is living somewhere on the eastern coast of Kalimdor, south of Theramore.','What brings you to my secluded house?','I sense that you have come seeking me, and that you know who I really am. It seems that my past has finally caught up with me, and I must admit that I am not surprised. $B$BTake a moment to consider the gravity of what you are about to say. For you see, I have lived a long life filled with both triumphs and tragedies. I have seen the fall of great kingdoms, and I have witnessed the atrocities that people are capable of committing in the name of power.$B$BIf you are here to confront me about the sins of my past, and the many mistakes that I have made, then I will not fight back. I will accept whatever consequences may come.',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,19100,3150,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (4926 , 40824);
replace into creature_involvedrelation	(id, quest) values (61137, 40824);
