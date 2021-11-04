-- Reserved.
-- quest_template			40000-40200
-- creature_template		60300-60500
-- gameobject_template		2010700-2010900
-- item_template			60000-60200
-- gossip_menu				41000-43000
-- creature_equip_template	20000-21000
-- broadcast_text			30000-31000
-- creature_ai_events		2200000-2201000
-- creature_ai_scripts		2200000-2201000

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
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40172,40173,2,35,48,45,0,0,'Weapons Laying About','So listen here mate, ye see these foul sea tailed imps? These Blackwater Pirates are naught but a joke, hiding in their port. They even have thar weapons laying around in crates, truly a disgrace to all pirates around.\n\n<Garfield spits on the ground>.\n\nSo that\'s exactly why ye are going to collect them and bring them to a special someone in the city, what, ye thought these sea tailed imps wouldn\'t have a rat? Outrageous, but hilarious, in it? Quizzle be the name.','Bring five weapon crates to Quizzle.','Aye?','Not so loud! You want the whole bruiser brigade on our hands? Just put that crate in and keep them coming.\n\n<After you bring each crate one by one you turn your attention towards Quizzle>.\n\nFine work mate, here\'s your pay now leave and don\'t worry about it, you were never here today.',60245,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3525,750,87,500,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

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
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40173,40174,2,35,48,45,0,0,'A Cannon\'s Misfortune','All right mate. Ye\'ve done well so far but thar\'s still some stuff we have to do afore leavin\' this rotten port. If we wants these idiots to never \'have a chance in the face of\' the Bloodsail Buccaneers we shall have to also tamper with thar ammo, that bein\' said I am gonna give ye a flask o\' "special" water ye will have to pour in any barrel of blast powder ye can find.\n\nSavvy?','Sabotage the Blast Powder Kegs.','Done already mate?','Aye, good job lad. This is all fer the greater good of the crew, aye?',0,0,0,0,0,0,0,0,60328,10,0,0,0,0,0,0,0,0,4035,750,87,750,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Pour water into the keg');

replace into creature_questrelation (id, quest) values (60453, 40174);
replace into creature_involvedrelation (id, quest) values (60453, 40174);

delete from creature_template where entry = 60328;
replace into creature_template (entry, name, display_id1) values (60328, 'quest_40174_dummy_triger', 328);

delete from gameobject_template where entry = 2010834;
replace into gameobject_template (entry, type, displayid, size, name, flags, script_name) values (2010834, 1, 24163, 1, 'Blast Powder Keg', 32, 'go_blast_powder_keg');

-- The Bet --
delete from quest_template where entry = 40175;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqsourceid1, reqsourcecount1, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40175,2,33,37,30,0,0,'The Bet','I may not have the most gold on me, but I do have a fortune that\'s waiting out there for me. I made a bet with this goblin, named Nagzel, crafty little guy. You see, we were playing cards one day and he was telling me about his plans of joinin\' the Venture Co. and working at the base camp by Lake Nazferiti. For the first time in my life, I was actually winnin\', he offered up this big hunk of metal of a ring.\n\nNow, the ring itself I cared little for, it was nothing more then some cheap old iron lugnut, but it had this -big- jade sticking off the top of it. I\'m talking, this thing was the size of my thumb!\n\nBets are more then just games, they\'re a way of life, and this man took the ring when he lost, and vanished, never to be seen. Go find this punk, get that emerald, its rightfully mine anyway!','Bring back the \'Rightful\' Jade for Dirty Jacob.','It might be hard to track him down, but I\'m sure you can do it.','Damn, look at this beauty, such a beautiful rock, here, some silver for the hard work in getting me it. Some people should really learn not to flash their expensive rocks out in public, you never know who could be looking for them, heh.',60246,1,60247,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6500,2850,87,400,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

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
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40177,2,408,52,45,0,0,'The Gobcrank Flazwanger','Damn did we come down like a meteor, all the controls were going haywire, sparks flying everywhere as the zeppelin hauled ass and smashed into the island! It was a miracle that I survived, but not so much of a miracle that I had to leave behind the wreck.\n\nAfter we plummeted down we attracted the attention of a bunch of basilisks, the damn buggers made it impossible for me to go and find my Gobcrank Flazwanger! I made the thing back in Kezan a long time ago to help with stabilization and let me tell you it\'s revolutionary!\n\nYou think you can manage a quick tilted turn on a zeppelin? Not unless you have a Gobcrank Flazwanger... Look pal, you\'re looking at me like I\'m an alien, all you need to know is the thing is valueable, okay, and I\'m willing to pay for you to go get it, now am I speaking your language?\n\nThe wreck was over by the Maul\'ogg post to the south west, it shouldn\'t be hard to miss!','Find and bring the Gobcrank Flazwanger back to Flaz Fusemix in Maul\'ogg Refuge.','Look buddy, the longer we sit around here and talk, the higher the probability that thing is getting chewed up!','<The Goblin would take the device and quickly inspect it>. Yeah, this is it, here, take your cash, now scram, I gotta make sure this baby aint broken!',60251,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5000,4700,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

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
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40174,40178,2,35,48,45,0,0,'Loss of Good Rum','What we be about to do be a great sin, mate. I hope the Goddess o\' Rum will forgive this foolish scallywag. Aye, we\'ll poison the rum in the inn, wha\' a damn shame, ain\'t it?\n\nBut sometimes ye gotta do wha\' ye gotta do. Here\'s the poison, just toss it into the huge keg of rum they usually keep on the low level of the port, close to the action house, they fill the rum everyday \'n they\'ve got thar share already, they will only be feelin\' it tomorrow.','Poison the Rum.','Just go already, this action makes me eyes water.','What kind of monster am I to make ye sully such great rum, I hope one day I will forgive meself.',0,0,0,0,0,0,0,0,60329,1,0,0,0,0,0,0,60252,1,4535,750,87,500,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'The rum is poisoned');

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
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40178,40179,2,35,48,45,0,0,'Exterminate the Rat','So it seems these Blackwater fools sent some rat to keep track of our mates, he already asked someone to scuttle one of our new captains, although to be fair that orc was an idiot. Blood fer blood! I wants ye to go meet Morgan the Storm \'n spit in his face, bring me his head. Ye can find him on the Eastern beach where most of me mates set anchor.','Kill Morgan the Storm and bring his head to Garfield \'The Fox\' Sparkleblast.','Don\'t got all day.','The rat finally lays dead. Put that bag down fer now, I\'ll tell ye what ye gotta do next afore we get the deck all bloody.',60253,1,0,0,0,0,0,0,51607,1,0,0,0,0,0,0,0,0,5545,1250,87,1000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'The rum is poisoned');

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
delete from quest_template where entry = 40180;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40179,40180,2,35,48,45,0,0,'Making a Statement','Here mate, put Morgan\'s head in this Jolly Roger. Ye ain\'t about to like what ye\'re goin\' to do next, but that shall only prove how insane \'n courageous ye be. Ye\'re goin\' to toss the head at the feet of\' the Baron \'n the First Mate \'n make a damn run fer it! Ye\'re gonna find us on Jaguero Island, I hope ye make it thar alive, ye\'d be a great asset to the crew. If ye do come, I will officially make ye a crewmate.','Make a statement.','Shiver me timbers, ye actually made it. Were they mad?','Haha idiots! Now they know what\'s gonna happen when they try to mess with us next, great job. And welcome aboard.',0,0,0,0,0,0,0,0,60333,1,0,0,0,0,0,0,60254,1,12435,1250,87,2000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'To present a gift.');

replace into creature_questrelation (id, quest) values (60453, 40180);
replace into creature_involvedrelation (id, quest) values (60453, 40180);

delete from creature_template where entry = 60333;
replace into creature_template (entry, name, display_id1) values (60333, 'quest_40180_dummy_triger', 328);

delete from item_template where entry = 60254;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60254,6411,'Jolly Roger Gift',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

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

-- No Hope for Tomorrow --
delete from quest_template where entry = 40184;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40184,2,2557,50,45,0,0,'No Hope for Tomorrow','It\'s been so long, so long ago that we\'ve decided to let go of our principles. So long ago we cared for anyone but us, we\'ve given up on our lives in favor of the demons, we are nothing but shadows of memories from the past. I can no longer do this, I can no longer wait.\n\nI wish days would return when we, the Highborne, were the ones standing atop the Night Elves, all we are now are shadows of what we used to be, hunted by the ogres and demons that took residence in the lands we used to call Eldre\'thalas.\n\nPlease, spare me, end my suffering, I want to go to my mother Moon and join the afterlife that I\'ve courted for so many years. Please end my torment.','"Free" Thirael Blistersong.','<Thirael\'s broken corpse lays before your eyes>.','<Thirael lays dead, you\'ve fulfilled your promise to him, all that is left of him is a bag of coins you pick up>.',0,0,0,0,0,0,0,0,60463,1,0,0,0,0,0,0,0,0,5045,500,809,-100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60463, 40184);
replace into creature_involvedrelation (id, quest) values (60464, 40184);

delete from creature_template where entry = 60463;
REPLACE INTO creature_template VALUES (60463, 0, 14386, 0, 0, 0, 'Thirael Blistersong', '', 0, 50, 50, 1, 1, 0, 0, 980, 1354, 3, 1.05, 1.14286, 0, 20, 5, 0, 0, 1, 88, 107, 0, 226, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.4704, 96.8968, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 'npc_thirael');

delete from creature_template where entry = 60464;
REPLACE INTO creature_template VALUES (60464, 0, 14386, 0, 0, 0, 'Thirael Blistersong', '', 0, 50, 50, 1800, 1800, 0, 0, 980, 1354, 3, 1.05, 1.14286, 0, 20, 5, 0, 0, 1, 88, 107, 0, 226, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.4704, 96.8968, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 'npc_thirael_ghost');

replace into creature_template_addon values (60463,0,0,1,0,0,0,0,0);
replace into creature_template_addon values (60464,0,0,0,0,0,0,0,9617);

-- Malos Lunarspear - display ID 3300, level 35 elite, weapon 13061 , faction 80, greeting line : "What are you doing here, is there anything you need from me?"
-- Treant Protector <Malos Lunarspear's Minion>, display ID 9591, level 20, faction 80
-- Arch Hydromancer Lapidis , display ID 3387, level 55 elite, scale 1.3, faction 16, HP 20181, MANA 20000, need a basic script where he casts 25304 every 6 seconds, and 8398 every 20 seconds, when engaged, says the following line : "Who let you in this tower?! Do you know who you are messing with?!" , and when dead, says the following "You know.. Nothing... I was more powerful then all of you."
-- Twisted Water Elemental, display ID 5561, level 53 elite, scale 1.3, faction 16, HP 6105, MANA 3000, casts 25304
-- Thistlefur Recluse , display ID 6823, level 19, faction 82, weapon 2092
-- Old Greypaw, display ID 6804, level 20, has 2000 mana, neutral to both factions cannot be attacked, casts spell 915 , has greeting text : "Who are you?! Begone, this is my home, you do not belong here!"
-- Faldan Moonshatter , display ID 3301, level 35, faction 80, has weapon 4122 , weapon2 : 12743, greeting line : "The forests beauty is unmatched, the winds flowing through the trees, the moonlight dotting the landscape. Yet, beneath it all, there is a darkness that lurks, hidden beneath the veil of it all. This place used to be so full of life and harmony, but now there is more predators then we can count, and our allies in the forest have turned to nothing more then roaming thugs. \n\n You can sense it, can't you, as if you could wake from the dream at any moment."
-- Hadanos Greenblade, display ID 3789, faction 80, weapon 18957, greeting line : "Ashenvale is growing more and more dangerous by the day"
-- Adaena Oakleaf <High Sentinel of Darnassus> , display ID 1980 , faction 80, greeting line : "We must continue to act boldly in order to keep the people safe, Teldrassil has become more hostile and it has required continued patrolling of our roads."
-- Sentinel Danala , display ID 11729 , level 50 , weapon 5598 , faction 80 , greeting line "Welcome to Darnassus! We call this place home now, and for good reason, its beauty matches that of our legacy."
-- Distorted Treant, display ID 6351, level 11, faction 16 
-- Embergut , display ID 10704, level 54, scale 1.5, weapon 5201, has 3000 mana, faction 29, greeting line : "What you doing all the way out here $R?"
-- Lagg'osh <Innkeeper> , display ID 3193, level 54, scale 1.5, faction 29, greeting line : "Be comfy, the fire pits here are warm, and you be warm too!" HE IS INNKEEPER
-- Borhgk , display ID 10704, level 50, scale 1.3 , faction 29, greeting line : "We Maul'ogg have been here for long time, and we gonna stay here for long time! Just cause others think they can push us around doesn't mean anything! With Lord Cruk'Zogg we can do anything that we want on the island. \n\n We're stronger then all of them, and we're gonna be pushing them around soon! 

