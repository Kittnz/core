REPLACE INTO `creature_display_info_addon` (`display_id`, `bounding_radius`, `combat_reach`, `gender`, `display_id_other_gender`) VALUES
(20277, 0, 0, 0, 0);
-- High Officer Osmark, display ID 20277, faction 14, level 45, humanoid, scale 1, weapon1 61333, weapon2 61240 (Has 3120 hp, 3100 armor and deals 0.25x more damage then Greymane Taskmaster)
REPLACE INTO creature_template VALUES
(61542, 20277, 0, 0, 0, 0, 'High Officer Osmark', NULL, 0, 45, 45, 3120, 3120, 0, 0, 3100, 14, 0, 1, 1.14714, 1, 18, 5, 0, 0, 1, 97, 119, 0, 204, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 7, 0, 61542, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 84, 115, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @equip_template = 20402; set @weapon_1 = 61333; set @weapon_2 = 61240; set @weapon_3 = 0; set @creature = 61542;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

-- Signet of Silverlaine
delete from quest_template where entry = 40924;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40924,2,5179,45,38,520,0,'Signet of Silverlaine','During the siege of Ravenshire a group of thieves and brigands broke into my chambers and made away with most prized items of my family. One of which was the Signet of Silverlaine, once owned by my father and passed down to me.$B$BI have received news that my family Signet was given as a token of honor to a well respected officer amongst the royalists named Osmark. He should be lording over the Dryrock Pit far to the west. Look for where the grass ceases to grow, and find the massive pit full of industry.$B$BReclaim my birthright, and you shall be rewarded.','Reclaim the Signet of Silverlaine from High Officer Osmark at The Dryrock Pit for Baron Caliban Silverlaine at Ravenshire in gilneas.','Do not take your task lightly $c, Dryrock Pit is one of their most vital operations in the region and it will be under heavy guard.','<Baron Caliban Silverlaine looks at the signet with a smile gracing his features. Without a second word, the ring is slid upon his finger.>$B$BYou have done well, it is untarnished. It feels good to know this officer had his life claimed for such a crime.$B$BI have prepared a reward for you, thanks again adventurer.',61466,1,0,0,0,0,0,0, 61542,1,0,0,0,0,0,0, 0,0, 0,22200,3700,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61467,1,61468,1,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61257, 40924);
replace into creature_involvedrelation	(id, quest) values (61257, 40924);

update quest_template set requiredraces = 589 where entry = 40924;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61466,14413,'Signet of Silverlaine',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,4);

replace into creature_loot_template values
(61542,61466,-100,0,1,1,0);

replace into item_template values
 ('61467', '2', '15', 'Blade of Caliban', '', '20354', '2', '0', '1', '63492', '15873', '13', '-1', '-1', '44',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '6', '3', '4',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1900', '0',
 '0', '32', '66', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '3', '0', '0', '55', '0', '0', '0', '0', '26', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61468', '4', '0', 'Medallion of Silverlaine', '', '15420', '2', '0', '1', '28832', '7208', '2', '-1', '-1', '44',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '11', '6', '4',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '26', '0', '0', '0',
 '0', '1', NULL);

-- Hollow Web Silk
delete from quest_template where entry = 40925;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40925,2,5179,44,35,8,0,'Hollow Web Silk','When this conflict is over, no matter who wins, I must be presentable as the nobility that my family is beholden. If I am to retain such a high standing, I require the finest silk that the land can offer.$B$BThe spiders of the Hollow Web Woods create a rare and hard to come by silk. I must have it so that I can commission a fine set of new garments for when this conflict inevitably comes to an end.$B$BYou can find the Hollow Web Woods just to the west of here. Gather me ten Hollow Web Silk and I shall make it worth your time, commoner.','Gather 10 Hollow Web Silk from the spiders of Hollow Web Woods for Magistrate Carson at Ravenshire in Gilneas.','I am not paying you to waste time you know.','My, would you look at this. Such an intricate and complex silk.$B$BIt will surely be worth its cost when the creation of my new garments are complete.$B$BOh, yes I was to pay you, wasn\'t I? Take this silver, and move along, would you.',61469,10,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 5000,20100,3350,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61270, 40925);
replace into creature_involvedrelation	(id, quest) values (61270, 40925);

update quest_template set requiredraces = 589 where entry = 40925;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61469,5891,'Hollow Web Silk',12,1,2048,1,-1,-1,1,10,-1,-1,-1,-1,4,'',0,7);

replace into creature_loot_template values
(61232,61469,-48,0,1,1,0),
(61233,61469,-48,0,1,1,0);

