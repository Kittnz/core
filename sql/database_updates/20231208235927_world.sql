	 	
UPDATE `taxi_nodes` SET `mount_creature_id2` = 803 WHERE `id` = 184;
UPDATE `creature_template` SET `entry` = 803 WHERE `entry` = 80144;
UPDATE `creature` SET `id` = 803 WHERE `id` = 80144;

update item_template set display_id = 68059, spellid_1 = 45076, subclass = 5, description = '' where entry = 41076; -- Aspect of Seradane
update item_template set spellid_1 = 45078, spellcooldown_1 = 900000, description = '' where entry = 41060; -- Refined Plague Strain