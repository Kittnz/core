-- Reserved.

update item_template set disenchant_id = 1 where entry = 51856;
update item_template set sheath = 1 where entry = 80105;
update item_template set inventory_type = 26 where entry = 51844;
update item_template set name = 'Serpent\'s Bite' where entry = 80807;
update item_template set bonding = 2 where entry in (80802, 80803);
update creature_template set faction = 73, scale = 1.1 where entry = 80936;

-- TODO: Needs weapon changed to 81057 | Needs 48 hour respawn timer

delete from quest_template where entry = 80122;

update creature_loot_template set chanceorquestchance = 0.01 where entry = 6206 and item = 80798;

delete from playercreateinfo_spell where race = 9 and class = 1 and spell = 198;
delete from playercreateinfo_spell where race = 9 and class = 1 and spell = 199;
insert into playercreateinfo_spell values
(9, 1, 198, 0, 5875, 'One-Handed Maces'),
(9, 1, 199, 0, 5875, 'Two-Handed Maces');

replace into creature_template values (80140, 0, 18480, 0, 0, 0, 'Illidari Dragonhawk', NULL, 0, 5, 5, 64, 64, 0, 0, 20, 35, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 768, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2, '');
replace into creature_template values (80141, 0, 18491, 0, 0, 0, 'Armored Frostmane Riding Bear', NULL, 0, 5, 5, 64, 64, 0, 0, 20, 35, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 768, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2, '');
replace into creature_template values (80142, 0, 18492, 0, 0, 0, 'Blizzcon Riding Bear', NULL, 0, 5, 5, 64, 64, 0, 0, 20, 35, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 768, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2, '');
replace into creature_template values (80143, 0, 18487, 0, 0, 0, 'Armored Amani Riding Bear', NULL, 0, 5, 5, 64, 64, 0, 0, 20, 35, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 768, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2, '');
replace into creature_template values (80144, 0, 18476, 0, 0, 0, 'Quel\'dorei Dragonhawk', NULL, 0, 5, 5, 64, 64, 0, 0, 20, 35, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 768, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2, '');
replace into creature_template values (80145, 0, 18471, 0, 0, 0, 'Dragonhawk' , NULL, 0, 5, 5, 64, 64, 0, 0, 20, 35, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 768, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2, '');
replace into creature_template values (80146, 0, 18435, 0, 0, 0, 'Riding Ice Saber', NULL, 0, 5, 5, 64, 64, 0, 0, 20, 35, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 768, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2, '');
replace into creature_template values (80147, 0, 18436, 0, 0, 0, 'Riding Aqua Saber', NULL, 0, 5, 5, 64, 64, 0, 0, 20, 35, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 768, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2, '');
replace into creature_template values (80148, 0, 18341, 0, 0, 0, 'Black Bear Cub', NULL, 0, 5, 5, 64, 64, 0, 0, 20, 35, 0, 1, 1.14286, 0.4, 20, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 768, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2, '');
replace into creature_template values (80149, 0, 18340, 0, 0, 0, 'Brown Bear Cub', NULL, 0, 5, 5, 64, 64, 0, 0, 20, 35, 0, 1, 1.14286, 0.4, 20, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 768, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2, '');
replace into creature_template values (80150, 0, 18351, 0, 0, 0, 'White Bear Cub', NULL, 0, 5, 5, 64, 64, 0, 0, 20, 35, 0, 1, 1.14286, 0.4, 20, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 768, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2, '');
replace into creature_template values (80151, 0, 18352, 0, 0, 0, 'Gray Bear Cub', NULL, 0, 5, 5, 64, 64, 0, 0, 20, 35, 0, 1, 1.14286, 0.4, 20, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 768, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2, '');
replace into creature_template values (80152, 0, 18493, 0, 0, 0, 'Black Fox Kit', NULL, 0, 5, 5, 64, 64, 0, 0, 20, 35, 0, 1, 1.14286, 0.4, 20, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 768, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2, '');
replace into creature_template values (80153, 0, 18276, 0, 0, 0, 'Riding Chromatic Drake', NULL, 0, 5, 5, 64, 64, 0, 0, 20, 35, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 768, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2, '');
replace into creature_template values (80154, 0, 18277, 0, 0, 0, 'Riding Black Drake', NULL, 0, 5, 5, 64, 64, 0, 0, 20, 35, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 768, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2, '');
replace into creature_template values (80155, 0, 18278, 0, 0, 0, 'Riding Blue Drake', NULL, 0, 5, 5, 64, 64, 0, 0, 20, 35, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 768, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2, '');
replace into creature_template values (80156, 0, 18279, 0, 0, 0, 'Riding Bronze Drake', NULL, 0, 5, 5, 64, 64, 0, 0, 20, 35, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 768, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2, '');
replace into creature_template values (80157, 0, 18280, 0, 0, 0, 'Riding Green Drake', NULL, 0, 5, 5, 64, 64, 0, 0, 20, 35, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 768, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2, '');
replace into creature_template values (80158, 0, 18281, 0, 0, 0, 'Riding Red Drake', NULL, 0, 5, 5, 64, 64, 0, 0, 20, 35, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 768, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2, '');
replace into creature_template values (80159, 0, 18282, 0, 0, 0, 'Riding White Drake', NULL, 0, 5, 5, 64, 64, 0, 0, 20, 35, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 768, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2, '');
replace into creature_template values (80160, 0, 18286, 0, 0, 0, 'Riding Nexus Drake', NULL, 0, 5, 5, 64, 64, 0, 0, 20, 35, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 768, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2, '');
replace into creature_template values (80161, 0, 18288, 0, 0, 0, 'Riding Void Drake', NULL, 0, 5, 5, 64, 64, 0, 0, 20, 35, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 768, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2, '');
replace into creature_template values (80162, 0, 18309, 0, 0, 0, 'Riding Infinite Drake', NULL, 0, 5, 5, 64, 64, 0, 0, 20, 35, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 768, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2, '');
replace into creature_template values (80163, 0, 18271, 0, 0, 0, 'Riding Gryphon', NULL, 0, 5, 5, 64, 64, 0, 0, 20, 35, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 768, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2, '');
replace into creature_template values (80164, 0, 18291,  0, 0, 0, 'Riding Armored Gryphon', NULL, 0, 5, 5, 64, 64, 0, 0, 20, 35, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 768, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2, '');
replace into creature_template values (80165, 0, 18299, 0, 0, 0, 'Riding Cenarion Hippogryph', NULL, 0, 5, 5, 64, 64, 0, 0, 20, 35, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 768, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2, '');
replace into creature_template values (80166, 0, 18301, 0, 0, 0, 'Riding Wyvern', NULL, 0, 5, 5, 64, 64, 0, 0, 20, 35, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 768, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2, '');
replace into creature_template values (80167, 0, 18304, 0, 0, 0, 'Riding Armored Wyvern', NULL, 0, 5, 5, 64, 64, 0, 0, 20, 35, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 768, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2, '');
replace into creature_template values (80168, 0, 18228, 0, 0, 0, 'Dark Rider\'s Steed', NULL, 0, 5, 5, 64, 64, 0, 0, 20, 35, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 768, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2, '');


