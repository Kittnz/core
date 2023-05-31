-- Item "Font of Arcana" (entry 61484), needs to have its drop chance increased to 72% and must drop from Azurescale Manaweaver (Entry 60910).
update creature_template set loot_id = 60910 where entry = 60910;
update creature_loot_template set ChanceOrQuestChance = -72 where entry = 60910 and item = 61484;

REPLACE INTO `creature_display_info_addon` (`display_id`, `bounding_radius`, `combat_reach`, `gender`, `display_id_other_gender`) VALUES
(20273, 0, 0, 0, 0);
-- Guard Captain Marson, display ID 20273, faction 14, level 45, humanoid, scale 1, weapon 61074
REPLACE INTO creature_template VALUES
(61543, 20273, 0, 0, 0, 0, 'Guard Captain Marson', NULL, 0, 45, 45, 3120, 3120, 0, 0, 3100, 14, 0, 1, 1.14714, 1, 18, 5, 0, 0, 1, 97, 119, 0, 204, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 7, 0, 61543, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 84, 115, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @equip_template = 20403; set @weapon_1 = 61074; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 61543;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

-- Wolf Amongst Sheep
delete from quest_template where entry = 40948;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40948,2,5179,42,35,0,0,'Wolf Amongst Sheep','Tell me: what is the essence of a nation, the heart of a country, the will of a people? Is it the lands themselves? The rule of law? The economy? No, undoubtedly, it\'s none of these things. The essence of a nation is found in its tradition, history, legacy, determination, willpower.$B$BWe must steel ourselves for the worst, as the entirety of our people wishes to free our king and place him on the throne once more, But what happens if he is not capable of doing so? After the death of the queen, Genn thought it best to send his children away. We only heard about it months later, but it seems that both Liam and Tess are now prisoners of the Harlows.$B$BWe believe Liam is captive in the Dryrock Mine deep under Gilneas City to the west. He is the heir of this country, and so he must bleed with his people in order to liberate it.','Find Liam Greymane.','Yes?','I have not been forgotten, it seems.$B$BTo you I say: well met, one from beyond the wall. I have imagined this encounter several times in my head only to be at a loss for words now. You are here to free me, no?',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,6600,1100,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61257, 40948);
replace into creature_involvedrelation	(id, quest) values (61457, 40948);

-- One Chain at a Time
delete from quest_template where entry = 40949;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40948,40949,2,5179,42,35,0,0,'One Chain at a Time','It\'s ironic. I was about to say that I haven\'t been able to see the sun in so long, yet I grinned realising I have yet to see an actual Sunrise in Gilneas anyway, with all its fog and rain.$B$BI must be free of these chains. That harlot, Celia, convinced Father to send us away to Kul Tiras only to bind Tess and I, hiding us away from the world! I helped Tess escape, but they tossed me into this place.$B$BAid me, so that I may find my way towards my people, and so I may help them against the scum that took over my city and poisoned the mind of my father.$B$BGuard Captain Marson, that\'s the name of the brute that holds the key to my freedom. You should be able to find him around here. Perhaps lingering outside in the fresh air.','Find and slay Guard Captain Marsow, gather the Rust-Covered Key and and free Liam.','I wish we had the time to spare a few more words but we really must hurry.','He did not deserve the mercy of a quick death.$B$B<Liam chuckles.>$B$BPerhaps the weeks spent in this hole are making me question my integrity as a follower of the Light. I have brought shame to my teacher.',61494,1,0,0,0,0,0,0, 61543,1,0,0,0,0,0,0, 0,0, 0,22500,3750,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61457, 40949);
replace into creature_involvedrelation	(id, quest) values (61457, 40949);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61494,8951,'Rust-Covered Key',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,4);

replace into creature_loot_template values
(61543,61494,-100,0,1,1,0);

