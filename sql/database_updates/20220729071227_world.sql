-- From Stomach to Heart
delete from quest_template where entry = 40535;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40535,2,215,7,5,0,0,'From Stomach to Heart','May the Earthmother bless the path you\'re walking young one, welcome to Redcloud Roost, where we keep the wyverns of Highperch which are the most akin to forge a bond with the members of the Horde.\n\nWyvern are intelligent and generous beasts, $C, since long ago our warchief and chieftain have sought their aid. They have been an invaluable ally to our ways. Many would like to take to the skies with them one day, and if you wish to do so yourself, I will teach you the way.\n\nFirst, you must listen to their stomach and bribe it in a way that it will soften their hearts. Meat is the way to go, always. For this time I\'d advise grabbing the leg meat of adult plainstriders.\n\nYou\'d simply have to hunt just one of these majestic birds, or would you? Depending on how harsh you hit them, you might not be able to harvest their meat.\n\nReturn with merely two pieces, I am eager to see you prove patience or creativity.','','If you fail to feed your wyvern, it will one day feast upon you.','You return, and with the meat. By which means you\'ve decided to obtain it, I will not question.\n\nNow, onto the real task.',7097,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,215,525,81,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60818, 40535);
replace into creature_involvedrelation (id, quest) values (60818, 40535);

-- Bond Through Battle
delete from quest_template where entry = 40536;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40535,40536,2,215,7,5,0,0,'Bond Through Battle','Now that you have the meat, it is time for the actual test. This will prove if you are capable enough to be gifted a wyvern cub which will become your most trusted companion.\n\nTake this meat to Sunchaser, he is one of the Wyvern Alpha and my most trusted friend. Note that this will not be a gift, but a challenge. Presenting yourself in front of the alpha with the hunted game is disrespectful, Sunchaser will know you seek one of his cubs and by presenting the meat you will imply that you can be as much of a guardian as he can, and he will test that himself.\n\nHe will not kill you, probably.','','All who seek to become windriders must first challenge an alpha.','Ah, blessed be the ancestors, you truly have potential.\n\nI haven\'t seen old Sunchaser pushed back like that for a long long time, you have my blessing, and his.\n\nOne final task remains.',0,0,0,0,0,0,0,0,60382,1,0,0,0,0,0,0,0,0,0,730,81,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Present the meat to Sunchaser');

replace into creature_questrelation (id, quest) values (60818, 40536);
replace into creature_involvedrelation (id, quest) values (60818, 40536);

REPLACE INTO creature_template VALUES (60382, 328, 0, 0, 0, 'quest_40536_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

update creature_template set script_name = 'npc_sunchaser', npc_flags = 3 where entry = 60821;

-- Eager Little One
delete from quest_template where entry = 40537;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40536,40537,2,215,8,5,512,0,'Eager Little One','My friend, you are ready to receive your own eager wyvern cub. But for it to accept you as its new companion you must bring the wyvern a gift. For many years the wyvern and the harpies battled on the wind for domination over the skies.\n\nProve yourself an ally to the cub, bring him the most beautiful feather of a harpy\'s wing. This might prove difficult but understand that if the feather isn\'t chosen both by fate and your own consciousness you will never be able to appeal to him.\n\nThe Windfury Harpies can be found around Mulgore, slay them and bring me back a feather you think will please your cub.','','Domination over the sky, my hooves are shaking.','Gorgeous, just gorgeous.\n\nThe Earthmother truly had blessed this harpy with beautiful feathers, a pity her life ended. Yet, as the cycle of life and death continues one must always remember that our actions always lead to a greater purpose.\n\n<Tokala ties the feather in the wyvern cub\'s hair. The cub eagerly makes its way into your backpack, ready to face the world together with you.>',60769,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,250,750,81,150,0,0,0,0,0,0,0,0,0,60770,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60818, 40537);
replace into creature_involvedrelation (id, quest) values (60818, 40537);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60769,21370,'Pristine Harpy Feather',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(2962,60769,-35,1,1,1,0),
(2963,60769,-35,1,1,1,0);

