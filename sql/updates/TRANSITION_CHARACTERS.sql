
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

update character_inventory set item_template =  /*[Tabard of Flame]*/ where item_template = 60012;
update character_inventory set item_template =  /*[Tabard of Frost]*/ where item_template = 60013;
update character_inventory set item_template =  /*[Darkmoon Faire Tabard]*/ where item_template = 60009;
update character_inventory set item_template =  /*[Darkmoon Tonk]*/ where item_template = 130037;
update character_inventory set item_template =  /*[Polar Bear Cub]*/ where item_template = 55567;
update character_inventory set item_template =  /*[Swift Dawnsaber]*/ where item_template = 50012; -- move it up later, 50012 is already taken
update character_inventory set item_template =  /*[Hyppogryph Hatcling]*/ where item_template = 50002; -- move it up later, 50002 is already taken
update character_inventory set item_template =  /*[Reins of the Tawny Sabercat]*/ where item_template = 40003; 
update character_inventory set item_template =  /*[Reins of the Golden Sabercat]*/ where item_template = 40002; 
update character_inventory set item_template =  /*[Contest Winner Tabard]*/ where item_template = 30074; 

-- ### Don't add more records here until we have a full list in character_inventory:
-- update item_instance set itementry = 50000 /*[Character Name Change]*/ where itementry = 50000;

