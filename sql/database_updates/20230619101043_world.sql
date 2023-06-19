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

