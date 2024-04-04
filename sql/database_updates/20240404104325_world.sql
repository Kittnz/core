delete from creature_questrelation where quest in (41283,41284,41285,41286,41287,41288,41289,41290,41291,41292,41293,41294,41295);
delete from creature_involvedrelation where quest in (41283,41284,41285,41286,41287,41288,41289,41290,41291,41292,41293,41294,41295);
-- Trinkets Make The Heart Grow Fonder
delete from quest_template where entry = 41283;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41275,41283,2,1537,40,34,0,0,'Trinkets Make The Heart Grow Fonder','Alright, listen, let me be honest with you. I will not teach you my secret crafting techniques out of my desire to be charitable. I can assure you, I am definitely not going to do that. Instead, you will assist me in… restocking my supplies and in turn, you\'ll receive a sizeable nugget of knowledge about my goldsmithing. Perfect? Perfect.$B$BPlease bring me the following things as soon as possible, I\'m not the type to wait around for too long.','Bring Talvash the required materials.','If you don\'t have it, go get it!','Mhm, mhm, not as shabby as I expected it to be. But it clearly bears Mayva\'s mark of shoddy craftsmanship. Good thing you are in my hands now, I\'ll whip you into a serviceable jewelcrafter in no time! Start by making this lovely trinket here, you should have no troubles replicating it… hopefully.',55153,20,41331,10,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,19200,3200, 0,0,0,0,0,0,0,0, 0,0,0, 70133,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (6826, 41283);
replace into creature_involvedrelation  (id, quest) values (6826, 41283);

-- You Should Put A Ring On It
delete from quest_template where entry = 41284;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41275,41284,2,1537,40,34,0,0,'You Should Put A Ring On It','Believe it or not, but living under a mountain does not guarantee you a steady flow of gems in your storage. It surely doesn\'t help if some FALSE rumours prevent you from engaging in good and honest trade around here. If I was still in Gnomeregan, all of this would be easier, trust me on that. Still, gems are the bread and butter of jewelcrafting - no gems, no jewels, no trade, no money, no paid rent. You get the idea. And seeing as I desperately need to appease my landlord, I need quite a handful of those sparkling beauties to cover my losses, so to speak.$B$BAre we on the same page? Ofcourse we are. Bring me enough of the following gems and I\'ll pass you a lil\' something.','Bring Talvash the required materials.','These things don\'t grow on trees, you know? Or underground. Or anywhere. Nevermind, just pass ‘em already!','I don\'t know about you, but seeing these little treasures shine and sparkle under the light of my prospector\'s lens is something I\'ll never get tired of. Surely you understand. Now that we got that covered - here, listen close, I won\'t repeat myself!',55250,5,7909,5,3864,5,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,19200,3200, 0,0,0,0,0,0,0,0, 0,0,0, 70132,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (6826, 41284);
replace into creature_involvedrelation  (id, quest) values (6826, 41284);

-- Left In Bad Faith
delete from quest_template where entry = 41285;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41275,41285,2,1537,44,34,0,0,'Left In Bad Faith','Whatever you\'ve been told about me - it\'s all lies! I one hundred percent NEVER made any sort of cursed item for anyone. I have integrity for my craft and an oath to keep! Please don\'t ask who I made an oath with. Strictly confidential. And definitely NOT shady.$B$BRegardless, it seems the misfortune of some ill adventurer now befalls me instead, slandering my good name once again. A daring mage sought me out for a spell-enhancing necklace on his ventures to the recently re-discovered Gilneas City to the north. Ofcourse I obliged and crafted one for him, rent was due anyway, yet his spelunking in that accursed place did not end… let\'s say favorably for him. Too bad his group of fellow adventurers now blame me for his demise, lying to everyone in Ironforge that I enchanted the necklace with a foul spell!$B$B$N, I want you to delve into Gilneas City yourself and bring me back that necklace! The last thing I want is people using it as false evidence against me.','Return with the adventurer\'s necklace to Talvash del Kissel in Ironforge.','<Talvash sighs deeply.>$B$BOh, how much I would give to be back in Gnomeregan!','Bloodied, drenched, full of mud. Ugh, it breaks my heart to see one of my finer works in such a disrespectful state. Nevertheless, thank you for retrieving it. Tell me, where did you find it, on his beaten corpse or did someone else\'s grubby hands pilfered it from him? You know what? Don\'t tell me, I\'d rather stay oblivious.$B$BAs compensation for your noble deed, I will teach you how to craft this choker yourself.',41357,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,29400,4200, 0,0,0,0,0,0,0,0, 0,0,0, 70134,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (6826, 41285);
replace into creature_involvedrelation  (id, quest) values (6826, 41285);
update quest_template set type = 81					where entry = 41285;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(41357,13085,'Tarnished Citrine Choker',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,4);

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(61422, 41357, -100, 0, 1, 1, 0);