-- Securing Gilneas I
delete from quest_template where entry = 40926;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40926,2,5179,44,35,0,0,'Securing Gilneas I','The land is tainted with the foul mark of worgen that tread through our lands unopposed. The royalists have seen fit to punish the people by letting their kind spread like a disease.$B$BEven now the worgen reach as fair south as the Overgrown Acre just to the northwest of here. If they will not put an end to this threat, then we must. Find the Bloodclaw tribe that stalks within Gilneas, hunt them, and recover twelve of their pelts.','Gather 12 Bloodclaw Pelts from the Bloodclaw Worgen for Corporal Ranworth at Ravenshire in Gilneas.','Have the worgen been culled?','Your efforts will better the realm in time. The less worgen that stalk our forests, the faster we can return to a state of peace.',61470,10,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 1000,20100,3350,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61540, 40926);
replace into creature_involvedrelation	(id, quest) values (61540, 40926);

update quest_template set requiredraces = 589 where entry = 40926;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61470,7990,'Bloodclaw Pelt',12,1,2048,1,-1,-1,1,12,-1,-1,-1,-1,4,'',0,8);

replace into creature_loot_template values
(61251,61470,-66,0,1,1,0),
(61252,61470,-66,0,1,1,0),
(61253,61470,-66,0,1,1,0);

-- Securing Gilneas II
delete from quest_template where entry = 40927;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40926,40927,2,5179,44,35,0,0,'Securing Gilneas II','To stop the Bloodclaw, we must put an end to the alpha of their packs. The strongest of the worgen themselves are known as \'alpha\' and it is these creatures that command the rest of the smaller worgen.$B$BThe Bloodclaw Alpha can be found within a cave to the northwest. Search for the worgen camp west of Northgate Tower. The cave should be just nearby.$B$BSlay thirteen of them, and return to me when the job is done.','Slay 13 Bloodclaw Alpha that linger within the northern caves for Corporal Ranworth at Ravenshire in Gilneas.','Be prepared for the task ahead.$B$B I would advise to bring some assistance. Assaulting a worgen den is no easy task.','You have done well $N. It will only be a matter of time before the Bloodclaw tears itself apart as they struggle to establish new chains of command.$B$BYour duty to the people of Gilneas will not go unrewarded. Please, take one of these items as a thanks for everything you have done.',0,0,0,0,0,0,0,0, 61252,13,0,0,0,0,0,0, 0,0, 1000,22200,3700,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61471,1,61472,1,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61540, 40927);
replace into creature_involvedrelation	(id, quest) values (61540, 40927);

update quest_template set requiredraces = 589 where entry = 40927;

replace into item_template values
 ('61471', '4', '4', 'Gilneas Brigade Leggings', '', '2969', '2', '0', '1', '34508', '8627', '7', '-1', '-1', '45',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '14', '4', '10',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '379', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '0', '0', '0', '85', '0', '0', '0', '0', '26', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61472', '2', '3', 'Brigade Rifle', '', '66391', '2', '0', '1', '51236', '12809', '26', '-1', '-1', '45',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '4', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2800', '100',
 '3', '42', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '2', '0', '0', '0', '65', '0', '0', '0', '0', '26', '0', '0', '0',
 '0', '1', NULL);

-- Foulhide Pests
delete from quest_template where entry = 40928;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40928,2,5179,44,35,8,0,'Foulhide Pests','The foulhide gnolls are growing to become a large problem for the region. Recently, they attacked and laid claim to Southmire Orchard, where a good friend of mine named Ernest met his end.$B$BWhile I still grieve for his loss, I cannot stand idle. The foulhide will soon move to find another target to enact their rampant desire to fight and the Shademore Tavern could be their next target.$B$BI ask of you to head to my friend\'s orchard to the southeast of here, and slay the gnolls that inhabit it. Bring me fourteen of their armbands as proof.','Slay Foulhide Gnolls and recover 14 Foulhide Armbands for Darrow Shademoore at Shademore Tavern in Gilneas.','Have you completed your task $c?','Fewer gnolls that prowl the countryside is better for any that call Gilneas home.$B$BThank you for your hard work $c.',61473,14,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 2500,19800,3300,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61385, 40928);
replace into creature_involvedrelation	(id, quest) values (61385, 40928);

update quest_template set requiredraces = 589 where entry = 40928;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61473,1329,'Foulhide Armband',12,1,2048,1,-1,-1,1,14,-1,-1,-1,-1,4,'',0,7);

replace into creature_loot_template values
(61249,61473,-66,0,1,1,0);

