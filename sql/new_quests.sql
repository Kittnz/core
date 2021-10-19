-- Reserved.
-- quest_template			40000-40200
-- creature_template		60300-60500
-- gameobject_template		2010700-2010900
-- item_template			60000-60200
-- gossip_menu				41000-43000
-- creature_equip_template	20000-21000

-- Red Flag over the Sea --
delete from quest_template where entry = 40172;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40172,2,35,48,45,0,0,'Red Flag over the Sea','Ahoy mate, fine day in it?\n\n<Garfield takes a deep breath>.\n\nAye, the salty smell of the sea forcefully entering your nostrils, the cotton mouth from last night\’s rum and the ultimate headache and pain you got from the local bar fight. Thar is no better life matey, this I tell ye. But this city be borin\'. I reckon, they are no real pirates, if ye truly want to live yer adventures at sea and see how it really be to be a Corsair ye should come join me and me crew!\n\nI be a crew member of the Bloodsail Buccaneers and I be lookin\' for new folk to join us. We are sworn enemies to Booty Bay so keep this small piece to yerself eh? If ye decide to join us I got a mission for ye, if not, we never met, savvy?','Speak to Garfield \‘The Fox\’ Sparkleblast if you wish to aid him.','Don\'t waste me time mate, I be tryin\' to enjoy the sun and this here fine rum.','I\’d like to say welcome aboard but ye are not ready to become a crew member yet, first ye must do us a favor.',0,0,0,0,0,0,0,0,60332,1,0,0,0,0,0,0,0,0,0,300,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Belong to the Bloodsail Buccaneers');

replace into creature_questrelation (id, quest) values (60453, 40172);
replace into creature_involvedrelation (id, quest) values (60453, 40172);

update creature_template set script_name = 'npc_garfield_sparkblast' where entry = 60453;
update creature_template set faction = 35 where entry = 60453;

delete from creature_template where entry = 60332;
replace into creature_template (entry, name, display_id1) values (60332, 'quest_40172_dummy_triger', 328);


-- Weapons Laying About --
delete from quest_template where entry = 40173;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40172,40173,2,35,48,45,0,0,'Weapons Laying About','So listen here mate, ye see these foul sea tailed imps? These Blackwater Pirates are naught but a joke, hiding in their port. They even have thar weapons laying around in crates, truly a disgrace to all pirates around.\n\n<Garfield spits on the ground>.\n\nSo that\'s exactly why ye are going to collect them and bring them to a special someone in the city, what, ye thought these sea tailed imps wouldn\'t have a rat? Outrageous, but hilarious, in it? Quizzle be the name.','Bring five weapon crates to Quizzle.','Aye?','Not so loud! You want the whole bruiser brigade on our hands? Just put that crate in and keep them coming.\n\n<After you bring each crate one by one you turn your attention towards Quizzle>.\n\nFine work mate, here\'s your pay now leave and don\'t worry about it, you were never here today.',60245,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3525,750,87,500,21,-500,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60453, 40173);
replace into creature_involvedrelation (id, quest) values (2663, 40173);

update creature_template set faction = 35 where entry = 2663;

update creature_template set npc_flags = 6 where entry = 2663;

delete from item_template where entry = 60245;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60245,9288,'Blackwater Weapon Crate',12,1,2048,1,-1,-1,1,5,-1,-1,-1,-1,4,'',0);