-- The Artificer
delete from quest_template where entry = 41286;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41283,41286,2,1537,44,34,0,0,'The Artificer','This is it, good traveler. There isn\'t much more I could teach that you couldn\'t learn elsewhere. Still, if your hunger for knowledge won\'t let you stop here, then I\'ll share with you where I got all my nifty tricks.$B$BTechnically I shouldn\'t be telling you this, yet with your urgent help I cannot let you leave unrewarded. Far to the west, in the hostile plains of Desolace, you will find my own mentor, isolated from civilization. Although he wished to be left undisturbed, I know he wouldn\'t mind some company. Don\'t be discouraged should he not talk with you at first, persistence is what he values most in those wishing to seek knowledge!$B$BLook for a great tower overlooking the ocean, it is where I last saw him. Now that we got this out of the way, you better leave quickly, before my landlord thinks I\'m engaging in black market activities!','Meet the mysterious tutor in Desolace.','','<The Highborne eyes you dismissively.>$B$BFirst this bumbling human down there, and now you? Can an artist not find peace and quiet for once in his life? Tell me, who sent you to The Artificer?',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,15600,2600, 0,0,0,0,0,0,0,0, 0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values ( 6826, 41286);
replace into creature_involvedrelation  (id, quest) values (73101, 41286);

update quest_template set exclusivegroup = -41283 where entry in (41283,41284,41285);

