update creature_template set rank = 0 where entry = 91969;
update creature_template set rank = 0 where entry = 91970;
update creature_template set rank = 0 where entry = 91971;
update creature_template set display_id1 = 17875, display_id2 = 0, display_id3 = 0 where entry = 91975;
update creature_template set npc_flags = 2 where entry = 91980;
update creature_template set npc_flags = 2 where entry = 91981;
update creature_template set npc_flags = 2 where entry = 91978;
update creature_template set npc_flags = 2 where entry = 91979;
update creature_template set unit_flags = 0, faction = 16 where entry = 91958;

set @equip_template = 55158; set @weapon_1 = 2092; set @weapon_2 = 0; set @creature = 91773;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0); 
update creature_template set equipment_id = @equip_template where entry = @creature;

