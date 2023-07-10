-- The Wildshaper
delete from quest_template where entry = 41016;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41016,2,2557,60,55,0,0,'The Wildshaper','The Wildshaper, a title given to him by the druids in Hyjal. Alzzin is what they go by now. A twisted, corrupted form of what they once were. Standing opposed to all beliefs they held before corruption.$B$B\'Alzzin\' was once a friend of mine, and now seeks nothing but the total corruption of Feralas. I feel it is my duty to put an end to his evil schemes once and for all.$B$BYou can find him lurking deep within Dire Maul with his satyr kin. Slay him, and bring me his head, only then will I find solace.','Bring the Head of Alzzin the Wildshaper for Arch Druid Dreamwind at Nordanaar in Hyjal.','Has that foul beast been brought to justice?','I could never imagine such a betrayal, it struck me so deep that I do not even wish to recall the memories.$B$BI thank you for putting this traitor to death. Without your interferance I fear what Alzzin may have accomplished. Please, take this, as a gesture of my extreme thanks.',61702,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 11500,46800,7800,0,0,0,0,0,0,0,0,0,0,0, 61199,1,61703,1,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61512, 41016);
replace into creature_involvedrelation	(id, quest) values (61512, 41016);
update quest_template set type = 81 where entry = 41016;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61702,5981,'Head of Alzzin the Wildshaper',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,3);

replace into creature_loot_template values
(11492,61702,-100,0,1,1,0);

replace into item_template values
 ('61703', '4', '0', 'Talisman of the Dreamshaper', '', '32073', '3', '0', '1', '48996', '12249', '2', '-1', '-1', '65',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '8', '7', '6',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3',
 '0', '0', '0', '9345', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);

-- Vilemusk Infiltration
delete from quest_template where entry = 41017;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41017,2,616,60,55,0,0,'Vilemusk Infiltration','Nordrassil Glade has been a place of tranquility for many ages, but already agents of the legion have begun to spread their taint. Satyrs, traitors of a most disgusting kind have been probing at our borders.$B$BThey call themselves the \'Vilemusk\' a name befitting of their illbegotten kin. I demand their presence removed from Hyjal, hunt them, and bring me their hooves as proof of your deeds. Do so, and you shall be rewarded.','Gather thirty Vilemusk Hooves for Arch Druid Dreamwind at Nordanaar in Hyjal.','The satyr were once much like us, and now they stalk from the shadows and undermine our efforts.','You have done well, such a task will not be forgotten. For each satyr that has fallen there shall be one less for when the time truly comes.$B$BThis battle for Hyjal is dependant on such heroic actions. Take this Bright Dream Shard, as thanks from us.',61704,30,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,42600,7100,0,0,0,0,0,0,0,0,0,0,0, 61199,1,61705,1,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61512, 41017);
replace into creature_involvedrelation	(id, quest) values (61512, 41017);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61704,7295,'Vilemusk Hoof',12,1,2048,1,-1,-1,1,30,-1,-1,-1,-1,4,'',0,3);

replace into creature_loot_template values
(61338,61704,-88,0,1,1,0),
(61339,61704,-88,0,1,1,0),
(61340,61704,-88,0,1,1,0),
(61341,61704,-88,0,1,1,0);

replace into item_template values
 ('61705', '4', '0', 'Dreamwind Sigil', '', '66245', '2', '0', '1', '35620', '8905', '11', '-1', '-1', '65',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '5', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '12',
 '0', '12', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '30', '0', '0', '0',
 '0', '1', NULL);

-- Corrupted Dream Shards
delete from quest_template where entry = 41018;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41018,2,616,60,55,0,1,'Corrupted Dream Shards','Dream Shards are a resonation of magical energy from the Emerald Dream made manifest here in Hyjal. They contain a very powerful energy that, when manipulated, can be used for darker purposes. The Burning Legion have been collecting them and corrupting them for their nefarious purposes.$B$BHunt down the demons still present in Hyjal, and collect these Corrupt Dream Shards, bring them to me so that they can be restored.','Gather 5 Corrupt Dream Shards for Arch Druid Dreamwind at Nordanaar in Hyjal.','Have you found these corrupt shards?','Dark magic lingers deep in these shards, it is good that you have recovered them before it was too late.$B$BTake this, as thanks for recovering these from the brink of destruction. If you find any more, bring them to me.',61706,5,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,0,0,0,0,0,0,0,0,0,0,0,0, 61198,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61512, 41018);
replace into creature_involvedrelation	(id, quest) values (61512, 41018);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61706,1364,'Corrupt Dream Shard',12,1,2048,1,-1,-1,1,5,-1,-1,-1,-1,4,'',0,4);

