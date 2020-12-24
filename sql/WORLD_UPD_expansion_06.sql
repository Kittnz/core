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

-- Mudsprocket NPCs:

REPLACE INTO `creature_template` VALUES (80930, 0, 7202, 0, 0, 0, 'Axle', 'Innkeeper', 2890, 30, 39, 1605, 1605, 0, 0, 1200, 474, 135, 1, 1.14286, 0, 20, 5, 0, 0, 1, 42, 53, 0, 122, 1, 2000, 2000, 1, 4096, 0, 0, 0, 0, 0, 0, 45.144, 62.073, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 7733, 0, 0, 0, 0, 524298, '');

REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80930, 159, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80930, 1179, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80930, 1205, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80930, 1645, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80930, 1708, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80930, 4536, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80930, 4537, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80930, 4538, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80930, 4539, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80930, 4602, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80930, 8766, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80930, 8953, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80930, 23002, 0, 0, 0, 0);

REPLACE INTO `creature_template` VALUES (80931, 6, 7909, 0, 0, 0, 'Krixil Slogswitch', 'Food & Drink', 0, 30, 30, 3800, 3800, 0, 0, 1200, 35, 3, 1, 1.14286, 0, 20, 5, 0, 0, 1, 198, 240, 0, 122, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 140.87, 196.385, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 3, 0, 0, 3, 0, 0, 0, 0, 0, 524290, '');

REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80931, 117, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80931, 159, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80931, 414, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80931, 422, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80931, 1179, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80931, 1205, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80931, 1645, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80931, 1707, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80931, 1708, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80931, 2070, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80931, 2287, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80931, 3770, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80931, 3771, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80931, 3927, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80931, 4540, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80931, 4541, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80931, 4542, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80931, 4544, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80931, 4599, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80931, 4601, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80931, 8766, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80931, 8932, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80931, 8950, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80931, 8952, 0, 0, 0, 0);

REPLACE INTO `creature_template` VALUES (80932, 0, 7337, 0, 0, 0, 'Drazzit Dripvalve', NULL, 922, 40, 40, 2471, 2471, 0, 0, 1890, 474, 7, 1, 1.14286, 0, 20, 5, 0, 0, 1, 61, 78, 0, 156, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 56.672, 77.924, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 7564, 0, 0, 0, 0, 10, '');

REPLACE INTO `creature_template` VALUES (80933, 0, 7179, 0, 0, 0, 'Gizzix Grimegurgle', NULL, 922, 40, 40, 2471, 2471, 0, 0, 1890, 474, 7, 1, 1.14286, 0, 20, 5, 0, 0, 1, 61, 78, 0, 156, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 56.672, 77.924, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 7564, 0, 0, 0, 0, 10, '');

REPLACE INTO `creature_template` VALUES (80934, 0, 7211, 0, 0, 0, 'Razbo Rustgear', 'Blacksmithing Supplies', 0, 40, 40, 3900, 3900, 0, 0, 560, 474, 16391, 1, 1.14286, 0, 20, 5, 0, 0, 1, 61, 78, 0, 156, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 56.672, 77.924, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 5411, 0, 0, 0, 0, 10, '');

update creature_template set faction =  474 where entry = 80934;

REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80934, 2880, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80934, 2901, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80934, 3466, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80934, 3857, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80934, 5956, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80934, 18567, 0, 0, 0, 0);

-- Guild Tabard new spell:
-- update item_template set spellid_1 = 46010 where entry = 5976;

 should sheathe on your side (3)
 should have a displayID of 

update item_template set sheath = 3 where entry = 80775;
update item_template set display_id = 29916 where entry = 80627;

update gameobject_template set size = 1.2 where entry = 3000222;