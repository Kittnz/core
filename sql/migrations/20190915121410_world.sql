replace into migrations values (20190915121410);
drop table if exists miraclerace_checkpoint;
create table if not exists miraclerace_checkpoint (
  id int unsigned not null auto_increment,
  raceid int unsigned not null,
  positionx float not null,
  positiony float not null,
  positionz float not null,
  cameraposx float not null,
  cameraposy float not null,
  cameraposz float not null,
  cameraposorientation float not null,
  primary key (id),
  unique index id_unique (id asc));
alter table miraclerace_checkpoint
drop primary key;
alter table miraclerace_checkpoint 
change column id id int(10) unsigned not null ,
drop index id_unique ;
truncate table miraclerace_checkpoint;
replace into miraclerace_checkpoint (id, raceid, positionx, positiony, positionz, cameraposx, cameraposy, cameraposz) values
-- Main racetrack:
(1, 1, -6206.02, -3901.59, -60.3667, 0, 0, 0),
(2, 1, -6349.51, -3901.63, -62.3682, 0, 0, 0),
(3, 1, -6423.49, -3959.21, -62.8255, 0, 0, 0),
(4, 1, -6431.67, -4072.98, -63.5004, 0, 0, 0),
(5, 1, -6399.11, -4167.99, -63.0013, 0, 0, 0),
(6, 1, -6304.85, -4215.72, -61.3152, 0, 0, 0),
(7, 1, -6202.22, -4193.91, -61.6354, 0, 0, 0),
(8, 1, -6065.1, -4190.8, -62.4438, 0, 0, 0),
(9, 1, -5896.48, -4199.06, -62.8799, 0, 0, 0),
(10, 1, -5754.72, -4184.97, -61.4735, 0, 0, 0),
(11, 1, -5656.34, -4105.89, -61.4934, 0, 0, 0),
(12, 1, -5649.65, -3994.44, -61.156, 0, 0, 0),
(13, 1, -5663.82, -3871.84, -62.0788, 0, 0, 0),
(14, 1, -5735.98, -3791.8, -60.9051, 0, 0, 0),
(15, 1, -5848.82, -3783.54, -60.7899, 0, 0, 0),
(16, 1, -5956.71, -3834.48, -60.7552, 0, 0, 0),
(17, 1, -6076.11, -3887.01, -60.1409, 0, 0, 0),
(18, 1, -6143.04, -3901.29, -59.8818, 0, 0, 0),
(19, 1, -6192.59, -3901.66, -60.1642, 0, 0, 0),
-- Test racetrack: 
(1, 2, -6252.26, -4011.71, -58.749, 0, 0, 0),
(2, 2, -6210.75, -4013.92, -58.749, 0, 0, 0),
(3, 2, -6159.15, -4014.44, -58.749, 0, 0, 0),
(4, 2, -6086.55, -4014.02, -58.749, 0, 0, 0),
(5, 2, -6022.28, -4015.71, -58.749, 0, 0, 0),
(6, 2, -5949.27, -4018.5, -58.749, 0, 0, 0),
(7, 2, -5895.45, -4018.76, -58.749, 0, 0, 0),
(8, 2, -5833.77, -4017.99, -58.749, 0, 0, 0),
(9, 2, -5786.09, -4017.94, -58.7796, 0, 0, 0);
-- Racetrack sheep spawn points:
drop table if exists miraclerace_creaturespool;
create table if not exists miraclerace_creaturespool 
( raceid int unsigned not null,
  entry int unsigned not null,
  chance int unsigned not null,
  positionx float not null,
  positiony float not null,
  positionz float not null); 
