-- Nordrassil Stag
delete from quest_template where entry = 41008;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41008,2,616,60,55,0,0,'Nordrassil Stag','The mighty stag of Nordrassil is most revered by the druids here at Nordanaar.$B$BFor the most triumphant of deeds to our cause, I could reward you with such a mount. This reward is only privileged for those that have gone above and beyond. Bring me five hundred Bright Dream Shards and you shall be rewarded with a mount most fitting for your dedication.','Gather 500 Bright Dream Shards for Evandil Nightwind at Nordanaar in Hyjal.','So, have you made your choice?','You have proved yourself to Hyjal, and your reward is immense. Treat the stag of Nordrassil as you would a most loyal companion and they will show you the strength of nature.',61199,500,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,250,0,0,0,0,0,0,0,0,0,0,0, 50535,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61485, 41008);
replace into creature_involvedrelation	(id, quest) values (61485, 41008);

-- Glyph of the Dream Panther
delete from quest_template where entry = 41009;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41009,2,616,60,55,0,0,'Glyph of the Dream Panther','It is here on Hyjal that the power of the Emerald Dream can be felt most prominently. As of late, there has been a disturbance in channeling such energies. Not many make the pilgrimage to Hyjal as they once did.$B$BI have been sent as an envoy for the spirits of Moonglade, who have asked for able bodied druids assisting Hyjal. If you wish to prove your efforts, the spirits within Moonglade will certainly reward such noble actions. Seek out the Great Cat Spirit in Moonglade, and bring with you twenty Bright Dream Shards, as well as eight Arcane Essence.','Gather 20 Bright Dream Shards, and 8 Arcane Essence for the Great Cat Spirit in Moonglade.','<The sharp gaze of the Great Cat Spirit is intimidating.>$B$BDo not be afraid, we are both on the same side.','Danthar Oakmantle is a loyal friend to Moonglade, and one who has been tasked to guide you to us. Something stirs within the Emerald Dream, and it is now that we must unite together to defeat it.$B$BYou have done well, continue to do so, and perhaps we may finally have peace. Take this glyph, and let my powers flow through you.',61199,20,61673,8,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,250,0,0,0,0,0,0,0,0,0,0,0, 51362,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61521, 41009);
replace into creature_involvedrelation	(id, quest) values (11957, 41009);
update quest_template set requiredclasses = 1024 where entry = 41009;

-- Glyph of the Emerald Bear
delete from quest_template where entry = 41010;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41010,2,616,60,55,0,0,'Glyph of the Emerald Bear','It is here on Hyjal that the power of the Emerald Dream can be felt most prominently. As of late, there has been a disturbance in channeling such energies. Not many make the pilgrimage to Hyjal as they once did.$B$BI have been sent as an envoy for the spirits of Moonglade, who have asked for able bodied druids assisting Hyjal. If you wish to prove your efforts, the spirits within Moonglade will certainly reward such noble actions. Seek out the Great Bear Spirit in Moonglade, and bring with you twenty Bright Dream Shards, as well as eight Arcane Essence.','Gather 20 Bright Dream Shards, and 8 Arcane Essence for the Great Bear Spirit in Moonglade.','Danthar Oakmantle was tasked with guiding druids in Nordanaar to me. I can sense you are one such druid. Do you have proof of your deeds in Hyjal?','You have made the journey to the top of Hyjal, and succeeded in your journey.$B$BSuch a road is full of danger, and your bravery is commendable. Something dark lingers within the Emerald Dream, even I can feel it, drawing at my will. We are all united in our efforts to support Hyjal, and as such, I have something that will reward your support.$B$BTake this glyph, and be transformed into one loyal to the Emerald Dream.',61199,20,61673,8,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,250,0,0,0,0,0,0,0,0,0,0,0, 51360,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61521, 41010);
replace into creature_involvedrelation	(id, quest) values (11956, 41010);
update quest_template set requiredclasses = 1024 where entry = 41010;

-- The Upper Binding
delete from quest_template where entry = 41011;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41011,2,1583,60,55,0,0,'The Upper Binding','Many long years ago, I came in contact with a powerful artifact that drew immense powers from the ley-lines across azeroth. I intended to study this artifact but its powers slowly drained through the years. What research I was able to conduct was rather disappointing, and now I am left with a rather exquisite paper-weight.$B$BIf you assist me in restoring this old relic to its former power, perhaps you may have more luck with it than I did. The first thing that I require is a Dragonkin Charge, which holds great draconic magic. I have heard that dragonkin from Blackrock Spire are known to possess such items.','Gather a Dragonkin Charge from the Black Dragonkin within Blackrock Spire for Parnabus in Gilneas.','I have not had this much excitement in some time. Have you recovered the Dragonkin Charge?','Immense power contained in such a small token, draconic magic is certainly fascinating!',61693,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,40800,6800,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61570, 41011);
replace into creature_involvedrelation	(id, quest) values (61570, 41011);
update quest_template set type = 81 where entry = 41011;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61693,18291,'Dragonkin Charge',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,4);