delete from gameobject_template where entry = 2010833;
replace into gameobject_template values
(2010833, 0, 3, 25380, 'Blackwater Weapon Crate', 0, 4, 1, 43, 2010833, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

delete from gameobject_loot_template where entry = 2010833;
replace into gameobject_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (2010833,60245,-100,1,1,0,10);

-- A Cannon\'s Misfortune --
delete from quest_template where entry = 40174;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40173,40174,2,35,48,45,0,0,'A Cannon\'s Misfortune','All right mate. Ye\'ve done well so far but thar\'s still some stuff we have to do afore leavin\' this rotten port. If we wants these idiots to never \'have a chance in the face of\' the Bloodsail Buccaneers we shall have to also tamper with thar ammo, that bein\' said I am gonna give ye a flask o\' "special" water ye will have to pour in any barrel of blast powder ye can find.\n\nSavvy?','Sabotage the Blast Powder Kegs.','Done already mate?','Aye, good job lad. This is all fer the greater good of the crew, aye?',0,0,0,0,0,0,0,0,60328,10,0,0,0,0,0,0,0,0,4035,750,87,750,21,-500,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Pour water into the keg');

replace into creature_questrelation (id, quest) values (60453, 40174);
replace into creature_involvedrelation (id, quest) values (60453, 40174);

delete from creature_template where entry = 60328;
replace into creature_template (entry, name, display_id1) values (60328, 'quest_40174_dummy_triger', 328);

delete from gameobject_template where entry = 2010834;
replace into gameobject_template (entry, type, displayid, size, name, flags, script_name) values (2010834, 1, 24163, 1, 'Blast Powder Keg', 32, 'go_blast_powder_keg');

-- The Bet --
delete from quest_template where entry = 40175;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqsourceid1, reqsourcecount1, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40175,2,33,37,30,0,0,'The Bet','I may not have the most gold on me, but I do have a fortune that\'s waiting out there for me. I made a bet with this goblin, named Nagzel, crafty little guy. You see, we were playing cards one day and he was telling me about his plans of joinin\' the Venture Co. and working at the base camp by Lake Nazferiti. For the first time in my life, I was actually winnin\', he offered up this big hunk of metal of a ring.\n\nNow, the ring itself I cared little for, it was nothing more then some cheap old iron lugnut, but it had this -big- jade sticking off the top of it. I\'m talking, this thing was the size of my thumb!\n\nBets are more then just games, they\'re a way of life, and this man took the ring when he lost, and vanished, never to be seen. Go find this punk, get that emerald, its rightfully mine anyway!','Bring back the \'Rightful\' Jade for Dirty Jacob.','It might be hard to track him down, but I\'m sure you can do it.','Damn, look at this beauty, such a beautiful rock, here, some silver for the hard work in getting me it. Some people should really learn not to flash their expensive rocks out in public, you never know who could be looking for them, heh.',60246,1,60247,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6500,2850,87,400,21,-300,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60448, 40175);
replace into creature_involvedrelation (id, quest) values (60448, 40175);

--  Nagzel Powdernose, level 36, display ID 7338, weapon 13820 , faction 47

REPLACE INTO creature_template VALUES 
(60462, 0, 7338, 0, 0, 0, 'Nagzel Powdernose', '', 0, 36, 36, 1468, 1468, 0, 0, 1420, 47, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 92, 109, 0, 140, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 7, 0, 60462, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 29, 145, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @equip_template = 20008; set @weapon_1 = 13820; set @weapon_2 = 0; set @creature = 60462;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

delete from item_template where entry = 60246;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60246,15825,'Oversized Lugnut Ring',15,1,4,1,-1,-1,1,1,-1,-1,-1,-1,4,'An oversized iron lugnut, mounted with a pristine, large jade',0);

delete from item_template where entry = 60247;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60247,6850,'\'Rightful\' Jade',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

delete from item_loot_template where entry = 60246 and item = 60247;
replace into item_loot_template values
(60246,60247,100,0,1,1,0,0,10);

delete from creature_loot_template where entry = 60462 and item = 60246;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (60462,60246,-100,1,1,0,10);

-- Crumbling Allies --
delete from quest_template where entry = 40176;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40176,2,408,52,45,0,0,'Crumbling Allies','When we first came to this island, we were greeted by hostility from all who were around us. We were seen as pirates still, and had yet to make a mark for ourselves. It was the Seer Jang\'zo from the Razzari tribe who helped bring peace between us and them. For quite a while we kept a rather peaceful bond with one another. We traded and assisted with tasks of both a spiritual nature and physical.\n\nThough, all seems to have fallen apart within the last weeks, the Razzari have begin to show hostilities toward us, and have even gone so far as to attack. There are rumors of them speaking with the Hazzuri trolls and being influenced by their dark magics.\n\nI fear for Jang\'zo and wish to assist him, as he did us. I require materials from around the island to create a spell that could lift such a curse. Firstly I need 6 Junglepaw Fangs from the local panther, 3 Creeper Roots, from the Ruins Creepers in the Ruins of Zul\'Razu, and a single Jungle Venom Gland, from the Jungle Serpents.','Collect 6 Junglepaw Fangs, 3 Creeper Roots, and a Jungle Venom Gland for Euokia in Gillijim\'s Island.','These materials will be the only thing to help Jang\'zo. If my thoughts are correct, the dark magic could be influencing the trolls of the Razzari and driving them further into madness.','',60248,6,60249,3,60250,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4650,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (92171, 40176);
replace into creature_involvedrelation (id, quest) values (92171, 40176);

