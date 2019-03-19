
-- ### Custom creature_template entries must remain in 50000-51000 entry range.

-- ### TEMPLATES:

-- Battlemasters: Tagnar Woundmaker and Kelir Thickbeard
-- TODO: Set correct faction.

replace into creature_template (entry, display_id1, name, subname, level_min, level_max, health_min, health_max, faction, npc_flags, script_name) values
('50000', '15032', 'Tagnar Woundmaker', 'War Recruiter', '60', '60', '7845', '7845', '35', '1', 'npc_battlemaster');

replace into creature_template (entry, display_id1, name, subname, level_min, level_max, health_min, health_max, faction, npc_flags, script_name) values
('50001', '15389', 'Kelir Thickbeard', 'War Recruiter', '60', '60', '7845', '7845', '35', '1', 'npc_battlemaster');

-- Sands of Time: Disguise related NPCs

replace into creature_template (Entry, Name, SubName, level_min, level_max, display_id1, Faction, Type, Inhabit_Type, npc_flags, unit_flags, Speed_Walk, Speed_Run, Unit_Class, Dmg_Multiplier, xp_multiplier, health_min, health_max, mana_min, mana_max, dmg_min, dmg_max, ranged_dmg_min, ranged_dmg_max, Armor, base_attack_time, Equipment_Id) values
(50002, 'Professor Malkovich', 'Anatomy Master', 25, 25, 11467, 68, 7, 3, 2, 0, 1, 1.14286, 8, 2, 1, 1104, 1104, 1984, 1984, 31, 40, 38.72, 53.24, 5043, 1500, 1919),
(50004, 'Professor Papucho', 'Anatomy Master', 25, 25, 5377, 55, 7, 3, 2, 0, 1, 1.14286, 8, 2, 1, 1104, 1104, 1984, 1984, 31, 40, 38.72, 53.24, 5043, 1500, 1919);
replace into creature_template (Entry, Name, SubName, Loot_Id, level_min, level_max, display_id1, Faction, Type, Inhabit_Type, Unit_Class, npc_flags, unit_flags, Speed_Walk, Speed_Run, Dmg_Multiplier, xp_multiplier, health_min, health_max, dmg_min, dmg_max, ranged_dmg_min, ranged_dmg_max, Armor, base_attack_time, Equipment_Id) values
(50003, 'Annoying Peasant', '', 100003, 5, 5, 11036, 7, 7, 3, 1, 0, 0, 0.92, 1.14286, 1, 1.8, 112, 112, 15, 21, 5, 8, 65, 2500, 0),
(50005, 'Stupefied Orcish Peon', '', 100005, 5, 5, 10038, 7, 7, 3, 1, 0, 0, 0.92, 1.14286, 1, 1.8, 112, 112, 15, 21, 5, 8, 65, 2500, 0);
replace into creature_template (Entry, Name, SubName, level_min, level_max, display_id1, Faction, Type, Inhabit_Type, npc_flags, unit_flags, flags_extra, Speed_Walk, Speed_Run, Unit_Class, Dmg_Multiplier, xp_multiplier, health_min, health_max, dmg_min, dmg_max, ranged_dmg_min, ranged_dmg_max, Armor, base_attack_time, Equipment_Id) values
(50006, 'Suspicious Defias Footpad', '', 15, 15, 2333, 35, 7, 3, 4, 0, 2, 1, 1.14286, 1, 2, 1, 2305, 2305, 42, 53, 45.144, 62.073, 5043, 2000, 481),
(50007, 'Suspicious Dark Iron Dwarf', '', 30, 30, 825, 35, 7, 3, 4, 0, 2, 1, 1.14286, 1, 2, 1, 2305, 2305, 42, 53, 45.144, 62.073, 5043, 2000, 1051),
(50008, 'Suspicious Southsea Pirate', '', 15, 15, 3834, 35, 7, 3, 4, 0, 2, 1, 1.14286, 1, 2, 1, 2305, 2305, 42, 53, 45.144, 62.073, 5043, 2000, 3381),
(50009, 'Suspicious Dalaran Wizard', '', 20, 20, 3585, 35, 7, 3, 4, 0, 2, 1, 1.14286, 1, 2, 1, 2305, 2305, 42, 53, 45.144, 62.073, 5043, 2000, 1889),
(50010, 'Suspicious Stonesplinter Trogg', '', 15, 15, 763, 35, 7, 3, 4, 0, 2, 1, 1.14286, 1, 2, 1, 2305, 2305, 42, 53, 45.144, 62.073, 5043, 2000, 1161),
(50011, 'Suspicious Syndicate Highwayman', '', 35, 35, 3984, 35, 7, 3, 4, 0, 2, 1, 1.14286, 1, 2, 1, 2305, 2305, 42, 53, 45.144, 62.073, 5043, 2000, 6771);

