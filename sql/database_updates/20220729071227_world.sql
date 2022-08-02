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
REPLACE INTO creature_loot_template VALUES (92145, 83244, 0.1, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92145, 83243, 0.1, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92145, 83242, 0.1, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92145, 83241, 0.1, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92145, 60208, 50, 0, 1, 1, 0);
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