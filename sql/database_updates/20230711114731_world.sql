-- New items added.
replace into item_template values
 ('61732', '15', '0', 'Eternal Dreamstone Shard', '', '4357', '5', '0', '1', '200000', '50000', '0', '-1', '-1', '65',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61733', '9', '8', 'Formula: Eternal Dreamstone Shard', '', '7798', '5', '0', '1', '200000', '50000', '0', '-1', '-1', '65',
 '0', '333', '300', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
-- Item The Upper Binding of Xanthar, make item BOP.
update item_template set bonding = 1 where entry = 61696;
-- Item The Lower Binding of Xanthar, make item into a quest item.
update item_template set bonding = 4 where entry = 61697;
-- Item Premium Chocolate (61173) add spell 1129 , make usable with -1 charges so the item is consumed upon use.
update item_template set spellid_1 = 1129, spellcharges_1 = -1, spellcooldown_1 = 0, spellcategory_1 = 11, spellcategorycooldown_1 = 1000 where entry = 61173;
-- Item Glyph of the Emerald Bear (Entry 51360), change to blue rarity (rare).
update item_template set quality = 3 where entry = 51360;
-- Item Dreamwind Sigil change display ID to 31576.
update item_template set display_id = 31576 where entry = 61705;

-- Quest 'The Binding of Xanthar' should reward item called 'The Binding of Xanthar' (Display ID 24687, itemlevel 65, no binding) ((This item may have gotten overwritten ? )).
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61731,24687,'The Binding of Xanthar',12,1,2048,1,-1,-1,65,1,-1,-1,-1,-1,0,'',0,3);
update quest_template set rewitemid1 = 61731 where entry = 41015;
-- Quest 'The Binding of Xanthar' needs to start from the npc Hanvar the Righteous , I currently do not see him giving this quest.
delete from creature_questrelation where quest = 41015;
delete from creature_involvedrelation where quest = 41015;
replace into creature_questrelation		(id, quest) values (61568, 41015);
replace into creature_involvedrelation	(id, quest) values (61568, 41015);
-- The binding of Xanthar, completion text, change second last paragraph to the following: 'The bindings have been brought together, and now they are rejoined. I am cursed to forever protect these items, but it appears that you would have a better chance to carry out my charge.'
update quest_template set offerrewardtext = 'The upper and lower halves both. I would never have expected to see them together.$B$B<Hanvar takes a moment to gather himself.>$B$BThe bindings have been brought together, and now they are rejoined. I am cursed to forever protect these items, but it appears that you would have a better chance to carry out my charge.$B$BWatch over the binding, and make sure it does not fall into the hands of evil.' where entry = 41015;
-- Quest Signet of Silverlaine (40924), change short objective text to : "Reclaim the Signet of Silverlaine from High Officer Osmark at The Dry Rock Pit for Baron Caliban Silverlaine at Ravenshire in Gilneas."
update quest_template set objectives = 'Reclaim the Signet of Silverlaine from High Officer Osmark at The Dry Rock Pit for Baron Caliban Silverlaine at Ravenshire in Gilneas.' where entry = 40924;
-- Title for quest 41037 restored.
update quest_template set title = 'Rods for the Pellars' where entry = 41037;
-- Quest 'Report to Dreamwind', change short objective text to : "Bring Canos' Report to Dreamwind at Nordanaar in Hyjal."
update quest_template set objectives = 'Bring Canos\' Report to Dreamwind at Nordanaar in Hyjal.' where entry = 41026;
-- Change required item of quest 'Report to Dreamwind' to : Canos' Report (Display ID 3020, quest item, stackable to 1, given at start of quest).
update item_template set name = 'Canos\' Report', display_id = 3020 where entry = 61716;

-- Harlow Family Chest set respawn timer to 7d.
update gameobject set spawntimesecsmin = 64800, spawntimesecsmax = 64800 where ID = 2020027;

