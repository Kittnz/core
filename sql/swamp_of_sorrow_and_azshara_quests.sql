-- Reserved.
-- quest_template			40000-40200
-- creature_template		60300-60500
-- gameobject_template		2010700-2010900
-- item_template			60000-60200

delete from quest_template where entry = 40028;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (0,40028,2,8,36,30,0,0,'The Horn of Garek\'sa','I was once the master hunter of the tribe long ago. I stalked the paths of outland with efficiency and defeated many fearsome foes. Both orc and beast alike were slain by my swift arrows and deadly proficiency.\n\n But, I am no longer Har Na\'lan the great hunter, I am Har Na\'lan the old, I can feel the age slowing me down and even the local wildlife has been a challenge.\n\nOver six hundred years ago I slayed my most fearsome foe, a mighty Ravager by the name of Garek\'sa. The Ravagers were mostly gone extinct with the coming demons and through age. But Garek\'sa lived on as a mighty, and fearsome foe, as large as the biggest of our huts. With two quick arrows to its neck, and a slash to its abdomen I slew the creature, and took its horn as a trophy.\n\nIt is a shame to say, when we left the Fallow Sanctuary to the east, I had no time to gather my possessions, and my horn was left behind. Get it for me, please and I shall reward you greatly.','Find the Horn of Garek\'sa for Har Na\'lan at the Fallow Sanctuary.','Have you gotten my prized possession outsider?','You\'ve done it, this is the horn. I must thank you greatly, without you it would have been lost forever. Words alone cannot express how pleased I am to have this once more.\n\nPlease, take my ring, as a symbol of my gratitude and respect.',60128,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10000,2800,0,0,0,0,0,0,0,0,0,0,0,60129,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (91796, 40028);
replace into creature_involvedrelation (id, quest) values (91796, 40028);

delete from item_template where entry = 60128;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description) values (60128,2598,'Horn of Garek\'sa',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'A foreign horn, from another world');

delete from item_template where entry = 60129;
replace into item_template values
 ('60129', '0', '4', '0', 'Draenic Hunter Ring', 'Holds foreign markings', '9836', '2', '0', '1', '26336', '6584', '11', '-1', '-1', '43',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '8', '6', '6',
 '7', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '26', '0', '0', '0',
 '0', '1', '0');