REPLACE INTO creature_template VALUES
(60465, 0, 3300, 0, 0, 0, 'Malos Lunarspear', '', 0, 35, 35, 2805, 2805, 0, 0, 751, 80, 3, 1, 1.14286, 0, 20, 5, 0, 1, 1, 193, 249, 0, 140, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 44.84, 61.655, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60466, 0, 9591, 0, 0, 0, 'Treant Protector', 'Malos Lunarspear\'s Minion', 0, 20, 20, 493, 493, 0, 0, 888, 80, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 31, 38, 0, 94, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 35.6224, 48.9808, 100, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60467, 0, 3387, 0, 0, 0, 'Arch Hydromancer Lapidis', '', 0, 55, 55, 20181, 20181, 20000, 20000, 2899, 16, 0, 1, 1.14286, 1.3, 20, 5, 0, 3, 1, 491, 601, 0, 262, 1, 1300, 2000, 8, 0, 0, 0, 0, 0, 0, 0, 432, 594, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 988, 1295, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60468, 0, 5561, 0, 0, 0, 'Twisted Water Elemental', '', 0, 53, 53, 6105, 6105, 3000, 3000, 2522, 16, 0, 1, 1.14286, 0, 20, 5, 0, 1, 1, 198, 256, 2, 244, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 56.7312, 78.0054, 100, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25304, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60469, 0, 6823, 0, 0, 0, 'Thistlefur Recluse', '', 0, 19, 19, 379, 379, 1118, 1118, 432, 82, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 19, 25, 0, 88, 1, 2000, 2000, 8, 0, 0, 0, 0, 0, 0, 0, 28.6704, 39.4218, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21, 32, 'EventAI', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60470, 0, 6804, 0, 0, 0, 'Old Greypaw', '', 0, 20, 20, 580, 580, 2000, 2000, 852, 15, 3, 1, 1.14286, 0, 20, 5, 0, 0, 1, 37, 45, 0, 90, 1, 2000, 2000, 2, 2, 0, 0, 0, 0, 0, 0, 32.8944, 45.2298, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 915, 0, 0, 0, 0, 0, 27, 40, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60471, 0, 3301, 0, 0, 0, 'Faldan Moonshatter', '', 0, 35, 35, 1403, 1403, 0, 0, 1427, 80, 3, 1, 1.14286, 0, 20, 5, 0, 0, 1, 50, 62, 0, 140, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 61, 84, 'EventAI', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60472, 0, 3789, 0, 0, 0, 'Hadanos Greenblade', '', 0, 35, 35, 1403, 1403, 0, 0, 1427, 80, 3, 1, 1.14286, 0, 20, 5, 0, 0, 1, 50, 62, 0, 140, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 61, 84, 'EventAI', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60473, 0, 1980, 0, 0, 0, 'Adaena Oakleaf', 'High Sentinel of Darnassus', 0, 50, 50, 2768, 2768, 0, 0, 2999, 80, 3, 1, 1.14286, 0, 20, 5, 0, 0, 1, 85, 109, 0, 226, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 66.44, 91.355, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60474, 0, 11729, 0, 0, 0, 'Sentinel Danala', '', 0, 50, 50, 2768, 2768, 0, 0, 2999, 80, 3, 1, 1.14286, 0, 20, 5, 0, 0, 1, 85, 109, 0, 226, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 66.44, 91.355, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60475, 0, 6351, 0, 0, 0, 'Distorted Treant', '', 0, 11, 11, 222, 222, 0, 0, 538, 16, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 14, 19, 0, 64, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 21.2784, 29.2578, 100, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 18, 'EventAI', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60476, 0, 10704, 0, 0, 0, 'Embergut', '', 0, 54, 54, 3292, 3292, 3000, 3000, 3216, 29, 3, 1, 1.14286, 1.5, 20, 5, 0, 0, 1, 282, 345, 0, 244, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 70.4704, 96.8968, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 113, 153, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60477, 0, 3193, 0, 0, 0, 'Lagg\'osh', 'Innkeeper', 0, 54, 54, 3292, 3292, 0, 0, 3216, 29, 135, 1, 1.14286, 1.5, 20, 5, 0, 0, 1, 282, 345, 0, 244, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.4704, 96.8968, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 113, 153, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60478, 0, 10704, 0, 0, 0, 'Borhgk', '', 0, 50, 50, 2768, 2768, 0, 0, 2999, 29, 3, 1, 1.14286, 1.3, 20, 5, 0, 0, 1, 85, 109, 0, 226, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 66.44, 91.355, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @equip_template = 20009; set @weapon_1 = 13061; set @weapon_2 = 0; set @creature = 60465;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20010; set @weapon_1 = 2092; set @weapon_2 = 0; set @creature = 60469;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20011; set @weapon_1 = 4122; set @weapon_2 = 12743; set @creature = 60471;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20013; set @weapon_1 = 5598; set @weapon_2 = 0; set @creature = 60474;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20014; set @weapon_1 = 5201; set @weapon_2 = 0; set @creature = 60476;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @gossip_menu_id = 41009; set @magic_number = 60465;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'What are you doing here, is there anything you need from me?'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41010; set @magic_number = 60470;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Who are you?! Begone, this is my home, you do not belong here!'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41010; set @magic_number = 60470;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Who are you?! Begone, this is my home, you do not belong here!'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41011; set @magic_number = 60471;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'The forests beauty is unmatched, the winds flowing through the trees, the moonlight dotting the landscape. Yet, beneath it all, there is a darkness that lurks, hidden beneath the veil of it all. This place used to be so full of life and harmony, but now there is more predators then we can count, and our allies in the forest have turned to nothing more then roaming thugs.\n\nYou can sense it, can\'t you, as if you could wake from the dream at any moment.'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41012; set @magic_number = 60472;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Ashenvale is growing more and more dangerous by the day.'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41013; set @magic_number = 60473;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'We must continue to act boldly in order to keep the people safe, Teldrassil has become more hostile and it has required continued patrolling of our roads.'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41014; set @magic_number = 60474;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Welcome to Darnassus! We call this place home now, and for good reason, its beauty matches that of our legacy.'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41015; set @magic_number = 60476;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'What you doing all the way out here $R?'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41016; set @magic_number = 60477;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Be comfy, the fire pits here are warm, and you be warm too!'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41017; set @magic_number = 60478;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'We Maul\'ogg have been here for long time, and we gonna stay here for long time! Just cause others think they can push us around doesn\'t mean anything! With Lord Cruk\'Zogg we can do anything that we want on the island.\n\nWe\'re stronger then all of them, and we\'re gonna be pushing them around soon!'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

REPLACE INTO npc_vendor VALUES
-- Lagg'osh <Innkeeper>
(60477, 159, 0, 0, 0, 0),
(60477, 787, 0, 0, 0, 0),
(60477, 1179, 0, 0, 0, 0),
(60477, 1205, 0, 0, 0, 0),
(60477, 1645, 0, 0, 0, 0),
(60477, 1708, 0, 0, 0, 0),
(60477, 4592, 0, 0, 0, 0),
(60477, 4593, 0, 0, 0, 0),
(60477, 4594, 0, 0, 0, 0),
(60477, 8766, 0, 0, 0, 0),
(60477, 8957, 0, 0, 0, 0),
(60477, 21552, 0, 0, 0, 0);

set @creature_entry = 60467;
set @description = 'Lapidis Tower: Arch Hydromancer Lapidis';
set @spell_list_id = 180000;

set @spellid_1 = 25304; -- 25304 every 6 seconds
set @probability_1 = 100; 
set @casttarget_1 = 1; 
set @castflags_1 = 0;
set @delayinitialmin_1 = 1; 
set @delayinitialmax_1 = 1; 
set @delayrepeatmin_1 = 6; 
set @delayrepeatmax_1 = 6;

set @spellid_2 = 8398; -- 8398 every 20 seconds
set @probability_2 = 100; 
set @casttarget_2 = 1; 
set @castflags_2 = 0;
set @delayinitialmin_2 = 4; 
set @delayinitialmax_2 = 4; 
set @delayrepeatmin_2 = 20; 
set @delayrepeatmax_2 = 20;

set @spellid_3 = 0;
set @probability_3 = 0; 
set @casttarget_3 = 0; 
set @castflags_3 = 0;
set @delayinitialmin_3 = 0; 
set @delayinitialmax_3 = 0; 
set @delayrepeatmin_3 = 0; 
set @delayrepeatmax_3 = 0;

set @spellid_4 = 0;
set @probability_4 = 0; 
set @casttarget_4 = 0; 
set @castflags_4 = 0;
set @delayinitialmin_4 = 0; 
set @delayinitialmax_4 = 0; 
set @delayrepeatmin_4 = 0; 
set @delayrepeatmax_4 = 0;

set @spellid_5 = 0; 
set @probability_5 = 0; 
set @casttarget_5 = 0; 
set @castflags_5 = 0;
set @delayinitialmin_5 = 0; 
set @delayinitialmax_5 = 0; 
set @delayrepeatmin_5 = 0; 
set @delayrepeatmax_5 = 0;

set @spellid_6 = 0; 
set @probability_6 = 0; 
set @casttarget_6 = 0; 
set @castflags_6 = 0;
set @delayinitialmin_6 = 0; 
set @delayinitialmax_6 = 0; 
set @delayrepeatmin_6 = 0; 
set @delayrepeatmax_6 = 0;

set @spellid_7 = 0; 
set @probability_7 = 0; 
set @casttarget_7 = 0; 
set @castflags_7 = 0;
set @delayinitialmin_7 = 0; 
set @delayinitialmax_7 = 0; 
set @delayrepeatmin_7 = 0; 
set @delayrepeatmax_7 = 0;

set @spellid_8 = 0; 
set @probability_8 = 0; 
set @casttarget_8 = 0; 
set @castflags_8 = 0;
set @delayinitialmin_8 = 0; 
set @delayinitialmax_8 = 0; 
set @delayrepeatmin_8 = 0; 
set @delayrepeatmax_8 = 0;

-- Do not touch this part:
update creature_template set spell_list_id = @spell_list_id, ai_name = 'EventAI', script_name = '', spell_id1 = 25304, spell_id2 = 8398, spell_id3 = 0 
where entry = @creature_entry;
replace into creature_spells (entry, name, 
spellid_1, probability_1, casttarget_1, castflags_1, delayinitialmin_1, delayinitialmax_1, delayrepeatmin_1, delayrepeatmax_1, 
spellid_2, probability_2, casttarget_2, castflags_2, delayinitialmin_2, delayinitialmax_2, delayrepeatmin_2, delayrepeatmax_2, 
spellid_3, probability_3, casttarget_3, castflags_3, delayinitialmin_3, delayinitialmax_3, delayrepeatmin_3, delayrepeatmax_3, 
spellid_4, probability_4, casttarget_4, castflags_4, delayinitialmin_4, delayinitialmax_4, delayrepeatmin_4, delayrepeatmax_4, 
spellid_5, probability_5, casttarget_5, castflags_5, delayinitialmin_5, delayinitialmax_5, delayrepeatmin_5, delayrepeatmax_5, 
spellid_6, probability_6, casttarget_6, castflags_6, delayinitialmin_6, delayinitialmax_6, delayrepeatmin_6, delayrepeatmax_6, 
spellid_7, probability_7, casttarget_7, castflags_7, delayinitialmin_7, delayinitialmax_7, delayrepeatmin_7, delayrepeatmax_7, 
spellid_8, probability_8, casttarget_8, castflags_8, delayinitialmin_8, delayinitialmax_8, delayrepeatmin_8, delayrepeatmax_8) 
values (@spell_list_id, @description,
@spellid_1, @probability_1, @casttarget_1, @castflags_1, @delayinitialmin_1, @delayinitialmax_1, @delayrepeatmin_1, @delayrepeatmax_1,
@spellid_2, @probability_2, @casttarget_2, @castflags_2, @delayinitialmin_2, @delayinitialmax_2, @delayrepeatmin_2, @delayrepeatmax_2,
@spellid_3, @probability_3, @casttarget_3, @castflags_3, @delayinitialmin_3, @delayinitialmax_3, @delayrepeatmin_3, @delayrepeatmax_3,
@spellid_4, @probability_4, @casttarget_4, @castflags_4, @delayinitialmin_4, @delayinitialmax_4, @delayrepeatmin_4, @delayrepeatmax_4,
@spellid_5, @probability_5, @casttarget_5, @castflags_5, @delayinitialmin_5, @delayinitialmax_5, @delayrepeatmin_5, @delayrepeatmax_5,
@spellid_6, @probability_6, @casttarget_6, @castflags_6, @delayinitialmin_6, @delayinitialmax_6, @delayrepeatmin_6, @delayrepeatmax_6,
@spellid_7, @probability_7, @casttarget_7, @castflags_7, @delayinitialmin_7, @delayinitialmax_7, @delayrepeatmin_7, @delayrepeatmax_7,
@spellid_8, @probability_8, @casttarget_8, @castflags_8, @delayinitialmin_8, @delayinitialmax_8, @delayrepeatmin_8, @delayrepeatmax_8);

REPLACE INTO creature_ai_events VALUES
(2200000, 60467, 0, 4, 0, 100, 0, 0, 0, 0, 0, 2200000, 0, 0, 'Arch Hydromancer Lapidis - Say on Aggro');
REPLACE INTO creature_ai_scripts VALUES
(2200000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 'Arch Hydromancer Lapidis - Say on Aggro');
REPLACE INTO broadcast_text VALUES
(30000, 'Who let you in this tower?! Do you know who you are messing with?!', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);

REPLACE INTO creature_ai_events VALUES
(2200001, 60467, 0, 6, 0, 100, 0, 0, 0, 0, 0, 2200001, 0, 0, 'Arch Hydromancer Lapidis - Say on Death');
REPLACE INTO creature_ai_scripts VALUES
(2200001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30001, 0, 0, 0, 0, 0, 0, 0, 0, 'Arch Hydromancer Lapidis - Say on Death');
REPLACE INTO broadcast_text VALUES
(30001, 'You know.. Nothing... I was more powerful then all of you.', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 'Wincing' Willy, display ID 1699, level 45, faction 119, weapon 15245, greeting text : "Hey there, I'm Wincing Willy Pal! Heard good things about you, the only reason we're talking right now. My job is to oversee supplies coming from the great seas and keep them here until we can allocate them elsewhere."
-- Falgig Wazzlewrench , display ID 7109, level 42, faction 119, weapon 1911, greeting text : "You look familiar, you one of the new crew members?"
-- Raga Darkeye, display ID 12392, level 44 , faction 119, weapon 3488, greeting text : "Another Bloodsail huh? Not often someone wanders around out here and just shows up, what you looking to help?"

REPLACE INTO creature_template VALUES
(60479, 0, 1699, 0, 0, 0, '\'Wincing\' Willy', '', 0, 45, 45, 2217, 2217, 0, 0, 2725, 119, 3, 1, 1.14286, 0, 20, 5, 0, 0, 1, 78, 95, 0, 204, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 84, 115, 'EventAI', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60480, 0, 7109, 0, 0, 0, 'Falgig Wazzlewrench', '', 0, 42, 42, 2059, 2059, 0, 0, 3568, 119, 3, 1, 1.14286, 0, 20, 5, 0, 0, 1, 67, 82, 0, 182, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 78, 107, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60481, 0, 7109, 0, 0, 0, 'Raga Darkeye', '', 0, 44, 44, 2159, 2159, 0, 0, 3568, 119, 3, 1, 1.14286, 0, 20, 5, 0, 0, 1, 67, 82, 0, 182, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 78, 107, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @equip_template = 20015; set @weapon_1 = 15245; set @weapon_2 = 0; set @creature = 60479;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20016; set @weapon_1 = 1911; set @weapon_2 = 0; set @creature = 60480;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20017; set @weapon_1 = 3488; set @weapon_2 = 0; set @creature = 60481;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @gossip_menu_id = 41018; set @magic_number = 60479;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Hey there, I\'m Wincing Willy Pal! Heard good things about you, the only reason we\'re talking right now. My job is to oversee supplies coming from the great seas and keep them here until we can allocate them elsewhere.'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41019; set @magic_number = 60480;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'You look familiar, you one of the new crew members?'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41020; set @magic_number = 60481;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Another Bloodsail huh? Not often someone wanders around out here and just shows up, what you looking to help?'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

update quest_template set title = 'Alpha Aggression' where entry = 40121;
update quest_template set details = 'The Alpha of the Ghostpaw Wolves in the area is named Ghoststalker. He is a ferocious beast that leads packs of wolves in the region with dangerous intent. If a balance of nature is to be brought, then the beast must be slain.\n\nYou should find him in the hills north west of Lake Falathim, and southeast of the Zoram Strand. I wish you luck in your hunt, Ghoststalker is a clever beast that has eluded me to this day.' where entry = 40121;
update creature_template set display_id1 = 7039 where entry = 92218;
update creature_template set npc_flags = 2 where entry = 91890;
delete from creature_questrelation where quest = 40150;
delete from creature_involvedrelation where quest = 40150;
replace into creature_questrelation (id, quest) values (91890, 40150);
replace into creature_involvedrelation (id, quest) values (91890, 40150);
update creature_template set npc_flags = 2 where entry = 92018;
delete from creature_questrelation where quest = 40072;
delete from creature_involvedrelation where quest = 40072;
replace into creature_questrelation (id, quest) values (92018, 40072);
replace into creature_involvedrelation (id, quest) values (92018, 40072);
replace into item_template values
 ('60258', '0', '4', '2', 'Crown of Corruption', 'Sealed in demonic magics.', '17269', '4', '0', '1', '40856', '10214', '1', '-1', '-1', '48',
 '35', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '22', '7', '8',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '102', '0', '0', '0',
 '0', '5', '0', '9140', '1', '0', '0', '-1', '0', '-1', '13679', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '1', '0', '0', '60', '0', '0', '0', '0', '44', '0', '0', '0',
 '0', '1', NULL);
delete from creature_loot_template where entry = 92110 and item = 60258;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (92110,60258,0.5,1,1,0,10);

-- The Lost Crew --
delete from quest_template where entry = 40188;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40188,2,408,52,45,0,0,'The Lost Crew','That damn Zeppelin caught fire as we were going over this uncharted island, and lucky for us we didn\'t just hit the open seas! We lost quite a lot of crew members but I do know that Blazno jumped off before the crash. I don\'t know for sure what happened to him, but I\'d like you to find out one way or another.\n\nHe\'s a crafty one that Blazno is, no doubt he was able to figure out something away from the rest of us, if anything my bet is he is somewhere near where the crash site is at, look around there - you\'ll find our wreckage by the Maul\'ogg Post, just south west of here near the Canyon.','Search for signs of what happened to Blazno Blastpipe in Gillijim\'s Island.','What, you haven\'t seen a goblin before?','Oh, Yeggle sent you? Heh, that guys a character he is, thankfully to hear he made it, some of those other gutter-rats were given a lucky way out of this world compared to what I dreamed of.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3700,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (92188, 40188);
replace into creature_involvedrelation (id, quest) values (92191, 40188);

-- To Make A Fortune --
delete from quest_template where entry = 40189;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40188,40189,2,408,52,45,0,0,'To Make A Fortune','That crash was a massive setback! Heh, set me back a whole bunch, I had trade deals all over Azeroth, one of the richest goblins, all in that zeppelin. Theres gotta be atleast a million gold showered around where that zeppelin is, and I can\'t even go and pick it up, damn basilisks!\n\nBut, I\'m smart, the smartest goblin of all goblins in the world, and I got a strategy to make my wealth back, see?! Turtles live such long lives that I\'m gonna harness the power of a turtle, with the wealth of gold to make either alot of gold, or make some serum that extends life!\n\nGenius, you see, genius! Now, go to the Silver Strand, its just to the west of here, and find me an Uncracked Turtle Shell, it NEEDS to be uncracked, if I see a single crack, you aint getting anything!','Gather a single Uncracked Turtle Shell for Blazno Blastpipe in Gillijim\'s Isle.','Look pal, I can\t just tell you what I got planned or else you\'ll steal my idea! Now find that Shell!','Hey, this might be it, I swear if theres a single crack on here, you\'re gonna go and have to get another one, understand? Hmm... Seems spotless, good, this shall do just fine, now the final step!',60259,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4750,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (92191, 40189);
replace into creature_involvedrelation (id, quest) values (92191, 40189);

delete from item_template where entry = 60259;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60259,22805,'Uncracked Turtle Shell',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

update creature_template set loot_id = 91838 where entry = 91838;
delete from creature_loot_template where entry = 91838 and item = 60259;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (91838,60259,-9,1,1,0,10);

-- The Blazno Touch --
delete from quest_template where entry = 40190;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40189,40190,2,408,52,45,0,0,'The Blazno Touch','You see, to be smart like me requires thinking outside of the box, something that goblins and gnomes have been in forever - a box! But me, I\'m outside of it, and now with this turtle shell I can make great things happen!\n\n The last step for what I need will require a single golden bar, the sheer properties of the gold will be enough to make pure magic happen, and when I say magic I mean MAGIC. You can find a gold bar anywhere on Azeroth, but I need a real one, not no fake crap! \n\n Get me a golden bar, and I will be able to remake my fortune!','Gather a Gold Bar for Blazno Blastpipe in Gillijim\'s Isle.','The Gold Bar is the last ingredient for this recipe, hurry up, and get one pal!','Now, we can unlock true riches!',3577,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4700,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (92191, 40190);
replace into creature_involvedrelation (id, quest) values (92191, 40190);

update creature_template set script_name = 'npc_blazno' where entry = 92191;

-- The Ghostly Charm --
delete from quest_template where entry = 40191;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40191,2,408,53,45,0,0,'The Ghostly Charm','There was a time when we could roam freely around the island, a time when the Kalkor and the Razzari lived at peace, and even cooperated. During those times, I would often venture up and down the Silver Strand to admire the beauty of this island, and to explore.\n\nOn my last trip to the beaches, I had found ships torn apart upon the sand, and was shocked at the whispers of humanoid figures. It grasped upon my neck, and pulled free the charm I had bound there, taking it from my body as I raced back here.\n\nThat Charm is one of the only things I have left of the place we once came from, and I would ask you to get it back. You can find these wrecked ships to the north west, along the Silver Strand, my Charm must still be held by one of the ghosts there.','Find and Recover the Ghostly Charm for Tarokar in Kalkor Point.','The Silver Strand can be a dangerous place now, be careful when you go find my Charm.','This is my charm, but, something doesn\'t seem right about it, too much time within the hands of a ghost may have, cursed it!',60260,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4650,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (92174, 40191);
replace into creature_involvedrelation (id, quest) values (92174, 40191);

delete from item_template where entry = 60260;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60260,34204,'Ghostly Charm',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'Has an odd energy lingering upon it.',0);

update creature_template set loot_id = 92166 where entry = 92166;
update creature_template set loot_id = 92165 where entry = 92165;
update creature_template set loot_id = 92164 where entry = 92164;

delete from creature_loot_template where item = 60260 and entry between 92164 and 92166;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values
(92166,60260,-7,1,1,0,10),
(92165,60260,-8,1,1,0,10),
(92164,60260,-10,1,1,0,10);

-- In Search of Corruption --
delete from quest_template where entry = 40192;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40192,2,331,20,10,0,0,'In Search of Corruption','There was a time in which the Kaldorei and the Furbolgs lived in harmony, they were our ally against the darkness, and worked with us to keep the balance in nature. We traded, we offered assistance to one another, and we even fought aside one another.\n\nThat time has passed, and it seems with each passing day more and more furbolg abandon their homes to join the larger tribes. These large tribes of furbolg have collected to gather strength and deem the outside world as hostile entirely.\n\nIn the end, they have become nothing but ruthless stalkers, murderers and agents of madness. This change has only puzzled us druids, and has brought up more questions then answers, but hopefully today, we can find some. Across the water no the north are some of their camps, abandoned by their kind. I want you to search them, and try to find some clues as to why they would potentially be corrupted.','Search the furbolg camps across the water for clues of their corruption.','Remember to be careful, there may still be some lurking about, or even other potential dangers.','<Faldan would take some time mulling over the items, his gaze remained somber, and somewhat steeled>. These items surely paint a rather dark picture, if the furbolg have been relying off the land, and the land itself has become tainted it would make sense as to what has happened.\n\nTheir creations reflect upon their mind state, and in the past of dealing with them I have never come across any such ornaments or carved rocks. I must prepare a letter to Darnassus, to be delivered with haste.',60261,1,60262,1,60263,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1030,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60471, 40192);
replace into creature_involvedrelation (id, quest) values (60471, 40192);

delete from item_template where entry between 60261 and 60263;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60261,1275,'Furbolg Clue #1',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'A vial of foul smelling, and tainted sap.',0),
(60262,34261,'Furbolg Clue #2',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'A twisted ornament that looks to draw abhorrent energy.',0),
(60263,1168,'Furbolg Clue #3',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'A bag filled with various carved rocks containing unknown symbols.',0);

update creature_template set loot_id = 60469 where entry = 60469;

delete from creature_loot_template where item = 60262 and entry = 60469;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values
(60469,60262,-100,1,1,0,10);

delete from gameobject_template where entry = 2010838 and 2010839;
replace into gameobject_template values
(2010838, 0, 3, 24754, 'Tainted Sap', 0, 4, 1, 43, 2010838, 0, 1.6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(2010839, 0, 3, 24638, 'Hanging Bag', 0, 4, 1, 43, 2010839, 0, 1.6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

delete from gameobject_loot_template where entry = 2010838 and 2010839;
replace into gameobject_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values 
(2010838,60261,-100,1,1,0,10),
(2010839,60263,-100,1,1,0,10);

-- Ashenvale Corruption --
delete from quest_template where entry = 40193;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40192,40193,2,331,20,10,0,0,'Ashenvale Corruption','There is a corruption lingering within the forest of Ashenvale, while I cannot pinpoint exactly where it is, or what is causing it. The signs of the furbolg being reduced to a state of madness only boldens my thought, and hearing reports of what lurks within the forest to the east only haunts my mind.\n\nIf there is anything that can be done, it would be that of Arch Druid Fandral Staghelm in Darnassus. He has led our people to a new beginning, and perhaps it will be him that can solve the corruption present here in Ashenvale.\n\nI have prepared this letter for him, please, deliver it with urgency, for the stake of all beauty in Ashenvale could be at stake.','Deliver Faldan\'s Message to Arch Druid Fandral Staghelm in Darnassus.','Yes, what is it?\n\nI am busy, you must have something for me.','Faldan believes that I can assist in Ashenvale as far away as I am? The furbolg here have already begun to act in a similar manner, and there are much greater issues at stake then a tribe of savages out within the deep forests of Ashenvale.\n\nThis is not an issue that I can help with at the moment, my hands are tied, and I have more important things to deal with. When my current tasks are completed, I will begin to assist with the problems in Ashenvale.\n\nGood day.',60264,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60264,1,0,1300,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60471, 40193);
replace into creature_involvedrelation (id, quest) values (3516, 40193);

delete from item_template where entry = 60264;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60264,3020,'Faldan\'s Message',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'A vial of foul smelling, and tainted sap.',50511);

REPLACE INTO page_text VALUES
(50511, 'To Fandral Staghelm, Arch Druid\n\nThere is corruption present within Ashenvale, with each passing day the wildlife grows more aggresive and the furbolg more brazen. They are no longer our friends within the forest and have taken to arms against any who dare show themselves.\n\nWithin their abandoned villages lay trinkets of a dark intent, rocks carved in crude runes, and the very sap in which they indulge has been tainted.\n\nThey have lost their way, and we must find a way to solve this issue, lest all of the forest be lost to such madness.\n\nFaldan Moonshatter', 0);

-- Razzari Madness --
delete from quest_template where entry = 40194;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40194,2,408,53,45,0,0,'Razzari Madness','My people have a long and rich history upon this island, we once came from Stranglethorn, as part of the Gurubashi. But we looked for a new destiny when the wars stared, it was here that we called home. This island has been a place of refuge for our kind, and we have lived here in harmony with nature around us.\n\nAs of recently, my people have begun to betray their heritage, and their past. They use a foreign magic from our brothers the Hazzuri, one that is of an evil source, and tainted to the core. Instead of practicing the ways of the voodoo, they now are lost within the ways of shadow, mon.\n\nMy people are not what they used to be, and attack any who dare go close, their very essence be tainted. I ask of you to do me a favor friend, you need to go to Zul\'Razar, it is located to the northwest on the isle. Kill the trolls there, gather me their Tainted Mojo, perhaps I may find a source of how to help them.','Gather 15 Tainted Mojo from trolls in Zul\'Razar for Jubo in Maul\'ogg Refuge.','There be no time to waste! Each second that we remain idle and speak with one another, is another second that their minds rot away to this foreign evil.','This Mojo doesn\'t look normal, it is dark, and thick, swirling with the seeds of evil deep within it. The Hazzuri tribe did the same long ago, and abandoned this past for a new fate. Now, they sent speakers and emmisaries to Zul\'Razar in hopes to bring the Razzari into the fold.\n\nI had thought our leaders better then to listen to the words of madmen, to buy wares from the peddlers of evil misdeeds.',60265,15,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4900,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (92190, 40194);
replace into creature_involvedrelation (id, quest) values (92190, 40194);

delete from item_template where entry = 60265;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60265,17898,'Tainted Mojo',12,1,2048,1,-1,-1,1,15,-1,-1,-1,-1,4,'',0);

update creature_template set loot_id = 92148 where entry = 92148;
update creature_template set loot_id = 92149 where entry = 92149;
update creature_template set loot_id = 92150 where entry = 92150;
update creature_template set loot_id = 92151 where entry = 92151;
update creature_template set loot_id = 92152 where entry = 92152;
update creature_template set loot_id = 92153 where entry = 92153;
update creature_template set loot_id = 92154 where entry = 92154;
update creature_template set loot_id = 92155 where entry = 92155;
update creature_template set loot_id = 92156 where entry = 92156;

delete from creature_loot_template where item = 60265 and entry between 92148 and 92156;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values
(92148,60265,-60,1,1,0,10),
(92149,60265,-60,1,1,0,10),
(92150,60265,-60,1,1,0,10),
(92151,60265,-60,1,1,0,10),
(92152,60265,-60,1,1,0,10),
(92153,60265,-60,1,1,0,10),
(92154,60265,-60,1,1,0,10),
(92155,60265,-60,1,1,0,10),
(92156,60265,-100,1,1,0,10);

-- The Razzari Leaders --
delete from quest_template where entry = 40195;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40194,40195,2,408,54,45,0,0,'The Razzari Leaders',' With the Hazzuri\'s dark words they were able to convince the weak minds of the Razzari to take up their magic. Even now their speaker gives them speeches to warp their minds and change their ideals.\n\nI have discovered from the Mojo you have sent me of a dark taint that lingers within it, it would appear that the power my people have become to accept is that of a great power, and a much greater evil. The Hazzuri know not what they peddle, nor what they preach, and will only bring the end of their kind, and my own.\n\nIf there is to be a future for the Razzari, this must all come to an end, and the only end I can see, is by the death of those that accepted this darkness. They are nothing more then traitors for a promise of power.\n\nGo deep into Zul\'Razar, strike hard at Speaker Ujuwa for spreading his lies, and Chief Imaz\'ul for accepting them. Bring me their skulls as proof of your deeds, let this chaos come to an end.','Collect the skulls of Speaker Ujuwa and Chief Imaz\'ul for Jubo in Maul\'ogg Refuge.','Chief Imaz\'ul is a coward for what he has done, the chief of our tribe is to hold strong, even in the face of tempting offers.','So, it is done then, you have braved Zul\'Razar, and killed the leaders. The skulls will be a reminder to any who betray what we really are. I hold hope that my people can see reason, and deep down will know this had to be done for the best.\n\nI must still find a way to reverse this Tainted Mojo, but until then, I thank you, your efforts have surely helped my people. Without you, who knows what would have happened to this island.',60266,1,60267,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5000,6100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60268,1,60269,1,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (92190, 40195);
replace into creature_involvedrelation (id, quest) values (92190, 40195);

