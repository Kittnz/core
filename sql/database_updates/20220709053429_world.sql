-- Gaining Orvak's Trust
delete from quest_template where entry = 40459;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40459,2,46,54,45,0,0,'Gaining Orvak\'s Trust','You want to help us out do you? Well we need to know we can trust you, after all, we have many enemies in this region, and most regions of the world, probably.\n\nYou can start by gathering Thaurrisan Badges, carried by the Dark Iron in the Ruins of Thaurrisan. Gather 15 of them, and bring them to Orvak Sternrock, he will know you mean business then.','Gather 15 Tharrusian Badges for Orvak Sternrock at the Blackrock Pass in Burning Steppes.','What is it you want $r?','Hmm, so you\'re the real deal huh, no way you\'re working with Shadowforge anyway.\n\nYou never can be certain, they have an alignment with the Twilight Hammer afterall.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60834, 40459);
replace into creature_involvedrelation (id, quest) values (60833, 40459);

-- Hearing Orvak's Story
delete from quest_template where entry = 40460;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40459,40460,2,46,54,45,0,0,'Hearing Orvak\'s Story','Not often we get someone wanting to help, especially one of your kind. That said, we aren\'t all too able to turn down a willing hand, especially given all of the others that died in our caravan.\n\nI need you to understand my point of view, and what I have gone through. Maybe you\'ll think twice before you label me as another of my kin.\n\nSpeak with me, and listen to my story when you\'re ready.','Listen to Orvak Sternrock\'s Story.','Yes?','Does it all make sense now? Orvak Sternrock has a vengeance, one that needs to be unleashed.',0,0,0,0,0,0,0,0,60375,1,0,0,0,0,0,0,0,0,0,950,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Listen to Orvak Sternrock\'s Story');

replace into creature_questrelation (id, quest) values (60833, 40460);
replace into creature_involvedrelation (id, quest) values (60833, 40460);

update creature_template set script_name = 'npc_orvak_sternrock' where entry = 60833;

REPLACE INTO creature_template VALUES (60375, 328, 0, 0, 0, 'quest_40460_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

-- The Sternrock Stash
delete from quest_template where entry = 40461;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40460,40461,2,46,54,45,0,0,'The Sternrock Stash','Now that you understand we are on the same page, and are fighting the same enemy I would have you prove to me one last test of loyalty.\n\nBefore we can begin our grand revenge, I must plan for the future.\n\nLong ago, before I held any position of power I buried a large stash of items and gold incase I ever needed to leave or escape, well that time has come.\n\nIf me and my comrades are to live this adventure than I will need that stash.\n\nTravel to the entrance of the Blackrock Mountain, and search beneath the bridgeway, between the two pillars, you will find the stash there.','Recover the Sternrock Stash and bring it to Orvak Sternrock at the Blackrock Pass in Burning Steppes.','Have you recovered my lost items?','With this our future is secure, but I will not leave until I taste the sweet sensation of revenge.\n\nI will let the others know that you are to be trusted, speak with them, they should have tasks for you.',60663,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,350,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60833, 40461);
replace into creature_involvedrelation (id, quest) values (60833, 40461);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60663,16028,'Sternrock Stash',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

delete from gameobject_template where entry = 2010896;
replace into gameobject_template values
(2010896,3,49,'Uneven Dirt',0,4,1,43,2010896,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

delete from gameobject_loot_template where entry = 2010896;
replace into gameobject_loot_template values
(2010896,60663,-100,0,1,1,0);

-- Miners Union Mutiny
delete from quest_template where entry = 40462;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40461,40462,2,46,50,45,0,0,'Miners Union Mutiny','The Miners Union betrayed the High Foreman, and sentenced those that were loyal to Orvak into slavery. There is no other step than justice and it must be handed out to any, and all who remain!\n\nTo the east lays the Hateforge Excavation, we will begin by dealing with the Excavators who are working on a series of redoubts and defenses leading into the Quarry.\n\nSlay 10 of them, and return to me.','Slay 10 Hateforge Excavator\'s at the Hateforge Excavation and return to Morgrim Firepike at Blackrock Pass in Burning Steppes.','We are on the road to justice, can you can feel it?','It feels good knowing that there are less of those scum on this world, but there is still more to be done.',0,0,0,0,0,0,0,0,60830,10,0,0,0,0,0,0,0,0,0,6150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60832, 40462);
replace into creature_involvedrelation (id, quest) values (60832, 40462);

