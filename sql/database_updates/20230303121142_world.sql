-- Hidden but not Gone
delete from quest_template where entry = 40796;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40796,2,331,28,24,0,0,'Hidden but not Gone','There are many things that can hurt me. After seeing so many years pass by, believe me when I say, physical pain is among the least of them.$B$BI assume you are not unfamiliar with the problems we have in Ashenvale, $c? Between the Horde and the Sayaads, the tranquillity of the forest is fast becoming just a memory. But we have persisted - and will persist - through this challenge and countless more, mark my words.$B$BThe disgusting demons that have an uncanny resemblance to us are the worst affronts to nature. They hide away in their hovels, plotting corruption and torturing us all. I want you to head to each one of their nooks and crannies, and do your fair share in thinning them out. Bring me a collection of their gnarled and twisted horns, and the Kaldorei will know of your bravery.','Collect 6 horns from each of the Satyr camps.','Blights on the land can be hidden with ease, but healed with difficulty. Remember this.','Exceptional. I hope you sustained no injuries during your battles? You have aided more in one skirmish than those childish sentinels have done since they arrived.',61150,6,61151,6,61152,6,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,2150,69,200,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61145, 40796);
replace into creature_involvedrelation	(id, quest) values (61145, 40796);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61150,941,'Bleakheart Horn',12,1,2048,1,-1,-1,1,6,-1,-1,-1,-1,4,'',0);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61151,941,'Xavian horn',12,1,2048,1,-1,-1,1,6,-1,-1,-1,-1,4,'',0);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61152,941,'Felmusk horn',12,1,2048,1,-1,-1,1,6,-1,-1,-1,-1,4,'',0);

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(3765, 61150, -45, 0, 1, 1, 0),
(3767, 61150, -45, 0, 1, 1, 0),
(3770, 61150, -45, 0, 1, 1, 0),
(3771, 61150, -45, 0, 1, 1, 0),
(3752, 61151, -45, 0, 1, 1, 0),
(3754, 61151, -45, 0, 1, 1, 0),
(3755, 61151, -45, 0, 1, 1, 0),
(3757, 61151, -45, 0, 1, 1, 0),
(3758, 61152, -45, 0, 1, 1, 0),
(3759, 61152, -45, 0, 1, 1, 0),
(3762, 61152, -45, 0, 1, 1, 0),
(3763, 61152, -45, 0, 1, 1, 0);

-- A Foul Effigy
delete from quest_template where entry = 40797;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40797,2,331,28,20,0,0,'A Foul Effigy','The carving of a Furbolg has been riddled with sharp thorns and splinters of metal. They are gouged into its face, neck, and body. And yet, the carving can clearly be made out to have an almost childlike appearance. Was this someone\'s toy once? What were the Satyr doing with it?','Return the Effigy to its owner.','<The Furbolg watches you curiously as you approach.>','<He peaks his ears and snatches the effigy away. He is silent for several seconds, before mewling quietly.>$B$BThis was given to me when I was a mere cub, by my parents. We bless them to protect us, always. They are deeply personal, you only ever get one in life. I sensed something I was barely able to see snatch it away as I came to Forest Song for refuge! I have no idea what they were doing to it, or why. Sometimes it is best not to ask.$B$B<Picking out the thorns, he hugs it to his chest and nods.>$B$BYou cannot know how much this means to me. I have very little, but I would have given everything away to keep this. So please, take... take.',61153,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61153,1, 0,1800,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61154,1,61155,1,61156,1,0,0, 0,0,'');

replace into creature_involvedrelation	(id, quest) values (61146, 40797);

update quest_template set requiredraces = 1101 where entry = 40797;