delete from item_template where entry between 60266 and 60269;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60266,2853,'Skull of Ujuwa',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0),
(60267,1273,'Skull of Imaz\'ul',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

delete from creature_loot_template where item = 60266 and entry = 92155;
delete from creature_loot_template where item = 60267 and entry = 92156;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values
(92155,60266,-100,1,1,0,10),
(92156,60267,-100,1,1,0,10);

replace into item_template values
 ('60268', '0', '4', '2', 'Razzari Tribal Slacks', '', '16974', '2', '0', '1', '73624', '18406', '7', '-1', '-1', '59',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '19', '4', '4',
 '7', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '134', '0', '0', '0',
 '0', '0', '0', '9140', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '1', '0', '0', '65', '0', '0', '0', '0', '47', '0', '0', '0',
 '0', '1', NULL),
 ('60269', '0', '4', '4', 'Razzari Battle Gauntlets', '', '24183', '2', '0', '1', '32828', '8207', '10', '-1', '-1', '59',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '12', '7', '6',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '357', '0', '0', '0',
 '0', '0', '0', '7517', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '1', '0', '0', '40', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);
 
-- Lykourgos --
delete from quest_template where entry = 40196;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40196,2,408,53,45,0,0,'Lykourgos','It has been long since our people have seen the sands of Kalimdor. We left our tribe for the promise of riches, and now, the man who led us here betrayed us for his own prosper. Those riches that we fought and worked so hard to gain were taken, and we were left to rot.\n\nIt is a centaur named Lykourgos who had insturmented such a betrayal with the Southseas Pirates. I had my suspicions of him, but I hadn\'t suspected his honor was so cheap. Everyone within this camp wants revenge, but we have no means to kill him. I hate to speak anything good of such a snake, but he is if anything, a ruthless murderer with a great skill in arms.\n\nHe is known as \'The Reaver\' for his brutality, and you should not take him lightly. Find him, kill him, for all of us here, and for his betrayal. I know not where he is, but he is still a pirate through and through, if anything, he should around fellow Southsea Freebooters.','Slay Lykourgos the Reaver.','Have you had any success in finding Lykourgos?','It is done, you have gotten revenge for each and every one of us. I cannot thank you enough for smiting him down, if only the fates had been different, if only he acted with honor and kept his word, perhaps we would be back home.\n\nIt is not something to dwell on, but we Kalkor will find our place in the world. You have earned esteem within our community, and restored our spirits, I wish you the best in your future.',0,0,0,0,0,0,0,0,91968,1,0,0,0,0,0,0,0,0,0,6100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60270,1,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (92168, 40196);
replace into creature_involvedrelation (id, quest) values (92168, 40196);

update quest_template set type = 1 where entry = 40196;

delete from item_template where entry = 60270;
replace into item_template values
 ('60270', '0', '2', '1', 'The Reaver', '', '28573', '2', '0', '1', '208416', '52104', '17', '-1', '-1', '59',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3600', '0',
 '0', '140', '193', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '14049', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '1', '0', '0', '85', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);

-- Old Greypaw --
delete from quest_template where entry = 40197;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40197,2,331,19,10,0,0,'Old Greypaw','For many long years our neighbor was that of a furbolg, he has grown aged over the last few years but was extremely wise. Old Greypaw often kept to himself, and minded his own business, often venturing over for a night time talk if he so needed the company.\n\nAs of lately I fear for his mental health, the other furbolg of the forest have begun to act irrationally, and I fear Greypaw may be succumbing to a similar fate. He has not stopped by in months, and has kept to his home to the north.\n\nHe has been aggresive to either me or Ardaen approaching and wishing to talk, but perhaps you may be able to speak with him, and ask if he is doing okay. It would certainly ease my mind to know an old friend is well.','Speak with Old Greypaw within Ashenvale for Daela Evermoon.','He may act hostile, but I assure you, it is not within his nature, and deep down, he truly is a kind soul.','This a tragedy, for all of Ashenvale to have such a thing happen. The forest truly has lost a bright mind this day, withered away to a foul madness that lingers in the trees.\n\nDo not feel bad, there was no averting this fate for Old Greypaw, he was a danger to both himself, and all who were near him. I pray for his spirit to transcend to Elune, and be watched for all eternity.\n\nAs much as I hate that it ended like this, I must still give you my thanks, for Greypaw was not himself, if he were around, he would have asked for such mercy to be released from his madness.',0,0,0,0,0,0,0,0,60470,1,0,0,0,0,0,0,0,0,0,1300,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Speak with Old Greypaw');

replace into creature_questrelation (id, quest) values (91287, 40197);
replace into creature_involvedrelation (id, quest) values (91287, 40197);

update creature_template set script_name = 'npc_old_greypaw' where entry = 60470;
update creature_template set script_name = 'npc_daela_evermoon' where entry = 91287;
update creature_template set faction = 79 where entry = 91287;
update creature_template set faction = 79 where entry = 91288;

-- Smuggling Ale --
delete from quest_template where entry = 40198;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40198,2,33,37,30,0,0,'Smuggling Ale','Hey, you! I be needing a bit of work that is off the boat if you think you can be a hand. When we get moving all that people really got to do is either drink, or work to keep the ship clean and orderly. I\'ve found it always good to keep a good reserve of ale on hand, and a good variety of it too!\n\nWhat I\'m gonna ask you to do is bring some ale from various sources, some of which might require you to have some friends, or connections with the opposite faction at that!\n\nFirst, I need a Barrel of Steamwheedle Wine, which can be found at the port, steal it. Secondly, I\'ll need some common ales, 5 Flask of Port, 5 Flagon of Mead, and 5 Jug of Bourbon, should be able to find them at most vendors. Finally, get me a Cask of Merlot from Stormwind at the Gallina Winery, and a Jug of Orgrimmar Brown from the Tavern in Orgrimmar.','Gather a Barrel of Steemwheedle Wine, 5 Flasks of Port, 5 Flagons of Mead, 5 Jugs of Bourbon, a Cask of Merlot, and a Jug of Orgrimmar Brown for Fazzle \'The Slick\' in Bloodsail Retreat.','If you want to be a real smuggler , let me tell you, you need connections, and those connections need to be trustworthy.','All this variety, you know what they say, variety is the spice of life! When we make our next journey this will all surely keep everyone in good spirits.\n\nLast time we ventured out, we barely had any ale left over, most of the barrels were destroyed, and let me tell you, Garfield would have my neck if anything like that ever happened again! Thanks for the hard work ye scurvy dog, take this money as a thanks.',60270,1,60271,1,2593,5,2595,5,0,0,0,0,0,0,0,0,0,0,20000,3350,87,500,21,-300,0,0,0,0,0,0,0,60272,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- need to add to req items
-- 5 Flagon of Mead
-- 1 Cask of merlot
replace into creature_questrelation (id, quest) values (60455, 40198);
replace into creature_involvedrelation (id, quest) values (60455, 40198);

delete from item_template where entry = 60270;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, buy_price, sell_price, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60270,8381,'Barrel of Steamwheedle Wine',12,1,2048,1,0,0,-1,-1,1,1,-1,-1,-1,-1,4,'',0),
(60271,18099,'Jug of Orgrimmar Brown',12,1,2048,1,500,250,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

delete from gameobject_template where entry = 2010840;
replace into gameobject_template values
(2010840, 0, 3, 23262, 'Steamwheedle Barrel', 0, 4, 1, 43, 2010840, 0, 1.6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

delete from gameobject_loot_template where entry = 2010840;
replace into gameobject_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values 
(2010840,60270,-100,1,1,0,10);

REPLACE INTO npc_vendor VALUES
-- Lagg'osh <Innkeeper>
(5611, 60271, 0, 0, 0, 0);

replace into item_template values
 ('60272', '0', '4', '2', 'Smuggler\'s Sash', '', '27520', '2', '0', '1', '13628', '3407', '6', '-1', '-1', '42',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '11', '7', '5',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '1', '0', '0', '30', '0', '0', '0', '0', '7', '0', '0', '0',
 '0', '1', NULL);

-- The Maul\'ogg War --
delete from quest_template where entry = 40199;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40199,2,408,52,45,0,0,'The Maul\'ogg War','The Maul\'ogg be in a great war, a war for our very survival! We be pushed back to this refuge as if we are not stronger anymore. This not be the truth, and honestly we will fight back until we are destroyed.\n\nWe once controlled most of this island, and only when the Razzari defeated us, and the wildlife posed a big threat did we come back here! Maul\'ogg destined to rule all of Gillijim, and it shall be rightfully ours.\n\nWe must retake land if we are to hold more power, and The Tangled Wood lies between us and them. Kill the animals there, those panthers that stalk, kill those creepers that lurk within the vines, it should be just north of here, go!','Slay 10 Lurking Jungle Creepers and 10 Junglepaw Panthers for Lord Cruk\'Zogg in Maul\'ogg Refuge.','What, you too weak to kill panthers and creepers? Do I need to send someone else?','So, you actually are stronger then I first thought. So many big ogre think they are tough just because they think they are and then they get smashed. You are tough, and strong, and you prove it, maybe you are a real ogre. War must continue, it is the only way we can go forward.',0,0,0,0,0,0,0,0,91965,10,91960,10,0,0,0,0,0,0,0,4750,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (92180, 40199);
replace into creature_involvedrelation (id, quest) values (92180, 40199);

-- Tanglemoss --
delete from quest_template where entry = 40200;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40200,2,408,53,45,0,0,'Tanglemoss','When we battled with the Razzari we were able to deal quite a lot of damage to Zul\'Razar, and even occupied part of the city. Until a large lot of Creepers came in, led by a massive beast named Tanglemoss, who drove us out.\n\nTanglemoss is a lurking, horrific beast that patrols the ruins of Zul\'Razar and has slain many ogres. We have always thought of him in stories, and rumors as a beast that lingered within the shadows and made those that traveled alone dissapear. I think I speak for many of us when I say that I prefer the story of Tanglemoss to be just that, a story.\n\nTravel to the Ruins of Zul\'Razar to the west, and slay Tanglemoss, bring its foul heart to me.','Bring the Heart of Tanglemoss to Blatarg in Maul\'ogg Refuge.','Have you found Tanglemoss? It may require more then just yourself for this to be done.','So, you actually are stronger then I first thought. So many big ogre thing they are tough just because they think they are and then they get smashed. You are tough, and strong, and you prove it, maybe you are a real ogre. War must continue, it is the only way we can go forward.',60273,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60274,1,60275,1,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (92176, 40200);
replace into creature_involvedrelation (id, quest) values (92176, 40200);

update quest_template set type = 1 where entry = 40200;

delete from item_template where entry = 60273;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60273,3422,'Heart of Tanglemoss',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into item_template values
 ('60274', '0', '4', '4', 'Maul\'ogg Thighguards', '', '19720', '2', '0', '1', '64816', '16204', '7', '-1', '-1', '59',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '13', '7', '4',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '484', '0', '0', '0',
 '0', '0', '0', '9141', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '1', '0', '0', '85', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60275', '0', '4', '3', 'Blatarg\'s Mantle', '', '26194', '2', '0', '1', '63348', '15837', '3', '-1', '-1', '59',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '15', '7', '6',
 '6', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '234', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '5', '1', '0', '0', '60', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);

update creature_template set loot_id = 92204 where entry = 92204;

delete from creature_loot_template where item = 60273 and entry = 92204;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values
(92204,60273,-100,1,1,0,10);

-- Unforseen Consequences --
delete from quest_template where entry = 40201;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40201,2,141,11,5,0,0,'Unforseen Consequences','I spent much time among the keepers at the Stonetalon Peak, it was a time of tranquility, and to find true balance with nature. In my time there I learned much about the power of nature, and how best to wield it in the need to conserve, and protect nature. It is when I began my practice here within Teldrassil did my efforts begin to falter, and my work bring complications.\n\nIt would appear the land itself holds some taint that I cannot put my hands upon. My efforts in controlling nature have been much tougher, and being able to simply grasp it has, been straining. One of my Protectors here has withered away and has fallen free from my control.\n\nI ask of you to speak with Tasala Whitefeather, one who once lead the harpies within the region, she is free from the evil that grips her kind, and should know more about the one I seek. You should find her just down the hill to the north, follow the road and you will see her near the cliffs edge.','Speak with Tasala Whitefeather in Teldrassil.','I do not often get visitors, what can I assist you with?','Me and Malos have spoken on occasion, he has been studying nature for some time now... He has even offered assistance for helping with the corruption of my kind. He is a good and kind soul, and if he needs help, I shall offer what I can.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100,69,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60465, 40201);
replace into creature_involvedrelation (id, quest) values (60482, 40201);

-- Tesala Whitefeather , display ID 10282, level 25 elite, scale 1.6, faction 80, mana 2000
REPLACE INTO creature_template VALUES
(60482, 0, 10282, 0, 0, 0, 'Tesala Whitefeather', '', 0, 25, 25, 4880, 4880, 2000, 2000, 800, 80, 2, 1, 1.14286, 1.6, 20, 5, 0, 1, 1, 112, 144, 0, 106, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 31.9, 43.8625, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 248, 328, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

-- Tasala\'s Word --
delete from quest_template where entry = 40202;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40201,40202,2,141,11,5,0,0,'Tasala\'s Word','The forests of Teldrassil have been growing more and more shrouded in a mist that haunts one end to the other. A shadow lurks unseen that has made my sisters impatient, and aggresive. If Malos can concluded his research, then this will only be of help to me as well.\n\nI have seen this treant that he speaks about, withered and twisted, wandering the forests down below this cliffside. It looks haunted as if nature itself has twisted its very mind, and made it hostile to the world. It walks from the eastern side of the Wellspring Lake, up and down the hillside.\n\nBring this information to Malos, perhaps he may make use of it.','Return the information to Malos Lunarspear in Teldrassil.','So, has Tasala given any information on the whereabouts of my treant?','I see, so it is as I feared, without my control, the forest has turned it to aggresion, and hostility.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100,69,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60482, 40202);
replace into creature_involvedrelation (id, quest) values (60465, 40202);

-- Rooting Out Corruption --
delete from quest_template where entry = 40203;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40202,40203,2,141,11,5,0,0,'Rooting Out Corruption','There is only one course of action left, the Treant must be dispatched, lest it cause harm to any of our kind, or that of nature. From its corrupted form take a sample of its Withered Roots.\n\nWith the information Tasala has offered, we can deduce that it should be walking upon the eastern side of the Wellspring Lake. Search with caution and make sure to keep your guard up, if it is hostile, then no doubt it will only offer aggresion should you interact with it.\n\nBe swift, the treant could hold answers that tackle the very heart of problems here in Teldrassil.','Destroy the Distorted Treant, and bring its Withered Roots to Malos Lunarspear in Teldrassil.','Have you found the treant, have you done what was needed for the balance of nature?','<Malos Lunarspear would take some time looking over the roots, his face somewhat disturbed by the sight>. It would appear that the roots are decayed, as if the creature had been in a state of dying, or had been deceased before you had reached it.\n\nI would hope no horrible fate on any being of nature I carry under my control, but this, is somewhat disturbing to gaze upon. I am afraid this has only made my research bring more questions, but still, you have helped me.\n\nAs a thanks for your help, please, take one of these items.',60276,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,900,69,125,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60277,1,60278,1,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60465, 40203);
replace into creature_involvedrelation (id, quest) values (60465, 40203);

update quest_template set type = 1 where entry = 40203;

delete from item_template where entry = 60276;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60276,1464,'Withered Roots',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

update creature_template set loot_id = 60475 where entry = 60475;

delete from creature_loot_template where item = 60276 and entry = 60475;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values
(60475,60276,-100,1,1,0,10);

replace into item_template values
 ('60277', '0', '4', '3', 'Deepfrond Leggings', '', '22687', '2', '0', '1', '1988', '497', '7', '-1', '-1', '16',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '3', '6', '2',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '132', '0', '0', '2',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '5', '1', '0', '0', '55', '0', '0', '0', '0', '1', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60278', '0', '4', '1', 'Deepfrond Gloves', '', '16970', '2', '0', '1', '636', '159', '10', '-1', '-1', '16',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '3', '3', '2',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '0', '0', '2',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '18', '0', '0', '0', '0', '1', '0', '0', '0',
 '0', '1', NULL);

-- A Meeting With Adaena --
delete from quest_template where entry = 40204;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40204,2,141,11,5,0,0,'A Meeting With Adaena','Greetings traveler, High Sentinel Adaena Oakleaf has been seeking assistance with affairs here within Teldrassil. She has called any fit and willing to assist with problems within our very borders. If you\'re looking to help out within Teldrassil, then there would be no better place to do so.\n\nAdaena Oakleaf can be found just up the path behind me atop of the gateway into Darnassus.','Speak with Adaena Oakleaf in Teldrassil.','Are you seeking to assist Darnassus, and secure our borders?','Good, we are in need of work and are in need of brave people to offer assistance, especially with troubles all across our lands from within.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100,69,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60474, 40204);
replace into creature_involvedrelation (id, quest) values (60473, 40204);

-- Securing Darnassus --
delete from quest_template where entry = 40205;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40204,40205,2,141,11,5,0,0,'Securing Darnassus','The Furbolg of Teldrassil have become a more active threat then I would have ever imagined. I had simply envisioned them as our ally to stand against whatever would come to bring harm to Teldrassil, not to be fighting against them.\n\nMoon Priestess Amara has tasked herself with patrolling the roads to keep traveler\'s safe but I fear it is not enough. If we wish to secure our borders we must take a more proactive approach, and stop the buildup of a much larger threat.\n\nThe Furbolg have been gathering to the south east for some time now. It shouldn\'t be long now until they are bold enough to begin probing attacks against Dolanaar, or Shadowglen. Should they succeed, their courage will only be bolstered to do even greater harm.\n\nTravel to Gnarlpine Hold, and slay the Pathstalkers and Avengers there to keep Darnassus safe.','Slay 10 Gnarlpine Avengers and 5 Gnarlpine Pathfinders for Adaena Oakleaf in Teldrassil.','Has it been done, have you finished your task? Should you fail, I fear only greater harm will come to the Kaldorei.','What has been done here today has only strengthened our defences, and kept our people from harm. The Furbolg have been rather blunt in their actions and have spurred on the wrath of Elune. For your efforts, you are to be rewarded, thank you.',0,0,0,0,0,0,0,0,2013,10,2012,5,0,0,0,0,0,0,0,900,69,125,0,0,0,0,0,0,0,0,0,60279,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60473, 40205);
replace into creature_involvedrelation (id, quest) values (60473, 40205);

replace into item_template values
 ('60279', '0', '4', '0', 'Adaena\'s Loop', '', '28733', '2', '0', '1', '1604', '401', '11', '-1', '-1', '20',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '3', '6', '2',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0',
 '0', '1', NULL);

update creature_template set display_id1 = 12392 where entry = 60481;
update quest_template set details = 'There was a time in which the Kaldorei and the Furbolgs lived in harmony, they were our ally against the darkness, and worked with us to keep the balance in nature. We traded, we offered assistance to one another, and we even fought aside one another.\n\nThat time has passed, and it seems with each passing day more and more furbolg abandon their homes to join the larger tribes. These large tribes of furbolg have collected to gather strength and deem the outside world as hostile entirely.\n\nIn the end, they have become nothing but ruthless stalkers, murderers and agents of madness. This change has only puzzled us druids, and has brought up more questions then answers. Hopefully today we can find some. Across the water to the north are some of their camps, abandoned by their kind. I want you to search them, and try to find some clues as to why they would potentially be corrupted.' where entry = 40192;
update item_template set description = '' where entry = 60264;
update creature_template set display_id1 = 986 where entry = 70027;

-- Morpheus Ribcage, <Hunter Trainer>,  level 5, HP: 102, MP: 50, displayID 1578, weapon (ranged) 15807 (item), faction 68, greeting line: (Hunter): The path ahead will be different for you, you no longer adapt to nature, nature adapts to you.// (Other Classes): "I have nothing to teach you <class>."
-- Liott Maneskin, <Hunter Trainer>, level 15, HP: 356, MP:120, displayID 2615, weapon (ranged) 13040 (itemd ID), faction 68, greeting line: (Hunter): The path ahead will be different for you, you no longer adapt to nature, nature adapts to you.// (Other Classes): "I have nothing to teach you <class>."
-- Noel Bearfinger, <Hunter Trainer>, level 60, HP: 4120, MP: 1200, displayID 2631, weapon (ranged) 15289 (item ID), faction 68, greeting line: (Hunter): The path ahead will be different for you, you no longer adapt to nature, nature adapts to you.// (Other Classes): "I have nothing to teach you <class>."
-- Vaya Spidersbite, <Hunter Trainer>, level 60, HP: 4120, MP: 1200, DisplayID 2659, weapon 14541 (Item ID), faction 68, greeting line: (Hunter): The path ahead will be different for you, you no longer adapt to nature, nature adapts to you.// (Other Classes): "I have nothing to teach you <class>."
-- Valdos Madhound, <Hunter Trainer>, level 60, HP:4120, MP:1200, DisplayID 3545, weapon 15323 (Item ID), faction 68, greeting line: (Hunter): The path ahead will be different for you, you no longer adapt to nature, nature adapts to you.// (Other Classes): "I have nothing to teach you <class>."
-- Diane Willowfield, <Pet Trainer>, level 40, HP:1750, DisplayID 3660, weapon  80813 (item ID), faction 68, greeting line: (Hunter): Approaching some beasts will end poorly for you, but with the incantation you've been thought you should be able to trick them.
-- Decrepit Darkhound, EntryID 1547, change from Demon to Beast (Wolf).
-- Redwing, <Morpheus Ribcage's Pet>, level 2, HP:50, displayID 4734, faction 68. 
-- Blackpaw, <Liott Maneskin's Pet>, level 10, HP: 150, displayID 9021, faction 68.
-- Putridfang, <Valdos Madhound's Pet>, level 60, HP: 2500, displayID 4124, faction 68.
-- Angerclaw, <Noel Bearfinger's Pet>, level 60, HP:3100, displayID 9276, faction 68.
-- Blackest Widow, <Vaya Spidersbite's Pet>, level 60, HP:2000, displayID 30, faction 68.

update creature_template set type = 1 where entry = 1547;
update creature_template set type_flags = 1 where entry = 1547;

delete from creature_template where entry between 60483 and 60493;
REPLACE INTO creature_template VALUES
(60483, 0, 1578, 0, 0, 0, 'Morpheus Ribcage', 'Hunter Trainer', 0, 5, 5, 102, 102, 50, 50, 20, 68, 19, 1, 1.14286, 0, 20, 5, 0, 0, 1, 6, 8, 0, 52, 1, 1500, 2000, 1, 0, 0, 0, 0, 0, 3, 0, 8.624, 11.858, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60484, 0, 2615, 0, 0, 0, 'Liott Maneskin', 'Hunter Trainer', 0, 15, 15, 356, 356, 120, 120, 20, 68, 19, 1, 1.14286, 0, 20, 5, 0, 0, 1, 17, 23, 0, 76, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 3, 0, 26.048, 35.816, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60485, 0, 2631, 0, 0, 0, 'Noel Bearfinger', 'Hunter Trainer', 0, 60, 60, 4120, 4120, 1200, 1200, 8401, 68, 19, 1, 1.14286, 0, 20, 5, 0, 0, 1, 110, 142, 0, 272, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 3, 0, 74.448, 102.366, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60486, 0, 2659, 0, 0, 0, 'Vaya Spidersbite', 'Hunter Trainer', 0, 60, 60, 4120, 4120, 1200, 1200, 8401, 68, 19, 1, 1.14286, 0, 20, 5, 0, 0, 1, 110, 142, 0, 272, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 3, 0, 74.448, 102.366, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60487, 0, 3545, 0, 0, 0, 'Valdos Madhound', 'Hunter Trainer', 0, 60, 60, 4120, 4120, 1200, 1200, 8401, 68, 19, 1, 1.14286, 0, 20, 5, 0, 0, 1, 110, 142, 0, 272, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 3, 0, 74.448, 102.366, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60488, 0, 3660, 0, 0, 0, 'Diane Willowfield', 'Pet Trainer', 0, 40, 40, 1750, 1750, 0, 0, 1890, 68, 19, 1, 1.14286, 0, 20, 5, 0, 0, 1, 61, 78, 0, 156, 1, 2000, 2000, 1, 0, 0, 0, 3, 0, 3, 0, 56.672, 77.924, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60489, 0, 4734, 0, 0, 0, 'Redwing', 'Morpheus Ribcage\'s Pet', 0, 2, 2, 50, 50, 0, 0, 16, 68, 0, 1, 0.857143, 0.4, 20, 5, 0, 0, 1, 1, 2, 0, 46, 1, 2000, 2000, 1, 0, 0, 24, 0, 0, 0, 0, 1.76, 2.42, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60490, 0, 9021, 0, 0, 0, 'Blackpaw', 'Liott Maneskin\'s Pet', 0, 10, 10, 150, 150, 0, 0, 459, 68, 0, 1, 0.857143, 0, 20, 5, 0, 0, 1, 13, 17, 0, 62, 1, 2000, 2000, 1, 0, 0, 1, 0, 0, 0, 0, 16.632, 22.869, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 1, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60491, 0, 4124, 0, 0, 0, 'Putridfang', 'Valdos Madhound\'s Pet', 0, 60, 60, 2500, 2500, 0, 0, 3791, 68, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 107, 131, 0, 272, 1, 2000, 2000, 1, 0, 0, 1, 0, 0, 0, 0, 71.9664, 98.9538, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60492, 0, 9276, 0, 0, 0, 'Angerclaw', 'Noel Bearfinger\'s Pet', 0, 60, 60, 3100, 3100, 0, 0, 2861, 68, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 104, 130, 0, 272, 1, 2000, 2000, 1, 0, 0, 4, 0, 0, 0, 0, 71.9664, 98.9538, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60493, 0, 30, 0, 0, 0, 'Blackest Widow', 'Vaya Spidersbite\'s Pet', 0, 60, 60, 2000, 2000, 0, 0, 3791, 68, 0, 2, 1.71429, 1, 20, 5, 0, 0, 1, 545, 626, 0, 272, 1, 1400, 2000, 1, 0, 0, 3, 0, 0, 0, 0, 69.696, 95.832, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @equip_template = 20018; set @weapon_1 = 15807; set @weapon_2 = 0; set @creature = 60483;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20019; set @weapon_1 = 13040; set @weapon_2 = 0; set @creature = 60484;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20020; set @weapon_1 = 15289; set @weapon_2 = 0; set @creature = 60485;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20021; set @weapon_1 = 14541; set @weapon_2 = 0; set @creature = 60486;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20022; set @weapon_1 = 15323; set @weapon_2 = 0; set @creature = 60487;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20023; set @weapon_1 = 80813; set @weapon_2 = 0; set @creature = 60488;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @gossip_menu_id = 41021; set @magic_number = 60483;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'The path ahead will be different for you, you no longer adapt to nature, nature adapts to you.'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41022; set @magic_number = 60484;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'The path ahead will be different for you, you no longer adapt to nature, nature adapts to you.'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41023; set @magic_number = 60485;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'The path ahead will be different for you, you no longer adapt to nature, nature adapts to you.'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41024; set @magic_number = 60486;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'The path ahead will be different for you, you no longer adapt to nature, nature adapts to you.'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41025; set @magic_number = 60487;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'The path ahead will be different for you, you no longer adapt to nature, nature adapts to you.'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41026; set @magic_number = 60488;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Approaching some beasts will end poorly for you, but with the incantation you\'ve been thought you should be able to trick them.'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

-- Morpheus Ribcage
REPLACE INTO npc_trainer VALUES
(60483, 1547, 10, 0, 0, 1, 0, 5875),
(60483, 2003, 100, 0, 0, 4, 0, 5875),
(60483, 3048, 100, 0, 0, 6, 0, 5875),
(60483, 5298, 100, 0, 0, 6, 0, 5875),
(60483, 13164, 50, 0, 0, 4, 0, 5875);
-- Liott Maneskin
REPLACE INTO npc_trainer VALUES
(60484, 796, 2200, 0, 0, 20, 0, 5875),
(60484, 1117, 600, 0, 0, 12, 0, 5875),
(60484, 1424, 2200, 0, 0, 20, 0, 5875),
(60484, 1547, 10, 0, 0, 1, 0, 5875),
(60484, 1549, 1800, 0, 0, 16, 0, 5875),
(60484, 1552, 2200, 0, 0, 20, 0, 5875),
(60484, 1563, 1800, 0, 0, 50, 0, 5875),
(60484, 1564, 18000, 0, 0, 40, 0, 5875),
(60484, 1567, 1200, 0, 0, 14, 0, 5875),
(60484, 1603, 10000, 0, 0, 32, 0, 5875),
(60484, 2003, 100, 0, 0, 4, 0, 5875),
(60484, 2898, 14000, 0, 0, 36, 0, 5875),
(60484, 2899, 1200, 0, 0, 14, 0, 5875),
(60484, 2979, 600, 0, 0, 12, 0, 5875),
(60484, 3047, 6000, 0, 0, 22, 0, 5875),
(60484, 3048, 100, 0, 0, 6, 0, 5875),
(60484, 3049, 7000, 0, 0, 26, 0, 5875),
(60484, 3128, 200, 0, 0, 8, 0, 5875),
(60484, 3663, 8000, 0, 0, 28, 0, 5875),
(60484, 3664, 14000, 0, 0, 36, 0, 5875),
(60484, 5117, 200, 0, 0, 8, 0, 5875),
(60484, 5131, 2200, 0, 0, 20, 0, 5875),
(60484, 5298, 100, 0, 0, 6, 0, 5875),
(60484, 5338, 2000, 0, 0, 18, 0, 5875),
(60484, 5385, 8000, 0, 0, 30, 0, 5875),
(60484, 6198, 1200, 0, 0, 14, 0, 5875),
(60484, 6385, 400, 0, 0, 10, 0, 5875),
(60484, 6791, 2200, 0, 0, 20, 0, 5875),
(60484, 6792, 7000, 0, 0, 24, 0, 5875),
(60484, 6999, 8000, 0, 0, 30, 0, 5875),
(60484, 8738, 18000, 0, 0, 40, 0, 5875),
(60484, 13160, 18000, 0, 0, 40, 0, 5875),
(60484, 13162, 8000, 0, 0, 30, 0, 5875),
(60484, 13164, 100, 0, 0, 4, 0, 5875),
(60484, 13545, 26000, 0, 0, 44, 0, 5875),
(60484, 13546, 40000, 0, 0, 52, 0, 5875),
(60484, 13547, 50000, 0, 0, 60, 0, 5875),
(60484, 13556, 400, 0, 0, 10, 0, 5875),
(60484, 13557, 2000, 0, 0, 18, 0, 5875),
(60484, 13558, 7000, 0, 0, 26, 0, 5875),
(60484, 13559, 12000, 0, 0, 34, 0, 5875),
(60484, 13560, 24000, 0, 0, 42, 0, 5875),
(60484, 13561, 36000, 0, 0, 50, 0, 5875),
(60484, 13562, 48000, 0, 0, 58, 0, 5875),
(60484, 13799, 1800, 0, 0, 16, 0, 5875),
(60484, 13811, 8000, 0, 0, 28, 0, 5875),
(60484, 13814, 12000, 0, 0, 34, 0, 5875),
(60484, 14332, 200, 0, 0, 8, 0, 5875),
(60484, 14333, 1800, 0, 0, 16, 0, 5875),
(60484, 14334, 7000, 0, 0, 24, 0, 5875),
(60484, 14335, 10000, 0, 0, 32, 0, 5875),
(60484, 14336, 18000, 0, 0, 40, 0, 5875),
(60484, 14337, 32000, 0, 0, 48, 0, 5875),
(60484, 14338, 46000, 0, 0, 56, 0, 5875),
(60484, 14339, 16000, 0, 0, 38, 0, 5875),
(60484, 14340, 5000, 0, 0, 60, 0, 5875),
(60484, 14341, 8000, 0, 0, 30, 0, 5875),
(60484, 14342, 26000, 0, 0, 44, 0, 5875),
(60484, 14343, 48000, 0, 0, 58, 0, 5875),
(60484, 14344, 12000, 0, 0, 34, 0, 5875),
(60484, 14345, 32000, 0, 0, 48, 0, 5875),
(60484, 14346, 2200, 0, 0, 20, 0, 5875),
(60484, 14347, 10000, 0, 0, 32, 0, 5875),
(60484, 14348, 24000, 0, 0, 42, 0, 5875),
(60484, 14349, 40000, 0, 0, 52, 0, 5875),
(60484, 14350, 28000, 0, 0, 46, 0, 5875),
(60484, 14351, 46000, 0, 0, 56, 0, 5875),
(60484, 14352, 600, 0, 0, 12, 0, 5875),
(60484, 14353, 2200, 0, 0, 20, 0, 5875),
(60484, 14354, 8000, 0, 0, 28, 0, 5875),
(60484, 14355, 14000, 0, 0, 36, 0, 5875),
(60484, 14356, 26000, 0, 0, 44, 0, 5875),
(60484, 14357, 40000, 0, 0, 52, 0, 5875),
(60484, 14358, 50000, 0, 0, 60, 0, 5875),
(60484, 14359, 24000, 0, 0, 42, 0, 5875),
(60484, 14360, 42000, 0, 0, 54, 0, 5875),
(60484, 14361, 36000, 0, 0, 50, 0, 5875),
(60484, 14362, 48000, 0, 0, 58, 0, 5875),
(60484, 14364, 7000, 0, 0, 26, 0, 5875),
(60484, 14365, 14000, 0, 0, 36, 0, 5875),
(60484, 14366, 28000, 0, 0, 46, 0, 5875),
(60484, 14367, 46000, 0, 0, 56, 0, 5875),
(60484, 14368, 18000, 0, 0, 40, 0, 5875),
(60484, 14370, 50000, 0, 0, 60, 0, 5875),
(60484, 14372, 26000, 0, 0, 44, 0, 5875),
(60484, 14373, 42000, 0, 0, 54, 0, 5875),
(60484, 14374, 2000, 0, 0, 18, 0, 5875),
(60484, 14375, 8000, 0, 0, 28, 0, 5875),
(60484, 14376, 16000, 0, 0, 38, 0, 5875),
(60484, 14377, 32000, 0, 0, 48, 0, 5875),
(60484, 14378, 48000, 0, 0, 58, 0, 5875),
(60484, 14431, 6000, 0, 0, 22, 0, 5875),
(60484, 14432, 18000, 0, 0, 40, 0, 5875),
(60484, 14434, 48000, 0, 0, 58, 0, 5875),
(60484, 14445, 8000, 0, 0, 30, 0, 5875),
(60484, 14446, 28000, 0, 0, 46, 0, 5875),
(60484, 15637, 8000, 0, 0, 30, 0, 5875),
(60484, 15638, 18000, 0, 0, 40, 0, 5875),
(60484, 15639, 36000, 0, 0, 50, 0, 5875),
(60484, 15640, 50000, 0, 0, 60, 0, 5875),
(60484, 20044, 28000, 0, 0, 46, 0, 5875),
(60484, 20155, 10000, 0, 0, 32, 0, 5875),
(60484, 20156, 36000, 0, 0, 50, 0, 5875),
(60484, 20157, 7000, 0, 0, 26, 0, 5875),
(60484, 20158, 18000, 0, 0, 40, 0, 5875),
(60484, 20159, 7000, 0, 0, 24, 0, 5875),
(60484, 20160, 400, 0, 0, 10, 0, 5875),
(60484, 20161, 2000, 0, 0, 18, 0, 5875),
(60484, 20191, 46000, 0, 0, 56, 0, 5875),
(60484, 20738, 600, 0, 0, 12, 0, 5875),
(60484, 20931, 400, 0, 0, 28, 0, 5875),
(60484, 20932, 700, 0, 0, 36, 0, 5875),
(60484, 20933, 1300, 0, 0, 44, 0, 5875),
(60484, 20934, 2000, 0, 0, 52, 0, 5875),
(60484, 20935, 2500, 0, 0, 60, 0, 5875),
(60484, 20938, 2500, 0, 0, 60, 0, 5875),
(60484, 20940, 1800, 0, 0, 50, 0, 5875),
(60484, 20941, 2500, 0, 0, 60, 0, 5875),
(60484, 20942, 1200, 0, 0, 42, 0, 5875),
(60484, 20943, 2100, 0, 0, 54, 0, 5875);
-- Noel Bearfinger
REPLACE INTO npc_trainer VALUES
(60485, 796, 2200, 0, 0, 20, 0, 5875),
(60485, 1117, 600, 0, 0, 12, 0, 5875),
(60485, 1424, 2200, 0, 0, 20, 0, 5875),
(60485, 1547, 10, 0, 0, 1, 0, 5875),
(60485, 1549, 1800, 0, 0, 16, 0, 5875),
(60485, 1552, 2200, 0, 0, 20, 0, 5875),
(60485, 1563, 1800, 0, 0, 50, 0, 5875),
(60485, 1564, 18000, 0, 0, 40, 0, 5875),
(60485, 1567, 1200, 0, 0, 14, 0, 5875),
(60485, 1603, 10000, 0, 0, 32, 0, 5875),
(60485, 2003, 100, 0, 0, 4, 0, 5875),
(60485, 2898, 14000, 0, 0, 36, 0, 5875),
(60485, 2899, 1200, 0, 0, 14, 0, 5875),
(60485, 2979, 600, 0, 0, 12, 0, 5875),
(60485, 3047, 6000, 0, 0, 22, 0, 5875),
(60485, 3048, 100, 0, 0, 6, 0, 5875),
(60485, 3049, 7000, 0, 0, 26, 0, 5875),
(60485, 3128, 200, 0, 0, 8, 0, 5875),
(60485, 3663, 8000, 0, 0, 28, 0, 5875),
(60485, 3664, 14000, 0, 0, 36, 0, 5875),
(60485, 5117, 200, 0, 0, 8, 0, 5875),
(60485, 5131, 2200, 0, 0, 20, 0, 5875),
(60485, 5298, 100, 0, 0, 6, 0, 5875),
(60485, 5338, 2000, 0, 0, 18, 0, 5875),
(60485, 5385, 8000, 0, 0, 30, 0, 5875),
(60485, 6198, 1200, 0, 0, 14, 0, 5875),
(60485, 6385, 400, 0, 0, 10, 0, 5875),
(60485, 6791, 2200, 0, 0, 20, 0, 5875),
(60485, 6792, 7000, 0, 0, 24, 0, 5875),
(60485, 6999, 8000, 0, 0, 30, 0, 5875),
(60485, 8738, 18000, 0, 0, 40, 0, 5875),
(60485, 13160, 18000, 0, 0, 40, 0, 5875),
(60485, 13162, 8000, 0, 0, 30, 0, 5875),
(60485, 13164, 100, 0, 0, 4, 0, 5875),
(60485, 13545, 26000, 0, 0, 44, 0, 5875),
(60485, 13546, 40000, 0, 0, 52, 0, 5875),
(60485, 13547, 50000, 0, 0, 60, 0, 5875),
(60485, 13556, 400, 0, 0, 10, 0, 5875),
(60485, 13557, 2000, 0, 0, 18, 0, 5875),
(60485, 13558, 7000, 0, 0, 26, 0, 5875),
(60485, 13559, 12000, 0, 0, 34, 0, 5875),
(60485, 13560, 24000, 0, 0, 42, 0, 5875),
(60485, 13561, 36000, 0, 0, 50, 0, 5875),
(60485, 13562, 48000, 0, 0, 58, 0, 5875),
(60485, 13799, 1800, 0, 0, 16, 0, 5875),
(60485, 13811, 8000, 0, 0, 28, 0, 5875),
(60485, 13814, 12000, 0, 0, 34, 0, 5875),
(60485, 14332, 200, 0, 0, 8, 0, 5875),
(60485, 14333, 1800, 0, 0, 16, 0, 5875),
(60485, 14334, 7000, 0, 0, 24, 0, 5875),
(60485, 14335, 10000, 0, 0, 32, 0, 5875),
(60485, 14336, 18000, 0, 0, 40, 0, 5875),
(60485, 14337, 32000, 0, 0, 48, 0, 5875),
(60485, 14338, 46000, 0, 0, 56, 0, 5875),
(60485, 14339, 16000, 0, 0, 38, 0, 5875),
(60485, 14340, 5000, 0, 0, 60, 0, 5875),
(60485, 14341, 8000, 0, 0, 30, 0, 5875),
(60485, 14342, 26000, 0, 0, 44, 0, 5875),
(60485, 14343, 48000, 0, 0, 58, 0, 5875),
(60485, 14344, 12000, 0, 0, 34, 0, 5875),
(60485, 14345, 32000, 0, 0, 48, 0, 5875),
(60485, 14346, 2200, 0, 0, 20, 0, 5875),
(60485, 14347, 10000, 0, 0, 32, 0, 5875),
(60485, 14348, 24000, 0, 0, 42, 0, 5875),
(60485, 14349, 40000, 0, 0, 52, 0, 5875),
(60485, 14350, 28000, 0, 0, 46, 0, 5875),
(60485, 14351, 46000, 0, 0, 56, 0, 5875),
(60485, 14352, 600, 0, 0, 12, 0, 5875),
(60485, 14353, 2200, 0, 0, 20, 0, 5875),
(60485, 14354, 8000, 0, 0, 28, 0, 5875),
(60485, 14355, 14000, 0, 0, 36, 0, 5875),
(60485, 14356, 26000, 0, 0, 44, 0, 5875),
(60485, 14357, 40000, 0, 0, 52, 0, 5875),
(60485, 14358, 50000, 0, 0, 60, 0, 5875),
(60485, 14359, 24000, 0, 0, 42, 0, 5875),
(60485, 14360, 42000, 0, 0, 54, 0, 5875),
(60485, 14361, 36000, 0, 0, 50, 0, 5875),
(60485, 14362, 48000, 0, 0, 58, 0, 5875),
(60485, 14364, 7000, 0, 0, 26, 0, 5875),
(60485, 14365, 14000, 0, 0, 36, 0, 5875),
(60485, 14366, 28000, 0, 0, 46, 0, 5875),
(60485, 14367, 46000, 0, 0, 56, 0, 5875),
(60485, 14368, 18000, 0, 0, 40, 0, 5875),
(60485, 14370, 50000, 0, 0, 60, 0, 5875),
(60485, 14372, 26000, 0, 0, 44, 0, 5875),
(60485, 14373, 42000, 0, 0, 54, 0, 5875),
(60485, 14374, 2000, 0, 0, 18, 0, 5875),
(60485, 14375, 8000, 0, 0, 28, 0, 5875),
(60485, 14376, 16000, 0, 0, 38, 0, 5875),
(60485, 14377, 32000, 0, 0, 48, 0, 5875),
(60485, 14378, 48000, 0, 0, 58, 0, 5875),
(60485, 14431, 6000, 0, 0, 22, 0, 5875),
(60485, 14432, 18000, 0, 0, 40, 0, 5875),
(60485, 14434, 48000, 0, 0, 58, 0, 5875),
(60485, 14445, 8000, 0, 0, 30, 0, 5875),
(60485, 14446, 28000, 0, 0, 46, 0, 5875),
(60485, 15637, 8000, 0, 0, 30, 0, 5875),
(60485, 15638, 18000, 0, 0, 40, 0, 5875),
(60485, 15639, 36000, 0, 0, 50, 0, 5875),
(60485, 15640, 50000, 0, 0, 60, 0, 5875),
(60485, 20044, 28000, 0, 0, 46, 0, 5875),
(60485, 20155, 10000, 0, 0, 32, 0, 5875),
(60485, 20156, 36000, 0, 0, 50, 0, 5875),
(60485, 20157, 7000, 0, 0, 26, 0, 5875),
(60485, 20158, 18000, 0, 0, 40, 0, 5875),
(60485, 20159, 7000, 0, 0, 24, 0, 5875),
(60485, 20160, 400, 0, 0, 10, 0, 5875),
(60485, 20161, 2000, 0, 0, 18, 0, 5875),
(60485, 20191, 46000, 0, 0, 56, 0, 5875),
(60485, 20738, 600, 0, 0, 12, 0, 5875),
(60485, 20931, 400, 0, 0, 28, 0, 5875),
(60485, 20932, 700, 0, 0, 36, 0, 5875),
(60485, 20933, 1300, 0, 0, 44, 0, 5875),
(60485, 20934, 2000, 0, 0, 52, 0, 5875),
(60485, 20935, 2500, 0, 0, 60, 0, 5875),
(60485, 20938, 2500, 0, 0, 60, 0, 5875),
(60485, 20940, 1800, 0, 0, 50, 0, 5875),
(60485, 20941, 2500, 0, 0, 60, 0, 5875),
(60485, 20942, 1200, 0, 0, 42, 0, 5875),
(60485, 20943, 2100, 0, 0, 54, 0, 5875);
-- Vaya Spidersbite
REPLACE INTO npc_trainer VALUES
(60486, 796, 2200, 0, 0, 20, 0, 5875),
(60486, 1117, 600, 0, 0, 12, 0, 5875),
(60486, 1424, 2200, 0, 0, 20, 0, 5875),
(60486, 1547, 10, 0, 0, 1, 0, 5875),
(60486, 1549, 1800, 0, 0, 16, 0, 5875),
(60486, 1552, 2200, 0, 0, 20, 0, 5875),
(60486, 1563, 1800, 0, 0, 50, 0, 5875),
(60486, 1564, 18000, 0, 0, 40, 0, 5875),
(60486, 1567, 1200, 0, 0, 14, 0, 5875),
(60486, 1603, 10000, 0, 0, 32, 0, 5875),
(60486, 2003, 100, 0, 0, 4, 0, 5875),
(60486, 2898, 14000, 0, 0, 36, 0, 5875),
(60486, 2899, 1200, 0, 0, 14, 0, 5875),
(60486, 2979, 600, 0, 0, 12, 0, 5875),
(60486, 3047, 6000, 0, 0, 22, 0, 5875),
(60486, 3048, 100, 0, 0, 6, 0, 5875),
(60486, 3049, 7000, 0, 0, 26, 0, 5875),
(60486, 3128, 200, 0, 0, 8, 0, 5875),
(60486, 3663, 8000, 0, 0, 28, 0, 5875),
(60486, 3664, 14000, 0, 0, 36, 0, 5875),
(60486, 5117, 200, 0, 0, 8, 0, 5875),
(60486, 5131, 2200, 0, 0, 20, 0, 5875),
(60486, 5298, 100, 0, 0, 6, 0, 5875),
(60486, 5338, 2000, 0, 0, 18, 0, 5875),
(60486, 5385, 8000, 0, 0, 30, 0, 5875),
(60486, 6198, 1200, 0, 0, 14, 0, 5875),
(60486, 6385, 400, 0, 0, 10, 0, 5875),
(60486, 6791, 2200, 0, 0, 20, 0, 5875),
(60486, 6792, 7000, 0, 0, 24, 0, 5875),
(60486, 6999, 8000, 0, 0, 30, 0, 5875),
(60486, 8738, 18000, 0, 0, 40, 0, 5875),
(60486, 13160, 18000, 0, 0, 40, 0, 5875),
(60486, 13162, 8000, 0, 0, 30, 0, 5875),
(60486, 13164, 100, 0, 0, 4, 0, 5875),
(60486, 13545, 26000, 0, 0, 44, 0, 5875),
(60486, 13546, 40000, 0, 0, 52, 0, 5875),
(60486, 13547, 50000, 0, 0, 60, 0, 5875),
(60486, 13556, 400, 0, 0, 10, 0, 5875),
(60486, 13557, 2000, 0, 0, 18, 0, 5875),
(60486, 13558, 7000, 0, 0, 26, 0, 5875),
(60486, 13559, 12000, 0, 0, 34, 0, 5875),
(60486, 13560, 24000, 0, 0, 42, 0, 5875),
(60486, 13561, 36000, 0, 0, 50, 0, 5875),
(60486, 13562, 48000, 0, 0, 58, 0, 5875),
(60486, 13799, 1800, 0, 0, 16, 0, 5875),
(60486, 13811, 8000, 0, 0, 28, 0, 5875),
(60486, 13814, 12000, 0, 0, 34, 0, 5875),
(60486, 14332, 200, 0, 0, 8, 0, 5875),
(60486, 14333, 1800, 0, 0, 16, 0, 5875),
(60486, 14334, 7000, 0, 0, 24, 0, 5875),
(60486, 14335, 10000, 0, 0, 32, 0, 5875),
(60486, 14336, 18000, 0, 0, 40, 0, 5875),
(60486, 14337, 32000, 0, 0, 48, 0, 5875),
(60486, 14338, 46000, 0, 0, 56, 0, 5875),
(60486, 14339, 16000, 0, 0, 38, 0, 5875),
(60486, 14340, 5000, 0, 0, 60, 0, 5875),
(60486, 14341, 8000, 0, 0, 30, 0, 5875),
(60486, 14342, 26000, 0, 0, 44, 0, 5875),
(60486, 14343, 48000, 0, 0, 58, 0, 5875),
(60486, 14344, 12000, 0, 0, 34, 0, 5875),
(60486, 14345, 32000, 0, 0, 48, 0, 5875),
(60486, 14346, 2200, 0, 0, 20, 0, 5875),
(60486, 14347, 10000, 0, 0, 32, 0, 5875),
(60486, 14348, 24000, 0, 0, 42, 0, 5875),
(60486, 14349, 40000, 0, 0, 52, 0, 5875),
(60486, 14350, 28000, 0, 0, 46, 0, 5875),
(60486, 14351, 46000, 0, 0, 56, 0, 5875),
(60486, 14352, 600, 0, 0, 12, 0, 5875),
(60486, 14353, 2200, 0, 0, 20, 0, 5875),
(60486, 14354, 8000, 0, 0, 28, 0, 5875),
(60486, 14355, 14000, 0, 0, 36, 0, 5875),
(60486, 14356, 26000, 0, 0, 44, 0, 5875),
(60486, 14357, 40000, 0, 0, 52, 0, 5875),
(60486, 14358, 50000, 0, 0, 60, 0, 5875),
(60486, 14359, 24000, 0, 0, 42, 0, 5875),
(60486, 14360, 42000, 0, 0, 54, 0, 5875),
(60486, 14361, 36000, 0, 0, 50, 0, 5875),
(60486, 14362, 48000, 0, 0, 58, 0, 5875),
(60486, 14364, 7000, 0, 0, 26, 0, 5875),
(60486, 14365, 14000, 0, 0, 36, 0, 5875),
(60486, 14366, 28000, 0, 0, 46, 0, 5875),
(60486, 14367, 46000, 0, 0, 56, 0, 5875),
(60486, 14368, 18000, 0, 0, 40, 0, 5875),
(60486, 14370, 50000, 0, 0, 60, 0, 5875),
(60486, 14372, 26000, 0, 0, 44, 0, 5875),
(60486, 14373, 42000, 0, 0, 54, 0, 5875),
(60486, 14374, 2000, 0, 0, 18, 0, 5875),
(60486, 14375, 8000, 0, 0, 28, 0, 5875),
(60486, 14376, 16000, 0, 0, 38, 0, 5875),
(60486, 14377, 32000, 0, 0, 48, 0, 5875),
(60486, 14378, 48000, 0, 0, 58, 0, 5875),
(60486, 14431, 6000, 0, 0, 22, 0, 5875),
(60486, 14432, 18000, 0, 0, 40, 0, 5875),
(60486, 14434, 48000, 0, 0, 58, 0, 5875),
(60486, 14445, 8000, 0, 0, 30, 0, 5875),
(60486, 14446, 28000, 0, 0, 46, 0, 5875),
(60486, 15637, 8000, 0, 0, 30, 0, 5875),
(60486, 15638, 18000, 0, 0, 40, 0, 5875),
(60486, 15639, 36000, 0, 0, 50, 0, 5875),
(60486, 15640, 50000, 0, 0, 60, 0, 5875),
(60486, 20044, 28000, 0, 0, 46, 0, 5875),
(60486, 20155, 10000, 0, 0, 32, 0, 5875),
(60486, 20156, 36000, 0, 0, 50, 0, 5875),
(60486, 20157, 7000, 0, 0, 26, 0, 5875),
(60486, 20158, 18000, 0, 0, 40, 0, 5875),
(60486, 20159, 7000, 0, 0, 24, 0, 5875),
(60486, 20160, 400, 0, 0, 10, 0, 5875),
(60486, 20161, 2000, 0, 0, 18, 0, 5875),
(60486, 20191, 46000, 0, 0, 56, 0, 5875),
(60486, 20738, 600, 0, 0, 12, 0, 5875),
(60486, 20931, 400, 0, 0, 28, 0, 5875),
(60486, 20932, 700, 0, 0, 36, 0, 5875),
(60486, 20933, 1300, 0, 0, 44, 0, 5875),
(60486, 20934, 2000, 0, 0, 52, 0, 5875),
(60486, 20935, 2500, 0, 0, 60, 0, 5875),
(60486, 20938, 2500, 0, 0, 60, 0, 5875),
(60486, 20940, 1800, 0, 0, 50, 0, 5875),
(60486, 20941, 2500, 0, 0, 60, 0, 5875),
(60486, 20942, 1200, 0, 0, 42, 0, 5875),
(60486, 20943, 2100, 0, 0, 54, 0, 5875);
-- Valdos Madhound
REPLACE INTO npc_trainer VALUES
(60487, 796, 2200, 0, 0, 20, 0, 5875),
(60487, 1117, 600, 0, 0, 12, 0, 5875),
(60487, 1424, 2200, 0, 0, 20, 0, 5875),
(60487, 1547, 10, 0, 0, 1, 0, 5875),
(60487, 1549, 1800, 0, 0, 16, 0, 5875),
(60487, 1552, 2200, 0, 0, 20, 0, 5875),
(60487, 1563, 1800, 0, 0, 50, 0, 5875),
(60487, 1564, 18000, 0, 0, 40, 0, 5875),
(60487, 1567, 1200, 0, 0, 14, 0, 5875),
(60487, 1603, 10000, 0, 0, 32, 0, 5875),
(60487, 2003, 100, 0, 0, 4, 0, 5875),
(60487, 2898, 14000, 0, 0, 36, 0, 5875),
(60487, 2899, 1200, 0, 0, 14, 0, 5875),
(60487, 2979, 600, 0, 0, 12, 0, 5875),
(60487, 3047, 6000, 0, 0, 22, 0, 5875),
(60487, 3048, 100, 0, 0, 6, 0, 5875),
(60487, 3049, 7000, 0, 0, 26, 0, 5875),
(60487, 3128, 200, 0, 0, 8, 0, 5875),
(60487, 3663, 8000, 0, 0, 28, 0, 5875),
(60487, 3664, 14000, 0, 0, 36, 0, 5875),
(60487, 5117, 200, 0, 0, 8, 0, 5875),
(60487, 5131, 2200, 0, 0, 20, 0, 5875),
(60487, 5298, 100, 0, 0, 6, 0, 5875),
(60487, 5338, 2000, 0, 0, 18, 0, 5875),
(60487, 5385, 8000, 0, 0, 30, 0, 5875),
(60487, 6198, 1200, 0, 0, 14, 0, 5875),
(60487, 6385, 400, 0, 0, 10, 0, 5875),
(60487, 6791, 2200, 0, 0, 20, 0, 5875),
(60487, 6792, 7000, 0, 0, 24, 0, 5875),
(60487, 6999, 8000, 0, 0, 30, 0, 5875),
(60487, 8738, 18000, 0, 0, 40, 0, 5875),
(60487, 13160, 18000, 0, 0, 40, 0, 5875),
(60487, 13162, 8000, 0, 0, 30, 0, 5875),
(60487, 13164, 100, 0, 0, 4, 0, 5875),
(60487, 13545, 26000, 0, 0, 44, 0, 5875),
(60487, 13546, 40000, 0, 0, 52, 0, 5875),
(60487, 13547, 50000, 0, 0, 60, 0, 5875),
(60487, 13556, 400, 0, 0, 10, 0, 5875),
(60487, 13557, 2000, 0, 0, 18, 0, 5875),
(60487, 13558, 7000, 0, 0, 26, 0, 5875),
(60487, 13559, 12000, 0, 0, 34, 0, 5875),
(60487, 13560, 24000, 0, 0, 42, 0, 5875),
(60487, 13561, 36000, 0, 0, 50, 0, 5875),
(60487, 13562, 48000, 0, 0, 58, 0, 5875),
(60487, 13799, 1800, 0, 0, 16, 0, 5875),
(60487, 13811, 8000, 0, 0, 28, 0, 5875),
(60487, 13814, 12000, 0, 0, 34, 0, 5875),
(60487, 14332, 200, 0, 0, 8, 0, 5875),
(60487, 14333, 1800, 0, 0, 16, 0, 5875),
(60487, 14334, 7000, 0, 0, 24, 0, 5875),
(60487, 14335, 10000, 0, 0, 32, 0, 5875),
(60487, 14336, 18000, 0, 0, 40, 0, 5875),
(60487, 14337, 32000, 0, 0, 48, 0, 5875),
(60487, 14338, 46000, 0, 0, 56, 0, 5875),
(60487, 14339, 16000, 0, 0, 38, 0, 5875),
(60487, 14340, 5000, 0, 0, 60, 0, 5875),
(60487, 14341, 8000, 0, 0, 30, 0, 5875),
(60487, 14342, 26000, 0, 0, 44, 0, 5875),
(60487, 14343, 48000, 0, 0, 58, 0, 5875),
(60487, 14344, 12000, 0, 0, 34, 0, 5875),
(60487, 14345, 32000, 0, 0, 48, 0, 5875),
(60487, 14346, 2200, 0, 0, 20, 0, 5875),
(60487, 14347, 10000, 0, 0, 32, 0, 5875),
(60487, 14348, 24000, 0, 0, 42, 0, 5875),
(60487, 14349, 40000, 0, 0, 52, 0, 5875),
(60487, 14350, 28000, 0, 0, 46, 0, 5875),
(60487, 14351, 46000, 0, 0, 56, 0, 5875),
(60487, 14352, 600, 0, 0, 12, 0, 5875),
(60487, 14353, 2200, 0, 0, 20, 0, 5875),
(60487, 14354, 8000, 0, 0, 28, 0, 5875),
(60487, 14355, 14000, 0, 0, 36, 0, 5875),
(60487, 14356, 26000, 0, 0, 44, 0, 5875),
(60487, 14357, 40000, 0, 0, 52, 0, 5875),
(60487, 14358, 50000, 0, 0, 60, 0, 5875),
(60487, 14359, 24000, 0, 0, 42, 0, 5875),
(60487, 14360, 42000, 0, 0, 54, 0, 5875),
(60487, 14361, 36000, 0, 0, 50, 0, 5875),
(60487, 14362, 48000, 0, 0, 58, 0, 5875),
(60487, 14364, 7000, 0, 0, 26, 0, 5875),
(60487, 14365, 14000, 0, 0, 36, 0, 5875),
(60487, 14366, 28000, 0, 0, 46, 0, 5875),
(60487, 14367, 46000, 0, 0, 56, 0, 5875),
(60487, 14368, 18000, 0, 0, 40, 0, 5875),
(60487, 14370, 50000, 0, 0, 60, 0, 5875),
(60487, 14372, 26000, 0, 0, 44, 0, 5875),
(60487, 14373, 42000, 0, 0, 54, 0, 5875),
(60487, 14374, 2000, 0, 0, 18, 0, 5875),
(60487, 14375, 8000, 0, 0, 28, 0, 5875),
(60487, 14376, 16000, 0, 0, 38, 0, 5875),
(60487, 14377, 32000, 0, 0, 48, 0, 5875),
(60487, 14378, 48000, 0, 0, 58, 0, 5875),
(60487, 14431, 6000, 0, 0, 22, 0, 5875),
(60487, 14432, 18000, 0, 0, 40, 0, 5875),
(60487, 14434, 48000, 0, 0, 58, 0, 5875),
(60487, 14445, 8000, 0, 0, 30, 0, 5875),
(60487, 14446, 28000, 0, 0, 46, 0, 5875),
(60487, 15637, 8000, 0, 0, 30, 0, 5875),
(60487, 15638, 18000, 0, 0, 40, 0, 5875),
(60487, 15639, 36000, 0, 0, 50, 0, 5875),
(60487, 15640, 50000, 0, 0, 60, 0, 5875),
(60487, 20044, 28000, 0, 0, 46, 0, 5875),
(60487, 20155, 10000, 0, 0, 32, 0, 5875),
(60487, 20156, 36000, 0, 0, 50, 0, 5875),
(60487, 20157, 7000, 0, 0, 26, 0, 5875),
(60487, 20158, 18000, 0, 0, 40, 0, 5875),
(60487, 20159, 7000, 0, 0, 24, 0, 5875),
(60487, 20160, 400, 0, 0, 10, 0, 5875),
(60487, 20161, 2000, 0, 0, 18, 0, 5875),
(60487, 20191, 46000, 0, 0, 56, 0, 5875),
(60487, 20738, 600, 0, 0, 12, 0, 5875),
(60487, 20931, 400, 0, 0, 28, 0, 5875),
(60487, 20932, 700, 0, 0, 36, 0, 5875),
(60487, 20933, 1300, 0, 0, 44, 0, 5875),
(60487, 20934, 2000, 0, 0, 52, 0, 5875),
(60487, 20935, 2500, 0, 0, 60, 0, 5875),
(60487, 20938, 2500, 0, 0, 60, 0, 5875),
(60487, 20940, 1800, 0, 0, 50, 0, 5875),
(60487, 20941, 2500, 0, 0, 60, 0, 5875),
(60487, 20942, 1200, 0, 0, 42, 0, 5875),
(60487, 20943, 2100, 0, 0, 54, 0, 5875);
-- Diane Willowfield
REPLACE INTO npc_trainer VALUES
(60488, 1853, 1, 261, 0, 0, 0, 5875),
(60488, 6285, 1, 0, 0, 0, 0, 5875),
(60488, 6291, 1, 0, 0, 0, 0, 5875),
(60488, 6292, 1, 0, 0, 0, 0, 5875),
(60488, 6293, 1, 0, 0, 0, 0, 5875),
(60488, 6294, 1, 0, 0, 0, 0, 5875),
(60488, 6313, 1, 0, 0, 0, 0, 5875),
(60488, 6322, 1, 0, 0, 0, 0, 5875),
(60488, 6323, 1, 0, 0, 0, 0, 5875),
(60488, 6324, 1, 0, 0, 0, 0, 5875),
(60488, 6325, 1, 0, 0, 0, 0, 5875),
(60488, 6330, 1, 0, 0, 0, 0, 5875),
(60488, 6339, 1, 0, 0, 0, 0, 5875),
(60488, 6340, 1, 0, 0, 0, 0, 5875),
(60488, 6341, 1, 0, 0, 0, 0, 5875),
(60488, 6342, 1, 0, 0, 0, 0, 5875),
(60488, 6449, 1, 0, 0, 0, 0, 5875),
(60488, 6454, 1, 0, 0, 0, 0, 5875),
(60488, 6455, 1, 0, 0, 0, 0, 5875),
(60488, 6456, 1, 0, 0, 0, 0, 5875),
(60488, 6457, 1, 0, 0, 0, 0, 5875),
(60488, 14922, 1, 261, 0, 0, 0, 5875),
(60488, 15147, 440, 0, 0, 20, 0, 5875),
(60488, 15148, 1440, 0, 0, 30, 0, 5875),
(60488, 15149, 3240, 0, 0, 40, 0, 5875),
(60488, 15150, 6480, 0, 0, 50, 0, 5875),
(60488, 15151, 9000, 0, 0, 60, 0, 5875),
(60488, 24442, 440, 0, 0, 20, 4695, 5875),
(60488, 24468, 1440, 0, 0, 30, 4695, 5875),
(60488, 24470, 3240, 0, 0, 40, 4695, 5875),
(60488, 24472, 6480, 0, 0, 50, 4695, 5875),
(60488, 24473, 440, 0, 0, 20, 4695, 5875),
(60488, 24481, 1440, 0, 0, 30, 4695, 5875),
(60488, 24484, 3240, 0, 0, 40, 4695, 5875),
(60488, 24485, 6480, 0, 0, 50, 4695, 5875),
(60488, 24517, 440, 0, 0, 20, 4695, 5875),
(60488, 24518, 40, 0, 0, 20, 4695, 5875),
(60488, 24519, 440, 0, 0, 20, 4695, 5875),
(60488, 24520, 1440, 0, 0, 30, 4695, 5875),
(60488, 24521, 3240, 0, 0, 40, 4695, 5875),
(60488, 24522, 6480, 0, 0, 50, 4695, 5875),
(60488, 24523, 1440, 0, 0, 30, 4695, 5875),
(60488, 24524, 3240, 0, 0, 40, 4695, 5875),
(60488, 24525, 6480, 0, 0, 50, 4695, 5875),
(60488, 24526, 1440, 0, 0, 30, 4695, 5875),
(60488, 24527, 3240, 0, 0, 40, 4695, 5875),
(60488, 24528, 6480, 0, 0, 50, 4695, 5875),
(60488, 24533, 10, 0, 0, 10, 4695, 5875),
(60488, 24534, 120, 0, 0, 12, 4695, 5875),
(60488, 24535, 400, 0, 0, 18, 4695, 5875),
(60488, 24536, 1260, 0, 0, 24, 4695, 5875),
(60488, 24537, 1440, 0, 0, 30, 4695, 5875),
(60488, 24538, 2520, 0, 0, 36, 4695, 5875),
(60488, 24539, 4320, 0, 0, 42, 4695, 5875),
(60488, 24540, 5760, 0, 0, 48, 4695, 5875),
(60488, 24541, 7560, 0, 0, 54, 4695, 5875),
(60488, 24548, 10, 0, 0, 10, 4695, 5875),
(60488, 24563, 120, 0, 0, 12, 4695, 5875),
(60488, 24565, 400, 0, 0, 18, 4695, 5875),
(60488, 24566, 1260, 0, 0, 24, 4695, 5875),
(60488, 24567, 1440, 0, 0, 30, 4695, 5875),
(60488, 24568, 2520, 0, 0, 36, 4695, 5875),
(60488, 24569, 4320, 0, 0, 42, 4695, 5875),
(60488, 24570, 5760, 0, 0, 48, 4695, 5875),
(60488, 24633, 7560, 0, 0, 54, 4695, 5875),
(60488, 24634, 9000, 0, 0, 60, 4695, 5875),
(60488, 24636, 9000, 0, 0, 60, 4695, 5875);

-- Collecting Mushrooms --
delete from quest_template where entry = 40206;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40206,2,8,37,30,0,0,'Collecting Mushrooms','The Swamps are ridden with insect, fungus, and predator. It is only a few of these that can be enjoyable in meals. Deep within the swamps are a special kind of mushroom, one that I have tinkered with in the past! It can be used as a poison, though in small doses can add quite a lot to meals, or if prepared correctly, the ill-effects of its poison can be negated.\n\nSorrowmoss Mushrooms can be found across the entirety of the swamp, most often beneath the heavy canopy of trees or along the snaking rivers, but not always. Go out into the Swamp of Sorrows and collect me 10 Sorrowmoss Mushroom, I wish to dabble more with the fungus.','Collect 10 Sorrowmoss Mushrooms for Thultash in Stonard.','You must search the entirety of the swamp, Sorrowmoss can grow almost anywhere!','Ahh, such fine specimens these are, I will make haste at once to prepare it for the camp, and save some extra for my tinkering purposes. Thanks again for all of the work out there, I can imagine you got pestered by aggresive wildlife in your searching.',60171,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2250,76,125,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (982, 40206);
replace into creature_involvedrelation (id, quest) values (982, 40206);

update creature_template set npc_flags = 7 where entry = 982;

-- A Pinch of Venom --
delete from quest_template where entry = 40207;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40207,2,8,41,34,0,0,'A Pinch of Venom','The Deathstrike Tarantula are a formidable foe out within the swamps that lurk just southeast of Stonard. They can be found creeping about the swamps and laying traps for those they hunt.\n\nIt is from these Tarantula that I ask you to gather their poison. I have been attempting to mix the tang of poison, once nullified, into food. In truth, I do have ulterior motives of attempting make such recipes work.\n\nPerhaps one day I may be a known cook within Orgrimmar, and not stuck to the Sawamp of Sorrow. Travel into the swamp, and collect me 5 Deathstrike Venom!','Collect 5 Deathstrike Venom for Thultash in Stonard.','Deathstrike Venom can be fatal if used improperly, be careful in handling it!','Potent, extremely potent, it would appear that the Deathstrike Tarantula have been growing more strong over the past months. I will still attempt what I can, thank you again $N, perhaps I can best such a venom one day.',60280,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2250,76,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (982, 40207);
replace into creature_involvedrelation (id, quest) values (982, 40207);

delete from item_template where entry = 60280;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60280,1507,'Deathstrike Venom',12,1,2048,1,-1,-1,1,5,-1,-1,-1,-1,4,'',0);

delete from creature_loot_template where item = 60280 and entry = 769;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values
(769,60280,-30,1,1,0,10);

-- The Magic of Dragons --
delete from quest_template where entry = 40208;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40208,2,8,45,34,0,0,'The Magic of Dragons','I have long pondered the presence of the green dragonflight gathered about the temple sunken at the center of the lake. They have prowled and patrolled with adamant defence, and left us curious as to what may lay inside.\n\nAs much as such mysteries make my mind go wild with curiosity, I am not an adventurous soul as to find out why they are guarding it. I have been working with magical goods for most of my life, and have been dying to get my hands on a Glittering Green Scale. One that has been enfused by the power of Ysera and charged by her will. I must admit, it may be hard to come across one.\n\nTravel to the Pool of Tears, and hunt Green Dragonkin, look upon their corpses for a single Glittering Green Scale, entwined with powerful magic, and bring it to me.','Bring a Glittering Green Scale to Thultazor in Stonard.','The power of the Green Dragonflight is not something to be underestimated, be careful in getting that scale!','Such a rarity this is, many in Orgrimmar wouldn\'t even have the opportunity to have something as powerful as this could potentially be! I must thank you, and thank you again, I will make good use of this.',60281,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7500,3250,76,200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (983, 40208);
replace into creature_involvedrelation (id, quest) values (983, 40208);

update creature_template set npc_flags = 7 where entry = 983;

update quest_template set type = 1 where entry = 40208;

delete from item_template where entry = 60281;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60281,21363,'Glittering Green Scale',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'Shimmering in a bright green magic.',0);

