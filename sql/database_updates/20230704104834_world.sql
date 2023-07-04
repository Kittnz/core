-- Reduce HP of Rotmaw to 46912, reduce armor of rotmaw to 2034.
update creature_template set health_min = 46912, health_max = 46912, armor = 2034 where entry = 65122;
-- Drifting avatar of sand make immune to sheep/stun/sleep/fear/charm.
update creature_template set mechanic_immune_mask = 68113 where entry = 61316;
-- NPC Temporal Dust make immune to bleed/poison and sheep.
update creature_template set mechanic_immune_mask = 81920 where entry = 61317;
-- NPC Echo of time make immune to bleed/poison and sheep.
update creature_template set mechanic_immune_mask = 81920 where entry = 61318;
-- Echo of the Lich King, Echo of Kael'thas Sunstrider, Echo of Lady Vashj make humanoid.
update creature_template set type = 7 where entry in (65117,65118,65119);
-- Infinite Rift-Lord reduce damage by 20%, reduce hp to 24256, set armor to 4883.
update creature_template set dmg_min = 711, dmg_max = 769, health_min = 24256, health_max = 24256, armor = 4883 where entry = 65105;
-- NPC Lord Blackwald II (entry 61222) add weapon 61247.
set @equip_template = 20413; set @weapon_1 = 61247; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 61222;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;
-- Item Premium Chocolate (61173), add spell on use 1129 with -1 charges to be consumed when eaten, add level requirement of 35.
update item_template set spellid_1 = 1512, spellcharges_1 = -1, required_level = 35 where entry = 61173;
-- Rollo Idleman <Chocolate Vendor>, display ID 1512, faction 474, level 41, scale 1, humanoid, vendor flags, sells item 61173.
REPLACE INTO creature_template VALUES
(61573, 1512, 0, 0, 0, 0, 'Rollo Idleman', 'Chocolate Vendor', 0, 41, 41, 1981, 1981, 0, 0, 2397, 474, 4, 1, 1.14286, 1, 18, 5, 0, 0, 1, 85, 109, 0, 162, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 66, 91, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61573, 61173, 0, 0, 0, 0);
-- 'Stickypaws', <Foulhide Merchant>, display ID 10795, faction 35, level 44, scale 1, humanoid, vendor/gossip flags, gossip text : "Me sick of fighting, no want no violence.$B$BNo fight, me sell-sell!"
REPLACE INTO creature_template VALUES
(61574, 10795, 0, 0, 0, 0, '\'Stickypaws\'', 'Foulhide Merchant', 0, 44, 44, 2117, 2117, 0, 0, 2625, 35, 5, 1, 1.14714, 1, 18, 5, 0, 0, 1, 78, 95, 0, 204, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 84, 115, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @gossip_menu_id = 41501; set @magic_number = 61574;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Me sick of fighting, no want no violence.$B$BNo fight, me sell-sell!');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

-- sells item with limited stock of 3, refreshes every 90 minutes:
replace into item_template values
 ('61676', '0', '0', 'Recipe: Gilneas Hot Stew', '', '811', '2', '0', '1', '2500', '500', '0', '-1', '-1', '40',
 '0', '185', '200', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '45630', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61574, 61676, 3, 5400, 0, 0);
-- sells item with limited stack of 1, refreshes every 60 minutes:
replace into item_template values
 ('61677', '4', '2', 'Foulhide Cuffs', '', '3606', '2', '0', '1', '19147', '3088', '9', '-1', '-1', '43',
 '38', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '5', '3', '5',
 '4', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '47', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '2', '0', '0', '0', '0', '0', '8', '0', '0', '0', '30', '0', '0', '0', '0', '7', '0', '0', '0',
 '0', '1', NULL);

REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61574, 61677, 1, 3600, 0, 0);
-- sells item with limited stack of 1, refreshes every 60 minutes:
replace into item_template values
 ('61678', '4', '1', 'Gnoll Seer Belt', '', '17261', '2', '0', '1', '18254', '2785', '6', '-1', '-1', '43',
 '38', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '11', '6', '5',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '31', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '2', '0', '0', '0', '0', '0', '7', '0', '0', '0', '25', '0', '0', '0', '0', '7', '0', '0', '0',
 '0', '1', NULL);

REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61574, 61678, 1, 3600, 0, 0);
-- sells item with limited stack of 1, refreshes every 60 minutes:
replace into item_template values
 ('61679', '4', '3', 'Rusted Battle Boots', '', '6952', '2', '0', '1', '30908', '6477', '8', '-1', '-1', '43',
 '38', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '11', '4', '3',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '165', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '2', '0', '0', '0', '0', '0', '5', '0', '0', '0', '50', '0', '0', '0', '0', '7', '0', '0', '0',
 '0', '1', NULL);
 
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61574, 61679, 1, 3600, 0, 0);

-- Nordrassil Stag
delete from quest_template where entry = 41008;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41008,2,616,60,55,0,1,'Nordrassil Stag','The mighty stag of Nordrassil is most revered by the druids here at Nordanaar.$B$BFor the most triumphant of deeds to our cause, I could reward you with such a mount. This reward is only privileged for those that have gone above and beyond. Bring me five hundred Bright Dream Shards and you shall be rewarded with a mount most fitting for your dedication.','Gather 500 Bright Dream Shards for Evandil Nightwind at Nordanaar in Hyjal.','So, have you made your choice?','You have proved yourself to Hyjal, and your reward is immense. Treat the stag of Nordrassil as you would a most loyal companion and they will show you the strength of nature.',61199,500,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,250,0,0,0,0,0,0,0,0,0,0,0, 50535,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61485, 41008);
replace into creature_involvedrelation	(id, quest) values (61485, 41008);

-- Glyph of the Dream Panther
delete from quest_template where entry = 41009;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41009,2,616,60,55,0,1,'Glyph of the Dream Panther','It is here on Hyjal that the power of the Emerald Dream can be felt most prominently. As of late, there has been a disturbance in channeling such energies. Not many make the pilgrimage to Hyjal as they once did.$B$BI have been sent as an envoy for the spirits of Moonglade, who have asked for able bodied druids assisting Hyjal. If you wish to prove your efforts, the spirits within Moonglade will certainly reward such noble actions. Seek out the Great Cat Spirit in Moonglade, and bring with you twenty Bright Dream Shards, as well as eight Arcane Essence.','Gather 20 Bright Dream Shards, and 8 Arcane Essence for the Great Cat Spirit in Moonglade.','<The sharp gaze of the Great Cat Spirit is intimidating.>$B$BDo not be afraid, we are both on the same side.','Danthar Oakmantle is a loyal friend to Moonglade, and one who has been tasked to guide you to us. Something stirs within the Emerald Dream, and it is now that we must unite together to defeat it.$B$BYou have done well, continue to do so, and perhaps we may finally have peace. Take this glyph, and let my powers flow through you.',61199,20,61673,8,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,250,0,0,0,0,0,0,0,0,0,0,0, 51362,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61521, 41009);
replace into creature_involvedrelation	(id, quest) values (11957, 41009);
update quest_template set requiredclasses = 1024 where entry = 41009;