replace into creature_loot_template values
(61338,61706,-24,0,1,1,0),
(61339,61706,-24,0,1,1,0),
(61340,61706,-24,0,1,1,0),
(61341,61706,-24,0,1,1,0),
(61354,61706,-44,0,1,1,0),
(61349,61706,-44,0,1,1,0),
(61350,61706,-44,0,1,1,0),
(61352,61706,-89,0,1,1,0),
(61353,61706,-89,0,1,1,0);

-- Shadeflayer Tribal Bracelets
delete from quest_template where entry = 41019;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41019,2,616,60,55,0,1,'Shadeflayer Tribal Bracelets','The Shadeflayer trolls have taken a stance of hostility towards us in Hyjal. They were once called the Shadowtooth Tribe, and valiantly fought alongside us against the Burning Legion.$B$BSuch times are now long gone, as corruption has taken hold of even those we held as allies. I task you to travel to Zul\'Hatha where they call home to the west, slay them, and procure 10 Shadeflayer Tribal Bracelets. Bring these bracelets to me and you will be rewarded.','Gather 10 Shadeflayer Tribal Bracelets at Nordanaar in Hyjal.','Do not doubt the will of our enemies. They are united to destroy us.','You have done well. Such actions ensure our safety here in Nordanaar. Nordrassil Glade must be kept as a safe haven, not threatened by the evil whims of maddened trolls.$B$BTake this Small Dream Shard, as thanks from us here.',61707,10,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,0,0,0,0,0,0,0,0,0,0,0,0, 61198,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61520, 41019);
replace into creature_involvedrelation	(id, quest) values (61520, 41019);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61707,3600,'Shadeflayer Tribal Bracelet',12,1,2048,1,-1,-1,55,20,-1,-1,-1,-1,0,'',0,8);

update item_template set buy_price = 600, sell_price = 150 where entry = 61707;

replace into creature_loot_template values
(61356,61707,-10.4,0,1,1,0),
(61357,61707,-10.4,0,1,1,0),
(61358,61707,-10.4,0,1,1,0),
(61359,61707,-10.4,0,1,1,0),
(61367,61707,-6.3,0,1,1,0),
(61533,61707,-100,0,1,1,0);

-- Lord Xanvarak
delete from quest_template where entry = 41020;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41016,41020,2,616,60,55,0,0,'Lord Xanvarak','During the Third War, the Burning Legion tested their strength against our might, and were defeated by the armies that gathered before Nordrassil. Again they come, gathering in preparation for nefarious deeds.$B$BThis time we have no mighty armies to defend us, or the wisdom of Malfurion to guide us. The defense of Hyjal relies on us, the brave remaining few, to be vigilant against evil.$B$BI ask you to challenge the might of Lord Xanvarak. The leader of the Burning Legion here in Hyjal. He has begun to assemble a mighty host of demonic soldiers in Bleakhollow Crater, just outside of Nordrassil Glade to the west. Bring me his heart, and put an end to our worries.','Bring the Heart of Xanvarak to Arch Druid Dreamwind in Nordanaar.','The power of the Burning Legion should not be taken lightly. Bring your own host of would-be adventurers, or mercenaries to challenge Xanvarak\'s strength.','The Heart of Xanvarak, such foul power can be felt emitting from his life-blood. Your efforts in defending Hyjal have been paramount. With Xanvarak destroyed, it will be some time before the demons can rally behind a new leader.$B$BYou have brought us peace, for however long that may last. Such an achievement is worthy of a reward most sacred.',61707,10,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,48600,8100,0,0,0,0,0,0,0,0,0,0,0, 61199,2,0,0,0,0,0,0, 61708,1,61709,1,61710,1,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61512, 41020);
replace into creature_involvedrelation	(id, quest) values (61512, 41020);
update quest_template set type = 1 where entry = 41020;

update quest_template set exclusivegroup = -41016 where entry in (41016,41017);