delete from creature_loot_template where item = 60281 and entry between 742 and 746;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values
(742,60281,-8,1,1,0,10),
(743,60281,-9,1,1,0,10),
(744,60281,-10,1,1,0,10),
(745,60281,-11,1,1,0,10),
(746,60281,-12,1,1,0,10);

-- The Hunt for Sorrowclaw --
delete from quest_template where entry = 40209;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40209,2,8,41,34,0,0,'The Hunt for Sorrowclaw','Many long months I have spent in this hellscape hunting for a large jaguar. I have given it the nickname Sorrowclaw, for its ferocity and where it comes from. I have attempted to catch it, fight it, and even stalk Sorrowclaw, but every time I have been outsmarted.\n\nIt is as if the beast is three steps ahead of me at all times and I long to see its terror within the swamp come to an end. Perhaps you are a better hunter then me, and perhaps you can track down Sorrowclaw, and slay the beast once and for all.\n\nI assure you, it will not be an easy task, and I recommend you bring help should you truly wish to take after where I have failed.','Bring the Paw of Sorrowclaw to Zun\'dartha in Stonard.','Sorrowclaw is a dangerous beast, be careful within the swamp.','I never imagined the day would come so soon, Sorrowclaw always was able to elude my efforts.\n\nYou are a much greater then myself, please, be rewarded for your glory of defeating such a beast!',60282,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3250,76,200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60283,1,60284,1,60285,1,60286,1,0,0,'');

