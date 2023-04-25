-- The Key to Karazhan I
UPDATE quest_template SET NextQuestInChain = 40818, NextQuestId = 0, PrevQuestId = 0 WHERE entry = 40817;
-- The Key to Karazhan II
UPDATE quest_template SET NextQuestInChain = 0, NextQuestId = 0, PrevQuestId = 40817 WHERE entry = 40818;

-- The Key to Karazhan III (A)
UPDATE quest_template SET NextQuestInChain = 40820, NextQuestId = 0, PrevQuestId = 40818 WHERE entry = 40819;
-- The Key to Karazhan IV (A)
UPDATE quest_template SET NextQuestInChain = 40821, NextQuestId = 0, PrevQuestId = 40819 WHERE entry = 40820;
-- The Key to Karazhan V (A)
UPDATE quest_template SET NextQuestInChain = 40825, NextQuestId = 0, PrevQuestId = 40820 WHERE entry = 40821;

-- The Key to Karazhan III (H)
UPDATE quest_template SET NextQuestInChain = 40823, NextQuestId = 0, PrevQuestId = 40818 WHERE entry = 40822;
-- The Key to Karazhan IV (H)
UPDATE quest_template SET NextQuestInChain = 40824, NextQuestId = 0, PrevQuestId = 40822 WHERE entry = 40823;
-- The Key to Karazhan V (H)
UPDATE quest_template SET NextQuestInChain = 40825, NextQuestId = 0, PrevQuestId = 40823 WHERE entry = 40824;

-- The Key to Karazhan VI
UPDATE quest_template SET NextQuestInChain = 40826, NextQuestId = 0, PrevQuestId = 0 WHERE entry = 40825;
-- The Key to Karazhan VII
UPDATE quest_template SET NextQuestInChain = 40827, NextQuestId = 0, PrevQuestId = 40825 WHERE entry = 40826;
-- The Key to Karazhan VIII
UPDATE quest_template SET NextQuestInChain = 40828, NextQuestId = 0, PrevQuestId = 40826 WHERE entry = 40827;
-- The Key to Karazhan IX
UPDATE quest_template SET NextQuestInChain = 40829, NextQuestId = 0, PrevQuestId = 40827 WHERE entry = 40828;
-- The Key to Karazhan X
UPDATE quest_template SET NextQuestInChain = 0, NextQuestId = 0, PrevQuestId = 40828 WHERE entry = 40829;

-- Set the following npc entries to scale 1, they are currently TINY.
update creature_template set scale = 1 where entry in (61393,61395,61396,61400);
-- Change display ID of item entry 61236 to 1317.
update item_template set display_id = 1317 where entry = 61236;
-- Add the following items to the sell list of NPC Historian Samual Ravencrest, add vendor flags to this npc as well. (entry 61269).
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61269,61236, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61269,61235, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61269,61200, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61269,61201, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61269,61202, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61269,61176, 0, 0, 0, 0);
-- Gossip text of npc entry 61269 changed.
update broadcast_text set male_text = 'Why, hello there, and welcome to Ravenshire!$B$BThis storied town is one of the oldest in Gilneas, and has long pledged fealty to the lords of Ravenwood Keep.$B$BSince the castle fell under dark times, Lord Ravenwood has relocated his court here, which means that history is being made right before our eyes!$B$BIf you\'d like to learn more of our fascinating past, I have quite the collection of texts that range from historical accounts and scholarly dissertations, to thrilling folktales and fables.' where entry = 61269;
-- New quest for PTR added.
-- Scouring Greyshire
delete from quest_template where entry = 40830;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40830,2,5179,42,36,520,0,'Scouring Greyshire','It may seem dreary here in Gilneas, though I must assure you this was not always our reality. In times past, I spent many years studying under my masters\' tutelage, and painting great manuscripts for the Light. I spread the faith and broke bread with many fine folk.$B$BThere are a foolish few who would assume we went unscathed during the perilous times of the Third War. Whilst we may not have suffered directly from the plague as our northern cousins have, we did have conflict with the Scourge.$B$BYou see, two years ago, a powerful lich named Naze the Eternal breached the wall near Oldrock Pass. Ultimately, the undead were defeated by the good soldiers of Gilneas, but our victory was paid at a terrible toll.$B$BI was lucky to escape Greyshire with my life, others were not so fortunate. I ask of you to scour that forsaken place, and recover the manuscripts that I spent my younger years painting. While you are there, bring peace to some of the forlorn souls that still remain.','Slay 9 Lingering Skeletons, 9 Shambling Dead and recover the Greyshire Manuscripts for Father Oblen at Shademore Tavern in Gilneas.','It may seem like a perilous task, but remember: Keep your faith in the Light and you are bound to find yourself on the right path.','<Father Oblen seems pleased gazing upon his old work.>$B$BAhh, I never thought I would look upon these scripts again, lucky they are to have survived all of the misery that befell that place.$B$BI thank you greatly for your efforts, $c. Please, take this as a sign of my gratitude.',61258,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,19800,3300,0,0,0,0,0,0,0,0,0,0,0, 61259,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61386, 40830);
replace into creature_involvedrelation	(id, quest) values (61386, 40830);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61258,1037,'Greyshire Manuscripts',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

REPLACE INTO gameobject_template VALUES
(2011105, 3, 23434, 'Weathered Chest', 0, 4, 1, 43, 2011105, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template values
(2011105,61258,-100,0,1,1,0);

update gameobject set spawntimesecsmin = 10, spawntimesecsmax = 10 where ID = 2011105;

replace into item_template values
 ('61259', '4', '1', 'Cuffs of Sanctitude', '', '16897', '2', '0', '1', '10620', '2655', '9', '-1', '-1', '44',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '6', '3', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '24', '0', '0', '0',
 '0', '0', '0', '21505', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '25', '0', '0', '0', '0', '7', '0', '0', '0',
 '0', '1', NULL);