replace into creature_loot_template values
(10264,61693,-100,0,1,1,0);

-- The Upper Binding II
delete from quest_template where entry = 41012;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41011,41012,2,5179,60,55,0,0,'The Upper Binding II','I have attempted to use the Dragonkin Charge to repower the relic, but I have had no luck in energizing its latent power. I suspect we will require a more active source of ley energy.$B$BI will require some items before I can begin this ritual. First, I need you to collect the following items which should be easier to obtain. Five essence of fire, and a single fragment of earth should be enough to get us started. These materials might be tricky to find, but I do know that fragments of earth can be found from earth elementals seen in Silithus. I suggest that you start there.','Gather 5 Elemental Fire, and 1 Fragment of Earth for Parnabus in Gilneas.','Have the elements been acquired?','We have only just begun, do not get excited.',7068,5,61694,1,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,39000,6500,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61570, 41012);
replace into creature_involvedrelation	(id, quest) values (61570, 41012);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61694,9110,'Fragment of Earth',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,3);

replace into creature_loot_template values
(11746,61694,-21,0,1,1,0),
(11747,61694,-21,0,1,1,0);

-- The Upper Binding III
delete from quest_template where entry = 41013;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41012,41013,2,2557,60,55,0,0,'The Upper Binding III','With the Elemental Fire, and the Fragment of Earth, we can ground the relic to prepare for real energization. This binding requires an extreme charge of ley-energy that could rival the power that it once held. To find such a collection of raw arcane power is rare on Azeroth.$B$BI have sensed an extreme amount of arcane discharge coming from the continent of Kalimdor for some time. With rumors I have heard, I can only deduce that the once elven city now called Dire Maul is discharging extreme energy.$B$BIt is here that I require a Supercharged Arcane Resonation, which should be found from any elements of arcane that have materialized there. Gather me one, and I will provide you with the relic as it once was.','Gather a Supercharged Arcane Resonation from the arcane elementals of Dire Maul for Parnabus in Gilneas.','I can only imagine the power that is being expelled around Dire Maul.','<Parnabus looks shocked by the power before him.>$B$BSo, it was true.',61695,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,43200,7200,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61570, 41013);
replace into creature_involvedrelation	(id, quest) values (61570, 41013);
update quest_template set type = 81 where entry = 41013;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61695,36413,'Supercharged Arcane Resonation',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,4);

replace into creature_loot_template values
(11480,61695,-11,0,1,1,0),
(14400,61695,-11,0,1,1,0),
(14399,61695,-11,0,1,1,0),
(11484,61695,-11,0,1,1,0);

-- The Upper Binding IV
delete from quest_template where entry = 41014;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41013,41014,2,5179,60,55,0,0,'The Upper Binding IV','You have done well in acquiring these materials $c. As I have promised, I will perform the ritual to recharge this relic as it once was. Speak to me when I am finished.','Speak with Parnabus when the ritual is complete.','Yes?','It is done, the ritual is complete. This binding once came from near the tower of Karazhan. I have no doubt it once served a more grand cause, or was apart of an object with considerable power.$B$BI have no purpose for this binding any longer, and I offer it to you for whatever purpose you see fit. I wish you the best of luck in your cause $c.',0,0,0,0,0,0,0,0, 60049,1,0,0,0,0,0,0, 0,0, 0,0,0,0,0,0,0,0,0,0,0,0,0,0, 61696,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'Speak with Parnabus when the ritual is complete.');

replace into creature_questrelation		(id, quest) values (61570, 41014);
replace into creature_involvedrelation	(id, quest) values (61570, 41014);

