update creature_template set display_id1 = 3845 where entry = 92201;
update creature_template set display_id1 = 4010 where entry = 60488;
update creature_template set display_id1 = 2613 where entry = 91982;
update creature_template set subname = '' where entry = 60497;
update creature_template set npc_flags = 16391 + 2 where entry = 4556;
update creature_template set npc_flags = 135 + 2 where entry = 6739;
update gameobject set spawntimesecsmin = 120, spawntimesecsmax = 120 where id = 2010816;
delete from playercreateinfo_spell where class = 3 and race = 5 and spell = 26290;

