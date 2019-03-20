
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
