replace into miraclerace_creaturespool (raceid, entry, chance, positionx, positiony, positionz) values
-- Main track cheeps:
(1, 50513, rand()*(100-10)+10,-6261.06, -4203.29, -61.6622),
(1, 50513, rand()*(100-10)+10,-6214.69, -4197.56, -61.5945),
(1, 50513, rand()*(100-10)+10,-6287.51, -4219.52, -61.4578),
(1, 50513, rand()*(100-10)+10,-6321.51, -4211.65, -62.1696),
(1, 50513, rand()*(100-10)+10,-6353.83, -4204.9, -61.7181),
(1, 50513, rand()*(100-10)+10,-6377.89, -4195.65, -61.2303),
(1, 50513, rand()*(100-10)+10,-6370.63, -4188.11, -61.8002),
(1, 50513, rand()*(100-10)+10,-6390.03, -4178.49, -62.5875),
(1, 50513, rand()*(100-10)+10,-6416.89, -4134.83, -63.9271),
(1, 50513, rand()*(100-10)+10,-6427.3, -4096.03, -63.7856),
(1, 50513, rand()*(100-10)+10,-6433.31, -4031.17, -63.1054),
(1, 50513, rand()*(100-10)+10,-6431.05, -4003.72, -62.8452),
(1, 50513, rand()*(100-10)+10,-6424.3, -3959.57, -62.8266),
(1, 50513, rand()*(100-10)+10,-6408.31, -3930.51, -62.311),
(1, 50513, rand()*(100-10)+10,-6379.64, -3908.14, -61.8397),
(1, 50513, rand()*(100-10)+10,-6349.96, -3903.26, -62.356),
(1, 50513, rand()*(100-10)+10,-6311.13, -3899.58, -62.9651),
(1, 50513, rand()*(100-10)+10,-6280.21, -3901.05, -62.3262),
(1, 50513, rand()*(100-10)+10,-6251.76, -3901.2, -61.2454),
(1, 50513, rand()*(100-10)+10,-6232.54, -3902.18, -60.5786),
(1, 50513, rand()*(100-10)+10,-6159, -3903.95, -59.856),
(1, 50513, rand()*(100-10)+10,-6168.7, -3899.25, -59.9417),
(1, 50513, rand()*(100-10)+10,-6168.31, -3906.6, -59.9298),
(1, 50513, rand()*(100-10)+10,-6141.92, -3896.65, -59.8812),
(1, 50513, rand()*(100-10)+10,-6096.11, -3887.88, -60.061),
(1, 50513, rand()*(100-10)+10,-6074.25, -3888.96, -60.0756),
(1, 50513, rand()*(100-10)+10,-6008.51, -3857.35, -60.5044),
(1, 50513, rand()*(100-10)+10,-5970.14, -3840.32, -60.7226),
(1, 50513, rand()*(100-10)+10,-5932.73, -3821.27, -60.3359),
(1, 50513, rand()*(100-10)+10,-5908.78, -3814.33, -59.7494),
(1, 50513, rand()*(100-10)+10,-5885.44, -3793.31, -60.0887),
(1, 50513, rand()*(100-10)+10,-5842.47, -3782.85, -61.0047),
(1, 50513, rand()*(100-10)+10,-5784.94, -3779.09, -61.501),
(1, 50513, rand()*(100-10)+10,-5737.71, -3794.85, -60.4773),
(1, 50513, rand()*(100-10)+10,-5698.81, -3813.19, -61.5379),
(1, 50513, rand()*(100-10)+10,-5666.96, -3872.2, -62.0234),
(1, 50513, rand()*(100-10)+10,-5650.89, -3897.62, -61.7227),
(1, 50513, rand()*(100-10)+10,-5659.54, -3920.85, -61.4246),
(1, 50513, rand()*(100-10)+10,-5647.12, -3962.56, -61.1855),
(1, 50513, rand()*(100-10)+10,-5652.83, -3978.41, -61.1718),
(1, 50513, rand()*(100-10)+10,-5644.27, -4003.11, -61.1481),
(1, 50513, rand()*(100-10)+10,-5655.68, -4009.87, -60.9243),
(1, 50513, rand()*(100-10)+10,-5640.59, -4058.41, -61.1986),
(1, 50513, rand()*(100-10)+10,-5650.44, -4083.08, -61.3705),
(1, 50513, rand()*(100-10)+10,-5653.29, -4108.54, -61.4863),
(1, 50513, rand()*(100-10)+10,-5675.98, -4143.84, -61.5861),
(1, 50513, rand()*(100-10)+10,-5700.35, -4158.4, -60.38),
(1, 50513, rand()*(100-10)+10,-5716.27, -4178.49, -60.9616),
(1, 50513, rand()*(100-10)+10,-5767.6, -4184.46, -61.5557),
(1, 50513, rand()*(100-10)+10,-5797.67, -4196.96, -61.2527),
(1, 50513, rand()*(100-10)+10,-5817.36, -4189.44, -61.6969),
(1, 50513, rand()*(100-10)+10,-5860.39, -4203.96, -62.6341),
(1, 50513, rand()*(100-10)+10,-5883.4, -4192.37, -62.8028),
(1, 50513, rand()*(100-10)+10,-5912.22, -4201.35, -62.8427),
(1, 50513, rand()*(100-10)+10,-5947.57, -4205.34, -62.4424),
(1, 50513, rand()*(100-10)+10,-5968.67, -4194.83, -62.2133),
(1, 50513, rand()*(100-10)+10,-5999.46, -4202.01, -62.3811),
(1, 50513, rand()*(100-10)+10,-6046.75, -4189.5, -62.6701),
(1, 50513, rand()*(100-10)+10,-6068.59, -4194.98, -62.3636),
(1, 50513, rand()*(100-10)+10,-6095.29, -4181.1, -62.0564),
(1, 50513, rand()*(100-10)+10,-6117.26, -4190.24, -62.5743),
(1, 50513, rand()*(100-10)+10,-6183.04, -4184.78, -61.6778),
(1, 50513, rand()*(100-10)+10,-6156.79, -4183.43, -61.8667),
-- Test track sheeps:
(2, 50513, rand()*(100-10)+10, -5996.18, -4022.64, -58.7498),
(2, 50513, rand()*(100-10)+10, -5928.57, -4024.24, -58.7489),
(2, 50513, rand()*(100-10)+10, -5835.02, -4012.23, -58.7908),
(2, 50513, rand()*(100-10)+10, -5843.17, -4021.73, -58.7488),
(2, 50513, rand()*(100-10)+10, -5812.23, -4015.08, -58.765),
(2, 50513, rand()*(100-10)+10, -5870.1, -4012.66, -58.7349),
(2, 50513, rand()*(100-10)+10, -5897.34, -4021.61, -58.7502),
(2, 50513, rand()*(100-10)+10, -5931.2, -4012.18, -58.7502),
(2, 50513, rand()*(100-10)+10, -5953.79, -4022.85, -58.7502),
(2, 50513, rand()*(100-10)+10, -5975.88, -4018.01, -58.7502),
(2, 50513, rand()*(100-10)+10, -5962.04, -4013.1, -58.7498),
(2, 50513, rand()*(100-10)+10, -6005.2, -4009.06, -58.7502),
(2, 50513, rand()*(100-10)+10, -6031.85, -4017.23, -58.7502),
(2, 50513, rand()*(100-10)+10, -6200.13, -4016.25, -58.7488),
(2, 50513, rand()*(100-10)+10, -6180.25, -4007.61, -58.7488),
(2, 50513, rand()*(100-10)+10, -6162.44, -4019.99, -58.7488),
(2, 50513, rand()*(100-10)+10, -6146.87, -4013.68, -58.7502),
(2, 50513, rand()*(100-10)+10, -6132.15, -4008.54, -58.7502),
(2, 50513, rand()*(100-10)+10, -6116.02, -4017.87, -58.7502),
(2, 50513, rand()*(100-10)+10, -6092.21, -4019.04, -58.7502),
(2, 50513, rand()*(100-10)+10, -6065.18, -4009.92, -58.7502);
-- Spawn points for speed boosts and traps:
drop table if exists miraclerace_gameobject;
create table miraclerace_gameobject (
  raceid int unsigned not null,
  entry int unsigned not null,
  chance int unsigned not null,
  positionx float not null,
  positiony float not null,
  positionz float not null);
