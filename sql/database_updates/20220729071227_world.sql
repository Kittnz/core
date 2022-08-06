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
(60735,60775,2,0,1,1,0);
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
-- Bright Crawler loot table.
REPLACE INTO creature_loot_template VALUES (91831, 1529, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91831, 1645, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91831, 1685, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91831, 1708, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91831, 1711, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91831, 1725, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91831, 2290, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91831, 2772, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91831, 2838, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91831, 3010, 15.1718, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91831, 3357, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91831, 3771, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91831, 3827, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91831, 3832, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91831, 3858, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91831, 3864, 0.0892, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91831, 3867, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91831, 3868, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91831, 3914, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91831, 3927, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91831, 4100, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91831, 4101, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91831, 4102, 0.04, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91831, 4544, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91831, 4601, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91831, 4602, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91831, 4636, 0.1339, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91831, 4637, 0.12, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91831, 5498, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91831, 5500, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91831, 5569, 35.8768, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91831, 5774, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91831, 5974, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91831, 7084, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91831, 7090, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91831, 7909, 0.16, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91831, 7910, 0.06, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91831, 7912, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91831, 7971, 0.04, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91831, 7973, 35.8768, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91831, 7992, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91831, 8364, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91831, 8386, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91831, 8831, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91831, 10300, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91831, 10301, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91831, 10315, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91831, 10603, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91831, 10605, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91831, 10606, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91831, 11202, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91831, 12206, 36.0107, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91831, 13926, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91831, 17057, 36.9032, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91831, 30025, 0.5, 0, -30025, 1, 0);
REPLACE INTO creature_loot_template VALUES (91831, 30026, 0.01, 0, -30026, 1, 0);
REPLACE INTO creature_loot_template VALUES (91831, 30027, 0.5, 0, -30027, 1, 0);
REPLACE INTO creature_loot_template VALUES (91831, 30028, 0.01, 0, -30028, 1, 0);
REPLACE INTO creature_loot_template VALUES (91831, 30029, 0.5, 0, -30029, 1, 0);
REPLACE INTO creature_loot_template VALUES (91831, 30030, 0.01, 0, -30030, 1, 0);
REPLACE INTO creature_loot_template VALUES (91831, 30031, 0.5, 0, -30031, 1, 0);
REPLACE INTO creature_loot_template VALUES (91831, 30033, 0.5, 0, -30033, 1, 0);
REPLACE INTO creature_loot_template VALUES (91831, 30034, 0.01, 0, -30034, 1, 0);
REPLACE INTO creature_loot_template VALUES (91831, 30035, 0.0025, 0, -30035, 1, 0);
-- Deepsnap Hardshell loot table.
update creature_template set loot_id = 91836 where entry = 91836;
REPLACE INTO creature_loot_template VALUES (91836, 3820, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91836, 4425, 0.288, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91836, 4426, 0.2, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91836, 4500, 0.03, 0, 1, 1, 109);
REPLACE INTO creature_loot_template VALUES (91836, 5498, 0.058, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91836, 5500, 0.058, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91836, 5758, 0.3895, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91836, 7909, 0.115, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91836, 7910, 0.09, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91836, 7971, 0.058, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91836, 7973, 41.6748, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91836, 7990, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91836, 8766, 1.9474, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91836, 8959, 4.5764, 0, 1, 3, 0);
REPLACE INTO creature_loot_template VALUES (91836, 9297, 0.019, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91836, 10305, 0.154, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91836, 10306, 0.17, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91836, 10620, 0.115, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91836, 12365, 0.077, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91836, 12682, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91836, 12683, 0.019, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91836, 13443, 0.71, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91836, 13446, 1.383, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91836, 14474, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91836, 14478, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91836, 14479, 0.019, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91836, 14492, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91836, 14494, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91836, 15731, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91836, 16215, 0.019, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91836, 16218, 0.038, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91836, 20400, 0.03, 0, 1, 1, 108);
REPLACE INTO creature_loot_template VALUES (91836, 24024, 2.5, 0, -24024, 1, 0);
REPLACE INTO creature_loot_template VALUES (91836, 24028, 0.01, 0, -24028, 1, 0);
REPLACE INTO creature_loot_template VALUES (91836, 24032, 0.01, 0, -24032, 1, 0);
REPLACE INTO creature_loot_template VALUES (91836, 30043, 0.5, 0, -30043, 1, 0);
REPLACE INTO creature_loot_template VALUES (91836, 30044, 0.01, 0, -30044, 1, 0);
REPLACE INTO creature_loot_template VALUES (91836, 30045, 0.5, 0, -30045, 1, 0);
REPLACE INTO creature_loot_template VALUES (91836, 30046, 0.5, 0, -30046, 1, 0);
REPLACE INTO creature_loot_template VALUES (91836, 30047, 0.01, 0, -30047, 1, 0);
REPLACE INTO creature_loot_template VALUES (91836, 30052, 0.0025, 0, -30052, 1, 0);
REPLACE INTO creature_loot_template VALUES (91836, 30053, 0.0025, 0, -30053, 1, 0);
REPLACE INTO creature_loot_template VALUES (91836, 30080, 0.5, 0, -30080, 1, 0);
REPLACE INTO creature_loot_template VALUES (91836, 30090, 2.5, 10, -30090, 1, 0);
REPLACE INTO creature_loot_template VALUES (91836, 30103, 0.0025, 0, -30103, 1, 0);
-- Deepsnap Hardshell loot table.
update creature_template set loot_id = 91834 where entry = 91834;
REPLACE INTO creature_loot_template VALUES (91834, 3820, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91834, 4425, 0.288, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91834, 4426, 0.2, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91834, 4500, 0.03, 0, 1, 1, 109);
REPLACE INTO creature_loot_template VALUES (91834, 5498, 0.058, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91834, 5500, 0.058, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91834, 5758, 0.3895, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91834, 7909, 0.115, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91834, 7910, 0.09, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91834, 7971, 0.058, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91834, 7973, 41.6748, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91834, 7990, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91834, 8766, 1.9474, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91834, 8959, 4.5764, 0, 1, 3, 0);
REPLACE INTO creature_loot_template VALUES (91834, 9297, 0.019, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91834, 10305, 0.154, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91834, 10306, 0.17, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91834, 10620, 0.115, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91834, 12365, 0.077, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91834, 12682, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91834, 12683, 0.019, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91834, 13443, 0.71, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91834, 13446, 1.383, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91834, 14474, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91834, 14478, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91834, 14479, 0.019, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91834, 14492, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91834, 14494, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91834, 15731, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91834, 16215, 0.019, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91834, 16218, 0.038, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91834, 20400, 0.03, 0, 1, 1, 108);
REPLACE INTO creature_loot_template VALUES (91834, 24024, 2.5, 0, -24024, 1, 0);
REPLACE INTO creature_loot_template VALUES (91834, 24028, 0.01, 0, -24028, 1, 0);
REPLACE INTO creature_loot_template VALUES (91834, 24032, 0.01, 0, -24032, 1, 0);
REPLACE INTO creature_loot_template VALUES (91834, 30043, 0.5, 0, -30043, 1, 0);
REPLACE INTO creature_loot_template VALUES (91834, 30044, 0.01, 0, -30044, 1, 0);
REPLACE INTO creature_loot_template VALUES (91834, 30045, 0.5, 0, -30045, 1, 0);
REPLACE INTO creature_loot_template VALUES (91834, 30046, 0.5, 0, -30046, 1, 0);
REPLACE INTO creature_loot_template VALUES (91834, 30047, 0.01, 0, -30047, 1, 0);
REPLACE INTO creature_loot_template VALUES (91834, 30052, 0.0025, 0, -30052, 1, 0);
REPLACE INTO creature_loot_template VALUES (91834, 30053, 0.0025, 0, -30053, 1, 0);
REPLACE INTO creature_loot_template VALUES (91834, 30080, 0.5, 0, -30080, 1, 0);
REPLACE INTO creature_loot_template VALUES (91834, 30090, 2.5, 10, -30090, 1, 0);
REPLACE INTO creature_loot_template VALUES (91834, 30103, 0.0025, 0, -30103, 1, 0);
-- Deepsnap Viceclaw loot table.
update creature_template set loot_id = 91835 where entry = 91835;
REPLACE INTO creature_loot_template VALUES (91835, 3820, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91835, 4425, 0.288, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91835, 4426, 0.2, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91835, 4500, 0.03, 0, 1, 1, 109);
REPLACE INTO creature_loot_template VALUES (91835, 5498, 0.058, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91835, 5500, 0.058, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91835, 5758, 0.3895, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91835, 7909, 0.115, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91835, 7910, 0.09, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91835, 7971, 0.058, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91835, 7973, 41.6748, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91835, 7990, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91835, 8766, 1.9474, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91835, 8959, 4.5764, 0, 1, 3, 0);
REPLACE INTO creature_loot_template VALUES (91835, 9297, 0.019, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91835, 10305, 0.154, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91835, 10306, 0.17, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91835, 10620, 0.115, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91835, 12365, 0.077, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91835, 12682, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91835, 12683, 0.019, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91835, 13443, 0.71, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91835, 13446, 1.383, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91835, 14474, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91835, 14478, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91835, 14479, 0.019, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91835, 14492, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91835, 14494, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91835, 15731, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91835, 16215, 0.019, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91835, 16218, 0.038, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91835, 20400, 0.03, 0, 1, 1, 108);
REPLACE INTO creature_loot_template VALUES (91835, 24024, 2.5, 0, -24024, 1, 0);
REPLACE INTO creature_loot_template VALUES (91835, 24028, 0.01, 0, -24028, 1, 0);
REPLACE INTO creature_loot_template VALUES (91835, 24032, 0.01, 0, -24032, 1, 0);
REPLACE INTO creature_loot_template VALUES (91835, 30043, 0.5, 0, -30043, 1, 0);
REPLACE INTO creature_loot_template VALUES (91835, 30044, 0.01, 0, -30044, 1, 0);
REPLACE INTO creature_loot_template VALUES (91835, 30045, 0.5, 0, -30045, 1, 0);
REPLACE INTO creature_loot_template VALUES (91835, 30046, 0.5, 0, -30046, 1, 0);
REPLACE INTO creature_loot_template VALUES (91835, 30047, 0.01, 0, -30047, 1, 0);
REPLACE INTO creature_loot_template VALUES (91835, 30052, 0.0025, 0, -30052, 1, 0);
REPLACE INTO creature_loot_template VALUES (91835, 30053, 0.0025, 0, -30053, 1, 0);
REPLACE INTO creature_loot_template VALUES (91835, 30080, 0.5, 0, -30080, 1, 0);
REPLACE INTO creature_loot_template VALUES (91835, 30090, 2.5, 10, -30090, 1, 0);
REPLACE INTO creature_loot_template VALUES (91835, 30103, 0.0025, 0, -30103, 1, 0);
-- Captain Saltbeard <Southsea Freebooters> loot table.
update creature_template set loot_id = 92144 where entry = 92144;
REPLACE INTO creature_loot_template VALUES (92144, 1645, 2.4771, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92144, 4306, 10.5505, 0, 1, 2, 0);
REPLACE INTO creature_loot_template VALUES (92144, 4338, 25.2294, 0, 1, 2, 0);
REPLACE INTO creature_loot_template VALUES (92144, 4419, 0.23, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92144, 4421, 0.5, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92144, 4422, 0.21, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92144, 4424, 0.25, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92144, 4599, 4.4954, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92144, 4638, 0.0917, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92144, 6149, 0.9, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92144, 7909, 0.05, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92144, 7910, 0.05, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92144, 7989, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92144, 7993, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92144, 8029, 0.38, 0, 1, 1, 4);
REPLACE INTO creature_loot_template VALUES (92144, 8390, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92144, 9293, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92144, 9298, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92144, 10301, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92144, 10320, 0.09, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92144, 10608, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92144, 30043, 0.5, 0, -30043, 1, 0);
REPLACE INTO creature_loot_template VALUES (92144, 30048, 2.5, 0, -30048, 1, 0);
REPLACE INTO creature_loot_template VALUES (92144, 30049, 0.5, 0, -30049, 1, 0);
REPLACE INTO creature_loot_template VALUES (92144, 30072, 0.5, 0, -30072, 1, 0);
REPLACE INTO creature_loot_template VALUES (92144, 30074, 0.01, 0, -30074, 1, 0);
REPLACE INTO creature_loot_template VALUES (92144, 83244, 0.1, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92144, 83243, 0.1, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92144, 83242, 0.1, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92144, 83241, 0.1, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92144, 60208, 50, 0, 1, 1, 0);
-- Captain Ironhoof <Southsea Freebooters> loot table.
update creature_template set loot_id = 92142 where entry = 92142;
REPLACE INTO creature_loot_template VALUES (92142, 1645, 2.4771, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92142, 4306, 10.5505, 0, 1, 2, 0);
REPLACE INTO creature_loot_template VALUES (92142, 4338, 25.2294, 0, 1, 2, 0);
REPLACE INTO creature_loot_template VALUES (92142, 4419, 0.23, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92142, 4421, 0.5, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92142, 4422, 0.21, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92142, 4424, 0.25, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92142, 4599, 4.4954, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92142, 4638, 0.0917, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92142, 6149, 0.9, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92142, 7909, 0.05, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92142, 7910, 0.05, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92142, 7989, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92142, 7993, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92142, 8029, 0.38, 0, 1, 1, 4);
REPLACE INTO creature_loot_template VALUES (92142, 8390, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92142, 9293, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92142, 9298, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92142, 10301, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92142, 10320, 0.09, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92142, 10608, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92142, 30043, 0.5, 0, -30043, 1, 0);
REPLACE INTO creature_loot_template VALUES (92142, 30048, 2.5, 0, -30048, 1, 0);
REPLACE INTO creature_loot_template VALUES (92142, 30049, 0.5, 0, -30049, 1, 0);
REPLACE INTO creature_loot_template VALUES (92142, 30072, 0.5, 0, -30072, 1, 0);
REPLACE INTO creature_loot_template VALUES (92142, 30074, 0.01, 0, -30074, 1, 0);
REPLACE INTO creature_loot_template VALUES (92142, 83244, 0.1, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92142, 83243, 0.1, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92142, 83242, 0.1, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92142, 83241, 0.1, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92142, 60208, 50, 0, 1, 1, 0);
-- Captain Blackeye <Southsea Freebooters> loot table.
update creature_template set loot_id = 92143 where entry = 92143;
REPLACE INTO creature_loot_template VALUES (92143, 1645, 2.4771, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92143, 4306, 10.5505, 0, 1, 2, 0);
REPLACE INTO creature_loot_template VALUES (92143, 4338, 25.2294, 0, 1, 2, 0);
REPLACE INTO creature_loot_template VALUES (92143, 4419, 0.23, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92143, 4421, 0.5, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92143, 4422, 0.21, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92143, 4424, 0.25, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92143, 4599, 4.4954, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92143, 4638, 0.0917, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92143, 6149, 0.9, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92143, 7909, 0.05, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92143, 7910, 0.05, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92143, 7989, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92143, 7993, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92143, 8029, 0.38, 0, 1, 1, 4);
REPLACE INTO creature_loot_template VALUES (92143, 8390, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92143, 9293, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92143, 9298, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92143, 10301, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92143, 10320, 0.09, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92143, 10608, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92143, 30043, 0.5, 0, -30043, 1, 0);
REPLACE INTO creature_loot_template VALUES (92143, 30048, 2.5, 0, -30048, 1, 0);
REPLACE INTO creature_loot_template VALUES (92143, 30049, 0.5, 0, -30049, 1, 0);
REPLACE INTO creature_loot_template VALUES (92143, 30072, 0.5, 0, -30072, 1, 0);
REPLACE INTO creature_loot_template VALUES (92143, 30074, 0.01, 0, -30074, 1, 0);
REPLACE INTO creature_loot_template VALUES (92143, 83244, 0.1, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92143, 83243, 0.1, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92143, 83242, 0.1, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92143, 83241, 0.1, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92143, 60208, 50, 0, 1, 1, 0);
-- 'Water Rat' Jorgy <Southsea Freebooters> loot table.
REPLACE INTO creature_loot_template VALUES (91846, 1645, 2.4771, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91846, 4306, 10.5505, 0, 1, 2, 0);
REPLACE INTO creature_loot_template VALUES (91846, 4338, 25.2294, 0, 1, 2, 0);
REPLACE INTO creature_loot_template VALUES (91846, 4419, 0.23, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91846, 4421, 0.5, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91846, 4422, 0.21, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91846, 4424, 0.25, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91846, 4599, 4.4954, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91846, 4638, 0.0917, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91846, 6149, 0.9, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91846, 7909, 0.05, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91846, 7910, 0.05, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91846, 7989, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91846, 7993, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91846, 8029, 0.38, 0, 1, 1, 4);
REPLACE INTO creature_loot_template VALUES (91846, 8390, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91846, 9293, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91846, 9298, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91846, 10301, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91846, 10320, 0.09, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91846, 10608, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91846, 30043, 0.5, 0, -30043, 1, 0);
REPLACE INTO creature_loot_template VALUES (91846, 30048, 2.5, 0, -30048, 1, 0);
REPLACE INTO creature_loot_template VALUES (91846, 30049, 0.5, 0, -30049, 1, 0);
REPLACE INTO creature_loot_template VALUES (91846, 30072, 0.5, 0, -30072, 1, 0);
REPLACE INTO creature_loot_template VALUES (91846, 30074, 0.01, 0, -30074, 1, 0);
REPLACE INTO creature_loot_template VALUES (92146, 83244, 0.1, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92146, 83243, 0.1, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92146, 83242, 0.1, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92146, 83241, 0.1, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92146, 60208, 50, 0, 1, 1, 0);
-- Southsea Deckhand loot table.
REPLACE INTO creature_loot_template VALUES (92140, 1645, 2.4771, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92140, 4306, 10.5505, 0, 1, 2, 0);
REPLACE INTO creature_loot_template VALUES (92140, 4338, 25.2294, 0, 1, 2, 0);
REPLACE INTO creature_loot_template VALUES (92140, 4419, 0.23, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92140, 4421, 0.5, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92140, 4422, 0.21, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92140, 4424, 0.25, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92140, 4599, 4.4954, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92140, 4638, 0.0917, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92140, 6149, 0.9, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92140, 7909, 0.05, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92140, 7910, 0.05, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92140, 7989, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92140, 7993, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92140, 8029, 0.38, 0, 1, 1, 4);
REPLACE INTO creature_loot_template VALUES (92140, 8390, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92140, 9293, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92140, 9298, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92140, 10301, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92140, 10320, 0.09, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92140, 10608, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92140, 30043, 0.5, 0, -30043, 1, 0);
REPLACE INTO creature_loot_template VALUES (92140, 30048, 2.5, 0, -30048, 1, 0);
REPLACE INTO creature_loot_template VALUES (92140, 30049, 0.5, 0, -30049, 1, 0);
REPLACE INTO creature_loot_template VALUES (92140, 30072, 0.5, 0, -30072, 1, 0);
REPLACE INTO creature_loot_template VALUES (92140, 30074, 0.01, 0, -30074, 1, 0);
REPLACE INTO creature_loot_template VALUES (92140, 83244, 0.1, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92140, 83243, 0.1, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92140, 83242, 0.1, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92140, 83241, 0.1, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92140, 60208, 50, 0, 1, 1, 0);
-- Southsea Corsair loot table.
REPLACE INTO creature_loot_template VALUES (91845, 1645, 2.4771, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91845, 4306, 10.5505, 0, 1, 2, 0);
REPLACE INTO creature_loot_template VALUES (91845, 4338, 25.2294, 0, 1, 2, 0);
REPLACE INTO creature_loot_template VALUES (91845, 4419, 0.23, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91845, 4421, 0.5, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91845, 4422, 0.21, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91845, 4424, 0.25, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91845, 4599, 4.4954, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91845, 4638, 0.0917, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91845, 6149, 0.9, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91845, 7909, 0.05, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91845, 7910, 0.05, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91845, 7989, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91845, 7993, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91845, 8029, 0.38, 0, 1, 1, 4);
REPLACE INTO creature_loot_template VALUES (91845, 8390, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91845, 9293, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91845, 9298, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91845, 10301, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91845, 10320, 0.09, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91845, 10608, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91845, 30043, 0.5, 0, -30043, 1, 0);
REPLACE INTO creature_loot_template VALUES (91845, 30048, 2.5, 0, -30048, 1, 0);
REPLACE INTO creature_loot_template VALUES (91845, 30049, 0.5, 0, -30049, 1, 0);
REPLACE INTO creature_loot_template VALUES (91845, 30072, 0.5, 0, -30072, 1, 0);
REPLACE INTO creature_loot_template VALUES (91845, 30074, 0.01, 0, -30074, 1, 0);
REPLACE INTO creature_loot_template VALUES (91845, 83244, 0.1, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91845, 83243, 0.1, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91845, 83242, 0.1, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91845, 83241, 0.1, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91845, 60208, 50, 0, 1, 1, 0);
-- Foreman Darkskull <Southsea Freebooters> loot table.
REPLACE INTO creature_loot_template VALUES (92141, 1645, 2.4771, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92141, 4306, 10.5505, 0, 1, 2, 0);
REPLACE INTO creature_loot_template VALUES (92141, 4338, 25.2294, 0, 1, 2, 0);
REPLACE INTO creature_loot_template VALUES (92141, 4419, 0.23, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92141, 4421, 0.5, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92141, 4422, 0.21, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92141, 4424, 0.25, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92141, 4599, 4.4954, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92141, 4638, 0.0917, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92141, 6149, 0.9, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92141, 7909, 0.05, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92141, 7910, 0.05, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92141, 7989, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92141, 7993, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92141, 8029, 0.38, 0, 1, 1, 4);
REPLACE INTO creature_loot_template VALUES (92141, 8390, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92141, 9293, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92141, 9298, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92141, 10301, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92141, 10320, 0.09, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92141, 10608, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92141, 30043, 0.5, 0, -30043, 1, 0);
REPLACE INTO creature_loot_template VALUES (92141, 30048, 2.5, 0, -30048, 1, 0);
REPLACE INTO creature_loot_template VALUES (92141, 30049, 0.5, 0, -30049, 1, 0);
REPLACE INTO creature_loot_template VALUES (92141, 30072, 0.5, 0, -30072, 1, 0);
REPLACE INTO creature_loot_template VALUES (92141, 30074, 0.01, 0, -30074, 1, 0);
REPLACE INTO creature_loot_template VALUES (92141, 83244, 0.1, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92141, 83243, 0.1, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92141, 83242, 0.1, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92141, 83241, 0.1, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92141, 60208, 50, 0, 1, 1, 0);
-- Southsea Sea Wolf loot table.
REPLACE INTO creature_loot_template VALUES (92138, 1645, 2.4771, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92138, 4306, 10.5505, 0, 1, 2, 0);
REPLACE INTO creature_loot_template VALUES (92138, 4338, 25.2294, 0, 1, 2, 0);
REPLACE INTO creature_loot_template VALUES (92138, 4419, 0.23, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92138, 4421, 0.5, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92138, 4422, 0.21, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92138, 4424, 0.25, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92138, 4599, 4.4954, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92138, 4638, 0.0917, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92138, 6149, 0.9, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92138, 7909, 0.05, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92138, 7910, 0.05, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92138, 7989, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92138, 7993, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92138, 8029, 0.38, 0, 1, 1, 4);
REPLACE INTO creature_loot_template VALUES (92138, 8390, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92138, 9293, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92138, 9298, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92138, 10301, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92138, 10320, 0.09, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92138, 10608, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92138, 30043, 0.5, 0, -30043, 1, 0);
REPLACE INTO creature_loot_template VALUES (92138, 30048, 2.5, 0, -30048, 1, 0);
REPLACE INTO creature_loot_template VALUES (92138, 30049, 0.5, 0, -30049, 1, 0);
REPLACE INTO creature_loot_template VALUES (92138, 30072, 0.5, 0, -30072, 1, 0);
REPLACE INTO creature_loot_template VALUES (92138, 30074, 0.01, 0, -30074, 1, 0);
REPLACE INTO creature_loot_template VALUES (92138, 83244, 0.1, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92138, 83243, 0.1, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92138, 83242, 0.1, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92138, 83241, 0.1, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92138, 60208, 50, 0, 1, 1, 0);
-- Southsea Pillager loot table.
REPLACE INTO creature_loot_template VALUES (91847, 1645, 2.4771, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91847, 4306, 10.5505, 0, 1, 2, 0);
REPLACE INTO creature_loot_template VALUES (91847, 4338, 25.2294, 0, 1, 2, 0);
REPLACE INTO creature_loot_template VALUES (91847, 4419, 0.23, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91847, 4421, 0.5, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91847, 4422, 0.21, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91847, 4424, 0.25, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91847, 4599, 4.4954, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91847, 4638, 0.0917, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91847, 6149, 0.9, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91847, 7909, 0.05, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91847, 7910, 0.05, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91847, 7989, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91847, 7993, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91847, 8029, 0.38, 0, 1, 1, 4);
REPLACE INTO creature_loot_template VALUES (91847, 8390, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91847, 9293, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91847, 9298, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91847, 10301, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91847, 10320, 0.09, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91847, 10608, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91847, 30043, 0.5, 0, -30043, 1, 0);
REPLACE INTO creature_loot_template VALUES (91847, 30048, 2.5, 0, -30048, 1, 0);
REPLACE INTO creature_loot_template VALUES (91847, 30049, 0.5, 0, -30049, 1, 0);
REPLACE INTO creature_loot_template VALUES (91847, 30072, 0.5, 0, -30072, 1, 0);
REPLACE INTO creature_loot_template VALUES (91847, 30074, 0.01, 0, -30074, 1, 0);
REPLACE INTO creature_loot_template VALUES (92147, 83244, 0.1, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92147, 83243, 0.1, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92147, 83242, 0.1, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92147, 83241, 0.1, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92147, 60208, 50, 0, 1, 1, 0);
-- Southsea Outlaw loot table.
REPLACE INTO creature_loot_template VALUES (92139, 1645, 2.4771, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92139, 4306, 10.5505, 0, 1, 2, 0);
REPLACE INTO creature_loot_template VALUES (92139, 4338, 25.2294, 0, 1, 2, 0);
REPLACE INTO creature_loot_template VALUES (92139, 4419, 0.23, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92139, 4421, 0.5, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92139, 4422, 0.21, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92139, 4424, 0.25, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92139, 4599, 4.4954, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92139, 4638, 0.0917, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92139, 6149, 0.9, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92139, 7909, 0.05, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92139, 7910, 0.05, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92139, 7989, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92139, 7993, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92139, 8029, 0.38, 0, 1, 1, 4);
REPLACE INTO creature_loot_template VALUES (92139, 8390, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92139, 9293, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92139, 9298, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92139, 10301, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92139, 10320, 0.09, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92139, 10608, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92139, 30043, 0.5, 0, -30043, 1, 0);
REPLACE INTO creature_loot_template VALUES (92139, 30048, 2.5, 0, -30048, 1, 0);
REPLACE INTO creature_loot_template VALUES (92139, 30049, 0.5, 0, -30049, 1, 0);
REPLACE INTO creature_loot_template VALUES (92139, 30072, 0.5, 0, -30072, 1, 0);
REPLACE INTO creature_loot_template VALUES (92139, 30074, 0.01, 0, -30074, 1, 0);
REPLACE INTO creature_loot_template VALUES (92139, 83244, 0.1, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92139, 83243, 0.1, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92139, 83242, 0.1, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92139, 83241, 0.1, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92139, 60208, 50, 0, 1, 1, 0);
-- Southsea Bootlegger loot table.
REPLACE INTO creature_loot_template VALUES (92135, 1645, 2.4771, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92135, 4306, 10.5505, 0, 1, 2, 0);
REPLACE INTO creature_loot_template VALUES (92135, 4338, 25.2294, 0, 1, 2, 0);
REPLACE INTO creature_loot_template VALUES (92135, 4419, 0.23, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92135, 4421, 0.5, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92135, 4422, 0.21, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92135, 4424, 0.25, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92135, 4599, 4.4954, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92135, 4638, 0.0917, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92135, 6149, 0.9, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92135, 7909, 0.05, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92135, 7910, 0.05, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92135, 7989, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92135, 7993, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92135, 8029, 0.38, 0, 1, 1, 4);
REPLACE INTO creature_loot_template VALUES (92135, 8390, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92135, 9293, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92135, 9298, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92135, 10301, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92135, 10320, 0.09, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92135, 10608, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92135, 30043, 0.5, 0, -30043, 1, 0);
REPLACE INTO creature_loot_template VALUES (92135, 30048, 2.5, 0, -30048, 1, 0);
REPLACE INTO creature_loot_template VALUES (92135, 30049, 0.5, 0, -30049, 1, 0);
REPLACE INTO creature_loot_template VALUES (92135, 30072, 0.5, 0, -30072, 1, 0);
REPLACE INTO creature_loot_template VALUES (92135, 30074, 0.01, 0, -30074, 1, 0);
REPLACE INTO creature_loot_template VALUES (92135, 83244, 0.1, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92135, 83243, 0.1, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92135, 83242, 0.1, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92135, 83241, 0.1, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92135, 60208, 50, 0, 1, 1, 0);
-- Southsea Distiller loot table.
REPLACE INTO creature_loot_template VALUES (92136, 1645, 2.4771, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92136, 4306, 10.5505, 0, 1, 2, 0);
REPLACE INTO creature_loot_template VALUES (92136, 4338, 25.2294, 0, 1, 2, 0);
REPLACE INTO creature_loot_template VALUES (92136, 4419, 0.23, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92136, 4421, 0.5, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92136, 4422, 0.21, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92136, 4424, 0.25, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92136, 4599, 4.4954, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92136, 4638, 0.0917, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92136, 6149, 0.9, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92136, 7909, 0.05, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92136, 7910, 0.05, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92136, 7989, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92136, 7993, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92136, 8029, 0.38, 0, 1, 1, 4);
REPLACE INTO creature_loot_template VALUES (92136, 8390, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92136, 9293, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92136, 9298, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92136, 10301, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92136, 10320, 0.09, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92136, 10608, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92136, 30043, 0.5, 0, -30043, 1, 0);
REPLACE INTO creature_loot_template VALUES (92136, 30048, 2.5, 0, -30048, 1, 0);
REPLACE INTO creature_loot_template VALUES (92136, 30049, 0.5, 0, -30049, 1, 0);
REPLACE INTO creature_loot_template VALUES (92136, 30072, 0.5, 0, -30072, 1, 0);
REPLACE INTO creature_loot_template VALUES (92136, 30074, 0.01, 0, -30074, 1, 0);
REPLACE INTO creature_loot_template VALUES (92136, 83244, 0.1, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92136, 83243, 0.1, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92136, 83242, 0.1, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92136, 83241, 0.1, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92136, 60208, 50, 0, 1, 1, 0);
-- Southsea Miner loot table.
update creature_template set loot_id = 92134 where entry = 92134;
REPLACE INTO creature_loot_template VALUES (92134, 1645, 2.4771, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92134, 4306, 10.5505, 0, 1, 2, 0);
REPLACE INTO creature_loot_template VALUES (92134, 4338, 25.2294, 0, 1, 2, 0);
REPLACE INTO creature_loot_template VALUES (92134, 4419, 0.23, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92134, 4421, 0.5, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92134, 4422, 0.21, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92134, 4424, 0.25, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92134, 4599, 4.4954, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92134, 4638, 0.0917, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92134, 6149, 0.9, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92134, 7909, 0.05, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92134, 7910, 0.05, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92134, 7989, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92134, 7993, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92134, 8029, 0.38, 0, 1, 1, 4);
REPLACE INTO creature_loot_template VALUES (92134, 8390, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92134, 9293, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92134, 9298, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92134, 10301, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92134, 10320, 0.09, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92134, 10608, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92134, 30043, 0.5, 0, -30043, 1, 0);
REPLACE INTO creature_loot_template VALUES (92134, 30048, 2.5, 0, -30048, 1, 0);
REPLACE INTO creature_loot_template VALUES (92134, 30049, 0.5, 0, -30049, 1, 0);
REPLACE INTO creature_loot_template VALUES (92134, 30072, 0.5, 0, -30072, 1, 0);
REPLACE INTO creature_loot_template VALUES (92134, 30074, 0.01, 0, -30074, 1, 0);
REPLACE INTO creature_loot_template VALUES (92134, 83244, 0.1, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92134, 83243, 0.1, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92134, 83242, 0.1, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92134, 83241, 0.1, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92134, 60208, 50, 0, 1, 1, 0);
-- Har'gesh Doomcaller <Twilight's Hammer>
-- ADD FOLLOWING ITEMS TO HARGESH DOOMCALLER'S MAIN LOOTTABLE (GROUP 2):
delete from creature_loot_template where entry = 60737;
REPLACE INTO creature_loot_template VALUES (60737, 51217, 100, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60737, 51045, 25, 2, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60737, 51046, 25, 2, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60737, 51047, 25, 2, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60737, 51048, 25, 2, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60737, 60551, 0.005, 3, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60737, 60546, 20, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60737, 60547, 20, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60737, 60548, 20, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60737, 60549, 20, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60737, 60550, 20, 1, 1, 1, 0);
-- change amount of drops for Alarus to 2 items. (Copy existing boss loottable)
-- Change drop chance of Mantle of Twisted Damnation to 1% 
delete from creature_loot_template where entry = 91928;
REPLACE INTO creature_loot_template VALUES (91928, 51217, 100, 7, 2, 2, 0);
REPLACE INTO creature_loot_template VALUES (91928, 83464, 1 , 2, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91928, 83465, 25, 4, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91928, 83466, 25, 4, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91928, 83467, 25, 4, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91928, 83468, 25, 4, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91928, 83469, 20, 3, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91928, 83470, 20, 3, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91928, 83471, 20, 3, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91928, 83472, 20, 3, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91928, 83571, 20, 3, 1, 1, 0);
-- Add https://database.turtle-wow.org/?item=83557 to Lord Skwol with a 40% chance.
REPLACE INTO creature_loot_template VALUES (15305, 20684, 40, 4, 1, 1, 0);
-- Increase drop chance of Abyssal Flame, Abyssal Slate and Abyssal Wind on their respective high council bosses to 40%
update creature_loot_template set chanceorquestchance = 40 where entry = 15203 and item = 83554;
update creature_loot_template set chanceorquestchance = 40 where entry = 15205 and item = 83555;
update creature_loot_template set chanceorquestchance = 40 where entry = 15204 and item = 83556;
-- Add Primordial Flame to Baron Charr's loottable with a 100% Chance
REPLACE INTO creature_loot_template VALUES (14461, 83550, 100, 1, 1, 1, 0);
-- Add Evershifting Stone to Avalanchion's loottable with a 100% chance.
REPLACE INTO creature_loot_template VALUES (14464, 83551, 100, 1, 1, 1, 0);
-- Add Unmelting Ice to Princess Tempestria's loottable with a 100% chance.
REPLACE INTO creature_loot_template VALUES (14457, 83552, 100, 1, 1, 1, 0);
-- Add Unyielding Gust to The Windreaver's loottable with a 100% chance.
REPLACE INTO creature_loot_template VALUES (14454, 83553, 100, 1, 1, 1, 0);
-- Add Pattern: Stormscale Leggings to Azuregos's loottable with a 40% chance.
REPLACE INTO creature_loot_template VALUES (6109, 83544, 40, 2, 1, 1, 0);
-- Add Pattern: Robe of Sacrifice to Lord Kazzak's loottable with a 40% chance.
REPLACE INTO creature_loot_template VALUES (12397, 83545, 40, 2, 1, 1, 0);
-- Add Pattern: Verdant Dreamer's Breastplate and Plans: Dream's Herald to https://database.turtle-wow.org/?npc=15293 vendor list.
REPLACE INTO npc_vendor VALUES (15293, 83546, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (15293, 83548, 0, 0, 0, 0);
-- Add Plans: Pauldron of Deflection to mobs that drop https://database.turtle-wow.org/?item=12717 and with the same drop chance percentages.
REPLACE INTO creature_loot_template VALUES (11339, 83547, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (11352, 83547, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (12397, 83547, 0.14, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (11668, 83547, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (15325, 83547, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (16184, 83547, 5, 4, 1, 1, 0);
-- Add Plans: Frostbound Slasher to the following mobs with the drop chances listed next to them:
REPLACE INTO creature_loot_template VALUES (2253, 83549, 0.1, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (2252, 83549, 0.1, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (2248, 83549, 0.5, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (2249, 83549, 0.5, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (2251, 83549, 0.7, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (2250, 83549, 0.7, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (2256, 83549, 0.75, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (2255, 83549, 0.75, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (2254, 83549, 0.75, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (2416, 83549, 0.75, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (2287, 83549, 1, 0, 1, 1, 0);
-- Add converge spells to items
update item_template set spellid_1 = 56530 where entry = 83550;
update item_template set spellid_1 = 56530 where entry = 83554;
update item_template set spellid_1 = 56531 where entry = 83551;
update item_template set spellid_1 = 56531 where entry = 83555;
update item_template set spellid_1 = 56532 where entry = 83552;
update item_template set spellid_1 = 56532 where entry = 83556;
update item_template set spellid_1 = 56533 where entry = 83553;
update item_template set spellid_1 = 56533 where entry = 83557;
-- Add result recipes (ID OVERRIDE INTENTIONAL)
replace into item_template values
 ('60776', '9', '1', 'Pattern: Flamewrath Leggings', '', '1096', '4', '0', '1', '200000', '50000', '0', '-1', '-1', '66',
 '0', '165', '300', '10658', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '57013', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('60777', '9', '1', 'Pattern: Earthguard Tunic', '', '1096', '4', '0', '1', '200000', '50000', '0', '-1', '-1', '66',
 '0', '165', '300', '10658', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '57011', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('60778', '9', '1', 'Pattern: Windwalker Boots', '', '1096', '4', '0', '1', '200000', '50000', '0', '-1', '-1', '66',
 '0', '165', '300', '10658', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '57017', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('60779', '9', '1', 'Pattern: Depthstalker Helm', '', '1096', '4', '0', '1', '200000', '50000', '0', '-1', '-1', '66',
 '0', '165', '300', '10658', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '57015', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
-- NEW LOW LEVEL ELEMENTAL LEATHEROWKING ITEMS AND RECIPES
replace into item_template values
 ('60780', '9', '1', 'Pattern: Breastplate of the Earth', '', '6270', '3', '0', '1', '6000', '1500', '0', '-1', '-1', '44',
 '0', '165', '265', '10658', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '57007', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('60781', '9', '1', 'Pattern: Boots of the Wind', '', '6270', '3', '0', '1', '5000', '1250', '0', '-1', '-1', '42',
 '0', '165', '255', '10658', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '57009', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('65022', '4', '2', 'Breastplate of the Earth', '', '8664', '3', '0', '1', '52980', '13245', '5', '-1', '-1', '49',
 '44', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '12', '7', '17',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '194', '0', '0', '5',
 '0', '0', '0', '13669', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '2', '0', '0', '0', '0', '0', '8', '1', '0', '0', '100', '0', '0', '0', '0', '46', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('65023', '4', '2', 'Boots of the Wind', '', '3709', '3', '0', '1', '35572', '8893', '5', '-1', '-1', '47',
 '42', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '13', '7', '8',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '95', '0', '0', '0',
 '0', '0', '5', '13679', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '2', '0', '0', '0', '0', '0', '8', '1', '0', '0', '50', '0', '0', '0', '0', '46', '0', '0', '0',
 '0', '1', NULL);
-- Carver Molsen, display ID 13091, level 21 elite , faction 17, humanoid, weapon 1 2844, weapon 2 4023, upon aggro say the following line : "You were a fool to come here, this is Defias land now."
-- Larry Ryder, display ID 3370, level 30,  faction 12 , humanoid, no weapons, quest/greeting flags greeting text : "What is it you want? I'm busy, so move it along."
-- Name = 'Krull Fireblood', subname = 'Warsong Outriders', level = 35, display_id1 = 4492. Make him have the following dialog: Since the death of Grommash Hellscream, our clan have been scattered around kalimdor, from Ashenvale down to the Thousand Needles.\n\nNowadays, only the most fierceful leaders of the Warsong Outriders are listened still. But one day, sooner or later... A new Warchief will arise! We are the ones who built Orgrimmar in a few days. All the citizens witness what have done the real sons of the Horde!\n\nWe'll never let some filthy night elves continue their outrageous sabotage.\n\nThe War-effort has no end. As long as the eternal nomadry will run the entire Kalimdor.
-- Name = 'Kodiak Killbrew', subname = 'Get Rich Or Die Grinding', level = 42, display_id1 = 9283, equipment_id = 54. Make repair vendor and copy vendor menu from https://database.turtle-wow.org/?npc=1148
-- Name = 'Aerdri', subname = 'Get Rich Or Die Grinding', level = 48, display_id1= 2221, equipment_id = 6087
-- Name = 'Fiddlemaster', subname = 'Get Rich Or Die Grinding', level = 47, display_id1 = 7128
-- Name = 'Koniwa', subname = 'Get Rich Or Die Grinding', level = 45, display_id1 = 4651. Make her have the following dialog: Well look who stumbled on this hole in the wall! Ya found our hideaway, those who're lookin to get rich or die grindin. Ya got coin? We'll take it. Ya thirsty? Plenty o'kegs inside. Work a bit on your skills, or just stare listlessly at a wall, we don't care here. Make do and lay low til they stop lookin for ya, then get back out there and find yer wealth!
REPLACE INTO creature_template VALUES
(60878, 13091, 0, 0, 0, 'Carver Molsen', '', 0, 21, 21, 1392, 1392, 0, 0, 740, 17, 0, 1, 1.14286, 0, 18, 5, 0, 1, 1, 101, 130, 0, 94, 1, 2000, 2000, 1, 32768, 0, 0, 0, 0, 0, 0, 29.6792, 40.8089, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 'npc_carver_molsen'),
(60879, 3370, 0, 0, 0, 'Larry Ryder', '', 0, 30, 30, 1002, 1002, 0, 0, 1188, 12, 3, 1, 1.14286, 0, 18, 5, 0, 0, 1, 42, 53, 0, 122, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 42.1344, 57.9348, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43, 61, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60880, 4492, 0, 0, 0, 'Krull Fireblood', 'Warsong Outriders', 0, 35, 35, 1342, 1342, 0, 0, 1373, 290, 1, 1, 1.14286, 1.35, 18, 5, 0, 0, 1, 51, 65, 0, 138, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 51.128, 70.301, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60881, 9283, 0, 0, 0, 'Kodiak Killbrew', 'Get Rich Or Die Grinding', 0, 42, 42, 1981, 1981, 0, 0, 2246, 290, 16388, 1, 1.14286, 0, 18, 5, 0, 0, 1, 64, 79, 0, 172, 1, 2000, 2000, 1, 768, 0, 0, 0, 0, 0, 0, 58.7664, 80.8038, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 54, 0, 0, 0, 0, 0, 0, ''),
(60882, 2221, 0, 0, 0, 'Aerdri', 'Get Rich Or Die Grinding', 0, 48, 48, 2398, 2398, 0, 0, 2753, 290, 0, 1, 1.14286, 0, 20, 5, 40, 0, 1, 74, 96, 0, 208, 1, 1000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 62.744, 86.273, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 6087, 0, 0, 0, 0, 0, 0, ''),
(60883, 7128, 0, 0, 0, 'Fiddlemaster', 'Get Rich Or Die Grinding', 0, 47, 47, 2300, 2300, 0, 0, 2386, 290, 0, 1, 1.14286, 0, 18, 5, 0, 0, 1, 77, 96, 0, 220, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 62.8672, 86.4424, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60884, 9424, 0, 0, 0, 'Koniwa', 'Get Rich Or Die Grinding', 0, 45, 45, 2217, 2217, 0, 0, 2725, 290, 1, 1, 1.14714, 0, 20, 5, 40, 0, 1, 78, 95, 0, 204, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @equip_template = 20148; set @weapon_1 = 2844; set @weapon_2 = 4023; set @weapon_3 = 0; set @creature = 60878;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @gossip_menu_id = 41185; set @magic_number = 60884;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Make her have the following dialog: Well look who stumbled on this hole in the wall! Ya found our hideaway, those who\'re lookin to get rich or die grindin. Ya got coin? We\'ll take it. Ya thirsty? Plenty o\'kegs inside.\n\nWork a bit on your skills, or just stare listlessly at a wall, we don\'t care here. Make do and lay low til they stop lookin for ya, then get back out there and find yer wealth!');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41184; set @magic_number = 60880;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Since the death of Grommash Hellscream, our clan have been scattered around kalimdor, from Ashenvale down to the Thousand Needles.\n\nNowadays, only the most fierceful leaders of the Warsong Outriders are listened still. But one day, sooner or later... A new Warchief will arise! We are the ones who built Orgrimmar in a few days. All the citizens witness what have done the real sons of the Horde!\n\nWe\'ll never let some filthy night elves continue their outrageous sabotage.\n\nThe War-effort has no end. As long as the eternal nomadry will run the entire Kalimdor.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41183; set @magic_number = 60879;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'What is it you want? I\'m busy, so move it along.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

REPLACE INTO npc_vendor  VALUES (60881, 2320, 0, 0, 0, 0);
REPLACE INTO npc_vendor  VALUES (60881, 2321, 0, 0, 0, 0);
REPLACE INTO npc_vendor  VALUES (60881, 2325, 0, 0, 0, 0);
REPLACE INTO npc_vendor  VALUES (60881, 2604, 0, 0, 0, 0);
REPLACE INTO npc_vendor  VALUES (60881, 2678, 0, 0, 0, 0);
REPLACE INTO npc_vendor  VALUES (60881, 2692, 0, 0, 0, 0);
REPLACE INTO npc_vendor  VALUES (60881, 2880, 0, 0, 0, 0);
REPLACE INTO npc_vendor  VALUES (60881, 2901, 0, 0, 0, 0);
REPLACE INTO npc_vendor  VALUES (60881, 2928, 0, 0, 0, 0);
REPLACE INTO npc_vendor  VALUES (60881, 3371, 0, 0, 0, 0);
REPLACE INTO npc_vendor  VALUES (60881, 3372, 0, 0, 0, 0);
REPLACE INTO npc_vendor  VALUES (60881, 3466, 0, 0, 0, 0);
REPLACE INTO npc_vendor  VALUES (60881, 3682, 0, 0, 0, 0);
REPLACE INTO npc_vendor  VALUES (60881, 3713, 0, 0, 0, 0);
REPLACE INTO npc_vendor  VALUES (60881, 3777, 0, 0, 0, 0);
REPLACE INTO npc_vendor  VALUES (60881, 3857, 0, 0, 0, 0);
REPLACE INTO npc_vendor  VALUES (60881, 4289, 0, 0, 0, 0);
REPLACE INTO npc_vendor  VALUES (60881, 4291, 0, 0, 0, 0);
REPLACE INTO npc_vendor  VALUES (60881, 4340, 0, 0, 0, 0);
REPLACE INTO npc_vendor  VALUES (60881, 4341, 0, 0, 0, 0);
REPLACE INTO npc_vendor  VALUES (60881, 4342, 0, 0, 0, 0);
REPLACE INTO npc_vendor  VALUES (60881, 4399, 0, 0, 0, 0);
REPLACE INTO npc_vendor  VALUES (60881, 4400, 0, 0, 0, 0);
REPLACE INTO npc_vendor  VALUES (60881, 5956, 0, 0, 0, 0);
REPLACE INTO npc_vendor  VALUES (60881, 6183, 0, 0, 0, 0);
REPLACE INTO npc_vendor  VALUES (60881, 6217, 0, 0, 0, 0);
REPLACE INTO npc_vendor  VALUES (60881, 6256, 0, 0, 0, 0);
REPLACE INTO npc_vendor  VALUES (60881, 6530, 0, 0, 0, 0);
REPLACE INTO npc_vendor  VALUES (60881, 6532, 0, 0, 0, 0);
REPLACE INTO npc_vendor  VALUES (60881, 7005, 0, 0, 0, 0);
REPLACE INTO npc_vendor  VALUES (60881, 8343, 0, 0, 0, 0);
REPLACE INTO npc_vendor  VALUES (60881, 8925, 0, 0, 0, 0);
REPLACE INTO npc_vendor  VALUES (60881, 12228, 0, 0, 0, 0);
REPLACE INTO npc_vendor  VALUES (60881, 12231, 0, 0, 0, 0);
REPLACE INTO npc_vendor  VALUES (60881, 14341, 0, 0, 0, 0);
REPLACE INTO npc_vendor  VALUES (60881, 18256, 0, 0, 0, 0);
REPLACE INTO npc_vendor  VALUES (60881, 50231, 0, 0, 0, 0);
-- New World Epics.
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, random_property, required_reputation_faction, required_reputation_rank) values (60782, 'Shieldbreaker Arbalest', '', 2, 18, 1, 4, 66264, 2, 56, 0, -1, -1, 196412, 49103, 26, 0, 0, 0, 1, 1, 0, 73, 133, 3000, 0, 0, 90, 0, 0, 0, 61, 100, 65, 0, 0, 0, 0, 0, 0, 48035, 1, 0, 0, 0, 0, 0, 0, 0, 0);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, random_property, required_reputation_faction, required_reputation_rank) values (60783, 'Orb of Pure Light', '', 4, 0, 1, 4, 27556, 2, 36, 0, -1, -1, 28312, 7078, 23, 6, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41, 0, 61, 0, 0, 0, 0, 0, 0, 9417, 1, 0, 0, -1, 0, -1, 24426, 1, 0, 0, -1, 0, -1, 0, 0, 0);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, stat_type2, stat_value2, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, spellid_3, spelltrigger_3, spellcharges_3, spellppmrate_3, spellcooldown_3, spellcategory_3, spellcategorycooldown_3, spellid_4, spelltrigger_4, spellcharges_4, spellppmrate_4, spellcooldown_4, spellcategory_4, spellcategorycooldown_4, random_property, required_reputation_faction, required_reputation_rank) values (60784, 'Breastplate of Beast Mastery', '', 4, 3, 5, 4, 29919, 2, 53, 0, -1, -1, 138412, 34603, 5, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 140, 377, 0, 0, 58, 0, 64, 0, 0, 0, 0, 0, 0, 3, 25, 7, 18, 27225, 1, 0, 0, -1, 0, -1, 27038, 1, 0, 0, -1, 0, -1, 27206, 1, 0, 0, -1, 0, -1, 27043, 1, 0, 0, -1, 0, -1, 0, 0, 0);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, random_property, required_reputation_faction, required_reputation_rank) values (60785, 'Choker of Cauterization', '', 4, 0, 1, 4, 1399, 2, 39, 0, -1, -1, 41452, 10363, 2, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44, 0, 61, 0, 0, 0, 0, 0, 0, 9294, 1, 0, 0, -1, 0, -1, 20885, 1, 0, 0, -1, 0, -1, 0, 0, 0);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, random_property, required_reputation_faction, required_reputation_rank) values (60786, 'The Night Watchman', '', 4, 2, 8, 4, 21958, 2, 35, 0, -1, -1, 38412, 9603, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 70, 108, 0, 0, 40, 0, 61, 0, 0, 0, 0, 0, 0, 3, 15, 7, 17, 6, 10, 23217, 1, 0, 0, -1, 0, -1, 0, 0, 0);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, random_property, required_reputation_faction, required_reputation_rank) values (60787, 'Scythe of the Harvest', '', 2, 6, 1, 4, 61041, 2, 42, 0, -1, -1, 174273, 43568, 17, 1, 0, 0, 1, 1, 0, 98, 147, 2700, 0, 0, 120, 0, 0, 0, 47, 0, 62, 0, 0, 0, 0, 0, 0, 7, 15, 16414, 2, 0, 3, 0, 0, -1, 0, 0, 0);
-- New World Epics drops:
-- Shieldbreaker Arbalest.
REPLACE INTO reference_loot_template VALUES (30087, 60782, 0, 1, 1, 1, 0);
REPLACE INTO reference_loot_template VALUES (30212, 60782, 0, 10, 1, 1, 0);
REPLACE INTO reference_loot_template VALUES (30335, 60782, 0, 6, 1, 1, 0);
REPLACE INTO reference_loot_template VALUES (150112, 60782, 0, 1, 1, 1, 0);
-- Orb of Pure Light.
REPLACE INTO reference_loot_template VALUES (30035, 60783, 0, 1, 1, 1, 0);
-- Chestplate of Beast Mastery.
REPLACE INTO reference_loot_template VALUES (30086, 60784, 0, 1, 1, 1, 0);
REPLACE INTO reference_loot_template VALUES (30183, 60784, 0, 10, 1, 1, 0);
REPLACE INTO reference_loot_template VALUES (30197, 60784, 0, 1, 1, 1, 0);
REPLACE INTO reference_loot_template VALUES (150112, 60784, 0, 1, 1, 1, 0);
-- Choker of Cauterization.
REPLACE INTO reference_loot_template VALUES (30073, 60785, 0, 1, 1, 1, 0);
-- The Night Watchsman.
REPLACE INTO reference_loot_template VALUES (30035, 60786, 0, 1, 1, 1, 0);
-- Scythe of the Harvest
REPLACE INTO reference_loot_template VALUES (30075, 60787, 0, 1, 1, 1, 0);
-- Restore missing loot table for NPC 60831.
REPLACE INTO creature_loot_template VALUES (60831, 774, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 818, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 1206, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 1210, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 1529, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 1685, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 1705, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 1710, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 2772, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 2838, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 3358, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 3395, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 3818, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 3821, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 3827, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 3858, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 3864, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 3914, 0.04, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 3928, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 4305, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 4306, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 4338, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 4425, 0.54, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 4426, 0.52, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 4500, 0.04, 0, 1, 1, 109);
REPLACE INTO creature_loot_template VALUES (60831, 4625, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 4638, 0.0536, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 5758, 0.0574, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 6149, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 7909, 0.0383, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 7910, 0.0268, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 7911, 0.04, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 7912, 0.04, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 7975, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 7989, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 7990, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 7992, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 7993, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 8028, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 8029, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 8386, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 8387, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 8389, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 8390, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 8766, 2.2959, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 8831, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 8838, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 8839, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 8932, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 8948, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 8950, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 8952, 4.9554, 0, 1, 2, 0);
REPLACE INTO creature_loot_template VALUES (60831, 8953, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 9295, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 9298, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 10300, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 10301, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 10305, 0.34, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 10306, 0.34, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 10315, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 10320, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 10603, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 10604, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 10606, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 10608, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 60572, 0.1, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 10620, 0.1, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 11202, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 11204, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 11208, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 11225, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 11732, 0.0153, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 11733, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 11734, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 11736, 0.0153, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 11737, 0.04, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 12364, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 12365, 0.04, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 12682, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 12683, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 12684, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 12689, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 12691, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 12692, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 12694, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 12704, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 13443, 1.44, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 13446, 2.76, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 13463, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 13490, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 13492, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 13493, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 14047, 24.3294, 0, 1, 2, 0);
REPLACE INTO creature_loot_template VALUES (60831, 14466, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 14467, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 14470, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 14474, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 14478, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 14479, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 14484, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 14489, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 14491, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 14492, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 14494, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 14496, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 14498, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 15731, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 15737, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 15743, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 15745, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 15755, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 15757, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 16043, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 16215, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 16218, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 16220, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 16245, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 19230, 0.0077, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 19231, 0.0038, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 19232, 0.0038, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 19259, 0.0077, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 19260, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 19261, 0.0038, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 19269, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 19270, 0.0077, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 19271, 0.0038, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 19278, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 19279, 0.0038, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 19280, 0.0153, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 20400, 0.04, 0, 1, 1, 108);
REPLACE INTO creature_loot_template VALUES (60831, 22528, 34.1254, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 24024, 2.5, 0, -24024, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 24028, 0.01, 0, -24028, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 30043, 0.5, 0, -30043, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 30044, 0.01, 0, -30044, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 30045, 0.5, 0, -30045, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 30046, 0.5, 0, -30046, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 30047, 0.01, 0, -30047, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 30048, 2.5, 0, -30048, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 30049, 0.5, 0, -30049, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 30050, 0.01, 0, -30050, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 30051, 0.0025, 0, -30051, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 30052, 0.0025, 0, -30052, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 30053, 0.0025, 0, -30053, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 30072, 0.5, 0, -30072, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 30103, 0.0025, 0, -30103, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 60582, 0.005, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 60582, 0.005, 3, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 60611, 0.0025, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 60611, 0.0025, 3, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 60612, 0.0025, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 60612, 0.0025, 3, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 60613, 0.0025, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 60613, 0.0025, 2, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 60614, 0.0025, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 60614, 0.0025, 2, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 60615, 0.0025, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 60615, 0.0025, 2, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 60616, 0.005, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 60616, 0.005, 2, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 60617, 0.0025, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 60617, 0.0025, 2, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 60618, 0.0025, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 60618, 0.0025, 2, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 60702, 6, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 60702, 6, 3, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 60703, 6, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 60703, 6, 3, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 60709, 6, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 60709, 6, 3, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 84010, 0.085, 5, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 84011, 0.085, 5, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 84012, 0.0025, 5, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 84013, 0.085, 5, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 84014, 0.085, 5, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60831, 84015, 0.085, 5, 1, 1, 0);
-- Restore missing loot table for NPC 60716.
REPLACE INTO creature_loot_template VALUES (60716, 774, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 818, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 1206, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 1210, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 1529, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 1685, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 1705, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 1710, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 2772, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 2838, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 3358, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 3395, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 3818, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 3821, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 3827, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 3858, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 3864, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 3914, 0.04, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 3928, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 4305, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 4306, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 4338, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 4425, 0.54, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 4426, 0.52, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 4500, 0.04, 0, 1, 1, 109);
REPLACE INTO creature_loot_template VALUES (60716, 4625, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 4638, 0.0536, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 5758, 0.0574, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 6149, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 7909, 0.0383, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 7910, 0.0268, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 7911, 0.04, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 7912, 0.04, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 7975, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 7989, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 7990, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 7992, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 7993, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 8028, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 8029, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 8386, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 8387, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 8389, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 8390, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 8766, 2.2959, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 8831, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 8838, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 8839, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 8932, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 8948, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 8950, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 8952, 4.9554, 0, 1, 2, 0);
REPLACE INTO creature_loot_template VALUES (60716, 8953, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 9295, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 9298, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 10300, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 10301, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 10305, 0.34, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 10306, 0.34, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 10315, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 10320, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 10603, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 10604, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 10606, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 10608, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 60572, 0.1, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 10620, 0.1, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 11202, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 11204, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 11208, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 11225, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 11732, 0.0153, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 11733, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 11734, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 11736, 0.0153, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 11737, 0.04, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 12364, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 12365, 0.04, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 12682, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 12683, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 12684, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 12689, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 12691, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 12692, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 12694, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 12704, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 13443, 1.44, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 13446, 2.76, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 13463, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 13490, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 13492, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 13493, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 14047, 24.3294, 0, 1, 2, 0);
REPLACE INTO creature_loot_template VALUES (60716, 14466, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 14467, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 14470, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 14474, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 14478, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 14479, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 14484, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 14489, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 14491, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 14492, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 14494, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 14496, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 14498, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 15731, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 15737, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 15743, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 15745, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 15755, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 15757, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 16043, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 16215, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 16218, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 16220, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 16245, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 19230, 0.0077, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 19231, 0.0038, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 19232, 0.0038, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 19259, 0.0077, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 19260, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 19261, 0.0038, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 19269, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 19270, 0.0077, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 19271, 0.0038, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 19278, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 19279, 0.0038, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 19280, 0.0153, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 20400, 0.04, 0, 1, 1, 108);
REPLACE INTO creature_loot_template VALUES (60716, 22528, 34.1254, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 24024, 2.5, 0, -24024, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 24028, 0.01, 0, -24028, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 30043, 0.5, 0, -30043, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 30044, 0.01, 0, -30044, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 30045, 0.5, 0, -30045, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 30046, 0.5, 0, -30046, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 30047, 0.01, 0, -30047, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 30048, 2.5, 0, -30048, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 30049, 0.5, 0, -30049, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 30050, 0.01, 0, -30050, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 30051, 0.0025, 0, -30051, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 30052, 0.0025, 0, -30052, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 30053, 0.0025, 0, -30053, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 30072, 0.5, 0, -30072, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 30103, 0.0025, 0, -30103, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 60582, 0.005, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 60582, 0.005, 3, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 60611, 0.0025, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 60611, 0.0025, 3, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 60612, 0.0025, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 60612, 0.0025, 3, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 60613, 0.0025, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 60613, 0.0025, 2, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 60614, 0.0025, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 60614, 0.0025, 2, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 60615, 0.0025, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 60615, 0.0025, 2, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 60616, 0.005, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 60616, 0.005, 2, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 60617, 0.0025, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 60617, 0.0025, 2, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 60618, 0.0025, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 60618, 0.0025, 2, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 60702, 6, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 60702, 6, 3, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 60703, 6, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 60703, 6, 3, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 60709, 6, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 60709, 6, 3, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 84010, 0.085, 5, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 84011, 0.085, 5, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 84012, 0.0025, 5, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 84013, 0.085, 5, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 84014, 0.085, 5, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60716, 84015, 0.085, 5, 1, 1, 0);
-- Restore missing loot table for NPC 60830.
REPLACE INTO creature_loot_template VALUES (60830, 774, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 818, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 1206, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 1210, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 1529, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 1685, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 1705, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 1710, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 2772, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 2838, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 3358, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 3395, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 3818, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 3821, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 3827, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 3858, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 3864, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 3914, 0.04, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 3928, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 4305, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 4306, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 4338, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 4425, 0.54, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 4426, 0.52, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 4500, 0.04, 0, 1, 1, 109);
REPLACE INTO creature_loot_template VALUES (60830, 4625, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 4638, 0.0536, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 5758, 0.0574, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 6149, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 7909, 0.0383, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 7910, 0.0268, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 7911, 0.04, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 7912, 0.04, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 7975, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 7989, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 7990, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 7992, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 7993, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 8028, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 8029, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 8386, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 8387, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 8389, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 8390, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 8766, 2.2959, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 8831, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 8838, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 8839, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 8932, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 8948, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 8950, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 8952, 4.9554, 0, 1, 2, 0);
REPLACE INTO creature_loot_template VALUES (60830, 8953, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 9295, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 9298, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 10300, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 10301, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 10305, 0.34, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 10306, 0.34, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 10315, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 10320, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 10603, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 10604, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 10606, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 10608, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 60572, 0.1, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 10620, 0.1, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 11202, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 11204, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 11208, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 11225, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 11732, 0.0153, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 11733, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 11734, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 11736, 0.0153, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 11737, 0.04, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 12364, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 12365, 0.04, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 12682, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 12683, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 12684, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 12689, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 12691, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 12692, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 12694, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 12704, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 13443, 1.44, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 13446, 2.76, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 13463, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 13490, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 13492, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 13493, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 14047, 24.3294, 0, 1, 2, 0);
REPLACE INTO creature_loot_template VALUES (60830, 14466, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 14467, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 14470, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 14474, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 14478, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 14479, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 14484, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 14489, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 14491, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 14492, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 14494, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 14496, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 14498, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 15731, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 15737, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 15743, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 15745, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 15755, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 15757, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 16043, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 16215, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 16218, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 16220, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 16245, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 19230, 0.0077, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 19231, 0.0038, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 19232, 0.0038, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 19259, 0.0077, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 19260, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 19261, 0.0038, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 19269, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 19270, 0.0077, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 19271, 0.0038, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 19278, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 19279, 0.0038, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 19280, 0.0153, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 20400, 0.04, 0, 1, 1, 108);
REPLACE INTO creature_loot_template VALUES (60830, 22528, 34.1254, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 24024, 2.5, 0, -24024, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 24028, 0.01, 0, -24028, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 30043, 0.5, 0, -30043, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 30044, 0.01, 0, -30044, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 30045, 0.5, 0, -30045, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 30046, 0.5, 0, -30046, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 30047, 0.01, 0, -30047, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 30048, 2.5, 0, -30048, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 30049, 0.5, 0, -30049, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 30050, 0.01, 0, -30050, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 30051, 0.0025, 0, -30051, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 30052, 0.0025, 0, -30052, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 30053, 0.0025, 0, -30053, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 30072, 0.5, 0, -30072, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 30103, 0.0025, 0, -30103, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 60582, 0.005, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 60582, 0.005, 3, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 60611, 0.0025, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 60611, 0.0025, 3, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 60612, 0.0025, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 60612, 0.0025, 3, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 60613, 0.0025, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 60613, 0.0025, 2, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 60614, 0.0025, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 60614, 0.0025, 2, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 60615, 0.0025, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 60615, 0.0025, 2, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 60616, 0.005, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 60616, 0.005, 2, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 60617, 0.0025, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 60617, 0.0025, 2, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 60618, 0.0025, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 60618, 0.0025, 2, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 60702, 6, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 60702, 6, 3, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 60703, 6, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 60703, 6, 3, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 60709, 6, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 60709, 6, 3, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 84010, 0.085, 5, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 84011, 0.085, 5, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 84012, 0.0025, 5, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 84013, 0.085, 5, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 84014, 0.085, 5, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (60830, 84015, 0.085, 5, 1, 1, 0);
-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1792
update quest_template set requiredraces = 589 where entry = 40411;
-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1791
REPLACE INTO gameobject_template VALUES
(2010697, 2, 39, 'Wooden Chair', 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
update gameobject set id = 2010697 where guid = 1270031;
-- deleted wrong loot id.
delete from creature_loot_template where entry = 92145;
-- Quest 40535 add short description.
update quest_template set objectives = 'Collect 2 pieces of Leg Meat from Adult Plainstriders for Trainer Tokala at Red Cloud Roost in Mulgore.' where entry = 40535;
-- Quest 40535 add short description.
update quest_template set objectives = 'Feed Sunchaser and defeat him in battle, once complete, return to Trainer Tokala at Red Cloud Roost in Mulgore.' where entry = 40536;
-- Quest 40535 add short description.
update quest_template set objectives = 'Gather a Pristine Harpy Feather from Windfury Harpies for Trainer Tokala at Red Cloud Roost in Mulgore.' where entry = 40537;
-- Quest 60011 update details.
update quest_template set details = 'Paladin! As protectors of the weak, we have a responsibility to cast justice upon the wicked. Countless times you will experience insurmountable foes, some ferocious and brutal while others act with cunning.\n\nOne such enemy resides deep inside Elwynn Forest, at the very end of the Forest\'s Edge. The foul creature\'s name is Hogger. He surrounds himself with his gnoll underlings, acting as the alpha among them. Be careful not to get caught outnumbered.\n\nTo bring justice to your adversaries, you must believe in the light to guide you. Bring along your trusted allies, venture forth and quench this evil before it does any more harm.\n\nMay the light be with you!' where entry = 60011;
-- update broadcast_text of npc 60851.
update broadcast_text set male_text = 'Your curious face tells me you want to know who we are or what we do...\n\n<Ley-Technician Vorthal sighs exasperatedly.>\n\nWe are the Thalassian Alliance, an organization with the noble goal of helping refugees, my people, the High Elves, and of course, supporting our new Alliance allies in whatever they do.\n\nNow, if you will excuse me, I need to fix this blasted orb, so, unless you happen to be an expert in ley lines or mana currents, go entertain yourself elsewhere and stop wasting my time!' where entry = 60851;
-- NPC Sunchaser should not be killable in the quest 40536.
update creature_template set health_min = 350, health_max = 350 where entry = 60821;
update creature set spawntimesecsmin = 1, spawntimesecsmax = 1 where ID = 60821;
-- Set disenchant ID of item 60500 to 48.
update item_template set disenchant_id = 48 where entry = 60500;
-- Rename orb of pure light to orb of purified light.
update item_template set name = 'Orb of Purified Light' where entry = 60783;
-- NPCs 15203, 15204, 15205 should drop 20515 with a 100% chance.
REPLACE INTO creature_loot_template VALUES (15203, 20515, 100, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (15204, 20515, 100, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (15205, 20515, 100, 1, 1, 1, 0);
-- Reduce drop chance of 'Technique: Die by the Sword' to 4%.
update gameobject_loot_template set chanceorquestchance = 4 where item = 83570;
-- Reduce drop chance of 'Codex: Shadow Mend' to 4%.
update creature_loot_template set chanceorquestchance = 4 where item = 83571;
-- missing world drops.
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, stat_type2, stat_value2, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, random_property, required_reputation_faction, required_reputation_rank) values (60788, 'Sandals of Inner Peace', '', 4, 1, 7, 4, 28664, 2, 36, 0, -1, -1, 25215, 6303, 8, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 50, 44, 0, 0, 41, 0, 61, 0, 0, 0, 0, 0, 0, 5, 10, 6, 15, 14521, 1, 0, 0, 0, 0, 0, 0, 0, 0);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, random_property, required_reputation_faction, required_reputation_rank) values (60789, 'Finke\'s Accelerator', 'Guaranteed time dilation! Finkle Einhorn is not responsible for any malfunctions and untimely death via aging.', 4, 0, 1, 4, 3257, 2, 37, 0, -1, -1, 41452, 10363, 12, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43, 0, 61, 0, 0, 0, 0, 0, 0, 8815, 1, 0, 0, 0, 0, 0, 0, 0, 0);
-- New World Epics drops:
-- Sandals of Inner Peace.
REPLACE INTO reference_loot_template VALUES (30035, 60788, 0, 1, 1, 1, 0);
-- Finke's Accelerator.
REPLACE INTO reference_loot_template VALUES (30036, 60789, 0, 1, 1, 1, 0);
-- Bladebane Armguards.
REPLACE INTO reference_loot_template VALUES (30051, 14550, 0, 1, 1, 1, 0);
-- Abyssal Wave.
REPLACE INTO creature_loot_template VALUES (15305, 83557, 40, 1, 1, 1, 0);
-- Call of shadow, fixed with bugfix patch, new displayID.
update item_template set display_id = 66281 where entry = 51046;