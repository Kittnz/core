
-- ### Temporary file, old migrations & item updates.

ALTER TABLE `mail_items`
	CHANGE COLUMN `mail_id` `mail_id` INT(11) UNSIGNED NOT NULL DEFAULT '0' FIRST,
	CHANGE COLUMN `item_guid` `item_guid` INT(11) UNSIGNED NOT NULL DEFAULT '0' AFTER `mail_id`,
	CHANGE COLUMN `item_template` `item_template` INT(11) UNSIGNED NOT NULL DEFAULT '0' AFTER `item_guid`;

ALTER TABLE `item_instance`
	CHANGE COLUMN `text` `text` INT(10) UNSIGNED NOT NULL DEFAULT '0' AFTER `durability`;	
	
CREATE TABLE IF NOT EXISTS `character_deleted_items` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `player_guid` int(11) unsigned NOT NULL DEFAULT '0',
  `item_entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `stack_count` mediumint(8) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

ALTER TABLE `petition` ADD COLUMN `charterguid` int unsigned UNIQUE COMMENT 'Charter item GUID' AFTER `petitionguid`;

CREATE TABLE IF NOT EXISTS `character_forgotten_skills` (
  `guid` int(11) unsigned NOT NULL COMMENT 'Global Unique Identifier',
  `skill` mediumint(9) unsigned NOT NULL,
  `value` mediumint(9) unsigned NOT NULL,
  PRIMARY KEY (`guid`,`skill`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

ALTER TABLE `characters` ADD `city_protector` TINYINT(3) NOT NULL DEFAULT '0' AFTER `customFlags`;

-- Replace old custom items with new ones:

update character_inventory set item_template = 50000 /*[Character Name Change]*/ where item_template = 50000;
update character_inventory set item_template = 50001 /*[Gnomish Plastic Surgery Tools]*/ where item_template = 50001;
update character_inventory set item_template = 50003 /*[Loremaster's Backpack]*/ where item_template = 55570;
update character_inventory set item_template = 50081 /*[Cottontail Rabbit Crate]*/ where item_template = 50004; 
update character_inventory set item_template = 50004 /*[Portable Black Hole]*/ where item_template = 60023;
update character_inventory set item_template = 50005 /*[Field Repair Bot 75B]*/ where item_template = 29000;
update character_inventory set item_template = 50019 /*[Moonkin Egg]*/ where item_template = 50006;
update character_inventory set item_template = 50006 /*[Mini Krampus]*/ where item_template = 130039;
update character_inventory set item_template = 50007 /*[Forworn Mule]*/ where item_template = 50010;
update character_inventory set item_template = 50008 /*[Twink's Insignia]*/ where item_template = 55555;
update character_inventory set item_template = 50010 /*[Loremaster's Glyph]*/ where item_template = 55650;
update character_inventory set item_template = 50012 /*[Diplomatic Declaration]*/ where item_template = 30111;
update character_inventory set item_template = 50013 /*[Bone Golem]*/ where item_template = 130071;
update character_inventory set item_template = 50014 /*[Blitzen]*/ where item_template = 130038;
update character_inventory set item_template = 50015 /*[Bloody Coin]*/ where item_template = 30094;
update character_inventory set item_template = 50017 /*[Highborne Soul Mirror]*/ where item_template = 50016; 
update character_inventory set item_template = 50016 /*[Portable Meeting Stone]*/ where item_template = 40001;
update character_inventory set item_template = 50018 /*[Turtle Traveller's Bag]*/ where item_template = 55569;
update character_inventory set item_template = 50062 /*[Half-Eaten Mutton Chop]*/ where item_template = 50020;
update character_inventory set item_template = 50020 /*[Magic Muffin]*/ where item_template = 30093;
update character_inventory set item_template = 50021 /*[Strange Bottle]*/ where item_template = 30092;
update character_inventory set item_template = 50022 /*[Dressing Box: Midsummer Priestess]*/ where item_template = 40013;
update character_inventory set item_template = 50023 /*[Dressing Box: Demon Hunter]*/ where item_template = 40012;
update character_inventory set item_template = 50024 /*[Dressing Box: Invisible Suit]*/ where item_template = 40011;
update character_inventory set item_template = 50025 /*[Dressing Box: Sally Whitemane]*/ where item_template = 40010;
update character_inventory set item_template = 50026 /*[Invisible Pants]*/ where item_template = 128;
update character_inventory set item_template = 50027 /*[Invisible Shirt]*/ where item_template = 123;
update character_inventory set item_template = 50028 /*[Loramus Thalipedes' Blindfold]*/ where item_template = 30070;
update character_inventory set item_template = 50029 /*[Cursed Vision of Sargeras]*/ where item_template = 30079;
update character_inventory set item_template = 50030 /*[Demon Hunter Right Glaive]*/ where item_template = 30100;
update character_inventory set item_template = 50031 /*[Demon Hunter Left Glaive]*/ where item_template = 30101;
update character_inventory set item_template = 50032 /*[Demon Hunter Sandals]*/ where item_template = 30102;
update character_inventory set item_template = 50033 /*[Demon Hunter Kilt]*/ where item_template = 30103;
update character_inventory set item_template = 50034 /*[Demon Hunter Harness]*/ where item_template = 30104;
update character_inventory set item_template = 50035 /*[Demon Hunter Bracers]*/ where item_template = 30105;
update character_inventory set item_template = 50036 /*[High Inquisitor's Chapeau]*/ where item_template = 30076;
update character_inventory set item_template = 50037 /*[High Inquisitor's Chest]*/ where item_template = 30077;
update character_inventory set item_template = 50038 /*[High Inquisitor's Tabard]*/ where item_template = 30078;
update character_inventory set item_template = 50039 /*[High Inquisitor's Boots]*/ where item_template = 30095;
update character_inventory set item_template = 50040 /*[High Inquisitor's Shoulders]*/ where item_template = 30096;
update character_inventory set item_template = 50041 /*[High Inquisitor's Pants]*/ where item_template = 30097;
update character_inventory set item_template = 50042 /*[High Inquisitor's Gloves]*/ where item_template = 30098;
update character_inventory set item_template = 50043 /*[High Inquisitor's Staff]*/ where item_template = 30099;
update character_inventory set item_template = 50044 /*[Keepers of Time Tabard]*/ where item_template = 30073;
update character_inventory set item_template = 50045 /*[Keepers of Time Vest]*/ where item_template = 30072;
update character_inventory set item_template = 50046 /*[Vestment of Summer]*/ where item_template = 30106;
update character_inventory set item_template = 50047 /*[Sandals of Summer]*/ where item_template = 30107;
update character_inventory set item_template = 50048 /*[Right Juggling Torch]*/ where item_template = 30108;
update character_inventory set item_template = 50049 /*[Left Juggling Torch]*/ where item_template = 30109;
update character_inventory set item_template = 50050 /*[Turtle WoW Box (lvl 10)]*/ where item_template = 30080;
update character_inventory set item_template = 50051 /*[Turtle WoW Box (lvl 20)]*/ where item_template = 30081;
update character_inventory set item_template = 50052 /*[Turtle WoW Box (lvl 30)]*/ where item_template = 30082;
update character_inventory set item_template = 50053 /*[Turtle WoW Box (lvl 40)]*/ where item_template = 30083;
update character_inventory set item_template = 50054 /*[Turtle WoW Box (lvl 50)]*/ where item_template = 30084;
update character_inventory set item_template = 50055 /*[Turtle WoW Box (lvl 60)]*/ where item_template = 30085;
update character_inventory set item_template = 50058 /*[Black Piglet]*/ where item_template = 55561;
update character_inventory set item_template = 50059 /*[Green Winter Vest]*/ where item_template = 60021;
update character_inventory set item_template = 50060 /*[Green Winter Pants]*/ where item_template = 60022;
update character_inventory set item_template = 50061 /*[Red Winter Vest]*/ where item_template = 60020;
update character_inventory set item_template = 50063 /*[Intact Human Head]*/ where item_template = 130041;
update character_inventory set item_template = 50064 /*[Intact Orc Head]*/ where item_template = 130042;
update character_inventory set item_template = 50065 /*[Anatomy Class Notes]*/ where item_template = 130040;
update character_inventory set item_template = 50071 /*[Ivory Tallstrider]*/ where item_template = 55571; -- Replacement for Slow Palomino
update character_inventory set item_template = 50072 /*[Brown Tallstrider]*/ where item_template = 55562; -- Replacement for Horn of the Black Wolf
update character_inventory set item_template = 50073 /*[Gray Tallstrider]*/ where item_template = 55557;  -- Replacement for Swift Barrens Zhevra
update character_inventory set item_template = 50075 /*[Darkmoon Strider]*/ where item_template = 55559;
update character_inventory set item_template = 50086 /*[Stromgarde Tabard]*/ where item_template = 60008;
update character_inventory set item_template = 50087 /*[Tabard of Kul'Tiras]*/ where item_template = 60002;
update character_inventory set item_template = 50088 /*[Theramore Tabard]*/ where item_template = 60003;
update character_inventory set item_template = 50089 /*[Tabard of the Kirin Tor]*/ where item_template = 60004;
update character_inventory set item_template = 50090 /*[Tabard of Stormwind]*/ where item_template = 60010;
update character_inventory set item_template = 50092 /*[Tabard of Scarlet Preacher]*/ where item_template = 60016;
update character_inventory set item_template = 50093 /*[Tabard of Scarlet Archmage]*/ where item_template = 60011;

-- TODO: REPLACE ITEMS WHICH NOW ARE NOT IN CUSTOM RANGE, SUCH LIKE DAWNSABER, DARKMOON FAIRE TABARD, ETC:

update character_inventory set item_template = 23705 /*[Tabard of Flame]*/ where item_template = 60012;
update character_inventory set item_template = 23709 /*[Tabard of Frost]*/ where item_template = 60013;
update character_inventory set item_template = 23710 /*[Darkmoon Faire Tabard]*/ where item_template = 60009;
update character_inventory set item_template = 22781 /*[Polar Bear Cub]*/ where item_template = 55567;
update character_inventory set item_template = 18768 /*[Swift Dawnsaber]*/ where item_template = 50012; -- move it up later, 50012 is already taken
update character_inventory set item_template = 23713 /*[Hyppogryph Hatchling]*/ where item_template = 50002; -- move it up later, 50002 is already taken
update character_inventory set item_template = 12326 /*[Reins of the Tawny Sabercat]*/ where item_template = 40003; 
update character_inventory set item_template = 12327 /*[Reins of the Golden Sabercat]*/ where item_template = 40002; 
update character_inventory set item_template = 19160 /*[Contest Winner Tabard]*/ where item_template = 30074; 
update character_inventory set item_template = 19160 /*[Contest Winner Tabard]*/ where item_template = 30075; 

-- ### Don't add more records here until we have a full list in character_inventory:

update item_instance set itementry = 50000 /*[Character Name Change]*/ where itementry = 50000;
update item_instance set itementry = 50001 /*[Gnomish Plastic Surgery Tools]*/ where itementry = 50001;
update item_instance set itementry = 50003 /*[Loremaster's Backpack]*/ where itementry = 55570;
update item_instance set itementry = 50081 /*[Cottontail Rabbit Crate]*/ where itementry = 50004; 
update item_instance set itementry = 50004 /*[Portable Black Hole]*/ where itementry = 60023;
update item_instance set itementry = 50005 /*[Field Repair Bot 75B]*/ where itementry = 29000;
update item_instance set itementry = 50019 /*[Moonkin Egg]*/ where itementry = 50006;
update item_instance set itementry = 50006 /*[Mini Krampus]*/ where itementry = 130039;
update item_instance set itementry = 50007 /*[Forworn Mule]*/ where itementry = 50010;
update item_instance set itementry = 50008 /*[Twink's Insignia]*/ where itementry = 55555;
update item_instance set itementry = 50010 /*[Loremaster's Glyph]*/ where itementry = 55650;
update item_instance set itementry = 50012 /*[Diplomatic Declaration]*/ where itementry = 30111;
update item_instance set itementry = 50013 /*[Bone Golem]*/ where itementry = 130071;
update item_instance set itementry = 50014 /*[Blitzen]*/ where itementry = 130038;
update item_instance set itementry = 50015 /*[Bloody Coin]*/ where itementry = 30094;
update item_instance set itementry = 50017 /*[Highborne Soul Mirror]*/ where itementry = 50016; 
update item_instance set itementry = 50016 /*[Portable Meeting Stone]*/ where itementry = 40001;
update item_instance set itementry = 50018 /*[Turtle Traveller's Bag]*/ where itementry = 55569;
update item_instance set itementry = 50062 /*[Half-Eaten Mutton Chop]*/ where itementry = 50020;
update item_instance set itementry = 50020 /*[Magic Muffin]*/ where itementry = 30093;
update item_instance set itementry = 50021 /*[Strange Bottle]*/ where itementry = 30092;
update item_instance set itementry = 50022 /*[Dressing Box: Midsummer Priestess]*/ where itementry = 40013;
update item_instance set itementry = 50023 /*[Dressing Box: Demon Hunter]*/ where itementry = 40012;
update item_instance set itementry = 50024 /*[Dressing Box: Invisible Suit]*/ where itementry = 40011;
update item_instance set itementry = 50025 /*[Dressing Box: Sally Whitemane]*/ where itementry = 40010;
update item_instance set itementry = 50026 /*[Invisible Pants]*/ where itementry = 128;
update item_instance set itementry = 50027 /*[Invisible Shirt]*/ where itementry = 123;
update item_instance set itementry = 50028 /*[Loramus Thalipedes' Blindfold]*/ where itementry = 30070;
update item_instance set itementry = 50029 /*[Cursed Vision of Sargeras]*/ where itementry = 30079;
update item_instance set itementry = 50030 /*[Demon Hunter Right Glaive]*/ where itementry = 30100;
update item_instance set itementry = 50031 /*[Demon Hunter Left Glaive]*/ where itementry = 30101;
update item_instance set itementry = 50032 /*[Demon Hunter Sandals]*/ where itementry = 30102;
update item_instance set itementry = 50033 /*[Demon Hunter Kilt]*/ where itementry = 30103;
update item_instance set itementry = 50034 /*[Demon Hunter Harness]*/ where itementry = 30104;
update item_instance set itementry = 50035 /*[Demon Hunter Bracers]*/ where itementry = 30105;
update item_instance set itementry = 50036 /*[High Inquisitor's Chapeau]*/ where itementry = 30076;
update item_instance set itementry = 50037 /*[High Inquisitor's Chest]*/ where itementry = 30077;
update item_instance set itementry = 50038 /*[High Inquisitor's Tabard]*/ where itementry = 30078;
update item_instance set itementry = 50039 /*[High Inquisitor's Boots]*/ where itementry = 30095;
update item_instance set itementry = 50040 /*[High Inquisitor's Shoulders]*/ where itementry = 30096;
update item_instance set itementry = 50041 /*[High Inquisitor's Pants]*/ where itementry = 30097;
update item_instance set itementry = 50042 /*[High Inquisitor's Gloves]*/ where itementry = 30098;
update item_instance set itementry = 50043 /*[High Inquisitor's Staff]*/ where itementry = 30099;
update item_instance set itementry = 50044 /*[Keepers of Time Tabard]*/ where itementry = 30073;
update item_instance set itementry = 50045 /*[Keepers of Time Vest]*/ where itementry = 30072;
update item_instance set itementry = 50046 /*[Vestment of Summer]*/ where itementry = 30106;
update item_instance set itementry = 50047 /*[Sandals of Summer]*/ where itementry = 30107;
update item_instance set itementry = 50048 /*[Right Juggling Torch]*/ where itementry = 30108;
update item_instance set itementry = 50049 /*[Left Juggling Torch]*/ where itementry = 30109;
update item_instance set itementry = 50050 /*[Turtle WoW Box (lvl 10)]*/ where itementry = 30080;
update item_instance set itementry = 50051 /*[Turtle WoW Box (lvl 20)]*/ where itementry = 30081;
update item_instance set itementry = 50052 /*[Turtle WoW Box (lvl 30)]*/ where itementry = 30082;
update item_instance set itementry = 50053 /*[Turtle WoW Box (lvl 40)]*/ where itementry = 30083;
update item_instance set itementry = 50054 /*[Turtle WoW Box (lvl 50)]*/ where itementry = 30084;
update item_instance set itementry = 50055 /*[Turtle WoW Box (lvl 60)]*/ where itementry = 30085;
update item_instance set itementry = 50058 /*[Black Piglet]*/ where itementry = 55561;
update item_instance set itementry = 50059 /*[Green Winter Vest]*/ where itementry = 60021;
update item_instance set itementry = 50060 /*[Green Winter Pants]*/ where itementry = 60022;
update item_instance set itementry = 50061 /*[Red Winter Vest]*/ where itementry = 60020;
update item_instance set itementry = 50063 /*[Intact Human Head]*/ where itementry = 130041;
update item_instance set itementry = 50064 /*[Intact Orc Head]*/ where itementry = 130042;
update item_instance set itementry = 50065 /*[Anatomy Class Notes]*/ where itementry = 130040;
update item_instance set itementry = 50071 /*[Ivory Tallstrider]*/ where itementry = 55571; -- Replacement for Slow Palomino
update item_instance set itementry = 50072 /*[Brown Tallstrider]*/ where itementry = 55562; -- Replacement for Horn of the Black Wolf
update item_instance set itementry = 50073 /*[Gray Tallstrider]*/ where itementry = 55557;  -- Replacement for Swift Barrens Zhevra
update item_instance set itementry = 50075 /*[Darkmoon Strider]*/ where itementry = 55559;
update item_instance set itementry = 50086 /*[Stromgarde Tabard]*/ where itementry = 60008;
update item_instance set itementry = 50087 /*[Tabard of Kul'Tiras]*/ where itementry = 60002;
update item_instance set itementry = 50088 /*[Theramore Tabard]*/ where itementry = 60003;
update item_instance set itementry = 50089 /*[Tabard of the Kirin Tor]*/ where itementry = 60004;
update item_instance set itementry = 50090 /*[Tabard of Stormwind]*/ where itementry = 60010;
update item_instance set itementry = 50092 /*[Tabard of Scarlet Preacher]*/ where itementry = 60016;
update item_instance set itementry = 50093 /*[Tabard of Scarlet Archmage]*/ where itementry = 60011;
update item_instance set itementry = 23705 /*[Tabard of Flame]*/ where itementry = 60012;
update item_instance set itementry = 23709 /*[Tabard of Frost]*/ where itementry = 60013;
update item_instance set itementry = 23710 /*[Darkmoon Faire Tabard]*/ where itementry = 60009;
update item_instance set itementry = 22781 /*[Polar Bear Cub]*/ where itementry = 55567;
update item_instance set itementry = 18768 /*[Swift Dawnsaber]*/ where itementry = 50012; -- move it up later, 50012 is already taken
update item_instance set itementry = 23713 /*[Hyppogryph Hatchling]*/ where itementry = 50002; -- move it up later, 50002 is already taken
update item_instance set itementry = 12326 /*[Reins of the Tawny Sabercat]*/ where itementry = 40003; 
update item_instance set itementry = 12327 /*[Reins of the Golden Sabercat]*/ where itementry = 40002; 
update item_instance set itementry = 19160 /*[Contest Winner Tabard]*/ where itementry = 30074; 
update item_instance set itementry = 19160 /*[Contest Winner Tabard]*/ where itementry = 30075; 