update creature_template set script_name = 'npc_arch_druid_dreamwind' where entry = 61512;

replace into item_template values
 ('61708', '4', '2', 'Dreamwind Spaulders', '', '29928', '3', '0', '1', '93124', '23281', '3', '-1', '-1', '65',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '14', '7', '5',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '131', '0', '0', '0',
 '0', '0', '0', '15714', '1', '0', '0', '-1', '0', '-1', '21618', '1', '0', '0', '-1', '0', '-1', '7694', '1',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '60', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61709', '4', '0', 'Windtalker Cape', '', '29681', '3', '0', '1', '70820', '17705', '16', '-1', '-1', '65',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '16', '3', '8',
 '5', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '47', '0', '0', '10',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61710', '4', '6', 'Defender of Nordrassil', '', '20873', '3', '0', '1', '153164', '38291', '14', '-1', '-1', '65',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '4', '5', '2',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '41', '2289', '0', '0', '5',
 '0', '0', '0', '9345', '1', '0', '0', '-1', '0', '-1', '21509', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '4', '0', '0', '100', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);

-- Culling Wildlife
delete from quest_template where entry = 41021;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41021,2,616,60,55,0,0,'Culling Wildlife','The effects of the Third War are still present in Hyjal. Demonic corruption lingers upon the land, and has touched the wildlife of the region, driving it into madness. There is still hope, however, if we can conserve the younger generations and remove the corruption of their kind, there is still a chance for the majestic animals native here.$B$BWe must act as conservationists for the better of nature. Bring me ten Great Beaks from the Greathorn Owls, and ten Misthoof Hide from the Misthoof Stags, for your actions I will reward you with a Small Dream Shard.','Gather 10 Great Beaks, and 10 Misthoof Hide for Naesanna Moongrace at Nordanaar in Hyjal.','Has progress been made?','Such grim tasks are required for the betterment of nature in Hyjal. If we do not act, the animals in Hyjal will be reduced to aggressive and hostile beasts, perhaps even slaves to the legion.$B$BTake this Dream Shard, as thanks on my behalf.',61711,10,61712,10,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,0,0,0,0,0,0,0,0,0,0,0,0, 61198,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61355, 41021);
replace into creature_involvedrelation	(id, quest) values (61355, 41021);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61711,1294,'Great Beak',12,1,2048,1,-1,-1,1,10,-1,-1,-1,-1,4,'',0,3),
(61712,1495,'Misthoof Hide',12,1,2048,1,-1,-1,1,10,-1,-1,-1,-1,4,'',0,8);

replace into creature_loot_template values
(61336,61711,-68,0,1,1,0),
(61337,61711,-68,0,1,1,0),
(61332,61712,-68,0,1,1,0),
(61333,61712,-68,0,1,1,0);

-- Manifestations of Nightmare
delete from quest_template where entry = 41022;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41022,2,616,60,55,0,0,'Manifestations of Nightmare','All around Hyjal, manifestations of corruption taking place within the Emerald Dream are appearing. The green sludges taint the land and actively threaten our way of life. We need to combat this hazard as we would demons of the Burning Legion.$B$BI required you collect forty Enchanted Sludge as proof of your deeds. Do this, and I shall make sure you are rewarded well.','Gather 40 Enchanted Sludge from Oozes for Farana Leafblade at Nordanaar in Hyjal.','Be careful, these monstrosities have no value for life.','You have done well, the lands are safer thanks to your efforts. Though I still have many questions about where these creatures have come from.',61713,40,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 3500,39600,6600,0,0,0,0,0,0,0,0,0,0,0, 61199,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61562, 41022);
replace into creature_involvedrelation	(id, quest) values (61562, 41022);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61713,1507,'Enchanted Sludge',12,1,2048,1,-1,-1,1,20,-1,-1,-1,-1,4,'',0,3);

replace into creature_loot_template values
(61334,61713,-100,0,1,1,0),
(61335,61713,-100,0,1,1,0);