delete from gameobject_template where entry = 2010806;
replace into gameobject_template values
(2010806, 0, 3, 23430, 'Har Na\'lan\'s Crate', 0, 4, 1, 43, 2010806, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

delete from gameobject_loot_template where entry = 2010806;
replace into gameobject_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (2010806,60128,-100,1,1,0,10);

update creature_template set npc_flags = 2 where entry = 91796;


delete from quest_template where entry = 40029;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (0,40029,2,8,36,30,0,0,'Hunting the Hunters','The lost ones of Fallow Sanctuary are a menace to The Harborage. Every day we must live in fear that they attack in their state of madness. We have not the Draenei to fight them off should they ever gather a large enough force.\n\nThe Muckdwellers have been scouting The Harborage for days now, and I sense that they may be preparing for something. I ask of you to help us, to slay the maddened ones and give us a chance of survival. You will find them to the east, but be careful, they are extremely hostile.','Slay 8 Lost One Muckdwellers and 3 Lost One Hunters.','Has it been done yet, outsider?','It saddens me that we must slay our brethren, of those we shared so much hope in coming to this world. But their minds are warped, they are no longer friends. You have freed their souls outsider, thank you.',0,0,0,0,0,0,0,0,759,3,760,8,0,0,0,0,0,0,0,2700,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (1776, 40029);
replace into creature_involvedrelation (id, quest) values (1776, 40029);


delete from quest_template where entry = 40030;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (40029,40030,2,8,36,30,0,0,'Noboru the Cudgel','There is one we fear, his name is Noboru the Cudgel, and he roams with a band of thugs who terrorize us at every opportunity. He is a skilled warrior from our old tribe on Outland, very few in the village can stand up to him and his goons both. Noboru has enacted great brutality on Harborage, and killed members of our tribe without any sign of remorse.\n\nNoboru must be stopped, you must kill him in order for the bloodshed to end. He wields a Cudgel, it is from this brutal weapon he has gained his nickname. Defeat him, bring us his weapon so that we may still survive on this foreign world.','Find and slay Noboru the Cudgel, and bring Noboru\'s Cudgel to Magtoor.','Has the feared one been defeated?','You have done it? You have truly defeated the terrible one? This is a joyous day for the Harborage. He was a direct threat to our survival, and we did not have the strength to face him.\n\nWe are fortunate you were able to help outsider! Please, as a symbol of our gratitude, take one of our artifacts from the old world. They serve no purpose to us anymore. We must look to the future and not remember the brutal past.',60130,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2475,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60131,1,60132,1,0,0,0,0);

replace into creature_questrelation (id, quest) values (1776, 40030);
replace into creature_involvedrelation (id, quest) values (1776, 40030);

delete from creature_template where entry = 60421;
replace into creature_template VALUES (60421, 0, 11650, 11651, 11652, 0, 'Draenei Exile', '', 0, 42, 42, 1981, 1981, 0, 0, 2246, 15, 0, 1.11111, 1.14286, 0, 20, 5, 0, 0, 1, 64, 79, 0, 172, 1, 2000, 2000, 1, 768, 0, 0, 0, 0, 0, 0, 58.7664, 80.8038, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 1, 0, 0, 3, 0, 0, 0, 0, 0, 524290, 0, '');

delete from creature_template where entry = 60422;
replace into creature_template VALUES (60422, 0, 11650, 11651, 11652, 0, 'Draenei Exile', '', 0, 42, 42, 1981, 1981, 0, 0, 2246, 15, 0, 1.11111, 1.14286, 0, 20, 5, 0, 0, 1, 64, 79, 0, 172, 1, 2000, 2000, 1, 768, 0, 0, 0, 0, 0, 0, 58.7664, 80.8038, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 1, 0, 0, 3, 0, 0, 0, 0, 0, 524290, 0, '');

delete from creature_template where entry = 60423;
replace into creature_template VALUES (60423, 0, 11650, 11651, 11652, 0, 'Draenei Exile', '', 0, 42, 42, 1981, 1981, 0, 0, 2246, 15, 0, 1.11111, 1.14286, 0, 20, 5, 0, 0, 1, 64, 79, 0, 172, 1, 2000, 2000, 1, 768, 0, 0, 0, 0, 0, 0, 58.7664, 80.8038, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 1, 0, 0, 3, 0, 0, 0, 0, 0, 524290, 0, '');

delete from creature_template where entry = 60424;
replace into creature_template VALUES (60424, 0, 11650, 11651, 11652, 0, 'Draenei Exile', '', 0, 42, 42, 1981, 1981, 0, 0, 2246, 15, 0, 1.11111, 1.14286, 0, 20, 5, 0, 0, 1, 64, 79, 0, 172, 1, 2000, 2000, 1, 768, 0, 0, 0, 0, 0, 0, 58.7664, 80.8038, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 1, 0, 0, 3, 0, 0, 0, 0, 0, 524290, 0, '');

update creature set id = 60421 where guid = 33804;
update creature set id = 60422 where guid = 33805;
update creature set id = 60423 where guid = 33806;
update creature set id = 60424 where guid = 33807;

update creature_template set script_name = 'npc_magtoor' where entry = 1776;

delete from item_template where entry = 60130;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description) values (60130,4896,'Noboru\'s Cudgel',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'');

delete from item_template where entry = 60131;
replace into item_template values
 ('60131', '0', '4', '0', 'Scepter of Aka\'sha', 'The Scepter of a temple long forgotten', '27929', '2', '0', '1', '73240', '18310', '23', '-1', '-1', '45',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '10', '6', '5',
 '7', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '26', '0', '0', '0',
 '0', '1', '0');
 
delete from item_template where entry = 60132;
replace into item_template values
 ('60132', '0', '4', '0', 'Talisman of Kar\'noom', 'Ancient Talisman of a long gone sage', '35437', '2', '0', '1', '45816', '11454', '2', '-1', '-1', '42',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '8', '6', '8',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '26', '0', '0', '0',
 '0', '1', '0');

delete from creature_loot_template where entry = 5477 and item = 60130;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (5477,60130,-100,1,1,0,10);


delete from quest_template where entry = 40031;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (0,40031,2,8,35,30,0,0,'Leather, A Draenic Luxury','It is good to work with leather once again. On our old planet of Outland we had scarce access to the resource. It was considered a rarity, a luxury there with the lack of beasts and lack of water. Our planet was once as dense, and populated as this, until the demons came and the waters dried. It is like we live in a paradise on this world. I had my doubts with Sanv K\'la and his plan at first, but it seems as though this land is much more promising then I had originally imagined.\n\nI would ask of you outsider to gather me leather from the Young Sawtooth Crocolisks, it is hard, but still stretchable in its quality, and has made good use for our purposes. With the lost ones of Fallow Sanctuary lurking about, it has been more dangerous to get.','Gather 10 Sawtooth Leather for Masat T\'andr.','Have you procured the leather?','Oh, more leather to work with, my hands are eager to get started. I thank you outsider for  getting me this.',60133,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2350,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (11874, 40031);
replace into creature_involvedrelation (id, quest) values (11874, 40031);

delete from item_template where entry = 60133;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description) values (60133,4676,'Sawtooth Leather',12,1,2048,1,-1,-1,1,10,-1,-1,-1,-1,4,'');

delete from creature_loot_template where entry = 1084 and item = 60133;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (1084,60133,-30,1,1,0,10);

update creature_template set npc_flags = 6 where entry = 11874;


delete from quest_template where entry = 40032;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (40027,40032,2,8,39,30,0,0,'Draenic Communication','Akh Z\'ador is a Riftseeker who led us to this world. He was one of the few of our kind that knew the magic of our ancient ancestors. He was skilled enough to bring our entire tribe here, and that of the Fallow Sanctuary with the help of the other lesser Riftseekers.\n\nA few weeks ago he attempted to return to the old world in search of more exiles to bring to Harborage. I suspect something went terribly wrong for I could not detect his presence upon our old world with the Sanv Charm. You see, the magic he is using is old, and somewhat unstable. We barely understand its usage, and only the bright minds like Akh Z\'ador can manipulate it enough to travel.\n\nI need you to gather materials in order to cast a spell to find his location and see perhaps where it is he has gone. Local materials should work just fine. Gather me 6 Tangled Essence from the Tangled Horrors to the east, and a Marsh-Murloc Eye from Murlocs at the coast.','Gather 6 Tangled Essence and a Marsh Murloc Eye for Sanv Kla.','We must attempt to find Akh Z\'ador, and quickly outsider.','We shall begin the communication at once, stand back outsider, our magic is unstable.',60134,6,60135,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2350,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (91781, 40032);
replace into creature_involvedrelation (id, quest) values (91781, 40032);

delete from item_template where entry = 60134;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description) values (60134,1405,'Tangled Essence',12,1,2048,1,-1,-1,1,6,-1,-1,-1,-1,4,'');

delete from item_template where entry = 60135;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description) values (60135,7986,'Marsh Murloc Eye',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'');