REPLACE INTO item_template values
(61153, 12, 0, 'Foul Effigy', '', 34261, 1, 2048, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 4, 0, 0, 0, 40797, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(3770, 61153, 30, 0, 1, 1, 0);

replace into item_template values
 ('61154', '2', '6', 'Savage Spear', 'Simple, but brutally effective.', '25630', '2', '0', '1', '25380', '6345', '17', '-1', '-1', '30',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '7', '5', '6',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2600', '0',
 '0', '41', '69', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '2', '0', '0', '85', '0', '0', '0', '0', '24', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61155', '4', '0', 'Primitive Bead Necklace', 'Not quite to most tastes.', '9852', '2', '0', '1', '22692', '5673', '2', '-1', '-1', '32',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '5', '6', '4',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '4', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61156', '4', '2', 'Headband of a Hundred Feathers', 'Seems to have lost a few.', '28739', '2', '0', '1', '13160', '3290', '1', '-1', '-1', '32',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '7', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '68', '0', '0', '0',
 '0', '0', '0', '9329', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '50', '0', '0', '0', '0', '4', '0', '0', '0',
 '0', '1', NULL);

-- Alleana Moonfeather, display ID 1932, faction 80, level 45 elite, humanoid, scale 1 , quest/gossip flags, gossip text : "Greetings, $r! I do hope you weren't planning to pay for flight travel  from me, were you?" 
REPLACE INTO creature_template VALUES
(61292, 1932, 0, 0, 0, 0, 'Alleana Moonfeather', NULL, 0, 45, 45, 5544, 5544, 0, 0, 2725, 80, 2, 1, 1.14286, 0, 20, 5, 0, 1, 1, 229, 295, 0, 204, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 51.48, 70.785, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

-- Treats for Training
delete from quest_template where entry = 40798;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40798,2,331,30,25,0,0,'Treats for Training','Greetings! Has my sister sent you? No? Oh, my brother then?$B$BYou haven\'t met them? Then who are you? Oh... well, allow me to introduce myself too. I am Alleana Moonfeather, youngest of the family! My siblings have already earned the mantle of hippogryph master, but… I am finding my training extremely difficult since my mentor was…$B$B<She trails off for a moment, before looking straight back up.>$B$BI miss him, but I must continue! For my family\'s reputation, and for his memory. It really is difficult without the proper guidance though. We raise fledgelings from a very young age, so they will be bonded to us and follow our guidance. Make no mistake, they belong to nature first and foremost, but we Kaldorei have a strong bond that allows us to share burdens!$B$BThat is, if they would listen to me. I think it\'s their diet, they need the proper food to be trained and socialised. Please, could you bring me a variety of foods for these little ones?','5 Chunks of Crawler Marrow from Zoram Strand, 5 Heaven Peaches, 5 Bear Viscera and 5 Giant Strider Wings from Darkshore to Alleana Moonfeather in Forest Song.','Hello again!','Did you carry all that in your backpack? Never mind, thank you kindly, $n.',61157,5,61158,5,61159,5,61160,5, 0,0,0,0,0,0,0,0, 0,0, 0,2300,69,250,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61292, 40798);
replace into creature_involvedrelation	(id, quest) values (61292, 40798);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61157,941,'Chunk of Crawler Marrow',12,1,2048,1,-1,-1,1,5,-1,-1,-1,-1,4,'',0),
(61158,941,'Heaven Peach',12,1,2048,1,-1,-1,1,5,-1,-1,-1,-1,4,'',0),
(61159,941,'Bear Viscera',12,1,2048,1,-1,-1,1,5,-1,-1,-1,-1,4,'',0),
(61160,941,'Giant Strider Wing',12,1,2048,1,-1,-1,1,5,-1,-1,-1,-1,4,'',0);

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(3814, 61157, -40, 0, 1, 1, 0),
(3812, 61157, -40, 0, 1, 1, 0),
(3809, 61159, -25, 0, 1, 1, 0),
(3811, 61159, -50, 0, 1, 1, 0),
(2323, 61160, -50, 0, 1, 1, 0);

