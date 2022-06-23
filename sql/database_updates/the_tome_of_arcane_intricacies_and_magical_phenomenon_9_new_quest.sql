-- The Tome of Arcane Intricacies and Magical Phenomenon IX
delete from quest_template where entry = 40425;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40425,2,5087,63,55,512,0,'The Tome of Arcane Intricacies and Magical Phenomenon IX','Long has it been rumored that the mystical ninth volume of the Arcane Intricacies and Magical Phenomenon has been stashed deep within the Stormwind Vault. So long has it been gone that it has almost become legend, the secret -lost- tome.\n\nWell, it is a secret no longer, and it needs to be recovered before some vile vagrant gets their hands on something so rare.\n\nWithin Stormwind Vault lays this book, it needs to be recovered so that I can complete my records of it.','Recover the Tome of Arcane Intricacies and Magical Phenomenon IX for Mazen Mac\'Nadir in Stormwind.','Have you delved within the depths of that accursed Vault, and recovered the rare tome? Or is it still collecting dust with chance of desecration?','My my... This is it, the rare volume! I never thought I would lay my eyes upon it!\n\nYou\'ve done us a great favor in getting this, and favors should always be repaid.\n\nOn behalf of the Academy of Arcane Arts and Sciences, I present you with this.',60621,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6500,72,200,0,0,0,0,0,0,0,0,0,60622,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (338, 40425);
replace into creature_involvedrelation (id, quest) values (338, 40425);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60621,1317,'Tome of Arcane Intricacies and Magical Phenomenon IX',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

REPLACE INTO gameobject_template VALUES
(2010891, 3, 32258, 'Arcane Intricacies and Magical Phenomenon', 0, 4, 1, 43, 2010891, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

delete from gameobject_loot_template where entry = 2010891;
replace into gameobject_loot_template values
(2010891,60621,-100,0,1,1,0);

replace into item_template values
 ('60622', '4', '0', 'Ring of the Academy', 'Rewarded on Behalf of the Academy of Arcane Arts and Sciences', '35423', '3', '0', '1', '80576', '20144', '11', '-1', '-1', '65',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '10', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '23727', '1', '0', '0', '-1', '0', '-1', '9345', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);