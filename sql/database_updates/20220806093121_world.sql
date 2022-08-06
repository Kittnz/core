-- Delete deprecated artcit fox:
delete from creature_template where entry = 80253;
delete from creature_loot_template where entry = 80253;

-- Fixed shop amani bears:
update mount_spells set spellid = 46525 where itemid = 81153; -- Purple
update mount_spells set spellid = 46524 where itemid = 81154; -- Black
update mount_spells set spellid = 46526 where itemid = 81155; -- Red

-- Fixed female trolls custom character skins:
update custom_character_skins set skin_female = 13 where token_id = 51011; 
update custom_character_skins set skin_female = 19 where token_id = 50210; 
update custom_character_skins set skin_female = 14 where token_id = 50225; 