-- Sands of Time: Khadgar's Unlocking related NPCs

replace into creature_template (Entry, Scale, Name, SubName, level_min, level_max, display_id1, Faction, Type, Inhabit_Type, npc_flags, unit_flags, flags_extra, Speed_Walk, Speed_Run, Unit_Class, Dmg_Multiplier, xp_multiplier, health_min, health_max, dmg_min, dmg_max, ranged_dmg_min, ranged_dmg_max, Armor, base_attack_time, Equipment_Id) values
(50012, 1.2, 'Ol\' Biggins', 'Retired Thief', 58, 58, 191, 35, 7, 3, 2, 0, 2, 1, 1.14286, 4, 6, 1, 1104, 1104, 31, 40, 38.72, 53.24, 5043, 16, 50012),
(50013, 1, 'Moroves', 'The Keymaster', 30, 30, 10456, 68, 7, 3, 4, 0, 2, 1, 1.14286, 1, 1, 1, 2305, 2305, 42, 53, 45.144, 62.073, 5043, 22, 4605),
(50014, 1, 'Truvicus', 'The Keymaster', 30, 30, 10457, 12, 7, 3, 4, 0, 2, 1, 1.14286, 1, 1, 1, 2305, 2305, 42, 53, 45.144, 62.073, 5043, 22, 4605);

-- Gurubashi Arena: Bloody Tournament related NPCs

replace into creature_template (entry, display_id1, name, subname, level_min, level_max, health_min, health_max, mana_min, mana_max, faction, npc_flags, unit_class, script_name) values
('50015', '7175', 'Trixy Gollavix', 'Buffer', '60', '60', '12298', '12298', '5467', '5467', '35', 8, '1', 'npc_arena_vendor');

replace into creature_template (entry, display_id1, name, subname, level_min, level_max, health_min, health_max, faction, npc_flags, script_name) values
('50016', '7209', 'Dyah Owon', 'Item Rewards', '60', '60', '12298', '12298', '35', '1', 'npc_arena_vendor');

replace into creature_template (Entry, Name, SubName, Loot_Id, level_min, level_max, display_id1, display_id2, Faction, Type, Inhabit_Type, Unit_Class, npc_flags, unit_flags, Speed_Walk, Speed_Run, Dmg_Multiplier, xp_multiplier, health_min, health_max, dmg_min, dmg_max, ranged_dmg_min, ranged_dmg_max, Armor, base_attack_time, Equipment_Id) values
(50017, 'Arena Spectator', '', 0, 5, 5, 3366, 3332, 7, 7, 3, 1, 0, 0, 0.92, 1.14286, 1.9, 1.8, 112, 112, 15, 21, 5, 8, 120, 2000, 0),
(50018, 'Arena Spectator', '', 0, 5, 5, 4902, 1878, 7, 7, 3, 1, 0, 0, 0.92, 1.14286, 1.9, 1.8, 112, 112, 15, 21, 5, 8, 120, 2000, 0),
(50019, 'Arena Spectator', '', 0, 5, 5, 4084, 4072, 7, 7, 3, 1, 0, 0, 0.92, 1.14286, 1.9, 1.8, 112, 112, 15, 21, 5, 8, 120, 2000, 0),
(50020, 'Arena Spectator', '', 0, 5, 5, 9253, 1376, 7, 7, 3, 1, 0, 0, 0.92, 1.14286, 1.9, 1.8, 112, 112, 15, 21, 5, 8, 120, 2000, 0),
(50021, 'Arena Spectator', '', 0, 5, 5, 3516, 1632, 7, 7, 3, 1, 0, 0, 0.92, 1.14286, 1.9, 1.8, 112, 112, 15, 21, 5, 8, 120, 2000, 0),
(50022, 'Arena Spectator', '', 0, 5, 5, 10052, 10050, 7, 7, 3, 1, 0, 0, 0.92, 1.14286, 1.9, 1.8, 112, 112, 15, 21, 5, 8, 120, 2000, 0),
(50023, 'Arena Spectator', '', 0, 5, 5, 12729, 2459, 7, 7, 3, 1, 0, 0, 0.92, 1.14286, 1.9, 1.8, 112, 112, 15, 21, 5, 8, 120, 2000, 0),
(50024, 'Arena Spectator', '', 0, 5, 5, 3125, 3118, 7, 7, 3, 1, 0, 0, 0.92, 1.14286, 1.9, 1.8, 112, 112, 15, 21, 5, 8, 120, 2000, 0),
(50025, 'Arena Spectator', '', 0, 5, 5, 7132, 7130, 7, 7, 3, 1, 0, 0, 0.92, 1.14286, 1.9, 1.8, 112, 112, 15, 21, 5, 8, 120, 2000, 0);

