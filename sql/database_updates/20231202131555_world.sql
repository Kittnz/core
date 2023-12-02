-- Destroying Venture Co. Leadership
delete from quest_template where entry = 41173;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41172,41173,2,5536,9,3,0,0,'Destroying Venture Co. Leadership','From what we could gather, this resistance is too organized to just be a simple rouse of dissatisfaction among workers. Someone must\'ve instigated this. Thorough as we are, we already have a suspicion on who\'s behind it.$B$BGelwex Goldfingers and Dex Lodespark. Ungrateful bunch. Both of them were known to be troublemakers, nothing the bruisers couldn\'t handle, yet it seems they had more nefarious plans than slacking on the job. Whatever they\'re planning, you will stop them right in their tracks. Set an example and show everyone on this island that the only acceptable punishment for their actions is execution.$B$BThey\'re most likely among their conspirators in the slums. Do not come back until you\'ve dealt with this.','Dispose of the resistance\'s leadership and bring their heads to Taxxlo Rustgate.','<Taxxlo eyes you with a stern look.>','<Taxxlo grabs the heads by the ears and lets out a laugh audible in all of Rustgate Ridge.>$B$BLook at this, $n. This is what awaits those who betray not only the Durotar Labor Union, but also ME. Nobody on this island will question my authority and proficiency ever again! Your future is promising, young worker. Goblins like you will be the key to get this machine back on track.$B$BTo reward you for your hard work, take one of these and tell everyone what those in my favor can expect.',41052,1,41053,1,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,4680,780,1001,200,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 41054,1,41055,1,41056,1,0,0, 0,0,'');

replace into creature_questrelation	(id, quest) 	values (61729, 41173);
replace into creature_involvedrelation  (id, quest) values (61729, 41173);
update quest_template set requiredraces = 434		 where entry = 41173;
update quest_template set type = 1					 where entry = 41173;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(41052,9090,'Gelwex\' Head',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,3),
(41053,9090,'Dex\' Head',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,3);

replace into creature_loot_template values
(61670,41052,-100,0,1,1,0),
(61795,41053,-100,0,1,1,0);

REPLACE INTO item_template (`entry`, `class`, `subclass`, `name`, `description`, `display_id`, `quality`, `flags`, `buy_count`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_skill`, `required_skill_rank`, `required_spell`, `required_honor_rank`, `required_city_rank`, `required_reputation_faction`, `required_reputation_rank`, `max_count`, `stackable`, `container_slots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `delay`, `range_mod`, `ammo_type`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `block`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmrate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmrate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmrate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmrate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmrate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `page_text`, `page_language`, `page_material`, `start_quest`, `lock_id`, `material`, `sheath`, `random_property`, `set_id`, `max_durability`, `area_bound`, `map_bound`, `duration`, `bag_family`, `disenchant_id`, `food_type`, `min_money_loot`, `max_money_loot`, `wrapped_gift`, `extra_flags`, `other_team_entry`, `script_name`) VALUES
 ('41054', '4', '3', 'Bruiser\'s Chainmail', '', '27004', '2', '0', '1', '1140', '285', '5', '-1', '-1', '13',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '2', '4', '1',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '70', '0', '0', '0', '0', '1', '0', '0', '0',
 '0', '0', '1', NULL);

REPLACE INTO item_template (`entry`, `class`, `subclass`, `name`, `description`, `display_id`, `quality`, `flags`, `buy_count`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_skill`, `required_skill_rank`, `required_spell`, `required_honor_rank`, `required_city_rank`, `required_reputation_faction`, `required_reputation_rank`, `max_count`, `stackable`, `container_slots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `delay`, `range_mod`, `ammo_type`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `block`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmrate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmrate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmrate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmrate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmrate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `page_text`, `page_language`, `page_material`, `start_quest`, `lock_id`, `material`, `sheath`, `random_property`, `set_id`, `max_durability`, `area_bound`, `map_bound`, `duration`, `bag_family`, `disenchant_id`, `food_type`, `min_money_loot`, `max_money_loot`, `wrapped_gift`, `extra_flags`, `other_team_entry`, `script_name`) VALUES
 ('41055', '4', '2', 'Labor Union Tunic', '', '14602', '2', '0', '1', '860', '215', '5', '-1', '-1', '13',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '2', '3', '1',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '64', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '60', '0', '0', '0', '0', '1', '0', '0', '0',
 '0', '0', '1', NULL);

