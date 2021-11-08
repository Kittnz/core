-- Gnome hunters are missing the gnome racial passive Arcane Resistance.
replace into playercreateinfo_spell values (7, 3, 20592, 0, 5875, 'Arcane Resistance');
-- Quest Mastering the Arcane not available for trolls.
update quest_template set requiredraces = 434 where entry in (80311, 80312);
-- NPC periodic yell doubled (Tansy Sparkpen):
delete from creature_ai_scripts where id = 50760;
replace into creature_ai_scripts (id, delay, command, datalong, datalong2, datalong3, datalong4, target_param1, target_param2, target_type, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) values (50760, 500, 0, 1, 0, 0, 0, 0, 0, 0, 0, 90260, 0, 0, 0, 0, 0, 0, 0, 0, 'Tansy Sparkpen, speaking.');
-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/346
delete from gameobject_template where entry in (142345, 142475, 142476, 142696);
replace into gameobject_template (entry, patch, type, displayId, name, faction, flags, size, data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, mingold, maxgold, phase_quest_id, script_name) VALUES 
(142345, 0, 2, 2091, 'Matrix Punchograph 3005-A', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'matrix_punchograph'),
(142475, 0, 2, 2091, 'Matrix Punchograph 3005-B', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'matrix_punchograph'),
(142476, 0, 2, 2091, 'Matrix Punchograph 3005-C', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'matrix_punchograph'),
(142696, 0, 2, 2091, 'Matrix Punchograph 3005-D', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'matrix_punchograph');
-- Gubber Blump will teach you fishing even if you already know:
delete from conditions where condition_entry in (10219, 10216, 10218);
replace into conditions (condition_entry, type, value1, value2, value3, value4, flags) values
(10216, 29, 356, 1, 0, 0, 0),(10218, 8, 1141, 0, 0, 0, 0),(10219, -1, 10216, 10218, 0, 0, 0);
update gossip_scripts set condition_id = 10219 where id = 256200;
-- Remove max.level values from Drakin Swiftaxe's quests:
update quest_template set maxlevel = 0 where entry in (60071, 60072, 60073, 60074);
-- Alliance PvP mounts are usable by horde:
update item_template set name = 'Black War Steed' where entry = 18241;
update item_template set name = 'Black War Tiger' where entry = 18242;
update item_template set name = 'Black War Wolf' where entry = 18245;
update item_template set name = 'Black War Kodo' where entry = 18247;
update item_template set name = 'Black War Raptor' where entry = 18246;
update item_template set allowable_race = 589 where entry in (18241, 18243, 18244, 18242, 19030);
-- Horde PvP mounts are usable by horde:
update item_template set allowable_race = 434 where entry in (19029);
-- Booty Bay Alchemist willing to teach non-alchemists:
update creature_template set trainer_spell = 2259 where entry = 2837;
-- Link Salfa's quests in chain to avoid bead drop confusion:
update quest_template set prevquestid = 8464 where entry = 8469;
-- Removed wrong gossip from creature 5637 (Roetten Stonehammer) because he was claiming that his Barren's wyverns were the fastest.
update creature_template set gossip_menu_id = 0, npc_flags = 2 where entry = 5637;
-- After a race change between Alliance and Horde attunements get lost:
replace into player_factionchange_quests values (7848, 7487, 'Attunement to the Core');
replace into player_factionchange_quests values (7761, 7761, 'Blackhand\'s Command');
replace into player_factionchange_quests values (9123, 9123, 'The Dread Citadel - Naxxramas');
-- Gnome hunters should not be able to access Dwarf hunter quests. 
update quest_template set requiredraces = 516 where entry = 6064;
update quest_template set requiredraces = 516 where entry = 6084;
update quest_template set requiredraces = 516 where entry = 6085;
update quest_template set requiredraces = 516 where entry = 6086;
-- Gnome hunters can't speak gnomish but can speak dwarven:
replace into playercreateinfo_spell values (7, 3, 7340, 0, 5875, 'Language: Gnomish');
delete from playercreateinfo_spell where race = 7 and class = 3 and spell = 672;
-- Remove hack for Buru Egg's Egg Explosion.
DELETE FROM `spell_effect_mod` WHERE `Id`=19593;
-- Events list for Buru Egg Trigger
DELETE FROM `creature_ai_events` WHERE `creature_id`=15964;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1596401, 15964, 0, 11, 0, 100, 1, 0, 0, 0, 0, 1596401, 0, 0, 'Buru Egg Trigger - Despawn after 6500 ms');
DELETE FROM `creature_ai_scripts` WHERE `id`=1596401;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1596401, 0, 18, 6500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Buru Egg Trigger - Despawn after 6500 ms');
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1596401, 0, 15, 26646, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Buru Egg Trigger - Cast Spell Buru Egg Trigger Effect');
UPDATE `creature_template` SET `unit_flags`=33555200, `flags_extra`=131074, `ai_name`='EventAI' WHERE `entry`=15964;
-- Remove wrong unit flags from Buru Egg.
UPDATE `creature_template` SET `unit_flags`=0, `flags_extra`=2228502 WHERE `entry`=15514;
-- Remove attributes hack from Essence of the Red.
DELETE FROM `spell_mod` WHERE `ID`=23513;
-- Hack school instead.
UPDATE `spell_template` SET `school`=1 WHERE `entry`=23513;