replace into creature_template (entry, display_id1, name, subname, level_min, level_max, health_min, health_max, faction, npc_flags, script_name) values
('50026', '14561', 'Arena Ambassador', 'The Fight Club', '60', '60', '12298', '12298', '35', '1', 'npc_arena_ambassador');

insert ignore into creature_template_addon (entry, emote) values
(50017, 4), (50018, 4), (50019, 4), (50020, 4), (50021, 4), (50022, 4), (50023, 4), (50024, 4), (50025, 4); -- Cheering

-- Quest: Lost Turtles related NPCs

replace into creature_template (entry, name, subname, display_id1, level_min, level_max, health_min, health_max, faction, npc_flags, script_name) values
(50028, 'Durgen Turtlehammer', '', 15887, 5, 5, 235, 235, 35, 2, 'npc_lost_turtles_questgiver'),
-- 50029 UNUSED --
(50030, 'Braken Greyturtle', '', 1601, 5, 5, 235, 235, 35, 2, 'npc_lost_turtles_questgiver'),
(50031, 'E\'llo Turtle\'mon', '', 10171, 5, 5, 235, 235, 35, 2, 'npc_lost_turtles_questgiver'),
(50032, 'El\'tsa', '', 15707, 5, 5, 235, 235, 35, 2, 'npc_lost_turtles_questgiver'),
(50033, 'Tabitha Turtleton', '', 99, 5, 5, 235, 235, 35, 2, 'npc_lost_turtles_questgiver'),
(50034, 'Little Lost Turtle', '', 17158, 5, 5, 235, 235, 35, 135, 'npc_lost_turtle'),
(50035, 'Tamed Turtle', '', 17158, 5, 5, 235, 235, 35, 0, '');

update creature_template set scale = 0.5 where entry = 50034; -- Little Lost Turtle scale
update creature_template set scale = 0.7 where entry = 50035; -- Tamed Turtle scale

-- ### CREATURES IN THE WORLD:

-- Lost Turtles quest related creatures:
-- select id, map, position_x, position_y, position_z, orientation from creature where id IN (50028, 50030, 50031, 50032, 50033, 50034, 50035);

replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50028, 0, -6213.62, 329.897, 383.683, 2.80623);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50030, 0, 1704.57, 1671.9, 133.817, 3.24011);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50031, 1, -589.608, -4223.07, 38.2861, 4.15231);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50031, 1, -2929.09, -237.19, 53.9151, 4.97707);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50032, 1, 10306.7, 827.746, 1326.62, 6.17933);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50033, 0, -8902.82, -110.604, 81.8486, 3.67017);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 1, -3000.14, -141.16, 76.1378, 4.56);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 1, -3036.58, -191.956, 60.8279, 4.9095);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 1, -3128.01, -186.419, 45.6787, 4.97233);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 1, -3255.86, -186.326, 33.9254, 4.30867);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 1, -3274.32, -239.698, 40.5544, 4.81918);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 1, -3182.93, -399.021, 30.7568, 5.55744);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 1, -2946.25, -386.79, 57.8073, 0.295272);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 1, -2819.84, -363.243, 56.9863, 3.02846);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 1, -2873.91, -200.326, 54.6029, 4.50502);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 1, -2783.58, -294.574, 56.3818, 4.38721);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 1, -2933.34, -507.823, 46.864, 2.49441);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 1, -2843.75, -581.337, 57.2962, 3.7157);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 1, -2794.66, -587.382, 57.6006, 3.25231);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 1, -426.301, -4392.52, 39.7561, 3.71885);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 1, -305.531, -4340.51, 50.6765, 1.03672);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 1, -339.23, -4240.66, 66.809, 1.51581);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 1, -320.239, -4124.04, 51.4649, 4.82705);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 1, -372.751, -4014.05, 50.6587, 3.9859);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 1, -406.658, -4057.35, 52.201, 3.07876);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 1, -536.163, -4083.38, 71.8074, 3.26726);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 1, -619.188, -4102.08, 75.08, 3.7817);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 1, -709.615, -4312.48, 41.5208, 1.17811);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 1, -700.334, -4299.22, 41.6887, 5.66273);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 1, -687.694, -4109.12, 30.1794, 1.43729);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 1, -579.909, -4550.28, 42.2241, 1.43336);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 0, -6323.18, 252.513, 383.255, 4.30399);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 0, -6393.15, 317.415, 387.101, 1.52368);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 0, -6342.61, 448.986, 377.579, 4.62207);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 0, -6303.15, 544.317, 386.614, 1.9046);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 0, -6225.35, 636.942, 399.72, 2.04597);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 0, -6220.19, 688.087, 384.92, 4.56709);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 0, -6273.23, 747.696, 386.672, 1.93993);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 0, -6350.54, 753.83, 388.706, 3.88772);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 0, -6366.98, 659.99, 386.618, 5.3682);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 0, -6368.58, 579.388, 385.918, 4.67312);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 0, -6383.96, 513.085, 384.505, 4.83805);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 1, 10255.1, 971.553, 1341.51, 0.731808);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 1, 10349.1, 999.129, 1333.89, 5.44419);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 1, 10425.7, 999.907, 1325.43, 5.59735);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 1, 10559.3, 880.426, 1309.98, 3.61422);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 1, 10588.1, 827.769, 1308.79, 0.00923345);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 1, 10702.6, 773.388, 1321.04, 3.2333);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 1, 10778.5, 730.985, 1327.28, 5.67981);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 1, 10550.6, 577.8, 1339.9, 3.92444);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 1, 10410, 528.983, 1330.52, 5.23606);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 1, 10415.7, 615.783, 1322.13, 1.36326);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 1, 10359, 613.199, 1328.81, 2.69058);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 1, 10347.6, 698.316, 1327.64, 0.785988);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 1, 10204.7, 693.353, 1361.12, 3.25214);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 0, -8888.18, -323.611, 70.8654, 6.08684);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 0, -8875.21, -346.092, 71.6182, 5.39177);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 0, -8818.47, -361.705, 70.3117, 6.20858);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 0, -8768.15, -290.305, 76.8946, 1.64934);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 0, -8741.74, -221.427, 88.7327, 0.934632);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 0, -8728.67, -138.641, 86.9815, 2.43082);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 0, -8786.02, -16.9039, 113.8, 4.41395);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 0, -8876.54, 12.7079, 93.156, 3.89951);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 0, -8965.33, -59.111, 92.0573, 3.18087);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 0, -9018.5, -46.4417, 87.9452, 5.50565);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 0, -9073.02, -211.534, 70.1276, 1.33127);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 0, -9082.35, -308.971, 73.4284, 5.13652);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 0, -8918.57, -411.998, 66.0981, 0.946413);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 0, 1774.86, 1694.44, 124.893, 1.75885);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 0, 1750.48, 1585.58, 112.855, 4.58629);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 0, 1659.18, 1574.08, 138.48, 5.23031);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 0, 1693.53, 1556.06, 123.34, 4.27841);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 0, 1728.08, 1550.36, 123.007, 5.46986);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 0, 1838.22, 1500.32, 91.6455, 5.76832);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 0, 1959.93, 1387, 64.5993, 5.51306);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 0, 2049.28, 1429.89, 65.6948, 0.694644);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 0, 2121.76, 1397.04, 66.3354, 5.5916);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50034, 0, 2135.57, 1311.18, 53.679, 5.96859);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50035, 0, -8902.97, -109.546, 81.8486, 3.21621);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50035, 0, -8902.79, -111.719, 81.8486, 3.47686);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50035, 0, -6212.89, 330.891, 383.782, 3.22717);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50035, 1, -2930.97, -236.97, 53.9151, 4.72966);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50035, 1, -2933.87, -236.84, 53.9151, 5.08059);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50035, 1, -2934.35, -240.382, 53.9151, 0.879633);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50035, 1, 10306.6, 825.965, 1326.68, 6.19818);
replace into `creature` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) values (50035, 1, -591.873, -4222.55, 38.3419, 4.95193);

