REPLACE INTO item_template (`entry`, `class`, `subclass`, `name`, `description`, `display_id`, `quality`, `flags`, `buy_count`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_skill`, `required_skill_rank`, `required_spell`, `required_honor_rank`, `required_city_rank`, `required_reputation_faction`, `required_reputation_rank`, `max_count`, `stackable`, `container_slots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `delay`, `range_mod`, `ammo_type`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `block`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmrate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmrate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmrate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmrate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmrate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `page_text`, `page_language`, `page_material`, `start_quest`, `lock_id`, `material`, `sheath`, `random_property`, `set_id`, `max_durability`, `area_bound`, `map_bound`, `duration`, `bag_family`, `disenchant_id`, `food_type`, `min_money_loot`, `max_money_loot`, `wrapped_gift`, `extra_flags`, `other_team_entry`, `script_name`) VALUES
 ('41056', '4', '1', 'Robe of the Obedient', '', '12655', '2', '0', '1', '752', '188', '5', '-1', '-1', '13',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '6', '2', '5', '1',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '24', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '50', '0', '0', '0', '0', '1', '0', '0', '0',
 '0', '0', '1', NULL);

REPLACE INTO creature_template VALUES
(61795, 7338, 0, 0, 0, 0, 'Dex Lodespark', NULL, 0, 10, 10, 198, 198, 0, 0, 455, 47, 0, 1, 1.14286, 1, 18, 5, 0, 0, 1, 13, 17, 0, 62, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 15.048, 20.691, 100, 7, 0, 61795, 1537, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 9, 17, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, '');

set @equip_template = 20481; set @weapon_1 = 13821; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 61795;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

update creature_template set ai_name = 'EventAI' where entry = 61670;

REPLACE INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES
(30149, 'We\'re not gonna follow any of this tyrant\'s orders any longer!', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);

delete from creature_ai_scripts where id = 2200042;
REPLACE INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(2200042, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30149, 0, 0, 0, 0, 0, 0, 0, 0, 'Gelwex Goldfingers - Say on Aggro');

delete from creature_ai_events where id = 2200042;
REPLACE INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES
(2200042, 61670, 0, 4, 0, 100, 0, 0, 0, 0, 0, 2200042, 0, 0, 'Gelwex Goldfingers - Say on Aggro');

REPLACE INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES
(30150, 'We were promised profits and riches, but this is just slave labour!', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);

delete from creature_ai_scripts where id = 2200043;
REPLACE INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(2200043, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30150, 0, 0, 0, 0, 0, 0, 0, 0, 'Dex Lodespark - Say on Aggro');

delete from creature_ai_events where id = 2200043;
REPLACE INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES
(2200043, 61795, 0, 4, 0, 100, 0, 0, 0, 0, 0, 2200043, 0, 0, 'Dex Lodespark - Say on Aggro');

-- Dex Lodespark
set @creature_entry = 61795;
set @description = ': Dex Lodespark';
set @spell_list_id = 180281;

set @spellid_1 = 15584; -- Cleave
set @probability_1 = 100;
set @casttarget_1 = 1;
set @castflags_1 = 4;
set @delayinitialmin_1 = 0;
set @delayinitialmax_1 = 0;
set @delayrepeatmin_1 = 8;
set @delayrepeatmax_1 = 10;

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
update creature_template set spell_list_id = @spell_list_id, ai_name = 'EventAI', script_name = '', spell_id1 = 0, spell_id2 = 0, spell_id3 = 0 
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

-- Workplace Hazard
delete from quest_template where entry = 41174;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41174,2,5536,5,2,0,0,'Workplace Hazard','The state of Blackstone is much worse than I had anticipated. When I first was asked to come to this island and produce some mining robots to help with the workload, I was more than happy to see the progress here.$B$BWhat I found instead was a hostile work environment and not even enough materials to do a good enough job for my contract. Now I\'m stuck here, held hostage until I get the problem sorted out. You see, I was given terrible materials to work with and as the copper wires decayed, so too did my Mine-Bots. Now they just wander aimlessly around the island.$B$BDo you think you could do me a massive favor? Find those malfunctioning Mine-Bots and destroy them for me. Apparently, they are causing a workplace hazard. You should be able to find them around the island, but most were sent to work at the Black Ash Mine to the north of here.','Slay 8 Malfunctioning Mine-Bots for Technician Reyvo at Rustgate Ridge on Blackstone Island.','If Taxxlo and his goons had given me proper materials, this wouldn\'t even be an issue in the first place!','Finally some good news! Now I can get off this gold-forsaken rock and get back to what I was meant to.$B$BYou\'ve really helped me out here. Take these. They should help you navigate this horrid place.',0,0,0,0,0,0,0,0, 61687,8,0,0,0,0,0,0, 0,0, 7500,2880,480,1001,200,0,0,0,0,0,0,0,0,0, 118,2,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation	(id, quest) 	values (61760, 41174);
replace into creature_involvedrelation  (id, quest) values (61760, 41174);
update quest_template set requiredraces = 434		 where entry = 41174;