replace into item_template values
 ('60770', '0', '0', 'Wyvern Roost Hatchling', 'Even in this tiny form, the wyvern is fierce.', '18047', '1', '0', '1', '1000', '250', '0', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '49521', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

-- Peculiar Won't Even Cut It
delete from quest_template where entry = 40538;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,rewmoneymaxlevel,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40538,2,46,52,47,0,0,'Peculiar Won\'t Even Cut It','One of our scouting parties took this worg with them. They had to face some whelps, and they claim that some of those are as hard as the very metal we shape and forge. I would never mistrust my clan, $N. But I will not endanger the scouting party either, they are not cut for this kind of work. I can\'t even send this worg with you, it is wounded and seems too afraid to return, it must be reshaped.\n\nI urge you to go and find these peculiar dragonlings and bring an end to them. My clansmen say they can be found to the east of the Steppes, where the dark irons that assumed the name of Hateforge have been roaming.\n\nKill them and find out what kind of trickery these dwarves have been up to.','Slay 8 Peculiar Dragonlings for Worg Mistress Katalla in Karfang Hold.','What have you found out?','So they were not real whelps? But constructs made of metal by someone that bothered to put their name on each and every one of them? Convenient for us, we now know who to kill.',0,0,0,0,0,0,0,0,60713,8,0,0,0,0,0,0,0,0,0,5100,72,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,12300,0,0,'');

replace into creature_questrelation (id, quest) values (60775, 40538);
replace into creature_involvedrelation (id, quest) values (60775, 40538);

-- Hunting Engineer Figgles
delete from quest_template where entry = 40539;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,rewmoneymaxlevel,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40538,40539,2,5098,55,48,0,0,'Hunting Engineer Figgles','Engineer Figgles.\n\nThis creature has the ego of Nefarian himself. Who would be arrogant enough to put their own name on everything they\'ve ever created.\n\nAlas, this is in our favor. I am not certain what the dark irons plan with these whelpings but we must definitely stop them.\n\nAlthough we have nowhere, to begin with, I am certain, that a valiant warrior such as yourself who has earned the respect of my clan will surely be able to find this Figgles.\n\nGo with the worg\'s swiftness, and may the blood in your veins burn with the rage of a thousand lava pools.','Kill Engineer Figgles in Hateforge Quarry for Worg Mistress Katalla.','Did you end him?','The Dark Irons have a new quarry? What were they even digging? Not that it matters since you\'ve put an end to it, I must however report to Karfang.\n\nI\'ve managed to collect a few things from the willing clan members that\'d see you rewarded for your efforts, but you can only pick one. Such is the way of the Blackrock Clan.',0,0,0,0,0,0,0,0,60736,1,0,0,0,0,0,0,0,0,0,5900,72,300,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60771,1,60772,1,60773,1,60774,1,14160,0,0,'');

replace into creature_questrelation (id, quest) values (60775, 40539);
replace into creature_involvedrelation (id, quest) values (60775, 40539);

replace into item_template values
 ('60771', '4', '1', 'Pyrehand Gloves', '', '16657', '2', '0', '1', '30564', '7641', '10', '-1', '-1', '58',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '7', '7', '2',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '45', '0', '0', '0',
 '0', '0', '0', '23727', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '25', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60772', '4', '0', 'Fur of Navakesh', '', '23084', '2', '0', '1', '44424', '11106', '16', '-1', '-1', '58',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '6', '14', '5', '3',
 '3', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '38', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60773', '2', '4', 'Blackrock Authority', '', '5208', '2', '0', '1', '153620', '38405', '13', '-1', '-1', '58',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2700', '0',
 '0', '61', '127', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '9142', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '2', '3', '0', '0', '75', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60774', '4', '3', 'Girdle of Galron', '', '7932', '2', '0', '1', '43060', '10765', '6', '-1', '-1', '58',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '11', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '174', '0', '0', '0',
 '0', '0', '0', '21431', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '5', '0', '0', '0', '35', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);
