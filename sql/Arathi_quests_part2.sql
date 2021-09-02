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

