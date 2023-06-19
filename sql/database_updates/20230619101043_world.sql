-- Revenge After Death
delete from quest_template where entry = 40974;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40974,2,5180,47,39,0,0,'Revenge After Death','In life I was a soldier, loyal to the Greymane cause. I participated in the battle of Greyshire and basked in the great victory over the scourge.$B$BWhilst I considered myself a great warrior, I was ambushed by a great beast with my fellow comrades. The large worgen tore us apart, and though I fought back, I was felled.$B$BNow I am here, to toil in the ceaseless memories of my failures. I want revenge upon that worgen. It goes by the name Snarlclaw. He is known to lurk deep within a cave to the west of here near the Bloodclaw camp.$B$BBring me his paw, and you shall be rewarded.','Bring the Paw of Snarlclaw to Dominic Larson at Stillward Church in Gilneas.','Has the deed been done $c?','<Dominic Larson has a smirk resting upon his face.>$B$BWell done. I must commend you for your efforts. You\'ve defeated the beast that has cursed me with eternal undeath. Take one of these, as a token of my gratitude.',61618,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,24600,4100,0,0,0,0,0,0,0,0,0,0,0, 61490,1,61619,1,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61284, 40974);
replace into creature_involvedrelation	(id, quest) values (61284, 40974);
update quest_template set requiredraces = 434		 where entry = 40974;
update quest_template set type = 1					 where entry = 40974;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61618,940,'Paw of Snarlclaw',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,3);

replace into creature_loot_template values
(61405,61618,-100,0,1,1,0);

replace into item_template values
 ('61619', '2', '0', 'Worgen Cleaver', '', '19217', '2', '0', '1', '98768', '24692', '21', '-1', '-1', '45',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '7', '6', '5',
 '3', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2400', '0',
 '0', '45', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '3', '0', '0', '75', '0', '0', '0', '0', '27', '0', '0', '0',
 '0', '1', NULL);

-- The Judge and the Phantom
delete from quest_template where entry = 40975;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40975,2,5180,46,35,8,0,'The Judge and the Phantom','<The phantom begins to phase into reality, a howling of wind heard as it begins to speak.>$B$BIn life my name was Karl Glaymore, my family was one of prominence within Gilneas. Now, we are nothing, all of us removed from the world of the living.$B$BWe were tried for conspiracy, all of us, for claims that held no merit. My children were butchered one by one by that cruel Judge Sutherland. His judgements passing with each swing of the gavel.$B$BWe were set to be examples, and now I am here to haunt this existence, to fester in anger...$B$BBring me peace. Find Judge Sutherland in Gilneas City, and end his life. I will know when the deed is done.','Slay Judge Sutherland within Gilneas City for the Angered Phantom at the Glaymore Stead in Gilneas.','<A silence hangs on the ethereal wind.>','You have done well, I am at peace, once and for all.$B$BI can feel the nether claiming the lingering essence of my spirit. It is my time to go, and rest.$B$BI have left an item for you, as thanks for everything you have done.$B$B<The phantom begins to fade.>',0,0,0,0,0,0,0,0, 61421,1,0,0,0,0,0,0, 0,0, 0,29100,4850,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61620,1,61621,1,61622,1,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61559, 40975);
replace into creature_involvedrelation	(id, quest) values (61559, 40975);
update quest_template set type = 81					 where entry = 40975;

replace into item_template values
 ('61620', '4', '3', 'Glaymore Family Breastplate', '', '4723', '2', '0', '1', '50548', '12637', '5', '-1', '-1', '50',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '19', '5', '7',
 '7', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '295', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '0', '0', '0', '100', '0', '0', '0', '0', '26', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61621', '2', '6', 'Ceremonial Gilnean Pike', '', '22242', '2', '0', '1', '127032', '31758', '17', '-1', '-1', '50',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '18', '6', '5',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2800', '0',
 '0', '69', '147', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '75', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '2', '0', '0', '85', '0', '0', '0', '0', '27', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61622', '4', '0', 'Glaymore Shawl', '', '23097', '2', '0', '1', '35456', '8864', '16', '-1', '-1', '50',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '9', '3', '4',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '32', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', '27', '0', '0', '0',
 '0', '1', NULL);

