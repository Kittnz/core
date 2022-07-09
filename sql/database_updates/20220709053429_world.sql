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

-- The Harvest Golem Mystery II
delete from quest_template where entry = 40471;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40470,40471,2,14,14,10,512,0,'The Harvest Golem Mystery II','Alright! Eager for additional work, aren\'t we?\n\nSo, my... employer is looking for even more animation runes for his experiments. Bring me an additional ten runes, and you will be greatly rewarded. But, be careful. They will accept only intact runes. Try not to damage them too much with this weapon of yours.\n\nOne more thing. Don\'t get yourself killed. Those harvest machines pack a punch, and I need you to run more errands for me.\n\nHah,I\'m joking. But seriously. Take care of yourself.','Gather 10 Intact Animation Runes from Harvest Golems in Westfall for Christopher Hewen at Sentinel Hill.','Have you collected the runes already?','Good job! And all of them are of extraordinary quality, too! I didn\'t think that you could do it, to be fair. The last adventurer helping me... let\'s just say, he got harvested, if you know what I mean. It\'s great to finally have someone who knows what they\'re doing.\n\nSo, would you want to help me once more? I need something else to be done, and I cannot leave Sentinel Hill for now. You know, I\'m waiting for a shipment of supplies from Redridge and it could arrive any moment.',60677,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1000,1350,72,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60678,1,60679,1,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (8934, 40471);
replace into creature_involvedrelation (id, quest) values (8934, 40471);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60677,20984,'Intact Animation Rune',12,1,2048,1,-1,-1,1,10,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(480,60677,-40,1,1,1,0),
(36,60677,-40,1,1,1,0),
(115,60677,-40,1,1,1,0),
(114,60677,-40,1,1,1,0);

replace into item_template values
 ('60678', '4', '3', 'Westfall Hauberk', '', '11563', '2', '0', '1', '1688', '422', '5', '-1', '-1', '18',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '3', '4', '2',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '148', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '5', '1', '0', '0', '80', '0', '0', '0', '0', '21', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60679', '4', '1', 'Westfall Rancher Boots', '', '6190', '2', '0', '1', '900', '225', '8', '-1', '-1', '18',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '2', '3', '2',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '21', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '25', '0', '0', '0', '0', '21', '0', '0', '0',
 '0', '1', NULL);

-- The Harvest Golem Mystery III
delete from quest_template where entry = 40472;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40471,40472,2,14,14,8,0,0,'The Harvest Golem Mystery III','I knew you wouldn\'t pass another opportunity to earn some coin. Ever been to Stormwind City? Oh, what am I saying, of course you did. In the northern part of the city, there is a district inhabited mostly by non-humans.\n\nDwarves, gnomes, even high elves lately. One of my dear friends, a gnomish engineer with a lovely name: Lilliam, lives there. I need you to tell him that Hewen sent you. He will give you a paper: a blueprint, even. You know what a blueprint is? Good. So, take the blueprint, come back to me, and I will pay you.\n\nEasy enough! Good luck.','Collect the Harvester Blueprint from Lilliam Sparkspindle in Stormwind City.','What is it? Don\'t you see, $R, that I am kind of busy?','Hewen sent you? This son of a trogg couldn\'t even visit me himself? Preposterous! I got his blueprint, but if you knew how much hassle it cost me! If you only knew! Tell Hewen that next time he orders something from me, he pays double!',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,350,72,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (8934, 40472);
replace into creature_involvedrelation (id, quest) values (5518, 40472);

-- The Harvest Golem Mystery IV
delete from quest_template where entry = 40473;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40472,40473,2,14,14,8,0,0,'The Harvest Golem Mystery IV','Here you have it. The Harvester Blueprint. The goblin, who sold it to me... I wish I never see his green face again! Bah!\n\nI looked into these blueprints. I don\'t know for what Hewen needs it, but it is nothing good, I tell you! This is a machine of death and destruction! I am only giving you this, because he is my old friend and I... hope he still has some brain left in his greedy head.','Bring the Harvester Blueprint back to Christopher Hewen at Sentinel Hill in Westfall.','Ahhh, $N already! You got the paper?','The Harvester Blueprints...\n\n<Christopher Hewen looks into the blueprints and makes a disgruntled face.>\n\nTo be frank, my hard-working friend, I don\'t understand any of it! But it doesn\'t matter, as I am only the messenger, a humble servant. Those papers are for my employer, who, if you are willing, you will meet soon!\n\nI would deliver them myself, but, believe me or not, those damned supplies have still not arrived! Also, traveling through these beautiful, golden plains became so dangerous lately. I am certain that you can handle it, though. Care to help me for one last time, friend?',60680,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60680,1,0,350,72,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (5518, 40473);
replace into creature_involvedrelation (id, quest) values (8934, 40473);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60680,7601,'The Harvester Blueprint',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

