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
update creature_template set display_id1 = 4943 where entry = 60649;s