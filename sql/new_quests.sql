-- Reserved.
-- quest_template			40000-40200
-- creature_template		60300-60500
-- gameobject_template		2010700-2010900
-- item_template			60000-60200
-- gossip_menu				41000-43000
-- creature_equip_template	20000-21000

-- Red Flag over the Sea --
delete from quest_template where entry = 40172;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40172,2,35,48,45,0,0,'Red Flag over the Sea','Ahoy mate, fine day in it?\n\n<Garfield takes a deep breath>.\n\nAye, the salty smell of the sea forcefully entering your nostrils, the cotton mouth from last night\’s rum and the ultimate headache and pain you got from the local bar fight. Thar is no better life matey, this I tell ye. But this city be borin\'. I reckon, they are no real pirates, if ye truly want to live yer adventures at sea and see how it really be to be a Corsair ye should come join me and me crew!\n\nI be a crew member of the Bloodsail Buccaneers and I be lookin\' for new folk to join us. We are sworn enemies to Booty Bay so keep this small piece to yerself eh? If ye decide to join us I got a mission for ye, if not, we never met, savvy?','Speak to Garfield \‘The Fox\’ Sparkleblast if you wish to aid him.','Don\'t waste me time mate, I be tryin\' to enjoy the sun and this here fine rum.','I\’d like to say welcome aboard but ye are not ready to become a crew member yet, first ye must do us a favor.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,300,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60453, 40172);
replace into creature_involvedrelation (id, quest) values (60453, 40172);

-- Weapons Laying About --
delete from quest_template where entry = 40173;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40172,40173,2,35,48,45,0,0,'Weapons Laying About','So listen here mate, ye see these foul sea tailed imps? These Blackwater Pirates are naught but a joke, hiding in their port. They even have thar weapons laying around in crates, truly a disgrace to all pirates around.\n\n<Garfield spits on the ground>.\n\nSo that\'s exactly why ye are going to collect them and bring them to a special someone in the city, what, ye thought these sea tailed imps wouldn\'t have a rat? Outrageous, but hilarious, in it? Quizzle be the name.','Bring five weapon crates to Quizzle.','Aye?','Not so loud! You want the whole bruiser brigade on our hands? Just put that crate in and keep them coming.\n\n<After you bring each crate one by one you turn your attention towards Quizzle>.\n\nFine work mate, here\'s your pay now leave and don\'t worry about it, you were never here today.',60245,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3525,750,87,500,21,-500,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60453, 40173);
replace into creature_involvedrelation (id, quest) values (2663, 40173);

update creature_template set npc_flags = 6 where entry = 2663;

delete from item_template where entry = 60245;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60245,9288,'Blackwater Weapon Crate',12,1,2048,1,-1,-1,1,5,-1,-1,-1,-1,4,'',0);

delete from gameobject_template where entry = 2010833;
replace into gameobject_template values
(2010833, 0, 3, 25380, 'Blackwater Weapon Crate', 0, 4, 1, 43, 2010833, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

delete from gameobject_loot_template where entry = 2010833;
replace into gameobject_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (2010833,60245,-100,1,1,0,10);




