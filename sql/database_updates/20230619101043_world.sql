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