update quest_template set type = 1 where entry = 40462;

-- The True High Foreman
delete from quest_template where entry = 40463;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40461,40463,2,5098,51,45,0,0,'The True High Foreman','Bargul Blackhammer\n\nThat vile scum has been working to get the position of High Foreman now for years, attempting every underhanded tactic that he could think of.\n\nFrom violence, to deceit, nothing was off the table for scum such as him.\n\nThe idea of the Hateforge Quarry was an idea Bargul came up with, and sent to the senate. He ended up convincing the lot of them, and worked in tandam to get me outed from my position.\n\nBargul Blackhammer holds my title now from a position of underhanded fraud, and I want him to hold it no longer.\n\nWithin the Hateforge Quarry, Bargul Blackhammer oversee\'s the work from atop of his tower with an iron fist, kill him for all of the chaos he has caused, and recover the Senate\'s Orders from around his possessions.','Slay Bargul Blackhammer, and recover the Senate\'s Orders for Orvak Sternrock at the Blackrock Pass in Burning Steppes.','Have you culled that wretch from this world yet?','<A look of pleasure sets across Orvak\'s face, breaking his grim visage.>\n\nYou\'ve done well, it makes me want to grin knowing that Bargul\'s plans have ended in his demise, despite all of the death he has brought around him, I would have loved to see his face as he knew his life was about to end.\n\n<Orvak lets out a sigh of relief.>\n\nMe and the others here gathered something that you may find useful in your journies, one hand washes the other, so to speak.\n\nAlso, take this key, I do not intend to return to the mountain. It should open a chest within the Black Vault, if they haven\'t already taken it. away.',60664,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60665,1,60666,1,60667,1,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60833, 40463);
replace into creature_involvedrelation (id, quest) values (60833, 40463);

update quest_template set type = 81 where entry = 40463;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60664,7694,'Senate\'s Orders',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

delete from gameobject_template where entry = 2010897;
replace into gameobject_template values
(2010897,3,164,'Important Documents',0,4,1,43,2010897,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

delete from gameobject_loot_template where entry = 2010897;
replace into gameobject_loot_template values
(2010897,60664,-100,0,1,1,0);

replace into item_template values
 ('60665', '4', '0', 'Deepblaze Signet', '', '66210', '3', '0', '1', '63632', '15908', '11', '-1', '-1', '58',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '7', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '10', '0',
 '0', '0', '0', '9416', '1', '0', '0', '-1', '0', '-1', '9399', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60666', '4', '2', 'Sternrock Trudgers', '', '16983', '3', '0', '1', '67228', '16807', '8', '-1', '-1', '58',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '16', '7', '8',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '113', '0', '0', '0',
 '0', '0', '0', '9332', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '50', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60667', '4', '1', 'Firepike\'s Lucky Trousers', '', '27947', '3', '0', '1', '67420', '16855', '7', '-1', '-1', '58',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '24', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '68', '0', '0', '0',
 '0', '0', '0', '7680', '1', '0', '0', '-1', '0', '-1', '21625', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '65', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);

-- Senatorial Revenge
delete from quest_template where entry = 40464;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40461,40464,2,1584,56,45,512,0,'Senatorial Revenge','Shadowforge was once a home that I was proud of. I know the truth of what it really is now, and it is vile, and corrupt.\n\nAt it\'s heart many of the decisions the Shadowforge Senator\'s make are only to further their own interests at the expense of the people who live within.\n\nI ask for a favor, one more important than anything to me.\n\nThe Shadowforge Senate needs to be rooted out, they are safe, and comfortable deep within the city, make it so they feel fear.\n\nYou can enter Shadowforge deep within the Blackrock Mountain, go there, and brave the Blackrock Depths to find them, and kill them.','Slay 25 Shadowforge Senators deep within the Blackrock Depths for Orvak Sternrock at the Blackrock Pass in Burning Steppes.','Has the deed been done, has the senate been removed?','<Orvak would let out a small chuckle of enjoyment.>\n\nThe hatred instilled deep within me has begun to cool, the fire that once raged on has eased.\n\nIt fills me with vigor to know they met their end.\n\nI know deepdown that Shadowforge can never be saved, regardless, I thank you.\n\nI will not be needing this any longer, for I do not intend to return, perhaps you may find some use for it.',0,0,0,0,0,0,0,0,8904,25,0,0,0,0,0,0,0,0,10000,6550,0,0,0,0,0,0,0,0,0,0,0,60668,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60833, 40464);
replace into creature_involvedrelation (id, quest) values (60833, 40464);

