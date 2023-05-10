-- Mastering the Formula III
delete from quest_template where entry = 40869;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40868,40869,2,1,14,6,512,0,'Mastering the Formula III','An idea has come to my mind, while you were busy helping! With these elements as a base, I have discovered that I require a more volatile aqua in the formula. With a more potent chemical reaction, it is theoretically possible to disperse the toxins from the air.$B$BNow that is compelling, isn\'t it?$B$BI have done the math, and all I require is a sample of Volatile Aqua.$B$BI have heard rumors of a rather hostile aqua elemental out near the Helm\'s Bed Lake in eastern Dun Morogh.','Gather a Volatile Aqua sample for Master Chemist Volterwhite at the Gnomeregan Reclamation Facility in Dun Morogh.','My work is almost complete, we are on the precipice of a great breakthrough here.','<Master Chemist Volterwhite looks upon the Volatile Aqua with a look of determination, beginning the synthesizing process at once.>$B$BStep back, this should only take a moment.$B$B<A smirk spreads across the gnome\'s face.>$B$BIt would appear that my theorizing has been succesful, for I have been able to replicate my design and expunge the radiation from the nominal air in my samples!$B$BWith your help my theory has been put to the test, and without that I am unsure where we would be. Now the real work can begin.$B$BFor your help, I have prepared a gift. Pick one, and may it serve you well.',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,4920,820,54,300,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61404,1,61405,1,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61436, 40869);
replace into creature_involvedrelation	(id, quest) values (61436, 40869);

replace into item_template values
 ('61404', '4', '0', 'Corrosion Resistant Ring', '', '23728', '2', '0', '1', '812', '203', '11', '-1', '-1', '15',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '1', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '21', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61405', '4', '0', 'Rust Resistant Ring', '', '24087', '2', '0', '1', '812', '203', '11', '-1', '-1', '15',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '1', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '21', '0', '0', '0',
 '0', '1', NULL);

-- Object 'Alpha Channel Valve' change greeting text to 'The large valve hisses steam with intensity.'
replace into broadcast_text (entry, Male_Text) values (30113, 'The large valve hisses steam with intensity.');
replace into npc_text (ID, BroadcastTextID0) values (30113, 30113);
-- Object 'Reserve Pump Lever' change greeting text to "An old lever with the following letters etched at the base$B$B'Reserve Pump Lever.'
replace into broadcast_text (entry, Male_Text) values (30114, 'An old lever with the following letters etched at the base$B$B\'Reserve Pump Lever.');
replace into npc_text (ID, BroadcastTextID0) values (30114, 30114);