-- The Final Cut quest fixes
replace INTO item_template VALUES
(41358, 15, 0, 'Thegren\'s Box', '', 12925, 1, 4, 1, 0, 0, 0, -1, -1, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

REPLACE INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(41358, 56078, 100, 1, 1, 1, 0),
(41358, 56079, 100, 2, 1, 1, 0),
(41358, 56080, 100, 3, 1, 1, 0);

update creature_template set script_name = '' where entry = 73102;
update quest_template set srcitemid = 41358, srcitemcount = 1 where entry = 41282;

-- Sand In The Cracks
delete from quest_template where entry = 41287;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41276,41287,2,3,40,34,0,0,'Sand In The Cracks','I will be honest with you, out here in the wilderness, our supplies are not as plentiful as to teach you properly. It is not like I have the infinite resources our short green friends in Orgrimmar have. Nothing we cannot work with, however. Fortunately for us, these lands are rich in natural resources, which you can turn into the material for your lecture.$B$BTake it as a sort of test to see just how much you\'re capable of.','Bring Jarkal the required materials in Kargath in the Badlands.','Beware of the roaming ogres out there, too many of them for my liking.','Great work, I\'ve seldom had that many ingredients for jewelcrafting at once in this place. I suppose some form of gratitude is needed towards Gulmire, since he has given me something practical to do whilst waiting for new reports. $B$BBack to you, however. Let me show you how to create these delicate trinkets.',55153,20,41331,10,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,19200,3200, 0,0,0,0,0,0,0,0, 0,0,0, 70133,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (6868, 41287);
replace into creature_involvedrelation  (id, quest) values (6868, 41287);

-- Stones Of Radiance
delete from quest_template where entry = 41288;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41276,41288,2,3,40,34,0,0,'Stones Of Radiance','Like you\'ll surely know, gems, valuable stones and minerals are essential to jewelcrafting. Without them, creating fashionable pieces may surely be possible - but honestly, what would be the point? In my humble opinion, a delicate gem or even an ornate one is the element giving your jewelry purpose and meaning.$B$BBring me enough of Azeroth\'s gems so that we may analyze their properties together.','Provide Jarkal the required materials in Kargath in the Badlands.','The pearls are often found within thick shelled clams all over Azeroth. Many of the water-dwelling creatures carry those with them.','It may be faint, but there is power emanating from these gems. The best jewelcrafters are able to extract their mighty essences and amplify them to unprecedented heights. And if you\'ll allow me to say this: you are on a good way to reach that point yourself some day.',55250,5,7909,5,3864,5,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,19200,3200, 0,0,0,0,0,0,0,0, 0,0,0, 70132,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (6868, 41288);
replace into creature_involvedrelation  (id, quest) values (6868, 41288);

-- Foreign Knowledge
delete from quest_template where entry = 41289;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41276,41289,2,3,44,34,0,0,'Foreign Knowledge','My people have an extensive history about goldsmithing and bedazzlements, be it removable or permanent. While I will share my insight in the old Zandalari goldsmithing customs, it is important to expand your horizon to other sources of knowledge as well.$B$BThe goblin way is already known to you, given your lessons with X in Orgrimmar. What I want you to delve into is the human way of fashioning regalias. Up north, not far from the lands of our forsaken allies, you will find the nation of Gilneas. A relic of old times, so I have heard, now newly opened to those eager enough to best its dangers and perils. High atop its mountain ridged towers Gilneas City, a place of commerce, trade and festivities, according to the stories of traveling adventurers.$B$BIt is where you will find a suitable digest for us to analyze.','Search for a fitting book in Gilneas City and bring it to Jarkal Mossmeld in Kargath in the Badlands.','It has been too long since I\'ve been on Zandalar. I wish the younger generation of Darkspear can one day see the grandeur that is the golden city of Zuldazar. Perhaps the passage of time will allow my wish to become reality eventually.','Harrowing news. What you\'re describing is all too familiar - many former troll empires fell to their own hubris, thinking themselves above their people or even their loa. It is all the more relieving to see you return safe and sound.$B$BNow then, shall we pry the information from these tarnished pages?',41359,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,29400,4200, 0,0,0,0,0,0,0,0, 0,0,0, 70134,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (6868, 41289);
replace into creature_involvedrelation  (id, quest) values (6868, 41289);
update quest_template set type = 81					where entry = 41289;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(41359,1134,'Gilnean Jewelry: A Compendium',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,3);

REPLACE INTO gameobject_template VALUES
(2020096, 3, 24015, 'Gilnean Jewelry: A Compendium', 0, 4, 1, 43, 2020096, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template values
(2020096,41359,-100,0,1,1,0);

-- The Artificer
delete from quest_template where entry = 41290;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41287,41290,2,3,44,34,0,0,'The Artificer','Good traveler, thank you for letting me practice this craft I had long been unable to. I had promised to continue honing my skills, yet my service to the Horde in the last years did not allow me to pursue this oath any longer. Yet, perhaps if more adventurers like you turn up, I may be able to do so after all.$B$BFor your urgent help, let me reward you properly - by sharing where I strengthened my mastery of goldsmithing. Far to the west, in the hostile plains of Desolace, you will find my own mentor, isolated from civilization. Although he wished to be left undisturbed, I know he wouldn\'t mind some company. Don\'t be discouraged should he not talk with you at first, persistence is what he values most in those wishing to seek knowledge!$B$BLook for a great tower overlooking the ocean, it is where I last saw him.','Meet the mysterious tutor in Desolace.','','<The Highborne eyes you dismissively.>$B$BFirst this bumbling human down there, and now you? Can an artist not find peace and quiet for once in his life? Tell me, who sent you to The Artificer?',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,15600,2600, 0,0,0,0,0,0,0,0, 0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values ( 6868, 41290);
replace into creature_involvedrelation  (id, quest) values (73101, 41290);

update quest_template set exclusivegroup = -41287 where entry in (41287,41288,41289);

-- Unfortunate Circumstances
delete from quest_template where entry = 41291;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41291,2,3,44,34,0,0,'Unfortunate Circumstances','So you are adamant to learn the art of Goldsmithing? Usually I pick my pupils, yet… If one of my former students recommended you and even sent you on an uncertain search for me, I cannot possibly deny your request. We could start immediately, however there is a tiny predicament we are facing. I unfortunately lost my prized jeweler\'s kit when I was collecting minerals that were washed ashore down at the strand. Startled by a sea giant, I had to abandon it and couldn\'t find a secure moment to retrieve it. My fighting days are over, so if you wish to be taught my skills, then you have to reclaim it in my stead.','Bring The Artificer at Ethel\'rethor in Desolace his Jeweler\'s Kit.','I hope my instruments are not damaged by the tides.','Soggy and dripping, but still intact. My gratitude is guaranteed, pupil. Well then, let us proceed.',41360,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,21600,3600, 0,0,0,0,0,0,0,0, 0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (73101, 41291);
replace into creature_involvedrelation  (id, quest) values (73101, 41291);

update quest_template set nextquestid = 41291 where entry = 41286;
update quest_template set nextquestid = 41291 where entry = 41290;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(41360,66172,'Ancient Elven Jeweler\'s Kit',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,3);

REPLACE INTO gameobject_template VALUES
(2020097, 3, 323, 'Wet Bag', 0, 4, 1, 43, 2020097, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template values
(2020097,41360,-100,0,1,1,0);

-- The Art Of Goldsmithing
delete from quest_template where entry = 41292;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41291,41292,2,3,44,34,0,0,'The Art Of Goldsmithing','You may address me as The Artificer, young one. I abandoned my previous name when the great city of Eldre\'thalas fell millennia ago. Wandering the wilds of Kalimdor ever since, I share my wisdom with individuals of the mortal races I deem worthy of receiving it. This friend that sent you here - he is among the chosen I have tutored, as incredible as it may sound. It seems his love for the craft didn\'t wane over time, however. Assuring to hear.$B$BYou wish to be taught the secrets of century old goldsmithing techniques, passed on between races, civilizations and generations? Proof your skills to me. Show me how well you can hear the blood of the earth sing.','Craft the following jewelries. The Artificer will teach you how to after proving your skills to him.','Stay persistent. Those willing to fail have proven themselves over and over again to be aspiring virtuosos of this craft.','Impressive, such profound cuts and grinding work. Anyone can see the blood, sweat and tears you\'ve poured into the creation of these. The life one breathes into their artworks is just as important as the technical steps taken. Jewelry without a soul is just a product and an affront to the integrity of the craft\'s millenia old legacy.$B$BBut you\'ve proven that your heart beats in harmony with Azeroth, attuning yourself to its essence and channeling that energy into your art. As my new pupil, please allow me to pass my sacred knowledge unto you. You have earned it.$B$BOh, and should you ever see any of my former pupils again, tell them they can visit me anytime - I suppose some company can\'t hurt after a few years.',56050,1,56051,1,56052,1,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,27600,4600, 0,0,0,0,0,0,0,0, 57552,57552,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (73101, 41292);
replace into creature_involvedrelation  (id, quest) values (73101, 41292);

-- Elaborate Golden Bracelets
delete from quest_template where entry = 41293;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41291,41293,2,3,44,34,0,0,'Elaborate Golden Bracelets','So he taught you some of his skills, you say. Well, rest assured, most of the knowledge he possesses has been passed on to him by me. He may be a proficient jewelcrafter, yet the more elusive secrets of the art are not found with him. If one wishes to dive into the depth of a craft, one must have a profound understanding of the surface.$B$BWhich is exactly what I want from you: show me what basic knowledge you possess about goldsmithing, so I may know where to begin with you.','Present The Artificer with jewelry from your own and someone else\'s design.','Don\'t try to impress me with speed. I hold those who take their time in high regard.','<The Artificer inspects your work and the replica.>$B$BClose. Without my guidance, you did an astounding job at repeating my pupil\'s steps. Remarkable. Nonetheless, to gauge your true potential, I expect you to craft an artpiece under my guidance. Here, listen close and show me that you listened well.',56047,2,41340,2,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,21600,3600, 0,0,0,0,0,0,0,0, 0,0,0, 70135,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (73101, 41293);
replace into creature_involvedrelation  (id, quest) values (73101, 41293);

-- Observations
delete from quest_template where entry = 41294;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41291,41294,2,3,44,34,0,0,'Observations','A true artisan encompasses all aspects of life into his work. Life, death. Heaven and earth. The elements at play in our world. You may know already, but the gems of Azeroth possess latent magic and elemental attributes, making them extremely powerful in the hands of the right - or wrong - person. $B$BDemonstrate to me that you can properly handle the energies of Azeroth\'s gemstones in the creation of your jewelry.','Show The Artificer your skills.','Whether our pieces are used for the benefit or detriment of others is not part of our jurisdiction. The artist fashions their creations with no user in mind, simply its use.','Perceiving the world as it is may appear simple and nothing out of the ordinary, but only those willing to delve deeper are able to gain a profound understanding of its true essence.$B$BYou\'ve shown me you are one of them. Pay attention and heed my words, for they will bestow new insight to you.',56048,2,55143,2,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,21600,3600, 0,0,0,0,0,0,0,0, 0,0,0, 70136,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (73101, 41294);
replace into creature_involvedrelation  (id, quest) values (73101, 41294);

-- Dearest Gallitrea
delete from quest_template where entry = 41295;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41291,41295,2,3,44,34,0,0,'Dearest Gallitrea','I\'ve had multiple pupils in the past centuries, and frankly I\'ve lost count on how many there were. One, however, will always remain vividly in my mind and heart. A young elf, one of fair skin like I haven\'t seen before. Her curiosity and eagerness for goldsmithing was unparalleled, attributes I admired about her juvenile spirit.$B$BShe approached the art without bias and took it for what it was - the expression of heart and soul. When she finished her final project, a staff of significant quality, the winds of adventure swept her away - away from me. While I had hoped she would return to me one day, for even as much as a visit, reuniting with her sadly never occurred.$B$BHer presence - and lack thereof - left a mark on me, for I insist any of my future pupils share her clear sight on the craft. Show you that you can follow her example.','Convince The Artificer of your understanding of his lessons.','Sometimes I find myself sentimental at the thought of her whereabouts. Yet it is fruitless to worry about her, albeit difficult to supress.','<The Artificer is surprisingly solemn at the view of your pieces. A soft chuckle escapes him, before turning back to you.>$B$BThank you. I am glad you sought me out. Here, I will share with you something Gallitrea designed during my tutelage.',41343,2,56049,2,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,21600,3600, 0,0,0,0,0,0,0,0, 0,0,0, 70137,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (73101, 41295);
replace into creature_involvedrelation  (id, quest) values (73101, 41295);