replace into item_template values
 ('61696', '15', '0', 'The Upper Binding of Xanthar', '', '31967', '1', '0', '1', '0', '0', '0', '-1', '-1', '65',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

update creature_template set script_name = 'npc_parnabus' where entry = 61570;

REPLACE INTO creature_template VALUES
(60049, 328, 0, 0, 0, 0, 'quest_41014_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

-- The Binding of Xanthar
delete from quest_template where entry = 41015;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41014,41015,2,41,60,55,0,0,'The Binding of Xanthar','Some years ago, a rare and powerful item was stored inside of this church. I have been cursed to remain ever since its disappearance years ago. If you could recover this item and return it to Karazhan, I would be more than thankful.$B$B The Binding was torn apart before it was ever stolen, both halves now rest with separate owners. The first was taken by a hermit mage who held no affiliations, his accent certainly sounded like he came from the north.$B$BThe second half of the binding was taken by a man of faith, of vigilance, wearing red cloth and bearing the symbol of the Light itself. His ravings almost sounded mad!$B$BGather me both the upper and lower half of the binding, and I can make it whole.','Gather the Upper Binding of Xanthar and the Lower Binding of Xanthar for Hanvar the Righteous in the small church outside of Karazhan.','Once the binding is restored I will be brought peace.$B$BIt is up to you to recover both halves.','The upper and lower halves both. I would never have expected to see them together.$B$B<Hanvar takes a moment to gather himself.>$B$BThe bindings have been brought together, and now they are rejoined. I have cursed to forever protect these items, but it appears that you would have a better chance to carry out my charge.$B$BWatch over the binding, and make sure it does not fall into the hands of evil.',61696,1,61697,1,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,46800,7800,0,0,0,0,0,0,0,0,0,0,0, 61698,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61568, 41015);
replace into creature_involvedrelation	(id, quest) values (61568, 41015);
update quest_template set type = 1 where entry = 41015;

replace into item_template values
 ('61697', '15', '0', 'The Lower Binding of Xanthar', '', '24776', '1', '0', '1', '0', '0', '0', '-1', '-1', '65',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

replace into creature_loot_template values
(61569,61697,-100,0,1,1,0);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61698,24687,'The Binding of Xanthar',12,1,2048,1,-1,-1,65,1,-1,-1,-1,-1,0,'',0,3);

-- black morass relics
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, random_property, required_reputation_faction, required_reputation_rank) values (61698, 'Totem of the Flowing Timeways', 'Add Calming River custom spell when added.', 4, 9, 1, 3, 34144, 1, 60, 0, -1, -1, 59115, 14778, 28, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 65, 0, 49, 0, 0, 0, 0, 0, 0, 0, 0, 0);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, random_property, required_reputation_faction, required_reputation_rank) values (61699, 'Idol of Savagery', 'Add Improved Bleeds spell when implemented.', 4, 8, 1, 3, 34149, 1, 60, 0, -1, -1, 58605, 14651, 28, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66, 0, 49, 0, 0, 0, 0, 0, 0, 0, 0, 0);
-- black morass new drops
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, random_property, required_reputation_faction, required_reputation_rank) values (61700, 'Fabric of Time', 'Prone to tearing.', 4, 0, 1, 3, 60862, 1, 60, 1, -1, -1, 57811, 14452, 12, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66, 0, 49, 0, 0, 0, 0, 0, 0, 5, -20, 14798, 1, 0, 0, -1, 0, -1, 21364, 1, 0, 0, -1, 0, -1, 0, 0, 0);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, random_property, required_reputation_faction, required_reputation_rank) values (61701, 'Wraps of the Transmogrified', 'Once a plate helmet, warped by the timeways into a thin cloth that preserves its properties.', 4, 1, 7, 3, 28762, 1, 60, 1, -1, -1, 75811, 18952, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 50, 306, 0, 0, 66, 0, 49, 0, 0, 0, 0, 0, 0, 3, -10, 45530, 1, 0, 0, 0, 0, 0, 14798, 1, 0, 0, -1, 0, -1, 0, 0, 0);
-- NPC ID 61575 should drop one of the following items with equal chances:
-- Imbued Planar Belt
-- Band of Infinite Possibilities
-- Nexus Shoulderpads
-- Tome of Riftmancy
-- Arcanoweave Boots
-- Extremely Well Crafted Cuffs
-- Totem of the Flowing Timeways (SQL)
-- Fabric of Time (SQL)
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(30587, 61041, 0, 0, 1, 1, 0),
(30587, 61032, 0, 0, 1, 1, 0),
(30587, 61045, 0, 0, 1, 1, 0),
(30587, 61055, 0, 0, 1, 1, 0),
(30587, 61056, 0, 0, 1, 1, 0),
(30587, 50431, 0, 0, 1, 1, 0),
(30587, 61698, 0, 0, 1, 1, 0),
(30587, 61700, 0, 0, 1, 1, 0);

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(61575, 30587, 100, 0, -30587, 1, 0);
-- Add Idol of Savagery and Wraps of the Transmogrified (SQL) to Rotmaw's loot group 2 and make it so all items have equal drop chances totalling to 100%
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(30588, 61699, 0, 1, 1, 1, 0),
(30588, 61701, 0, 1, 1, 1, 0),
(30588, 61023, 0, 1, 1, 1, 0),
(30588, 61025, 0, 1, 1, 1, 0),
(30588, 61029, 0, 1, 1, 1, 0),
(30588, 61030, 0, 1, 1, 1, 0),
(30588, 61034, 0, 1, 1, 1, 0),
(30588, 61063, 0, 1, 1, 1, 0);

delete from creature_loot_template where entry = 65122 and item in (61023,61025,61029,61030,61034,61063);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(65122, 30588, 100, 1, -30588, 1, 0);