delete from item_template where entry between 60248 and 60250;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60248,2598,'Junglepaw Fang',12,1,2048,1,-1,-1,1,6,-1,-1,-1,-1,4,'',0),
(60249,1464,'Creeper Root',12,1,2048,1,-1,-1,1,3,-1,-1,-1,-1,4,'',0),
(60250,1423,'Jungle Venom Gland',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

delete from creature_loot_template where entry = 2522 and item = 60248;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (2522,60248,-30,1,1,0,10);

update creature_template set loot_id = 92203 where entry = 92203;
delete from creature_loot_template where entry = 92203 and item = 60249;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (92203,60249,-30,1,1,0,10);

delete from creature_loot_template where entry = 9776 and item = 60250;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (9776,60250,-10,1,1,0,10);

-- The Gobcrank Flazwanger --
delete from quest_template where entry = 40177;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40177,2,408,52,45,0,0,'The Gobcrank Flazwanger','Damn did we come down like a meteor, all the controls were going haywire, sparks flying everywhere as the zeppelin hauled ass and smashed into the island! It was a miracle that I survived, but not so much of a miracle that I had to leave behind the wreck.\n\nAfter we plummeted down we attracted the attention of a bunch of basilisks, the damn buggers made it impossible for me to go and find my Gobcrank Flazwanger! I made the thing back in Kezan a long time ago to help with stabilization and let me tell you it\'s revolutionary!\n\nYou think you can manage a quick tilted turn on a zeppelin? Not unless you have a Gobcrank Flazwanger... Look pal, you\'re looking at me like I\'m an alien, all you need to know is the thing is valueable oaky, and I\'m willing to pay for you to go get it, now am I speaking your language?\n\nThe wreck was over by the Maul\'ogg post to the south west, it shouldn\'t be hard to miss!','Find and bring the Gobcrank Flazwanger back to Flaz Fusemix in Maul\'ogg Refuge.','Look buddy, the longer we sit around here and talk, the higher the probability that thing is getting chewed up!','<The Goblin would take the device and quickly inspect it>. Yeah, this is it, here, take your cash, now scram, I gotta make sure this baby aint broken!',60251,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5000,4700,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (92187, 40177);
replace into creature_involvedrelation (id, quest) values (92187, 40177);

delete from item_template where entry = 60251;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60251,7839,'Gobcrank Flazwanger',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

delete from gameobject_template where entry = 2010835;
replace into gameobject_template values
(2010835, 0, 3, 23883, 'Gobcrank Flazwanger', 0, 4, 1, 43, 2010835, 0, 1.6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

delete from gameobject_loot_template where entry = 2010835;
replace into gameobject_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (2010835,60251,-100,1,1,0,10);

-- Loss of Good Rum --
delete from quest_template where entry = 40178;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40174,40178,2,35,48,45,0,0,'Loss of Good Rum','What we be about to do be a great sin, mate. I hope the Goddess o\' Rum will forgive this foolish scallywag. Aye, we\'ll poison the rum in the inn, wha\' a damn shame, ain\'t it?\n\nBut sometimes ye gotta do wha\' ye gotta do. Here\'s the poison, just toss it into the huge keg of rum they usually keep on the low level of the port, close to the action house, they fill the rum everyday \'n they\'ve got thar share already, they will only be feelin\' it tomorrow.','Poison the Rum.','Just go already, this action makes me eyes water.','What kind of monster am I to make ye sully such great rum, I hope one day I will forgive meself.',0,0,0,0,0,0,0,0,60329,1,0,0,0,0,0,0,60252,1,4535,750,87,500,21,-500,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'The rum is poisoned');

replace into creature_questrelation (id, quest) values (60453, 40178);
replace into creature_involvedrelation (id, quest) values (60453, 40178);

delete from creature_template where entry = 60329;
replace into creature_template (entry, name, display_id1) values (60329, 'quest_40174_dummy_triger', 328);

delete from item_template where entry = 60252;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60252,28854,'Strong Poison Dust',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

delete from gameobject_template where entry = 2010836;
replace into gameobject_template (entry, type, displayid, size, name, flags, script_name) values (2010836, 2, 24058, 1.75, 'Huge Keg of Rum', 32, 'go_keg_of_rum');

-- Exterminate the Rat --
delete from quest_template where entry = 40179;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40178,40179,2,35,48,45,0,0,'Exterminate the Rat','So it seems these Blackwater fools sent some rat to keep track of our mates, he already asked someone to scuttle one of our new captains, although to be fair that orc was an idiot. Blood fer blood! I wants ye to go meet Morgan the Storm \'n spit in his face, bring me his head. Ye can find him on the Eastern beach where most of me mates set anchor.','Kill Morgan the Storm and bring his head to Garfield \'The Fox\' Sparkleblast.','Don\'t got all day.','The rat finally lays dead. Put that bag down fer now, I\'ll tell ye what ye gotta do next afore we get the deck all bloody.',60253,1,0,0,0,0,0,0,51607,1,0,0,0,0,0,0,0,0,5545,1250,87,1000,21,-500,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'The rum is poisoned');

