update item_template set description = 'Once wielded by a hero of the Second War.', stat_value1 = 10, stat_type1 = 7, spellid_1 = 45420, spelltrigger_1 = 1 where entry = 60392; -- Sword of Laneron
update item_template set description = 'Belonged to the maiden of the Light.', stat_value1 = 0, spellid_1 = 9398, spelltrigger_1 = 1 where entry = 60393; -- Shield of Mathela
update item_template set name = 'Pierce''s Instructions', description = 'Instructions on how to recreate an old spell of blood unlocking.' where entry = 60391; -- Pierces Instructions

update item_template set spellid_1 = 56532 where entry = 83553; -- Unyielding Gust
update item_template set spellid_1 = 56533 where entry = 83552; -- Unmelting Ice
update item_template set sheath = 2 where entry = 50429; -- Spear of the Endless Hunt	
UPDATE `item_template` SET `bonding` = 0 WHERE `entry` = 23122;
UPDATE `item_template` SET `bonding` = 0 WHERE `entry` = 23123;
UPDATE `item_template` SET display_id = 27227 WHERE `entry` = 61408;

UPDATE item_template SET Name = 'Staff of Insom''ni' WHERE entry = 83513;

UPDATE item_template SET Name = 'Steel Plate Helm' WHERE entry = 7922;
