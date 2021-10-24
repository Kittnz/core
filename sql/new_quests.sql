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