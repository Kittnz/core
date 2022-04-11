-- NPC for time setting restored to DB:
delete from creature_template where entry = 10;
replace into creature_template (entry, name, display_id1, unit_flags, flags_extra) values (10, 'invisible_npc-controller', 328, 33554434, 128);