replace into creature_questrelation (id, quest) values (1775, 40209);
replace into creature_involvedrelation (id, quest) values (1775, 40209);

-- Sorrowclaw, display ID 6082, scale 1.3, level 41 elite, casts rend, faction 16
replace into creature_template values
(60494, 0, 6082, 0, 0, 0, 'Sorrowclaw', NULL, 0, 41, 41, 4900, 4900, 0, 0, 2011, 16, 0, 1, 1.42857, 1.3, 20, 5, 0, 1, 1, 174, 224, 0, 156, 1, 1500, 2000, 1, 64, 0, 2, 0, 0, 0, 0, 47.2, 64.9, 100, 1, 1, 60494, 0, 728, 0, 0, 0, 0, 0, 0, 6016, 3147, 0, 0, 7280, 8279, 0, 0, '', 1, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');


update quest_template set type = 1 where entry = 40209;

delete from item_template where entry = 60282;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60282,1496,'Paw of Sorrowclaw',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

delete from creature_loot_template where item = 60282 and entry = 60494;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values
(60494,60282,-100,1,1,0,10);

delete from item_template where entry between 60283 and 60286;
replace into item_template values
 ('60283', '0', '4', '2', 'Swamphunter\'s Eye', '', '21701', '2', '0', '1', '31216', '7804', '1', '-1', '-1', '47',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '15', '4', '6',
 '5', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '103', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '1', '0', '0', '50', '0', '0', '0', '0', '27', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60284', '0', '4', '3', 'Swamplink Harness', '', '18382', '2', '0', '1', '47628', '11907', '5', '-1', '-1', '47',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '14', '7', '5',
 '3', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '258', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '5', '1', '0', '0', '100', '0', '0', '0', '0', '27', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60285', '0', '4', '4', 'Swampguard Girdle', '', '27323', '2', '0', '1', '12284', '3071', '6', '-1', '-1', '45',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '6', '4', '5',
 '5', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '224', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '1', '0', '0', '40', '0', '0', '0', '0', '27', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60286', '0', '4', '1', 'Swampseeker\'s Kilt', '', '26238', '2', '0', '1', '27896', '6974', '7', '-1', '-1', '46',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '15', '6', '7',
 '7', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '52', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '55', '0', '0', '0', '0', '27', '0', '0', '0',
 '0', '1', NULL);

-- The Hermit --
delete from quest_template where entry = 40210;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40210,2,409,51,40,0,0,'The Hermit','I did not always call this place home, infact I come from far away lands, and have only recently settled here. I have many tales to tell and should you wish to truly serve me, you will need to listen to my tale and understand why I do what I do.\n\nSo , mortal, are you ready for what is presented before you, will you step into the abyss?','Listen to the tale of Insom\'ni.','Open your mind, and listen, wisdom can be found anywhere.','So, now you know what is at stake, and you will help me retake these islands, if not for your own selfish whims of \'virtue\' to stop some evil.',0,0,0,0,0,0,0,0,60334,1,0,0,0,0,0,0,0,0,0,400,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Insom\'ni\'s story has been listened to');

