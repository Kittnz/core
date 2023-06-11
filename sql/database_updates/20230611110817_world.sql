-- Corporal Danmere, display id 20403, faction 84, level 50, humanoid, scale 1, weapon2 12743, quest flags.
REPLACE INTO creature_template VALUES
(61557, 20403, 0, 0, 0, 0, 'Corporal Danmere', NULL, 0, 50, 50, 2990, 2990, 0, 0, 2958, 84, 2, 1, 1.14286, 1, 20, 5, 40, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 61557, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @equip_template = 20406; set @weapon_1 = 0; set @weapon_2 = 12743; set @weapon_3 = 0; set @creature = 61557;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

-- The Brigade is Coming Home
delete from quest_template where entry = 40964;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40964,2,5179,38,35,0,0,'The Brigade is Coming Home','Did you hear the news? The Greymane Wall, once an impenetrable barrier, now stands open. Granting us access to our long-lost homeland!$B$BThe call to action has been sounded, and a ship laden with our brave soldiers has set sail for Gilneas. By now, they should have reached the port town of Ravenshire, the very heart of the rebellion against the oppressive regime. Together, under the banner of the Ravenwood Rebellion, we shall liberate Gilneas from the shackles of unjust rule!$B$BIn this critical juncture, we seek any assistance that can be mustered. Make your way to Ravenshire without delay. Once you arrive, seek out Sergeant Arbington.','Venture to Gilneas and find Sergeant Arbington in Ravenshire.','A new face. Welcome to Gilneas.','Ah, so Danmere has sent you our way, eh? Well, as you can clearly observe, the situation here is far from ideal. We are in dire need of assistance, and any help you can offer will be greatly appreciated. Welcome to the frontlines of the struggle.$B$BIn order to get properly acquainted with our operations, I suggest introducing yourself to two key figures in our ranks. Darius Ravenwood and Caliban Silverlaine are the stalwart leaders orchestrating our resistance against the Harlow forces. You will typically find them at the town hall, tirelessly strategizing and planning our next moves. Waste no time in seeking them out and informing them of your arrival. They will undoubtedly appreciate your presence and may have specific tasks or assignments to entrust you with.',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,2700,450,108,100,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61557, 40964);
replace into creature_involvedrelation	(id, quest) values (61265, 40964);
update quest_template set requiredraces = 589		 where entry = 40964;

-- Feeding the Rebellion
delete from quest_template where entry = 40965;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40965,2,5179,42,35,0,0,'Feeding the Rebellion','I\'ve led a rugged existence in these parts. Life here ain\'t always been gentle, but it\'s been plain and straightforward. My duty has been to provide sustenance for my kinfolk and the folks in town, tracking down the savage creatures that roam these woods.$B$BA lot has changed since the rebellion. Now, it falls upon my weary shoulders to not only keep my own family fed but also help supply an entire army! It\'s a burden fit for no ordinary man like myself. I reckon, stranger, could you lend me a hand in this dire situation?$B$BVenture deep into the heart of the forest and set your sights on the batlike creatures known as Vilewings. Don\'t bother with the young ones, their flesh is all stringy and full of veins. It\'s the greater beasts we\'re after. Hunt them down and bring me back no less than nine hefty chunks of their meat. That\'ll be the key to keepin\' bellies full and spirits high in these troubled times.','Bring 9 Chunks of Greater Vilewing Meat to Narwick at Ravenshire in Gilneas.','Ah, the thrill of the hunt.','Well, ain\'t you a sight for sore eyes, stranger! You\'ve done some mighty fine work for our cause, and I reckon we owe you a debt of gratitude.',61599,9,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 8000,22800,3800,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61278, 40965);
replace into creature_involvedrelation	(id, quest) values (61278, 40965);
update quest_template set requiredraces = 589		 where entry = 40965;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61599,25466,'Greater Vilewing Meat',12,1,2048,1,-1,-1,1,9,-1,-1,-1,-1,4,'',0,3);

replace into creature_loot_template values
(61401,61599,-65,0,1,1,0);

-- The Deed to Ravenshire
delete from quest_template where entry = 40966;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40966,2,5179,45,38,0,0,'The Deed to Ravenshire','Greymane, or rather, Harlow, has persistently launched assaults upon Ravenshire, yet to no avail. Our valiant soldiers have repelled their attacks time and time again, displaying unwavering courage. However, in one of their audacious night assaults, the enemy managed to breach the defenses of our city hall and abscond with the Deed to Ravenshire.$B$BWhile this parchment holds little personal value for me, it carries great significance to the common folk as a symbol of my rightful rule. For order to be restored in Gilneas, I must retrieve it without delay.$B$BUndoubtedly, the enemy forces have brought it back to Gilneas City itself. However, as to its current whereabouts, one can only speculate.','Find the Deed to Ravenshire in Gilneas City and bring it back to Caliban Silverlaine.','The Deed to Ravenshire must be reclaimed.','I commend your stellar work. With the Deed once again safely back in my possession, any troublemakers who dare challenge my rule shall be forced to reconsider their actions. The return of this document serves as a powerful deterrent, casting doubt upon the audacity of those who would question our authority.$B$BThough the path ahead may be arduous, we shall not waver in our commitment to rebuilding Gilneas. We have a long and challenging journey before us, but with each passing day, we will labor tirelessly to restore our beloved homeland to its rightful place of glory and splendor.',61600,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 120000,33000,5500,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61601,1,61602,1,61603,1,61604,1, 0,0,'');

replace into creature_questrelation		(id, quest) values (61257, 40966);
replace into creature_involvedrelation	(id, quest) values (61257, 40966);
update quest_template set requiredraces = 589		 where entry = 40966;
update quest_template set type = 81					 where entry = 40966;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61600,7629,'Deed to Ravenshire',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,7);

REPLACE INTO gameobject_template VALUES
(2020033, 3, 24337, 'Deed to Ravenshire', 0, 4, 1, 43, 2020033, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template values
(2020033,61600,-100,0,1,1,0);

update gameobject set spawntimesecsmin = 25, spawntimesecsmax = 25 where ID = 2020033;

replace into item_template values
 ('61601', '2', '0', 'Ebonmere Axe', '', '19214', '2', '0', '1', '67732', '16933', '13', '-1', '-1', '46',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '8', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2400', '0',
 '0', '48', '83', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '3', '0', '0', '75', '0', '0', '0', '0', '27', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61602', '4', '4', 'Gilneas Brigade Helmet', '', '66375', '2', '0', '1', '20388', '5097', '1', '-1', '-1', '46',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '6', '3', '3',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '364', '0', '0', '0',
 '0', '0', '0', '7597', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '0', '0', '0', '70', '0', '0', '0', '0', '27', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61603', '4', '1', 'Robes of Ravenshire', '', '21114', '2', '0', '1', '30432', '7608', '5', '-1', '-1', '46',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '14', '7', '5',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '61', '0', '0', '0',
 '0', '0', '0', '45420', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '70', '0', '0', '0', '0', '27', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61604', '4', '2', 'Greyshire Pauldrons', '', '17193', '2', '0', '1', '29132', '7283', '3', '-1', '-1', '46',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '11', '4', '6',
 '6', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '93', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '50', '0', '0', '0', '0', '27', '0', '0', '0',
 '0', '1', NULL);