-- The following creatures to a 7d respawn timer setted.
update creature set spawntimesecsmin = 64800, spawntimesecsmax = 64800 where ID in (61200,61201,61202,61203,61204,61205,61206,61207,61208,61209,61210,61211,61191,61192,61193,61194,61195,61196,61197,61319,61221,61222,61224,61223,61225,61226);
-- NPC Phantom Servant (61205) , Haunted Blacksmith (61201) , Haunted Stable Tender (61202), lower damage by half.
update creature_template set dmg_min = 458 where entry in (61201,61205);
update creature_template set dmg_min = 384 where entry = 61202;
-- Shadowbane Alpha increase damage by 30%.
update creature_template set dmg_min = 1178, dmg_max = 1537 where entry = 61191;
-- NPC Epidamu increase hp to 44513, increase armor to 2599.
update creature_template set health_min = 44513, health_max = 44513, armor = 2599 where entry = 61575;
-- NPC Arayna Softwind, add subname <General Goods>, add vendor flags, add general goods to her sell list.
update creature_template set subname = 'General Goods', npc_flags = 7 where entry = 61563;
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61563, 1, 159, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61563, 2, 1205, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61563, 4, 1645, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61563, 3, 1708, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61563, 7, 2515, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61563, 10, 2519, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61563, 0, 2946, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61563, 8, 3030, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61563, 11, 3033, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61563, 13, 3107, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61563, 14, 3108, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61563, 0, 3131, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61563, 16, 3135, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61563, 17, 3137, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61563, 19, 4470, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61563, 20, 4471, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61563, 6, 4497, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61563, 5, 4498, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61563, 0, 6183, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61563, 12, 11284, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61563, 9, 11285, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61563, 18, 15326, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61563, 15, 15327, 0, 0, 0, 0);
-- NPC Tess Greymane set gossip text to: "Much is yet to be learned of these Pellars—previously believed to be a myth, but now proven otherwise. They may be Gilneas' roots we never knew were there. And as one meant to protect this country's legacy, I must learn whatever I can from them."
update broadcast_text set male_text = 'Much is yet to be learned of these Pellars—previously believed to be a myth, but now proven otherwise. They may be Gilneas\' roots we never knew were there. And as one meant to protect this country\'s legacy, I must learn whatever I can from them.' where entry = 61448;
-- NPC Mother Tanya (Entry 61447), change gossip text to : "Many may see the worgen curse as a horrible affliction, but we embrace it. We welcome it as a blessing, as it makes us stronger, faster, and longer-lived! Her name is Rosenberg, and she has saved us from a dull and ordinary life."
update broadcast_text set male_text = 'Many may see the worgen curse as a horrible affliction, but we embrace it. We welcome it as a blessing, as it makes us stronger, faster, and longer-lived! Her name is Rosenberg, and she has saved us from a dull and ordinary life.' where entry = 61447;
-- NPC Ethan Ravencroft (Entry 61460), change gossip text to : "I would love to see the final version of Ur's research, but unfortunately his final books are not in our possession. We must settle for his messy, half-finished ideas and notes instead. His works may make little sense now, but perhaps Moranna can see what we cannot.$B$BIn the meantime, we will provide as much aid as we can to those in need, as she did for us - the Lupine Coven."
update broadcast_text set male_text = 'I would love to see the final version of Ur\'s research, but unfortunately his final books are not in our possession. We must settle for his messy, half-finished ideas and notes instead. His works may make little sense now, but perhaps Moranna can see what we cannot.$B$BIn the meantime, we will provide as much aid as we can to those in need, as she did for us - the Lupine Coven.' where entry = 61460;
-- NPC Avram Duskgarde (Entry 61455), change gossip text to : "<The man stares at you with a look of intensity.>"
update broadcast_text set male_text = '<The man stares at you with a look of intensity.>' where entry = 61455;
-- Change name of npc 61591 to Sentinel Briariel.
update creature_template set name = 'Sentinel Briariel' where entry = 61591;
-- Add ghost effect to npc 61601.
update creature_template set auras = '9617' where entry = 61601;
-- Change display id of npc 61598 to 10240.
update creature_template set display_id1 = 10240 where entry = 61598;
-- Incorrect syntax error for display ids: 20432, 20410, 20434, 20433, 20436, 20414, 20437, 20401, 20402, apply serverside fix.
REPLACE INTO `creature_display_info_addon` (`display_id`, `bounding_radius`, `combat_reach`, `gender`, `display_id_other_gender`) VALUES
(20432, 0, 0, 0, 0),
(20410, 0, 0, 0, 0),
(20434, 0, 0, 0, 0),
(20433, 0, 0, 0, 0),
(20436, 0, 0, 0, 0),
(20414, 0, 0, 0, 0),
(20437, 0, 0, 0, 0),
(20401, 0, 0, 0, 0),
(20402, 0, 0, 0, 0),
(20424, 0, 0, 0, 0),
(20412, 0, 0, 0, 0);

