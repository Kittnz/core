-- To Heal a Soul
delete from quest_template where entry = 40751;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40750,40751,2,5121,52,48,0,0,'To heal a Soul','<A female voice seems to penetrate through your mind.>\n\nThe beast seeks to end... everything that I am. As I prepared the ritual site after years of work, one of the naga slew me, and my bones were taken. Reclaim my bones, from the slithering foe, and find someone who can help me.','Gather the Senshi Bones from the Wave Crest Explorers, once collected, bring the bones to Aneka Konko at Ratchet.','You have returned...','The bones of one my kin you say, haunted by Kami? The thing we must do is burn the bones, and free the curse.\n\n<Aneka Konko lights a small fire, burning the bones within them.> You have helped one of my kin, redeemed her in the eyes of the kami, cast aside her dishonor, and saved her soul. Her spirit is free to be reborn once more. Take this as a symbol of my gratitude.',60990,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,5875,1010,250,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61069,1,61070,1,0,0,0,0, 0,0,'');

replace into gameobject_questrelation  (id, quest) values (2010969, 40751);
replace into creature_involvedrelation (id, quest) values (90983,	40751);

update creature_template set script_name = 'npc_aneka_konko' where entry = 90983;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60990,940,'Senshi Bones',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(61129, 60990, -15, 0, 1, 1, 0);

REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `phase_quest_id`, `script_name`) VALUES
(2010970, 2, 7289, 'Incense Brazier', 0, 32, 0.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into item_template values
 ('61069', '4', '3', 'Kabuto of the Senshi', '', '66309', '2', '0', '1', '67928', '16982', '1', '-1', '-1', '59',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '17', '3', '12',
 '7', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '259', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '60', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61070', '4', '4', 'Kabuto of the Protector', '', '66309', '2', '0', '1', '55928', '13982', '1', '-1', '-1', '59',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '21', '3', '7',
 '4', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '461', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '0', '0', '0', '70', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);

-- King Morogo Thunderfoot!
delete from quest_template where entry = 40785;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40785,2,361,60,53,512,0,'King Morogo Thunderfoot!','A bounty has been placed on the leader of apes! To all those willing to fight for the safety of Tel\'Abim, and Tel Co. itself, join together and hunt down King Morogo Thunderfoot, last seen at the heights of Highvale Rise.\n\n(We would suggest working together, that monkey really -is- big.','Slay Morogo Thunderfoot and collect his \'Thunderfoot\', and claim your reward with Sneel Fizzwack at Tel Co. Basecamp on Tel\'Abim when complete.','So, whatcha need bub?','My my, that is one MASSIVE monkeys foot, this wouldn\'t be Morogo Thunderfoot\'s rear paw now, would it?\n\n<Sneel Fizzwack blinks at you blankly.>\n\nI never expected anyone to actually claim a reward when we put that bounty board up, nor did I expect anyone to be crazy enough to go through with it!\n\n Look, I can find something, here.',61090,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 25000,6500,0,0,0,0,0,0,0,0,0,0,0, 61091,1,61092,1,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into gameobject_questrelation	(id, quest) values (2010972, 40785);
replace into creature_involvedrelation	(id, quest) values (61113  , 40785);

update creature_template set script_name = 'npc_baron_telraz' where entry = 61113;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61090,1496,'Morogo\'s \'Thunderfoot\'',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(61098, 61090, -100, 0, 1, 1, 0);

replace into item_template values
 ('61091', '2', '10', 'Telraz\'s Jeweled Staff', '', '5928', '2', '0', '1', '224932', '56233', '17', '-1', '-1', '62',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2700', '0',
 '0', '100', '155', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '10', '0',
 '0', '0', '0', '17871', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '2', '2', '0', '0', '85', '0', '0', '0', '0', '30', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61092', '4', '0', 'The Golden Tel Co. Coin', 'It\'s special, we promise.', '13849', '2', '0', '1', '100000', '25000', '2', '-1', '-1', '62',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '13669', '1', '0', '0', '-1', '0', '-1', '13679', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '30', '0', '0', '0',
 '0', '1', NULL);

-- In Foreign Hearts
delete from quest_template where entry = 40786;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40786,2,361,54,49,0,0,'In Foreign Hearts','The very forest itself is twisted, corrupted, all around us it festers, and lingers. The wildlife has been cursed to live such a woeful existance, teetering on the brink of madness, and rage. All the while enthralled by the great evil that poisons their hearts.\n\nI have been studying the wildlife here for some time, but I need more samples. As of recently I have discovered of a natural phenomenon taking place in Tel\'Abim, the enragement of the wildlife there has traveled even to this druids ears.\n\nI need to know more for a potential link and for that, I require hearts of the enraged basilisk, bring me five, I will make good use of the samples you bring.','Bring 5 Twisted Basilisk Hearts from Gravehide Basilisks in Tel\'Abim to Golhine the Hooded at Talonbranch Glade in Felwood.','Has your journey made progress yet?','Strange, these samples are not twisted by foreign interference, or by the hands of foul magic, but instead deformed through some primalistic rage.\n\nThere could perhaps be a link here that I am not seeing, but I am doubtful that these can be connected to what is happening here in Felwood.\n\nStill, I thank you for ruling out such a possibility.',61093,5,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,5650,69,350,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (9465, 40786);
replace into creature_involvedrelation	(id, quest) values (9465, 40786);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61093,3320,'Twisted Basilisk Heart',12,1,2048,1,-1,-1,1,5,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(61092, 61093, -25, 0, 1, 1, 0);

-- To Hunt The Hunter
delete from quest_template where entry = 40787;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40787,2,361,57,53,512,0,'To Hunt The Hunter','Ten long years ago, I was betrayed by close kin, a fellow Demon Hunter, one that I shared blood, and bread. He has returned to Felwood, his presence, and the presence of those he brings with him have already tainted what left there was to blemish in these lands.\n\nI have many grievances with the Demon Hunter known as Faladar Starsplinter, but most importantly is his thieving of a powerful artifact, one that is my namesake. The Darkwind Star was passed down to me from generations, holding a great power within. I need this artifact recovered from the cur, and I will require your aid to gain it.\n\nYou can find Faladar Starsplinter at the Shrine of the Betrayer, located north west of Bloodvenom Falls, and south of Irontree Woods.\n\nHunt him, and reclaim my rightful prize.','Slay Faladar Starsplinter, and recover the Darkwind Star for Niremius Darkwind in Felwood.','Each second you delay, is another second the traitor Faladar has to achieve his vile schemes.','You have done it, you have reclaimed my birthright.\n\n<Niremius Darkwind seems lost in the power of the Darkwind Star, his eyes glowing with deep energy.>\n\nMany long years it has been without the star at my side, and now, it is here, where it rightfully belongs. You have done well, young one. I have prepared a reward for your efforts, one worthy of such assistance.',61094,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,6250,0,0,0,0,0,0,0,0,0,0,0, 61095,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (60710, 40787);
replace into creature_involvedrelation	(id, quest) values (60710, 40787);

update quest_template set type = 1 where entry = 40787;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61094,36595,'Darkwind Star',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(61164, 61094, -100, 0, 1, 1, 0);

replace into item_template values
 ('61095', '4', '0', 'Boon of Niremius', '', '25048', '2', '0', '1', '120000', '30000', '12', '-1', '-1', '60',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '0',
 '0', '5', '0', '8815', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '30', '0', '0', '0',
 '0', '1', NULL);

-- Heavy Earthen Cores
delete from quest_template where entry = 40788;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40788,2,618,57,53,512,0,'Heavy Earthen Cores','Hey there, you wouldn\'t mind lending a hand would you? We conduct all sorts of research here in Everlook, and where theres research, theres coin to be earned. I had this side gig going on with a shipment from Tel\'Abim for a while now, but I haven\'t heard diddly-nothing, and I got a client that\'s been waiting around.\n\nYou mind being, the third party here and clearing up this issue for me? I\'ll toss in some complimentary food or drink on the house. All I need you to do is head to Tel\'Abim far to the south of here, and find some of those Angry rock elemental types, they contain Heavy Earthen Cores, its those I need, eight of em.\n\nMake it lickity split would you?','Collect 8 Heavy Earthen Core from the Agitated Rock Elementals on Tel\'Abim for Innkeeper Vizzie at Everlook in Winterspring.','Hey there outrider! You make that trip to Tel\'Abim yet?','Would you look at that! Pristine too, nice work, excellent work even. My client was going to get a bit tight and upset with me if I didn\'t pull through, so you came in clutch.\n\nHere, as I promised.',61096,8,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,5450,577,350,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 8952,10,8766,10,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (11118, 40788);
replace into creature_involvedrelation	(id, quest) values (11118, 40788);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61096,18107,'Heavy Earthen Core',12,1,2048,1,-1,-1,1,8,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(61093, 61096, -65, 0, 1, 1, 0);

REPLACE INTO creature_template VALUES
(61190, 18967, 1438, 0, 0, 0, 'Dutch Haveshine', 'Exported Armor & Weapons', 0, 30, 30, 1002, 1002, 0, 0, 1200, 1693, 7, 1, 1.14286, 0, 20, 5, 0, 0, 1, 43, 53, 0, 122, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 44.616, 61.347, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 44, 62, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @gossip_menu_id = 41332; set @magic_number = 61190;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Looking for wares from across the south seas are ye?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

-- The Deeds of Paladin Danuvis
delete from quest_template where entry = 40789;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40789,2,17,15,5,0,0,'The Deeds of Paladin Danuvis','It has been a long, and exhausting trip, I have fought many battles, and waged many wars. I have yearned to see the Cathedral in Stormwind, I have heard tales of its rebuilding, when I heard the word I was to come here, rather than stay at the Embassy at Stormwind I will not lie to say it hurt my faith, for I fear I may not see it in the end of all this.\n\nIn Kul Tiras, the light is not as much a pillar as it is in Stormwind, and Lordaeron. Places where the tradition of the faith had been long established, and founded.\n\nI would still like to pay homage to the Cathedral, and I ask you, outsider to do it for me. Bring this tome, with all of my deeds to the Cathedral of Stormwind, and let it be recorded, lest I fall on this forsaken edge of the western world.','Bring The Deeds of Paladin Danuvis to the Cathedral in Stormwind.','Yes?','This book comes from a Kul Tiran Paladin you say?\n\n<Bishop Farthing begins to thumb through the pages>\n\nNo records or accountings by other members of the faith, no checks? I must say, they do things different on that island, but this book shall be recorded none the less, thank you for bringing it.',61097,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61097,1, 0,850,1011,300,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (60902, 40789);
replace into creature_involvedrelation	(id, quest) values (1212 , 40789);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61097,1103,'The Deeds of Paladin Danuvis',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

-- Kul Tiran Provisions: Food
delete from quest_template where entry = 40790;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40790,2,17,16,10,0,0,'Kul Tiran Provisions: Food','You there, RECRUIT!\n\nI don\'t see you wearing your tabard, what in- wait a second. What are you doing here $r, do you not see that we Kul Tirans are at a war?\n\nBah, why don\'t you make yourself useful, we are going to be needing all the provisions we can account for, perhaps you can find some spare food to feed some bellies for a few extra nights.\n\nEach day we keep the Horde at bay, is another day you can sleep safe at night. How about some Kodo Meat from the beasts in the Barrens? The horde use the beasts as pack mules, fighting beasts, and breed them for food, their heavy flanks should serve well to feed a few squadrons.','Collect 5 Kodo Meat from wild Kodo\'s in the Barrens for Deckmaster Darkhollow at Anchor\'s Edge in the Barrens.','You get that food yet maggot?!','Well, look at that, not even part of the Old Alliance, and still making yourself useful as a $r. Perhaps you do have it cut out to be part of the navy after all.',5467,5,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,1200,1011,300,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (60900, 40790);
replace into creature_involvedrelation	(id, quest) values (60900, 40790);

-- Kul Tiran Provisions: Special Goods
delete from quest_template where entry = 40791;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40790,40791,2,17,16,10,512,0,'Kul Tiran Provisions: Special Goods','Nice work collecting that food recruit, you\'ve done good work, even if you\'re not apart of our navy. If you\'re still looking to help out around here, I do have one last thing I need.\n\nYou see, as a Deckmaster, it is my job to secure, and guarentee supplies for the boat, and since we are docked here for some time, I called in a few favors that just need to be picked up.\n\nDown in Ratchet I have an order waiting for a barrel of Gunpowder, grab it for me, it should be tucked away on the left side of the bank there. Lastly, head to Theramore, it is a place that still holds many loyal allies, at the dock, there should be some docked ships, explore them, and find a crate stamped with a green anchor, bring that to me as well.','Collect the Smuggled Gunpowder from Ratchet and the Smuggled Procurements from Theramore for Deckmaster Darkhollow at Anchor\'s Edge in the Barrens.','So, you had any luck yet?','Well, I was right to trust my hands in you. Perhaps not all is so bad in this \'New Alliance\' afterall, or so I was believed to think you were all just too lazy to work on behalf of this war.\n\nYou\'ve done well, and for your hard work, you\'ve earned this commendation, wear it with pride soldier.',61098,1,61099,1,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,1250,1011,300,0,0,0,0,0,0,0,0,0, 61100,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (60900, 40791);
replace into creature_involvedrelation	(id, quest) values (60900, 40791);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61098,7921,'Smuggled Gunpowder',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0),
(61099,7926,'Smuggled Procurements',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

REPLACE INTO gameobject_template VALUES
(2010978, 3, 23262, 'Smuggled Gunpowder', 0, 4, 1, 43, 2010978, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(2010979, 3, 24106, 'Smuggled Procurements', 0, 4, 1, 43, 2010979, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template values
(2010978,61098,-100,0,1,1,0),
(2010979,61099,-100,0,1,1,0);

replace into item_template values
 ('61100', '4', '0', 'Deckmaster\'s Commendation', 'In service to the Kul TIran Navy.', '26389', '2', '0', '1', '3400', '850', '12', '-1', '-1', '25',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '9140', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '21', '0', '0', '0',
 '0', '1', NULL);

update creature_template set script_name = 'npc_deckmaster_darkhollow' where entry = 60900;

-- The Power of Aqua
delete from quest_template where entry = 40792;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40792,2,17,25,16,0,0,'The Power of Aqua','It has been a long, and end extremely arduous trip for all of us. For many long months I have been making due but my stocks, and supplies are limited, what is worse, is my pool of magic is dwidling without a source to commune with the elements of water.\n\nIf I am to reclaim my powers, and guide the fleet back to Kul Tiras once this conflict is over, I will need assistance from the elementals themselves.\n\nTo the north west is a foreign land called Ashenvale, I have heard rumors of enraged, and befouled elementals of water around the Mystral Lake near the regions heart. Head there, and collect for me a Refined Aqua Core.\n\nDo not fret if this tasks takes some time, it will only come from the most pure of elementals.','Collect a Refined Aqua Core from the water elementals of Ashenvale for Aquamancer Shaleborn at Anchor\'s Edge in the Barrens.','Has it been recovered?','',61101,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,1850,1011,300,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (60899, 40792);
replace into creature_involvedrelation	(id, quest) values (60899, 40792);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61101,26772,'Refined Aqua Core',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(3917, 61101, -20, 0, 1, 1, 0);

-- The Dragonmaw Conflict
delete from quest_template where entry = 40793;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40793,2,17,28,15,0,0,'The Dragonmaw Conflict','Kul Tiras is waging a war against the enemies of the Horde, there is no place for an outsider such as yourself in this conflict, but I have purpose for you outside of Anchor\'s Edge.\n\nDuring the Second War, Kul Tiras served, and fought hard against the orcish hordes, our main rival in this conflict were the Dragonmaw, a ruthless killing machine of vile, and disgusting Blackbloods, with only one concern in their vile minds. To kill.\n\nIt was on the islands at sea that my father was slain, shipwrecked by Dragonmaw vessel, I desire revenge, and you shall give it to me.\n\nI have heard rumors from friends, and sources in Menethil Harbor of their presence still lingering in the Wetlands, head there, and bring me twenty of their heads.','Bring 20 Dragonmaw Heads from Dragonmaw Orcs in the Wetlands to Lieutenant Alverold at Anchor\'s Edge in the Barrens.','Have you fought our enemies $r?','You\'ve done well, but no amount of bloodshed on their vile kind will ever ease my soul.\n\nI thank you anyway $N, for ridding this world of such an evil.',61102,20,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,2000,1011,300,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (60901, 40793);
replace into creature_involvedrelation	(id, quest) values (60901, 40793);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61102,1310,'Dragonmaw Head',12,1,2048,1,-1,-1,1,20,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(1034, 61102, -20, 0, 1, 1, 0),
(1035, 61102, -20, 0, 1, 1, 0),
(1036, 61102, -20, 0, 1, 1, 0),
(1037, 61102, -20, 0, 1, 1, 0),
(1038, 61102, -20, 0, 1, 1, 0),
(1057, 61102, -20, 0, 1, 1, 0),
(2102, 61102, -20, 0, 1, 1, 0),
(2103, 61102, -20, 0, 1, 1, 0);

-- The Scales of War
delete from quest_template where entry = 40794;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40794,2,17,30,15,0,0,'The Scales of War','Even though the conflict has only just begun, I suspect we may need more fresh legs to land upon the shores in the near future. The Expeditionary Fleet was much larger than what you are seeing here, we are but a portion of the expected reinforcements, with the rest returning to Kul Tiras, and some even stationed with Vice Admiral Renhoff.\n\nIf I am to win the conflict, or at the least, secure a westward bulwark against the clutches of our most hated enemy, than I will need help. Vice Admiral Renhoff has been a long time friend of mine, and he holds much sway within Kul Tiras, I need you to deliver this letter to him, perhaps he can make sense of it all, and usher us in more support.','Bring the Sealed Kul Tiran Letter to Vice Admiral Renhoff at the Kul Tiran Embassy at the Stormwind Harbor.','What is it, can I help you?','<The Vice Admiral would eye you over, before reading the letter.>\n\nI see, he requests aid so soon?\n\n <Renhoff lets out a slight exhale of displeasure.>\n\nThe Admirals will not be pleased with such worrying letters being exchanged, you had best forget you were here, and not spread such news you heard, understood?\n\nI will send a response to Kul Tiras accordingly, and return my news to Alverold when word arrives, thank you for your service, mainlander.',61103,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61103,1, 2500,1200,1011,500,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (60901, 40794);
replace into creature_involvedrelation	(id, quest) values (60934, 40794);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61103,3048,'Sealed Kul Tiran Letter',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

update quest_template set requiredminrepfaction = 1693, requiredminrepvalue = 3000 where entry = 40794;