replace into creature_questrelation (id, quest) values (60446, 40210);
replace into creature_involvedrelation (id, quest) values (60446, 40210);

delete from creature_template where entry = 60334;
replace into creature_template (entry, name, display_id1) values (60334, 'quest_40210_dummy_triger', 328);

-- Bakarsh <Kargath Expeditionary Force> , display ID 4382, level 48, weapon 1 : 12259, greeting line : "Kargath is one of the farthest frontiers that the Horde has."
-- entry 91739, 91740, 91741, 91760, 91763, 91772, 91773 nerfed.
delete from creature_template where entry between 91739 and 91741;
delete from creature_template where entry = 91760;
delete from creature_template where entry = 91763;
delete from creature_template where entry = 91772;
delete from creature_template where entry = 91773;
replace into creature_template values
(60495, 3, 4382, 0, 0, 0, 'Bakarsh', 'Kargath Expeditionary Force', 0, 48, 48, 6186, 6186, 0, 0, 680, 29, 3, 1.1, 1.14286, 1, 20, 5, 0, 0, 1, 77, 101, 0, 216, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 64.6272, 88.8624, 100, 7, 0, 60495, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 1, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(91739, 0, 729, 0, 0, 0, 'Tirisclaw Scavenger', '', 0, 14, 16, 328, 370, 0, 0, 528, 16, 0, 1, 1.19048, 0, 20, 5, 0, 0, 1, 21, 27, 0, 76, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 27.2272, 37.4374, 100, 7, 0, 1892, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 50, 'EventAI', 1, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(91740, 0, 657, 0, 0, 0, 'Tirisclaw Ravager', '', 0, 14, 15, 300, 328, 0, 0, 660, 16, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 21, 27, 0, 74, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 21.2784, 29.2578, 100, 7, 0, 1892, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 50, 'EventAI', 1, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(91741, 0, 11180, 0, 0, 0, 'Tirisclaw Shadowcaster', '', 0, 14, 14, 263, 263, 710, 710, 528, 16, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 15, 21, 0, 74, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 21.2784, 29.2578, 100, 7, 0, 1896, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 50, 'EventAI', 1, 1, 0, 0, 3, 55026, 0, 0, 0, 0, 0, 0, ''),
(91760, 0, 11180, 0, 0, 0, 'Tirisclaw Ambusher', '', 0, 16, 16, 356, 356, 0, 0, 713, 16, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 25, 31, 0, 76, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 28.6704, 39.4218, 100, 7, 0, 1892, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 50, 'EventAI', 1, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(91763, 0, 3960, 0, 0, 0, 'Rogue Arcanist', '', 0, 17, 19, 354, 379, 1020, 1118, 432, 17, 0, 0.95, 1.14286, 0, 20, 5, 0, 0, 1, 19, 25, 0, 88, 1, 2000, 2000, 8, 0, 0, 0, 0, 0, 0, 0, 28.6704, 39.4218, 100, 7, 0, 619, 619, 0, 0, 10, 10, 10, 10, 10, 1449, 5143, 0, 0, 6190, 0, 20, 60, 'EventAI', 1, 3, 0, 0, 3, 619, 0, 0, 1, 0, 0, 0, ''),
(91772, 0, 5784, 0, 0, 0, 'Remnants Sentry', 'The Army of Lordaeron', 0, 15, 17, 356, 386, 0, 0, 731, 210, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 80, 1, 2000, 2000, 1, 64, 0, 0, 0, 0, 0, 0, 28.6704, 39.4218, 100, 7, 0, 634, 634, 0, 0, 10, 10, 10, 10, 10, 5115, 0, 0, 0, 6340, 0, 10, 50, 'EventAI', 0, 3, 0, 0, 3, 55001, 0, 0, 0, 0, 0, 0, ''),
(91773, 0, 3264, 0, 0, 0, 'Remnants Scout', 'The Army of Lordaeron', 0, 15, 17, 356, 386, 0, 0, 731, 210, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 80, 1, 2000, 2000, 1, 64, 0, 0, 0, 0, 0, 0, 28.6704, 39.4218, 100, 7, 0, 634, 634, 0, 0, 10, 10, 10, 10, 10, 5115, 0, 0, 0, 6340, 0, 10, 50, 'EventAI', 0, 3, 0, 0, 3, 55158, 0, 0, 0, 0, 0, 0, '');

set @creature_entry = 91741;
set @description = 'Tirisclaw Shadowcaster';
set @spell_list_id = 180001;

set @spellid_1 = 705; -- Shadow Bolt every 5 seconds
set @probability_1 = 100; 
set @casttarget_1 = 1; 
set @castflags_1 = 0;
set @delayinitialmin_1 = 1; 
set @delayinitialmax_1 = 1; 
set @delayrepeatmin_1 = 5; 
set @delayrepeatmax_1 = 5;

set @spellid_2 = 0;
set @probability_2 = 0; 
set @casttarget_2 = 0; 
set @castflags_2 = 0;
set @delayinitialmin_2 = 0; 
set @delayinitialmax_2 = 0; 
set @delayrepeatmin_2 = 0; 
set @delayrepeatmax_2 = 0;

set @spellid_3 = 0;
set @probability_3 = 0; 
set @casttarget_3 = 0; 
set @castflags_3 = 0;
set @delayinitialmin_3 = 0; 
set @delayinitialmax_3 = 0; 
set @delayrepeatmin_3 = 0; 
set @delayrepeatmax_3 = 0;

set @spellid_4 = 0;
set @probability_4 = 0; 
set @casttarget_4 = 0; 
set @castflags_4 = 0;
set @delayinitialmin_4 = 0; 
set @delayinitialmax_4 = 0; 
set @delayrepeatmin_4 = 0; 
set @delayrepeatmax_4 = 0;

set @spellid_5 = 0; 
set @probability_5 = 0; 
set @casttarget_5 = 0; 
set @castflags_5 = 0;
set @delayinitialmin_5 = 0; 
set @delayinitialmax_5 = 0; 
set @delayrepeatmin_5 = 0; 
set @delayrepeatmax_5 = 0;

set @spellid_6 = 0; 
set @probability_6 = 0; 
set @casttarget_6 = 0; 
set @castflags_6 = 0;
set @delayinitialmin_6 = 0; 
set @delayinitialmax_6 = 0; 
set @delayrepeatmin_6 = 0; 
set @delayrepeatmax_6 = 0;

set @spellid_7 = 0; 
set @probability_7 = 0; 
set @casttarget_7 = 0; 
set @castflags_7 = 0;
set @delayinitialmin_7 = 0; 
set @delayinitialmax_7 = 0; 
set @delayrepeatmin_7 = 0; 
set @delayrepeatmax_7 = 0;

set @spellid_8 = 0; 
set @probability_8 = 0; 
set @casttarget_8 = 0; 
set @castflags_8 = 0;
set @delayinitialmin_8 = 0; 
set @delayinitialmax_8 = 0; 
set @delayrepeatmin_8 = 0; 
set @delayrepeatmax_8 = 0;

-- Do not touch this part:
update creature_template set spell_list_id = @spell_list_id, ai_name = 'EventAI', script_name = '', spell_id1 = 705, spell_id2 = 0, spell_id3 = 0 
where entry = @creature_entry;
replace into creature_spells (entry, name, 
spellid_1, probability_1, casttarget_1, castflags_1, delayinitialmin_1, delayinitialmax_1, delayrepeatmin_1, delayrepeatmax_1, 
spellid_2, probability_2, casttarget_2, castflags_2, delayinitialmin_2, delayinitialmax_2, delayrepeatmin_2, delayrepeatmax_2, 
spellid_3, probability_3, casttarget_3, castflags_3, delayinitialmin_3, delayinitialmax_3, delayrepeatmin_3, delayrepeatmax_3, 
spellid_4, probability_4, casttarget_4, castflags_4, delayinitialmin_4, delayinitialmax_4, delayrepeatmin_4, delayrepeatmax_4, 
spellid_5, probability_5, casttarget_5, castflags_5, delayinitialmin_5, delayinitialmax_5, delayrepeatmin_5, delayrepeatmax_5, 
spellid_6, probability_6, casttarget_6, castflags_6, delayinitialmin_6, delayinitialmax_6, delayrepeatmin_6, delayrepeatmax_6, 
spellid_7, probability_7, casttarget_7, castflags_7, delayinitialmin_7, delayinitialmax_7, delayrepeatmin_7, delayrepeatmax_7, 
spellid_8, probability_8, casttarget_8, castflags_8, delayinitialmin_8, delayinitialmax_8, delayrepeatmin_8, delayrepeatmax_8) 
values (@spell_list_id, @description,
@spellid_1, @probability_1, @casttarget_1, @castflags_1, @delayinitialmin_1, @delayinitialmax_1, @delayrepeatmin_1, @delayrepeatmax_1,
@spellid_2, @probability_2, @casttarget_2, @castflags_2, @delayinitialmin_2, @delayinitialmax_2, @delayrepeatmin_2, @delayrepeatmax_2,
@spellid_3, @probability_3, @casttarget_3, @castflags_3, @delayinitialmin_3, @delayinitialmax_3, @delayrepeatmin_3, @delayrepeatmax_3,
@spellid_4, @probability_4, @casttarget_4, @castflags_4, @delayinitialmin_4, @delayinitialmax_4, @delayrepeatmin_4, @delayrepeatmax_4,
@spellid_5, @probability_5, @casttarget_5, @castflags_5, @delayinitialmin_5, @delayinitialmax_5, @delayrepeatmin_5, @delayrepeatmax_5,
@spellid_6, @probability_6, @casttarget_6, @castflags_6, @delayinitialmin_6, @delayinitialmax_6, @delayrepeatmin_6, @delayrepeatmax_6,
@spellid_7, @probability_7, @casttarget_7, @castflags_7, @delayinitialmin_7, @delayinitialmax_7, @delayrepeatmin_7, @delayrepeatmax_7,
@spellid_8, @probability_8, @casttarget_8, @castflags_8, @delayinitialmin_8, @delayinitialmax_8, @delayrepeatmin_8, @delayrepeatmax_8);

set @equip_template = 20024; set @weapon_1 = 12259; set @weapon_2 = 0; set @creature = 60495;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @gossip_menu_id = 41027; set @magic_number = 60495;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Kargath is one of the farthest frontiers that the Horde has.'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41028; set @magic_number = 982;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Food can get scarce in the swamp if you don\'t know what to search for'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41029; set @magic_number = 983;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'There are many secrets in this swamp, it just takes a keen eye to search for it.'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41030; set @magic_number = 8176;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Blacksmithing is a refined art, I spent quite some time in Hammerfall before I was assigned here working on practicing it.'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

update creature_template set npc_flags = 16391 where entry = 8176;

-- Head of The Pack --
delete from quest_template where entry = 40083;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40082,40083,2,85,15,14,0,0,'Head of The Pack','With their forces at the tower weakened, it is time for us to kill their leader. Yes, when I say us, I mean you. Their leader invaded the mine recently, and he has taken his bigger worgen down there with him. The Gracestone mine is a top priority. Without its resources, Glenshire doesn\'t stand a chance against the Humans, not to mention that the mines provide a perfect ambush point for worgens to attack any travelers between Silverpine and the Uplands.\n\nGo down there and bring me the head of their leader. Oh, and feel free to kill as many of his followers as you can.','Apothecary Volgrin has asked you to bring him the head of the Pack Leader Sharn and kill 5 Tirisclaw Ambushers and 4 Tirisclaw Scavengers.','How goes the attack?','Oh, I can smell the blood coming from your bag. Is that the head of the mongrel? Good, very good. If you keep going likes this, you might even earn the Duchess\'s favor.',60172,1,0,0,0,0,0,0,91760,5,91739,4,0,0,0,0,0,0,1000,1250,68,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (91713, 40083);
replace into creature_involvedrelation (id, quest) values (91713, 40083);

delete from item_template where entry = 60172;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values (60172,36431,'Sharn\'s Head',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'Severed Head of the Pack Leader Sharn',0);

delete from creature_loot_template where entry = 1923 and item = 60172;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (1923,60172,-100,1,1,0,10);

-- Pile of Dirt 2010824 for set banner.

replace into item_template values
 ('60287', '0', '4', '4', 'Rune-Etched Grips', '', '50166', '3', '0', '1', '45056', '11264', '10', '-1', '-1', '62',
 '58', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '20', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '410', '0', '0', '0',
 '0', '5', '0', '13665', '1', '0', '0', '-1', '0', '-1', '21346', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '1', '0', '0', '45', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60288', '0', '4', '4', 'Rune-Etched Greaves', '', '50163', '3', '0', '1', '71340', '17835', '8', '-1', '-1', '63',
 '58', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '15', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '550', '0', '0', '0',
 '0', '5', '0', '13669', '1', '0', '0', '-1', '0', '-1', '21592', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '1', '0', '0', '65', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60289', '0', '4', '4', 'Rune-Etched Legplates', '', '50164', '3', '0', '1', '99228', '24807', '7', '-1', '-1', '63',
 '58', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '22', '3', '15',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '575', '0', '0', '0',
 '0', '5', '0', '7597', '1', '0', '0', '-1', '0', '-1', '21596', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '1', '0', '0', '100', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60290', '0', '4', '4', 'Rune-Etched Breastplate', '', '50162', '3', '0', '1', '96432', '24108', '5', '-1', '-1', '63',
 '58', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '23', '3', '5',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '652', '0', '0', '0',
 '0', '5', '0', '9331', '1', '0', '0', '-1', '0', '-1', '21596', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '1', '0', '0', '135', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60291', '0', '4', '4', 'Rune-Etched Crown', '', '50168', '3', '0', '1', '66696', '16674', '1', '-1', '-1', '63',
 '58', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '25', '3', '5',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '534', '0', '0', '0',
 '0', '5', '0', '15464', '1', '0', '0', '-1', '0', '-1', '21596', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '1', '0', '0', '80', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60292', '0', '4', '4', 'Rune-Etched Mantle', '', '50170', '3', '0', '1', '68324', '17081', '3', '-1', '-1', '63',
 '58', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '20', '3', '5',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '491', '0', '0', '0',
 '0', '5', '0', '7518', '1', '0', '0', '-1', '0', '-1', '21596', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '1', '0', '0', '80', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60293', '0', '2', '8', 'Untempered Runeblade', 'A dark voiceless power beckons you to pick up this blade.', '60979', '3', '0', '1', '284828', '71207', '17', '-1', '-1', '63',
 '58', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '10', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3700', '0',
 '0', '168', '252', '0', '5', '10', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '10', '0', '21607', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '1', '0', '0', '100', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60294', '0', '2', '8', 'Bloodstone Warblade', '', '20172', '2', '0', '1', '108424', '27106', '17', '-1', '-1', '47',
 '41', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '10', '4', '10',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3600', '0',
 '0', '110', '168', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '21594', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '2', '0', '0', '0', '0', '0', '1', '1', '0', '0', '65', '0', '0', '0', '0', '27', '0', '0', '0',
 '0', '1', NULL);

update creature_template set subname = 'The Fox' where entry = 60453;
delete from creature_template where entry = 60496 and 60497;
replace into creature_template VALUES
(60496, 0, 18707, 0, 0, 0, 'Garfield Sparkblast', 'Admiral of the Bloodsail Buccaneers', 0, 54, 54, 14182, 14182, 0, 0, 2641, 119, 3, 1, 1.14286, 1, 20, 5, 0, 1, 1, 344, 444, 0, 244, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 59.3256, 81.5727, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1279, 1675, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 'npc_garfield_sparkblast'),
(60497, 0, 18705, 0, 0, 0, 'First Mate McGillicuddy', 'Bloodsail Buccaneers', 0, 52, 52, 3082, 3082, 0, 0, 2669, 16, 3, 1, 1.14286, 1, 20, 5, 0, 0, 1, 106, 136, 0, 234, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.4704, 96.8968, 100, 7, 0, 60497, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 104, 141, 'EventAI', 0, 3, 0, 0, 3, 20004, 0, 0, 0, 0, 0, 0, '');

update quest_template set details = 'So listen here mate, ye see these foul sea tailed imps? These Blackwater Pirates are naught but a joke, hiding in their port. They even have thar weapons laying around in crates, truly a disgrace to all pirates around.\n\n<Garfield spits on the ground>.\n\nSo that\'s exactly why ye are going to collect them and bring them to a special someone in the city, what, ye thought these sea tailed imps wouldn\'t have a rat? Outrageous, but hilarious, in it? Narkk be the name.' where entry = 40173;
update quest_template set objectives = 'Bring five weapon crates to Narkk.' where entry = 40173;
update quest_template set offerrewardtext = 'Not so loud! You want the whole bruiser brigade on our hands? Just put that crate in and keep them coming.\n\n<After you bring each crate one by one you turn your attention towards Narkk>.\n\nFine work mate, here\'s your pay now leave and don\'t worry about it, you were never here today.' where entry = 40173;

update quest_template set objectivetext1 = 'Spat in Morgan\'s face.' where entry = 40179;

delete from creature_involvedrelation where quest between 40180 and 40183;
delete from creature_involvedrelation where quest between 40185 and 40187;

replace into creature_involvedrelation (id, quest) values
(60496, 40180),
(60496, 40181),
(60496, 40182),
(60496, 40183),
(60496, 40185),
(60496, 40186),
(60496, 40187);

delete from creature_questrelation where quest between 40181 and 40183;
delete from creature_questrelation where quest between 40185 and 40187;

replace into creature_questrelation (id, quest) values
(60496, 40181),
(60496, 40182),
(60496, 40183),
(60496, 40185),
(60496, 40186),
(60496, 40187);

update quest_template set reqcreatureorgoid1 = 92139 where entry = 40182;
update quest_template set reqcreatureorgocount1 = 10 where entry = 40182;
update quest_template set reqcreatureorgoid2 = 91847 where entry = 40182;
update quest_template set reqcreatureorgocount2 = 10 where entry = 40182;
update quest_template set minlevel = 45 where entry = 40182;
update quest_template set questlevel = 52 where entry = 40182;

update quest_template set reqcreatureorgoid1 = 60497 where entry = 40183;
update quest_template set reqcreatureorgocount1 = 1 where entry = 40183;
update quest_template set title = 'First Mate McGillicuddy' where entry = 40183;
update quest_template set objectives = 'Kill First Mate McGillicuddy.' where entry = 40183;
update item_template set name = 'McGillicuddy\'s Head' where entry = 60255;
delete from creature_loot_template where entry = 60255;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (60497,60255,-100,1,1,0,10);

update gameobject_template set name = 'Captain Blackeye\'s Footlocker' where entry = 2010837;

update quest_template set minlevel = 45 where entry = 40183;
update quest_template set questlevel = 52 where entry = 40183;
update quest_template set minlevel = 45 where entry = 40185;
update quest_template set questlevel = 52 where entry = 40185;
update quest_template set minlevel = 45 where entry = 40186;
update quest_template set questlevel = 52 where entry = 40186;

-- Jadefire Revenge --
delete from quest_template where entry = 40211;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40210,40211,2,409,51,40,0,0,'Jadefire Revenge','Felwood.\n\nA place I recall with a bitter hatred that makes my face cowl in disgust. It is within this place I had first decided to travel upon leaving my kin. My reasons for being in such a place was for the betterment of Azeroth, and I only found deceit, malice, and corruption.\n\n<Insom\'ni would snort inward, his face warped with a bitter, deep anger>.\n\nWe will start here, travel to the twisted forest, and hunt the foul beings known as the \'satyr\' , more specifically, the Jadefire. I will need from them 5 Jadefire Felhorn , as well as 5 Purple Lotus that can be gathered by any skilled herbalist upon this world.','Gather 5 Jadefire Felhorn, and 5 Purple Lotus for Insom\'ni on K.','There is much work to do, and little time, get out there and do my bidding.','We move forward, as much as the satyr are nothing more then worthless agents of a fading order. They still had this coming, and much more should I ever have the agency to torment them.\n\nWith these horns and lotus I can begin to channel energy to locate this dark source with my own magics. Until then, there is any more to do before we can unveil the covers from the evil that taints the islands.',60295,5,8831,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60446, 40211);
replace into creature_involvedrelation (id, quest) values (60446, 40211);

delete from item_template where entry = 60295;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60295,2598,'Jadefire Felhorn',12,1,2048,1,-1,-1,1,5,-1,-1,-1,-1,4,'',0);

delete from creature_loot_template where item = 60295 and entry between 7105 and 7111;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values 
(7105,60295,-11,1,1,0,10),
(7107,60295,-15,1,1,0,10),
(7108,60295,-15,1,1,0,10),
(7109,60295,-13,1,1,0,10),
(7111,60295,-16,1,1,0,10);

-- An Old Friend --
delete from quest_template where entry = 40212;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40211,40212,2,409,54,40,0,0,'An Old Friend','My channeling will take some time to uncover the source of what lurks beneath the surface. In the mean time, I would ask of you a favor that means more then these very islands. An old friend of mine, who goes by the name Itharius is currently located within the Swamp of Sorrows. He was originally sent with Eranikus in tasks regarding the sunken temple, and watching over its masters destruction.\n\n Upon my exile, I gave Itharius my necklace, one that holds much of my power, and essence. It is from this very necklace that I will need the energy needed to defeat the evil upon these islands.\n\nI told him a time would come where I would reclaim my birthright, and he may be aprehensive, but he will do as I asked him long ago. Find Itharius, and reclaim my necklace from those swamps.','Speak with Itharius to recover Insom\'ni\'s necklace, and return it to him.','Travel, and with haste, there is much to do, and little time to do it mortal.','<Insom\'ni takes his time to gaze over the necklace, his body seems invigorated, and energized by its very presence. Slowly, he would place it around his neck, and exhale a heavy breath of relief>.\n\nIt has been a long time since I have felt such energy, it is as if both halves to my soul have been reconnected after many long years. I can not even begin to explain such a feeling, too long has it been that I have been seperated from my essence.\n\n<A grin would spread across Insom\'ni, his face taking on a very intense gaze>.\n\nNow, let us begin our work.',60296,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60446, 40212);
replace into creature_involvedrelation (id, quest) values (60446, 40212);

delete from item_template where entry = 60296;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60296,5924,'Necklace of Insomnius',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

update creature_template set script_name = 'npc_itharius' where entry = 5353;

-- The Hermit\'s Wrath --
delete from quest_template where entry = 40213;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40212,40213,2,409,55,40,0,0,'The Hermit\'s Wrath','This necklace has made me regain much of my former strength. If you were paying attention during your trip then you would have uncovered my true identity. Now you know truely who I am, and we will work toward my final goal.\n\nI was able to channel my energies and locate the source of corruption. While we could very well confront, and summon it to us with the powers of my necklace, I would first take revenge upon those that tossed aside their worship of me.\n\nZul\'Hazu was once a place I called home, it was there the trolls called me a diety. They practiced my magics, and would follow me to the ends of the world.\n\nTravel to Zul\'Hazu in the north-west, slay the leaders Darkmaster Haza\'gi, Champion Raggazi, and Chieftain Woh\'zo. The people should suffer as well, get from them 10 Hazzuri Charms, they will be nice decorations.','Slay the Hazzuri Leaders, and gather 10 Hazzuri Charms for Insom\'ni on Kazon Island.','Have you dealt with those rebellious insects yet?','Zul\'Hazu was a breeding ground for the corrupt, and the defiled. They swept aside my magic and my teachings for a chance to indulge in greater powers. They are nothing but harlots to the highest bidder, and it is retribution to dispense justice upon them.',60297,10,0,0,0,0,0,0,91813,1,91817,1,91818,1,0,0,0,0,0,6250,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60446, 40213);
replace into creature_involvedrelation (id, quest) values (60446, 40213);

