delete from event_scripts where id in (6607, 12731, 12732, 12733, 12734, 12735, 12736, 12737, 12738, 12739, 12740, 12741, 12742, 33820, 33821, 33822, 33823, 33824, 33825, 33826, 33827, 33828, 33829, 33830, 33831);

delete from creature_ai_events where id in (2200011, 2200012, 2200013, 1487102);
delete from creature_ai_scripts where id in (3001531, 3001532, 3001533, 16777215);

update creature_template set faction = 35 where entry in (60348, 60349, 60350, 60351, 60352, 60353);

update creature set wander_distance = 0 where guid in (2571582, 2571583, 2571584, 2571585);

update creature_template set script_name = '' where entry = 9563;

delete from quest_template where entry = 787;
delete from creature_questrelation where quest = 787;
delete from creature_involvedrelation where quest = 787;

update creature_template_addon set mount = 0 where entry = 60765;

delete from spell_chain where spell_id in (45961, 3036, 3037, 3038, 3668);

update gameobject set spawntimesecsmin = 180, spawntimesecsmax = 180, spawn_flags = 0, animprogress = 100 where guid = 20326;

delete from spell_threat where entry in (19850, 19852, 19853, 19854, 25290, 25918, 25918);

replace into conditions (condition_entry, type, value1, value2, value3, value4, flags) values (16053, 41, 10, 2, 0, 0, 0);
																					  
delete from spell_script_target where targetentry = 80829;                            
																					  
replace into conditions (condition_entry, type, value1, value2, value3, value4, flags) values (392, 7, 202, 125, 0, 0, 0);
replace into conditions (condition_entry, type, value1, value2, value3, value4, flags) values (393, 7, 202, 200, 0, 0, 0);

replace into gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state, spawn_flags, visibility_mod) values (32373, 90566, 0, -4861.05, 740.452, 249.389, 1.49226, 0, 0, 0.678801, 0.734323, 180, 180, 100, 1, 0, 0);
