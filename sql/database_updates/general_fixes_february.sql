-- Structure change for phasing:
alter table creature_template
	add column if not exists phase_quest_action int(1) unsigned not null default '1' after phase_quest_id;
alter table gameobject_template
	add column if not exists phase_quest_action int(1) unsigned not null default '1' after phase_quest_id;	
-- Update for a quest:
delete from creature where id in (65142, 65138);
replace into creature (id, id2, id3, id4, map, display_id, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, mana_percent, movement_type, spawn_flags, visibility_mod) values (65142, 0, 0, 0, 0, 0, 0, 13.8748, 176.24, 45.3918, 0.520082, 25, 25, 0, 100, 100, 0, 0, 0);
replace into creature (id, id2, id3, id4, map, display_id, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, mana_percent, movement_type, spawn_flags, visibility_mod) values (65138, 0, 0, 0, 0, 0, 14730, -30.772, -914.034, 54.9199, 5.04637, 25, 25, 0, 100, 100, 0, 0, 0);
-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/953
update item_template set display_id = 28206 where entry = 83257;
-- Quest The Murloc Menace change quest level to 44:
update quest_template set questlevel = 44, minlevel = 40 where entry = 40078;
-- misc.
update creature_template set health_min = 18593, health_max = 19173 where entry = 91918;
update creature_template set health_min = 21593, health_max = 22173 where entry = 92935;
update creature_template set display_id1 = 4943 where entry = 60649;
-- Zo'hjik update
REPLACE INTO `creature_template` VALUES (65138, 14773, 0, 0, 0, 'Zo’hjik', NULL, 0, 60, 60, 61050, 61050, 0, 36510, 18000, 1495, 0, 1, 1.14286, 0, 20, 5, 0, 1, 1, 448, 491, 0, 272, 1, 2000, 2000, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 14730, 0, 0, 0, 0, 0, 65007, 0, '');
-- Quest "Tales of the Past" text updated:
update quest_template set details = 'Sorrowguard Keep once held the Orcish Horde at bay for two weeks. Day after day, orcs attacked these walls and were repelled by brave defenders of the Kingdom of Azeroth. They battled from one end of the swamp all the way back to these very walls.\n\nMy mentor was one such hero who took the call and met the horde within these lands. As much of a hero he was, he gave his life so others had the chance to survive. When I was being trained, he carried a tome of great holy power from the Abbey of Northshire.\n\nI still believe the tome to be present here in the swamp, though in what condition, or where, I cannot be certain. I do know it lies west of Stonard, that should certainly narrow down the area if you wish to search in the name of the Light.' where entry = 40095;
-- Drop chance the item Sawtooth leather raised to 40%:
update creature_loot_template set chanceorquestchance = -40 where entry = 1084;