-- Mudpaw Mining Mishap
delete from quest_template where entry = 41175;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41175,2,5536,6,2,0,0,'Mudpaw Mining Mishap','We got a real catastrophe on our hands, and when Taxxlo finds out, he\'s going to have my head. A few nights ago, we were attacked at the Black Ash Mine to the north of here. The Mudpaw gnolls came and drove us out, killing many of my workers in the process. Now they\'re even mining themselves! Those cretins.$B$BWhat\'s worse is that I lost all of the supplies near the mine, and now those blasted gnolls are using them. Head to the Black Ash Mine, and recover eight crates of supplies for me, at least then I can save my own hide from this disaster.','Recover 8 Mining Supplies from the Mudpaw Miners at the Black Ash Mine for Mining Foreman Bizzlo at Rustgate Ridge on Blackstone Island.','So, have you had any luck yet? Or will I need to find another, more brave soul to do the work.','<Bizzlo lets out a loud laugh of relief.>$B$BOh why look at all this, you went and saved my career kid. I was sure to be demoted to a miner or even worse had I lost all of this equipment. Take this coin as a token of my thanks.',41057,8,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 125,2880,480,1001,200,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation	(id, quest) 	values (61761, 41175);
replace into creature_involvedrelation  (id, quest) values (61761, 41175);
update quest_template set requiredraces = 434		 where entry = 41175;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(41057,7913,'Mining Supplies',12,1,2048,1,-1,-1,1,8,-1,-1,-1,-1,4,'',0,1);

replace into creature_loot_template values
(61668,41057,-70,0,1,1,0);

-- She Sells Sea Shells
delete from quest_template where entry = 41176;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41176,2,5536,7,3,0,0,'She Sells Sea Shells','Hey, pal, ever heard of Shellcoin? It\'s an absolute craze among those wanting to shoot high in their monetary endeavors. There is no other way for a quick and reliable head start to becoming your own trade prince! The only catch on the matter is: you need a budget to even start with Shellcoin trading! And no one except the ones in Rustgate\'s tower have enough gold for that.$B$BHowever, me being the genius mastermind that I am, I already came up with a brilliant solution! The shells that drift ashore on this island look almost identical to Shellcoin!$B$BOkay, here\'s the pitch: bring me enough of those shells and we split them fifty-fifty. The gnolls on the coast love to collect them; beat \'em up and grab whatever they got!','Alleviate the gnolls on the eastern coast of their shells and bring them to Schera Framesnap at Gazzik\'s Workshop.','I can taste the beautiful, beautiful gold coins already! Haha!','Ah, the maritime fortune, washed ashore just to be picked up like grapes from a vine! If we ever get off this goldforsaken island, we\'re gonna be rich! RICH I SAY!$B$B<Schera begins to cackle like a hyena.>',41058,20,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,2820,470,1001,100,0,0,0,0,0,0,0,0,0, 41059,20,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation	(id, quest) 	values (61762, 41176);
replace into creature_involvedrelation  (id, quest) values (61762, 41176);
update quest_template set requiredraces = 434		 where entry = 41176;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(41058,7714,'Blackstone Sea Shell',12,1,2048,1,-1,-1,1,20,-1,-1,-1,-1,4,'',0,4);

replace into creature_loot_template values
(61667,41058,-80,0,1,3,0);

