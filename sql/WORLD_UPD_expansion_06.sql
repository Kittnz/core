update item_template set inventory_type = 23 where entry = 80966;

UPDATE `item_template` SET `spellcategorycooldown_1`='120000' WHERE (`entry`='51861') AND (`patch`='0');
UPDATE `item_template` SET `spellcooldown_1`='120000' WHERE (`entry`='51861') AND (`patch`='0');
UPDATE `item_template` SET `spellcategory_1`='4' WHERE (`entry`='51861') AND (`patch`='0');

SET @gossip_menu_id = 59140;
SET @magic_number = 80460; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (ID, MaleText) values (@magic_number, 'I wish I knew an older, wiser tree. Trees are supposed to have beautiful foliage, but mine is wilted and dying.\n\nAm I going to survive?	');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

UPDATE `quest_template` SET `ObjectiveText3`='Throw snowball at Skrimmshaw' WHERE `entry`=50321;