-- Gilneas Stable Horse, display ID 20424, faction 16, level 41 elite, beast, scale 1, casts 8147 every 5-11 seconds (Has 3501 hp, copy damage from Darkpelt Worgen).
-- Horsemaster Levvin, display ID 3698, faction 16, level 47 elite, humanoid, scale 1, weapon 10761, weapon2 2714, (has 8412 hp, 812 armor, 10 nature resistance, copy damage from Greymane Justicar, casts 6016 every 26 seconds, casts 14266 every 8 seconds.
REPLACE INTO creature_template VALUES
(61604, 20424, 0, 0, 0, 0, 'Gilneas Stable Horse', NULL, 0, 41, 41, 3501, 3501, 0, 0, 1727, 16, 0, 1, 1.14286, 1, 20, 5, 0, 1, 1, 269, 346, 0, 162, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 53.1456, 73.0752, 100, 1, 0, 61604, 0, 5286, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61605, 3698, 0, 0, 0, 0, 'Horsemaster Levvin', NULL, 0, 47, 47, 8412, 8412, 0, 0, 812, 16, 0, 1, 1.14286, 1, 20, 5, 0, 1, 1, 273, 338, 0, 226, 1, 1800, 1800, 1, 0, 0, 0, 0, 0, 0, 0, 54.6056, 75.0827, 100, 7, 0, 61605, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 127, 155, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @equip_template = 20424; set @weapon_1 = 10761; set @weapon_2 = 2714; set @weapon_3 = 0; set @creature = 61605;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

-- Horsemaster Levvin
set @creature_entry = 61605;
set @description = ': Horsemaster Levvin';
set @spell_list_id = 180216;

set @spellid_1 = 6016; -- Pierce Armor
set @probability_1 = 100;
set @casttarget_1 = 1;
set @castflags_1 = 4;
set @delayinitialmin_1 = 0;
set @delayinitialmax_1 = 0;
set @delayrepeatmin_1 = 26;
set @delayrepeatmax_1 = 26;

set @spellid_2 = 14266; -- Raptor Strike
set @probability_2 = 100;
set @casttarget_2 = 1;
set @castflags_2 = 4;
set @delayinitialmin_2 = 2;
set @delayinitialmax_2 = 2;
set @delayrepeatmin_2 = 8;
set @delayrepeatmax_2 = 8;

set @spellid_3 = 0;
set @probability_3 = 0;
set @casttarget_3 = 0;
set @castflags_3 = 0;
set @delayinitialmin_3 = 0;
set @delayinitialmax_3 = 0;
set @delayrepeatmin_3 = 0;
set @delayrepeatmax_3 = 0;

set @spellid_4 = 0;
set @probability_4 = 0;
set @casttarget_4 = 0;
set @castflags_4 = 0;
set @delayinitialmin_4 = 0;
set @delayinitialmax_4 = 0;
set @delayrepeatmin_4 = 0;
set @delayrepeatmax_4 = 0;

set @spellid_5 = 0;
set @probability_5 = 0;
set @casttarget_5 = 0;
set @castflags_5 = 0;
set @delayinitialmin_5 = 0;
set @delayinitialmax_5 = 0;
set @delayrepeatmin_5 = 0;
set @delayrepeatmax_5 = 0;

set @spellid_6 = 0;
set @probability_6 = 0;
set @casttarget_6 = 0;
set @castflags_6 = 0;
set @delayinitialmin_6 = 0;
set @delayinitialmax_6 = 0;
set @delayrepeatmin_6 = 0;
set @delayrepeatmax_6 = 0;

set @spellid_7 = 0;
set @probability_7 = 0;
set @casttarget_7 = 0;
set @castflags_7 = 0;
set @delayinitialmin_7 = 0;
set @delayinitialmax_7 = 0;
set @delayrepeatmin_7 = 0;
set @delayrepeatmax_7 = 0;

set @spellid_8 = 0;
set @probability_8 = 0;
set @casttarget_8 = 0;
set @castflags_8 = 0;
set @delayinitialmin_8 = 0;
set @delayinitialmax_8 = 0;
set @delayrepeatmin_8 = 0;
set @delayrepeatmax_8 = 0;

-- Do not touch this part:
update creature_template set spell_list_id = @spell_list_id, ai_name = '', script_name = '', spell_id1 = 0, spell_id2 = 0, spell_id3 = 0 
where entry = @creature_entry;
replace into creature_spells (entry, name, 
spellid_1, probability_1, casttarget_1, castflags_1, delayinitialmin_1, delayinitialmax_1, delayrepeatmin_1, delayrepeatmax_1, 
spellid_2, probability_2, casttarget_2, castflags_2, delayinitialmin_2, delayinitialmax_2, delayrepeatmin_2, delayrepeatmax_2, 
spellid_3, probability_3, casttarget_3, castflags_3, delayinitialmin_3, delayinitialmax_3, delayrepeatmin_3, delayrepeatmax_3, 
spellid_4, probability_4, casttarget_4, castflags_4, delayinitialmin_4, delayinitialmax_4, delayrepeatmin_4, delayrepeatmax_4, 
spellid_5, probability_5, casttarget_5, castflags_5, delayinitialmin_5, delayinitialmax_5, delayrepeatmin_5, delayrepeatmax_5, 
spellid_6, probability_6, casttarget_6, castflags_6, delayinitialmin_6, delayinitialmax_6, delayrepeatmin_6, delayrepeatmax_6, 
spellid_7, probability_7, casttarget_7, castflags_7, delayinitialmin_7, delayinitialmax_7, delayrepeatmin_7, delayrepeatmax_7, 
spellid_8, probability_8, casttarget_8, castflags_8, delayinitialmin_8, delayinitialmax_8, delayrepeatmin_8, delayrepeatmax_8) 
values (@spell_list_id, @description,
@spellid_1, @probability_1, @casttarget_1, @castflags_1, @delayinitialmin_1, @delayinitialmax_1, @delayrepeatmin_1, @delayrepeatmax_1,
@spellid_2, @probability_2, @casttarget_2, @castflags_2, @delayinitialmin_2, @delayinitialmax_2, @delayrepeatmin_2, @delayrepeatmax_2,
@spellid_3, @probability_3, @casttarget_3, @castflags_3, @delayinitialmin_3, @delayinitialmax_3, @delayrepeatmin_3, @delayrepeatmax_3,
@spellid_4, @probability_4, @casttarget_4, @castflags_4, @delayinitialmin_4, @delayinitialmax_4, @delayrepeatmin_4, @delayrepeatmax_4,
@spellid_5, @probability_5, @casttarget_5, @castflags_5, @delayinitialmin_5, @delayinitialmax_5, @delayrepeatmin_5, @delayrepeatmax_5,
@spellid_6, @probability_6, @casttarget_6, @castflags_6, @delayinitialmin_6, @delayinitialmax_6, @delayrepeatmin_6, @delayrepeatmax_6,
@spellid_7, @probability_7, @casttarget_7, @castflags_7, @delayinitialmin_7, @delayinitialmax_7, @delayrepeatmin_7, @delayrepeatmax_7,
@spellid_8, @probability_8, @casttarget_8, @castflags_8, @delayinitialmin_8, @delayinitialmax_8, @delayrepeatmin_8, @delayrepeatmax_8);

-- Gilneas Stable Horse
set @creature_entry = 61604;
set @description = ': Gilneas Stable Horse';
set @spell_list_id = 180215;

set @spellid_1 = 8147; -- Thunderclap
set @probability_1 = 100;
set @casttarget_1 = 1;
set @castflags_1 = 4;
set @delayinitialmin_1 = 2;
set @delayinitialmax_1 = 2;
set @delayrepeatmin_1 = 5;
set @delayrepeatmax_1 = 11;

set @spellid_2 = 0;
set @probability_2 = 0;
set @casttarget_2 = 0;
set @castflags_2 = 0;
set @delayinitialmin_2 = 0;
set @delayinitialmax_2 = 0;
set @delayrepeatmin_2 = 0;
set @delayrepeatmax_2 = 0;

set @spellid_3 = 0;
set @probability_3 = 0;
set @casttarget_3 = 0;
set @castflags_3 = 0;
set @delayinitialmin_3 = 0;
set @delayinitialmax_3 = 0;
set @delayrepeatmin_3 = 0;
set @delayrepeatmax_3 = 0;

set @spellid_4 = 0;
set @probability_4 = 0;
set @casttarget_4 = 0;
set @castflags_4 = 0;
set @delayinitialmin_4 = 0;
set @delayinitialmax_4 = 0;
set @delayrepeatmin_4 = 0;
set @delayrepeatmax_4 = 0;

set @spellid_5 = 0;
set @probability_5 = 0;
set @casttarget_5 = 0;
set @castflags_5 = 0;
set @delayinitialmin_5 = 0;
set @delayinitialmax_5 = 0;
set @delayrepeatmin_5 = 0;
set @delayrepeatmax_5 = 0;

set @spellid_6 = 0;
set @probability_6 = 0;
set @casttarget_6 = 0;
set @castflags_6 = 0;
set @delayinitialmin_6 = 0;
set @delayinitialmax_6 = 0;
set @delayrepeatmin_6 = 0;
set @delayrepeatmax_6 = 0;

set @spellid_7 = 0;
set @probability_7 = 0;
set @casttarget_7 = 0;
set @castflags_7 = 0;
set @delayinitialmin_7 = 0;
set @delayinitialmax_7 = 0;
set @delayrepeatmin_7 = 0;
set @delayrepeatmax_7 = 0;

set @spellid_8 = 0;
set @probability_8 = 0;
set @casttarget_8 = 0;
set @castflags_8 = 0;
set @delayinitialmin_8 = 0;
set @delayinitialmax_8 = 0;
set @delayrepeatmin_8 = 0;
set @delayrepeatmax_8 = 0;

-- Do not touch this part:
update creature_template set spell_list_id = @spell_list_id, ai_name = '', script_name = '', spell_id1 = 0, spell_id2 = 0, spell_id3 = 0 
where entry = @creature_entry;
replace into creature_spells (entry, name, 
spellid_1, probability_1, casttarget_1, castflags_1, delayinitialmin_1, delayinitialmax_1, delayrepeatmin_1, delayrepeatmax_1, 
spellid_2, probability_2, casttarget_2, castflags_2, delayinitialmin_2, delayinitialmax_2, delayrepeatmin_2, delayrepeatmax_2, 
spellid_3, probability_3, casttarget_3, castflags_3, delayinitialmin_3, delayinitialmax_3, delayrepeatmin_3, delayrepeatmax_3, 
spellid_4, probability_4, casttarget_4, castflags_4, delayinitialmin_4, delayinitialmax_4, delayrepeatmin_4, delayrepeatmax_4, 
spellid_5, probability_5, casttarget_5, castflags_5, delayinitialmin_5, delayinitialmax_5, delayrepeatmin_5, delayrepeatmax_5, 
spellid_6, probability_6, casttarget_6, castflags_6, delayinitialmin_6, delayinitialmax_6, delayrepeatmin_6, delayrepeatmax_6, 
spellid_7, probability_7, casttarget_7, castflags_7, delayinitialmin_7, delayinitialmax_7, delayrepeatmin_7, delayrepeatmax_7, 
spellid_8, probability_8, casttarget_8, castflags_8, delayinitialmin_8, delayinitialmax_8, delayrepeatmin_8, delayrepeatmax_8) 
values (@spell_list_id, @description,
@spellid_1, @probability_1, @casttarget_1, @castflags_1, @delayinitialmin_1, @delayinitialmax_1, @delayrepeatmin_1, @delayrepeatmax_1,
@spellid_2, @probability_2, @casttarget_2, @castflags_2, @delayinitialmin_2, @delayinitialmax_2, @delayrepeatmin_2, @delayrepeatmax_2,
@spellid_3, @probability_3, @casttarget_3, @castflags_3, @delayinitialmin_3, @delayinitialmax_3, @delayrepeatmin_3, @delayrepeatmax_3,
@spellid_4, @probability_4, @casttarget_4, @castflags_4, @delayinitialmin_4, @delayinitialmax_4, @delayrepeatmin_4, @delayrepeatmax_4,
@spellid_5, @probability_5, @casttarget_5, @castflags_5, @delayinitialmin_5, @delayinitialmax_5, @delayrepeatmin_5, @delayrepeatmax_5,
@spellid_6, @probability_6, @casttarget_6, @castflags_6, @delayinitialmin_6, @delayinitialmax_6, @delayrepeatmin_6, @delayrepeatmax_6,
@spellid_7, @probability_7, @casttarget_7, @castflags_7, @delayinitialmin_7, @delayinitialmax_7, @delayrepeatmin_7, @delayrepeatmax_7,
@spellid_8, @probability_8, @casttarget_8, @castflags_8, @delayinitialmin_8, @delayinitialmax_8, @delayrepeatmin_8, @delayrepeatmax_8);