delete from item_template where entry = 60297;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60297,34261,'Hazzuri Charm',12,1,2048,1,-1,-1,1,10,-1,-1,-1,-1,4,'',0);

update creature_template set loot_id = 91809 where entry = 91809;
update creature_template set loot_id = 91810 where entry = 91810;
update creature_template set loot_id = 91811 where entry = 91811;
update creature_template set loot_id = 91812 where entry = 91812;
update creature_template set loot_id = 91814 where entry = 91814;
update creature_template set loot_id = 91815 where entry = 91815;
update creature_template set loot_id = 91820 where entry = 91820;
update creature_template set loot_id = 91821 where entry = 91821;
update creature_template set loot_id = 91823 where entry = 91823;

delete from creature_loot_template where item = 60295 and entry between 7105 and 7111;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values 
(91809,60297,-15,1,1,0,10),
(91810,60297,-25,1,1,0,10),
(91811,60297,-15,1,1,0,10),
(91812,60297,-40,1,1,0,10),
(91814,60297,-45,1,1,0,10),
(91815,60297,-40,1,1,0,10),
(91820,60297,-15,1,1,0,10),
(91821,60297,-20,1,1,0,10),
(91823,60297,-20,1,1,0,10);

-- Uncovering Evil --
delete from quest_template where entry = 40214;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40213,40214,2,409,55,40,0,0,'Uncovering Evil','With the Hazzuri slain, my heart burns with glee, retribution is such a fine wine, and one I would eagerly drink down again. It is time for the final task, we must drag free the shadow that has rooted itself upon the islands, and destroy it.\n\nWhen this is done I can began to rebuild my throne on these islands. The time is at hand, follow me to the center of the island, and await my summoning to be complete. When it is, you must do battle with this evil as I keep it bound to the island, only when it is weak enough, will I be able to join you. I suggest you bring friends, or others that may assist you, this should not be taken lightly, do not fail me.','Assist Insom\'ni in destroying the dark presence.','We must be cautious.','You have done well mortal, your help here, I must admit, has been insturmental. You have earned a place upon these islands as long as you desire to be here. As long as you understand that my rule here is now concrete.\n\nAs a token of my appreciation to enact revenge, and give me back my rightful throne, you are to be rewarded, as one should for noble deeds. May you find use for the treasure I offer, and may you prosper on whatever path you choose.',0,0,0,0,0,0,0,0,60499,1,0,0,0,0,0,0,0,0,0,6550,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60446, 40214);
replace into creature_involvedrelation (id, quest) values (60446, 40214);

-- Insomnius , display ID 7553, scale 1.5, level 62 elite, 65151 HP, 12000 mana, faction 31
-- Fearoth <The Shadow> , display ID 18113 , level 55 elite, hp 26000 , mana 8000, 4121 armor, 100 shadow resistance, deals 1.5x normal damage for an elite level 55, casts 27831 every 45 seconds, casts 20669 every minute, and casts 25311 every 20 seconds on a random target.

delete from creature_template where entry = 60498 and 60499;
REPLACE INTO creature_template VALUES
(60498, 0, 7553, 0, 0, 0, 'Insomnius', '', 53106, 62, 62, 65151, 65151, 12000, 12000, 3791, 250, 0, 1, 1.14286, 1.5, 20, 5, 0, 1, 1, 873, 1039, 0, 278, 1, 2000, 2000, 2, 2, 0, 0, 0, 0, 0, 0, 61.732, 84.8815, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 503, 2517, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60499, 0, 18113, 0, 0, 0, 'Fearoth', 'The Shadow', 0, 55, 55, 26000, 26000, 8000, 8000, 4121, 16, 0, 1, 1.14286, 0, 20, 5, 0, 1, 1, 571, 737, 0, 272, 1, 1150, 1265, 1, 0, 0, 0, 0, 0, 0, 0, 61.732, 84.8815, 100, 3, 0, 60499, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 168, 838, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 'npc_fearoth');

set @creature_entry = 60499;
set @description = 'Kazon Island: Fearoth The Shadow';
set @spell_list_id = 180002;

set @spellid_1 = 27831; -- 27831 every 45 seconds
set @probability_1 = 100; 
set @casttarget_1 = 1; 
set @castflags_1 = 0;
set @delayinitialmin_1 = 1; 
set @delayinitialmax_1 = 1; 
set @delayrepeatmin_1 = 45; 
set @delayrepeatmax_1 = 45;

set @spellid_2 = 20669; -- casts 20669 every minute
set @probability_2 = 100; 
set @casttarget_2 = 1; 
set @castflags_2 = 0;
set @delayinitialmin_2 = 1; 
set @delayinitialmax_2 = 1; 
set @delayrepeatmin_2 = 60; 
set @delayrepeatmax_2 = 60;

set @spellid_3 = 25311; -- casts 25311 every 20 seconds on a random target
set @probability_3 = 100; 
set @casttarget_3 = 1; 
set @castflags_3 = 0;
set @delayinitialmin_3 = 1; 
set @delayinitialmax_3 = 1; 
set @delayrepeatmin_3 = 20; 
set @delayrepeatmax_3 = 20;

set @spellid_4 = 0;
set @probability_4 = 0; 
set @casttarget_4 = 0; 
set @castflags_4 = 0;
set @delayinitialmin_4 = 0; 
set @delayinitialmax_4 = 0; 
set @delayrepeatmin_4 = 0; 
set @delayrepeatmax_4 = 0;

set @spellid_5 = 0; 
set @probability_5 = 0; 
set @casttarget_5 = 0; 
set @castflags_5 = 0;
set @delayinitialmin_5 = 0; 
set @delayinitialmax_5 = 0; 
set @delayrepeatmin_5 = 0; 
set @delayrepeatmax_5 = 0;

set @spellid_6 = 0; 
set @probability_6 = 0; 
set @casttarget_6 = 0; 
set @castflags_6 = 0;
set @delayinitialmin_6 = 0; 
set @delayinitialmax_6 = 0; 
set @delayrepeatmin_6 = 0; 
set @delayrepeatmax_6 = 0;

set @spellid_7 = 0; 
set @probability_7 = 0; 
set @casttarget_7 = 0; 
set @castflags_7 = 0;
set @delayinitialmin_7 = 0; 
set @delayinitialmax_7 = 0; 
set @delayrepeatmin_7 = 0; 
set @delayrepeatmax_7 = 0;

set @spellid_8 = 0; 
set @probability_8 = 0; 
set @casttarget_8 = 0; 
set @castflags_8 = 0;
set @delayinitialmin_8 = 0; 
set @delayinitialmax_8 = 0; 
set @delayrepeatmin_8 = 0; 
set @delayrepeatmax_8 = 0;

-- Do not touch this part:
update creature_template set spell_list_id = @spell_list_id, ai_name = 'EventAI', script_name = '', spell_id1 = 27831, spell_id2 = 20669, spell_id3 = 25311 
where entry = @creature_entry;
replace into creature_spells (entry, name, 
spellid_1, probability_1, casttarget_1, castflags_1, delayinitialmin_1, delayinitialmax_1, delayrepeatmin_1, delayrepeatmax_1, 
spellid_2, probability_2, casttarget_2, castflags_2, delayinitialmin_2, delayinitialmax_2, delayrepeatmin_2, delayrepeatmax_2, 
spellid_3, probability_3, casttarget_3, castflags_3, delayinitialmin_3, delayinitialmax_3, delayrepeatmin_3, delayrepeatmax_3, 
spellid_4, probability_4, casttarget_4, castflags_4, delayinitialmin_4, delayinitialmax_4, delayrepeatmin_4, delayrepeatmax_4, 
spellid_5, probability_5, casttarget_5, castflags_5, delayinitialmin_5, delayinitialmax_5, delayrepeatmin_5, delayrepeatmax_5, 
spellid_6, probability_6, casttarget_6, castflags_6, delayinitialmin_6, delayinitialmax_6, delayrepeatmin_6, delayrepeatmax_6, 
spellid_7, probability_7, casttarget_7, castflags_7, delayinitialmin_7, delayinitialmax_7, delayrepeatmin_7, delayrepeatmax_7, 
spellid_8, probability_8, casttarget_8, castflags_8, delayinitialmin_8, delayinitialmax_8, delayrepeatmin_8, delayrepeatmax_8) 
values (@spell_list_id, @description,
@spellid_1, @probability_1, @casttarget_1, @castflags_1, @delayinitialmin_1, @delayinitialmax_1, @delayrepeatmin_1, @delayrepeatmax_1,
@spellid_2, @probability_2, @casttarget_2, @castflags_2, @delayinitialmin_2, @delayinitialmax_2, @delayrepeatmin_2, @delayrepeatmax_2,
@spellid_3, @probability_3, @casttarget_3, @castflags_3, @delayinitialmin_3, @delayinitialmax_3, @delayrepeatmin_3, @delayrepeatmax_3,
@spellid_4, @probability_4, @casttarget_4, @castflags_4, @delayinitialmin_4, @delayinitialmax_4, @delayrepeatmin_4, @delayrepeatmax_4,
@spellid_5, @probability_5, @casttarget_5, @castflags_5, @delayinitialmin_5, @delayinitialmax_5, @delayrepeatmin_5, @delayrepeatmax_5,
@spellid_6, @probability_6, @casttarget_6, @castflags_6, @delayinitialmin_6, @delayinitialmax_6, @delayrepeatmin_6, @delayrepeatmax_6,
@spellid_7, @probability_7, @casttarget_7, @castflags_7, @delayinitialmin_7, @delayinitialmax_7, @delayrepeatmin_7, @delayrepeatmax_7,
@spellid_8, @probability_8, @casttarget_8, @castflags_8, @delayinitialmin_8, @delayinitialmax_8, @delayrepeatmin_8, @delayrepeatmax_8);

delete from gameobject_template where entry = 2010841;
replace into gameobject_template values
(2010841, 0, 3, 49, 'Dirt Mound', 0, 4, 1, 43, 2010841, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

delete from gameobject_loot_template where entry = 2010824;
delete from gameobject_loot_template where entry = 2010841;
replace into gameobject_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (2010841,60191,-100,1,1,0,10);

-- Indebted --
delete from quest_template where entry = 40215;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext4) values (40099,40215,2,85,19,15,0,0,'Indebted','Well you certainly know how to get a job done. I promised that I would get you the information that you are looking for so here it is. In the Hills directly east of Garricks Stead, there is a place called Rogue Heights, it used to be a lawless area held by the unorganized band of thieves and murderers.\n\nHowever since not so long ago they appeared to have reformed their organization and have become a formidable force. Not only that but it appears that they have allied themselves with the Remnants of Lordaeron. My sources spoke of a man named Salorn, a former Kirin Tor mage who along with his rogue brethren appears to have taken over the Rogue Heights.\n\nAnd there you go, oh and be kind to remind the Duke that he still owes quite a bit.','I need to return to Duke Nargelas and inform him about the enemy in The Rogue Heights.','So? Tell me, what are the news?','Mages in The Rogue Heights? No wonder I heard nothing from Storn if he lost the leadership of his band of misfits. Anyways, good job on getting this information out of Norga. I envy that you won\'t have to deal with her after all of this is done.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,300,500,68,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

delete from creature_questrelation where id = 91720 and quest = 40127;
delete from creature_involvedrelation where id = 91712 and quest = 40127;
replace into creature_questrelation (id, quest) values (91720, 40215);
replace into creature_involvedrelation (id, quest) values (91712, 40215);

update quest_template set prevquestid = 40215 where entry = 40134;

-- The Dampening Must End --
delete from quest_template where entry = 40127;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, type, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4, objectivetext2) values (40126,40127,2,16,52,40,1,0,0,'The Dampening Must End','It seems as though there is only one thing left. I cannot believe the Blue Dragonflight would be responsible for such a thing, if their enemy is magic then that means their enemy is Dalaran. We cannot allow their plans to take fruition and must deal with them now and with due haste in our actions.\n\nJust south of here is Lake Mennar it is where the Blue Dragonflight has gathered, the cause of which was unknown until now. Head there, slay their Magelords, and kill the leader, Lieutenant Azsalus.\n\nI would advise, the Blue Dragonflight is not a foe to be under-estimated, find a band of mercenaries, or like minded heroes. You will need them to battle with the dragonkin, or to stand a chance.','Slay 3 Draconic Magelord\'s and Kill Lieutenant Azsalus.','Have you ended the dampening upon Azshara?','It is done? Truly?\n\nYou have my thanks hero, your name shall go down with glory in Dalaran, a defender of magic is truly one that stands for virtue, please, take one of these artifacts, it is the least I can offer. May it serve you well.',0,0,0,0,0,0,0,0,91283,1,6129,3,0,0,0,0,0,0,0,7150,61,500,0,0,0,0,0,0,10157,10157,0,0,0,0,0,0,0,0,0,60116,1,60117,1,60118,1,0,0,'');

-- Chef Jenkel
REPLACE INTO npc_trainer VALUES
(91950, 1290, 1, 0, 0, 0, 0, 5875),
(91950, 2551, 100, 0, 0, 5, 0, 5875),
(91950, 2559, 50, 185, 10, 0, 0, 5875),
(91950, 2561, 100, 185, 50, 0, 0, 5875),
(91950, 2562, 200, 185, 75, 0, 0, 5875),
(91950, 2563, 150, 185, 80, 0, 0, 5875),
(91950, 3412, 500, 185, 50, 10, 0, 5875),
(91950, 6502, 100, 185, 50, 0, 0, 5875),
(91950, 6503, 300, 185, 125, 0, 0, 5875),
(91950, 21176, 4000, 185, 200, 0, 0, 5875);