-- The Gilneas Lighthouse
delete from quest_template where entry = 40929;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40929,2,5179,42,35,0,0,'The Gilneas Lighthouse','Why hello there, I am Elaroth Ranworth and it is my charge to keep the fire of this lighthouse burning bright.$B$BBefore the war we relied on a steady supply of oil from Theramore. Ever since the Greymane Wall was sealed shut, this lighthouse has been burning on what excess I could find.$B$BIt is only a matter of time before the light will cease burning. With it, I will also leave this world.$B$BI am not yet ready to depart, and so I am desperate.$B$BI ask of you to visit Theramore, speak with the Dockmaster, and see if there is any oil that can be given to me.','Speak with Dockmaster Lorman at Theramore Isle in Dustwallow Marsh to recover any oil meant for Gilneas.','Yes?','Oil to Gilneas? Hasn\'t that place been sealed shut for years now?',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,3300,550,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61258, 40929);
replace into creature_involvedrelation	(id, quest) values (60733, 40929);

update quest_template set requiredraces = 589 where entry = 40929;

-- The Gilneas Lighthouse II
delete from quest_template where entry = 40930;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40929,40930,2,5179,42,35,0,0,'The Gilneas Lighthouse II','Huh, now that you mention it, we did have a supply of old oil that lingered around here for some years. I hate to tell you but it was taken when the deserters left the city and went to found their camp in the quagmire.$B$BI have no doubts their purpose for the highly flammable liquid is nefarious. That or they desire to make some coins from the valueable liquid. There aint many active sources working these days.$B$BIf you want the oil, recover it from them.','Gather the Stolen Oil Shipment from the Deserter\'s Hideout for Dockmaster Lorman at Theramore Isle in Dustwallow Marsh.','Has the oil been recovered?','Hmm, its been some time since I properly looked at this drum, but I think this is it.',61474,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,22500,3750,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (60733, 40930);
replace into creature_involvedrelation	(id, quest) values (60733, 40930);

update quest_template set requiredraces = 589 where entry = 40930;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61474,8381,'Stolen Oil Shipment',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,0);

REPLACE INTO gameobject_template VALUES
(2020029, 3, 23556, 'Stolen Oil Shipment', 0, 4, 1, 43, 2020029, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template values
(2020029,61474,-100,0,1,1,0);

-- The Gilneas Lighthouse III
delete from quest_template where entry = 40931;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40930,40931,2,5179,42,35,0,0,'The Gilneas Lighthouse III','Now that you have recovered this oil, it can be returned to Gilneas, should you have a means to actually enter the place.$B$BI did hear rumors of a civil war brewing there, so I suggest you be careful.','Return the Stolen Oil Shipment to Elaroth Ranworth at Greymane\'s Watch in Gilneas.','So, this is the oil from Theramore?','Relief, I can actually feel an emotion other than fear.$B$BI was cursed long ago, to forever tend to this fire. Should the flame go extinct, I would die. I cannot explain the fear I have about what would happen should the flame go out. Whilst I am bound to this spiritual form, I do not know what comes after, and that is what I truly dread.$B$BI would give whatever I can, to suffer as I am now, then to drift away forever, forgotten for all time.',61474,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61474,1, 0,22500,3750,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61475,1,61476,1,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (60733, 40931);
replace into creature_involvedrelation	(id, quest) values (61258, 40931);

update quest_template set requiredraces = 589 where entry = 40931;

replace into item_template values
 ('61475', '4', '0', 'The Light of Elaroth', '', '7461', '2', '0', '1', '27376', '6844', '23', '-1', '-1', '43',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '6', '4', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '9294', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '26', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61476', '4', '2', 'Lightkeeping Boots', '', '13864', '2', '0', '1', '23724', '5931', '8', '-1', '-1', '43',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '13', '6', '4',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '80', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '45', '0', '0', '0', '0', '7', '0', '0', '0',
 '0', '1', NULL);

-- Wagon Woes
delete from quest_template where entry = 40932;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40932,2,5179,41,35,0,0,'Wagon Woes','You there, why I am lucky to have you stumble across me. I\'m having a terrible time. Forced to abandon my family home, now this!$B$BThe wheel on my wagon has broken and needs to be replaced, but I left the spare back at the plantation. You wouldn\'t mind doing me a favor, would you? I cannot return as worgen have taken over, but maybe you can.$B$BHead to the Rosewick Plantation just to the northwest of here, and bring me my spare wheel from my house.','Recover the Spare Wagon Wheel for Donald Rosewick near Northgate Tower in Gilneas.','Have you gotten my spare wheel?','Oh, this is splendid, now I will be able to make pace to Shademore Tavern!',61477,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,16800,2800,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61384, 40932);
replace into creature_involvedrelation	(id, quest) values (61384, 40932);