update quest_template set type = 81 where entry = 40464;

replace into item_template values
 ('60668', '4', '0', 'Badge of Shadowforge', '', '66166', '2', '0', '1', '40000', '10000', '12', '-1', '-1', '58',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '50', '0', '18', '0',
 '0', '0', '0', '9330', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);

-- Discovering Golem Secrets
delete from quest_template where entry = 40465;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40461,40465,2,46,55,45,0,0,'Discovering Golem Secrets','Hey there, I got a strange request for you if you don\'t mind helping. I used to be an Arcanasmith within Shadowforge and worked with all kinds of Golem Cores.\n\nMy loyalty to ol\' Orvak got me tossed out with the rest of the miners. Whenever we get out of this here camp I want to continue my work and I\'d like a head start.\n\nUp to the north is the Ruins of Thaurrisan. The Dark Irons have War Reavers that patrol, those Reavers are powered by Golem Cores, get me three of them, so we can see what kind of power they contain.','Gather 3 Golem Cores for Radgan Deepblaze at Blackrock Pass in Burning Steppes.','Any luck in obtaining those Golem Cores?','<Radgan would take his time inspecting the cores.>\n\nFlaws, cracks, hmm.. These are some second rate power cores, not the type of stuff I am looking for.',60669,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60834, 40465);
replace into creature_involvedrelation (id, quest) values (60834, 40465);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60669,16209,'Golem Core',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(7039,60669,-30,1,1,1,0);

-- To Purchase Secret Information
delete from quest_template where entry = 40466;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40465,40466,2,46,55,45,0,0,'To Purchase Secret Information','During my time in the mountain I had met all kinds of characters within the Grim Patron, one of which was a rather ambitious goblin who said he could get me almost anything.\n\nA few months ago I requisitioned him for information on where to acquire a Arcane Golem Core. Last I recall, he frequents Steamwheedle Port in Tanaris, and goes by the name \'Jabbey\', aparently a lot of people know him.\n\nTravel there, and get me the Arcane Golem Core Information from him, just mention my name and he should know what you are looking for.','Collect the Arcane Golem Core Information from Jabbey in Steamwheedle Port and return to Radgan Deepblaze at Blackrock Pass in Burning Steppes.','Have you spoken with Jabbey?','Hey look, it means a lot for you to travel all that distance for me, I made it worth your while in coin, now lets see...',60670,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7500,1500,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60834, 40466);
replace into creature_involvedrelation (id, quest) values (60834, 40466);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60670,7798,'Arcane Golem Core Information',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

-- The Arcane Golem Core
delete from quest_template where entry = 40467;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40466,40467,2,1584,55,45,0,0,'The Arcane Golem Core','This information contains all manner of suppliers, distributors and who is involved, it appears Argelmach is the one who would hold such an item.\n\nIf I am to ever get my hands on an Arcane Golem Core, it would be through him, and that means I need you to get it.\n\nYou can find Argelmach deep within the Blackrock Depths, he is usually seen around a team of weapons experts and Arcanasmiths.\n\nBring me a Arcane Golem Core, and I will make it worth your while!','Find, and collect an Arcane Golem Core from Golem Lord Argelmach in Blackrock Depths and return to Radgan Deepblaze at Blackrock Pass in Burning Steppes.','Have you ventured deep into the Blackrock Depths?','Look at the sheer power within this thing, it is much more advanced than what we used to work on in the Mold Foundry, this is intense.\n\nYou\'ve done me a great favor, and now perhaps I may actually have something to work on when we get our of here.\n\nI reconfigured one of the Golem Cores you got me from the War Reavers, hopefully you\'ll get some use from it!',60671,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5850,0,0,0,0,0,0,0,0,0,0,0,60672,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60834, 40467);
replace into creature_involvedrelation (id, quest) values (60834, 40467);

update quest_template set type = 81 where entry = 40467;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60671,24730,'Arcane Golem Core',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(8983,60671,-100,1,1,1,0);

