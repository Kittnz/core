-- Steamwheedle Beach Experience teleportation stone, limited edition.
replace into item_template values
 ('81140', '0', '4', '0', 'Steamwheedle Limited Edition Wormhole', 'Takes you to the Steamwheedle Beach Experience. Notice: Upon use, the user consents that The Steamwheedle Cartel is not responsible for device malfunctions.', '31199', '1', '0', '1', '0', '0', '12', '-1', '-1', '1',
 '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '31726', '0', '0', '0', '-1', '10', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', 'item_cenarion_hold_teleport');
 
UPDATE `item_template` SET `duration`='604800' WHERE (`entry`='81140') AND (`patch`='0');
update item_template set display_id = 18466 where entry = 81113;
update item_template set display_id = 28577 where entry = 80544;
 
 
replace into item_template values
 ('80180', '0', '4', '4', 'Crown of the Damned', 'Abandon all hope...', '40192', '3', '0', '1', '0', '0', '1', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('80181', '0', '4', '4', 'Bulwark of the Damned', 'Our fate cannot be taken from us...', '50145', '3', '0', '1', '0', '0', '5', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('80182', '0', '4', '4', 'Sabatons of the Damned', 'I am the way into eternal pain...', '50146', '3', '0', '1', '0', '0', '8', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('80183', '0', '4', '4', 'Chausses of the Damned', 'These dwell among the blackest souls...', '50147', '3', '0', '1', '0', '0', '7', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('80184', '0', '4', '4', 'Girdle of the Damned', 'Let us descend now into the blind world...', '50148', '3', '0', '1', '0', '0', '6', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('80185', '0', '4', '4', 'Grasps of the Damned', 'Here pity only lives when it is dead...', '50149', '3', '0', '1', '0', '0', '10', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('80186', '0', '4', '4', 'Epaulets of the Damned', 'We were men once...', '50156', '3', '0', '1', '0', '0', '3', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
REPLACE INTO `item_template` VALUES (80187, 3, 4, 0, 'Tabard of the Immortal Guardian', 'How do you spot a hardcore player in a crowd? You don\'t have to, they\'ll make sure you know it.', 35929, 1, 0, 1, 0, 0, 19, -1, -1, 1, 60, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);
-- UPDATE `item_template` SET `required_city_rank`='52' WHERE (`entry`='80187') AND (`patch`='3');

REPLACE INTO `item_template` VALUES (80188, 0, 13, 0, 'Glyph of Mortality', 'This item is a reminder that nothing lasts forever.', 7694, 3, 0, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 1, NULL);

-- Human Male
UPDATE `creature_model_info` SET `bounding_radius`=0.306, `combat_reach`=1.5 WHERE `display_id`=49;

-- Human Female
UPDATE `creature_model_info` SET `bounding_radius`=0.208, `combat_reach`=1.5 WHERE `display_id`=50;

-- Orc Male
UPDATE `creature_model_info` SET `bounding_radius`=0.372, `combat_reach`=1.5 WHERE `display_id`=51;

-- Orc Female
UPDATE `creature_model_info` SET `bounding_radius`=0.236, `combat_reach`=1.5 WHERE `display_id`=52;

-- Dwarf Male
UPDATE `creature_model_info` SET `bounding_radius`=0.347, `combat_reach`=1.5 WHERE `display_id`=53;

-- Dwarf Female
UPDATE `creature_model_info` SET `bounding_radius`=0.347, `combat_reach`=1.5 WHERE `display_id`=54;

-- Night Elf Male
UPDATE `creature_model_info` SET `bounding_radius`=0.389, `combat_reach`=1.5 WHERE `display_id`=55;

-- Night Elf Female
UPDATE `creature_model_info` SET `bounding_radius`=0.306, `combat_reach`=1.5 WHERE `display_id`=56;

-- Undead Male
UPDATE `creature_model_info` SET `bounding_radius`=0.383, `combat_reach`=1.5 WHERE `display_id`=57;

-- Undead Female
UPDATE `creature_model_info` SET `bounding_radius`=0.383, `combat_reach`=1.5 WHERE `display_id`=58;

-- Tauren Male
UPDATE `creature_model_info` SET `bounding_radius`=0.9747, `combat_reach`=4.05 WHERE `display_id`=59;

-- Tauren Female
UPDATE `creature_model_info` SET `bounding_radius`=0.8725, `combat_reach`=3.75 WHERE `display_id`=60;

-- Gnome Male
UPDATE `creature_model_info` SET `bounding_radius`=0.3519, `combat_reach`=1.725 WHERE `display_id`=1563;

-- Gnome Female
UPDATE `creature_model_info` SET `bounding_radius`=0.3519, `combat_reach`=1.725 WHERE `display_id`=1564;

-- Troll Male
UPDATE `creature_model_info` SET `bounding_radius`=0.306, `combat_reach`=1.5 WHERE `display_id`=1478;

-- Troll Female
UPDATE `creature_model_info` SET `bounding_radius`=0.306, `combat_reach`=1.5 WHERE `display_id`=1479;
