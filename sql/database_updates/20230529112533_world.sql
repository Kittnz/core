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

