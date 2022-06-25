-- Ending Arc'Tiras
delete from quest_template where entry = 40427;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40427,2,5087,63,55,0,0,'Ending Arc\'Tiras','Many years ago the wizards of Stormwind discovered a large crystal that held an intense amount of magical energy. This crystal we named Arc\'Tiras, and stashed it deep within the Stormwind Vault after many mishaps with the unstable magic it emitted.\n\nLittle did we know this crystal, Arc\'Tiras had a mind of it\'s own.\n\nIt has driven the guards mad, and turned the Stormwind Vault into nothing more than corridors of madness. Our magic is enough to hold the crystal at bay, for now, but it needs to be destroyed, and for good.\n\nTravel into the Stormwind Vault, put an end to this madness.','Venture deep within The Stormwind Vault, find Arc\'tiras, and slay him for the good of Stormwind. When done, return to Pepin Ainsworth.','The longer Arc\'Tiras remains active, the more danger Stormwind lays within, we cannot have rumors spreading, this must be dealt with.','It is done, truly?\n\nWhy, thank you $N, you\'ve saved us a massive headache, and countless lives of this city. We have requisitioned a reward worthy of such feats from the treasury itself.\n\nPlease, take one, it is the least we can do.',0,0,0,0,0,0,0,0,93107,1,0,0,0,0,0,0,0,0,0,6500,72,500,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60624,1,60625,1,60626,1,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (80450, 40427);
replace into creature_involvedrelation (id, quest) values (80450, 40427);

replace into item_template values
 ('60624', '2', '18', 'Goldplated Royal Crossbow', '', '25607', '3', '0', '1', '168828', '42207', '15', '-1', '-1', '65',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '5', '3', '5',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3300', '0',
 '0', '86', '131', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '9141', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '2', '0', '0', '0', '75', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60625', '4', '4', 'Golden Gauntlets of Stormwind', '', '27190', '3', '0', '1', '45628', '11407', '10', '-1', '-1', '65',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '16', '3', '7',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '421', '0', '0', '0',
 '0', '0', '0', '15464', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '0', '0', '0', '45', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60626', '4', '1', 'Regal Goldthreaded Sash', '', '28649', '3', '0', '1', '46728', '11682', '6', '-1', '-1', '65',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '9', '6', '6',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '0', '0', '14047', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '30', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);