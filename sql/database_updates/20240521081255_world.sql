-- I Am No Rat
delete from quest_template where entry = 41343;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41343,2,3457,61,60,0,0,'I Am No Rat','$R, here? Please, no kill. No kill Big Whiskers! Big Whiskers here by mistake. Big Whiskers called by weird see through human. Big Whiskers just want leave. But Big Whiskers can’t leave. No. Big Whiskers first needs BIG CANDLE!$B$BBig candle very important to Big Whiserks and his friends. Yes, yes. Big Whiskers give reward, reward, yes! Bring Big Whiskers big candle. Please?$B$BAsk Doorman, Doorman must know!','Speak to Doorman Montigue in Lower Karazhan Halls.','What is it Mage?','A comically large candle. Are you a jokester?',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,3300,550, 0,0,0,0,0,0,0,0, 0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61990, 41343);
replace into creature_involvedrelation  (id, quest) values (61571, 41343);
update quest_template set nextquestinchain = 41344	 where entry = 41343;
update quest_template set requiredraces = 128		 where entry = 41343;

-- Comically Large Candle
delete from quest_template where entry = 41344;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41343,41344,2,3457,61,60,512,0,'Comically Large Candle','As I ponder your request, I\'m left in uncertainty, not knowing whether to respond with laughter or concern for the state of your sanity. Your requirements for this sizable, I mean colossal, candlestick hint at some kind of experimentation within the Master\'s Library.$B$BWith you describing the magnitude of the candle necessary for whatever you intend to accomplish, along with your questionable means of access to that venue, I admit that I feel conflicted. Nonetheless, I do sense a palpable aura of strength emanating from you, which leads me to believe that you have the power to navigate those mysterious halls.$B$BHaving said all that, I seem to recall a candle of considerable size positioned at the end of the guest hall.','Recover the Comically Large Candle from Grizikil and return to Big Whiskers in Upper Karazhan.','Where big candle?','Big candle for Big Whiskers! My mission in this scary place is finished. Big Whiskers gives you this as thanks. Very fun book, look!',41392,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,28800,4800, 0,0,0,0,0,0,0,0, 0,0,0, 92025,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61571, 41344);
replace into creature_involvedrelation  (id, quest) values (61990, 41344);
update quest_template set type = 62					 where entry = 41344;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(41392,7066,'Comically Large Candle',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,4);

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(61224, 41392, -100, 0, 1, 1, 0);