-- Sample for Glanthas
delete from quest_template where entry = 41023;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41022,41023,2,616,60,55,0,0,'Sample for Glanthas','I have prepared a sample of the Enchanted Sludge you have gathered for me. I request that you bring it to Glanthas the Ancient at Nordanaar.$B$BLast I heard, Glanthas and a druid were working together to find the root cause of something similar. Perhaps this sample of sludge can offer them both assistance.','Bring the Sludge Sample to Glanthas the Ancient in Nordanaar.','Yes, can I help you?','Farana Leafblade has sent you? Such a fine warrior, she is as dedicated to this land as I am.$B$B<Glanthas takes the sample, studying it carefully.>$B$BSuch a foul material, contaminated with magical energies.',61714,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61714,1, 0,0,600,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61562, 41023);
replace into creature_involvedrelation	(id, quest) values (61528, 41023);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61714,1507,'Sludge Sample',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,3);

-- Studying Manifestations
delete from quest_template where entry = 41024;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41023,41024,2,616,60,55,0,0,'Studying Manifestations','A druid named Canos Clearwood tasked himself with the inquiry into such monstrosities within Azshara some years ago. His research, however, has led him on a trip to the once human realm of Eastern Plaguelands.$B$BFrom what I hear, he is currently investigating there to find a link between the sludge-like monsters.$B$BBring him this sample, and perhaps you may both learn what is causing this new phenomenon here in Hyjal.','Bring the Sludge Sample to Canos Clearwood in Eastern Plaguelands.','Can I assist you?','Glanthas has sent you to find me?$B$B<Canos takes a moment, looking over the sludge.>$B$BIt would appear some sort of magical properties remain in this sludge, but I take it Glanthas has already gleamed this information.',61714,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61714,1, 0,0,600,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61528, 41024);
replace into creature_involvedrelation	(id, quest) values (61576, 41024);

-- Manifestation Similarities
delete from quest_template where entry = 41025;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41024,41025,2,616,60,55,0,0,'Manifestation Similarities','My research in Azshara has yielded interesting information, though I still need to conduct research here in the Eastern Plaguelands. I have been attempting to find a link between magic and the Oozes themselves, but so far it would appear I have no luck. I have come to the conclusion that these creatures have been here for quite a while, and thus their magical potency has diminished.$B$BI ask of you to find an Imbued Sludge, one that contains a trace of magical energy. You can find the monstrosities near Light\'s Hope Chapel and Corin\'s Crossing here in the Plaguelands.','Gather an Imbued Sludge from the Oozes in Eastern Plaguelands for Canos Clearwood near Lake Mereldar.','I have been searching for quite some time to find a magical linking. Maybe you will have better luck than I.','A trace of magic.$B$B<A sigh escapes Canos.>$B$BI was beginning to doubt myself.',61715,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,40800,6800,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61576, 41025);
replace into creature_involvedrelation	(id, quest) values (61576, 41025);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61715,2797,'Imbued Sludge',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,3);

replace into creature_loot_template values
(8606,61715,-6.1,0,1,1,0),
(8607,61715,-6.1,0,1,1,0);

-- Report to Dreamwind
delete from quest_template where entry = 41026;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41025,41026,2,616,60,55,0,0,'Report to Dreamwind','It would appear that the Oozes are linked to surges of intense and dark magical powers. Lingering as an after effect to great magical energy itself. Perhaps this is a natural occurance, or something much deeper.$B$BIn truth, I cannot be certain if my evidence is correct, or if I am looking in the right area. Regardless, I have prepared a report for Arch Druid Dreamwind in Hyjal. It should explain everything I have come to find.$B$BI must thank you for your assistance, without you, I would still be digging through oozes.','','Can I help you?','My, Canos has put in an impressive amount of work in his research. It is not conclusive, but I am sure he is on the right footing. A magical feedback, or remnant certainly is an interesting theory, and one that will need to be looked into further.$B$BYour assistance in this matter has been emphasized by Glanthas himself, one I hold with the deepest of respects. Take this, as a token of our thanks here in Hyjal.',61716,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61716,1, 0,15000,2500,0,0,0,0,0,0,0,0,0,0,0, 61199,1,61717,1,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61576, 41026);
replace into creature_involvedrelation	(id, quest) values (61512, 41026);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61716,2797,'Imbued Sludge',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,7);

replace into item_template values
 ('61717', '2', '7', 'Groveslicer Glaive', '', '25507', '3', '0', '1', '256432', '64108', '21', '-1', '-1', '64',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '7', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2600', '0',
 '0', '88', '133', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3',
 '0', '0', '0', '13679', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '3', '0', '0', '90', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);