-- Object spawn points:
replace into miraclerace_gameobject (raceid, chance, entry, positionx, positiony, positionz) values
-- Main track points:
(1, rand()*(100-10)+10, 1000051, -6138.99, -3902.99, -59.8894),
(1, rand()*(100-10)+10, 1000051, -6033.26, -3867.92, -60.3826),
(1, rand()*(100-10)+10, 1000051, -5986.01, -3846.16, -60.641),
(1, rand()*(100-10)+10, 1000051, -5800.41, -3782.72, -61.4215),
(1, rand()*(100-10)+10, 1000051, -5716.76, -3800.1, -60.7028),
(1, rand()*(100-10)+10, 1000051, -5647.85, -4058.74, -61.1982),
(1, rand()*(100-10)+10, 1000051, -5651.06, -3945.75, -61.2005),
(1, rand()*(100-10)+10, 1000051, -5712.37, -4170.39, -60.8076),
(1, rand()*(100-10)+10, 1000051, -5819, -4196.16, -61.7695),
(1, rand()*(100-10)+10, 1000051, -5980.63, -4199.89, -62.2826),
(1, rand()*(100-10)+10, 1000051, -6181.22, -4191.54, -61.6828),
(1, rand()*(100-10)+10, 1000051, -6295.57, -4214.81, -61.376),
(1, rand()*(100-10)+10, 1000051, -6433.23, -4051.22, -63.2977),
(1, rand()*(100-10)+10, 1000051, -6415.71, -3941.8, -62.6632),
(1, rand()*(100-10)+10, 1000051, -6292.88, -3899.84, -62.8398),
-- Test track points:
(2, rand()*(100-10)+10, 1000051, -6177.14, -4014.28, -58.7497),
(2, rand()*(100-10)+10, 1000051, -6069.95, -4014.93, -58.7497),
(2, rand()*(100-10)+10, 1000051, -5998.69, -4016.71, -58.7497),
(2, rand()*(100-10)+10, 1000051, -5940.98, -4018.31, -58.7497),
(2, rand()*(100-10)+10, 1000051, -5903.8, -4018.31, -58.7497),
(2, rand()*(100-10)+10, 1000051, -5832.07, -4018.69, -58.7497);
-- Random stuff:
replace into game_event (entry, start_time, end_time, occurence, length, holiday, description, hardcoded, disabled, patch_min, patch_max) values
('161', '2017-01-01 17:00:00', '2022-12-31 11:00:00', '1', '9999999999', '0', 'Mirage Race', '1', '0', '0', '10');
update creature_template set script_name="npc_daisy" where entry=4507;
update creature_template set npc_flags=1 where entry=4507;		
-- Race Spectator:
replace into creature_template (entry, patch, display_id1, display_id2, display_id3, display_id4, name, subname, gossip_menu_id, level_min, level_max, health_min, health_max, mana_min, mana_max, armor, faction, npc_flags, speed_walk, speed_run, scale, detection_range, call_for_help_range, leash_range, rank, xp_multiplier, dmg_min, dmg_max, dmg_school, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, unit_class, unit_flags, dynamic_flags, beast_family, trainer_type, trainer_spell, trainer_class, trainer_race, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, type_flags, loot_id, pickpocket_loot_id, skinning_loot_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spell_id1, spell_id2, spell_id3, spell_id4, spell_list_id, pet_spell_list_id, gold_min, gold_max, ai_name, movement_type, inhabit_type, civilian, racial_leader, regeneration, equipment_id, trainer_id, vendor_id, mechanic_immune_mask, school_immune_mask, flags_extra, script_name) values 
(50523, 0, 11676, 11689, 11691, 10620, 'Race Spectator', '', 0, 5, 5, 112, 112, 0, 0, 120, 35, 0, 0.92, 1.14286, 1, 20, 5, 0, 0, 1.8, 15, 21, 0, 0, 1.9, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 5, 8, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, ''),
(50524, 0, 7214, 7218, 7219, 7231, 'Race Spectator', '', 0, 5, 5, 112, 112, 0, 0, 120, 35, 0, 0.92, 1.14286, 1, 20, 5, 0, 0, 1.8, 15, 21, 0, 0, 1.9, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 5, 8, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, ''),
(50525, 0, 5435, 5433, 5424, 5451, 'Race Spectator', '', 0, 5, 5, 112, 112, 0, 0, 120, 35, 0, 0.92, 1.14286, 1, 20, 5, 0, 0, 1.8, 15, 21, 0, 0, 1.9, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 5, 8, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, ''),
(50526, 0, 5530, 5531, 5532, 5545, 'Race Spectator', '', 0, 5, 5, 112, 112, 0, 0, 120, 35, 0, 0.92, 1.14286, 1, 20, 5, 0, 0, 1.8, 15, 21, 0, 0, 1.9, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 5, 8, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, '');
-- /cheer
replace into creature_template_addon (entry, emote) values ('50523', '4'),('50524', '4'),('50525', '4'),('50526', '4');
-- Ironaya and Archaedas texts:
delete from script_texts where entry = -1070000;
update broadcast_text set Sound = 5851, type = 1 where ID = 3261;
update broadcast_text set Sound = 5855, type = 1 where ID = 3400;
update broadcast_text set Sound = 5856, type = 1 where ID = 6536;
update broadcast_text set Sound = 5857, type = 1 where ID = 6537;
update broadcast_text set Sound = 5858, type = 1 where ID = 6215;
-- Fix crash on script loading: 
delete from creature_movement_scripts where command = 79;
-- Miracle Raceway engineers:
replace into creature_template (entry, patch, display_id1, display_id2, display_id3, display_id4, name, subname, gossip_menu_id, level_min, level_max, health_min, health_max, mana_min, mana_max, armor, faction, npc_flags, speed_walk, speed_run, scale, detection_range, call_for_help_range, leash_range, rank, xp_multiplier, dmg_min, dmg_max, dmg_school, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, unit_class, unit_flags, dynamic_flags, beast_family, trainer_type, trainer_spell, trainer_class, trainer_race, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, type_flags, loot_id, pickpocket_loot_id, skinning_loot_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spell_id1, spell_id2, spell_id3, spell_id4, spell_list_id, pet_spell_list_id, gold_min, gold_max, ai_name, movement_type, inhabit_type, civilian, racial_leader, regeneration, equipment_id, trainer_id, vendor_id, mechanic_immune_mask, school_immune_mask, flags_extra, script_name) values 
(50521, 0, 7169, 0, 0, 0, 'Jizzle Grikbot', 'Chief Engineer', 90200, 30, 30, 1605, 1605, 0, 0, 1200, 35, 2, 1.08, 1.14286, 0, 20, 5, 0, 0, 1, 42, 53, 0, 122, 1, 1000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 45.144, 62.073, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 100, 0, 0, 10, ''),
(50522, 0, 5438, 0, 0, 0, 'Gregor Fizzwuzz', 'Senior Assistant', 90200, 30, 30, 1605, 1605, 0, 0, 1200, 35, 2, 1.08, 1.14286, 0, 20, 5, 0, 0, 1, 42, 53, 0, 122, 1, 1000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 45.144, 62.073, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 100, 0, 0, 10, '');
-- Miracle Raceway quest rewards:
replace into item_template (entry, class, subclass, name, description, display_id, quality, bonding, spellid_1, spellcooldown_1) values
(51002, 15, 2, 'Green Steam Tonk',  'Summon and control your steam tonk.', 8931, 1, 1, 28505, 1500),
(51003, 15, 2, 'Purple Steam Tonk', 'Summon and control your steam tonk.', 8931, 1, 1, 28505, 1500);
replace into creature_template (entry, display_id1, name, subname, level_min, level_max, health_min, health_max, faction, script_name, scale) values
('50527', '15381', 'Green Steam Tonk', '', '1', '1', '64', '64', '35', '', 1),
('50528', '15382', 'Purple Steam Tonk', '', '1', '1', '64', '64', '35', '', 1);
replace into custom_pet_entry_relation (item_entry, creature_entry) values
('51002', '50527'), 
('51003', '50528');
replace into item_template (entry, class, name, display_id, quality, bonding, flags, description) values
(51004, 15, 'Goblin Prize Box', 9161, 1, 1, 4, 'Open for a prize!'),
(51005, 15, 'Gnome Prize Box', 9162, 1, 1, 4, 'Open for a prize!'); 
replace into item_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount) values
(51004, 18253, 100, 1, 1, 1), 
(51004, 13444, 100, 2, 1, 1),
(51004, 13446, 100, 3, 1, 1),
(51004, 13454, 100, 4, 1, 1), 
(51004, 13453, 100, 4, 1, 1);
-- TODO: add more elixirs and randomize their drop.
replace into quest_template (entry, patch, Method, ZoneOrSort, MinLevel, MaxLevel, QuestLevel, Type, RequiredClasses, RequiredRaces, RequiredSkill, RequiredSkillValue, RepObjectiveFaction, RepObjectiveValue, RequiredMinRepFaction, RequiredMinRepValue, RequiredMaxRepFaction, RequiredMaxRepValue, SuggestedPlayers, LimitTime, QuestFlags, SpecialFlags, PrevQuestId, NextQuestId, ExclusiveGroup, NextQuestInChain, SrcItemId, SrcItemCount, SrcSpell, Title, Details, Objectives, OfferRewardText, RequestItemsText, EndText, ObjectiveText1, ObjectiveText2, ObjectiveText3, ObjectiveText4, ReqItemId1, ReqItemId2, ReqItemId3, ReqItemId4, ReqItemCount1, ReqItemCount2, ReqItemCount3, ReqItemCount4, ReqSourceId1, ReqSourceId2, ReqSourceId3, ReqSourceId4, ReqSourceCount1, ReqSourceCount2, ReqSourceCount3, ReqSourceCount4, ReqCreatureOrGOId1, ReqCreatureOrGOId2, ReqCreatureOrGOId3, ReqCreatureOrGOId4, ReqCreatureOrGOCount1, ReqCreatureOrGOCount2, ReqCreatureOrGOCount3, ReqCreatureOrGOCount4, ReqSpellCast1, ReqSpellCast2, ReqSpellCast3, ReqSpellCast4, RewChoiceItemId1, RewChoiceItemId2, RewChoiceItemId3, RewChoiceItemId4, RewChoiceItemId5, RewChoiceItemId6, RewChoiceItemCount1, RewChoiceItemCount2, RewChoiceItemCount3, RewChoiceItemCount4, RewChoiceItemCount5, RewChoiceItemCount6, RewItemId1, RewItemId2, RewItemId3, RewItemId4, RewItemCount1, RewItemCount2, RewItemCount3, RewItemCount4, RewRepFaction1, RewRepFaction2, RewRepFaction3, RewRepFaction4, RewRepFaction5, RewRepValue1, RewRepValue2, RewRepValue3, RewRepValue4, RewRepValue5, RewOrReqMoney, RewMoneyMaxLevel, RewSpell, RewSpellCast, RewMailTemplateId, RewMailDelaySecs, RewMailMoney, PointMapId, PointX, PointY, PointOpt, DetailsEmote1, DetailsEmote2, DetailsEmote3, DetailsEmote4, DetailsEmoteDelay1, DetailsEmoteDelay2, DetailsEmoteDelay3, DetailsEmoteDelay4, IncompleteEmote, CompleteEmote, OfferRewardEmote1, OfferRewardEmote2, OfferRewardEmote3, OfferRewardEmote4, OfferRewardEmoteDelay1, OfferRewardEmoteDelay2, OfferRewardEmoteDelay3, OfferRewardEmoteDelay4, StartScript, CompleteScript) values 
-- Test drive quests:
(50310, 0, 2, 0, 1, 0, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50525, 1, 0, 'Goblin Engineering At It\'s Finest!', 'Ey, kid! Yes, you! I see you\'re an adventuring type and ready to jump into any fray if only there\'s one to jump into, right? Just as I thought. What? Of course there\'s a reward involved, how else could it be around here? It\'s a Mirage Raceway after all!\n\nWhat to do? Oh, that\'s so simple, I\'m sure that even a gnome would manage to test our jolly vehicle on the sustain for … errh, durability conditions! Yes! So, if you\'re ready to earn some coins and crack some scorpids flat then you\'re at the right spot, kid! What helmet? Instruction? Bah! Who needs\'em anyway?!\n\nLet\'s blast it!', 'Ride a goblin race car to see if it survives the start at all.', 'Data should be gathered and then processed. Do you realize how important it is for us? Good. Now then, see to it done!', 'Ahhh, finally! I\'ve been awaiting for this data... Many thanks, many thanks indeed.', NULL, NULL, NULL, NULL, NULL, 0, 50525, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50522, 51002, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(50312, 0, 2, 0, 1, 0, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50524, 1, 0, 'Gnomes Are Genuine Inventors', 'I am sure that you\'re very well aware of the fact about us, gnomes, we\'re the best inventors. Assuming you\'re striving to improve your skills and knowledge you will eventually be considered to study from us. Obviously, no gnome is that stupid to decline this intriguing and exciting partnership, alas it might be costly sometimes.\n\nSpeaking shorter; we need someone to compliment our natural resourcefulness of brain activity with their muscle and durability!\n\nIf you successfully ride this awesome masterpiece of gnomish engineering any other dimwit goblin would simply call a race car then you will be granted an opportunity to represent our bright society of inventors even further in Mirage Races!\n\nCool, right?\n\nWell, here\'s the instructions we\'ve specifically designed for other races for better understanding and comprehension.\n\nGood luck, sentient one!', 'Ride a gnome race car to see if it survives the start at all.', 'What helmet? Instruction? Bah! Who needs\'em anyway?!', 'Starts the engine, of course! Levers for stirring!', NULL, NULL, NULL, NULL, NULL, 0, 50524, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50523, 51003, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
-- Real race quests:
(50311, 0, 2, 0, 1, 0, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50310, 0, 0, 0, 50525, 1, 0, 'Mirage Raceway: Goblin\'s Team', 'Oh, so nice you\'re alive and back in one piece! I had no doubts in you, of course.\n\nSo you\'re ready for another run on our goblin engineering masterpiece, eh? Well then if you know the drill you better get ready and take the first place yet again!', 'Complete the lap with best time.', 'Data should be gathered and then processed. Do you realize how important it is for us? Good. Now then, see to it done!', 'Ahhh, finally! I\'ve been awaiting for this data... Many thanks, many thanks indeed.', NULL, NULL, NULL, NULL, NULL, 0, 50525, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51004, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(50313, 0, 2, 0, 1, 0, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50312, 0, 0, 0, 50524, 1, 0, 'Mirage Raceway: Gnome\'s Team', 'Salutations, sentient one! We\'re very much satisfied with the results you have achieved with the test drive for our mechanical engineering device and proved to be very useful for providing us so much needed data for analysis.We\'re ready to allow you continuous partial involvement with our research team and have agreed on supplying you for your efforts.\n\nWhen you\'re ready to proceed with data gathering be sure to remember the instructions provided and safety measures recommended.\n\nHave a great day!', 'Complete the lap with best time.', 'Don\'t swap the pedals!', 'You got it, eh?', NULL, NULL, NULL, NULL, NULL, 0, 50524, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51005, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
-- Update test quest flags:
update quest_template set questflags = 1 where entry = 50310;
update quest_template set specialflags = 2 where entry = 50310;
update quest_template set questflags = 1 where entry = 50312;
update quest_template set specialflags = 2 where entry = 50312;
-- Update real quest flags:
update quest_template set questflags = 1 where entry = 50311;
update quest_template set specialflags = 3 where entry = 50311;
update quest_template set questflags = 1 where entry = 50313;
update quest_template set specialflags = 3 where entry = 50313;
-- Update test quest PrevQuestId:
update quest_template set prevquestid = 50315 where entry = 50310;
update quest_template set prevquestid = 50315 where entry = 50312;
-- Fara Boltbreaker, and her Gadgetzan Times quest:
replace into creature_template (entry, patch, display_id1, display_id2, display_id3, display_id4, name, subname, gossip_menu_id, level_min, level_max, health_min, health_max, mana_min, mana_max, armor, faction, npc_flags, speed_walk, speed_run, scale, detection_range, call_for_help_range, leash_range, rank, xp_multiplier, dmg_min, dmg_max, dmg_school, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, unit_class, unit_flags, dynamic_flags, beast_family, trainer_type, trainer_spell, trainer_class, trainer_race, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, type_flags, loot_id, pickpocket_loot_id, skinning_loot_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spell_id1, spell_id2, spell_id3, spell_id4, spell_list_id, pet_spell_list_id, gold_min, gold_max, ai_name, movement_type, inhabit_type, civilian, racial_leader, regeneration, equipment_id, trainer_id, vendor_id, mechanic_immune_mask, school_immune_mask, flags_extra, script_name) values 
(50530, 0, 7909, 0, 0, 0, 'Fara Boltbreaker', 'Gadgetzan Times Reporter', 90200, 30, 30, 1605, 1605, 0, 0, 1200, 35, 2, 1.08, 1.14286, 0, 20, 5, 0, 0, 1, 42, 53, 0, 122, 1, 1000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 45.144, 62.073, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 100, 0, 0, 10, '');
-- Gadgetzan Times quest (invitation to Miracle Raceway):
replace into quest_template (entry, patch, Method, ZoneOrSort, MinLevel, MaxLevel, QuestLevel, Type, RequiredClasses, RequiredRaces, RequiredSkill, RequiredSkillValue, RepObjectiveFaction, RepObjectiveValue, RequiredMinRepFaction, RequiredMinRepValue, RequiredMaxRepFaction, RequiredMaxRepValue, SuggestedPlayers, LimitTime, QuestFlags, SpecialFlags, PrevQuestId, NextQuestId, ExclusiveGroup, NextQuestInChain, SrcItemId, SrcItemCount, SrcSpell, Title, Details, Objectives, OfferRewardText, RequestItemsText, EndText, ObjectiveText1, ObjectiveText2, ObjectiveText3, ObjectiveText4, ReqItemId1, ReqItemId2, ReqItemId3, ReqItemId4, ReqItemCount1, ReqItemCount2, ReqItemCount3, ReqItemCount4, ReqSourceId1, ReqSourceId2, ReqSourceId3, ReqSourceId4, ReqSourceCount1, ReqSourceCount2, ReqSourceCount3, ReqSourceCount4, ReqCreatureOrGOId1, ReqCreatureOrGOId2, ReqCreatureOrGOId3, ReqCreatureOrGOId4, ReqCreatureOrGOCount1, ReqCreatureOrGOCount2, ReqCreatureOrGOCount3, ReqCreatureOrGOCount4, ReqSpellCast1, ReqSpellCast2, ReqSpellCast3, ReqSpellCast4, RewChoiceItemId1, RewChoiceItemId2, RewChoiceItemId3, RewChoiceItemId4, RewChoiceItemId5, RewChoiceItemId6, RewChoiceItemCount1, RewChoiceItemCount2, RewChoiceItemCount3, RewChoiceItemCount4, RewChoiceItemCount5, RewChoiceItemCount6, RewItemId1, RewItemId2, RewItemId3, RewItemId4, RewItemCount1, RewItemCount2, RewItemCount3, RewItemCount4, RewRepFaction1, RewRepFaction2, RewRepFaction3, RewRepFaction4, RewRepFaction5, RewRepValue1, RewRepValue2, RewRepValue3, RewRepValue4, RewRepValue5, RewOrReqMoney, RewMoneyMaxLevel, RewSpell, RewSpellCast, RewMailTemplateId, RewMailDelaySecs, RewMailMoney, PointMapId, PointX, PointY, PointOpt, DetailsEmote1, DetailsEmote2, DetailsEmote3, DetailsEmote4, DetailsEmoteDelay1, DetailsEmoteDelay2, DetailsEmoteDelay3, DetailsEmoteDelay4, IncompleteEmote, CompleteEmote, OfferRewardEmote1, OfferRewardEmote2, OfferRewardEmote3, OfferRewardEmote4, OfferRewardEmoteDelay1, OfferRewardEmoteDelay2, OfferRewardEmoteDelay3, OfferRewardEmoteDelay4, StartScript, CompleteScript) values 
(50315, 0, 2, 2240, 1, 0, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gadgetzan Times: BREAKING NEWS!', 'Come, come, get your copy of the latest issue of Gadgetzan Times! Here you\'ll find out really breaking news!\n\nWhat? Oh, the news are … breaking!\n\nVery soon on the Shimmering Flats, which is in the Thousand Needles as you know, two most adventurous and most intelligent teams will compete in a captivating race, best known throughout the universe as THE MIRAGE RACES!', 'Grab the Gadgetzan Times Issue #1!', 'What do you mean no one else knows of us?!', 'All customers are always welcome!\n\nMany thanks, many thanks, stay INFORMED!', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51006, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -5000, 2400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50530);
replace into item_template (entry, class, subclass, name, display_id, Quality, Flags, Buy_Count, stackable, bonding, Material, Page_Text) values
(51006, 15, 0, 'Gadgetzan Times Issue #1', 7695, 1, 16384, 1, 1, 1, -1, 50080);
replace into page_text values
(50080, 'SHIMMERING FLATS — the sounds of desert creatures and sandstorms have been replaced. Gone is the clattering of scorpids, evicted from their natural home by the powerful roar of engines. As engineers from around the world congregate to create the fastest machine ever to traverse these once open plains, Gadgetzan Times was given the unique opportunity to talk with some of the pit crew.\n
"What we are trying to achieve here is not simply a land speed record." G.T. was told by Gregor Fizzwuzz, assistant to the great Brassbolts brothers, "I mean sure, we want to build something that will be remembered through history as a fine piece of Gnomish Engineering, but more importantly; we want to beat those Goblins!"', 50081),
(50081, 'It\'s true that the Gnomish engineers have progressed far in the development of their \'racers\' but following them step for step technologically have been the Goblins who know a money-maker when they see one.\n
"The Gnomes never build anything that works," remarks Ed Sprockett, one of the goblin crew-workers, "They spend so much time tinkering and fiddling with the little things that they forget that they are working on a larger project. The smaller components that regulate the internal lighting and the cushions on their seats may be good ideas but if the \'thing\' never moves, it\'s a complete waste of time."', 50082),
(50082, 'The Gnomes and the Goblins have been out here in the Shimmering Flats for a long time trying to build a better speed racer than each other. So how much progress has been made?\n
G.T. tried to pose this question to one of the Brassbolts brothers but they were surprisingly reluctant to speak. Instead, young Fizzwuzz spoke up again:\n
"Well. We\'ve come a long way from mechanostriders that\'s for sure!" he laughs, "There\'s still a lot of work to do but we feel that greats strides have been taken and we are close to a breakthrough."', 50083),
(50083, 'He took this opportunity to give G.T. a sneak peak at the marvelous progression away from the mechanostrider which was the Gnomish racer.\n
"Sure, it looks like a water tower crossed with a zeppelin," he said with a nervous smile, "but it has major changes to its basic structure which are going to make it much better."\n
"The stripe will make it go faster!"\n
For the time being, it seems that Goblin technology has little to fear from the Gnomes.', 0);
-- TODO: rest of the pages.
replace into creature_questrelation (id, quest) values (50530, 50315); 
replace into creature_involvedrelation (id, quest) values (50530, 50315);
-- Sheep, Definitely Non-Explosive:
replace into creature_template (entry, patch, display_id1, display_id2, display_id3, display_id4, name, subname, gossip_menu_id, level_min, level_max, health_min, health_max, mana_min, mana_max, armor, faction, npc_flags, speed_walk, speed_run, scale, detection_range, call_for_help_range, leash_range, rank, xp_multiplier, dmg_min, dmg_max, dmg_school, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, unit_class, unit_flags, dynamic_flags, beast_family, trainer_type, trainer_spell, trainer_class, trainer_race, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, type_flags, loot_id, pickpocket_loot_id, skinning_loot_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spell_id1, spell_id2, spell_id3, spell_id4, spell_list_id, pet_spell_list_id, gold_min, gold_max, ai_name, movement_type, inhabit_type, civilian, racial_leader, regeneration, equipment_id, trainer_id, vendor_id, mechanic_immune_mask, school_immune_mask, flags_extra, script_name) values 
(50513, 0, 3886, 0, 0, 0, 'Sheep', 'Definitely Non-Explosive', 0, 30, 30, 1605, 1605, 0, 0, 1200, 35, 0, 1.08, 1.14286, 0, 1, 5, 0, 0, 1, 42, 53, 0, 122, 1, 1000, 2000, 1, 2, 0, 9, 0, 0, 0, 0, 45.144, 62.073, 100, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 100, 0, 0, 10, 'npc_race_sheep');
-- Flying machine GO of Fara Boltbreaker:
replace into gameobject_template (entry, patch, type, displayId, name, faction, flags, size, data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, mingold, maxgold, script_name) values 
(1000050, 0, 1, 330, 'Outstanding Flying Machine BNX-92', 0, 0, 0.8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_flying_machine');
-- Racetrack speed modifiers:
replace into gameobject_template (entry, patch, type, displayId, name, faction, flags, size, data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, mingold, maxgold, script_name) values 
(1000051, 0, 5, 5973, 'Racetrack Speed Bonus', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_speed_up'),
(1000052, 0, 5, 3073, 'Racetrack Freezing Trap', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
-- Update movement type for racetrack sheep:
update creature_template set movement_type = 1 where entry = 50513;
-- Goblin and Gnome car keys:
set @key_spell = 1575;
replace into item_template (entry, patch, class, subclass, name, description, display_id, quality, flags, buy_count, buy_price, sell_price, inventory_type, allowable_class, allowable_race, item_level, required_level, required_skill, required_skill_rank, required_spell, required_honor_rank, required_city_rank, required_reputation_faction, required_reputation_rank, max_count, stackable, container_slots, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3, stat_type4, stat_value4, stat_type5, stat_value5, stat_type6, stat_value6, stat_type7, stat_value7, stat_type8, stat_value8, stat_type9, stat_value9, stat_type10, stat_value10, delay, range_mod, ammo_type, dmg_min1, dmg_max1, dmg_type1, dmg_min2, dmg_max2, dmg_type2, dmg_min3, dmg_max3, dmg_type3, dmg_min4, dmg_max4, dmg_type4, dmg_min5, dmg_max5, dmg_type5, block, armor, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, spellid_3, spelltrigger_3, spellcharges_3, spellppmrate_3, spellcooldown_3, spellcategory_3, spellcategorycooldown_3, spellid_4, spelltrigger_4, spellcharges_4, spellppmrate_4, spellcooldown_4, spellcategory_4, spellcategorycooldown_4, spellid_5, spelltrigger_5, spellcharges_5, spellppmrate_5, spellcooldown_5, spellcategory_5, spellcategorycooldown_5, bonding, page_text, page_language, page_material, start_quest, lock_id, material, sheath, random_property, set_id, max_durability, area_bound, map_bound, duration, bag_family, disenchant_id, food_type, min_money_loot, max_money_loot, extra_flags, other_team_entry, script_name) values 
(50524, 0, 13, 0, 'Gnome Car Key', 'Allows you to control marvelous gnomish invention. Handle with care.', 6710, 1, 64, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @key_spell, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, 'item_miracle_acceptInvite'),
(50525, 0, 13, 0, 'Goblin Car Key', 'You\'ll be driving best GOBLIN car ever, kid! What makes it fast? Explosions of course!', 6711, 1, 64, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @key_spell, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, 'item_miracle_acceptInvite');
-- Second racetrack girl, Dolores:
replace into creature_template (entry, patch, display_id1, display_id2, display_id3, display_id4, name, subname, gossip_menu_id, level_min, level_max, health_min, health_max, mana_min, mana_max, armor, faction, npc_flags, speed_walk, speed_run, scale, detection_range, call_for_help_range, leash_range, rank, xp_multiplier, dmg_min, dmg_max, dmg_school, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, unit_class, unit_flags, dynamic_flags, beast_family, trainer_type, trainer_spell, trainer_class, trainer_race, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, type_flags, loot_id, pickpocket_loot_id, skinning_loot_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spell_id1, spell_id2, spell_id3, spell_id4, spell_list_id, pet_spell_list_id, gold_min, gold_max, ai_name, movement_type, inhabit_type, civilian, racial_leader, regeneration, equipment_id, trainer_id, vendor_id, mechanic_immune_mask, school_immune_mask, flags_extra, script_name) values 
(50533, 0, 3463, 0, 0, 0, 'Dolores', 'Race Starter Girl', 0, 15, 15, 644, 644, 0, 0, 20, 35, 1, 1, 1.14286, 0, 20, 5, 0, 0, 1, 17, 22, 0, 74, 1, 2000, 2000, 1, 768, 0, 0, 0, 0, 0, 0, 24.552, 33.759, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4507, 0, 0, 0, 0, 2, 'npc_dolores');
-- Update Daisy & Dolores gossip_menu_ids:
replace into broadcast_text (ID, MaleText) values ('90250', 'The winner ain\'t the one with the fastest car, it\'s the one who refuses to lose.');
replace into npc_text (ID, BroadcastTextID0) values ('90250', '90250');
replace into broadcast_text (ID, MaleText) values ('90251', 'There\'s no secret. You just press the accelerator to the floor and steer left.');
replace into npc_text (ID, BroadcastTextID0) values ('90251', '90251');
-- Events list for Fara Boltbreaker:
replace into broadcast_text (ID, MaleText) values ('90252', 'Latest news from the best race event ever! Come and get your own magazine!');
replace into npc_text (ID, BroadcastTextID0) values ('90252', '90252');
-- Fara nd quest script:
replace into broadcast_text (ID, MaleText) values ('90253', 'There\'s a fast transport right around the corner as a fastest way to get there. Go ahead and hop in. Yes, it\'s cheap as our famous oil, of course!');
replace into npc_text (ID, BroadcastTextID0) values ('90253', '90253');
replace into broadcast_text (ID, MaleText) values ('90254', 'Buy a flight to the Shimmering Flats in Thousand Needles and talk to someone there interested you are to join.');
replace into npc_text (ID, BroadcastTextID0) values ('90254', '90254');
delete from quest_end_scripts where id=50530;
insert into quest_end_scripts (id, delay, command, datalong, datalong2, datalong3, datalong4, target_param1, target_param2, target_type, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) values (50530, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 90253, 90254, 0, 0, 0, 0, 0, 0, 0, '');
-- // --
delete from creature_ai_scripts where id = 50530;
replace into creature_ai_scripts (id, delay, command, datalong, datalong2, datalong3, datalong4, target_param1, target_param2, target_type, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) values (50530, 300, 0, 1, 0, 0, 0, 0, 0, 0, 0, 90252, 0, 0, 0, 0, 0, 0, 0, 0, 'Fara_peaking.');
update creature_template set ai_name = "EventAI" where entry = 50530;
delete from creature_ai_events where creature_id=50530;
insert into creature_ai_events (id, creature_id, condition_id, event_type, event_inverse_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action1_script, action2_script, action3_script, comment) values (50530, 50530, 0, 1, 0, 100, 1, 0, 0, 240000 , 300000 , 50530, 0, 0, 'fara, speaking.');
-- Driving manuals:
replace into item_template (entry, class, subclass, name, display_id, Quality, Flags, Buy_Count, stackable, bonding, Material, Page_Text) values
(50522, 15, 0, 'Goblin Race Car Manual', 8117, 1, 16384, 1, 1, 1, -1, 50066),
(50523, 15, 0, 'Gnome Race Car Manual', 8117, 1, 16384, 1, 1, 1, -1, 50067);
replace into page_text values
(50066, 'Red button! Starts the engine, of course! Levers for stearing.\n\nObviously don\'t hit any rocks on the way. Hit the landmarks to get points and smear down these gnomes! If you happend to experience explosion of the race car and have no insurance then your belongings will be passed to Kruzak and Goblin Engineering team.\n\nThanks for running the race car durability crash test for us!\n\nYou\'re awesome!', 0),
(50067, 'Red button! Starts the engine, of course! Levers for stearing.\n\nObviously don\'t hit any rocks on the way. Hit the landmarks to get points and smear down these goblins! If you happend to experience explosion of the race car and have no insurance then your belongings will be passed to Garry Crashbash and Gnome Engineering team.\n\nThanks for running the race car durability crash test for us!\n\nYou\'re awesome!', 0);
-- Update Tabitha's DisplayID:
update creature_template set display_id1=3377 where entry = 50033;
-- Fix creature quest involvements:
replace into creature_questrelation (id, quest)    values (50521, 50310); 
replace into creature_involvedrelation (id, quest) values (50521, 50310);
replace into creature_questrelation (id, quest)    values (50521, 50311); 
replace into creature_involvedrelation (id, quest) values (50521, 50311);
replace into creature_questrelation (id, quest)    values (50522, 50313); 
replace into creature_involvedrelation (id, quest) values (50522, 50313);
replace into creature_questrelation (id, quest)    values (50522, 50312); 
replace into creature_involvedrelation (id, quest) values (50522, 50312);
-- Drink vendors:
replace into creature_template (entry, patch, display_id1, display_id2, display_id3, display_id4, name, subname, gossip_menu_id, level_min, level_max, health_min, health_max, mana_min, mana_max, armor, faction, npc_flags, speed_walk, speed_run, scale, detection_range, call_for_help_range, leash_range, rank, xp_multiplier, dmg_min, dmg_max, dmg_school, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, unit_class, unit_flags, dynamic_flags, beast_family, trainer_type, trainer_spell, trainer_class, trainer_race, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, type_flags, loot_id, pickpocket_loot_id, skinning_loot_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spell_id1, spell_id2, spell_id3, spell_id4, spell_list_id, pet_spell_list_id, gold_min, gold_max, ai_name, movement_type, inhabit_type, civilian, racial_leader, regeneration, equipment_id, trainer_id, vendor_id, mechanic_immune_mask, school_immune_mask, flags_extra, script_name) values
(50534, 0, 7195, 0, 0, 0, 'Greenix Oiljuices', 'Exotic Drinks & Co', 0, 30, 30, 1605, 1605, 0, 0, 1200, 35, 4, 1.08, 1.14286, 0, 20, 5, 0, 0, 1, 42, 53, 0, 122, 1, 1000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 45.144, 62.073, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 100, 0, 0, 10, ''),
(50535, 0, 5433, 0, 0, 0, 'Mek Sparkshake', 'Exotic Drinks & Co', 0, 30, 30, 1605, 1605, 0, 0, 1200, 35, 4, 1.08, 1.14286, 0, 20, 5, 0, 0, 1, 42, 53, 0, 122, 1, 1000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 45.144, 62.073, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 100, 0, 0, 10, '');
update item_template set buy_price = 5, sell_price = 1 where entry = 5265;
replace into npc_vendor_template (entry, item, maxcount, incrtime) values
(50534, 23176, 20, 21600),
(50534, 19299, 0, 0),
(50534, 23161, 0, 0),
(50534, 5265, 0, 0),
(50534, 18300, 0, 0),
(50534, 4600, 0, 0),
(50534, 17405, 0, 0),
(50534, 19300, 0 ,0);
update creature_template set vendor_id = 50534 where entry in (50534, 50535);
-- Invisible landing NPC: (2418 -- blue totem)
replace into creature_template (entry, patch, display_id1, display_id2, display_id3, display_id4, name, subname, gossip_menu_id, level_min, level_max, health_min, health_max, mana_min, mana_max, armor, faction, npc_flags, speed_walk, speed_run, scale, detection_range, call_for_help_range, leash_range, rank, xp_multiplier, dmg_min, dmg_max, dmg_school, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, unit_class, unit_flags, dynamic_flags, beast_family, trainer_type, trainer_spell, trainer_class, trainer_race, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, type_flags, loot_id, pickpocket_loot_id, skinning_loot_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spell_id1, spell_id2, spell_id3, spell_id4, spell_list_id, pet_spell_list_id, gold_min, gold_max, ai_name, movement_type, inhabit_type, civilian, racial_leader, regeneration, equipment_id, trainer_id, vendor_id, mechanic_immune_mask, school_immune_mask, flags_extra, script_name) values 
(50537, 0, 1848, 0, 0, 0, 'Kogram Redcrag', 'Air Traffic Controller', 90200, 30, 30, 1605, 1605, 0, 0, 1200, 35, 2, 1.08, 1.14286, 0, 20, 5, 0, 0, 1, 42, 53, 0, 122, 1, 1000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 45.144, 62.073, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 4507, 0, 100, 0, 0, 10, 'npc_landing_site');
delete from creature where id = 50537;
replace into creature (id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, deathstate, movementtype, spawnflags, visibilitymod, patch_min, patch_max) values (50537, 1, 0, 0, -6103.78, -3873.83, -58.7563, 2.26232, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10);
-- Place creatures in the world:
delete from creature where id in (50537, 50534, 50535, 50533, 50530, 50521, 50522, 4507);
replace into creature (id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, deathstate, movementtype, spawnflags, visibilitymod, patch_min, patch_max) values (4507, 1, 0, 4507, -6197.65, -3901.92, -60.2418, 0.0178976, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10);
replace into creature (id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, deathstate, movementtype, spawnflags, visibilitymod, patch_min, patch_max) values (50521, 1, 0, 0, -6218.1, -3954.83, -58.2914, 0.479733, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10);
replace into creature (id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, deathstate, movementtype, spawnflags, visibilitymod, patch_min, patch_max) values (50522, 1, 0, 0, -6228.78, -3869.77, -57.5069, 0.164787, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10);
replace into creature (id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, deathstate, movementtype, spawnflags, visibilitymod, patch_min, patch_max) values (50530, 0, 0, 0, -8845.51, 595.031, 93.3977, 2.4987, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10);
replace into creature (id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, deathstate, movementtype, spawnflags, visibilitymod, patch_min, patch_max) values (50533, 1, 0, 4507, -6254.59, -4011.57, -58.7491, 6.15185, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10);
replace into creature (id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, deathstate, movementtype, spawnflags, visibilitymod, patch_min, patch_max) values (50534, 1, 0, 0, -6151.3, -3925.89, -58.7505, 1.57775, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10);
replace into creature (id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, deathstate, movementtype, spawnflags, visibilitymod, patch_min, patch_max) values (50535, 1, 0, 0, -6191.22, -3876.85, -58.7517, 4.66123, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10);
replace into creature (id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, deathstate, movementtype, spawnflags, visibilitymod, patch_min, patch_max) values (50537, 1, 0, 0, -6105.78, -3875.83, -58.7563, 2.26232, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10);