update quest_template set requiredraces = 589 where entry = 40932;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61477,7926,'Spare Wagon Wheel',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,0);

REPLACE INTO gameobject_template VALUES
(2020030, 3, 31, 'Spare Wagon Wheel', 0, 4, 1, 43, 2020030, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template values
(2020030,61477,-100,0,1,1,0);

-- Rosewick Worries
delete from quest_template where entry = 40933;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40932,40933,2,5179,42,35,0,0,'Rosewick Worries','I have one last thing to ask you. It will take me some time before I can get going again, but in the meantime I want you to make sure the worries of my wife are settled.$B$BI sent her to Shademore Tavern before I departed with some of our most valuable posessions. I want you to let her know that I am on the way, and I am safe. You can find the Shademore Tavern by following this road, and heading west at the crossroad to Ravenshire.','Meet with Frell Rosewick at the Shademore Tavern in Gilneas.','Yes?','Donald sent you?$B$B<A wave of relief washes over the woman, who sighs out a deep exhale.>$B$BThese words have brought me extreme relief. I was prepared for the worst. I told him to come with me, but he was stubborn to look after that plantation until things got unbearable.$B$BThanks for this news stranger, please, take this.',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 1000,3300,550,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61384, 40933);
replace into creature_involvedrelation	(id, quest) values (61381, 40933);

update quest_template set requiredraces = 589 where entry = 40933;

-- Allies Against Undeath
delete from quest_template where entry = 40934;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40934,2,5179,44,35,8,0,'Allies Against Undeath','The foul taint of undeath is a most vile and terrifying thing. The land of Gilneas some years ago was invaded by a lich who scarred the land with his evil magic.$B$BThis is a tale similar to what befell my own lands. You see, the Scarlet Crusade is not an enemy, for we all serve the same purpose.$B$BI ask you to prove yourself as an agent against necromancy. Travel to Greyshire, or what is left of it. Slay the dead things that still walk there.','Slay 7 Lingering Skeletons and 7 Shambling Dead for Brother Elias at Shademore Tavern in Gilneas.','Have you dealt holy retribution?','So, it would appear that you are indeed not corrupted by the shadow.',0,0,0,0,0,0,0,0, 61234,7,61235,7,0,0,0,0, 0,0, 0,19800,3300,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61387, 40934);
replace into creature_involvedrelation	(id, quest) values (61387, 40934);

update quest_template set requiredraces = 589 where entry = 40934;

-- Scarlet Corruption
delete from quest_template where entry = 40935;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40934,40935,2,796,44,35,512,0,'Scarlet Corruption','Now that I can trust you to not be an agent of undeath, I can reveal the true reason that I have sought neutral lands. The Crusade was once a noble organization of high integrity, but cracks have begun to show in the pillars of our most trusted leaders.$B$BDeep within the Cathedral there are rumors spreading of the true fate of High Inquisitor Fairbanks. I have good sources to believe his death was halted by... Unnatural means. If it is true that necromancy has become common among the elite of the Crusade, I require proof.$B$BFind Inquisitor Fairbanks within the Scarlet Cathedral, and discover the truth.','Discover the truth about the fate of High Inquisitor Fairbanks for Brother Elias at Shademore Tavern in Gilneas.','So, what is it you have uncovered within my homeland?','I cannot believe the words that I am hearing, such practices among the leaders of my people? Me and others have long been wary of such allegations, but to know it to be true...$B$BI will have to convene with the others to decide our future. I thank you greatly. Please, take this, as thanks from myself and those that I represent.',0,0,0,0,0,0,0,0, 4542,1,0,0,0,0,0,0, 0,0, 0,22800,3800,0,0,0,0,0,0,0,0,0,0,0, 61478,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61387, 40935);
replace into creature_involvedrelation	(id, quest) values (61387, 40935);

update quest_template set requiredraces = 589, type = 81 where entry = 40935;

replace into item_template values
 ('61478', '4', '0', 'Ring of Holy Sacrement', '', '24087', '2', '0', '1', '27404', '6851', '11', '-1', '-1', '43',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '21509', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '26', '0', '0', '0',
 '0', '1', NULL);