-- Words of Wisdom
replace INTO quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) VALUES (40798,40799,2,331,38,25,0,0,'Words of Wisdom','They still aren\'t responding to me! How do my siblings make it look so easy! It\'s infuriating.$B$B<Her ears prick and she bares her fangs as she fails to summon a disobedient hippogryph to her side.>$B$BMy Shan\'do would tell me to drop my pride at this point, I\'m sure of it. He was always so wise and patient. Please, $n, seek other masters of flight, for advice on these annoying little creatures. Tell them of my struggles, ask them for advice. It pains me to admit that I need help, but… I need help. $B$B Please do not ask Caylais or Fyldren! It can\'t look like I am getting preferential treatment. Look around the local towns. I think I had correspondence from Nigel\'s Point, wherever that is. Teloren will definitely want to help, he\'s at the peak of Stonetalon. I would take what he says with a large pinch of salt, though.','Seek out Kaldorei hippogryph masters and hear their advice.','Hello, $n!','<She listens in silence to the advice, meditating on their words for a few minutes.>$B$BWait, Teloren said what? $B$B <She grows almost as red as a radish.>',0,0,0,0,0,0,0,0, 60031,1,60028,1,60029,1,60030,1, 0,0, 0,850,69,100,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

-- 40799: Target Has Quest 40799 In Log
replace INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (40799, 9, 40799, 0, 0, 0, 0);

replace INTO creature_questrelation		(id, quest) VALUES (61292, 40799);
replace INTO creature_involvedrelation	(id, quest) VALUES (61292, 40799);

UPDATE quest_template SET objectivetext1 = 'Speak with Teloren', objectivetext2 = 'Speak with Baritanas Skyriver', objectivetext3 = 'Speak with Daelyshia', objectivetext4 = 'Speak with Vesprystus' WHERE entry = 40799;

replace INTO creature_template VALUES
(60031, 328, 0, 0, 0, 0, 'quest_40799_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60028, 328, 0, 0, 0, 0, 'quest_40799_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60029, 328, 0, 0, 0, 0, 'quest_40799_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60030, 328, 0, 0, 0, 0, 'quest_40799_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

-- NPC Teloren (Stonetalon)
UPDATE `creature_template` SET `gossip_menu_id`=59012 WHERE `entry` = 4407;
SET @magic_number = 30077;
replace INTO broadcast_text (entry, Male_Text) VALUES (@magic_number, 'Alleana? Ah, she should have visited in person! Of course, tell her it\'s all about appearance and mannerism. Speaking to the fledglings not as a parent, nor a master: but a friend, an equal. They will respect that approach, and only by doing so can she hope to build a bridge between herself and them. Remember they are still wild creatures, they lend us their strength and service, we do not tame them.$B$BAnd please tell Allie I still press her letters to my lips some nights. She really should visit for private tuition some time.');
replace INTO npc_text (ID, BroadcastTextID0) VALUES (@magic_number, @magic_number);
replace INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(59012, 7778, 0, 0),
(59012, @magic_number, 59012, 40799);
replace INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES
(59012, 0, 2, 'Show me where I can fly.', 12271, 4, 8, 0, 0, 0, 0, 0, '', 0, 0);
DELETE FROM `gossip_scripts` WHERE `id`=59012;
replace INTO `gossip_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(59012, 0, 0, 8, 60031, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Teloren - Give Quest Credit');

-- NPC Baritanas Skyriver (Desolace)
UPDATE `creature_template` SET `gossip_menu_id`=59013 WHERE `entry` = 6706;
SET @magic_number = 30078;
replace INTO broadcast_text (entry, Male_Text) VALUES (@magic_number, 'I am not sure I recognise the name, but the process is roughly the same as gaining the respect of any other animal companion. I would advise taking them into a clearing during a full moon. The gaze of Elune often brings a sense of respect and spirituality, which may be the missing piece in her training.$B$BTell her I wish her well, for this life is demanding, but incredibly rewarding.');
replace INTO npc_text (ID, BroadcastTextID0) VALUES (@magic_number, @magic_number);
replace INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(59013, 7778, 0, 0),
(59013, @magic_number, 59013, 40799);
replace INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES
(59013, 0, 2, 'Show me where I can fly.', 12271, 4, 8, 0, 0, 0, 0, 0, '', 0, 0);
DELETE FROM `gossip_scripts` WHERE `id`=59013;
replace INTO `gossip_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(59013, 0, 0, 8, 60028, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Baritanas Skyriver - Give Quest Credit');

-- NPC Daelyshia (Ashenvale)
UPDATE `creature_template` SET `gossip_menu_id`=59014 WHERE `entry` = 4267;
SET @magic_number = 30079;
replace INTO broadcast_text (entry, Male_Text) VALUES (@magic_number, 'Oh my word, that\'s awful. Alleana is a Moonfeather, yes? I have every confidence she will find the methods that work best for her. It is intensely personal, after all, and every master handles the hippogryphs differently.$B$BThat said, I hear the East of our sacred forests are being ravaged about as badly as the north has been. She truly has my condolences, it cannot be easy. May Elune grant her strength. Perhaps taking a small break to relax the mind will help? One cannot hope to calm a wild beast while also being of an uncalm mind.');
replace INTO npc_text (ID, BroadcastTextID0) VALUES (@magic_number, @magic_number);
replace INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(59014, 7778, 0, 0),
(59014, @magic_number, 59014, 40799);
replace INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES
(59014, 0, 2, 'Show me where I can fly.', 12271, 4, 8, 0, 0, 0, 0, 0, '', 0, 0);
DELETE FROM `gossip_scripts` WHERE `id`=59014;
replace INTO `gossip_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(59014, 0, 0, 8, 60029, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Daelyshia - Give Quest Credit');

-- NPC Vesprystus (Teldrassil)
UPDATE `creature_template` SET `gossip_menu_id`=59015 WHERE `entry` = 3838;
SET @magic_number = 30080;
replace INTO broadcast_text (entry, Male_Text) VALUES (@magic_number, '<He looks up from feeding his flock, and replenishing their food. He wipes sweat from his brow with mucky, worn hands.> $B$B I am extremely busy as of now, performing my duties. I expect if she wants to follow in her siblings\' footsteps and serve, then she had better buckle down and put in the hours and days and years of blood sweat and tears to earn such an austere position.$B$BGoodbye.');
replace INTO npc_text (ID, BroadcastTextID0) VALUES (@magic_number, @magic_number);
replace INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(59015, 7778, 0, 0),
(59015, @magic_number, 59015, 40799);
replace INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES
(59015, 0, 2, 'Show me where I can fly.', 12271, 4, 8, 0, 0, 0, 0, 0, '', 0, 0);
DELETE FROM `gossip_scripts` WHERE `id`=59015;
replace INTO `gossip_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(59015, 0, 0, 8, 60030, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Vesprystus - Give Quest Credit');

-- The Family Name
delete from quest_template where entry = 40800;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40799,40800,2,331,30,25,0,0,'The Family Name','That\'s right. I\'m a Moonfeather! Shan\'do said so too, and I will honor his legacy!$B$BSharptalon. I know him, we have never connected before, but I have seen him in the forest glades at twilight. Such a majestic creature. Please, take one of the hatchlings, the youngest of my flock. Protect him with your life, and head south west of here. Avoid the Horde as best you can, and just south of their ugly encampment you will find those beautiful glades where our sisters wait in the trees to ambush the invaders. Sharptusk is reported to aid the defense of Ashenvale near there. Bring the little one to him, relay our family name, and see his response.','Find and commune with Sharptalon within Ashenvale Forest, then return to Alleana Moonfeather.','Hello, $n. Did you find Sharptalon?','He bowed his head? By Elune, that is amazing. Very well, I shall spend far more time with the young ones in Sharptalon\'s presence, and with some fortune, I will make my family proud. The Moonfeathers will have another master in their midst!$B$BAnd hey, this little guy seems to not want to leave your side. I suppose, if you promise to look after him, there is no issue with him following you, right? It would be the least I could offer after all the work you have done for me. Elune smiles upon us both this day, $n.',0,0,0,0,0,0,0,0, 60031,1,0,0,0,0,0,0, 0,0, 0,1200,69,200,0,0,0,0,0,0,0,0,0, 23713,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61292, 40800);
replace into creature_involvedrelation	(id, quest) values (61292, 40800);

UPDATE quest_template SET objectivetext1 = 'Find and commune with Sharptalon within Ashenvale Forest' WHERE entry = 40800;

replace INTO creature_template VALUES
(60031, 328, 0, 0, 0, 0, 'quest_40800_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

-- 40800: Target Has Quest 40800 In Log
replace INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (40800, 9, 40800, 0, 0, 0, 0);

-- NPC Sharptalon (Ashenvale)
UPDATE `creature_template` SET `gossip_menu_id`=41389, npc_flags = 1 WHERE `entry` = 12676;
SET @magic_number = 30081;
replace INTO broadcast_text (entry, Male_Text) VALUES (@magic_number, 'Sharptalon tenses visibly as you approach, but relaxes at the mention of the Moonfeather name. Eventually, his wings stop beating, he nestles to the ground below, and bows his head, letting out a deferential trill.');
replace INTO npc_text (ID, BroadcastTextID0) VALUES (@magic_number, @magic_number);
replace INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(41389, @magic_number, 41389, 40800);
DELETE FROM `gossip_scripts` WHERE `id`=41389;
replace INTO `gossip_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(41389, 0, 0, 8, 60031, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sharptalon - Give Quest Credit');