update item_template set display_id = 6947 where entry = 80218;
update item_template set display_id = 60692, name = 'Quel\'dorei Defender\'s Deflector' where entry = 80535;
update item_template set class = 4, subclass = 6, inventory_type = 14 where entry = 80643;

UPDATE `item_template` SET `dmg_type1`='5' WHERE (`entry`='80644') AND (`patch`='0');

delete from npc_vendor where item = 23002;

-- Defias Mask
replace into item_template values
 ('81007', '0', '4', '2', 'Enchanted Defias Mask', '', '15308', '3', '0', '1', '653', '653', '1', '1032', '-1', '21',
 '16', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '40', '0', '0', '0',
 '0', '0', '0', '17746', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '2', '0', '0', '0', '0', '0', '7', '1', '0', '0', '50', '0', '0', '0', '0', '41', '0', '0', '0',
 '0', '1', NULL);
 
replace into item_template values
 ('23556', '0', '2', '8', 'Battleworn Bastard Sword', '', '1542', '1', '0', '1', '1', '1', '17', '-1', '-1', '1',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2900', '0',
 '0', '3', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '25', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
delete from playercreateinfo_item where race = 10 and class = 2; 
insert `playercreateinfo_item` values 

-- Paladin

(10, 2, 24146, 1),
(10, 2, 24145, 1),
(10, 2, 24143, 1),
(10, 2, 80250, 2),
(10, 2, 80251, 4),
(10, 2, 23556, 1),
(10, 2, 6948, 1);


replace into broadcast_text (ID, MaleText) values (100202, 'What can I do for you? I am quite busy right now.');
replace into npc_text (ID, BroadcastTextID0) values (100202, 100202);

replace into broadcast_text (ID, MaleText) values (100203, 'My unicorns are for sale only to the elves of the Silvermoon Remnants and to their exalted allies.');
replace into npc_text (ID, BroadcastTextID0) values (100203, 100203);

update creature_template set script_name = 'npc_vanira_unicorn_vendor' where entry = 80453;

update item_template set description = 'Historians claim that these incorporeal beasts were created when Draenor exploded, unleashing energies that warped the world\'s flora and fauna.' where entry = 80430;

update item_template set required_reputation_faction = 529, required_reputation_rank = 7  where entry = 22999;

REPLACE INTO `creature_template` VALUES (80965, 0, 5379, 0, 0, 0, 'Lake Toad', '', 0, 21, 22, 527, 570, 0, 0, 900, 18, 0, 0.95, 1.14286, 0, 20, 5, 0, 0, 1, 31, 39, 0, 98, 1, 2000, 2000, 1, 32768, 0, 0, 0, 0, 0, 0, 35.6224, 48.9808, 100, 7, 0, 544, 0, 0, 0, 0, 0, 0, 0, 0, 7159, 7992, 0, 0, 5440, 0, 28, 41, '', 1, 3, 0, 0, 3, 544, 0, 0, 0, 0, 0, '');

update creature_template set scale = 2 where entry = 80965;

update creature_template set loot_id = 80965 where entry = 80965; 
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80965, 80421, -100, 0, 1, 1);