-- War on Worgen
delete from quest_template where entry = 40976;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40976,2,5179,45,38,8,0,'War on Worgen','The worgen of Gilneas are surprisingly well organized for a bunch of beasts. Their packs have caused us quite a lot of headache in spreading our influence.$B$BI am in need of someone who can sever the chain of command. An aimless group of worgen will serve us much better in the end. Travel west and search for the cavern where the Bloodclaw alpha call home. Slay them so that their packs cannot organize against us.','Slay 9 Bloodclaw Alpha for Deathstalker Vernon at Stillward Church in Gilneas.','I advise you to carry yourself with caution.$B$BYour foe is not as weak as you may think.','You have done well, with the alphas scattered there will be struggles for dominance. Whatever comes of that is not our concern, however. We have already removed the head of the beast.$B$BYour efforts to serve the Dark Lady will not go unnoticed. Take this as a commendation for your work.',0,0,0,0,0,0,0,0, 61252,9,0,0,0,0,0,0, 0,0, 0,20700,3450,68,200,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61623,1,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61283, 40976);
replace into creature_involvedrelation	(id, quest) values (61283, 40976);
update quest_template set requiredraces = 434		 where entry = 40976;

replace into item_template values
 ('61623', '4', '0', 'Deathstalker Band', '', '9840', '2', '0', '1', '12832', '3208', '11', '-1', '-1', '43',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '8', '0', '13665', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0',
 '0', '1', NULL);

-- Ebonmere Bat Infestation
delete from quest_template where entry = 40977;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40977,2,5179,40,35,8,0,'Ebonmere Bat Infestation','Hey, you there.$B$BYou know anything about bat extermination? These past few weeks have been hell. All of my efforts to drive away these bats have ended in disappointment. Perhaps you can do me a solid and rid me of their annoyance.$B$BIf I am to restore the Ebonmere farm they need to go, and for good. Thin their population, and kill twelve of them, return to me when the task is done.','Slay 12 Vilewing Batlings for Joshua Ebonmere at Ebonmere Farm in Gilneas.','So, has the work been done?','I feel like I can breathe again. These blasted vermin roam the forests in droves, at least now there are less of them about.',0,0,0,0,0,0,0,0, 61230,12,0,0,0,0,0,0, 0,0, 0,18600,3100,68,150,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61290, 40977);
replace into creature_involvedrelation	(id, quest) values (61290, 40977);
update quest_template set requiredraces = 434		 where entry = 40977;

-- Ebonmere Worgen Infestation
delete from quest_template where entry = 40978;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40978,2,5179,40,35,8,0,'Ebonmere Worgen Infestation','The worgen in Gilneas entered shortly after the Greymane wall was destroyed in Oldrock Pass. You see, a powerful lich invaded the land and destroyed Greyshire some time ago. Now the forests themselves are packed full of the beasts, threatening to overtake my farm at any minute.$B$BI need you to collect their pelts and prevent any future attacks. Six pelts from the Bloodclaw and Nighthowl worgen should suffice. You can find these packs to the west and southwest.','Collect 6 Bloodclaw Pelts, and 6 Nighthowl Pelts for Joshua Ebonmere at Ebonmere Farm in Gilneas.','Watch yourself during the night. Dark things are always lingering.','The worgen, defeated?$B$B<A wiry smirk crosses his features.>$B$BYou have done well, outsider.',61624,6,61625,6,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,18600,3100,68,150,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61290, 40978);
replace into creature_involvedrelation	(id, quest) values (61290, 40978);
update quest_template set requiredraces = 434		 where entry = 40978;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61624,3591,'Bloodclaw Pelt',12,1,2048,1,-1,-1,1,6,-1,-1,-1,-1,4,'',0,8),
(61625,1421,'Nighthowl Pelt',12,1,2048,1,-1,-1,1,6,-1,-1,-1,-1,4,'',0,8);