replace into creature_questrelation (id, quest) values (60453, 40179);
replace into creature_involvedrelation (id, quest) values (60453, 40179);

delete from item_template where entry = 60253;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60253,3918,'Morgan\'s Severed Head',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

update creature_template set loot_id = 51607 where entry = 51607;
update creature_template set script_name = 'npc_morgan_the_storm' where entry = 51607;

delete from creature_loot_template where entry = 51607 and item = 60253;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (51607,60253,-100,1,1,0,10);

-- Making a Statement --
-- delete from quest_template where entry = 40180;
-- replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40179,40180,2,35,48,45,0,0,'Making a Statement','Here mate, put Morgan\'s head in this Jolly Roger. Ye ain\'t about to like what ye\'re goin\' to do next, but that shall only prove how insane \'n courageous ye be. Ye\'re goin\' to toss the head at the feet of\' the Baron \'n the First Mate \'n make a damn run fer it! Ye\'re gonna find us on Jaguero Island, I hope ye make it thar alive, ye\'d be a great asset to the crew. If ye do come, I will officially make ye a crewmate.','Make a statement.','Shiver me timbers, ye actually made it. Were they mad?','Haha idiots! Now they know what\'s gonna happen when they try to mess with us next, great job. And welcome aboard.',0,0,0,0,0,0,0,0,60330,1,0,0,0,0,0,0,60254,1,12435,1250,87,2000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- replace into creature_questrelation (id, quest) values (60453, 40180);
-- replace into creature_involvedrelation (id, quest) values (60453, 40180);

-- delete from creature_template where entry = 60330;
-- replace into creature_template (entry, name, display_id1) values (60330, 'quest_40180_dummy_triger', 328);

-- delete from item_template where entry = 60254;
-- replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
-- (60254,0000,'Jolly Roger',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

-- Taking over Faldir\'s Cove --
delete from quest_template where entry = 40181;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40180,40181,2,45,48,45,0,0,'Taking over Faldir\'s Cove','Now that we\'ve let \'em know who they be dealin\' with it\'s also time to hit \'em when they\'d less expect. I hear thar be some fools that set anchor in to Faldir\'s Cove in Arathi Highlands, I wants ye to scuttle \'em, all of \'em.','Invade Faldir\'s Cove and kill everything in your way.','Been a long road, eh?','The Harbinger was sent fer some reason in Arathi Highlands, we dunno why, \'n we mighty don\'t care that much either, all we care about right now be that they be dead, \'n we\'ve laid once again a blow to the Blackwater Pirates.',0,0,0,0,0,0,0,0,2610,1,2769,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60453, 40181);
replace into creature_involvedrelation (id, quest) values (60453, 40181);

-- South Sea Losers --
delete from quest_template where entry = 40182;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40181,40182,2,408,50,48,0,0,'South Sea Losers','Now that we be done with the mongrels from Blackwater, we have time to focus on a different kind of enemy.I hear the South Sea Pirates anchored on the Isle of Lapidis, a mysterious Island that be known to\' hide some sort o\' booty from wha\' me mates tell me, although I say it\'s just\' fairy tales. Go pick a fight with \'em, \'n here, it\'s about time ye represent the Jolly Roger, tie this red bandana over yer wrist, ye\'re a Bloodsail after all.','Travel to Lapidis and pick a fight with the local pirates.','Still as weak as they used to be?','So they be thar after all. Good, some of me scallywags be trackin\' behind ye to see if they can get any kind of information while ye be wreakin\' havoc, \'n it seems we did get what we needs.',0,0,0,0,0,0,0,0,2610,1,2769,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60453, 40182);
replace into creature_involvedrelation (id, quest) values (60453, 40182);