REPLACE INTO gameobject_template VALUES
(2020069, 3, 25989, 'Blackstone Sea Shell', 0, 4, 0.4, 43, 2020069, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template values
(2020069,61667,-100,0,1,1,0);

REPLACE INTO item_template VALUES
(41059, 15, 0, 'Counterfeit Shellcoin', 'You doubt that these will be worth anything.', 66312, 0, 1024, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

-- Quest 'The Supercutter 1500' remove money reward.
update quest_template set reworreqmoney = 0 where entry = 41161;
-- Quest 'Clearing Nuisances' remove money reward.
update quest_template set reworreqmoney = 0 where entry = 41162;
-- Quest 'Salvaging Convoys' remove money reward.
update quest_template set reworreqmoney = 0 where entry = 41164;
-- Quest 'Redistribution' remove money reward.
update quest_template set reworreqmoney = 0 where entry = 41166;
-- Quest 'The Murloc Threat' set money reward to 1silver 25 copper.
update quest_template set reworreqmoney = 125 where entry = 41167;
-- Quest 'Maritime Gumbo' remove money reward.
update quest_template set reworreqmoney = 0 where entry = 41168;
-- Quest 'Bearer Of Bad News' remove money reward.
update quest_template set reworreqmoney = 0 where entry = 41169;
-- Quest 'Searching Wreckage' change reward to 75 copper.
update quest_template set reworreqmoney = 75 where entry = 41171;
-- Quest 'War on Venture Co.' change reward to 1 silver 75 copper.
update quest_template set reworreqmoney = 175 where entry = 41172;
-- Quest 'Claws From The Deep' rename to 'Revenge of the Deep', remove money reward.
update quest_template set title = 'Revenge of the Deep', reworreqmoney = 0 where entry = 41158;
-- Quest 'Dirty Deeds Drowned Deep Below' remove money reward.
update quest_template set reworreqmoney = 0 where entry = 41159;
-- Quest 'Under The Sea' change reward to 75 copper.
update quest_template set reworreqmoney = 75 where entry = 41160;
-- Quest 'Battletron Calamity' change money reward to 1silver instead of 10.
update quest_template set reworreqmoney = 100 where entry = 41163;
-- Apply Item sound fix sql.
update item_template set display_id = 1012 where entry = 40078; -- Memento of Quel'thalas.
update item_template set display_id = 15308 where entry = 40076; -- Tattered Crimson Cloth.
update item_template set display_id = 6614 where entry = 40073; -- Arcane Golem Splinter.
-- Object Venture Co. Lockbox change display to look like Chest01c.m2.
update gameobject_template set displayid = 23435 where entry = 2020068;
-- NPC Bruiser Yevo change display ID to 11377.
update creature_template set display_id1 = 11377 where entry = 61747;
-- Item 'Rustgate Tool' change display ID to 19392.
update item_template set display_id = 19392 where entry = 41031;
-- Vanessa Moneybutton should cast her abilities on her target instead of herself.
update creature_spells set casttarget_1 = 1, castflags_1 = 4 where entry = 180280;
-- Vanessa Moneybutton should have a random respawn timer between 12 and 24 hours.
update creature set spawntimesecsmin = 43200, spawntimesecsmax = 86400 where id = 61794;
-- Vanessa Moneybutton should wield Item ID 41051 as her weapon.
set @equip_template = 20482; set @weapon_1 = 41051; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 61794;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;
-- Dysfunctional Shreddertron 1200 should cast its abilities on its target instead of itself.
update creature_spells set casttarget_1 = 1, castflags_1 = 4 where entry = 180279;
-- Dysfunctional Shreddertron 1200 should have a random respawn timer between 12 and 24 hours.
update creature set spawntimesecsmin = 43200, spawntimesecsmax = 86400 where id = 61793;
-- The Snipper should cast its abilities on its target instead of itself.
update creature_spells set casttarget_1 = 1, castflags_1 = 4 where entry = 180278;
-- The Snipper should have a random respawn timer between 12 and 24 hours.
update creature set spawntimesecsmin = 43200, spawntimesecsmax = 86400 where id = 61792;
-- Moonfeather should cast its abilities on its target instead of itself.
update creature_spells set casttarget_1 = 1, castflags_1 = 4 where entry = 180275;
-- Moonfeather should have a random respawn timer between 12 and 24 hours.
update creature set spawntimesecsmin = 43200, spawntimesecsmax = 86400 where id = 61789;
-- Arcandir should cast its abilities on its target instead of itself.
update creature_spells set casttarget_1 = 1, castflags_1 = 4 where entry = 180276;
-- Arcandir should have a random respawn timer between 12 and 24 hours.
update creature set spawntimesecsmin = 43200, spawntimesecsmax = 86400 where id = 61790;
-- Kal'mathir the Mad should cast its abilities on its target instead of itself.
update creature_spells set casttarget_1 = 1, castflags_1 = 4 where entry = 180277;
-- Kal'mathir the Mad should cast its ability every 3 seconds instead of 3.5 seconds.
update creature_spells set delayrepeatmin_1 = 3, delayrepeatmax_1 = 3 where entry = 180277;
-- Kal'mathir the Mad should have a random respawn timer between 12 and 24 hours.
update creature set spawntimesecsmin = 43200, spawntimesecsmax = 86400 where id = 61791;
-- Change needed kills for 'Clearing Nuisances' from 8 Ashfeather Scavenger to 8 Ashfeather Swooper.
update quest_template set ReqCreatureOrGOId1 = 61657 where entry = 41162;