replace into creature_loot_template values
(61251,61624,-100,0,1,1,0),
(61252,61624,-100,0,1,1,0),
(61253,61624,-100,0,1,1,0),
(61236,61625,-100,0,1,1,0),
(61237,61625,-100,0,1,1,0),
(61238,61625,-100,0,1,1,0);

-- Ebonmere Affairs
delete from quest_template where entry = 40979;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40977,40979,2,5180,45,35,0,0,'Ebonmere Affairs','Now that you\'ve proven yourself to me as a valuable ally, I have more pressing matters that I need looked into.$B$BYou see, three weeks ago my farm was robbed. A swindling rogue named Dustivan Blackcowl was employed to take the deed of Ebonmere Farm itself!$B$BHe is a lackey to Greymane and serves like an obedient dog. I want his hand for this treachery, and I want my family deed recovered. Do this for me and I will see you rewarded justly.$B$BI have no doubt you will find this rogue deep within the bowels of Gilneas City itself.','Slay Dustivan Blackcowl and recover the Ebonmere Deed for Joshua Ebonmere at Ebonmere Farm in Gilneas.','So, what news do you have?','You\'ve brought me peace, something I have been longing to have.$B$BWith this deed I can continue as I always have. I have prepared some rewards for you as thanks for returning my property.',61626,1,0,0,0,0,0,0, 61422,1,0,0,0,0,0,0, 0,0, 0,31200,5200,68,350,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61627,1,61628,1,61629,1,61630,1, 0,0,'');

replace into creature_questrelation		(id, quest) values (61290, 40979);
replace into creature_involvedrelation	(id, quest) values (61290, 40979);
update quest_template set requiredraces = 434		 where entry = 40979;
update quest_template set type = 81					 where entry = 40979;
update quest_template set exclusivegroup = -40977 where entry in (40977,40978);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61626,811,'Ebonmere Deed',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,7);

replace into creature_loot_template values
(61422,61626,-100,0,1,1,0);

replace into item_template values
 ('61627', '2', '0', 'Ebonmere Reaver', '', '14029', '2', '0', '1', '71864', '17966', '13', '-1', '-1', '46',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '9', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2200', '0',
 '0', '45', '79', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '3', '0', '0', '75', '0', '0', '0', '0', '27', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61628', '4', '1', 'Clutch of Joshua', '', '24762', '2', '0', '1', '14324', '3581', '6', '-1', '-1', '46',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '6', '6', '2',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '36', '0', '0', '0',
 '0', '0', '0', '25975', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '25', '0', '0', '0', '0', '7', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61629', '2', '3', 'Farmer\'s Musket', '', '66393', '2', '0', '1', '48836', '12209', '26', '-1', '-1', '46',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '6', '3', '3',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2600', '100',
 '3', '38', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '65', '0', '0', '0', '0', '27', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61630', '4', '4', 'Ebonmere Vambracers', '', '24410', '2', '0', '1', '14472', '3618', '9', '-1', '-1', '46',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '3', '7', '2',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '198', '0', '0', '0',
 '0', '0', '0', '45420', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '0', '0', '0', '40', '0', '0', '0', '0', '7', '0', '0', '0',
 '0', '1', NULL);

-- Greymane Hatred
delete from quest_template where entry = 40980;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40980,2,5179,45,35,0,0,'Greymane Hatred','My brother Franklin Blackheart may have been living, but he was my brother. He took up the cause to fight with the Ravenwood rebellion. It is here he met his fate, ambushed by the Greymane. Not a single person was spared, and the entire camp was burned to the ground.$B$BSeeing his twisted remains hurt me in a way nothing else has. I can feel it deep within, the sadness of his demise lingers still. I want retribution on those that have done this, slay the Greymane that inhabit Gilneas. They can be found to the east, just north of Ravenshire, or to the west of here, in a place called Dryrock Valley.$B$BBring me forty Greymane Signets from any who would swear allegiance to their cause.','Slay those loyal to the Greymane cause, and gather from them 40 Greymane Signets for Harrison Blackheart in Gilneas.','So, you\'ve returned, have you dealt justice to those that murdered my brother?','Ahh, is this what revenge feels like?$B$BI must admit, I only feel an emptiness. The true killer is still out there, and must be found.',61631,40,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,29700,4950,68,250,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61287, 40980);
replace into creature_involvedrelation	(id, quest) values (61287, 40980);
update quest_template set requiredraces = 434		 where entry = 40980;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61631,1705,'Greymane Signet',12,1,2048,1,-1,-1,1,20,-1,-1,-1,-1,4,'',0,4);

