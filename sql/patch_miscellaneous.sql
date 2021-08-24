-- Grug'thok the Seer
update creature_tempalte set display_id1 = 11556, scale = 1.3 where entry = 91308;
-- Mallon the Moontouched
update creature_tempalte set display_id1 = 12237 where entry = 91307;
-- Xalvic Blackclaw
update creature_tempalte set display_id1 = 11335, scale = 0.9 where entry = 91306;
-- Ghoststalker
update creature_tempalte set scale = 1.3, level_min = 21, level_max = 21 where entry = 91355;
-- Eveningstar Gloves
update item_template display_id = 5435 set where entry = 81378;	
-- Arcane Missile's missing fix:
replace into spell_template set attributesex3 = 131072 where entry = 5143 or entry = 5144 or entry = 5145 or entry = 8416 or entry = 8417 or entry = 10211 or entry = 10212 or entry = 25345; 
-- Harlus Ashbuckle, remove civilian flag:
update creature_template set flags_extra = 458762 where entry = 52119;