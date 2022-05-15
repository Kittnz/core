-- By Any Means Necessary I
delete from quest_template where entry = 40397;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40397,2,361,52,47,0,0,'By Any Means Necessary I','This forest used to be bristling with life, it was my home once, now nothing more than a twisted abomination, a ruin of what beauty once laid here. Those we once called brothers have played a big hand in this land\'s corruption.\n\nThe Satyr can be found all across Felwood now, lurking amongst the ruins, thinking of ways to further spread their corruption. I hate them, with every part of my being. I have killed many, and you will assist me in the slaughter.\n\nBring me 60 horns of the beasts, once you have retrieved them, I will know you are capable of what is to come.','Slay Satyr and collect 60 horns to fuel the bloodlust of Niremius Darkwind within Felwood.','I grow impatient, have you dispatched the mongrels?','You\'ve removed the taint of demonic influence of this world. Their vile schemes will not take fruition, take heart in that.',60532,60,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6125,69,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60710, 40397);
replace into creature_involvedrelation (id, quest) values (60710, 40397);

REPLACE INTO creature_template VALUES
(60710, 18648, 0, 0, 0, 'Niremius Darkwind', 'Demon Hunter', 0, 55, 55, 26000, 26000, 8000, 8000, 4121, 35, 3, 1, 1.14286, 0, 20, 5, 0, 1, 1, 571, 737, 0, 272, 1, 1150, 1265, 1, 0, 0, 0, 0, 0, 0, 0, 61.732, 84.8815, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 'npc_niremius');

set @equip_template = 20074; set @weapon_1 = 14882; set @weapon_2 = 0; set @creature = 60710;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @gossip_menu_id = 41096; set @magic_number = 60710;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'A foul darkness encroaches in these lands, growing ever more potent. It is up to us to stop the demonic taint.\n\nDo you have what it takes to stalk demons, and rid them from the world?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60532,2598,'Felwood Satyr Horn',12,1,2048,1,-1,-1,1,60,-1,-1,-1,-1,4,'',0);

REPLACE INTO creature_loot_template VALUES
(7106, 60532, -90, 0, 1, 1, 0),
(7109, 60532, -90, 0, 1, 1, 0),
(7110, 60532, -95, 0, 1, 1, 0),
(7105, 60532, -90, 0, 1, 1, 0),
(7107, 60532, -90, 0, 1, 1, 0),
(7111, 60532, -95, 0, 1, 1, 0),
(7108, 60532, -95, 0, 1, 1, 0),
(10648, 60532, -95, 0, 1, 1, 0);