-- The Harvest Golem Mystery V
delete from quest_template where entry = 40474;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40473,40474,2,14,15,8,0,0,'The Harvest Golem Mystery V','Okay, listen then. I need you to bring this blueprint to a man named Maltimor Gartside. Maltimor. Gartside. Got it? Good.\n\nHe\'s an old man, in his fifties, maybe sixties. Long, gray hair, kind of skinny, pale skin. Hard to miss, you will know it\'s him. Yes, he\'s my employer. And yes, I know where he lives.\n\nWouldn\'t want you to scour through all of Westfall, of course. Go west of Sentinel Hill, but north of Moonbrook. He lives in a solitary cottage, usually spends his time outside of it. Don\'t know why, didn\'t ask, didn\'t care. So, you meet him, tell him I said hello and give him the blueprints. Easy!\n\nAlso, please, be careful. It is very, very important that those blueprints don\'t fall into the hands of those bandits with red bandanas, the Defias, as they call themselves. Light be with you, friend.','Deliver the Harvester Blueprint to Maltimor Gartside at the Gartside Plot in Westfall.','Who are you? What do you want from me?','Blueprints from Hewen, finally. He couldn\'t be any slower with it. Let me see what is written inside...',60680,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60680,1,0,350,72,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (8934, 40474);
replace into creature_involvedrelation (id, quest) values (60858, 40474);

update creature_template set script_name = 'npc_maltimor_gartside' where entry = 60858;

-- The Harvest Golem Mystery VI
delete from quest_template where entry = 40475;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40474,40475,2,14,15,10,0,0,'The Harvest Golem Mystery VI','Excuse me for my bad manners. I was so excited to finally lay my hands on those blueprints. My name is Maltimor Gartside, and I was born in the old Kingdom of Alterac. I moved to Westfall just before the First War. I have seen much, but never have I seen these lands in such a sorry state\n\nYou see, young $C, many years ago, a certain salesman arrived in Westfall. An ambitious fellow, he brought with him a new commodity- Harvest Golems. At first, farmers were overjoyed.\n\nThe new golems worked flawlessly, gathering crops for them, and scaring the wildlife away. So, more and more golems were being purchased. In a few years, they outnumbered the farmers. And then… It happened.\n\nGolems turned on their owners. In a few weeks, almost all farms across Westfall were lost to the mechanical menace. To make matters worse, the Defias arrived. So it was only natural that the people of Westfall linked the sudden change of attitude to the Brotherhood.\n\nI, however, believe that it is a mere coincidence. That someone else manipulated the golems to behave this way, and now, of course the Defias are using the situation to their advantage.\n\nI will continue the story later, $N. For now, let\'s get to the matters at hand. I have a request for you. I want to help the people of Westfall, and I think I have the solution. Yet, I need some materials.\n\nGo to Moonbrook. Before it got overrun by the Defias, the smith always had a stash of useful engineering equipment hidden near his forge, check there.','Recover the Old Engineering Tools for Maltimor Gartside at the Gartside Plot in Westfall.','Have you found the equipment?','Engineering tools. And they are all still intact. Unexpected, but a welcome surprise. Now I have all we need.',60681,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,800,72,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60858, 40475);
replace into creature_involvedrelation (id, quest) values (60858, 40475);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60681,7840,'Old Engineering Tools',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

delete from gameobject_template where entry = 2010898;
replace into gameobject_template values
(2010898,3,23434,'Forgotten Trunk',0,4,1,43,2010898,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

delete from gameobject_loot_template where entry = 2010898;
replace into gameobject_loot_template values
(2010898,60681,-100,0,1,1,0);

-- The Harvest Golem Mystery VII
delete from quest_template where entry = 40476;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40475,40476,2,14,17,10,0,0,'The Harvest Golem Mystery VII','$N I have all materials to create a new Harvest Golem. If my calculations are correct, I should be able to rewire his mind.\n\nI need your help. The Harvest Golem will be hostile at first, and the Rewiring Spell requires all my concentration. I need you to draw the golem\'s attention until I\'m finished.','Help Maltimor Gartside with casting the Rewiring Spell.','The rewiring was successful.','This is good, really good. Given time, we will be able to rewire all golems in Westfall.\n\nBut only if their production stops.',0,0,0,0,0,0,0,0,60375,1,0,0,0,0,0,0,0,0,0,1350,72,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60858, 40476);
replace into creature_involvedrelation (id, quest) values (60858, 40476);

REPLACE INTO creature_template VALUES (60871, 379, 0, 0, 0, 'Harvest Reaper', '', 0, 17, 18, 386, 417, 0, 0, 765, 35, 0, 1, 1.14286, 0, 18, 5, 0, 0, 1, 27, 34, 0, 84, 1, 2000, 2000, 1, 2, 0, 0, 0, 0, 0, 0, 28.6704, 39.4218, 100, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7342, 0, 0, 0, 1150, 0, 0, 0, '', 1, 1, 0, 0, 3, 0, 0, 0, 8405008, 0, 0, 0, '');