-- First Mate McCoy --
delete from quest_template where entry = 40183;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40182,40183,2,408,50,48,0,0,'First Mate McCoy','Right, the information. Well ye see, I\'ve been huntin\' this First Mate since me early days of piracy, he took me eye and I want his head. He be areal pain in the gut, I tell ye. Once we were at sea through the vast cold areas close to Northrend, the wind blew so harshly that when we was fighting at sea the ships eventually hit one another and we had to fight through the coldest rain I\'ve ever had to witness, we\'ve barely made it alive on rowboats to Eastern Kingdoms, only to meet again on land and swear to claim each other\'s head. With ye here, a long grudge will be fulfilled.','Kill First Mate McCoy.','Bah, as ugly as it used to be.','Aye, toss it on the floor over there, I\'ll be mountin\' it on me wall in the room I sleep.',60255,1,0,0,0,0,0,0,60452,1,0,0,0,0,0,0,0,0,5545,1000,87,500,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60453, 40183);
replace into creature_involvedrelation (id, quest) values (60453, 40183);

update creature_template set loot_id = 60452 where entry = 60452;

delete from item_template where entry = 60255;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60255,3486,'McCoy\'s Head',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

delete from creature_loot_template where entry = 60452 and item = 60255;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (60452,60255,-100,1,1,0,10);

-- Magical Compass --
delete from quest_template where entry = 40185;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40182,40185,2,408,50,48,0,0,'Magical Compass','The cap\'n of this fool ye\'re about to scuttle used to have a magical compass or so they claim. It seems the compass would find whatever ye desire when ye\'d open it up, which sounds like a madman gab.\n\nEnter the cap\'\'s lodgin\' \'n see if ye can find this compass, I hear he keeps it locked in a chest. Some say the chest be black spotted, but that\'s definitely some squiffy excuse.','Find the Magical Compass.','How goes the search fer legends \'n myths?','I\'ll be damned, ye found something eh? Looks like a damn normal compass to me.\n\n<Garfield frowns>.\n\nWhatever, we\'ll try it some other time.',60256,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5535,1250,87,500,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60453, 40185);
replace into creature_involvedrelation (id, quest) values (60453, 40185);

delete from item_template where entry = 60256;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60256,19658,'Magical Compass',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

delete from gameobject_template where entry = 2010837;
replace into gameobject_template values
(2010837, 0, 3, 23430, 'Small Locket', 0, 4, 0.25, 43, 2010837, 0, 1.6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

delete from gameobject_loot_template where entry = 2010837;
replace into gameobject_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (2010837,60256,-100,1,1,0,10);

-- Land-ho, More like Land-no --
delete from quest_template where entry = 40186;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40182,40186,2,408,50,48,0,0,'Land-ho, More like Land-no','Last thing ye\'re gonna do fer me with these fools be set fire to thar ship. Fun, ain\'t it?\n\nAye, I wants ye to set fire to this torch while ye\'re close to the cannons \'n set fire to the blast powder, make sure t\' get out o\' thar as quick as possible!','Lit the fuse of a blast powder keg.','Did it burn nicely?','Good, somethin\' else ye\'ve dealt with. I be startin\' to fear the thought of ye bein\' me enemy mate.',0,0,0,0,0,0,0,0,60330,1,0,0,0,0,0,0,60257,1,5535,1250,87,500,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ignite the gunpowder');

replace into creature_questrelation (id, quest) values (60453, 40186);
replace into creature_involvedrelation (id, quest) values (60453, 40186);

delete from item_template where entry = 60257;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60257,23295,'Torch',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

delete from creature_template where entry = 60330;
replace into creature_template (entry, name, display_id1) values (60330, 'quest_40186_dummy_triger', 328);

-- Captain of the Bloodsail Buccaneers --
delete from quest_template where entry = 40187;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40186,40187,2,408,50,48,0,0,'Captain of the Bloodsail Buccaneers','Mate at this point, I can nah even argue wit\' the fact that ye\'re a mighty resourceful individual. That bein\' said, I be givin\' ye, yer owns wee crew. Ye won\'t have to do much other than live a free damn live \'n go search fer adventure, gold, rum \'n wenches. It\'s been a fun run, \'n it\'s \'cause of ye that we be here. Speak with me when ye\'re ready to claim yer new title \'n yer crew.','Talk to the Garfield \'The Fox\' Sparkleblast when you\'re ready.','It be no great honour mate, this ain\'t a knight ceremony.','Yo-ho-ho!',0,0,0,0,0,0,0,0,60331,1,0,0,0,0,0,0,60257,1,3035,750,87,2000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Become the captain of the Bloodsail Buccaneers');

replace into creature_questrelation (id, quest) values (60453, 40187);
replace into creature_involvedrelation (id, quest) values (60453, 40187);

delete from creature_template where entry = 60331;
replace into creature_template (entry, name, display_id1) values (60331, 'quest_40187_dummy_triger', 328);