replace into item_template values
 ('60672', '4', '0', 'Energized Golem Core', 'The core crackles with power.', '16209', '2', '0', '1', '58904', '14476', '12', '-1', '-1', '58',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '17988', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);

-- Miners Union Mutiny II
delete from quest_template where entry = 40468;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40462,40468,2,5098,50,45,0,0,'Miners Union Mutiny II','Now we will strike at the heart of the Miners Union.\n\nTheir main project lays just beyond the excavation, and deep within the Quarry. It is there they began their mutiny to get Orvak removed, and it is there they will feel the wrath of Morgrim Firepike.\n\nOh, and his mercenaries, of course.\n\nHead to the Hateforge Quarry to the east, and kill twenty of them, they shall have consequences for their actions.','Slay 20 Hateforge Miners at the Hateforge Quarry and return to Morgrim Firepike at Blackrock Pass in Burning Steppes.','Justice grows ever closer, you can practically feel it.','You have done well by me, and truly made them bleed. Justice has been served, and their work has been slowed tremendously. I would like to offer you a reward for all of your hard work, take it, as a herald of justice, you deserve it.',0,0,0,0,0,0,0,0,60721,20,0,0,0,0,0,0,0,0,0,6350,0,0,0,0,0,0,0,0,0,0,0,60673,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60832, 40468);
replace into creature_involvedrelation (id, quest) values (60832, 40468);

update quest_template set type = 81 where entry = 40468;

replace into item_template values
 ('60673', '4', '4', 'Cuffs of Justice', '', '27406', '2', '0', '1', '29032', '7258', '9', '-1', '-1', '57',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '11', '5', '5',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '227', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '0', '0', '0', '40', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);

-- Vilegrip's Demise
delete from quest_template where entry = 40469;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40461,40469,2,46,51,45,512,0,'Vilegrip\'s Demise','Oh, how the name \'Vilegrip\' brings a burning desire for blood to my head. His name has rung deep in my mind ever since the mutiny.\n\nSlaver Vilegrip is responsible for the enslavement of all those that stood with Orvak, those who now rot deep within the Blackrock Mountain.\n\nHe shall pay for his crimes, and you will bring me his head. Search for him, he should be at the Hateforge Excavation to the east. Make sure he begs and cries for the atrocities he has commited, make him suffer.','Collect the Head of Vilegrip at the Hateforge Excavation and return to Morgrim Firepike at Blackrock Pass in Burning Steppes.','Has that worm been trampled $c?','It is about time Vilegrip got what was coming to him, even if he deserved torture. I prepared a reward for you incase you returned, and here you are, take it.',60674,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6150,0,0,0,0,0,0,0,0,0,0,0,60675,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60832, 40469);
replace into creature_involvedrelation (id, quest) values (60832, 40469);

update quest_template set type = 1 where entry = 40469;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60674,3920,'Head of Vilegrip',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

update creature_template set loot_id = 60836 where entry = 60836;
replace into creature_loot_template values
(60836,60674,-100,1,1,1,0);

replace into item_template values
 ('60675', '4', '0', 'Anvilrage Shroud', '', '23043', '2', '0', '1', '42776', '10694', '16', '-1', '-1', '58',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '4', '3', '2',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '32', '0', '5', '0',
 '0', '0', '0', '13665', '1', '0', '0', '-1', '0', '-1', '9331', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);

-- The Harvest Golem Mystery
delete from quest_template where entry = 40470;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40470,2,14,10,8,0,0,'The Harvest Golem Mystery','The mysterious animation runes, I\'ve been trying to get my hands on one, but as a shop keep I aint exactly the type to go and fight mechanical monsters.\n\nI work for a certain someone who is investigating the harvest golems in Westfall. If you could recover one, I would make it worth your while!\n\nYou can find one within any Harvest Golem in the region.','Collect a Cracked Animation Rune for Christopher Hewen in Sentinel Hill.','Have you recovered one?','What a fine specimen, this should work just fine! The person I am working for is investigating the harvest golems in Westfall- to help the farmers get rid of them, of course, and he could use all the samples he could get.\n\nI have some work for you if you want to earn more coin, interested?',60676,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,500,680,72,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (8934, 40470);
replace into creature_involvedrelation (id, quest) values (8934, 40470);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60676,20984,'Cracked Animation Rune',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(36,60676,-80,1,1,1,0),
(114,60676,-80,1,1,1,0),
(115,60676,-80,1,1,1,0);



