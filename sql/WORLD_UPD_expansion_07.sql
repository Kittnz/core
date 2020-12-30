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