replace into item_template values
 ('81090', '0', '15', '0', 'Dark Rider\'s Steed', '', '32831', '4', '0', '1', '30432', '30432', '0', '-1', '-1', '0',
 '0', '762', '150', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '46224', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 update item_template set name = 'Alah\'Thalas Library Book', quality = 1, buy_price = 13000, sell_price = 13000 where entry = 12860;

replace into creature_template values
(80966, 0, 18216, 0, 0, 0, 'Shanala Sunsorrow', 'Librarian', 0, 3, 3, 219, 219, 0, 0, 852, 371, 4, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 2, '');

REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES 
(80966, 12860, 0, 0, 0, 0);

delete from creature_loot_template where item = 81004 and entry = 15340;

update item_template set sheath = 1 where entry = 80105;
update item_template set inventory_type = 5 where entry = 80803;

delete from playercreateinfo_item where race = 9 and class = 3; 
insert `playercreateinfo_item` values 

-- Goblin Hunter

(9, 3, 80168, 4),
(9, 3, 129, 1),
(9, 3, 147, 1),
(9, 3, 148, 1),
(9, 3, 80167, 2),
(9, 3, 2092, 1),
(9, 3, 2102, 1),
(9, 3, 2504, 1),
(9, 3, 2512, 200),
(9, 3, 6948, 1);

update item_template set disenchant_id = 3 where entry = 2867;

update item_template set sheath = 1, disenchant_id = 41 where entry = 51849;
update item_template set disenchant_id = 41 where entry = 51848;

delete from playercreateinfo_spell where race = 10 and class = 2 and spell = 202;
insert into playercreateinfo_spell values
(10, 2, 202, 0, 5875, 'Two-Handed Swords');

UPDATE `quest_template` SET `Objectives`='Seek out this High Elven district in Stormwind, look for a blue banner in the outer section of the Dwarven district. Speak to their representative.' WHERE (`entry`='80220') AND (`patch`='0');
UPDATE `quest_template` SET `Details`='You’re a $R right?\n\nYou aren’t the first I\'ve seen around here recently. A lot of your people have arrived and have settled up in Stormwind.\n\nIn the outer section of the Dwarven district bordering the canal, there is an entrance with the banner of your people, go there and you can meet them should you wish to greet your own folk.' WHERE (`entry`='80220') AND (`patch`='0');

REPLACE INTO `item_template` VALUES (81091, 10, 15, 0, 'Big Blizzard Bear', 'Just remeber to have your special little passanger straped in tightly before running off at top speed on an adventure.', 60856, 4, 64, 1, 0, 0, 0, -1, 32767, 20, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46203, 0, 0, 0, 0, 330, 3000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

REPLACE INTO `creature_template` values 
(80967, 0, 18135, 0, 0, 0, 'Lord Darkhallow', 'Scourge Quartermaster', 0, 11, 11, 456, 456, 0, 0, 20, 21, 16388, 1.1, 1.14286, 0, 20, 5, 0, 0, 1, 12, 14, 0, 64, 1, 2000, 2090, 1, 4864, 0, 0, 0, 0, 0, 0, 18.392, 25.289, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 524298, ''),
(80968, 0, 18053, 0, 0, 0, 'Daemona Des', 'Burning Legion Quartermaster', 0, 11, 11, 456, 456, 0, 0, 20, 90, 16388, 1.1, 1.14286, 0, 20, 5, 0, 0, 1, 12, 14, 0, 64, 1, 2000, 2090, 1, 4864, 0, 0, 0, 0, 0, 0, 18.392, 25.289, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 524298, '');

update item_template set name = 'Quel\'dorei Assassin\'s Kris' where entry = 80528;
update item_template set display_id = 32687 where entry = 80638;
update item_template set inventory_type = 14 where entry = 80543;

update item_template set required_reputation_faction = 269, required_reputation_rank = 6 where entry = 80521;
update item_template set required_reputation_faction = 269, required_reputation_rank = 6 where entry = 80520;

SET @gossip_menu_id = 59145;
SET @magic_number = 80925; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (ID, MaleText) values (@magic_number, 'Why hello there, $c, is there anything I could do for you?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

-- Disable Vault quests:

update quest_template set method = 1 where entry = 80004;
update quest_template set method = 1 where entry = 80002;

UPDATE `item_template` SET `allowable_race`='-1' WHERE entry in (17194, 17196);
UPDATE `item_template` SET dmg_min1 = 0, dmg_max1 = 0 WHERE entry  = 12860;

update quest_template set zoneorsort = -241 where entry = 80254;
update quest_template set objectivetext2 = 'Search Dwarven District' where entry = 80262;
update quest_template set prevquestid = 'Search Dwarven District' where entry = 80255;

-- Prist Racial Books
replace into item_template values
 ('81008', '0', '0', '0', 'Codex: Sun\'s Serenity (Rank 1)', '', '36062', '1', '64', '1', '2200', '550', '0', '16', '512', '25',
 '20', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '46231', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '8', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('81009', '0', '0', '0', 'Codex: Sun\'s Serenity (Rank 2)', '', '36062', '1', '64', '1', '14000', '3500', '0', '16', '-1', '41',
 '36', '0', '0', '46043', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '46232', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '8', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('81010', '0', '0', '0', 'Codex: Sun\'s Serenity (Rank 3)', '', '36062', '1', '64', '1', '32000', '8000', '0', '16', '512', '53',
 '48', '0', '0', '46044', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '46233', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '8', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('81011', '0', '0', '0', 'Codex: Sun\'s Serenity (Rank 4)', '', '36062', '1', '64', '1', '50000', '12500', '0', '16', '512', '65',
 '60', '0', '0', '46045', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '46234', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '8', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('81012', '0', '0', '0', 'Codex: Sunwell\'s Blessing', '', '36062', '1', '64', '1', '400', '100', '0', '16', '512', '15',
 '10', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '46235', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '8', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 UPDATE `quest_template` SET `Objectives`='Gather ten poppies in Redridge Mountains.' WHERE (`entry`='80258') AND (`patch`='0');
 
 UPDATE `quest_template` SET `Details`='Sinu a’manore, $C.\n\nYou have answered our call for aid, for which we are truly grateful.\n\nWith the fall of Quel’Thalas we, the Quel’dorei, have been left without a home. It is here where we shall focus our wits and strengthen our will. This is the beginning of our quest for vengeance, and you shall be part of it, among others.\n\nYou see, as we prepare for a war against death itself we need to have as less casualties as possible but we can only prevent so many.\n\nWhere there is a battle there shall be dead and wounded. I ask of you on this day and many to come to aid us in our effort to supply our numbers with a means to mend and heal. There is a small and not so elegant flower growing in Redrige Mountains. We call it poppy. I shall not bore you with the alchemical details, you only need to know that the concoction will ease the pain of the wounded. I know it’s a simple task  but it is not meaningless.\n\nReturn to me when you have a handful of them.' WHERE `entry`='80258';
 
 update gameobject set spawntimesecsmin = 300, spawntimesecsmax = 400 where guid > 4006739 and spawntimesecsmin < 30;