replace into creature_loot_template values
(61363,61631,-100,0,1,1,0),
(61366,61631,-100,0,1,1,0),
(61393,61631,-100,0,1,1,0),
(61394,61631,-100,0,1,1,0),
(61395,61631,-100,0,1,1,0),
(61396,61631,-100,0,1,1,0),
(61397,61631,-100,0,1,1,0);

-- The Blackheart Killer
delete from quest_template where entry = 40981;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40980,40981,2,5179,45,35,0,0,'The Blackheart Killer','I have heard rumors from the Deathstalkers that the ambush was facilitated by Captain Veller stationed at Freyshear Keep. If this information is true, then this man was the murderer of my brother.$B$BA very valuable piece of jewelry was taken from Franklin\'s corpse; the Blackheart Necklace. I have no doubt in my mind that this pompous man has taken the necklace.$B$BFreyshear Keep can be found far to the west, isolated on an island that looms overtop of Ravenshire. Kill him, and recover the necklace.','Assault Freyshear Keep and Slay Captain Veller to recover the Blackheart Necklace for Harrison Blackheart in Gilneas.','Have you found the necklace?','<Harrison Blackheart takes the jewelry with soft hands, taking a moment to admire the beauty.>$B$BI must thank you for recovering this. It certainly does mean a lot to me.',61632,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,30000,5000,68,250,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61287, 40981);
replace into creature_involvedrelation	(id, quest) values (61287, 40981);
update quest_template set requiredraces = 434		 where entry = 40981;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61632,15420,'Blackheart Necklace',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,4);

replace into creature_loot_template values
(61566,61632,-100,0,1,1,0);

-- In Memory of Franklin
delete from quest_template where entry = 40982;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40981,40982,2,5179,45,35,0,0,'In Memory of Franklin','I have one last request from you. I figure you should do the honors, since you have recovered this necklace after all.$B$BPlace it upon the grave of Franklin, we can honor him in this way at least.','Place the Blackheart Necklace on the grave of Franklin.','Hmm, yes?','<With a nod of approval Harrison seems content.>$B$BYou\'ve done a lot for me, and I am certainly greatful. I am sure Franklin is as well.$B$B<A heavy chuckle escapes Harrison.>$B$BTake one of these, as tribute from us.',0,0,0,0,0,0,0,0, 60047,1,0,0,0,0,0,0, 61632,1, 0,2700,450,68,250,0,0,0,0,0,0,0,0,0, 61633,1,61634,1,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'Place the Blackheart Necklace on the grave of Franklin');

replace into creature_questrelation		(id, quest) values (61287, 40982);
replace into creature_involvedrelation	(id, quest) values (61287, 40982);
update quest_template set requiredraces = 434		 where entry = 40982;

REPLACE INTO creature_template VALUES
(60047, 328, 0, 0, 0, 0, 'quest_40982_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

replace into item_template values
 ('61633', '2', '15', 'Bleaktalon', '', '20398', '2', '0', '1', '65632', '16408', '13', '-1', '-1', '45',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '4', '3', '3',
 '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1700', '0',
 '0', '27', '63', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '3', '0', '0', '55', '0', '0', '0', '0', '26', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61634', '4', '1', 'Blackheart Boots', '', '27861', '2', '0', '1', '22536', '5634', '8', '-1', '-1', '45',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '7', '5', '5',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '41', '0', '0', '0',
 '0', '0', '0', '9398', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '35', '0', '0', '0', '0', '7', '0', '0', '0',
 '0', '1', NULL);