delete from creature_loot_template where entry = 766 and item = 60134;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (766,60134,-50,1,1,0,10);

delete from creature_loot_template where entry = 750 and item = 60135;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (750,60135,-10,1,1,0,10);

delete from creature_loot_template where entry = 752 and item = 60135;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (752,60135,-10,1,1,0,10);

delete from creature_loot_template where entry = 751 and item = 60135;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (751,60135,-10,1,1,0,10);

delete from creature_loot_template where entry = 747 and item = 60135;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (747,60135,-9,1,1,0,10);


delete from quest_template where entry = 40033;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (40032,40033,2,8,52,30,0,0,'Finding Akh Z\'ador','My strength is sapped, I feel aged, and weak, but I saw a city. A city that was submerged beneath the waves, as if the tides themselves had come and drowned it all. There were tall cliffs, massive in scale and it seemed as if the spirits there wallowed in misery. Red leaves fell from the trees and a strong magic lingered and pulsated as if it wanted me gone, it weakened me and kept it hard to focus.\n\nI am certain now that Akh Z\'ador is on this world, he must have faced something on the Outland and been forced to leave. That or his Rifts instability had sent him to this foreign landscape.\n\nThis is but all I can remember outsider. It seemed as if whatever resided there was strong, much stronger then the wildlife here, much stronger then you even. I beg of you, to try and find Akh Z\'ador wherever it is he may be, no matter long it takes you.','Find Akh Z\'ador.','I come from a far away land and I seek no hostility what is it you need?','Sanv K\'la sent you? I am happy to hear his name once more.. I thought I would never hear from him again, nor would I think he would send someone so far to seek me.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (91781, 40033);
replace into creature_involvedrelation (id, quest) values (91782, 40033);


delete from quest_template where entry = 40034;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (0,40034,2,16,54,45,0,0,'A Meeting With Royalty','What business do you have here at the Rethress Sanctum? You are lucky our strength is not what it used to be and that we are on trying times. If one wants a visit with the Tide Mistress then they first must speak to me. We Rethress come from the very depths of this world, in places your kind have never seen, nor will ever see.\n\n... As much as I distrust you interloper we require aid from any that can offer it. Speak with Tide Mistress Rashal, you have my blessing in order to see her.','Speak with Tide Mistress Rashal.','Yes, what could it be that you would want from me $r.','I see, Hashaz has sent you? If that is the case then perhaps you may be of use. I am Tide Mistress Rashal and this is the Rethress Sanctum, speak with my followers here and make yourself useful.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,750,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (91779, 40034);
replace into creature_involvedrelation (id, quest) values (91776, 40034);


delete from quest_template where entry = 40035;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (40034,40035,2,16,54,45,0,0,'Spoils Left Behind','Before we left for the great depths the Rethress spent some time within Stranglethorn. We butted heads with other Naga there but otherwise kept low and to ourselves. Tide Mistress Rashal had something of a personal mission far in the east and we made the island of Jaguero into a temporary base.\n\nIt wasn\'t long before we returned to the great depths in order to begin our mission here, in our quickness we left behind a small trunk that contains spoils of great importance to us and for our future. Go there, and gather our Spoils!','Obtain the Rethress Spoils for Hashaz.','Have you got what I asked?','Many battles were fought for this, it is good to hear lives were not wasted for nothing. You are proving to be a good ally interloper.',60136,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (91779, 40035);
replace into creature_involvedrelation (id, quest) values (91779, 40035);

delete from item_template where entry = 60136;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description) values (60136,7260,'Rethress Spoils',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'A large collection of wealth and trinkets');

delete from gameobject_template where entry = 2010807;
replace into gameobject_template values
(2010807, 0, 3, 23430, 'Sealed Naga Trunk', 0, 4, 1, 43, 2010807, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

delete from gameobject_loot_template where entry = 2010807;
replace into gameobject_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (2010807,60136,-100,1,1,0,10);


delete from quest_template where entry = 40036;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (40034,40036,2,16,54,45,0,0,'A Broken Oath','The Myrmidon\'s of Rethress swore a sacred oath upon the stones of the Temple Rethress beneath the deep waves. Their word was their bond, and they broke both the word of their sharp tongues and the oath they promised to keep. We were tasked with the protection of Tide Mistress Rashal, and to carry out her whims and deeds for the greater depths of all Naga.\n\nWhen the Spitelash was created, and the division began most all of the Myrmidon\'s changed sides. They betrayed those loyal to the Rethress on orders from Naszharr and slayed many of my most trusted brothers upon The Shattered Strand.\n\nI want them dead interloper, I want their corpses to be feasted on by the depths. From their bodies take their Myrmidon Signet\'s, a ring given to them upon swearing their oath.','Gather 20 Myrmidon Signets from Spitelash Myrmidon on the Shattered Strand.','Have you killed the oathbreakers $r?','The Spitelash Myrmidon are an abomination to the great depths, they deserved death for breaking our most sacred bonds... I am pleased.',60137,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5600,0,0,0,0,0,0,0,0,0,0,0,60138,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (91777, 40036);
replace into creature_involvedrelation (id, quest) values (91777, 40036);

delete from item_template where entry = 60137;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description) values (60137,35313,'Myrmidon Signet',12,1,2048,1,-1,-1,1,20,-1,-1,-1,-1,4,'');

delete from item_template where entry = 60138;
replace into item_template values
 ('60138', '0', '2', '6', 'Rethress Myrmidon Triden', '', '8746', '2', '0', '1', '195107', '48761', '17', '-1', '-1', '57',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '5', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3200', '0',
 '0', '121', '177', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '5', '0', '0', '15464', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '2', '0', '0', '85', '0', '0', '0', '0', '30', '0', '0', '0',
 '0', '1', '0');

delete from creature_loot_template where entry = 7885 and item = 60137;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (7885,60137,-100,1,1,0,10);


delete from quest_template where entry = 40037;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (40034,40037,2,16,56,45,0,0,'The Storm Bay Mutiny','I was sent to Azshara from the great depths of the world to claim ownership over these lands. I am royalty, royalty of the naga, and with the army I was sent, could have been as strong as Queen Azshara!\n\nYet, here I am, ruling over a small band of my loyal followers with no sway or power in the world. I was betrayed, by the naga that followed me, and you will help me get revenge. The Storm Bay Murlocs were that of my families servants, their betrayal is most foul to me for the creatures think they are above the will of Tide Mistress Rashal?\n\nYou can find these spineless followers all along the coastline of Azshara, perhaps showing strength may get them back in line.','Kill 10 Storm Bay Warriors and 10 Storm Bay Oracles for Tide Mistress Rashal.','Have the servants been dealt with $r?','Even just crippling their numbers is enough to please me. My kind would never stand for such an abboration of the tides rules, and if I had the numbers I would be sure to make them suffer.',0,0,0,0,0,0,0,0,6371,10,6351,10,0,0,0,0,0,0,0,5700,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (91776, 40037);
replace into creature_involvedrelation (id, quest) values (91776, 40037);


delete from quest_template where entry = 40038;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (40037,40038,2,16,56,45,0,0,'Keeping Command','The leader of the Storm Bay is a murloc with a brain the size of a small oyster. Mmrmglul is his name, he should be punished, and brutally for rallying the Storm Bay Murlocs in an open revolt.\n\nYou\'ll find that slimy eel to the north, through the pathways and along the coastline on the Southridge Beach. Bring his head to me as a showing to the rest of his lackeys that Tide Mistress Rashal commands the Storm Bay Murlocs.','Slay Mmrmglul and bring his head to Tide Mistress Rashal.','Have you got his head interloper?','Even just crippling their numbers is enough to please me. My kind would never stand for such an abboration of the tides rules, and if I had the numbers I would be sure to make them suffer.',60139,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5700,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (91776, 40038);
replace into creature_involvedrelation (id, quest) values (91776, 40038);

delete from item_template where entry = 60139;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description) values (60139,9585,'Head of Mmrmglul',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'');

delete from creature_loot_template where entry = 6351 and item = 60139;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (6351,60139,-100,1,1,0,10);


delete from quest_template where entry = 40039;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (40038,40039,2,16,56,45,0,0,'The Rethress Tide Scepter','The Rethress Tide Scepter holds power for me within the great depths of the world and especially within Nazjatar. It is the birthright of the Rethress and gives us dominion over many others. I had suspected they would try to steal it when the Spitelash was formed in order to get this dominion.\n\nYou may wonder, why am I telling you this, it would never concern a land-creature like yourself. Well, I buried the Scepter in a secretive location so that they could never claim power legitimately. Now that the Rethress Sanctum is founded and we are not in immediate danger I would like it returned.\n\nThere is a place called the Tower of Eldara, held by some Highborne Keeper. It is located at the very far north eastern tip of the peninsula. To the west of it, along the coast is four rocks, buried around those rocks is the Rethress Tide Scepter. Get it, and bring it to me interloper, to help me reclaim my birthright.','Find the Buried Rethress Tide Scepter and bring it to Tide Mistress Rashal.','Has the Scepter been found? Can you follow instructions $r?','You have found it... Well done land-walker, there is still one final task I must ask of you, to ensure the Rethress survive.',60140,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (91776, 40039);
replace into creature_involvedrelation (id, quest) values (91776, 40039);

delete from item_template where entry = 60140;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description) values (60140,20384,'Rethress Tide Scepter',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'Covered in grime and mud');

delete from gameobject_template where entry = 2010808;
replace into gameobject_template values
(2010808, 0, 3, 1767, 'Pile of Glinting Sand', 0, 4, 0.3, 43, 2010808, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

delete from gameobject_loot_template where entry = 2010808;
replace into gameobject_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (2010808,60140,-100,1,1,0,10);


delete from quest_template where entry = 40040;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (0,40040,2,16,50,40,0,0,'The Flaxwhisker Front','Howdy! Welcome to Flaxwhisker post, I am Fendo in charge of all manner of things around here. I\'m suppose to direct any new arrivies in Flaxwhisker to the boss. That is to say, we haven\'t heard word from Gnomeregan in months, or recieved any new people! Still, good to have you around $r. You\'ll find Gigno Flaxwhisker inside, at the top floor.','Speak with Gigno Flaxwhisker.','Mmm, yes?','Oh, someone new? We haven\'t had anyone new around here in a long time, we haven\'t been told of someone new arriving... You want to help us out, you gotta prove to me you\'re the real deal buddy!',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,250,54,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (91770, 40040);
replace into creature_involvedrelation (id, quest) values (91768, 40040);


delete from quest_template where entry = 40041;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (40040,40041,2,16,50,40,0,0,'Flaxwhisker Loyalty','If you\'re the real deal then you gotta do a real task, That makes sense yeah? I\'ve been dying to get my hands on a Mistwing Horn for some time! Those creatures are quite powerful and supercharged with all sorts of natural energy. I\'ve had my suspicions for some time now that a Mistwing Horn could be useful beyond its practical purposes and I\'d like to put it to the test.. That\'s where you come in.\n\nThe Mistwing can be found to the north west just beyond Lake Mennar. Keep careful though, there are all manner of big, and powerful things up there! Azshara sure is a dangerous place.','Obtain a Mistwing Horn for Gigno Flaxwhisker to prove your loyalties.','Have you gotten the Horn for me?','Wow you got it? I guess you are the real deal and you really do want to help us! I\'ll spread the word around that you\'re A-OKAY! Let us get some work done then!',60141,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5450,54,175,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (91768, 40041);
replace into creature_involvedrelation (id, quest) values (91768, 40041);

delete from item_template where entry = 60141;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description) values (60141,1416,'Mistwing Horn',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'');

delete from creature_loot_template where entry = 8763 and item = 60141;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (8763,60141,-30,1,1,0,10);


delete from quest_template where entry = 40042;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (40041,40042,2,16,50,40,0,0,'Delivery for Bromley','A Dalaran wizard stopped by a few weeks ago believe it or not! I\'ve never met a wizard from Dalaran and his magic was impeccable, and I really mean it! He offered us some help with a few projects but asked for some supplies in return. I haven\'t had the means to get them to him yet, given all of the danger between me and the camp he is within up north of here.\n\nDo me a favor would you, run my delivery to Magus Bromley. You can find him to the northwest of Lake Mennar. He has a tent overlooking the Ruins of Eldarath just on the ridges there!','Deliver Gigno\'s Shipment to Magus Bromley in Azshara.','Hello there traveler, do you bring news from the outside world?','So Gigno finally delivered the shipment? Well I am pleased to recieve it at all, I hadn\'t expected it would arrive in some time with all of the... Trouble in the area.',60142,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60142,1,0,1000,54,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (91768, 40042);
replace into creature_involvedrelation (id, quest) values (91350, 40042);

delete from item_template where entry = 60142;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values (60142,7926,'Gigno\'s Shipment',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'Has a note attached to the top , readable pagetext:',50502);

delete from page_text where entry = 50502;
replace into page_text (entry, text, next_page) value (50502,'Hello there Bromley! I sent the bearer of this box with the supplies you needed! Sorry for taking so long, there is a lot of danger between you and us! Thanks again for the magical help you\'ve given us, you certainly advanced our projects!\n\nGigno Flaxwhisker of the Flaxwhisker Front.',0);


delete from quest_template where entry = 40043;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (40042,40043,2,16,50,40,0,0,'The Missing Robot','Before you return to Flaxwhisker Post I would ask you deliver a letter for me. It is about a robot that the Flaxwhisker post has been operating in the region for some time. I helped with its creation in detecting magic within Azshara and I spotted it on a trip to the Rethress Sanctum a few weeks back. It was hopelessly mired in some state of disrepair, broken and mindless.\n\nGigno would want to know at the least what happened to it. Deliver this letter to him $N and thank you again for the supplies.','Deliver the Letter for Gigno to Gigno Flaxwhisker.','You\'re back, splended, did he appreciate the supplies?','Magus Bromley has news about the Analyzor 53G?! Hand that note over at once!\n\n<The gnome would swipe the letter and begin to read>.\n\nWhy my Flaxwhisker!',60143,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60143,1,0,250,54,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (91350, 40043);
replace into creature_involvedrelation (id, quest) values (91768, 40043);

delete from item_template where entry = 60143;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values (60143,3023,'Letter for Gigno',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',50503);

delete from page_text where entry = 50503;
replace into page_text (entry, text, next_page) value (50503,'To Gigno.\n\nThanks for the supplies, it is good to hear you and your gnomes are in good health and still advancing the great field of science. I have news of your robot that I helped craft. Whilst I was visiting the Naga of the Rethress Sanctum I noticed it upon the coast. They have seemed to leave it alone, being that the robot is malfunctioning and inactive. I hope this information is helpful to you, and I wish you continued luck\n\nMagus Bromley , Kirin Tor.',0);


delete from quest_template where entry = 40044;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (40043,40044,2,16,50,40,0,0,'The Analyzation Chip','If the Analyzor 53G is still out there then this is great news! We spent so long on its Analyzation Chip that it would be almost impossible to recreate. We had the magic of Bromley the first time, and without it I could not replicate it entirely.\n\nThe Rethress Sanctum is located just east of here along the coast, it is inhabited by Naga who seem not the friendliest to us. I don\'t want to risk any of my crew in getting the Analyzation Chip! You will find it located just beneath the exhaust port of the inhibitor chamber on the main chassis at the back side, easy.','Retrieve the Analyzation Chip from Analyzor 53G near the Rethress Sanctum.','Have you got the Analyzation Chip, it must be recovered!','Analyzor 53G was destroyed?... I will miss him dearly, but we shall create a better one in the future, Analyzor 54G will rise from the ashes like- I was carried away. Thanks for getting the Analyzation Chip, you\'ve said months of work!',60144,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5650,54,200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (91768, 40044);
replace into creature_involvedrelation (id, quest) values (91768, 40044);

delete from item_template where entry = 60144;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values (60144,9636,'Analyzation Chip',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

delete from creature_loot_template where entry = 91775 and item = 60144;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (91775,60144,-100,1,1,0,10);

update creature_template set script_name = 'analyzor_53' where entry = 91775;
update creature_template set loot_id = 91775 where entry = 91775;


delete from quest_template where entry = 40045;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (40044,40045,2,16,50,40,0,0,'Lorie\'s Logbook','Now that we have the Analyzation Chip, I can focus on other matters! I\'d like you to speak with Lorie Gearwatch, she has been in charge of flights from Flaxwhisker Front! Our main flying machine hasn\'t been seen in weeks and I want to know who took the blasted thing and hasn\'t returned!\n\nYou\'ll find her outside, she should have the Log Book, or at the least know where it is!','Speak with Lorie Gearwatch about the Flight Logbook.','Hello there, how can I help you $r?','The Flight Log Book? Oh... I\'ve been so distracted I haven\'t even thought about it for a while now! The last one that has it was Dinkle Togpipe...',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,450,54,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (91768, 40045);
replace into creature_involvedrelation (id, quest) values (91769, 40045);


delete from quest_template where entry = 40046;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (40045,40046,2,16,50,40,0,0,'The Flight Logbook','Dinkle Togpipe, he was out at the landing pad far to the east on a small island.\n\nWe used that landing pad as a small refueling area and resting spot for pilots, we used to have them dispersed across the ocean near the very end of a Flight-Machine\'s fuel usage. It was possible in the past to get from Gnomeregan to Kalimdor with ease. But, I have a feeling that the landing pads are in a state of disrepair, we haven\'t heard much word in a long time from back home.\n\nIf you want the Flight Logbook, go and get it from Dinkle Togpipe stationed out there.','Travel to the Landing Pad in the east and obtain the Flight Logbook from Dinkle Togpipe, return the Flight Logbook to Gigno Flaxwhisker.','Have you gotten the Flight Logbook? It certainly took a while!','Dinkle? He\'s dead? Those blasted murlocs! I knew it would be trouble stationing him out there with only a rifle on that platform. Those higher ups at Gnomeregan said the lights should be enough to scare off the creatures, looks like they were wrong!',60145,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5650,54,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (91769, 40046);
replace into creature_involvedrelation (id, quest) values (91768, 40046);

delete from item_template where entry = 60145;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values (60145,1155,'Flight Logbook',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',50504);

delete from gameobject_template where entry = 2010809;
replace into gameobject_template values
(2010809, 0, 3, 23430, 'Gnomish Trunk', 0, 4, 1, 43, 2010809, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

delete from gameobject_loot_template where entry = 2010809;
replace into gameobject_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (2010809,60145,-100,1,1,0,10);

delete from page_text where entry = 50504;
replace into page_text (entry, text, next_page) value (50504,'Recon over Azshara 22.03 04:22-05:55\n\nRecon over Winterspring 01.04 14:33-15:03\n\nRecon over Blue Dragons in Azshara 06.04 15:22-15:51\n\nRecon over Icepoint Rock north of Winterspring 07.04 05:22-09:31\n\nTransfering supplies to Icepoint Rock 09.04 05:31-10:50\n\n13.04 05:12-09:20 Established base at Icepoint Rock north of Winterspring\n\nRecon over Winterspring 18.04 20:03-22:14\n\nFlight to Icepoint Rock 03.05 06:04-',0);