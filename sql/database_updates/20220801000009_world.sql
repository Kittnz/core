-- Fix Spirit Worg mount:
update creature_template set scale = 1, display_id1 = 18920 where entry = 16000;
replace into creature_display_info_addon (display_id) values (18920);