-- ON LIVE ADD THE FOLLOWING ITEM 60572 TO THE FOLLOWING NPCS DROP TABLES WITH DROP CHANCE OF 0.05% 60830, 60831, 60716.
update creature_template set loot_id = 60716 where entry = 60716;
update creature_template set loot_id = 60830 where entry = 60830;
update creature_template set loot_id = 60831 where entry = 60831;
replace into creature_loot_template values
(60716,60572,0.05,1,1,1,0),
(60830,60572,0.05,1,1,1,0),
(60831,60572,0.05,1,1,1,0);
-- Band of Calamity Fix and Revert Accidental Change on Item.
update item_template set max_count = 1, spellid_1 = 48037, stat_value1 = 0 where entry = 60547;
update item_template set spellid_1 = 7597, stat_value1 = 8 where entry = 80547;
-- Change drop chance of Blackrock Head to 100% for the quest 'Raider's Revenge'.
update creature_loot_template set chanceorquestchance = -100 where item = 60716;
-- Update gossir for NPC 92196.
update broadcast_text set male_text = 'Walk softly, like a calm leaf to the winds of fate. It is never a good idea to let yourself fade away, each moment we have can be used to improve, and hone our skills. Should you even waste but a moment, it could be the difference between life... and death on the battlefield.' where entry = 92196;
-- ADD TO HIGH FOREMAN BARGUL BLACKHAMMER WITH A 20% CHANCE
replace into item_template values
 ('60775', '9', '0', 'Manual: Intervene', 'Contains teachings on ways to prevent harm to far away allies.', '1134', '4', '0', '1', '200000', '50000', '0', '1', '-1', '50',
 '50', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '47277', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
replace into creature_loot_template values
(60735,60775,20,0,1,1,0);
-- *Not an emergency* Underground copper node #1721.
update gameobject set position_z = 23 where guid = 5225;
-- Dmg fix for creature 91833.
update creature_template set dmg_min = 100, dmg_max = 112 where entry = 91833;
-- Loot table for creature 91833.
REPLACE INTO creature_loot_template VALUES
(91833, 1529, 0.02, 0, 1, 1, 0),
(91833, 1645, 0.02, 0, 1, 1, 0),
(91833, 1685, 0.02, 0, 1, 1, 0),
(91833, 1708, 0.02, 0, 1, 1, 0),
(91833, 1711, 0.02, 0, 1, 1, 0),
(91833, 1725, 0.02, 0, 1, 1, 0),
(91833, 2290, 0.02, 0, 1, 1, 0),
(91833, 2772, 0.02, 0, 1, 1, 0),
(91833, 2838, 0.02, 0, 1, 1, 0),
(91833, 3010, 15.1718, 0, 1, 1, 0),
(91833, 3357, 0.02, 0, 1, 1, 0),
(91833, 3771, 0.02, 0, 1, 1, 0),
(91833, 3827, 0.02, 0, 1, 1, 0),
(91833, 3832, 0.02, 0, 1, 1, 0),
(91833, 3858, 0.02, 0, 1, 1, 0),
(91833, 3864, 0.0892, 0, 1, 1, 0),
(91833, 3867, 0.02, 0, 1, 1, 0),
(91833, 3868, 0.02, 0, 1, 1, 0),
(91833, 3914, 0.02, 0, 1, 1, 0),
(91833, 3927, 0.02, 0, 1, 1, 0),
(91833, 4100, 0.02, 0, 1, 1, 0),
(91833, 4101, 0.02, 0, 1, 1, 0),
(91833, 4102, 0.04, 0, 1, 1, 0),
(91833, 4544, 0.02, 0, 1, 1, 0),
(91833, 4601, 0.02, 0, 1, 1, 0),
(91833, 4602, 0.02, 0, 1, 1, 0),
(91833, 4636, 0.1339, 0, 1, 1, 0),
(91833, 4637, 0.12, 0, 1, 1, 0),
(91833, 5498, 0.02, 0, 1, 1, 0),
(91833, 5500, 0.02, 0, 1, 1, 0),
(91833, 5569, 35.8768, 0, 1, 1, 0),
(91833, 5774, 0.02, 0, 1, 1, 0),
(91833, 5974, 0.02, 0, 1, 1, 0),
(91833, 7084, 0.02, 0, 1, 1, 0),
(91833, 7090, 0.02, 0, 1, 1, 0),
(91833, 7909, 0.16, 0, 1, 1, 0),
(91833, 7910, 0.06, 0, 1, 1, 0),
(91833, 7912, 0.02, 0, 1, 1, 0),
(91833, 7971, 0.04, 0, 1, 1, 0),
(91833, 7973, 35.8768, 0, 1, 1, 0),
(91833, 7992, 0.02, 0, 1, 1, 0),
(91833, 8364, 0.02, 0, 1, 1, 0),
(91833, 8386, 0.02, 0, 1, 1, 0),
(91833, 8831, 0.02, 0, 1, 1, 0),
(91833, 10300, 0.02, 0, 1, 1, 0),
(91833, 10301, 0.02, 0, 1, 1, 0),
(91833, 10315, 0.02, 0, 1, 1, 0),
(91833, 10603, 0.02, 0, 1, 1, 0),
(91833, 10605, 0.02, 0, 1, 1, 0),
(91833, 10606, 0.02, 0, 1, 1, 0),
(91833, 11202, 0.02, 0, 1, 1, 0),
(91833, 12206, 36.0107, 0, 1, 1, 0),
(91833, 13926, 0.02, 0, 1, 1, 0),
(91833, 17057, 36.9032, 0, 1, 1, 0),
(91833, 30025, 0.5, 0, -30025, 1, 0),
(91833, 30026, 0.01, 0, -30026, 1, 0),
(91833, 30027, 0.5, 0, -30027, 1, 0),
(91833, 30028, 0.01, 0, -30028, 1, 0),
(91833, 30029, 0.5, 0, -30029, 1, 0),
(91833, 30030, 0.01, 0, -30030, 1, 0),
(91833, 30031, 0.5, 0, -30031, 1, 0),
(91833, 30033, 0.5, 0, -30033, 1, 0),
(91833, 30034, 0.01, 0, -30034, 1, 0),
(91833, 30035, 0.0025, 0, -30035, 1, 0);
-- Bengal Tigers sometimes give nothing when skinned, should always give leather.
update skinning_loot_template set chanceorquestchance = 2.5 where entry = 91826 and item = 8169;
update skinning_loot_template set chanceorquestchance = 5 where entry = 91826 and item = 8171;
update skinning_loot_template set chanceorquestchance = 44 where entry = 91826 and item = 4304;
update skinning_loot_template set chanceorquestchance = 48.5 where entry = 91826 and item = 8170;
-- Bengal Matriarch loot table.
REPLACE INTO creature_loot_template VALUES
(91826, 1645, 0.04, 0, 1, 1, 0),
(91826, 1685, 0.02, 0, 1, 1, 0),
(91826, 1710, 0.02, 0, 1, 1, 0),
(91826, 2289, 0.02, 0, 1, 1, 0),
(91826, 3356, 0.04, 0, 1, 1, 0),
(91826, 3358, 0.02, 0, 1, 1, 0),
(91826, 3395, 0.02, 0, 1, 1, 0),
(91826, 3827, 0.02, 0, 1, 1, 0),
(91826, 3858, 0.02, 0, 1, 1, 0),
(91826, 3914, 0.06, 0, 1, 1, 0),
(91826, 3927, 0.04, 0, 1, 1, 0),
(91826, 3928, 0.02, 0, 1, 1, 0),
(91826, 4100, 0.02, 0, 1, 1, 0),
(91826, 4101, 0.02, 0, 1, 1, 0),
(91826, 4338, 0.02, 0, 1, 1, 0),
(91826, 4580, 66.73, 0, 1, 1, 0),
(91826, 4581, 27.4972, 0, 1, 1, 0),
(91826, 4599, 0.02, 0, 1, 1, 0),
(91826, 4608, 0.02, 0, 1, 1, 0),
(91826, 4638, 0.1139, 0, 1, 1, 0),
(91826, 6149, 0.02, 0, 1, 1, 0),
(91826, 7909, 0.038, 0, 1, 1, 0),
(91826, 7910, 0.1139, 0, 1, 1, 0),
(91826, 7911, 0.04, 0, 1, 1, 0),
(91826, 7912, 0.14, 0, 1, 1, 0),
(91826, 7989, 0.02, 0, 1, 1, 0),
(91826, 7993, 0.02, 0, 1, 1, 0),
(91826, 8146, 8.7353, 0, 1, 1, 0),
(91826, 8389, 0.02, 0, 1, 1, 0),
(91826, 8390, 0.04, 0, 1, 1, 0),
(91826, 9295, 0.02, 0, 1, 1, 0),
(91826, 9298, 0.02, 0, 1, 1, 0),
(91826, 10320, 0.04, 0, 1, 1, 0),
(91826, 10604, 0.02, 0, 1, 1, 0),
(91826, 11208, 0.02, 0, 1, 1, 0),
(91826, 11225, 0.02, 0, 1, 1, 0),
(91826, 15731, 0.02, 0, 1, 1, 0),
(91826, 24028, 0.01, 0, -24028, 1, 0),
(91826, 30029, 0.5, 0, -30029, 1, 0),
(91826, 30043, 0.5, 0, -30043, 1, 0),
(91826, 30044, 0.01, 0, -30044, 1, 0),
(91826, 30045, 0.5, 0, -30045, 1, 0),
(91826, 30046, 0.5, 0, -30046, 1, 0),
(91826, 30048, 2.5, 0, -30048, 1, 0),
(91826, 30049, 0.5, 0, -30049, 1, 0),
(91826, 30051, 0.0025, 0, -30051, 1, 0),
(91826, 30052, 0.0025, 0, -30052, 1, 0),
(91826, 30053, 0.0025, 0, -30053, 1, 0),
(91826, 60235, -24, 0, 1, 1, 0);
-- Bengal Alpha loot table.
REPLACE INTO creature_loot_template VALUES
(91828, 1645, 0.04, 0, 1, 1, 0),
(91828, 1685, 0.02, 0, 1, 1, 0),
(91828, 1710, 0.02, 0, 1, 1, 0),
(91828, 2289, 0.02, 0, 1, 1, 0),
(91828, 3356, 0.04, 0, 1, 1, 0),
(91828, 3358, 0.02, 0, 1, 1, 0),
(91828, 3395, 0.02, 0, 1, 1, 0),
(91828, 3827, 0.02, 0, 1, 1, 0),
(91828, 3858, 0.02, 0, 1, 1, 0),
(91828, 3914, 0.06, 0, 1, 1, 0),
(91828, 3927, 0.04, 0, 1, 1, 0),
(91828, 3928, 0.02, 0, 1, 1, 0),
(91828, 4100, 0.02, 0, 1, 1, 0),
(91828, 4101, 0.02, 0, 1, 1, 0),
(91828, 4338, 0.02, 0, 1, 1, 0),
(91828, 4580, 66.73, 0, 1, 1, 0),
(91828, 4581, 27.4972, 0, 1, 1, 0),
(91828, 4599, 0.02, 0, 1, 1, 0),
(91828, 4608, 0.02, 0, 1, 1, 0),
(91828, 4638, 0.1139, 0, 1, 1, 0),
(91828, 6149, 0.02, 0, 1, 1, 0),
(91828, 7909, 0.038, 0, 1, 1, 0),
(91828, 7910, 0.1139, 0, 1, 1, 0),
(91828, 7911, 0.04, 0, 1, 1, 0),
(91828, 7912, 0.14, 0, 1, 1, 0),
(91828, 7989, 0.02, 0, 1, 1, 0),
(91828, 7993, 0.02, 0, 1, 1, 0),
(91828, 8146, 8.7353, 0, 1, 1, 0),
(91828, 8389, 0.02, 0, 1, 1, 0),
(91828, 8390, 0.04, 0, 1, 1, 0),
(91828, 9295, 0.02, 0, 1, 1, 0),
(91828, 9298, 0.02, 0, 1, 1, 0),
(91828, 10320, 0.04, 0, 1, 1, 0),
(91828, 10604, 0.02, 0, 1, 1, 0),
(91828, 11208, 0.02, 0, 1, 1, 0),
(91828, 11225, 0.02, 0, 1, 1, 0),
(91828, 15731, 0.02, 0, 1, 1, 0),
(91828, 24028, 0.01, 0, -24028, 1, 0),
(91828, 30029, 0.5, 0, -30029, 1, 0),
(91828, 30043, 0.5, 0, -30043, 1, 0),
(91828, 30044, 0.01, 0, -30044, 1, 0),
(91828, 30045, 0.5, 0, -30045, 1, 0),
(91828, 30046, 0.5, 0, -30046, 1, 0),
(91828, 30048, 2.5, 0, -30048, 1, 0),
(91828, 30049, 0.5, 0, -30049, 1, 0),
(91828, 30051, 0.0025, 0, -30051, 1, 0),
(91828, 30052, 0.0025, 0, -30052, 1, 0),
(91828, 30053, 0.0025, 0, -30053, 1, 0),
(91828, 60235, -24, 0, 1, 1, 0);