-- Shizwackle Tangrig , display ID 7182, level 15, faction 69, greeting text: " So much to do in such a short amount of time, not to mention all the competition, and those blasted Venture Co. lurking about." Give quest flags
-- Glasseye, display ID 11713, level 53, faction 16, scale 1.4
-- 'Slip' , display ID 18420, level 42, weapon : 2092, faction 120, greeting text : "Not many people come back here, you useful? Think you can do some handywork for a guy?" 
-- Lorthiras, display ID 10543, level 50 elite, has 5000 mana, faction 554, scale 1.5, greeting text : "Interesting, I sense that you have created the runeblade you wield, try as you may but you will never replicate what we Dreadlords have mastered."   ((This npc is hostile, and needs to become friendly when the player has 'Untempered Runeblade' 

REPLACE INTO creature_template VALUES
(60500, 0, 7182, 0, 0, 0, 'Shizwackle Tangrig', '', 0, 15, 15, 328, 328, 0, 0, 660, 69, 3, 1, 1.14286, 0, 20, 5, 0, 0, 1, 21, 27, 0, 74, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 21.2784, 29.2578, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 28, 'EventAI', 1, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2, 0, ''),
(60501, 0, 11713, 0, 0, 0, 'Glasseye', '', 0, 53, 53, 3188, 3188, 0, 0, 3136, 16, 0, 1, 1.14286, 1.4, 20, 5, 0, 0, 1, 89, 111, 0, 238, 1, 2000, 2000, 1, 0, 0, 6, 0, 0, 0, 0, 69.0272, 94.9124, 100, 1, 1, 60501, 0, 1087, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60502, 0, 18420, 0, 0, 0, '\'Slip\'', '', 0, 42, 42, 1981, 1981, 0, 0, 2246, 120, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 64, 79, 0, 172, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 62.8672, 86.4424, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 75, 103, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60503, 0, 10543, 0, 0, 0, 'Lorthiras', '', 0, 50, 50, 17720, 17720, 5000, 5000, 2888, 554, 3, 1, 1.14286, 1.5, 20, 5, 0, 1, 1, 292, 377, 0, 226, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 55.3248, 76.0716, 100, 7, 0, 60503, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 847, 1111, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @equip_template = 20025; set @weapon_1 = 2092; set @weapon_2 = 0; set @creature = 60502;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @gossip_menu_id = 41031; set @magic_number = 60500;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'So much to do in such a short amount of time, not to mention all the competition, and those blasted Venture Co. lurking about.'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41032; set @magic_number = 60502;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Not many people come back here, you useful? Think you can do some handywork for a guy?'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41033; set @magic_number = 60503;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Interesting, I sense that you have created the runeblade you wield, try as you may but you will never replicate what we Dreadlords have mastered.'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

-- The Venture Co. Shakedown --
delete from quest_template where entry = 40216;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext4) values (0,40216,2,17,16,11,0,0,'The Venture Co. Shakedown','Howdy there, don\'t suppose you\'re looking to help out a goblin who has a deep need for revenge huh? You see, I used to help out the Venture Co. back in my hayday, and honestly, it was a big mistake.\n\nThey offered me the deal of a lifetime for my friendship, to supply them with some metal under the table for big profit. Now, I think its in a goblins blood to follow the smell of gold,but I was robbed, and hoodwinked.\n\nI put my butt on the line for those guys, and they up and haven\'t even contacted me since, I want you to give them a message, no one screws with Shizwackle and lives to tell about it. I do have a reputation to keep if I ever want to survive out here after all.\n\nHead up to The Sludge Fen far to the north, kill their Drudgers and Mercenaries, its with my metal they started this refinery there, maybe when they have less workers they will pay attention.','Travel to The Sludge Fen and slay 10 Venture Co. Drudgers and 10 Venture Co. Mercenaries for Shizwackle Tangrig.','They deserve every licking they get, don\'t up and go soft on me!','Revenge, such a sweet thing, perhaps now , people will know not to step all over Shizwackle! I\'ve learned a valueable lesson thanks to you pal, not to just trust every old sap with a bundle of gold offering riches.\n\nTake this coin for the trouble, I actually pay people for work!',0,0,0,0,0,0,0,0,3284,10,3282,10,0,0,0,0,0,0,150,950,470,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60500, 40216);
replace into creature_involvedrelation (id, quest) values (60500, 40216);

-- Finding Embergut --
delete from quest_template where entry = 40217;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext4) values (0,40217,2,408,53,45,0,0,'Finding Embergut','The Maul\'ogg used to rule over much of the island, but such times have changed, and we now are working to keep ourselves intact. Our other place of operation was called Maul\'ogg Post, it was led by Embergut, a rather powerful magi of an ogre.\n\nDeep down, I still think he\'s alive, and I want you to check on him, he was adamant about staying, even when we were leaving due to the problems with basilisks.\n\nGo and check to see if he\'s there, a trace of him atleast.','Search for Embergut at Maul\'ogg Post.','Yes, you need something, or just here to talk?','Blatarg was looking for me huh? I\'m doing fine, I just have new company, but they\'ve learned well enough to leave me alone. Perhaps you can be of assistance, I got some stuff I need worked out!',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,800,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (92176, 40217);
replace into creature_involvedrelation (id, quest) values (60476, 40217);

-- The Glass Eye --
delete from quest_template where entry = 40218;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext4) values (0,40218,2,408,52,45,0,0,'The Glass Eye','Beneath Maul\'ogg lies a cavern system filled with basilisk, called Deepneck Cove, its entrance laying at the beach just to the north east. I have been having long nightmares of a great magical power during my sleep, as if something is calling out to me. A basilisk with an eye of glass and a mind of power, I have recognized its horrible appearance before.\n\nIt is this very magic that I search for now, and bid that you obtain. The magical gaze of a beast named Glasseye is the one responsible for my dreams, and the energy seeping beneath Maul\'ogg. Travel into the caverns and slay the beast, collect its eye, and bring it to me, perhaps its magical potency will bring me some gaze into the future.','','Glasseye may have strong, magical powers, be sure to keep your wits about you.','We meet again Glasseye, this is the eye that stared back at me in my dreams, and now I hold it within my fingers. I sense that I may be able to make great strides with this, and I thank you greatly. No longer will my dreams be haunted, you\'ve done me a great service.',60298,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4750,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (92186, 40218);
replace into creature_involvedrelation (id, quest) values (92186, 40218);

delete from item_template where entry = 60298;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60298,12309,'The Glass Eye',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

delete from creature_loot_template where item = 60298 and entry = 60501;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values 
(60501,60298,-100,1,1,0,10);

-- The Jade Mine --
delete from quest_template where entry = 40219;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext4) values (40199,40219,2,408,53,45,0,0,'The Jade Mine','We Maul\'ogg used to hold many great riches, we were in the process of setting up a great mine of jade that is present upon Gillijim! Those dirty pirates came and stole all of our hard work and should be smashed! Those rich jades are ours, and that gold they make should be our gold!\n\nOn some of our first digs we uncovered a very large \'Star Emerald\', of course, in the chaos it wasn\'t taken to me! Now some Foreman named Darkskull has it, and I want it back! He oversee\'s The Jade Mine up to the north west along the coast, go there, kill him, and bring me my prize, maybe they will learn a lesson from this too.','Claim the Star Emerald for Lord Cruk\'Zogg in Maul\'ogg Refuge.','While you\'re talking, who knows what\'s happening to my emerald, go get it!','Those stupid pirates thought that they were so smart taking over that mine, now look at them, DEAD! Puny $R has done good for me, and I reward good work, here, take this, you\'re now an official mercenary for Maul\'ogg!',60299,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4950,0,0,0,0,0,0,0,0,0,0,0,60300,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (92180, 40219);
replace into creature_involvedrelation (id, quest) values (92180, 40219);

delete from item_template where entry = 60299;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60299,6850,'Star Emerald',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

update creature_template set loot_id = 92141 where entry = 92141;

delete from creature_loot_template where item = 60299 and entry = 92141;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values 
(92141,60299,-100,1,1,0,10);

replace into item_template values
 ('60300', '0', '4', '0', 'Favor of Cruk\'Zogg', '', '32326', '2', '0', '1', '24312', '6078', '2', '-1', '-1', '60',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '15', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);

-- Batskin Letter --
delete from quest_template where entry = 40220;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext4) values (0,40220,2,85,2,1,0,0,'Batskin Letter','While you were aiding with the tasks of the Forsaken a fellow by the name of Morpheus Ribcage gave me this letter to be seen by your eyes only, you should find him close to the Graveyard.','Speak with Morpheus Ribcage.','What is it?','You carry that bow well, almost as if it was suited for you. Let us begin our training, I can teach you a thing or two about the path you’re aiming to take.',60301,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60301,1,30,50,68,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (1569, 40220);
replace into creature_involvedrelation (id, quest) values (60483, 40220);

update quest_template set requiredclasses = 4 where entry = 40220;
update quest_template set requiredraces = 16 where entry = 40220;

delete from item_template where entry = 60301;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60301,13002,'Batskin Letter',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',50512);

REPLACE INTO page_text VALUES
(50512, '$N, it was my pleasure to hear that a recruit shows passion for the art of hunting.\n\nAlthough in life we would\’ve never considered ourselves as great of a marksman as either the dwarves or the high elves we took our pride for the love we carried for the wilds, befriending animals into long loyal companions and feeling the rhythm and the call of nature in every gust of wind, every groan of the river was something that brought upmost joy into our lives.', 50513),
(50513, 'Adapting to nature was one of our greatest and most noble of goals, yet as we\’ve experimented with what comes after a restless death, we can no longer adapt to nature, it seems that nature itself will need to adapt to us. Meet me by the graveyard, it\’s there I shall teach you of my past experiences and a few tricks for you to survive and claim your vengeance against the Lich King.\n\nFor the Banshee Queen, for the Forsaken.', 0);

delete from creature_ai_events where id = 2200000 and 2200001;
delete from creature_ai_scripts where id = 2200000 and 2200001;
delete from broadcast_text where entry = 30000 and 30001;
update creature_template set script_name = 'npc_lapidis' where entry = 60467;

-- The Long Night Is Not Over --
delete from quest_template where entry = 40221;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext4) values (0,40221,2,139,60,50,0,1,'The Long Night Is Not Over','Tales of your victories against the scourge raise the spirits of the downtrodden and give hope for a better tomorrow, $G brother:sister. But for all your efforts, our enemies yet shamble in the dark and cast a pall over the land. The long night is yet to be over.\n\nWe mustn\'t relent! By the Light, we must keep on, and bring salvation to those the Scourge would seek to harm. Prove that your mettle remains as sharp as steel. Bring me an Argent Dawn Valor Token, and in exchange, I will grant you a boon to aid in your battles against the undead.\n\nGo forth, champion! For the Light! For Azeroth!','','','',12844,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,23122,1,23123,1,0,0,0,0,529,21000,'');

replace into creature_questrelation (id, quest) values (11536, 40221);
replace into creature_involvedrelation (id, quest) values (11536, 40221);

update broadcast_text set male_text = 'I sense something about you, something.. Different. Perhaps we will meet again, until then, leave me be, I have much work to do, and I do not desire to be interfered.\n\nUnless you\'re looking for a fight mortal, if so, it can be arranged.' where entry = 60503;
update creature_template set faction = 31 where entry = 60503;
update creature_template set unit_flags = 2 where entry = 60503;
update creature_template set script_name = 'npc_lorthiras' where entry = 60503;

update creature_template set health_min = 650 where entry = 60475;
update creature_template set health_max = 650 where entry = 60475;

-- Yig Oilfuse , display ID 7051, level 14, faction 69, greeting text : "You heard word from booty bay? I'm expecting a shipment."
-- Thoregg, display ID 10704, level 32,  scale 1.3 , weapon 1158, faction 16, must have 1.5x normal hp and deal slightly more damage
-- Wally Wisecrack, display ID 4338, level 36, weapon 1 :4564 , faction 87 (scale 1) 
-- Conservationist Yalus, display ID 5071, level 30, faction 80, greeting text : "Stonetalon Peak may be a place of harmony, but we must be vigilant to keep it this way."

delete from creature_template where entry between 60504 and 60507;
replace into creature_template values
(60504, 0, 7051, 0, 0, 0, 'Yig Oilfuse', '', 0, 14, 14, 328, 328, 0, 0, 528, 69, 3, 1, 1.19048, 0, 20, 5, 0, 0, 1, 21, 27, 0, 76, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 27.2272, 37.4374, 100, 7, 0, 1892, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 50, 'EventAI', 1, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60505, 0, 10704, 0, 0, 0, 'Thoregg', '', 0, 32, 32, 1743, 1743, 0, 0, 1304, 16, 0, 1, 1.14286, 1.3, 20, 5, 0, 0, 1, 51, 62, 0, 140, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 7, 0, 60505, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 70, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60506, 0, 4338, 0, 0, 0, 'Wally Wisecrack', '', 0, 36, 36, 1468, 1468, 0, 0, 1480, 87, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 51, 62, 0, 140, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 7, 0, 60506, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 59, 83, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60507, 0, 5071, 0, 0, 0, 'Conservationist Yalus', '', 0, 30, 30, 1002, 1002, 0, 0, 1188, 80, 3, 1, 1.14286, 0, 20, 5, 0, 0, 1, 42, 53, 0, 122, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 42.1344, 57.9348, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43, 61, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @equip_template = 20026; set @weapon_1 = 1158; set @weapon_2 = 0; set @creature = 60505;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20027; set @weapon_1 = 4564; set @weapon_2 = 0; set @creature = 60506;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @gossip_menu_id = 41034; set @magic_number = 60504;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'You heard word from booty bay? I\'m expecting a shipment.'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41035; set @magic_number = 60507;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Stonetalon Peak may be a place of harmony, but we must be vigilant to keep it this way.'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

delete from item_template where entry = 60302;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60302,8951,'Lapidis Tower Key',13,1,524288,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

delete from gameobject_template where entry = 2010842;
REPLACE INTO gameobject_template VALUES
(2010842, 0, 0, 23913, 'Magically Sealed Door', 0, 32, 2.45983, 0, 0, 196608, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'magically_sealed_door');

-- Intercepted Shipment --
delete from quest_template where entry = 40222;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40222,2,33,30,25,0,0,'Intercepted Shipment','Hey there, we don\'t get many visitors back here, I suppose you\'re looking for work then. I got a shipment I am expecting that should have arrived today, think you can pick it up? Let\'s just say, I\'m not supposed to be seen around the docks to certain people.\n\nIt might not have my name on it, but it should be labeled as \'Refined Gem Shipment\'. Try not to ask any questions while you\'re down there either, just grab the crate and come back. If you look like you know what you\'re looking for, and have confidence, they wont ask any questions.\n\nYou get me the crate, and I\'ll have more work for you.','Collect the \'Refined Gem Shipment\' for \'Slip\' in Booty Bay.','Any luck? I can\'t be waiting around all day.','Yeah, this is it, those pesky rats think they could stop me? Hah! Good work pal, you certainly got some gumption.',60303,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1350,87,50,21,-100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60502, 40222);
replace into creature_involvedrelation (id, quest) values (60502, 40222);

update creature_template set npc_flags = 3 where entry = 60502;

delete from item_template where entry = 60303;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60303,8928,'Refined Gem Shipment',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

delete from gameobject_template where entry = 2010843;
replace into gameobject_template values
(2010843, 0, 3, 31, 'Refined Gem Shipment', 0, 4, 1, 43, 2010843, 0, 1.6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

delete from gameobject_loot_template where entry = 2010843;
replace into gameobject_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values 
(2010843,60303,-100,1,1,0,10);

-- Breaking Contracts --
delete from quest_template where entry = 40223;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40222,40223,2,33,30,25,0,0,'Breaking Contracts','In the shady, hidden corners of Azeroth there is always a deal going on, you may not see it, but its there. I got word of a deal going down on Thoradin\'s Wall that I want you to go and steal. The contract itself is that of a dear rival of mine, and if I can do anything to interrupt his business and make a profit, well I\'m just smilling ear to ear.\n\nYou can find Thoradin\'s wall between Hillsbrad and the Arathi Highlands, it is what seperates the two. Supposedly some ancient wall built by Stromgarde, or something of that nature.\n\nThe ramp should be on the Hillsbrad side of the wall, near the southern end, I do know they hired some Syndicate goons to watch the ramp, but they should be no problem for you. The main muscle will be an ogre name Thoregg who guards the packages there, him you should be careful of.\n\nGet the shipment, bring it back to me, easy yeah? Oh, and no matter what, don\'t open the crate.','Collect the Mysterious Shipment, and return it to \'Slip\'.','If you don\'t go looking around, you wont find a thing.','My my, see, I told you, there are always deals being made! Profits to be made, always of course, especially if you know how to come between it, heh! Here, take this coin, if you\'re interested in more work, I got it.',60304,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2500,2850,87,250,21,-100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60502, 40223);
replace into creature_involvedrelation (id, quest) values (60502, 40223);

delete from item_template where entry = 60304;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60304,7914,'Mysterious Shipment',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

delete from gameobject_template where entry = 2010844;
replace into gameobject_template values
(2010844, 0, 3, 24106, 'Mysterious Shipment', 0, 4, 1, 43, 2010844, 0, 1.6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

delete from gameobject_loot_template where entry = 2010844;
replace into gameobject_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values 
(2010844,60304,-100,1,1,0,10);

-- Delivery for Oilfuse --
delete from quest_template where entry = 40224;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40223,40224,2,33,30,25,0,0,'Delivery for Oilfuse','Good work as always, I think I can count on you to make a shipment. This is supposed to be under the rug, so I don\'t want anyone knowing that I sent you or that he was even getting anything, got it?!\n\nA buddy of mine Yig Oilfuse recently departed from the Venture Co. after some not so great terms, we met a long time ago, he was quite the smuggler. Anyway - I need this crate delivered to him, it contains some of the spoils you plundered, as a thanks for the info, as well as what he requested.\n\nSo pal, its that simple, go and talk to him, give him this here crate. You\'ll find him in Ratchet, up the road from the town a bit, him and some friend share a place there with metalworking or something. Catch the boat from the dock here in Booty Bay.','Deliver the Goods for Oilfuse to Yig Oilfuse in Ratchet.','Howdy, what can I do for you?','Let me guess, \'Slip\', huh? He always wanted to get the crew back together after we parted ways. I figured he\'d just slink away to some part of the world and live it out on the gold he made!',60305,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60305,1,0,1050,87,100,470,-50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60502, 40224);
replace into creature_involvedrelation (id, quest) values (60504, 40224);

delete from item_template where entry = 60305;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60305,7918,'Goods for Oilfuse',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

-- The Old Bonds --
delete from quest_template where entry = 40225;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40224,40225,2,33,30,25,0,0,'The Old Bonds','As much as I appreciate this delivery I know what I means. I made a promise long ago to uphold an end of the bargain, I desired him to pillage the areas I gave him in return for some goods and information.\n\nHe is looking for the killer of Jade, the one who broke up our old crew some time ago, and now that he has fulfilled his end, I will do the same, I aint no rat, I keep my bond.\n\nThe person who organized the hit to break us up went by the name Wally Wisecrack, he now hangs out with those Syndicate Boys, though I am sure \'Slip\' knows that. Once you tell \'Slip\' this is the person who was behind it all, he will no doubt want revenge.','Bring the information to \'Slip\' in Booty Bay.','Yes?','So, he did uphold his end of the bargain... Wally Wisecrack huh, that two faced piece of rat filth!\n\nI am going to get my revenge, and you\'re going to be the weapon I unleash upon this miserable prick.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1050,87,100,21,-50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60504, 40225);
replace into creature_involvedrelation (id, quest) values (60502, 40225);

-- Wally Wisecrack --
delete from quest_template where entry = 40226;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40225,40226,2,33,35,25,0,0,'Wally Wisecrack','This man continued to deal and swindle with me even after he brought down my crew, we spoke face to face many times. He killed Jade and took her from my life, we could have conquered the world our crew. I may not live in a palace on Tel\'abim, but I will still get the sweet justice that I have been longer for.\n\nWally Wisecrack is a goon of a human, who resides within Strahnbrad and was closely assosciated with those Syndicate fellows. Yeah the traitorous ones that sold their souls to the orcs, it seems its just in their blood, huh?\n\nFind him in Strahnbrad, kill him, and bring me his Large Looped Earring as proof.','Slay Wally Wisecrack, and bring his Large Looped Earring to \'Slip\' in Booty Bay.','He is a dastardly fellow, don\'t let him know you\'re coming, or you\'ll never find him.','It\'s done then, and good, the spirits of those that were lost because of this cold hearted goon may find peace in whatever grave they found themselves in. I can\'t thank you again for all the help, and for reconnecting me with some old crew across the world.\n\nTake one of these items, as a token of my gratitude.',60306,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3450,87,100,70,-200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60307,1,60308,1,60309,1,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60502, 40226);
replace into creature_involvedrelation (id, quest) values (60502, 40226);

update quest_template set type = 1 where entry = 40226;

delete from item_template where entry = 60306;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60306,9849,'Large Looped Earring',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

delete from creature_loot_template where entry = 60506 and item = 60306;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values
(60506,60306,-100,1,1,0,10);

replace into item_template values
 ('60307', '0', '2', '15', 'The \'Slip\' Dagger', 'Encrusted with small gemstones', '6442', '2', '0', '1', '49748', '12437', '13', '-1', '-1', '40',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '3', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1400', '0',
 '0', '26', '41', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '13669', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '3', '0', '0', '55', '0', '0', '0', '0', '25', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60308', '0', '4', '2', 'Oilfused Gloves', 'The smell is intoxicating', '17174', '2', '0', '1', '11492', '2873', '10', '-1', '-1', '40',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '7', '7', '7',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '70', '0', '-5', '8',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '1', '0', '0', '30', '0', '0', '0', '0', '25', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60309', '0', '2', '2', '\'Jadewood\' Longbow', 'The band is encrusted with bright jades', '20666', '2', '0', '1', '33636', '8409', '15', '-1', '-1', '40',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '6', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1900', '',
 '2', '23', '45', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '2', '1', '0', '0', '65', '0', '0', '0', '0', '25', '0', '0', '0',
 '0', '1', NULL);