-- Vagrant Supplies
delete from quest_template where entry = 40936;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40936,2,5179,43,35,8,0,'Vagrant Supplies','We arrived in Gilneas with the hope of being free from conflict. However, we have only come to find hostility.$B$BThree nights ago a worgen raid attacked our camp and made away with supplies most vital to us. However, these supplies were not taken by the pale Nighthowl, but instead the Bloodclaw. They are another tribe in conflict with the Nighthowl, who have a camp to the south of us. I have no doubt they have our supplies stashed amongst their hovels.$B$BRecover the supplies, and return them to us.','Recover the Vagrant Supplies from the Bloodclaw camp to the south and return to Camp Leader Gethenor at the Vagrant Camp in northern Gilneas.','It is only a matter of time until our supplies are spoiled by the vile hands of the worgen who ran off with them.','<Gethenor takes his time, going through the missing supplies.>$B$BThat is a relief, it is all here. I was afraid our rare medical supplies and tinctures would have been destroyed in the rough transit to the camp.$B$BI must thank you greatly for your work. We have been heavily reliant on these supplies. Please, take this, as thanks from us here.',61479,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 1000,19500,3250,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61535, 40936);
replace into creature_involvedrelation	(id, quest) values (61535, 40936);

update quest_template set requiredraces = 589 where entry = 40936;


replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61479,7913,'Vagrant Supplies',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,0);

REPLACE INTO gameobject_template VALUES
(2020031, 3, 24108, 'Medical Crate', 0, 4, 1, 43, 2020031, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template values
(2020031,61479,-100,0,1,1,0);

update gameobject set spawntimesecsmin = 10, spawntimesecsmax = 10 where ID = 2020031;

-- Nighthowl Nuisance
delete from quest_template where entry = 40937;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40937,2,5179,43,35,8,0,'Nighthowl Nuisance','Night in and night out, we have been subjected to raids from the hostile Nighthowl. They are a ferocious and merciless foe that has tested our defences.$B$BWe ask for your aid in dealing with this threat before they overwhelm us. The Nighthowl can be found lingering all over northern Gilneas, from Oldrock Pass to the Northgate Tower$B$BSlay them, and bring me eleven of the shackles they wear around their wrists.','Slay the Nighthowl Worgen and collect 11 Nighthowl Shackles for Camp Leader Gethenor at the Vagrant Encampment in northern Gilneas.','Each moment wasted is another moment the Nighthowl bide their strength.','These shackles hold some sort of power channeled only by the worgen.$B$BYou have done well in thinning their numbers, but there is still more than we can combat.',61480,11,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 1000,19500,3250,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61535, 40937);
replace into creature_involvedrelation	(id, quest) values (61535, 40937);

update quest_template set requiredraces = 589 where entry = 40937;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61480,3628,'Nighthowl Shackle',12,1,2048,1,-1,-1,1,11,-1,-1,-1,-1,4,'',0,0);

replace into creature_loot_template values
(61236,61480,-72,0,1,1,0),
(61237,61480,-72,0,1,1,0),
(61238,61480,-72,0,1,1,0);

-- Nighthowl Neutralizing
delete from quest_template where entry = 40938;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40937,40938,2,5179,43,35,8,0,'Nighthowl Neutralizing','To end the Nighthowl threat, we must target their leadership. The tribe of worgen are led by strong alpha who command their packs with extreme efficiency. Without the alpha, the Nighthowl would crumble into disarray.$B$BI am asking you to delve into the wolf\'s lair.$B$BOldrock Pass can be found to the west of here. It is a trail between Silverpine Forest and Gilneas that got breached some time ago. It is infested with the Nighthowl worgen, and it is there you will find their alpha.$B$BSlay them, and rid us of this threat.','Slay 3 Nighthowl Alphas for Camp Leader Gethenor at the Vagrant Encampment in northern Gilneas.','The Alpha are a cunning foe, plot your moves and prepare for a challenge.','You have scattered the Nighthowl with this move. I suspect their attacks on us will cease as infighting begins to establish new leaders for their tribe.$B$BYou have done us a good favor $c, and for that you shall be rewarded.',0,0,0,0,0,0,0,0, 61237,3,0,0,0,0,0,0, 0,0, 1000,21900,3650,0,0,0,0,0,0,0,0,0,0,0, 61481,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61535, 40938);
replace into creature_involvedrelation	(id, quest) values (61535, 40938);

update quest_template set requiredraces = 589 where entry = 40938;

replace into item_template values
 ('61481', '4', '3', 'Vagrant Coif', '', '25904', '2', '0', '1', '25108', '6277', '1', '-1', '-1', '43',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '13', '3', '7',
 '7', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '192', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '5', '0', '0', '0', '60', '0', '0', '0', '0', '26', '0', '0', '0',
 '0', '1', NULL);